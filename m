Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F605ECD6C1
	for <linux-phy@archiver.kernel.org>; Wed, 11 Feb 2026 16:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3FaosrjGSpYHPW1zdSzhC0cQ5CJ6hoMyQBSOj+UsRjQ=; b=KkMTtG0Fv+XKfc
	u4+5jRXVfITU2kqrEHeBtR9XNS4G0XnAzy+mxnQkUrqLW6en8r3sqPLqm8HH1slYmMayUzd8aKOSY
	s/gkwK2kSJkiGzoLbHZbd4Lj6codlDZYPThco4rBVhJbkaq98CU22xBtMx+gC+BviMy78X1APX514
	EYMT2RJjhEvrYIIXGLrM8iJsnKXNYFTUEEqNyGrt4k98lHR2NeARFnYKo/6mH52DCeLchu13xNrjq
	luf5FmnFltiprnMTeU8/yKZO7F6ekGhhwAwWQ6LsiLA6OnLGx/tv9d7nQ0fFj2mGTMtkekf3pM37s
	AlTau6dDp7hWlcNosQ9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqD6q-00000000qPq-1BUO;
	Wed, 11 Feb 2026 16:30:36 +0000
Received: from mail-vs1-f42.google.com ([209.85.217.42])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqD6c-00000000qOv-2pXM
	for linux-phy@lists.infradead.org;
	Wed, 11 Feb 2026 16:30:35 +0000
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-5faa8a9d7b7so2013548137.0
        for <linux-phy@lists.infradead.org>; Wed, 11 Feb 2026 08:30:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770827420; x=1771432220;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=B4ogstsr1LPrx78n1KJ8ejaHIz64tROV+G0WDoBzT9Y=;
        b=pF48GTr/mIxBWqjwIJAZtsVQOHtA5gfDQ+vLmwTb+JXa5eW2i+pLmHk5BfDmQ63whQ
         yNuv/ds2d/C9rEPHkAFecdwJDQxHGifThxcq8qoj1G4X+Jf1hd+RVcCXRz+eF4/Pxoa5
         NuOuOo65tIcQy/vjh+wecwawnPeCZJyaMbJfGDhiR+1dm6oQlYH3VK/RbIgRsZf8WPJy
         qy323kxIbQP5LENjpFEwdu3kVjSDMhV88V/Tewa+8iwfbgJ4YupnbOkIWrrA1eaYcaUJ
         T5Osu4XWldKj/ECcfgQm32iPV7BgMKAe5GakdWphcyj77ro7BMBp/wA/fM2EHdq83Nr+
         77uQ==
X-Forwarded-Encrypted: i=1; AJvYcCVl3ISB/l5zC+5mPaJeawZZg516iSeSeYUctAu+sn8eURr6mcaDGN0dnlfNWVJmKnSnP4jji/O4Gr4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxWgSYPGp4aPiTmF6bFevajSvrLOAlVNXgzBnhYAJ71k3AD7q+K
	BMnz9iGE2Xq6w5f8i68S5H0oXhLL/KmcGWFh8CBEhhI7l0HXZ49JrdYNr/HLXfFt
X-Gm-Gg: AZuq6aJuuwml7yNPxUII1hrjtq04KWHInpMxwyROnayePpCzsaJbY3FsFJRinBLoJnm
	1uVhIQ93PlyYOUZo+owjM288ru7PACOMj3Uy+HMUaRg9KweUPpg9fw0B2glZexo68v/dnlwlvMi
	7ZKuFvIwx9rdpqWdDSgBJ/G3WLzs6VhkkYtN/KWNAntCC50VcLYnfGf9WEdyyy7/RLypajwbhau
	IokyrqnsXnhpiNsW0Oft1wA27a66vcC8RNTjniIaHaXKLqBXF/uJCmdrjsqiqLV5b2eXQPJD5cn
	kK4BbjWDJ9NHS7j8g4jy3ZbC5s05Jvx67BnTO7KRcQzhiUcMOIatiIY+/6hQZ1WOyxbeEE/jNTL
	VCm8thsFQ9+k9OS/bOwFg7L4CH0OZAtHkE3uyskO0QApCwa559L0REYLg5oRyBx4iDHvmXAbGqe
	qbIuzeaqQ9kA8rBzbsb/LMOSiK05Tv2uULmpFO4diGniUaygQKC17BUpKiqvcJHsOvSx3wYFI=
