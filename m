Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D768C021B1
	for <linux-phy@archiver.kernel.org>; Thu, 20 Feb 2025 10:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pogNJB8prHfLGH0thEtZ7qP9Z+zajHx0We8ZVzAr3k0=; b=L9IpbFUsNWaqOU
	IIbSW9wqSY/stjhxaYLI2Gtu4CRK3z91axWUFGToNvh8ujvtzTv4yVZIlhTg8214DyjV+s1K7ScZ1
	YCWeTCs9FVF9q+8qh1/8BYbsRSEZovC3g9QPMyH48P38fmfzdE/2rjkkD6oKXky+xfuwMYhrNnq9A
	dvQMI0gTVU+xuReZOPavJtYi3VsQeGm7PsZiJA953andd8SbsA+CtcmqDIpJvUg8WNG06bz3XIeDQ
	OqaFHxTY9L07Nbbhi9HXBmbDfqWWwtz+3ngLzV0y5qZJRhKKve1cMHmTNmee+ORDbp5HS7LDHa7Pe
	Ic8sTeYNgAq5OA4q3pzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl3cv-00000000FQH-3v42;
	Thu, 20 Feb 2025 10:17:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl3ct-00000000FPg-2uS5
	for linux-phy@lists.infradead.org;
	Thu, 20 Feb 2025 10:17:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E70435C581C;
	Thu, 20 Feb 2025 10:17:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D387C4CED1;
	Thu, 20 Feb 2025 10:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740046670;
	bh=jkjLMwlq7z/a7rNHFun0f7wbSTUHNvkofg4WYYRHwHA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XMTo2SajVS+RAzuwMNv21Gc3CE74kqNMrgwVPSd2T5vdbRhzgNmsOTa83rZcK2BCY
	 fS/j9C9TZQHnLR2bmzP5am1G/zLuKLomhC2NKfXGOGVuXYoisyGwtv8l1RQU1wdfxZ
	 ACc2PS4NQt67Zir2d9dihWR7pbfBv8srkPAQ57tbvLlSToj+7Eqvt/HvKuJVwRQN5o
	 tOPg00ezB7GQYe/P+sINgM4SFHbCZkT/H2ASBf9FFeM6EqxosOPAbfyYCzUrKQxiLc
	 ldKQtVAjbG7IjnvlV/oq+1S9CavyaVkT8UPWNWiALbAb+RqodmtwiLZ6hh1r5nvziU
	 JooH6gi7E5ZvA==
Date: Thu, 20 Feb 2025 10:17:42 +0000
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
Message-ID: <20250220101742.GR1615191@kernel.org>
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
 <20250210-gpio-set-array-helper-v3-5-d6a673674da8@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250210-gpio-set-array-helper-v3-5-d6a673674da8@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_021751_899933_AF2875D3 
X-CRM114-Status: GOOD (  20.70  )
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

