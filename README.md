# Islamy

Islamy is a Flutter app that provides access to the Quran, Hadith, Sebha, and a radio feature. It offers a user-friendly interface for users to explore Islamic resources.

## Features

- Read the Quran
- Access a collection of Hadith
- Perform Sebha (prayer beads) counting
- Listen to an Islamic radio station

## State Management

The app uses the Provider package for state management, which offers a simple and scalable solution for managing application state and data flow.

## Data Storage

- The Quran and Hadith data are stored in local files within the app's assets directory.
- The app fetches the radio stream from an API using the http package.

## Localization

The app supports multiple languages with localization. It provides translations for various languages, allowing users to switch between languages easily.

## User Preferences

The app uses SharedPreferences to store and manage user preferences, such as preferred language and theme.
