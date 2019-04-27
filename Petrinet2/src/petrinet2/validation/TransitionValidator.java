/**
 *
 * $Id$
 */
package petrinet2.validation;


/**
 * A sample validator interface for {@link petrinet2.Transition}.
 * This doesn't really do anything, and it's not a real EMF artifact.
 * It was generated by the org.eclipse.emf.examples.generator.validator plug-in to illustrate how EMF's code generator can be extended.
 * This can be disabled with -vmargs -Dorg.eclipse.emf.examples.generator.validator=false.
 */
public interface TransitionValidator {
	boolean validate();

	boolean validateMaxDelay(double value);
	boolean validateMinDelay(double value);
}
