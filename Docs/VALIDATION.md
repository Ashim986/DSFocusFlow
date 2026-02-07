# Validation Framework

## Overview
The design system includes a validation scaffolding that can be used by text inputs or any other component that needs validation. It is split into factory, rules, validator, validation class, and validation state.

## Modules
All validation types live under `FocusDesignSystemState` so they can be reused by any component.

## Types
- `DSValidationFactory`: convenience builders for common validation sets.
- `DSValidationRule`: protocol implemented by concrete rules.
- `DSValidator`: runs a list of rules and returns the first invalid result.
- `DSValidation`: class wrapper with `isValid` and `validate` methods.
- `DSValidationState`: error-handling state with `result`, `message`, and reducer.

## Built-in Rules
- `DSRequiredRule`
- `DSEmailRule`
- `DSPhoneNumberRule`
- `DSNameRule`
- `DSAddressRule`
- `DSMinLengthRule`
- `DSMaxLengthRule`
- `DSRegexRule`

## Example
```swift
import FocusDesignSystemState

let validator = DSValidationFactory.email(required: true)
let result = validator.validate("person@example.com")

if result.isValid {
    // ok
} else {
    print(result.message ?? "Invalid")
}
```

## Using with DSTextField
`DSTextField` accepts a `validator` plus a validation policy. It reports results through `onValidation` so the caller can update the component state.

```swift
@State private var email = ""
@State private var validationState = DSTextFieldState()

let validator = DSValidationFactory.email(required: true)

DSTextField(
    title: "Email",
    placeholder: "you@example.com",
    text: $email,
    state: validationState,
    validator: validator,
    validationPolicy: .onBlur
) { result in
    validationState.validation = DSTextFieldValidation(result: result)
}
```
