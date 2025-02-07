Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D893BC02194
	for <linux-phy@archiver.kernel.org>; Fri,  7 Feb 2025 15:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BcnxR/LRkAwdQL7UP3ff0Jdekd+mLgnvlkwwt+OtqLY=; b=TRbZbwUQ5Br/Fv
	mvDiea9nejd+RCx/lglhdo1kguj3v5lAd0xRlKAxzDhxJCEjoM7NF11AEQQ1Nez5bSdSzngkXswH3
	nP+fp93ShbTUPD/zJfQmhDnYh82LHTr/YeLwHn5f+3JNQnSh2UiowLFnwNArLDFOBbLBw67aYfVoD
	sLwK7x6DL4SceSZbe1VcRpRxx9Htk3C4+D7bwaS12ob+0Zc1xMiSkCsZkPfA4wDLg9Svv4marva9E
	e3l38qAuag4dmx7YftizMiezVj+gZ2J3zFQg6Ac6P57oqkO9pt6fhBQuUOXrVVHzWPmNWxwPz5xVA
	VfrmqUrG5OfCxd2ZC6AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgQQs-0000000A6iE-2b06;
	Fri, 07 Feb 2025 15:38:18 +0000
Received: from mail-oo1-xc2a.google.com ([2607:f8b0:4864:20::c2a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgQD2-0000000A3Ob-3K9r
	for linux-phy@lists.infradead.org;
	Fri, 07 Feb 2025 15:24:01 +0000
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-5f2e370bb3aso654961eaf.0
        for <linux-phy@lists.infradead.org>; Fri, 07 Feb 2025 07:24:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738941840; x=1739546640; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Uxr/gLgLMBNgytGiMYTlRHUYI9qRODMAWATD12wZy7U=;
        b=oQduuSubhe22fNU0WcEN+LpCJlqRI9JwpWZBqzrnWDTe4qsc17F1jxbRnWeKxuefJF
         pyd6cvw3QiEnmGzXopmCh4kp89RpWdaLWbPhWWS1ZcQx16afApEFgdeOv6X2Ff1swsiC
         ZC3fxqaWMI6Z2Sa1wNFAvzbcwAi9sW9yyTtDr2CG0IVkWwFNZZU3d0oIUL/LqGeUU4sj
         f8ubH/MiULVIIMN67j/dviwZfEyPtjjOyx0RiFlyxOUYnzIXvf/JCPpv5vvdAcX3ozHq
         WsQygPkzpWNzGa5bMuoaX23m3X8HDDvvUdUuwQfEXudtFj1Ck43sUh5wDIa2ZTpNQhxj
         sAOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738941840; x=1739546640;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Uxr/gLgLMBNgytGiMYTlRHUYI9qRODMAWATD12wZy7U=;
        b=PU7d3XBHXczAxcVtQ5PvpekdgiWJXl87xN+V1F17RJZdUzDEkTnf9m6lueA6yTxnGX
         itbXh+kROk8Jt2ZnweTVvQWlijggcz9b3P/hTyystlaBQPMM4cSpi4cFBwjJOqmzjY+S
         zuxtzYiheq7+KopMPr5QETNs5Mf80BesUO2UOvor2zTE5sFKr1ltSsFE9fLJmSkbdwgG
         M2Q7iwHkOj4rf5uLXH50mPYOaJl0CZ7T8eKXLJ2ImZCknPmnRxpmTuyzvlQxytxAJwgr
         eIv1uzEO60/lB9I3PngoNM4gOlq0wZF6Jk2r+z3nabgIja6Q0MgdoiTAuKCEfLSH34jV
         +JyA==
X-Forwarded-Encrypted: i=1; AJvYcCWh6lxDyAVMmrVO4JsV4WTABZ4UZtFz11NUdKvmGVz9j0eb483bEmqXcF/2uTKcNvKmxipWbOYfOtI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwKMUuAzmgaZVjniub2KCUihSnfrvhKGLap+efxt65erdJD9br0
	DjMzsRa/wvo/RikGpu2uO+tuKdiOefwJAi3NkWMs3LB/aMp0/w5yh9DOZhEQ2V4=
X-Gm-Gg: ASbGncuaKUzV22t7YoqDp5zB+OKEXIhBwCKTyZuQ581buOO+ANYud+InZU4QVMQv7KD
	5Aa+Y8EmVdIevc26HLwmWGu9LtT/3SRqzZks8oDGR1TCvv6L8sBFF+jIRzasGVN0lXNRgY8c3Ze
	vOQCZa18PBdb4L06WTmh2YHHOsL1cvMfZonyCzDGFzeeqn2FS9fZrvPXSwc5jJZb+Gx8mNHXHK3
	rsYxxR9Qyt9X/TF6GmLl2z6JTn+uhg+vB3YRG3CGnYkz2V9WyS4Ne2zuhGAokVooMpfWDAQT+r4
	AU5fFSdzQzz1rTo9o571UX+6G3W/rjlDnQ96FjgjPdhC376cfRM0
X-Google-Smtp-Source: AGHT+IF71KkvJXcsCE6zlhD6P6zBCyc3Fr6QETt2X0hURimYWWudXZ1vnECtKv4gtVKmBwfLEwmh0Q==
X-Received: by 2002:a05:6820:162a:b0:5f6:765c:d260 with SMTP id 006d021491bc7-5fc5e707990mr2247407eaf.7.1738941839640;
        Fri, 07 Feb 2025 07:23:59 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5fc544b03b4sm781542eaf.3.2025.02.07.07.23.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 07:23:58 -0800 (PST)
Message-ID: <b1459947-18ec-4835-8891-5251d8f8c95e@baylibre.com>
Date: Fri, 7 Feb 2025 09:23:56 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/13] bus: ts-nbus: use gpiod_multi_set_value_cansleep
To: Andy Shevchenko <andy.shevchenko@gmail.com>,
 Yury Norov <yury.norov@gmail.com>
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
 <20250206-gpio-set-array-helper-v2-4-1c5f048f79c3@baylibre.com>
 <CAHp75Vf+3pc84vV-900Ls64hM1M7Ji6Dmy8FPwL=n0=sJFSuVA@mail.gmail.com>
 <CAHp75Vdt5EU83mJrB7Sb_pgRNbhvCQ=F2Lyq7mQLAvV-w6cqEA@mail.gmail.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <CAHp75Vdt5EU83mJrB7Sb_pgRNbhvCQ=F2Lyq7mQLAvV-w6cqEA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_072400_831782_9B1FEB29 
X-CRM114-Status: GOOD (  13.38  )
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

T24gMi83LzI1IDY6MTcgQU0sIEFuZHkgU2hldmNoZW5rbyB3cm90ZToKPiArWXVyeS4KPiAKPiBP
biBGcmksIEZlYiA3LCAyMDI1IGF0IDI6MTXigK9QTSBBbmR5IFNoZXZjaGVua28KPiA8YW5keS5z
aGV2Y2hlbmtvQGdtYWlsLmNvbT4gd3JvdGU6Cj4+IE9uIEZyaSwgRmViIDcsIDIwMjUgYXQgMTI6
NDjigK9BTSBEYXZpZCBMZWNobmVyIDxkbGVjaG5lckBiYXlsaWJyZS5jb20+IHdyb3RlOgo+IAo+
IC4uLgo+IAo+Pj4gIHN0YXRpYyB2b2lkIHRzX25idXNfd3JpdGVfYnl0ZShzdHJ1Y3QgdHNfbmJ1
cyAqdHNfbmJ1cywgdTggYnl0ZSkKPj4+ICB7Cj4+PiAtICAgICAgIHN0cnVjdCBncGlvX2Rlc2Nz
ICpncGlvcyA9IHRzX25idXMtPmRhdGE7Cj4+PiAgICAgICAgIERFQ0xBUkVfQklUTUFQKHZhbHVl
cywgOCk7Cj4+Pgo+Pj4gICAgICAgICB2YWx1ZXNbMF0gPSBieXRlOwo+Pj4KPj4+IC0gICAgICAg
Z3Bpb2Rfc2V0X2FycmF5X3ZhbHVlX2NhbnNsZWVwKDgsIGdwaW9zLT5kZXNjLCBncGlvcy0+aW5m
bywgdmFsdWVzKTsKPj4+ICsgICAgICAgZ3Bpb2RfbXVsdGlfc2V0X3ZhbHVlX2NhbnNsZWVwKHRz
X25idXMtPmRhdGEsIHZhbHVlcyk7Cj4+Cj4+IEFzIEkgc2FpZCBiZWZvcmUsIHRoaXMgaXMgYnVn
Z3kgY29kZSBvbiBCRTY0LiBOZWVkcyB0byBiZSBmaXhlZC4KPiAKPiBPciBpc24ndD8gRG8gd2Ug
aGF2ZSBhIHRlc3QgY2FzZSBpbiBiaXRtYXAgZm9yIHN1Y2ggYSBjYXNlPwo+IAo+Pj4gIH0KPiAK
PiAKCk1heWJlIG5vdCB0aGUgYmVzdCBzdHlsZSwgYnV0IEkgZG9uJ3QgdGhpbmsgaXQgaXMgYnVn
Z3kuIEJpdG1hcHMgYXJlIGFsd2F5cwpoYW5kbGVkIGluIGxvbmctc2l6ZWQgY2h1bmtzIGFuZCBu
b3QgY2FzdCB0byBieXRlcyBzbyBlbmRpYW5uZXNzIGRvZXNuJ3QgYWZmZWN0Cml0LiBJIGRpZG4n
dCBzZWUgYW4gZXhwbGljaXQgdGVzdCwgYnV0IGJpdG1hcF9yZWFkKCkgYW5kIGJpdG1hcF93cml0
ZSgpIHVzZQphcnJheSBhY2Nlc3MgbGlrZSB0aGlzIHNvIGluZGlyZWN0bHkgaXQgaXMgYmVpbmcg
dGVzdGVkLgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
