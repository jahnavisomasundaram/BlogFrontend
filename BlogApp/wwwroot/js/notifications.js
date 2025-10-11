let dotnetobjReference = null;
let supabaseClient = supabase.createClient("https://hdpgwzowalhdevstidfx.supabase.co", "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhkcGd3em93YWxoZGV2c3RpZGZ4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTEzNDA3OTIsImV4cCI6MjA2NjkxNjc5Mn0.zui0I8znGyr1uFWAquOQT6Bg1Bvg2dezek4gn1L10mQ");

export async function setDatabaseEventHandler(tableName) {
    const channel = supabaseClient.channel('table-db-changes');

    if (channel.state === "joining" || channel.state === "joined") {
        console.log("Already subscribed");
        return;
    }

    channel
        .on(
            'postgres_changes',
            {
                event: '*',
                schema: 'public',
                table: tableName
            },
            async (payload) => await handleDatabaseEvent(payload, payload.new.action_id)
        )
        .subscribe();

    console.log("Real-time listener set for", tableName);
}

async function handleDatabaseEvent(payload, actionId) {
    if (payload?.eventType === "DELETE") {
        console.log("Delete operation ignored.");
        return;
    }

    if (dotnetobjReference) {
        console.log(payload);
        await dotnetobjReference.invokeMethodAsync('receiveRealTimeData', JSON.stringify(payload.new));
    }
}

export function setDotNetReference(dotNetRef) {
    dotnetobjReference = dotNetRef;
}