X-Received: by 2002:a05:6102:54a5:b0:5f5:867f:3507 with SMTP id ada2fe7eead31-5fde976bf11mr679694137.31.1770827419882;
        Wed, 11 Feb 2026 08:30:19 -0800 (PST)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com. [209.85.217.54])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5fde8ae2c86sm784501137.11.2026.02.11.08.30.19
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Feb 2026 08:30:19 -0800 (PST)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-5faa8a9d7b7so2013530137.0
        for <linux-phy@lists.infradead.org>; Wed, 11 Feb 2026 08:30:19 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWZcpgSqyslm5BvKj2xGtrjihhCgarKiFIXnuQy/eMo9UhQL+279jX8sNq0l9Hyz0b7B1qavzET40Q=@lists.infradead.org
X-Received: by 2002:a05:6102:4421:b0:5ee:a8c4:18f2 with SMTP id
 ada2fe7eead31-5fde93f801emr629474137.26.1770827418853; Wed, 11 Feb 2026
 08:30:18 -0800 (PST)
MIME-Version: 1.0
References: <67c8c4f9bf9f09fd0c13daedef27b82ff389ddfb.1770720452.git.geert+renesas@glider.be>
 <CAPDyKFpY2X8hephSfHq7rj_DaKX76ZSkWSCYXrGTEBUFHkvOzg@mail.gmail.com> <aYyrsPTH1923jV7y@vaman>
In-Reply-To: <aYyrsPTH1923jV7y@vaman>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 11 Feb 2026 17:30:07 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUHNRuMmHU2ACX84nsZdXn_-fSamnF+LMFvZS3vkHnEWA@mail.gmail.com>
X-Gm-Features: AZwV_QiOx-vNn3RXDRusgjf7_W4m-z1gNAHOmJNuwbjVfchz_J9gD3jZ3pe8F9o
Message-ID: <CAMuHMdUHNRuMmHU2ACX84nsZdXn_-fSamnF+LMFvZS3vkHnEWA@mail.gmail.com>
Subject: Re: [PATCH next] phy: renesas: rcar-gen3-usb2: Drop local devm_mux_state_get_optional()
To: Vinod Koul <vkoul@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Vladimir Oltean <olteanv@gmail.com>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Josua Mayer <josua@solid-run.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>, linux-phy@lists.infradead.org, 
	linux-mmc@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-next@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_083026_616184_E331498A 
