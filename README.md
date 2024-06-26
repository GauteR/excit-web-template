# Excit Blog Template

A starter kit using AstroJS for building a simple website.

Given that you have a little bit of developer knowledge, you can extend it to run what you need.

Features:

- ✅ TailwindCSS
- ✅ 100/100 Lighthouse performance
- ✅ SEO-friendly with canonical URLs and OpenGraph data
- ✅ Sitemap support
- ✅ RSS Feed support
- ✅ Markdown & MDX support

## References

This project utilizes:

- [AstroJS](https://astro.build)
- [TailwindCSS](https://tailwindcss.com/)
- [Docker](https://www.docker.com/)

Some knowledge is preferred, but not required.

## 🧞 Commands

All commands are run from the root of the project, from a terminal:

| Command                   | Action                                           |
| :------------------------ | :----------------------------------------------- |
| `npm install`             | Installs dependencies                            |
| `npm run dev`             | Starts local dev server at `localhost:4321`      |
| `npm run build`           | Build your production site to `./dist/`          |
| `npm run preview`         | Preview your build locally, before deploying     |
| `npm run astro ...`       | Run CLI commands like `astro add`, `astro check` |
| `npm run astro -- --help` | Get help using the Astro CLI                     |

## 🚀 Project Structure

Inside of this project, you'll see the following folders and files:

```text
├── public/
├── src/
│   ├── components/
│   ├── content/
│   ├── layouts/
│   ├── pages/
|   └── styles/
├── astro.config.mjs
├── README.md
├── package.json
└── tsconfig.json
```

And some other server related files.

The server looks for `.astro` or `.md` files in the `src/pages/` directory. Each page is exposed as a route based on its file name.

There's nothing special about `src/components/`, but that's where we like to put any Astro/React/Vue/Svelte/Preact components.

The `src/content/` directory contains "collections" of related Markdown and MDX documents. Use `getCollection()` to retrieve posts from `src/content/blog/`, and type-check your frontmatter using an optional schema. See [Astro's Content Collections docs](https://docs.astro.build/en/guides/content-collections/) to learn more.

Any static assets, like images, can be placed in the `public/` directory.

## Usage

Edit `package.json` to use `your-module-name`, instead of `excit-web-template`.

Edit `src/consts.ts` to your liking.

To create a new blog post, simply create a new .mdx-file in the `src/content/blog` folder. When you compile the new code (locally, staging or live), it will automatically load the new MDX and create a page out of it.

To change the header links, edit the `src/components/Header.astro` file, specifically the HeaderLink attributes found in the internal-links class.

To build for prod: `docker build . -t your-module-name` and use the docker-image to create a container that can run on a web-host, or run `npm run build` and put the files generated in the `dist/` folder on the web-host that you plan to use. See the `docker-compose.yml` for an example on how to set up the image on your server.
