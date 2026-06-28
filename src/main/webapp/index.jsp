<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>You shipped on Clue2App!</title>
    <style>
        * { box-sizing: border-box; margin: 0; padding: 0; }

        :root {
            --c2a-orange-1: #EA580C;
            --c2a-orange-2: #F97316;
            --c2a-orange-3: #FB923C;
            --ink: #1f2937;
            --ink-soft: #4b5563;
            --ink-muted: #6b7280;
            --bg: #fffaf5;
            --card: #ffffff;
            --border: #f3e8dd;
            --shadow: 0 10px 30px rgba(234, 88, 12, 0.08), 0 2px 8px rgba(0, 0, 0, 0.04);
            --shadow-hover: 0 20px 45px rgba(234, 88, 12, 0.14), 0 4px 12px rgba(0, 0, 0, 0.06);
        }

        html, body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
            color: var(--ink);
            background: var(--bg);
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            line-height: 1.55;
        }

        body {
            min-height: 100vh;
            background:
                radial-gradient(1200px 600px at 90% -10%, rgba(251, 146, 60, 0.18), transparent 60%),
                radial-gradient(900px 500px at -10% 10%, rgba(234, 88, 12, 0.12), transparent 60%),
                linear-gradient(180deg, #fffaf5 0%, #fff7ee 100%);
            display: flex;
            flex-direction: column;
        }

        .container {
            max-width: 1080px;
            margin: 0 auto;
            padding: 56px 28px 32px;
            width: 100%;
        }

        /* Hero */
        .hero {
            text-align: center;
            padding: 32px 0 56px;
        }

        .rocket {
            font-size: 88px;
            line-height: 1;
            display: inline-block;
            filter: drop-shadow(0 8px 20px rgba(234, 88, 12, 0.35));
            animation: float 4s ease-in-out infinite;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0) rotate(-8deg); }
            50%      { transform: translateY(-10px) rotate(-2deg); }
        }

        .hero h1 {
            margin-top: 28px;
            font-size: clamp(36px, 5.5vw, 60px);
            font-weight: 800;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, var(--c2a-orange-1) 0%, var(--c2a-orange-2) 50%, var(--c2a-orange-3) 100%);
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
            line-height: 1.1;
        }

        .hero p.lede {
            margin-top: 18px;
            font-size: clamp(16px, 2vw, 19px);
            color: var(--ink-soft);
            max-width: 620px;
            margin-left: auto;
            margin-right: auto;
        }

        .url-pill {
            display: inline-block;
            margin-top: 22px;
            padding: 8px 18px;
            border-radius: 999px;
            background: rgba(234, 88, 12, 0.08);
            color: var(--c2a-orange-1);
            font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
            font-size: 14px;
            font-weight: 600;
            border: 1px solid rgba(234, 88, 12, 0.18);
        }

        /* Section */
        section {
            margin-top: 56px;
        }

        .section-title {
            font-size: 13px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.12em;
            color: var(--c2a-orange-1);
            margin-bottom: 8px;
        }

        .section-heading {
            font-size: clamp(24px, 3vw, 30px);
            font-weight: 700;
            color: var(--ink);
            margin-bottom: 28px;
            letter-spacing: -0.01em;
        }

        /* Cards grid */
        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 20px;
        }

        .card {
            background: var(--card);
            border: 1px solid var(--border);
            border-radius: 18px;
            padding: 26px;
            box-shadow: var(--shadow);
            transition: transform 0.18s ease, box-shadow 0.18s ease, border-color 0.18s ease;
            position: relative;
            overflow: hidden;
        }

        .card.cta:hover {
            transform: translateY(-3px);
            box-shadow: var(--shadow-hover);
            border-color: rgba(234, 88, 12, 0.25);
        }

        .card-step {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 34px;
            height: 34px;
            border-radius: 10px;
            background: linear-gradient(135deg, var(--c2a-orange-1), var(--c2a-orange-3));
            color: #fff;
            font-weight: 700;
            font-size: 14px;
            margin-bottom: 16px;
            box-shadow: 0 4px 12px rgba(234, 88, 12, 0.25);
        }

        .card-icon {
            font-size: 28px;
            margin-bottom: 12px;
            display: block;
        }

        .card h3 {
            font-size: 17px;
            font-weight: 700;
            color: var(--ink);
            margin-bottom: 8px;
            letter-spacing: -0.005em;
        }

        .card p {
            font-size: 14.5px;
            color: var(--ink-muted);
            line-height: 1.55;
        }

        .card p code {
            font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
            font-size: 13px;
            background: rgba(234, 88, 12, 0.08);
            color: var(--c2a-orange-1);
            padding: 2px 6px;
            border-radius: 5px;
        }

        .card a.card-link {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            margin-top: 14px;
            color: var(--c2a-orange-1);
            text-decoration: none;
            font-weight: 600;
            font-size: 14px;
        }

        .card a.card-link:hover {
            color: var(--c2a-orange-2);
        }

        .card a.card-link::after {
            content: "→";
            transition: transform 0.18s ease;
        }

        .card a.card-link:hover::after {
            transform: translateX(3px);
        }

        /* Footer */
        footer {
            margin-top: auto;
            padding: 48px 28px 36px;
            text-align: center;
            color: var(--ink-muted);
            font-size: 14px;
        }

        footer a {
            color: var(--c2a-orange-1);
            text-decoration: none;
            font-weight: 600;
        }

        footer a:hover {
            text-decoration: underline;
        }

        footer .dot {
            display: inline-block;
            margin: 0 10px;
            opacity: 0.5;
        }

        @media (max-width: 600px) {
            .container { padding: 36px 20px 20px; }
            .hero { padding: 12px 0 32px; }
            section { margin-top: 40px; }
        }
    </style>
