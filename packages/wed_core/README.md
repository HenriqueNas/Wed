# Wed Core

The Wed Core Dart library is a collection of abstract classes and abstractions for building components with styles in Dart applications.
Designed to provide the core abstractions of the `Wed framework`.

## Classes

`Component<T extends Props>`
The Component class is an abstraction for a component that can be rendered. It provides a way to manage component state and trigger re-renders.

`SingleChildComponent<T extends Props>`
The SingleChildComponent class extends Component and is designed for components with a single child.

`MultiChildrenComponent<T extends Props>`
The MultiChildrenComponent class extends Component and is designed for components with multiple children.

`Props<S extends Style>`
The Props class is an abstraction for the props that can be applied to a Component. It includes style information and a unique key.

`Style`
The Style class is an abstraction for the style that can be applied to a Component. It includes a method for updating styles.