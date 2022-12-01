Read10X_Image2 <- function (image.dir, filter.matrix = TRUE, ...) 
{ image <- png::readPNG(source = file.path(image.dir, "tissue_hires_image.png"))
    scale.factors <- jsonlite::fromJSON(txt = file.path(image.dir, "scalefactors_json.json"))
    tissue.positions <- read.csv(file = file.path(image.dir, 
        "tissue_positions_list.csv"), col.names = c("barcodes", 
        "tissue", "row", "col", "imagerow", "imagecol"), header = FALSE, 
        as.is = TRUE, row.names = 1)
    if (filter.matrix) {
        tissue.positions <- tissue.positions[which(x = tissue.positions$tissue == 
            1), , drop = FALSE]
    }
    unnormalized.radius <- scale.factors$fiducial_diameter_fullres * 
        scale.factors$tissue_lowres_scalef
    spot.radius <- unnormalized.radius/max(dim(x = image))
    return(new(Class = "VisiumV1", image = image, scale.factors = scalefactors(spot = scale.factors$tissue_hires_scalef, 
        fiducial = scale.factors$fiducial_diameter_fullres, hires = scale.factors$tissue_hires_scalef, 
        scale.factors$tissue_lowres_scalef), coordinates = tissue.positions, 
        spot.radius = spot.radius)) }
