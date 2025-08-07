import ProjectDescription

let template = Template(
    description: "A template for a Tuist iOS app with a local Modules Swift package and folder reference.",
    attributes: [
        .required("name"),
        .required("bundleId"),
        .required("organizationName")
    ],
    items: [
        .file(path: "{{ name }}/Project.swift", templatePath: "Project.stencil"),
        .file(path: "Workspace.swift", templatePath: "Workspace.stencil"),
        .file(path: "{{ name }}/Sources/App.swift", templatePath: "App.stencil"),
        .file(path: "{{ name }}/Resources/LaunchScreen.storyboard", templatePath: "LaunchScreen.storyboard"),
        .file(path: "{{ name }}/Tests/AppFeatureTests.swift", templatePath: "TestsAppFeatureTests.stencil"),
        .file(path: "Modules/Sources/AppFeature/AppFeature.swift", templatePath: "SourcesAppFeature.stencil"),
        .file(path: "Modules/Sources/AppFeature/AppView.swift", templatePath: "AppView.stencil"),
        .file(path: "Modules/Package.swift", templatePath: "Package.stencil")
    ]
)
