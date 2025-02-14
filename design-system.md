# Denarius Design System Documentation

## Introduction

The Denarius Design System provides a comprehensive set of design tokens and utilities that ensure consistency across the application while maintaining a modern, clean aesthetic. This system is built using SASS and implements a modular approach to styling, making it easy to maintain and scale.

## Color System

### Brand Colors

Our color palette is built around four key brand colors that reflect the Zeetech identity:

- Primary Purple (`#9655FF`): A vibrant, modern purple that serves as our primary action color. This color represents innovation and creativity in our interface.
- Secondary Yellow (`#FEF5BC`): A soft, warm yellow that provides contrast and visual interest. This color is used for highlighting and secondary elements.
- Neutral White (`#F7F7FF`): A slightly warm white that serves as our primary background color, offering excellent readability while maintaining visual comfort.
- Dark Mode (`#000A0F`): A rich, deep blue-black that forms the foundation of our dark mode interface.

### Extended Color Palette

The system includes carefully selected color scales for common interface needs:

#### Zinc Scale
Our neutral color scale, ranging from near-white to deep gray, is used for text, borders, and subtle backgrounds. The zinc scale includes ten steps (50-900) providing fine-grained control over neutral colors.

#### Rose Scale
Used primarily for error states and critical actions:
- Rose 50: Background for error messages
- Rose 400: Border highlights and icons
- Rose 600: Error text and critical actions

#### Emerald Scale
Implemented for success states and positive feedback:
- Emerald 50: Background for success messages
- Emerald 800: Success text and icons

## Typography

### Font Sizes

Our type scale is designed to create clear hierarchies while maintaining readability across devices:

- Extra Small (xs): 0.75rem (12px)
- Small (sm): 0.875rem (14px)
- Base: 1rem (16px)
- Large (lg): 1.125rem (18px)
- Extra Large (xl): 1.25rem (20px)
- Double Extra Large (2xl): 1.5rem (24px)

### Font Weights

We use a focused set of weights to maintain clear hierarchies:

- Normal: 400
- Medium: 500
- Semibold: 600
- Bold: 700

## Spacing System

Our spacing system uses a consistent scale that starts at 0 and increases in logical increments. Each spacing value is carefully chosen to create harmonious layouts:

- 0: 0
- 1: 0.25rem (4px)
- 2: 0.5rem (8px)
- 3: 0.75rem (12px)
- 4: 1rem (16px)
- 5: 1.25rem (20px)
- 6: 1.5rem (24px)
- 8: 2rem (32px)
- 10: 2.5rem (40px)
- 11: 2.75rem (44px)
- 14: 3.5rem (56px)
- 16: 4rem (64px)

## Border Radius

The border radius scale provides options from square corners to smooth rounded edges:

- none: 0
- sm: 0.125rem (2px)
- default: 0.25rem (4px)
- md: 0.375rem (6px)
- lg: 0.5rem (8px)
- xl: 0.75rem (12px)
- 2xl: 1rem (16px)

## Breakpoints

The system implements responsive design through defined breakpoints:

- Small (sm): 640px
- Medium (md): 768px
- Large (lg): 1024px
- Extra Large (xl): 1280px
- Double Extra Large (2xl): 1536px

## Component Patterns

### Buttons

Buttons follow a consistent pattern with defined states:
- Default state: Primary color with full opacity
- Hover state: 90% opacity
- Active state: 80% opacity
- Disabled state: 50% opacity

### Form Elements

Input fields maintain consistency through:
- Standard padding (0.5rem)
- Consistent border width (1px)
- Focus states with primary color highlights
- Error states using the rose color scale
- Rounded corners (lg radius)

### Modals

Modal components follow a structured hierarchy:
- Overlay with 90% opacity background
- Centered content with maximum width
- Consistent padding and spacing
- Close button in the top-right corner

### Tables

Tables implement consistent styling:
- Header cells with zinc-500 text color
- Hover states for rows
- Consistent cell padding
- Light borders between rows

## Usage Guidelines

### Utility Classes

The system provides utility classes for:
- Flexbox layouts
- Spacing (margin and padding)
- Typography (size and weight)
- Responsive behaviors

### Best Practices

1. Use the provided color functions instead of hard-coding hex values
2. Implement spacing through the spacing scale
3. Maintain consistent typography through provided sizes
4. Use breakpoint mixins for responsive design
5. Leverage component classes for consistent patterns

### Implementation Example

```scss
.component {
  color: color(primary);
  padding: spacing(4);
  font-size: font-size(lg);
  border-radius: radius(lg);
}
```

## Accessibility Considerations

The design system maintains WCAG 2.1 compliance through:
- Sufficient color contrast ratios
- Scalable typography
- Focus indicators
- Semantic markup support
- Screen reader compatibility

## Version Control

The design system follows semantic versioning (MAJOR.MINOR.PATCH). Changes to tokens require version updates according to their impact:
- MAJOR: Breaking changes to existing tokens
- MINOR: New tokens or features
- PATCH: Bug fixes and minor updates