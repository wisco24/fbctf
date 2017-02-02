<?hh // strict

class :fbbranding extends :x:element {
  category %flow;

  protected string $tagName = 'fbbranding';

  protected function render(): XHPRoot {
    return
      <span class="branding-el">
        <svg class="icon icon--social-facebook">
          <use href="#icon--social-facebook" />
        </svg>
        <span class="has-icon">{tr('Created By Facebook, Powered by Trend Micro')}</span>
      </span>;
  }
}
