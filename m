Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AA9EC021B3
	for <linux-phy@archiver.kernel.org>; Fri, 21 Feb 2025 09:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DmIgGnuCsfymChuejN/SLHyCPHdh9HcxBADSZuioesM=; b=sv5RwMGJZBMpHO
	k/7CwrNrqJ+zFap3n0w5kbHR3B9MlT9gbusKfTjIL2Wc7NnOPCl0kuSkTQCKsXCJIH+JIDKZf4GN7
	RKWbcKn7Uom2kaZKLytRCiCnliJuhSx1rJN9577O1rGoZYkJUJUqyjTurgu1GmAXX7NA9qL/+mz8+
	4fG/2HladXOLrK7KTe8rqwtHOsZCTjwP0e7YI+csFczNiY/9TAZi1cT9pZbrQVJCkf30ixjib2RR8
	4mjaerq4IOWbnQwGx5zkizciT2Gxd+8WVviumicJjnPsr2g7mpOnMRqwDuJisercKo5h26B8EuhZI
	VN1hGMwzRQeeV5KRXT6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlPVk-00000004yJn-11eq;
	Fri, 21 Feb 2025 09:39:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlPH3-00000004uqB-0ytK
	for linux-phy@lists.infradead.org;
	Fri, 21 Feb 2025 09:24:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0EF0E5C53CD;
	Fri, 21 Feb 2025 09:24:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 337D7C4CED6;
	Fri, 21 Feb 2025 09:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740129879;
	bh=0XvHhHCp8UD0T0S2F3TcjKx5PbjsjRTd7om3G9mT0zA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lG0mlwtJZr90iiEgPpXWZcAJeoQ7w6hJnCabn1hKI4nUWNnfPjKxHgPmjZFREDhIc
	 sOo8AsSd9BxATe2pJaizh0r/gtKN58rIoyunLYb375hBIClvoL8TwtTtrD6DhhE3+P
	 UM8ayvN8x4zuk2tBlPadja42ddXDzYbevhO/F2nD4jCoCyI22mBrX0h6K+7+y0aW7c
	 /ddFCibmqojyrq+UHdQeAXco07No29ahVpM5/bJZrkeCjvxWdW4CXnlUeysngvx+Cr
	 D+pqqRL9iuDE01WMcaZ8qKDPwjX8xWf9Jwfi+Q2fKt07we0zcfWHUWdxZHOZVZEYdb
	 1YS0IduJaYf2A==
Date: Fri, 21 Feb 2025 09:24:31 +0000
From: Simon Horman <horms@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>,
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
	Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>, linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-mmc@vger.kernel.org, netdev@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-sound@vger.kernel.org,
	Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH v3 05/15] bus: ts-nbus: use bitmap_get_value8()
Message-ID: <20250221092431.GE1615191@kernel.org>
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
 <20250210-gpio-set-array-helper-v3-5-d6a673674da8@baylibre.com>
 <20250220101742.GR1615191@kernel.org>
 <0084eef7-3831-4e62-acf1-6c2dc0e15dd1@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0084eef7-3831-4e62-acf1-6c2dc0e15dd1@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_012445_377398_0A204D16 
X-CRM114-Status: GOOD (  35.18  )
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

