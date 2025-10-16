# Blog Frontend

## Description

This is the frontend for a modern, full-featured blog application. It provides a clean and intuitive user interface for reading, creating, and managing blog posts. This application is designed to work with a corresponding backend API to handle data and user authentication.

## Features

* **View All Posts:** A homepage displaying a list of all blog posts with summaries.
* **Read Full Posts:** Click on any post to view its full content and details.
* **Create & Edit Posts:** A rich text editor for writing and updating blog posts (for authenticated users).
* **User Authentication:** Secure user registration and login functionality.
* **Commenting System:** Users can add comments to posts.
* **Responsive Design:** Fully responsive layout for a great experience on any device, from mobile to desktop.

## Technologies Used

* **Framework:** React
* **Routing:** React Router
* **State Management:** Redux or Context API
* **API Client:** Axios (for making HTTP requests)
* **Styling:** CSS Modules, Styled-Components, or a UI library like Material-UI/Chakra UI
* **Deployment:** Vercel / Netlify / GitHub Pages

## Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing.

### Prerequisites

* You need to have Node.js and npm installed on your machine. You can download them from [nodejs.org](https://nodejs.org/).
* A running instance of the corresponding blog backend API.

### Installation

1.  **Clone the repository**
    ```sh
    git clone [https://github.com/jahnavisomasundaram/BlogFrontend.git](https://github.com/jahnavisomasundaram/BlogFrontend.git)
    ```
2.  **Navigate to the project directory**
    ```sh
    cd BlogFrontend
    ```
3.  **Install NPM packages**
    ```sh
    npm install
    ```
4.  **Set up environment variables**

    Create a `.env` file in the root directory of the project. Add the URL of your running backend server:

    ```
    REACT_APP_API_URL=http://localhost:5000/api
    ```
    *Note: Replace the URL with the actual address of your backend API if it's different.*

5.  **Run the application**
    ```sh
    npm start
    ```

The application will automatically open in your default browser at `http://localhost:3000`.

---

## Usage

Once the application is running, you can:
* Browse the list of blog posts on the homepage.
* Click "Read More" to view the full content of a post.
* Sign up for a new account or log in with existing credentials.
* Once logged in, you will be able to create new posts using the "Create Post" button.
* You can also edit or delete your own posts.

## Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".

1.  Fork the Project
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3.  Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4.  Push to the Branch (`git push origin feature/AmazingFeature`)
5.  Open a Pull Request

---

## License

Distributed under the MIT License. See the `LICENSE` file for more information.
