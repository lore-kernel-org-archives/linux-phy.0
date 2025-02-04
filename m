Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36B24C0218F
	for <linux-phy@archiver.kernel.org>; Tue,  4 Feb 2025 08:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q8kcwda5nTmy49uF8nuaJKOjx6TAFVi+BWp35eOteYo=; b=YXHaPA38X2mIGe
	oesh989XXB9I64UXLQcFSeJj2kJHgAMfRv3WqmaCwkqpC43s2no3ZqT1z8KjffWEZUy/XZjeZhk5u
	glCpoVBd3cQ0eEPnrRwYWWb/QQIyMGcLXuJezF9HyaANDIXW0VHjn8B/Oorlor865FkhYS7EDSW2j
	Oxl8BL33JHwOC7du6N9B1/pPBVXLgo47Rbmbg31GJlawPxgkjkON1e1auqcISnPVqAC5vWK9pbH+Q
	/z+qAnXi5BvBMryPYxXdQiDJrDJieUFzcJo5V/Ttx85IK9CUl0E/6ZmmJ8JWAohnyUOiebghXF/wk
	Layhi14Phl3UOn9KMGJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfEj8-0000000HaAx-3P3I;
	Tue, 04 Feb 2025 08:56:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfEfe-0000000HZlq-31v2
	for linux-phy@bombadil.infradead.org;
	Tue, 04 Feb 2025 08:52:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=HutRJSMeJRnt/VeA6fBVfyfIzPoRWNej7hPpS/LJnd8=; b=Hjk7SEBw209ULI70Z6ZCyv0i0P
	5cW6aCx9xT60/dqeYPzF/T9qKeGjOCQFk8lq6XL60pK8l3otNq5Y0hBTWrjqtd/VJSTp4KlTD4sJS
	Mg1UInMLnMrWN5sDjG9aT6tv/A3ENahoQMXzaVxB3PAXHQmRVHYp9tkrU06pG6jYP30H8grwab9HX
	/R2N1xc1WhyPwPXu5OtRuJHIuypaYvMX2/Cg6oPE9yV/FETrN2tbv2SEJApvqPCxCTKaPZXMjC+jM
	du0/g6x7LZZfD84X3G3Mkt8uwH2A+d9v9Xfv9vcu+/Fo5q77qFrs+HNB/AT/DD4ZaWfIOgppbVwDJ
	aBu+vdfw==;
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfEfb-0000000GHDx-0L6n
	for linux-phy@lists.infradead.org;
	Tue, 04 Feb 2025 08:52:37 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-303548a9361so39282491fa.0
        for <linux-phy@lists.infradead.org>; Tue, 04 Feb 2025 00:52:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1738659152; x=1739263952; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HutRJSMeJRnt/VeA6fBVfyfIzPoRWNej7hPpS/LJnd8=;
        b=GV2tnCvocZQ3PoPBf9ge0yFRuVFxFVVlGKPw+ZKpfqFDpxq5eZeKn1HivS9kItiIjQ
         MpsvEgnjEK6ssMLdcfVAv6D9SGOsO086WrwmOytt7jI9+DjVDUvx+ippEsHJG/9bFSDD
         l5GjHasGZCW1jb/2qEU+GzqUuGgWvSyJrOq5WHIEtJTIlFRkngPPzDSH2KC4+NJzZMlw
         6jsLO/LcKOBdw41gVcvPWI9K75V/0DrjN5D/cXm1wV/2Cp8YKmLxVcGvMKq9ctL/fM1n
         BCpPBQyKTtd+Fd+8rGjwaW2L/YOKsHZcPxlJcIcO3yWfwlvKDlisYJE2oUKGEPjVmGVH
         9ERw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738659152; x=1739263952;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HutRJSMeJRnt/VeA6fBVfyfIzPoRWNej7hPpS/LJnd8=;
        b=QIbAgI1vUWrMazUNDQOZhffS/wSdzKl6wYKGDZBlALUhCkcvfXq7BoRmDWnXlJ2EQK
         gPWnosMEszHlYuzC7o/1eJR5j/MzQ5UIrcfWzTTIQPgburWkyYexBHIegQV8lwq06ZBw
         rrKIYMfjdqoQFy8EvOycplULDuwCx/HmPn+PAgFUNSSPs7vKKMa0L51EJG9EwEwNwRMk
         7/0tAyVOfLCl6iQbOkYc+9LX1tdjQPeIm5gbHZwVz+a3BBYXV5CrNJwtzVQL6yChBUjD
         QcThvwOG4QCdgKT7n9n6iEwh0uGfM75YOPM+XFgfwebeiwCG5171XVVsigiljCTFHdPG
         FHAQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9cfb6a+KzVDK0Q5PyIzbNUsV6wF4vS+JRreXU+Gh6pznl/ep+BJMTtBHYzM/Qlp/o/c/J+Q4omo0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx32eURAgUoZsqtEiCfO2SVRYMBYRKBRC84EAP9n7nWYIQy5uWW
	2dSC1F8aKUVZ8lNrVz79YFfBQgbeL5wz+zf9qJZhj2DOmS3MEcNcdyutHJuNSafIYpxPbTW8eDC
	aDUCFA61222Eg5Fbd307qFOyzoYQ4iKDynOL/1Q==