X-CRM114-Status: GOOD (  26.42  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SGkgVmlub2QsCgpPbiBXZWQsIDExIEZlYiAyMDI2IGF0IDE3OjE3LCBWaW5vZCBLb3VsIDx2a291
bEBrZXJuZWwub3JnPiB3cm90ZToKPiBPbiAxMC0wMi0yNiwgMTQ6MzQsIFVsZiBIYW5zc29uIHdy
b3RlOgo+ID4gT24gVHVlLCAxMCBGZWIgMjAyNiBhdCAxMTo1MywgR2VlcnQgVXl0dGVyaG9ldmVu
Cj4gPiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+IHdyb3RlOgo+ID4gPiBOb3cgdGhlIG11eCBj
b3JlIHByb3ZpZGVzIGRldm1fbXV4X3N0YXRlX2dldF9vcHRpb25hbCgpOgo+ID4gPgo+ID4gPiAg
ICAgZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYzo5NDQ6MTogZXJyb3I6
IHN0YXRpYyBkZWNsYXJhdGlvbiBvZiDigJhkZXZtX211eF9zdGF0ZV9nZXRfb3B0aW9uYWzigJkg
Zm9sbG93cyBub24tc3RhdGljCj4gPiA+ICAgICAgZGVjbGFyYXRpb24KPiA+ID4gICAgICAgOTQ0
IHwgZGV2bV9tdXhfc3RhdGVfZ2V0X29wdGlvbmFsKHN0cnVjdCBkZXZpY2UgKmRldiwgY29uc3Qg
Y2hhciAqbXV4X25hbWUpCj4gPiA+ICAgICAgICAgICB8IF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fgo+ID4gPiAgICAgSW4gZmlsZSBpbmNsdWRlZCBmcm9tIGRyaXZlcnMvcGh5L3JlbmVzYXMv
cGh5LXJjYXItZ2VuMy11c2IyLmM6MjA6Cj4gPiA+ICAgICBpbmNsdWRlL2xpbnV4L211eC9jb25z
dW1lci5oOjY0OjE5OiBub3RlOiBwcmV2aW91cyBkZWNsYXJhdGlvbiBvZiDigJhkZXZtX211eF9z
dGF0ZV9nZXRfb3B0aW9uYWzigJkgd2l0aCB0eXBlIOKAmHN0cnVjdCBtdXhfc3RhdGUgKihzdHJ1
Y3QgZGV2aWNlICosIGNvbnN0IGNoYXIgKinigJkKPiA+ID4gICAgICAgIDY0IHwgc3RydWN0IG11
eF9zdGF0ZSAqZGV2bV9tdXhfc3RhdGVfZ2V0X29wdGlvbmFsKHN0cnVjdCBkZXZpY2UgKmRldiwg
Y29uc3QgY2hhciAqbXV4X25hbWUpOwo+ID4gPiAgICAgICAgICAgfCAgICAgICAgICAgICAgICAg
ICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPiA+ID4KPiA+ID4gRml4IHRoaXMgYnkgZHJv
cHBpbmcgdGhlIHRlbXBvcmFyeSBsb2NhbCB3cmFwcGVyLgo+ID4gPgo+ID4gPiBGaXhlczogYWQz
MTQzNDhjZWI0ZmUxZiAoIm11eDogQWRkIGhlbHBlciBmdW5jdGlvbnMgZm9yIGdldHRpbmcgb3B0
aW9uYWwgYW5kIHNlbGVjdGVkIG11eC1zdGF0ZSIpCj4gPiA+IEZpeGVzOiA4YmI5MmZkN2EwNDA3
NzkyICgicGh5OiByZW5lc2FzOiByY2FyLWdlbjMtdXNiMjogVXNlIG11eC1zdGF0ZSBmb3IgcGh5
cnN0IG1hbmFnZW1lbnQiKQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4g
PGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgo+ID4KPiA+IFRoYW5rcyBHZWVydCBmb3IgaGVscGlu
ZyBvdXQhCj4gPgo+ID4gPiAtLS0KPiA+ID4gICAtIGFkMzE0MzQ4Y2ViNGZlMWYgaXMgaW4gbW1j
L25leHQsIGFuZCBhIFBSIGhhcyBhbHJlYWR5IGJlZW4gc2VudAo+ID4gPiAgICAgaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvMjAyNjAyMDkxMzM0NDEuNTU2NDY0LTEtdWxmLmhhbnNzb25AbGluYXJv
Lm9yZwo+ID4gPiAgIC0gOGJiOTJmZDdhMDQwNzc5MiBpcyBpbiBwaHkvbmV4dAo+ID4KPiA+IFZp
bm9kLCBkbyB5b3Ugd2FudCB0byBwaWNrIHVwIHRoZSAkc3ViamVjdCBwYXRjaCBhcyBhIGZpeCBm
b3IgNy4wLXJjMQo+ID4gb3IgZG8geW91IHByZWZlciBtZSB0byBoYW5kbGUgaXQ/Cj4KPiBTaG91
bGQgSSBkcm9wIHRoZSA4YmI5MmZkN2EwNDA3NzkyIGFuZCBpdCBtYWtlcyB0aGluZ3MgZWFzaWVy
IGZvcgo+IGV2ZXJ5b25lIGFuZCB0aGVuIHdlIGNhbiBwaWNrIGZpeGVkIGNvbW1pdCBmb3IgNy4x
IGN5Y2xlLi4KPgo+IERvZXMgdGhhdCB3b3JrIGZvciBldmVyeW9uZS4gSSB3YXMgYWJvdXQgdG8g
c2VuZCBQUiwgd2lsbCBob2xkIG9mZiBmb3IgYQo+IGJpdC4KCkFsdGVybmF0aXZlbHksIHlvdSBj
YW4gbWVudGlvbiB0aGUgc2VtYW50aWMgY29uZmxpY3QgaW4geW91ciBQUiB0byBMaW51cywKYW5k
IGFzayBoaW0gdG8gZm9sZCBteSBwYXRjaCBpbnRvIHRoZSBtZXJnZSBjb21taXQuCgpHcntvZXRq
ZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0CgotLSAKR2VlcnQgVXl0
dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBs
aW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBw
ZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpv
dXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQu
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