T24gVGh1LCBGZWIgMjAsIDIwMjUgYXQgMTE6MzI6MTBBTSAtMDYwMCwgRGF2aWQgTGVjaG5lciB3
cm90ZToKPiBPbiAyLzIwLzI1IDQ6MTcgQU0sIFNpbW9uIEhvcm1hbiB3cm90ZToKPiA+IE9uIE1v
biwgRmViIDEwLCAyMDI1IGF0IDA0OjMzOjMxUE0gLTA2MDAsIERhdmlkIExlY2huZXIgd3JvdGU6
Cj4gPj4gVXNlIGJpdG1hcF9nZXRfdmFsdWU4KCkgaW5zdGVhZCBvZiBhY2Nlc3NpbmcgdGhlIGJp
dG1hcCBkaXJlY3RseS4KPiA+Pgo+ID4+IEFjY2Vzc2luZyB0aGUgYml0bWFwIGRpcmVjdGx5IGlz
IG5vdCBjb25zaWRlcmVkIGdvb2QgcHJhY3RpY2UuIFdlIG5vdwo+ID4+IGhhdmUgYSBoZWxwZXIg
ZnVuY3Rpb24gdGhhdCBjYW4gYmUgdXNlZCBpbnN0ZWFkLCBzbyBsZXQncyB1c2UgaXQuCj4gPj4K
PiA+PiBTdWdnZXN0ZWQtYnk6IEFuZHkgU2hldmNoZW5rbyA8YW5keS5zaGV2Y2hlbmtvQGdtYWls
LmNvbT4KPiA+IHU+IFNpZ25lZC1vZmYtYnk6IERhdmlkIExlY2huZXIgPGRsZWNobmVyQGJheWxp
YnJlLmNvbT4KPiA+PiAtLS0KPiA+PiAgZHJpdmVycy9idXMvdHMtbmJ1cy5jIHwgNSArKystLQo+
ID4+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4+
Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvYnVzL3RzLW5idXMuYyBiL2RyaXZlcnMvYnVzL3Rz
LW5idXMuYwo+ID4+IGluZGV4IGI0YzkzMDhjYWYwNjQ3YTMyNjEwNzFkOTUyN2ZmZmNlNzc3ODRh
ZjIuLmJlYWM2N2YzYjgyMDM3N2Y4YmIxZmM0ZjRlZTc3ZTE1ZWUyNDA4MzQgMTAwNjQ0Cj4gPj4g
LS0tIGEvZHJpdmVycy9idXMvdHMtbmJ1cy5jCj4gPj4gKysrIGIvZHJpdmVycy9idXMvdHMtbmJ1
cy5jCj4gPj4gQEAgLTEwLDYgKzEwLDcgQEAKPiA+PiAgICogVFMtNDYwMCBTb00uCj4gPj4gICAq
Lwo+ID4+ICAKPiA+PiArI2luY2x1ZGUgPGxpbnV4L2JpdG1hcC5oPgo+ID4+ICAjaW5jbHVkZSA8
bGludXgvYml0b3BzLmg+Cj4gPj4gICNpbmNsdWRlIDxsaW51eC9ncGlvL2NvbnN1bWVyLmg+Cj4g
Pj4gICNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4KPiA+PiBAQCAtMTA3LDcgKzEwOCw3IEBAIHN0
YXRpYyB2b2lkIHRzX25idXNfcmVzZXRfYnVzKHN0cnVjdCB0c19uYnVzICp0c19uYnVzKQo+ID4+
ICB7Cj4gPj4gIAlERUNMQVJFX0JJVE1BUCh2YWx1ZXMsIDgpOwo+ID4+ICAKPiA+PiAtCXZhbHVl
c1swXSA9IDA7Cj4gPj4gKwliaXRtYXBfc2V0X3ZhbHVlOCh2YWx1ZXMsIGJ5dGUsIDApOwo+ID4g
Cj4gPiBIaSBEYXZpZCwKPiA+IAo+ID4gYnl0ZSBkb2Vzbid0IGFwcGVhciB0byBleGlzdCBpbiB0
aGUgc2NvcGUgb2YgdGhpcyBmdW5jdGlvbi4KPiA+IAo+ID4gSSB0cmllZCB0aGlzOgo+ID4gCj4g
PiAJYml0bWFwX3NldF92YWx1ZTgodmFsdWVzLCAwLCA4KTsKPiA+IAo+ID4gQnV0IHdoZW4gY29t
cGlsaW5nIHdpdGggR0NDIDE0LjIuMCBJIHNlZSB3YXJuaW5ncyB0aGF0IHZhbHVlcwo+ID4gaXMg
dXNlZCB1bmluaXRpYWxpc2VkIC0gYml0bWFwX3NldF92YWx1ZTgoKSBhcHBlYXJzIHRvIHJlbHkg
b24KPiA+IGl0IGJlaW5nIHNvLgo+IAo+IEFoIHllcywgSSBzZWUgdGhlIHByb2JsZW0gKEkgZG9u
J3QgdGhpbmsgdGhpcyBkcml2ZXIgY29tcGlsZXMgd2l0aAo+IGFsbG1vZGNvbmZpZyBzbyB0aGUg
Y29tcGlsZXIgZGlkbid0IGNhdGNoIGl0IGZvciBtZSkuCgpUaGFua3MsIHRoYXQgd291bGQgZXhw
bGFpbiB0aGluZ3MuCgpGV0lJVywgSSB0aGluayB5b3UgY2FuIGV4ZXJjaXNlIHRoaXMgd2l0aCBh
bGxtb2Rjb25maWcgYnkgc2ltcGx5IHJ1bm5pbmc6CgogIG1ha2UgZHJpdmVycy9idXMvdHMtbmJ1
cy5vCgo+IAo+ID4gCj4gPiAgIENDICAgICAgZHJpdmVycy9idXMvdHMtbmJ1cy5vCj4gPiBJbiBm
aWxlIGluY2x1ZGVkIGZyb20gZHJpdmVycy9idXMvdHMtbmJ1cy5jOjEzOgo+ID4gSW4gZnVuY3Rp
b24g4oCYYml0bWFwX3dyaXRl4oCZLAo+ID4gICAgIGlubGluZWQgZnJvbSDigJh0c19uYnVzX3Jl
c2V0X2J1c+KAmSBhdCBkcml2ZXJzL2J1cy90cy1uYnVzLmM6MTExOjI6Cj4gPiAuL2luY2x1ZGUv
bGludXgvYml0bWFwLmg6ODE4OjEyOiBlcnJvcjog4oCYdmFsdWVz4oCZIGlzIHVzZWQgdW5pbml0
aWFsaXplZCBbLVdlcnJvcj11bmluaXRpYWxpemVkXQo+ID4gICA4MTggfCAgICAgICAgIG1hcFtp
bmRleF0gJj0gKGZpdCA/ICh+KG1hc2sgPDwgb2Zmc2V0KSkgOiB+QklUTUFQX0ZJUlNUX1dPUkRf
TUFTSyhzdGFydCkpOwo+ID4gICAgICAgfCAgICAgICAgIH5+fl5+fn5+fn4KPiA+IEluIGZpbGUg
aW5jbHVkZWQgZnJvbSAuL2luY2x1ZGUvbGludXgva2FzYW4tY2hlY2tzLmg6NSwKPiA+ICAgICAg
ICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvYXNtLWdlbmVyaWMvcndvbmNlLmg6MjYsCj4gPiAg
ICAgICAgICAgICAgICAgIGZyb20gLi9hcmNoL3g4Ni9pbmNsdWRlL2dlbmVyYXRlZC9hc20vcndv
bmNlLmg6MSwKPiA+ICAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvY29tcGls
ZXIuaDozNDQsCj4gPiAgICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2J1aWxk
X2J1Zy5oOjUsCj4gPiAgICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2JpdHMu
aDoyMiwKPiA+ICAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvYml0b3BzLmg6
NiwKPiA+ICAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvYml0bWFwLmg6ODoK
PiA+IGRyaXZlcnMvYnVzL3RzLW5idXMuYzogSW4gZnVuY3Rpb24g4oCYdHNfbmJ1c19yZXNldF9i
dXPigJk6Cj4gPiBkcml2ZXJzL2J1cy90cy1uYnVzLmM6MTA5OjI0OiBub3RlOiDigJh2YWx1ZXPi
gJkgZGVjbGFyZWQgaGVyZQo+ID4gICAxMDkgfCAgICAgICAgIERFQ0xBUkVfQklUTUFQKHZhbHVl
cywgOCk7Cj4gPiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+Cj4gPiAuL2lu
Y2x1ZGUvbGludXgvdHlwZXMuaDoxMToyMzogbm90ZTogaW4gZGVmaW5pdGlvbiBvZiBtYWNybyDi
gJhERUNMQVJFX0JJVE1BUOKAmQo+ID4gICAgMTEgfCAgICAgICAgIHVuc2lnbmVkIGxvbmcgbmFt
ZVtCSVRTX1RPX0xPTkdTKGJpdHMpXQo+ID4gICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAg
Xn5+fgo+ID4gCj4gPiAKPiA+PiAgCj4gPj4gIAlncGlvZF9tdWx0aV9zZXRfdmFsdWVfY2Fuc2xl
ZXAodHNfbmJ1cy0+ZGF0YSwgdmFsdWVzKTsKPiA+PiAgCWdwaW9kX3NldF92YWx1ZV9jYW5zbGVl
cCh0c19uYnVzLT5jc24sIDApOwo+ID4+IEBAIC0xNTEsNyArMTUyLDcgQEAgc3RhdGljIHZvaWQg
dHNfbmJ1c193cml0ZV9ieXRlKHN0cnVjdCB0c19uYnVzICp0c19uYnVzLCB1OCBieXRlKQo+ID4+
ICB7Cj4gPj4gIAlERUNMQVJFX0JJVE1BUCh2YWx1ZXMsIDgpOwo+IAo+IFdlIGNhbiBmaXggYnkg
emVyby1pbml0aWFsaW5nIHRoZSBiaXRtYXAuCj4gCj4gCURFQ0xBUkVfQklUTUFQKHZhbHVlcywg
OCkgPSB7IH07CgpUaGFua3MsIEkgY29uZmlybWVkIHRoYXQgYWRkaW5nIHRoYXQgdG8gdHNfbmJ1
c19yZXNldF9idXMoKQptYWtlcyB0aGUgY29tcGlsZXIgaGFwcHkuIEFuZCBpdCBzZWVtcyBzZW5z
aWJsZSB0byBtZS4KCkkgZ3Vlc3MgdGhhdCB0aGVvcmV0aWNhbGx5IGl0IHNob3VsZCBhbHNvIGJl
IGFkZGVkIHRvIHRzX25idXNfd3JpdGVfYnl0ZSgpLAphbHRob3VnaCBHQ0MgaGFzIG5vdGhpbmcg
dG8gc2F5IGFib3V0IHRoYXQgZWl0aGVyIHdheS4KCj4gV291bGQgeW91IGxpa2UgbWUgdG8gc2Vu
ZCBhIG5ldyB2ZXJzaW9uIG9mIHRoZSBwYXRjaD8KCkl0J3Mgbm90IHJlYWxseSBteSBjYWxsLiBC
dXQgSSB3b3VsZCBleHBlY3QgdGhhdCBpcyBhIGdvb2QgbmV4dCBzdGVwLgoKPiA+PiAtCXZhbHVl
c1swXSA9IGJ5dGU7Cj4gPj4gKwliaXRtYXBfc2V0X3ZhbHVlOCh2YWx1ZXMsIGJ5dGUsIDgpOwo+
ID4+ICAKPiA+PiAgCWdwaW9kX211bHRpX3NldF92YWx1ZV9jYW5zbGVlcCh0c19uYnVzLT5kYXRh
LCB2YWx1ZXMpOwo+ID4+ICB9CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
