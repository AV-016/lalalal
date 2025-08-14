<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>CampusLink+</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <script src="https://cdn.jsdelivr.net/npm/react@18/umd/react.development.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/react-dom@18/umd/react-dom.development.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/react-router-dom@6/dist/umd/react-router-dom.development.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@babel/standalone@7/babel.min.js"></script>
</head>
<body>
  <div id="root"></div>
  <script type="text/babel">
    const { BrowserRouter: Router, Routes, Route, Link } = ReactRouterDOM;

    // HomeFeed Component
    const HomeFeed = () => {
      const [feedType, setFeedType] = React.useState('local');
      const posts = [
        {
          id: 1,
          user: 'Aryan Srivastava',
          content: 'Just built an AI chatbot for my course project! Check it out on GitHub.',
          image: 'https://via.placeholder.com/600x400?text=AI+Project',
          likes: 42,
          comments: 15,
        },
        {
          id: 2,
          user: 'Anushka Vajpayee',
          content: 'Teamed up for a health app - biotech meets CS!',
          image: 'https://via.placeholder.com/600x400?text=Health+App',
          likes: 28,
          comments: 10,
        },
      ];

      return (
        <div className="max-w-4xl mx-auto px-4 py-8">
          <div className="flex justify-center mb-6">
            <button
              onClick={() => setFeedType('local')}
              className={`px-4 py-2 rounded-l-md ${feedType === 'local' ? 'bg-blue-600 text-white' : 'bg-gray-200 text-gray-700'}`}
            >
              Local (University)
            </button>
            <button
              onClick={() => setFeedType('global')}
              className={`px-4 py-2 rounded-r-md ${feedType === 'global' ? 'bg-blue-600 text-white' : 'bg-gray-200 text-gray-700'}`}
            >
              Global
            </button>
          </div>
          <div className="space-y-6">
            {posts.map((post) => (
              <div key={post.id} className="bg-white rounded-lg shadow-md overflow-hidden">
                <div className="p-4 flex items-center">
                  <img src="https://via.placeholder.com/40?text=U" alt="User" className="w-10 h-10 rounded-full" />
                  <span className="ml-3 font-semibold">{post.user}</span>
                </div>
                <img src={post.image} alt="Post" className="w-full h-64 object-cover" />
                <div className="p-4">
                  <p className="text-gray-800 mb-2">{post.content}</p>
                  <div className="flex space-x-4 text-gray-600">
                    <span>❤️ {post.likes} Likes</span>
                    <span>💬 {post.comments} Comments</span>
                  </div>
                </div>
                <div className="p-4 border-t">
                  <input type="text" placeholder="Add a comment..." className="w-full px-3 py-2 border rounded-md" />
                </div>
              </div>
            ))}
          </div>
        </div>
      );
    };

    // Profile Component
    const Profile = () => {
      const profile = {
        name: 'Aryan Srivastava',
        branch: 'B.E CSE AIML',
        projects: [
          { title: 'AI Chatbot', description: 'Built with TensorFlow', link: 'github.com/aryan/ai-chatbot' },
          { title: 'Web App', description: 'React frontend', link: 'github.com/aryan/web-app' },
        ],
        skills: ['React', 'Node.js', 'Python', 'TensorFlow'],
      };

      return (
        <div className="max-w-4xl mx-auto px-4 py-8">
          <div className="bg-white rounded-lg shadow-md p-6 mb-6">
            <div className="flex items-center">
              <img src="https://via.placeholder.com/100?text=A" alt="Profile" className="w-24 h-24 rounded-full" />
              <div className="ml-6">
                <h1 className="text-2xl font-bold">{profile.name}</h1>
                <p className="text-gray-600">{profile.branch}</p>
                <button className="mt-2 bg-blue-600 text-white px-4 py-2 rounded-md">Connect</button>
              </div>
            </div>
          </div>
          <div className="bg-white rounded-lg shadow-md p-6 mb-6">
            <h2 className="text-xl font-semibold mb-4">Projects</h2>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              {profile.projects.map((project, index) => (
                <div key={index} className="border rounded-md p-4">
                  <h3 className="font-bold">{project.title}</h3>
                  <p className="text-gray-600">{project.description}</p>
                  <a href={`https://${project.link}`} className="text-blue-600 hover:underline">View on GitHub</a>
                </div>
              ))}
            </div>
          </div>
          <div className="bg-white rounded-lg shadow-md p-6">
            <h2 className="text-xl font-semibold mb-4">Skills</h2>
            <div className="flex flex-wrap gap-2">
              {profile.skills.map((skill, index) => (
                <span key={index} className="bg-blue-100 text-blue-800 px-3 py-1 rounded-full">{skill}</span>
              ))}
            </div>
          </div>
        </div>
      );
    };

    // ProjectZone Component
    const ProjectZone = () => {
      const projects = [
        { title: 'Health Tracking App', description: 'CS + Biotech collab', members: 3 },
        { title: 'NGO Website', description: 'Water sanitation tracker', members: 5 },
      ];

      return (
        <div className="max-w-4xl mx-auto px-4 py-8">
          <h1 className="text-2xl font-bold mb-6">ProjectZone - Collaborate & Build</h1>
          <div className="space-y-6">
            {projects.map((project, index) => (
              <div key={index} className="bg-white rounded-lg shadow-md p-4">
                <h3 className="font-bold">{project.title}</h3>
                <p className="text-gray-600">{project.description}</p>
                <span className="text-sm text-gray-500">{project.members} members</span>
                <button className="mt-2 bg-green-600 text-white px-4 py-2 rounded-md">Join Project</button>
              </div>
            ))}
          </div>
          <div className="mt-8 bg-white rounded-lg shadow-md p-6">
            <h2 className="text-xl font-semibold mb-4">Start a New Project</h2>
            <input type="text" placeholder="Project Title" className="w-full px-3 py-2 border rounded-md mb-4" />
            <textarea placeholder="Description" className="w-full px-3 py-2 border rounded-md mb-4" rows="3"></textarea>
            <button className="bg-blue-600 text-white px-4 py-2 rounded-md">Create Project</button>
          </div>
        </div>
      );
    };

    // Main App Component
    const App = () => {
      return (
        <Router>
          <div className="min-h-screen bg-gray-100 font-sans">
            <nav className="bg-white shadow-md fixed top-0 left-0 right-0 z-10">
              <div className="max-w-7xl mx-auto px-4 py-3 flex justify-between items-center">
                <Link to="/" className="text-2xl font-bold text-blue-600">CampusLink+</Link>
                <div className="flex space-x-6">
                  <Link to="/" className="text-gray-700 hover:text-blue-600">Home</Link>
                  <Link to="/profile" className="text-gray-700 hover:text-blue-600">Profile</Link>
                  <Link to="/projectzone" className="text-gray-700 hover:text-blue-600">ProjectZone</Link>
                  <button className="bg-blue-600 text-white px-4 py-2 rounded-md hover:bg-blue-700">Logout</button>
                </div>
              </div>
            </nav>
            <div className="pt-16">
              <Routes>
                <Route path="/" element={<HomeFeed />} />
                <Route path="/profile" element={<Profile />} />
                <Route path="/projectzone" element={<ProjectZone />} />
              </Routes>
            </div>
            <footer className="bg-white py-4 mt-8">
              <div className="max-w-7xl mx-auto px-4 text-center text-gray-600">
                © 2025 CampusLink+. Built for students, by students.
              </div>
            </footer>
          </div>
        </Router>
      );
    };

    // Render the app
    ReactDOM.render(<App />, document.getElementById('root'));
  </script>
</body>
</html>
