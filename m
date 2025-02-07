Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1C60C0219C
	for <linux-phy@archiver.kernel.org>; Fri,  7 Feb 2025 15:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F3RKKBBCXyglnqMOf3Cu9g+DRUAGTYP2n0MEPeSCSKg=; b=wXaKpwodWL2Tz3
	ZCisOx3QaHlVnsf6oYwUgVefpYyUUbB3H9X8gMXb9Bgsr5QOMU5wP4fEsWLQ4cPuyF+mhamXhIx40
	2xqnrgn7qQnov3zeVawgOhyNQYHU9i2YREdNzE/1y93Xq58A66LRuIdyKopyZ357iGqCszP066qGa
	R2CDhZZAck4DzL1mVBRk5uO7OC4NrPPbPJJW83ac42nPinciNN2E0ZT3urF2DkKdLPMmORtzi+YvI
	c5+WgXlCODGp/UuM28OU5Zd4GkSD8ul3wSK16WQKKSio81TEK+cS3aPAbQm7gQA4XfD9XJhVXp1ji
	oZNNfQFhwJRTDoCIpd5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgQQs-0000000A6i5-1S3a;
	Fri, 07 Feb 2025 15:38:18 +0000
Received: from mail-oa1-x33.google.com ([2001:4860:4864:20::33])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgQCJ-0000000A3CG-3DCN
	for linux-phy@lists.infradead.org;
	Fri, 07 Feb 2025 15:23:17 +0000
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-2a88c7fabdeso1209616fac.1
        for <linux-phy@lists.infradead.org>; Fri, 07 Feb 2025 07:23:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738941795; x=1739546595; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pKN8sjRb3wgYxS8vD82nCdPhJYpZegmXytH3ZuvLDaU=;
        b=uFk577YUZ1a1mUWA2RI+PZQ/4dvyQN8Um7wBe7V6o65aJ03JaqIFCoBMw4L2t0Z1gc
         j+CZw5Zuo8M7RwJxQiOdMdAebx3b5FhfwV27AHRoca3IHaCVK2kTc108LEtBmXYxYX3C
         V8SZl5tP4ZXO3f6bSiDVwjSRYJI34dzYyPsqZwnqXfEkdjX83QdJQS/SQZoqAzYhudN8
         p8kod87vuFlK2nIvW+fcEgEReoI5+CJfCb0/cKuqAmWrLwI3t7Fvm2+Gb2WC4a+pP0Qi
         ZYqlgt/B7gu3dsZqLWTmcZ7+U7Wa24AfQZbOZ264dyIiXUp4U+WeTq5iXSDD+8SoPVd4
         NQxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738941795; x=1739546595;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pKN8sjRb3wgYxS8vD82nCdPhJYpZegmXytH3ZuvLDaU=;
        b=oYjMuQ5YeG2ClMXHpFwXvLfGgEZgVE4g48Q/YcJIh0HNzrvNdWiyGI2/7YX8UUwdoO
         hn86E8d1vOKKjpR5YvIoFeTYl0u/416N7Sy3nYpuoIiXnJ764DhY63J5rJr7uZ0uBLvG
         r8h0DaOWwTVUlBV24Xy+jEiZoTQbdnWSI9Cn+TP+vtQCxwkKERBS1RxCSgHofDAEP9sv
         CDDgeN79ORBs0gTSBtiNFzypmL7JwABBUw0sfJmVyelkntSnOBDq75nCvXb08T+SY7nR
         b8c7OXBYmYrqX/+V+T9Nv2U55bVwDIPWwHx5ab7t6wfNvn7A0M7GMiqR+iiOg+vNjRsl
         VVmw==
X-Forwarded-Encrypted: i=1; AJvYcCVCEFA/2DQouXlEYtznx5LWXWyU5tbtJffJnl/aNOgS/G/8HslmWqs8bWL//OvDhVFmrzJpL9a3meY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyDSAudiNwObp86uJgyL7WjP/CUk3zW0eFjpPIHOiKvecWlcAbT
	Y+2B/6PhvZBnr4/R7dfGauBGa338Mw8mtQgEJgfE8+HAJsm8Dd7xOCgB+QEDwvE=