X-Gm-Gg: ASbGnctRP3ZOkDoTDV8gNBQKdOcRaGuHTEt0Upz4gnoDA2aIv/bH2MqUq+U54e+MDYf
	qEs3FYWCHIMPyoKmtp/NbjDuq+ZpGzmhrHrXo56MBdyOppq03a8PhZggc5MiiQX3vnFtUiJWlb0
	tFEWdmbSdaybWEg2I+Ps7RsOYAq9ht
X-Google-Smtp-Source: AGHT+IF3lsa7S5YwWpfcQVRJJ5PSQIykvInkMIj9GBvAH9xqe0CZdk0yaxGhiayetNv5EouQr4rP2NIVzzgLrFTtrHU=
X-Received: by 2002:a2e:a90d:0:b0:300:15d9:c625 with SMTP id
 38308e7fff4ca-3079684af3emr90981231fa.14.1738659151822; Tue, 04 Feb 2025
 00:52:31 -0800 (PST)
MIME-Version: 1.0
References: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com>
 <CAMRc=MdwQL8dWU5zF5fp+KUbC2RA2Q264by8HGXMg2k1rxhsTA@mail.gmail.com>
 <9931433b-5cde-4819-ac96-eea4f1f0f1f2@baylibre.com> <CAMRc=McEdcDs01BAKN5vg9POg_xxJBY1k8bfgiDN60C1-e_jow@mail.gmail.com>
 <072be5a9-e0fb-4073-85b3-4a8efcafae09@baylibre.com> <CAMRc=Meq_Gfhcjzx0vCL0JPzfnOcijFgB6AuqtsqgGn1eOTMVg@mail.gmail.com>
 <CAHp75Ve+iwrm8dx49+6C7xFJgTQrh3XumKVzKvnYY=00J-j43A@mail.gmail.com> <b1c35782-f717-4fe5-8a00-7f13b341b5dd@baylibre.com>
In-Reply-To: <b1c35782-f717-4fe5-8a00-7f13b341b5dd@baylibre.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 4 Feb 2025 09:52:20 +0100
X-Gm-Features: AWEUYZkoSkw9yp224bcw4kgu34MNb3lBM2F-Kpo3dstTt1XbKUZR_n5bPczpQE0
Message-ID: <CAMRc=MdzeY7p8O2ovJ-Z9u-KzqfeEG7BxRvKHBHPrsFYDFAryA@mail.gmail.com>
Subject: Re: [PATCH 00/13] gpiolib: add gpiods_set_array_value_cansleep
To: David Lechner <dlechner@baylibre.com>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-mmc@vger.kernel.org, netdev@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-sound@vger.kernel.org, 
	Linus Walleij <linus.walleij@linaro.org>, Andy Shevchenko <andy@kernel.org>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Peter Rosin <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250204_085235_465965_C525CB60 
X-CRM114-Status: GOOD (  19.18  )
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

