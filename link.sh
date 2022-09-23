git clone https://github.com/eguneys/lchessanalysis
cd lchessanalysis
pnpm install
pnpm bundle
pnpm link .
cd ..

packages="solid-play chessboard23 chessreplay23 chessanalysis23"

for package in $packages
do
  git clone https://github.com/eguneys/$package
  cd $package
  pnpm install
  pnpm build
  pnpm link .
  cd ..
done