X-Gm-Gg: ASbGncvTXsNvxr//kMgxgbko6JPe1Xzup2xsTzn1Jr88Ihs0v5FKVhpsJw0j3JwluPm
	ehP4dOxxuMsjPYKJA4YBnnc8rC0zt2gSkLdm1kQnY7IRVPPTON67KQ3tDi2051kAd5HetqrOGjE
	4OAoPcdZI+SNoxUhzumhnSI28FLCaz0cfGCNjJs5BMkuep2w6VtwslJtFwbGtTm0CyPAnD8CBah
	H82lKrE7VdjUHsOm+hsZfuOrfqlwP+p8WtDGwe8QUetb4VSQlpIaTebwAvRUJRtXgpXV3A/b15s
	VAHtiTg26m+Brz6Rl96yxF8WPasNu6s9N4Yk9STss7etiJKay4Zt
X-Google-Smtp-Source: AGHT+IEEGiDMzanhY46VT0zPfUJ5PNu5OgiAyh3A5rsLRVIHkXKzWkfKjdhXcmoVPsTyGbzMvvecNA==
X-Received: by 2002:a05:6870:169d:b0:29e:4340:b1b with SMTP id 586e51a60fabf-2b83ed06682mr2385084fac.9.1738941794664;
        Fri, 07 Feb 2025 07:23:14 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b826261c16sm829675fac.40.2025.02.07.07.23.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 07:23:13 -0800 (PST)
Message-ID: <945b338c-8fe1-4082-a20f-57f8152e8f80@baylibre.com>
Date: Fri, 7 Feb 2025 09:23:11 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/13] gpio: max3191x: use
 gpiod_multi_set_value_cansleep
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Peter Rosin <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King
 <linux@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-mmc@vger.kernel.org, netdev@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-sound@vger.kernel.org
References: <20250206-gpio-set-array-helper-v2-0-1c5f048f79c3@baylibre.com>
 <20250206-gpio-set-array-helper-v2-5-1c5f048f79c3@baylibre.com>
 <CAHp75VcNJzPH8to1Y6NzPMXnH48Ve4LJ7oid7_wEHtwhO82Fmw@mail.gmail.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <CAHp75VcNJzPH8to1Y6NzPMXnH48Ve4LJ7oid7_wEHtwhO82Fmw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_072316_056586_A5A3938F 
X-CRM114-Status: GOOD (  13.83  )
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

T24gMi83LzI1IDQ6MzQgQU0sIEFuZHkgU2hldmNoZW5rbyB3cm90ZToKPiBPbiBGcmksIEZlYiA3
LCAyMDI1IGF0IDEyOjQ44oCvQU0gRGF2aWQgTGVjaG5lciA8ZGxlY2huZXJAYmF5bGlicmUuY29t
PiB3cm90ZToKPj4KPj4gUmVkdWNlIHZlcmJvc2l0eSBieSB1c2luZyBncGlvZF9tdWx0aV9zZXRf
dmFsdWVfY2Fuc2xlZXAoKSBpbnN0ZWFkIG9mCj4+IGdwaW9kX3NldF9hcnJheV92YWx1ZV9jYW5z
bGVlcCgpLgo+IAo+IEl0IHNlZW1zIHlvdSBtaXNzZWQgbXkgY29tbWVudC4KClllcywgSSBtdXN0
IGhhdmUgYmVlbiBzbGVlcGluZyBvbiB0aGUgam9iLiA6LS8KCj4gCj4+ICtzdGF0aWMgdm9pZCBn
cGlvZF9zZXRfYXJyYXlfc2luZ2xlX3ZhbHVlX2NhbnNsZWVwKHN0cnVjdCBncGlvX2Rlc2NzICpk
ZXNjcywKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBpbnQgdmFsdWUpCj4gCj4gVGhpcyBpcyBub3QgZ29vZCBuYW1lc3BhY2luZy4gQ2FuIHdlIGNo
YW5nZSB0aGlzIHdoaWxlIGF0IGl0PwoKc3VyZQoKPiAKPiBtYXgzMTkxeF8uLi4KPiAKPiAoSSB3
b3VsZCBnbyB3aXRoIG1heDMxOTF4X3NldF9tb2Rlc2VsX3BpbnMoKSB0byBtYWtlIGl0IHNob3J0
ZXIuIEkKPiBoYXZlIG5vIGNsdWUgd2h5IHRoZSBmdW5jdGlvbiByZXBlYXRzIHNvIG11Y2ggZnJv
bSBncGlvZCBBUEkgbmFtaW5nLgo+IElzIHRoZXJlIGFueXRoaW5nIGVsc2Ugd2hpY2ggaXMgbmFt
ZWQgaW4gYSBzaW1pbGFyIHdheT8gUGVyaGFwcyBmaXggaXQKPiBieSBhIHNlcGFyYXRlIHBhdGNo
PykKPiAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
