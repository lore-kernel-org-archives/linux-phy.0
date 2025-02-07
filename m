Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87CD5C02194
	for <linux-phy@archiver.kernel.org>; Fri,  7 Feb 2025 15:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=We2iPPL1At+APAKpXvrnnE+zI7Wc6h+R6p69hSUOb+I=; b=R4y+YtnUA/tKx8
	DCADxY76XYU8TxZSGRpERq+eJBYllAebExoB/O7a0JkUuEFGJl3HsIKOy6HmG9+8PpL2ST64xC//c
	ARBeydb8bszDwOd+Yd1qZJYJh+6mBQr8qCQsDAaTnPE/PUVtgrcx8wTSEJA7Ver6VjgCQ3KGDyHSy
	YQj1ocZxXwYZHSR7yobRXtddRlc3hum10D79uRj+BR72+EiCODKAz8BmEXhHfFpG7ZfMlQ2SREHug
	8DwjYCtZTXWSyWKHU5dtKnVXTRb/9PCrZf+OPYEItsbXdQw+BurSvhkOv/Zadr22dXSC1OPUibPYU
	RppPbo6eZJZF//rBWZXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgQbh-0000000A9eV-1FcO;
	Fri, 07 Feb 2025 15:49:29 +0000
Received: from mgamail.intel.com ([192.198.163.15])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgQN0-0000000A62L-2rQz
	for linux-phy@lists.infradead.org;
	Fri, 07 Feb 2025 15:34:19 +0000
X-CSE-ConnectionGUID: DNsanPZVRh6/y7o/Wo1oHw==
X-CSE-MsgGUID: khkF1EL/RL6Zgh75Sshnxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="39740097"
X-IronPort-AV: E=Sophos;i="6.13,267,1732608000"; 
   d="scan'208";a="39740097"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Feb 2025 07:34:17 -0800
X-CSE-ConnectionGUID: VXQqLjZtSzqIIF02PqrfAg==
X-CSE-MsgGUID: 1poCM6aWQKagH+xRcoUGUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,267,1732608000"; 
   d="scan'208";a="111471997"
Received: from smile.fi.intel.com ([10.237.72.58])
  by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Feb 2025 07:34:11 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andy.shevchenko@gmail.com>)
	id 1tgQMp-000000097ct-09fa;
	Fri, 07 Feb 2025 17:34:07 +0200
Date: Fri, 7 Feb 2025 17:34:06 +0200
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: David Lechner <dlechner@baylibre.com>
Cc: Yury Norov <yury.norov@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>, Peter Rosin <peda@axentia.se>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>, linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-mmc@vger.kernel.org, netdev@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-sound@vger.kernel.org
Subject: Re: [PATCH v2 04/13] bus: ts-nbus: use gpiod_multi_set_value_cansleep
Message-ID: <Z6Yn7mJZwPXs8-MA@smile.fi.intel.com>
References: <20250206-gpio-set-array-helper-v2-0-1c5f048f79c3@baylibre.com>
 <20250206-gpio-set-array-helper-v2-4-1c5f048f79c3@baylibre.com>
 <CAHp75Vf+3pc84vV-900Ls64hM1M7Ji6Dmy8FPwL=n0=sJFSuVA@mail.gmail.com>
 <CAHp75Vdt5EU83mJrB7Sb_pgRNbhvCQ=F2Lyq7mQLAvV-w6cqEA@mail.gmail.com>
 <b1459947-18ec-4835-8891-5251d8f8c95e@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b1459947-18ec-4835-8891-5251d8f8c95e@baylibre.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_073418_735200_DB456B0F 
X-CRM114-Status: GOOD (  16.88  )
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

