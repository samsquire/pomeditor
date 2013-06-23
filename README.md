POM Renderer
===

POM Renderer is an interface for visualising and editing POM files.

# Libraries Used

 * Knockout
 * Underscore
 * jQuery
 * JQuery Masonry
 
# Architecture

 * The POM is fetched by an AJAX call and returned as a `document fragment`.
 * **XML to JSON**: The fragment's DOM is walked via jQuery and converted to JSON.
 * Create another JSON object where each field corresponds to the original XML fragment.
 * **Observable ViewModels**: The Knockout mapping plugin creates observables for each field in the POM.
 * **Synchronizing the ViewModels with the XML** Knockout `Subscriptions` are added to each observable so that whenever the observable changes the corresponding XML fragment is also updated.
 * **Input fields** Knockout `value` bindings keep the ViewModel up to date. This means that the whenever input fields change, the observable POM XML representation of the POM synchronized in memory.  
 * **Rendering** The Knockout `template` binding is used dynamically to walk the project model.
 * jQuery Masonry lines each element in a grid.
 * Exporting the updated POM can be done with `XMLSerializer`.
 * **Adding New Content** Adding new content to the POM (such as dependencies or plugins) is accomplished by cloning XML fragments and using the same JSON conversion and mapping in the same process above. Since every Knockout template knows what object it is rendering and can access the 

 
# ToDo

* Poll or detect external changes to the original POM file and reflect the changes onscreen
