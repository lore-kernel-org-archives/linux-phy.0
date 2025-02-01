Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D1AEC0218A
	for <linux-phy@archiver.kernel.org>; Sat,  1 Feb 2025 15:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZCP18p25SHGqPasVsb0Kzf3k9YcBpYP3qJ50lakvm8Y=; b=i8KhIOgqS01eqS
	wfycLe4RIxof6xkHiFkmY1QwmDZEBlzSHeI+B09EdBAN3VqhprpbFse+/HEs+FXoCnT9JtgGTAVl1
	ov/HI3ZXnjpQANk11IDAtrRoRzWCKrFuBGpUlsh3E33LD7CpEJe63B3cJ98TsFAxpBaYS61qOFwr+
	F/OA3QcYTUMw1TXi4e32M/1lRE+jOfmFUzedetS5Ig+hRjiuP1+k/ImYCtJ1MdU57rYfE8XJotVm9
	JYGnS1fHxAEYzi5Wy5Jw4ecR1EE8697muy7f2IkKkRLntqGjEpVJvKNC0OI0qI/oJP05loguktRFp
	W07wa4wZLKRQ3BGYtwjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1teF95-0000000CmiT-1b1x;
	Sat, 01 Feb 2025 15:10:55 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1teF92-0000000Cmi5-3ac1
	for linux-phy@lists.infradead.org;
	Sat, 01 Feb 2025 15:10:53 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-aaecf50578eso598130066b.2
        for <linux-phy@lists.infradead.org>; Sat, 01 Feb 2025 07:10:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738422647; x=1739027447; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ESxYJN8LO93DuQxER3WQlpFWAbMknpRPqKYoTwe3w58=;
        b=C56hKc/RwefOZylEBMs6EHUI5VUBN2m/vXvFlyZL/cmnvjaPlI9XOxQtLSvTSjpBlx
         FMhFhEPVArX/FxVaWVhd+a0BWMThL7GD1X42Ks10o6dBCsVMxLxjT1Wk/TTofKxRBq4y
         Z4rCvGpEXnxXGYZWYo5kb33qX5XTlAFwMVd5u53toGC5PCmqW7NX9H4fTSHhB48cPnl4
         DksExO91v+ZibJjbrQhSxb2fbBUdmFeptNmi9Jye0XT/1IDGhscDRppkEDoG7A4zKkrw
         T7ixzOBSozuYUWYZQIALD3Ifh5NBX8RlH+zK1sdhXMvHhc/vrC+mTVbP+VKJo4phBQNU
         xloQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738422647; x=1739027447;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ESxYJN8LO93DuQxER3WQlpFWAbMknpRPqKYoTwe3w58=;
        b=uq5wOPpYOsXk4R5luJ/BDQqG3LARJwXzIOQIsVNKdDsUowmAsdwGHfCkYeVZPi7RGn
         DMqVpSGwvqzsOgiAEf+MgwQydhIV3hd1aN2oLvD4eACPqF2oXb+sXB/tGSC0a0zruAwM
         uwGlO4sZEnimscu9TsEKDftrX6j3IeWhPy9xQC7N4mI/ro8vK3bah5Qte7+blDFoCCKc
         tBtg8LPihVHke+hdftezZc4iCvTIsogEdAI2OCh/UWJh97paLoDa1jpB4qye/8RmWb0W
         xQTWntX5pPD4+R5Z5BAyvKCL408AwOEs1tbeWrv96FNxtc7bETgyaaSNE+wap58go/o2
         E6oA==
X-Forwarded-Encrypted: i=1; AJvYcCWcOQ6mgM8N4MAF7Td+AEGM6tKQA0OjMEuaAL0OrMfo3DF+XDt8s1Fi/DrqO/jyOBoTjy3h2OIHQX0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyMS8fvNkaS0j3qt37Xwx89G390VCeMLEouWCfbvJB95aEPL52N
	mYFDEz27lknYpBoIQxbuIxuVJKPxOMpZC9cun6t8UpFYPjcsslDptr8l/NbRdmwoyNmLKvnTEOk
	8ND87ZJTWXWXanhu4OJcCdF+z1AI=
X-Gm-Gg: ASbGncsYkx1mVSALsB/Wh6AS2Z2ET8SlDXcdsqzedRBS0fY1Qy2kcB5aOhpxO5haIMO
	VWW2s/e4IMcBSUlSOZfwo26w8bDFbIBGaDMtasOVtBs+FMJWYjjFdYHsDADoWaxR4J1d7hBky
X-Google-Smtp-Source: AGHT+IHPgrNaOXTa7GqWwitfxkRWBG3TvzNWPR4XUMDvIyq00cafe/hSAsbw9bgwxCrxOiMYuV7eQGbqzKnExEBm6ts=
X-Received: by 2002:a17:907:7296:b0:aa6:73ae:b3b3 with SMTP id
 a640c23a62f3a-ab6cfd10a18mr1638424866b.32.1738422646569; Sat, 01 Feb 2025
 07:10:46 -0800 (PST)
MIME-Version: 1.0
References: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com> <CAMRc=MdwQL8dWU5zF5fp+KUbC2RA2Q264by8HGXMg2k1rxhsTA@mail.gmail.com>
In-Reply-To: <CAMRc=MdwQL8dWU5zF5fp+KUbC2RA2Q264by8HGXMg2k1rxhsTA@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 1 Feb 2025 17:10:10 +0200
X-Gm-Features: AWEUYZkrnYfcY0HPvRPT8411yweedOSpoNuc0S9BpdhPvgLvzrOaZ1BtCHgoJXY
Message-ID: <CAHp75VdjLWsQJ6CFGdSSEHR=e53h60LGfBcS0mYjeMjzUJuKJQ@mail.gmail.com>
Subject: Re: [PATCH 00/13] gpiolib: add gpiods_set_array_value_cansleep
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: David Lechner <dlechner@baylibre.com>, linux-gpio@vger.kernel.org, 
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
X-CRM114-CacheID: sfid-20250201_071052_905438_E1C058B1 
X-CRM114-Status: GOOD (  24.47  )
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