T24gRnJpLCBGZWIgMDcsIDIwMjUgYXQgMDk6MjM6NTZBTSAtMDYwMCwgRGF2aWQgTGVjaG5lciB3
cm90ZToKPiBPbiAyLzcvMjUgNjoxNyBBTSwgQW5keSBTaGV2Y2hlbmtvIHdyb3RlOgo+ID4gT24g
RnJpLCBGZWIgNywgMjAyNSBhdCAyOjE14oCvUE0gQW5keSBTaGV2Y2hlbmtvCj4gPiA8YW5keS5z
aGV2Y2hlbmtvQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPj4gT24gRnJpLCBGZWIgNywgMjAyNSBhdCAx
Mjo0OOKAr0FNIERhdmlkIExlY2huZXIgPGRsZWNobmVyQGJheWxpYnJlLmNvbT4gd3JvdGU6Cgou
Li4KCj4gPj4+ICBzdGF0aWMgdm9pZCB0c19uYnVzX3dyaXRlX2J5dGUoc3RydWN0IHRzX25idXMg
KnRzX25idXMsIHU4IGJ5dGUpCj4gPj4+ICB7Cj4gPj4+IC0gICAgICAgc3RydWN0IGdwaW9fZGVz
Y3MgKmdwaW9zID0gdHNfbmJ1cy0+ZGF0YTsKPiA+Pj4gICAgICAgICBERUNMQVJFX0JJVE1BUCh2
YWx1ZXMsIDgpOwo+ID4+Pgo+ID4+PiAgICAgICAgIHZhbHVlc1swXSA9IGJ5dGU7Cj4gPj4+Cj4g
Pj4+IC0gICAgICAgZ3Bpb2Rfc2V0X2FycmF5X3ZhbHVlX2NhbnNsZWVwKDgsIGdwaW9zLT5kZXNj
LCBncGlvcy0+aW5mbywgdmFsdWVzKTsKPiA+Pj4gKyAgICAgICBncGlvZF9tdWx0aV9zZXRfdmFs
dWVfY2Fuc2xlZXAodHNfbmJ1cy0+ZGF0YSwgdmFsdWVzKTsKPiA+Pgo+ID4+IEFzIEkgc2FpZCBi
ZWZvcmUsIHRoaXMgaXMgYnVnZ3kgY29kZSBvbiBCRTY0LiBOZWVkcyB0byBiZSBmaXhlZC4KPiA+
IAo+ID4gT3IgaXNuJ3Q/IERvIHdlIGhhdmUgYSB0ZXN0IGNhc2UgaW4gYml0bWFwIGZvciBzdWNo
IGEgY2FzZT8KPiA+IAo+ID4+PiAgfQo+IAo+IE1heWJlIG5vdCB0aGUgYmVzdCBzdHlsZSwgYnV0
IEkgZG9uJ3QgdGhpbmsgaXQgaXMgYnVnZ3kuIEJpdG1hcHMgYXJlIGFsd2F5cwo+IGhhbmRsZWQg
aW4gbG9uZy1zaXplZCBjaHVua3MgYW5kIG5vdCBjYXN0IHRvIGJ5dGVzIHNvIGVuZGlhbm5lc3Mg
ZG9lc24ndCBhZmZlY3QKPiBpdC4gSSBkaWRuJ3Qgc2VlIGFuIGV4cGxpY2l0IHRlc3QsIGJ1dCBi
aXRtYXBfcmVhZCgpIGFuZCBiaXRtYXBfd3JpdGUoKSB1c2UKPiBhcnJheSBhY2Nlc3MgbGlrZSB0
aGlzIHNvIGluZGlyZWN0bHkgaXQgaXMgYmVpbmcgdGVzdGVkLgoKUmlnaHQsIHRoZSBwb3RlbnRp
YWwgKGFuZCBsaWtlbHkgdGhlb3JldGljYWwpIGlzc3VlIG1heSBjb21lIGlmIERFRklORV9CSVRN
QVAoKQpvdXQgb2YgYSBzdWRkZW4gd2lsbCB1c2UsIGxldCdzIHNheSwgYW4gYXJyYXkgb2YgYm9v
bGVhbnMuIEJ1dCBpdCB3YXNuJ3QgbXkKaW5pdGlhbCBjb21wbGFpbiBhYm91dCB0aGUgY29kZSA6
LSkKCi0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtvCgoKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
