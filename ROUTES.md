# CampusFix browser routes

These are **frontend page URLs** (React/Vite), not backend API endpoints. During local development they appear under `http://localhost:5173`; after deployment they use the Vercel domain.

- `/` — public landing page
- `/login` — login
- `/register` — student registration
- `/forgot-password` — request password reset
- `/reset-password` — submit reset token and new password
- `/student/dashboard` — Student dashboard
- `/student/complaints/new` — report a complaint
- `/student/complaints` — Student's complaints
- `/student/complaints/status/IN_PROGRESS` — filtered complaints (other supported statuses use the same pattern)
- `/student/complaints/:id` — complaint details
- `/staff/dashboard` — Staff dashboard
- `/staff/complaints` — assigned complaints
- `/staff/complaints/:id` — assigned complaint details
- `/admin/dashboard` — Admin dashboard
- `/admin/complaints` — complaint management
- `/admin/complaints/:id` — complaint details
- `/admin/staff` — staff account management
- `/profile` — current user's profile
- `/notifications` — notifications

The app uses the History API to keep page navigation in the address bar. `vercel.json` rewrites page requests to `index.html` so direct links and browser refreshes resolve to the React app. API calls still go to the configured backend base URL (normally `http://localhost:8080/api` locally).