</head>
<body>
    <main class="container">
        <!-- Hero -->
        <div class="hero">
            <div class="rocket" aria-hidden="true">&#128640;</div>
            <h1>You shipped on Clue2App!</h1>
            <p class="lede">Your Java / Maven WAR / Tomcat 10 app is live and serving at this URL.</p>
            <%
                String scheme = request.getScheme();
                String host = request.getServerName();
                int port = request.getServerPort();
                String hostHeader = request.getHeader("X-Forwarded-Host");
                String displayUrl;
                if (hostHeader != null && !hostHeader.isEmpty()) {
                    String fwdProto = request.getHeader("X-Forwarded-Proto");
                    if (fwdProto == null || fwdProto.isEmpty()) fwdProto = scheme;
                    displayUrl = fwdProto + "://" + hostHeader + request.getContextPath() + "/";
                } else if ((scheme.equals("http") && port == 80) || (scheme.equals("https") && port == 443)) {
                    displayUrl = scheme + "://" + host + request.getContextPath() + "/";
                } else {
                    displayUrl = scheme + "://" + host + ":" + port + request.getContextPath() + "/";
                }
            %>
            <div class="url-pill"><%= displayUrl %></div>
        </div>

        <!-- What just happened -->
        <section>
            <div class="section-title">What just happened</div>
            <h2 class="section-heading">From commit to live URL in a few minutes</h2>
            <div class="grid">
                <div class="card">
                    <span class="card-step">1</span>
                    <h3>Code pushed to git</h3>
                    <p><a class="card-link" href="https://github.com/clue2solve/DemoJavaWebApp" target="_blank" rel="noopener">clue2solve/DemoJavaWebApp</a></p>
                </div>
                <div class="card">
                    <span class="card-step">2</span>
                    <h3>Built by Clue2App</h3>
                    <p>Buildpacks auto-detected your stack &mdash; no Dockerfile needed.</p>
                </div>
                <div class="card">
                    <span class="card-step">3</span>
                    <h3>Deployed live</h3>
                    <p>Knative serves your app and auto-scales it.</p>
                </div>
            </div>
        </section>

        <!-- What's next -->
        <section>
            <div class="section-title">What&rsquo;s next</div>
            <h2 class="section-heading">Make it yours</h2>
            <div class="grid">
                <div class="card cta">
                    <span class="card-icon" aria-hidden="true">&#9999;&#65039;</span>
                    <h3>Edit this page</h3>
                    <p>Open <code>src/main/webapp/index.jsp</code> to make this yours.</p>
                </div>
                <div class="card cta">
                    <span class="card-icon" aria-hidden="true">&#127760;</span>
                    <h3>Add a custom domain</h3>
                    <p>Point your own domain at this app from the console.</p>
                    <a class="card-link" href="https://console.clue2.app" target="_blank" rel="noopener">Open console</a>
                </div>
                <div class="card cta">
                    <span class="card-icon" aria-hidden="true">&#128202;</span>
                    <h3>View build logs &amp; metrics</h3>
                    <p>Inspect builds, runtime logs, and resource usage.</p>
                    <a class="card-link" href="https://console.clue2.app" target="_blank" rel="noopener">Open console</a>
                </div>
            </div>
        </section>
    </main>

    <footer>
        Clue2App &mdash; push code, get apps
        <span class="dot">&middot;</span>
        <a href="https://clue2app.ai" target="_blank" rel="noopener">clue2app.ai</a>
    </footer>
</body>
</html>
