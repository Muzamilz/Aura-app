# 🌟 Aura App - Motivational Fitness & Wealth Trainer

![Aura App](https://img.shields.io/badge/Status-In%20Development-brightgreen)

## 📋 Table of Contents
- [Overview](#overview)
- [Key Features](#key-features)
  - [Motivational Notifications](#1-motivational-notifications)
  - [AI-Driven Fitness Trainer](#2-ai-driven-fitness-trainer)
  - [AI-Driven Wealth Tips](#3-ai-driven-wealth-tips)
  - [Goal Setting & Task Management](#4-goal-setting--task-management)
  - [Modern Look and Animations](#5-modern-look-and-animations)
  - [User Onboarding](#6-user-onboarding)
  - [User Authentication](#7-user-authentication)
  - [Dashboard](#8-dashboard)
  - [Community & Social Features](#9-community--social-features-future-scope)
- [App Flow](#app-flow)
- [Technology Stack](#technology-stack)
- [Database Schema](#database-schema)
- [Folder Structure](#folder-structure)
- [Development Roadmap](#development-roadmap)
- [Design Principles](#design-principles)
- [Future Enhancements](#future-enhancements)
- [Conclusion](#conclusion)

## 📱 Overview

Aura is a modern, AI-driven mobile application built using **Flutter GetX**, **supabase**, and **DeepSeek API** to provide users with personalized motivational messages, fitness tips, and actionable plans for bodybuilders and wealth chasers. 

> *Designed for young adults passionate about achieving physical fitness and financial success*

The app combines AI coaching, goal-setting, and motivational notifications to keep users on track toward their fitness and financial goals.

---

## ✨ Key Features

### 1. **Motivational Notifications** 📲

- **Daily Motivations**: Personalized motivational messages via push notifications
- **DeepSeek API Integration**: Dynamically generated content ensuring relevance and variety
- **User Preferences**: Customizable notification types and frequency:
  - Fitness motivation
  - Wealth-building inspiration
  - Frequency: daily, twice daily, etc.
- **Interactive Notifications**: Actionable prompts (e.g., "Start your workout now!" or "Write down 3 financial goals for today")

### 2. **AI-Driven Fitness Trainer** 💪

- **Body Assessment**: 
  - Input current body details (weight, height, fitness level)
  - Define personal goals (muscle gain, fat loss, endurance)

- **Personalized Plans**:
  - Custom fitness routines tailored to goals
  - Detailed meal plans and dietary suggestions

- **Progress Tracking**:
  - Weight, workout, and meal logging
  - Visual progress charts showing improvements over time

- **Daily/Weekly Goals**:
  - AI-generated achievable fitness milestones
  - Reminders and progress indicators

### 3. **AI-Driven Wealth Tips** 💰

- **Wealth Goals**: Personalized financial objectives (e.g., save $10,000 in a year, start a side hustle)

- **Personalized Tips**:
  - Practical advice on budgeting, investing, and passive income
  - Actionable financial plans with clear steps

- **Daily/Weekly Goals**:
  - Specific tasks to build financial freedom
  - Progress tracking toward financial milestones

- **Motivational Content**:
  - Success stories and inspirational content
  - Financial wisdom and actionable insights

### 4. **Goal Setting & Task Management** ✅

- **Integrated Goal Tracker**:
  - Combined fitness and wealth goal management
  - Large goals broken into manageable tasks

- **Progress Visualization**:
  - Interactive charts showing achievements
  - Milestone celebration animations

- **Notifications for Tasks**:
  - Smart reminders based on user behavior patterns
  - Positive reinforcement messages

### 5. **Modern Look and Animations** 🎨

- **Young Adult-Oriented Design**:
  - Bold typography with vibrant color palette
  - Clean, minimalist layouts with intuitive navigation

- **Animations**:
  - Smooth transitions between app sections
  - Engaging micro-interactions for user actions

- **Framer Motion Integration**:
  - Dynamic goal progress animations
  - Motivational message reveal effects

### 6. **User Onboarding** 👋

- **Interactive Onboarding**:
  - Guided setup process with personalized touch
  - Feature discovery tour with benefits explained

- **Personalization**:
  - Interest selection (fitness, wealth-building, or both)
  - Notification and content preference setup

### 7. **User Authentication** 🔐

- **Supabase Integration**:
  - Secure email/password authentication
  - Streamlined social login options

- **User Profiles**:
  - Editable personal stats and goals
  - Privacy controls and data management

### 8. **Dashboard** 📊

- **Overview of Goals**:
  - At-a-glance summary of fitness and wealth progress
  - Motivational statistics and achievements

- **Quick Actions**:
  - One-tap access to common tasks
  - Contextual suggestions based on goals

### 9. **Community & Social Features** (Future Scope) 👥

- **Leaderboards**:
  - Friendly competition with metrics like steps or goals
  - Weekly challenges and achievements

- **Sharing Progress**:
  - Social media integration for milestone sharing
  - Customizable progress cards

- **Motivational Groups**:
  - Interest-based communities
  - Peer support and accountability

---

## 🔄 App Flow

### 1. **Onboarding Flow**

- **Step 1: User Registration**
  - Streamlined email/password authentication via Supabase
  - Optional social login integration

- **Step 2: Personalization**
  - Fitness profile creation with body metrics and goals
  - Financial objective setting with preference indicators

- **Step 3: Notification Preferences**
  - Customization of motivation types and frequency
  - Time-of-day preferences for optimal engagement

### 2. **Main Screens**

- **Dashboard**:
  - Unified fitness and wealth progress visualization
  - Quick-access action buttons for common tasks

- **Motivations**:
  - Curated feed of personalized inspirational content
  - Interactive elements for engagement

- **Trainer**:
  - AI-powered fitness and nutrition guidance
  - Workout and meal plan recommendations

- **Wealth Tips**:
  - Financial advice aligned with personal goals
  - Action-oriented financial recommendations

### 3. **Notifications**

- **Push Notifications**:
  - Context-aware motivational messages
  - Goal reminders and milestone celebrations

- **Interactive Prompts**:
  - Quick-action buttons within notifications
  - Deep links to relevant app sections

### 4. **Settings**

- **Manage Profile**:
  - Comprehensive profile and goal management
  - Progress history and achievements

- **Notification Settings**:
  - Granular control over notification types
  - Do-not-disturb periods and frequency limits

- **Account Settings**:
  - Security options and login management
  - Data export and privacy controls

---

## 🛠️ Technology Stack

### Frontend
- **Flutter**: Cross-platform mobile development framework
- **GetX**: State management, navigation, and dependency injection
- **Flutter Animations**: Advanced animation system for UI elements

### Backend
- **Supabase**: 
  - Cloud database for user data
  - Real-time data synchronization
  - Built-in authentication and authorization
  - Secure storage for personal information

- **DeepSeek API**: 
  - AI-driven content generation
  - Personalized motivational messaging

### Additional Tools
- **Firebase Cloud Messaging**: Push notification delivery
- **Firebase Analytics**: User behavior tracking and optimization
- **FL Chart**: Interactive data visualization for progress charts
- **Shared Preferences**: Lightweight storage for user settings
- **Local Notifications**: On-device notification management

---

## 💾 Database Schema

### User Table
```sql
CREATE TABLE users (
  user_id TEXT PRIMARY KEY,
  email TEXT NOT NULL UNIQUE,
  password_hash TEXT NOT NULL,
  name TEXT,
  birth_date TEXT,
  gender TEXT,
  profile_picture TEXT,
  created_at TEXT NOT NULL,
  last_login TEXT,
  notification_preferences TEXT,
  is_premium INTEGER DEFAULT 0
);
```

### Physical Profile Table
```sql
CREATE TABLE physical_profiles (
  profile_id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT NOT NULL,
  height REAL,
  weight REAL,
  body_fat_percentage REAL,
  fitness_level TEXT,
  updated_at TEXT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id)
);
```

### Financial Profile Table
```sql
CREATE TABLE financial_profiles (
  profile_id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT NOT NULL,
  income_level TEXT,
  savings_goal REAL,
  financial_knowledge_level TEXT,
  risk_tolerance TEXT,
  updated_at TEXT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id)
);
```

### Fitness Goals Table
```sql
CREATE TABLE fitness_goals (
  goal_id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT NOT NULL,
  title TEXT NOT NULL,
  description TEXT,
  goal_type TEXT NOT NULL,
  target_value REAL,
  current_value REAL,
  unit TEXT,
  start_date TEXT NOT NULL,
  target_date TEXT,
  is_completed INTEGER DEFAULT 0,
  completion_date TEXT,
  created_at TEXT NOT NULL,
  updated_at TEXT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id)
);
```

### Financial Goals Table
```sql
CREATE TABLE financial_goals (
  goal_id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT NOT NULL,
  title TEXT NOT NULL,
  description TEXT,
  goal_type TEXT NOT NULL,
  target_amount REAL,
  current_amount REAL,
  currency TEXT,
  start_date TEXT NOT NULL,
  target_date TEXT,
  is_completed INTEGER DEFAULT 0,
  completion_date TEXT,
  created_at TEXT NOT NULL,
  updated_at TEXT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id)
);
```

### Workouts Table
```sql
CREATE TABLE workouts (
  workout_id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT NOT NULL,
  title TEXT NOT NULL,
  workout_type TEXT,
  calories_burned INTEGER,
  duration_minutes INTEGER,
  date TEXT NOT NULL,
  notes TEXT,
  created_at TEXT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id)
);
```

### Exercise Records Table
```sql
CREATE TABLE exercise_records (
  record_id INTEGER PRIMARY KEY AUTOINCREMENT,
  workout_id INTEGER NOT NULL,
  exercise_name TEXT NOT NULL,
  sets INTEGER,
  reps INTEGER,
  weight REAL,
  duration_minutes INTEGER,
  notes TEXT,
  FOREIGN KEY (workout_id) REFERENCES workouts (workout_id)
);
```

### Meal Records Table
```sql
CREATE TABLE meal_records (
  meal_id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT NOT NULL,
  meal_type TEXT,
  meal_name TEXT,
  calories INTEGER,
  protein_grams REAL,
  carbs_grams REAL,
  fat_grams REAL,
  date TEXT NOT NULL,
  photo_path TEXT,
  notes TEXT,
  created_at TEXT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id)
);
```

### Financial Transactions Table
```sql
CREATE TABLE financial_transactions (
  transaction_id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT NOT NULL,
  amount REAL NOT NULL,
  transaction_type TEXT NOT NULL,
  category TEXT,
  description TEXT,
  date TEXT NOT NULL,
  created_at TEXT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id)
);
```

### Tasks Table
```sql
CREATE TABLE tasks (
  task_id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT NOT NULL,
  related_goal_id INTEGER,
  related_goal_type TEXT,
  title TEXT NOT NULL,
  description TEXT,
  due_date TEXT,
  priority TEXT,
  is_completed INTEGER DEFAULT 0,
  completion_date TEXT,
  created_at TEXT NOT NULL,
  updated_at TEXT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id)
);
```

### Motivational Messages Table
```sql
CREATE TABLE motivational_messages (
  message_id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT NOT NULL,
  message_text TEXT NOT NULL,
  message_type TEXT NOT NULL,
  is_favorite INTEGER DEFAULT 0,
  is_read INTEGER DEFAULT 0,
  created_at TEXT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id)
);
```

### Notification Settings Table
```sql
CREATE TABLE notification_settings (
  setting_id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT NOT NULL,
  notification_type TEXT NOT NULL,
  is_enabled INTEGER DEFAULT 1,
  frequency TEXT,
  start_time TEXT,
  end_time TEXT,
  days_of_week TEXT,
  created_at TEXT NOT NULL,
  updated_at TEXT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id)
);
```

### Progress Metrics Table
```sql
CREATE TABLE progress_metrics (
  metric_id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT NOT NULL,
  metric_type TEXT NOT NULL,
  metric_name TEXT NOT NULL,
  value REAL NOT NULL,
  unit TEXT,
  date TEXT NOT NULL,
  notes TEXT,
  created_at TEXT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id)
);
```

## �� Folder Structure

```
aura_app/
│
├── android/                    # Android-specific files
├── ios/                        # iOS-specific files
├── web/                        # Web-specific files (if supported)
│
├── assets/                     # Static assets
│   ├── fonts/                  # Custom fonts
│   ├── images/                 # Image assets
│   ├── animations/             # Lottie animation files
│   └── icons/                  # App icons
│
├── lib/                        # Main Flutter code
│   ├── app/                    # Application layer
│   │   ├── bindings/           # GetX dependency injection bindings
│   │   ├── data/               # Data layer components
│   │   │   ├── models/         # Data models
│   │   │   ├── providers/      # API and data providers
│   │   │   ├── repositories/   # Repository implementations
│   │   │   └── services/       # Services for external APIs
│   │   │
│   │   ├── modules/            # Feature modules
│   │   │   ├── auth/           # Authentication module
│   │   │   │   ├── bindings/   # Module-specific bindings
│   │   │   │   ├── controllers/# Module controllers
│   │   │   │   ├── views/      # UI screens
│   │   │   │   └── widgets/    # UI components
│   │   │   │
│   │   │   ├── dashboard/      # Dashboard module
│   │   │   ├── fitness/        # Fitness trainer module
│   │   │   ├── wealth/         # Wealth tips module
│   │   │   ├── goals/          # Goal management module
│   │   │   ├── notifications/  # Notifications module
│   │   │   ├── profile/        # User profile module
│   │   │   └── onboarding/     # Onboarding module
│   │   │
│   │   ├── routes/             # App navigation routes
│   │   ├── theme/              # App themes and styles
│   │   └── utils/              # Utility functions
│   │
│   ├── core/                   # Core functionality
│   │   ├── constants/          # App constants
│   │   ├── database/           # SQLite database management
│   │   │   ├── migrations/     # Database migrations
│   │   │   ├── models/         # Database models
│   │   │   └── dao/            # Data Access Objects
│   │   ├── localization/       # Internationalization
│   │   ├── network/            # Network utilities
│   │   ├── shared_prefs/       # Shared preferences manager
│   │   └── notifications/      # Local notification management
│   │
│   ├── global_widgets/         # Shared widgets across modules
│   ├── main.dart               # App entry point
│   └── app_binding.dart        # Global bindings
│
├── test/                       # Unit and widget tests
│   ├── unit/                   # Unit tests
│   ├── widget/                 # Widget tests
│   └── integration/            # Integration tests
│
├── pubspec.yaml                # Flutter dependencies
└── README.md                   # Project documentation
```

---

## 🛣️ Development Roadmap

### Phase 1: Project Setup & Core Architecture (2 Weeks)

#### Week 1: Project Initialization
1. **Day 1-2: Project Setup**
   - Initialize Flutter project
   - Set up GetX architecture
   - Configure folder structure
   - Add essential dependencies in pubspec.yaml

2. **Day 3-4: Theme & Design System**
   - Create app theme (colors, typography, spacing)
   - Implement design tokens and constants
   - Build base reusable components (buttons, cards, inputs)

3. **Day 5-7: Core Infrastructure**
   - Set up navigation system with GetX routes
   - Implement basic dependency injection
   - Create service interfaces
   - Design error handling strategy

#### Week 2: Database & Models
1. **Day 1-3: Database Configuration**
   - Set up SQLite integration
   - Create database helper classes
   - Implement database migration strategy
   - Create table structures based on schema

2. **Day 4-5: Data Models**
   - Implement core data models:
     - User model
     - Profile models (fitness/financial)
     - Goal models
     - Task model

3. **Day 6-7: Data Access Layer**
   - Create repositories for each model
   - Implement CRUD operations
   - Set up database transaction handling
   - Write unit tests for repository methods

### Phase 2: Authentication & User Onboarding (2 Weeks)

#### Week 1: User Authentication
1. **Day 1-3: Authentication System**
   - Implement local authentication
   - Create user registration flow
   - Build login screen and logic
   - Set up secure storage for credentials

2. **Day 4-7: User Profile**
   - Build profile creation screens
   - Implement profile data persistence
   - Create profile editing functionality
   - Add profile image handling

#### Week 2: Onboarding Experience
1. **Day 1-3: Onboarding Screens**
   - Design and implement welcome screens
   - Create onboarding flow (interests, goals)
   - Build preference selection screens
   - Implement onboarding state management

2. **Day 4-5: Notification Permissions**
   - Set up notification permission requests
   - Create notification frequency settings
   - Implement notification preferences storage

3. **Day 5-7: Testing & Refinement**
   - Write widget tests for onboarding flows
   - Perform user journey testing
   - Refine transitions and animations
   - Implement analytics tracking

### Phase 3: Dashboard & Goal Management (2 Weeks)

#### Week 1: Dashboard Implementation
1. **Day 1-3: Dashboard Structure**
   - Create dashboard layout with tabs
   - Implement data visualization widgets
   - Build quick action components
   - Set up progress tracking displays

2. **Day 4-7: Dashboard Data Integration**
   - Connect dashboard to repositories
   - Implement data aggregation services
   - Create dashboard controller logic
   - Add refresh and update mechanisms

#### Week 2: Goal Management System
1. **Day 1-3: Goal Creation**
   - Build goal creation flow
   - Implement goal type selection
   - Create target setting interfaces
   - Add goal validation and storage

2. **Day 4-5: Goal Tracking**
   - Implement progress update functionality
   - Create goal visualization components
   - Build milestone tracking features
   - Add completion celebration animations

3. **Day 5-7: Task Management**
   - Implement task creation within goals
   - Build task list interfaces
   - Create task completion functionality
   - Add due date and priority handling

### Phase 4: Fitness Module (2 Weeks)

#### Week 1: Fitness Core Features
1. **Day 1-3: Fitness Assessment**
   - Build body metrics input screens
   - Implement fitness goal selection
   - Create fitness level assessment
   - Design progress tracking interface

2. **Day 4-7: Workout Management**
   - Create workout logging interface
   - Implement exercise database
   - Build workout history screens
   - Add workout statistics calculations

#### Week 2: Advanced Fitness Features
1. **Day 1-3: Meal Tracking**
   - Build meal logging functionality
   - Implement nutrition calculator
   - Create meal history visualization
   - Add photo capture for meals

2. **Day 4-5: DeepSeek API Integration**
   - Connect to DeepSeek API for fitness tips
   - Implement workout suggestion algorithm
   - Create personalized fitness advice display
   - Add AI-driven workout plan generation

3. **Day 5-7: Progress Metrics**
   - Implement body measurement tracking
   - Create progress visualization charts
   - Build before/after comparison feature
   - Add achievement unlocking system

### Phase 5: Wealth Module (2 Weeks)

#### Week 1: Financial Core Features
1. **Day 1-3: Financial Assessment**
   - Build financial profile input screens
   - Implement financial goal setting
   - Create risk tolerance assessment
   - Design financial dashboard

2. **Day 4-7: Transaction Management**
   - Create transaction logging interface
   - Implement category management
   - Build transaction history screens
   - Add financial statistics calculations

#### Week 2: Advanced Financial Features
1. **Day 1-3: Budget Planning**
   - Build budget creation functionality
   - Implement budget vs. actual tracking
   - Create savings visualization
   - Add expense category analysis

2. **Day 4-5: DeepSeek API Integration**
   - Connect to DeepSeek API for financial tips
   - Implement investment suggestion algorithm
   - Create personalized financial advice display
   - Add AI-driven financial plan generation

3. **Day 5-7: Progress Metrics**
   - Implement financial health indicators
   - Create wealth growth visualization
   - Build saving streak feature
   - Add financial milestone celebration

### Phase 6: Notification System (1 Week)

#### Week 1: Notification System
1. **Day 1-2: Local Notifications**
   - Set up local notification system
   - Implement notification scheduling
   - Create notification categories
   - Build notification action handling

2. **Day 3-4: Motivational Content**
   - Connect DeepSeek API for motivational content
   - Implement content categorization
   - Create content personalization logic
   - Build content storage and caching

3. **Day 5-7: Smart Notification System**
   - Implement user behavior analysis
   - Create optimal timing calculation
   - Build notification frequency management
   - Add do-not-disturb handling

### Phase 7: Polishing & Testing (2 Weeks)

#### Week 1: UI Refinement
1. **Day 1-3: Animation Enhancement**
   - Refine transition animations
   - Implement micro-interactions
   - Add progress and celebration animations
   - Optimize animation performance

2. **Day 4-7: UI/UX Improvements**
   - Conduct usability testing
   - Refine navigation patterns
   - Improve accessibility features
   - Optimize for different screen sizes

#### Week 2: Testing & Optimization
1. **Day 1-3: Comprehensive Testing**
   - Complete widget testing coverage
   - Perform integration testing
   - Conduct performance testing
   - Fix identified issues

2. **Day 4-5: Performance Optimization**
   - Optimize database queries
   - Implement caching strategies
   - Reduce memory footprint
   - Improve battery efficiency

3. **Day 6-7: Final Preparations**
   - Create app icons and splash screen
   - Prepare store listing materials
   - Write user documentation
   - Configure analytics tracking

### Phase 8: Launch & Post-Launch (1 Week)

#### Week 1: Launch & Monitoring
1. **Day 1-2: Pre-Launch Checklist**
   - Perform final QA testing
   - Prepare release notes
   - Configure crash reporting
   - Set up monitoring dashboards

2. **Day 3-4: Launch**
   - Submit to app stores
   - Prepare marketing materials
   - Set up user support channels
   - Configure remote configuration

3. **Day 5-7: Post-Launch Monitoring**
   - Monitor user feedback
   - Track key performance metrics
   - Identify and fix critical issues
   - Plan first update based on feedback

---

## 🎯 Design Principles

- **Modern and Minimalist**:
  - Clean interfaces prioritizing content and functionality
  - Reduced cognitive load through thoughtful design

- **Young Adult Appeal**:
  - Contemporary aesthetics with bold visual elements
  - Inspirational tone balancing aspiration and practicality

- **Responsive and Fast**:
  - Performance-optimized animations and transitions
  - Offline capabilities for core functionality

---

## 🚀 Future Enhancements

1. **Social Features**:
   - Community challenges and group goals
   - Shared progress tracking and celebrations

2. **Gamification**:
   - Achievement system with badges and rewards
   - Streak mechanics for consistent engagement

3. **Premium Subscription**:
   - Advanced AI coaching with deeper personalization
   - Exclusive content and premium features

---

## 🔮 Conclusion

Aura represents the next generation of wellness and financial success apps, bringing together cutting-edge AI technology with engaging user experience. By combining motivation, tracking, and actionable guidance in both fitness and wealth domains, it creates a comprehensive platform for young adults to transform their lives.

The technical foundation of React Native, Supabase, and DeepSeek API ensures the application can scale while maintaining performance and reliability, positioning Aura as a versatile and powerful tool for personal development.