T24gU2F0LCBGZWIgMSwgMjAyNSBhdCAxMjozNuKAr1BNIEJhcnRvc3ogR29sYXN6ZXdza2kgPGJy
Z2xAYmdkZXYucGw+IHdyb3RlOgo+Cj4gT24gRnJpLCAzMSBKYW4gMjAyNSAyMToyNDo0MCArMDEw
MCwgRGF2aWQgTGVjaG5lciA8ZGxlY2huZXJAYmF5bGlicmUuY29tPiBzYWlkOgo+ID4gVGhpcyBz
ZXJpZXMgd2FzIGluc3BpcmVkIGJ5IHNvbWUgbWlub3IgYW5ub3lhbmNlIEkgaGF2ZSBleHBlcmll
bmNlZCBhCj4gPiBmZXcgdGltZXMgaW4gcmVjZW50IHJldmlld3MuCj4gPgo+ID4gQ2FsbGluZyBn
cGlvZF9zZXRfYXJyYXlfdmFsdWVfY2Fuc2xlZXAoKSBjYW4gYmUgcXVpdGUgdmVyYm9zZSBkdWUg
dG8KPiA+IGhhdmluZyBzbyBtYW55IHBhcmFtZXRlcnMuIEluIG1vc3QgY2FzZXMsIHdlIGFscmVh
ZHkgaGF2ZSBhIHN0cnVjdAo+ID4gZ3Bpb19kZXNjcyB0aGF0IGNvbnRhaW5zIHRoZSBmaXJzdCAz
IHBhcmFtZXRlcnMgc28gd2UgZW5kIHVwIHdpdGggMyAob3IKPiA+IG9mdGVuIGV2ZW4gNikgcG9p
bnRlciBpbmRpcmVjdGlvbnMgYXQgZWFjaCBjYWxsIHNpdGUuIEFsc28sIHBlb3BsZSBoYXZlCj4g
PiBhIHRlbmRlbmN5IHRvIHdhbnQgdG8gaGFyZC1jb2RlIHRoZSBmaXJzdCBhcmd1bWVudCBpbnN0
ZWFkIG9mIHVzaW5nCj4gPiBzdHJ1Y3QgZ3Bpb19kZXNjcy5uZGVzY3MsIG9mdGVuIHdpdGhvdXQg
Y2hlY2tpbmcgdGhhdCBuZGVzY3MgPj0gdGhlCj4gPiBoYXJkLWNvZGVkIHZhbHVlLgo+ID4KPiA+
IFNvIEknbSBwcm9wb3NpbmcgdGhhdCB3ZSBhZGQgYSBncGlvZHNfc2V0X2FycmF5X3ZhbHVlX2Nh
bnNsZWVwKCkKPiA+IGZ1bmN0aW9uIHRoYXQgaXMgYSB3cmFwcGVyIGFyb3VuZCBncGlvZF9zZXRf
YXJyYXlfdmFsdWVfY2Fuc2xlZXAoKQo+ID4gdGhhdCBoYXMgc3RydWN0IGdwaW9fZGVzY3MgYXMg
dGhlIGZpcnN0IHBhcmFtZXRlciB0byBtYWtlIGl0IGEgYml0Cj4gPiBlYXNpZXIgdG8gcmVhZCB0
aGUgY29kZSBhbmQgYXZvaWQgdGhlIGhhcmQtY29kaW5nIHRlbXB0YXRpb24uCj4gPgo+ID4gSSd2
ZSBqdXN0IGRvbmUgZ3Bpb2RzX3NldF9hcnJheV92YWx1ZV9jYW5zbGVlcCgpIGZvciBub3cgc2lu
Y2UgdGhlcmUKPiA+IHdlcmUgb3ZlciAxMCBjYWxsZXJzIG9mIHRoaXMgb25lLiBUaGVyZSBhcmVu
J3QgYXMgbWFueSBjYWxsZXJzIG9mCj4gPiB0aGUgZ2V0IGFuZCBhdG9taWMgdmFyaWFudHMsIGJ1
dCB3ZSBjYW4gYWRkIHRob3NlIHRvbyBpZiB0aGlzIHNlZW1zCj4gPiBsaWtlIGEgdXNlZnVsIHRo
aW5nIHRvIGRvLgoKPiBUaGlzIGxvb2tzIGdvb2QgdG8gbWUgZXhjZXB0IGZvciBvbmUgdGhpbmc6
IHRoZSBmdW5jdGlvbiBwcmVmaXguIEkgd291bGQKPiByZWFsbHkgYXBwcmVjaWF0ZSBpdCBpZiB3
ZSBjb3VsZCBzdGF5IHdpdGhpbiB0aGUgZXhpc3RpbmcgZ3Bpb2RfIG5hbWVzcGFjZSBhbmQKPiBu
b3QgYWRkIGEgbmV3IG9uZSBpbiB0aGUgZm9ybSBvZiBncGlvZHNfLgo+Cj4gTWF5YmU6IGdwaW9k
X211bHRpcGxlX3NldF8gb3IgZ3Bpb2RfY29sbGVjdGVkX3NldC4uLj8KCisxIGhlcmUsIGkuZS4g
SSBsaWtlIHRoZSBpZGVhLCBidXQgdGhlIG5hbWluZyBuZWVkcyB0byBiZSBhbWVuZGVkLgoKLS0g
CldpdGggQmVzdCBSZWdhcmRzLApBbmR5IFNoZXZjaGVua28KCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
