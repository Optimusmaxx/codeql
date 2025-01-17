// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.Element

module Generated {
  class Type extends Synth::TType, Element {
    /**
     * Gets the name of this type.
     */
    string getName() { result = Synth::convertTypeToRaw(this).(Raw::Type).getName() }

    /**
     * Gets the canonical type of this type.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    Type getImmediateCanonicalType() {
      result =
        Synth::convertTypeFromRaw(Synth::convertTypeToRaw(this).(Raw::Type).getCanonicalType())
    }

    /**
     * Gets the canonical type of this type.
     */
    final Type getCanonicalType() { result = this.getImmediateCanonicalType().resolve() }
  }
}