T24gTW9uLCBGZWIgMywgMjAyNSBhdCAxMTozOeKAr1BNIERhdmlkIExlY2huZXIgPGRsZWNobmVy
QGJheWxpYnJlLmNvbT4gd3JvdGU6Cj4KPiBPbiAyLzEvMjUgMTo0NyBQTSwgQW5keSBTaGV2Y2hl
bmtvIHdyb3RlOgo+ID4gT24gU2F0LCBGZWIgMSwgMjAyNSBhdCA2OjIy4oCvUE0gQmFydG9zeiBH
b2xhc3pld3NraSA8YnJnbEBiZ2Rldi5wbD4gd3JvdGU6Cj4gPj4gT24gU2F0LCBGZWIgMSwgMjAy
NSBhdCA1OjE34oCvUE0gRGF2aWQgTGVjaG5lciA8ZGxlY2huZXJAYmF5bGlicmUuY29tPiB3cm90
ZToKPiA+Pj4gT24gMi8xLzI1IDEwOjE0IEFNLCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+
ID4+Pj4gT24gU2F0LCBGZWIgMSwgMjAyNSBhdCA1OjA54oCvUE0gRGF2aWQgTGVjaG5lciA8ZGxl
Y2huZXJAYmF5bGlicmUuY29tPiB3cm90ZToKPiA+Pj4+PiBPbiAyLzEvMjUgNDozNiBBTSwgQmFy
dG9zeiBHb2xhc3pld3NraSB3cm90ZToKPiA+Cj4gPiAuLi4KPiA+Cj4gPj4+Pj4+IFRoaXMgbG9v
a3MgZ29vZCB0byBtZSBleGNlcHQgZm9yIG9uZSB0aGluZzogdGhlIGZ1bmN0aW9uIHByZWZpeC4g
SSB3b3VsZAo+ID4+Pj4+PiByZWFsbHkgYXBwcmVjaWF0ZSBpdCBpZiB3ZSBjb3VsZCBzdGF5IHdp
dGhpbiB0aGUgZXhpc3RpbmcgZ3Bpb2RfIG5hbWVzcGFjZSBhbmQKPiA+Pj4+Pj4gbm90IGFkZCBh
IG5ldyBvbmUgaW4gdGhlIGZvcm0gb2YgZ3Bpb2RzXy4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gTWF5YmU6
IGdwaW9kX211bHRpcGxlX3NldF8gb3IgZ3Bpb2RfY29sbGVjdGVkX3NldC4uLj8KPiA+Pj4+Pgo+
ID4+Pj4+IEkgd2FzIHdhaXRpbmcgZm9yIHNvbWVvbmUgdG8gY29tcGxhaW4gYWJvdXQgdGhlIG5h
bWluZy4gOy0pCj4gPj4+Pj4KPiA+Pj4+PiBJIHdhcyBnb2luZyBmb3IgYXMgc2hvcnQgYXMgcG9z
c2libGUsIGJ1dCBPSywgdGhlIG1vc3Qgb2J2aW91cyBwcmVmaXggdG8gbWUKPiA+Pj4+PiB3b3Vs
ZCBiZSBgZ3Bpb19kZXNjc18uLi5gICh0byBtYXRjaCB0aGUgZmlyc3QgcGFyYW1ldGVyKS4gQW55
IG9iamVjdGlvbnMgdG8KPiA+Pj4+PiB0aGF0Pwo+ID4+Pj4KPiA+Pj4+IFllcywgb2JqZWN0aW9u
ISBBcyBmYXIgYXMgYW55IGV4cG9ydGVkIGludGVyZmFjZXMgZ286IGluIG15IGJvb2sKPiA+Pj4+
ICJncGlvXyIgaXMgdGhlIHByZWZpeCBmb3IgbGVnYWN5IHN5bWJvbHMgd2Ugd2FudCB0byBnbyBh
d2F5IGFuZAo+ID4+Pj4gImdwaW9kXyIgaXMgdGhlIHByZWZpeCBmb3IgY3VycmVudCwgZGVzY3Jp
cHRvci1iYXNlZCBBUEkuIEFueXRoaW5nCj4gPj4+PiBlbHNlIGlzIGEgbm8tZ28uIEkgcHJlZmVy
IGEgbG9uZ2VyIG5hbWUgdGhhdCBzdGFydHMgd2l0aCBncGlvZF8gb3Zlcgo+ID4+Pj4gYW55dGhp
bmcgdGhhdCdzIHNob3J0ZXIgYnV0IGRvZXNuJ3QuCj4gPj4+Cj4gPj4+IE9vcHMsIHRoYXQgd2Fz
IGEgdHlwby4gSSBtZWFudCB0byB3cml0ZSBncGlvZF9kZXNjc18uCj4gPj4KPiA+PiBFaC4uLiB0
aGUgRCBpbiBncGlvRCBhbHJlYWR5IHN0YW5kcyBmb3IgIkdQSU8gRGVzY3JpcHRvciIgYnV0IGlm
Cj4gPj4gdGhlcmUncyBubyBiZXR0ZXIgb3B0aW9uIGluIHlvdXIgb3BpbmlvbiB0aGFuIEkgZ3Vl
c3MgSSBjYW4gbGl2ZSB3aXRoCj4gPj4gdGhhdC4KPiA+Cj4gPiBncGlvZF9zZXRfbWFueV92YWx1
ZV9jYW5zbGVlcCgpID8KPiA+Cj4KPiBPSywgdGFraW5nIGFsbCB0aGVzZSBzdWdnZXN0aW9ucyBp
bnRvIGNvbnNpZGVyYXRpb24gYWxvbmcgd2l0aCBoYXZpbmcgcmVjZW50bHkKPiBjb21lIGFjcm9z
cyByZWdtYXBfbXVsdGlfcmVnX3dyaXRlKCksIEkgdGhpbmsgSSdsbCBnbyB3aXRoOgo+Cj4gZ3Bp
b2RfbXVsdGlfc2V0X3ZhbHVlX2NhbnNsZWVwKCkKClNvdW5kcyBnb29kLgoKQmFydAoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