T24gTW9uLCBGZWIgMTAsIDIwMjUgYXQgMDQ6MzM6MzFQTSAtMDYwMCwgRGF2aWQgTGVjaG5lciB3
cm90ZToKPiBVc2UgYml0bWFwX2dldF92YWx1ZTgoKSBpbnN0ZWFkIG9mIGFjY2Vzc2luZyB0aGUg
Yml0bWFwIGRpcmVjdGx5Lgo+IAo+IEFjY2Vzc2luZyB0aGUgYml0bWFwIGRpcmVjdGx5IGlzIG5v
dCBjb25zaWRlcmVkIGdvb2QgcHJhY3RpY2UuIFdlIG5vdwo+IGhhdmUgYSBoZWxwZXIgZnVuY3Rp
b24gdGhhdCBjYW4gYmUgdXNlZCBpbnN0ZWFkLCBzbyBsZXQncyB1c2UgaXQuCj4gCj4gU3VnZ2Vz
dGVkLWJ5OiBBbmR5IFNoZXZjaGVua28gPGFuZHkuc2hldmNoZW5rb0BnbWFpbC5jb20+CnU+IFNp
Z25lZC1vZmYtYnk6IERhdmlkIExlY2huZXIgPGRsZWNobmVyQGJheWxpYnJlLmNvbT4KPiAtLS0K
PiAgZHJpdmVycy9idXMvdHMtbmJ1cy5jIHwgNSArKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2J1
cy90cy1uYnVzLmMgYi9kcml2ZXJzL2J1cy90cy1uYnVzLmMKPiBpbmRleCBiNGM5MzA4Y2FmMDY0
N2EzMjYxMDcxZDk1MjdmZmZjZTc3Nzg0YWYyLi5iZWFjNjdmM2I4MjAzNzdmOGJiMWZjNGY0ZWU3
N2UxNWVlMjQwODM0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvYnVzL3RzLW5idXMuYwo+ICsrKyBi
L2RyaXZlcnMvYnVzL3RzLW5idXMuYwo+IEBAIC0xMCw2ICsxMCw3IEBACj4gICAqIFRTLTQ2MDAg
U29NLgo+ICAgKi8KPiAgCj4gKyNpbmNsdWRlIDxsaW51eC9iaXRtYXAuaD4KPiAgI2luY2x1ZGUg
PGxpbnV4L2JpdG9wcy5oPgo+ICAjaW5jbHVkZSA8bGludXgvZ3Bpby9jb25zdW1lci5oPgo+ICAj
aW5jbHVkZSA8bGludXgva2VybmVsLmg+Cj4gQEAgLTEwNyw3ICsxMDgsNyBAQCBzdGF0aWMgdm9p
ZCB0c19uYnVzX3Jlc2V0X2J1cyhzdHJ1Y3QgdHNfbmJ1cyAqdHNfbmJ1cykKPiAgewo+ICAJREVD
TEFSRV9CSVRNQVAodmFsdWVzLCA4KTsKPiAgCj4gLQl2YWx1ZXNbMF0gPSAwOwo+ICsJYml0bWFw
X3NldF92YWx1ZTgodmFsdWVzLCBieXRlLCAwKTsKCkhpIERhdmlkLAoKYnl0ZSBkb2Vzbid0IGFw
cGVhciB0byBleGlzdCBpbiB0aGUgc2NvcGUgb2YgdGhpcyBmdW5jdGlvbi4KCkkgdHJpZWQgdGhp
czoKCgliaXRtYXBfc2V0X3ZhbHVlOCh2YWx1ZXMsIDAsIDgpOwoKQnV0IHdoZW4gY29tcGlsaW5n
IHdpdGggR0NDIDE0LjIuMCBJIHNlZSB3YXJuaW5ncyB0aGF0IHZhbHVlcwppcyB1c2VkIHVuaW5p
dGlhbGlzZWQgLSBiaXRtYXBfc2V0X3ZhbHVlOCgpIGFwcGVhcnMgdG8gcmVseSBvbgppdCBiZWlu
ZyBzby4KCiAgQ0MgICAgICBkcml2ZXJzL2J1cy90cy1uYnVzLm8KSW4gZmlsZSBpbmNsdWRlZCBm
cm9tIGRyaXZlcnMvYnVzL3RzLW5idXMuYzoxMzoKSW4gZnVuY3Rpb24g4oCYYml0bWFwX3dyaXRl
4oCZLAogICAgaW5saW5lZCBmcm9tIOKAmHRzX25idXNfcmVzZXRfYnVz4oCZIGF0IGRyaXZlcnMv
YnVzL3RzLW5idXMuYzoxMTE6MjoKLi9pbmNsdWRlL2xpbnV4L2JpdG1hcC5oOjgxODoxMjogZXJy
b3I6IOKAmHZhbHVlc+KAmSBpcyB1c2VkIHVuaW5pdGlhbGl6ZWQgWy1XZXJyb3I9dW5pbml0aWFs
aXplZF0KICA4MTggfCAgICAgICAgIG1hcFtpbmRleF0gJj0gKGZpdCA/ICh+KG1hc2sgPDwgb2Zm
c2V0KSkgOiB+QklUTUFQX0ZJUlNUX1dPUkRfTUFTSyhzdGFydCkpOwogICAgICB8ICAgICAgICAg
fn5+Xn5+fn5+fgpJbiBmaWxlIGluY2x1ZGVkIGZyb20gLi9pbmNsdWRlL2xpbnV4L2thc2FuLWNo
ZWNrcy5oOjUsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvYXNtLWdlbmVyaWMvcndv
bmNlLmg6MjYsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2FyY2gveDg2L2luY2x1ZGUvZ2VuZXJh
dGVkL2FzbS9yd29uY2UuaDoxLAogICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4
L2NvbXBpbGVyLmg6MzQ0LAogICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2J1
aWxkX2J1Zy5oOjUsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvYml0cy5o
OjIyLAogICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2JpdG9wcy5oOjYsCiAg
ICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvYml0bWFwLmg6ODoKZHJpdmVycy9i
dXMvdHMtbmJ1cy5jOiBJbiBmdW5jdGlvbiDigJh0c19uYnVzX3Jlc2V0X2J1c+KAmToKZHJpdmVy
cy9idXMvdHMtbmJ1cy5jOjEwOToyNDogbm90ZTog4oCYdmFsdWVz4oCZIGRlY2xhcmVkIGhlcmUK
ICAxMDkgfCAgICAgICAgIERFQ0xBUkVfQklUTUFQKHZhbHVlcywgOCk7CiAgICAgIHwgICAgICAg
ICAgICAgICAgICAgICAgICBefn5+fn4KLi9pbmNsdWRlL2xpbnV4L3R5cGVzLmg6MTE6MjM6IG5v
dGU6IGluIGRlZmluaXRpb24gb2YgbWFjcm8g4oCYREVDTEFSRV9CSVRNQVDigJkKICAgMTEgfCAg
ICAgICAgIHVuc2lnbmVkIGxvbmcgbmFtZVtCSVRTX1RPX0xPTkdTKGJpdHMpXQogICAgICB8ICAg
ICAgICAgICAgICAgICAgICAgICBefn5+CgoKPiAgCj4gIAlncGlvZF9tdWx0aV9zZXRfdmFsdWVf
Y2Fuc2xlZXAodHNfbmJ1cy0+ZGF0YSwgdmFsdWVzKTsKPiAgCWdwaW9kX3NldF92YWx1ZV9jYW5z
bGVlcCh0c19uYnVzLT5jc24sIDApOwo+IEBAIC0xNTEsNyArMTUyLDcgQEAgc3RhdGljIHZvaWQg
dHNfbmJ1c193cml0ZV9ieXRlKHN0cnVjdCB0c19uYnVzICp0c19uYnVzLCB1OCBieXRlKQo+ICB7
Cj4gIAlERUNMQVJFX0JJVE1BUCh2YWx1ZXMsIDgpOwo+ICAKPiAtCXZhbHVlc1swXSA9IGJ5dGU7
Cj4gKwliaXRtYXBfc2V0X3ZhbHVlOCh2YWx1ZXMsIGJ5dGUsIDgpOwo+ICAKPiAgCWdwaW9kX211
bHRpX3NldF92YWx1ZV9jYW5zbGVlcCh0c19uYnVzLT5kYXRhLCB2YWx1ZXMpOwo+ICB9Cj4gCj4g
LS0gCj4gMi40My4wCj4gCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
