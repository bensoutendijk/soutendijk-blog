module Paperclip
  class Cropper < Thumbnail
    def transformation_command
      
      @target = @attachment.instance
      
      # Defines the command paperclip will execute (using ImageMagick) when Article thumbnail is uploaded
      scale, crop = @current_geometry.transformation_to(@target_geometry, crop?)
      trans = []
      # trans << "-auto-orient" if auto_orient
      trans << "-resize" << %["#{scale}"] unless scale.nil? || scale.empty?
      trans << "-page 640x360+#{@target.crop_w}+#{@target.crop_h} -background none -layers flatten" if crop
      
      # Puts the array of strings (which contain parameters for imagemagick) into the paperclip command line processor
      trans
    end
  end
end