let cssId = 'appendixCss';  // you could encode the css path itself to generate id..
if (!document.getElementById(cssId))
{
  let head  = document.getElementsByTagName('head')[0];
  let link  = document.createElement('link');
  link.id   = cssId;
  link.rel  = 'stylesheet';
  link.type = 'text/css';
  if (location.hostname.includes('dsw-test')) {
    link.href = '../_css/appendix_test.css';
  } else {
    link.href = '../_css/appendix_prod.css';
  }
  link.media = 'all';
  head.appendChild(link);
}
