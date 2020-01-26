usage: main.py run [-i INPUT] [-o OUTPUT]
                   [--auto-rescale | --auto-resize | --auto-resize-crop | --overlay OVERLAY | --ignore-size]
                   [--color-transfer] [--bsize BSIZE] [--asize ASIZE]
                   [--nsize NSIZE] [--vsize VSIZE] [--hsize HSIZE] [-n N_RUNS]
                   [-s STEPS] [-a ALTERED] [--export-step EXPORT_STEP]
                   [--export-step-path EXPORT_STEP_PATH] [--cpu | --gpu GPU]
                   [-c CHECKPOINTS] [--n-cores N_CORES]
                   [--disable-persistent-gan] [-j JSON_ARGS]
                   [--json-folder-name JSON_FOLDER_NAME] [-h] [-d] [-v]

Process image(s) with dreampower.

optional arguments:
  -i INPUT, --input INPUT
                        Path or http(s) url of the photo. Or path of the
                        directory to transform .
  -o OUTPUT, --output OUTPUT
                        Path of the file or the directory where the
                        transformed photo(s) will be saved. Default :
                        output<input extension>
  --auto-rescale        Scale image to 512x512.
  --auto-resize         Scale and pad image to 512x512 (maintains aspect
                        ratio).
  --auto-resize-crop    Scale and crop image to 512x512 (maintains aspect
                        ratio).
  --overlay OVERLAY     Processing the part of the image given by the
                        coordinates (<x_top_left>,<y_top_left>:<x_bot_right>,<
                        x_bot_right>) and overlay the result on the original
                        image.
  --ignore-size         Ignore image size checks.
  --color-transfer      Transfers the color distribution from the input image
                        to the output image.
  --bsize BSIZE         Boob size scalar best results 0.3 - 2.0
  --asize ASIZE         Areola size scalar best results 0.3 - 2.0
  --nsize NSIZE         Nipple size scalar best results 0.3 - 2.0
  --vsize VSIZE         Vagina size scalar best results 0.3 - 1.5
  --hsize HSIZE         Pubic hair size scalar best results set to 0 to
                        disable
  -n N_RUNS, --n-runs N_RUNS
                        Number of times to process input. Default : 1
  -s STEPS, --steps STEPS
                        Select a range of steps to execute <starting
                        step>:<ending step>.Steps are : 0 : dress -> correct
                        [OPENCV] 1 : correct -> mask [GAN] 2 : mask -> maskref
                        [OPENCV] 3 : maskref -> maskdet [GAN] 4 : maskdet ->
                        maskfin [OPENCV] 5 : maskfin -> nude [GAN]
  -a ALTERED, --altered ALTERED
                        Path of the directory where steps images
                        transformation are write.
  --export-step EXPORT_STEP
                        Export step image.Steps are : 0 : dress -> correct
                        [OPENCV] 1 : correct -> mask [GAN] 2 : mask -> maskref
                        [OPENCV] 3 : maskref -> maskdet [GAN] 4 : maskdet ->
                        maskfin [OPENCV] 5 : maskfin -> nude [GAN]
  --export-step-path EXPORT_STEP_PATH
                        Path of the directory where export the step image.
  --cpu                 Force photo processing with CPU (slower)
  --gpu GPU             ID of the GPU to use for processing. It can be used
                        multiple times to specify multiple GPUs (Example:
                        --gpu 0 --gpu 1 --gpu 2). Default : 0
  -c CHECKPOINTS, --checkpoints CHECKPOINTS
                        Path of the directory containing the checkpoints.
                        Default : ./checkpoints
  --n-cores N_CORES     Number of cpu cores to use. Default : 4
  --disable-persistent-gan
                        Disable persistent in memory gan model. Reduce memory
                        usage but increase computation time on multiple
                        processing.
  -j JSON_ARGS, --json-args JSON_ARGS
                        Load arguments from json files or json string. If a
                        command line argument is also provide the json value
                        will be ignore for this argument.
  --json-folder-name JSON_FOLDER_NAME
                        Path to the json per folder configuration to looks for
                        when processing folder. Default: settings.json
  -h, --help            Show this help message and exit.
  -d, --debug           Enable log debug mod.
  -v, --version         show program's version number and exit