Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36464C02194
	for <linux-phy@archiver.kernel.org>; Fri,  7 Feb 2025 12:20:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JbjHOa7dIx2ZQKXhrNlmHTV9wAE5d8jj+glXarWIEbU=; b=DUFU3mSN8dGfkW
	dFPDFaFE0NL6nQZ3K5Mrx4eiacNDSug2kmOovkzStsA5NW1GqgKUPgGoaAqI9OM8mTFa2CBYA7E5x
	AYjugRe92KhANq0Ra3hJE63RwhDqGvVHUCQC3EHm6LlbrokPyxbKml/xolRQlRzOjC2RraMd+/Mlk
	kzNMz1BXtv4mFmo5wg5gvFeSb75/XgL8Ypr7krxHeZzR/tlEXsM7e/nD1dzvR+Al1brHPOfIIGX7D
	BFCxYMOlKpM0ehHgN6RrzLU3Sea0tgbP1wUOPl3T6Wq1Q9kB/Oz8WeaLfBzbP63l6zXJOkrtkYUFd
	+/cJFnZWlucxdFh3QMRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgNLr-00000009U9g-43DT;
	Fri, 07 Feb 2025 12:20:55 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgNLq-00000009U9D-1yZE
	for linux-phy@lists.infradead.org;
	Fri, 07 Feb 2025 12:20:55 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-ab2c9b8aecaso360367966b.0
        for <linux-phy@lists.infradead.org>; Fri, 07 Feb 2025 04:20:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738930853; x=1739535653; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a54mOet32eur3UH8ItkoAvMxfKNhEKaOIWBLSYbvLSw=;
        b=RjCh162Udl3fW9tB/f29hpDtjJA2OQbvMz6XJK4Clnl0N/hUGVUZ7kZ0H4iq99u1au
         B8DZjsL3uhgOzE0jNpEFUH+sL8iIlmb2vor9pIQnLodprHJDaP/O3nAs865Hmr+3VAhD
         FfUPBjmB+I1ojzNnW6UGBoPiU27DKAPFromEHtFaZNTktmuq4GQNUiIDKJ/rIAfp1PtU
         D4PtsAIDNn2Sfbri6sCaqobUNthlHLhPbfiLvz+lg1ozoVzCPn2KvW9z0VRzZITbFUxN
         k3GrbQZutvRgfY3ajswlLfQ10eo7Q8wHAqaCDWJ/v0RS1v1MOpvhY7kmUZyLzvP0LX2i
         m30g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738930853; x=1739535653;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a54mOet32eur3UH8ItkoAvMxfKNhEKaOIWBLSYbvLSw=;
        b=BhbSVo4u2DL/MunTW4B/xxlbvVnfj1QQXRIjmEcTuRx+oVri0P9upt/5XqRKmPG57u
         Lr1tE5KtFSqxwPcEP/rkvktK2tV93HUHCXjEqDLr3f9lCH5oMo3ESLpFB16wXW+xmsUs
         nCZOLridkDIijojvCQAetdEYRTfky/qtQOGhW1MVYmqPQzf6pRx0WqkFrYgQJnbA0zOt
         JigsNVlTsr5Uu/3pwAdWTyJUAv5ppkwtKo9e5Z3k3SyFxRSdyqTcn7Vh7gRkoOa7pRIG
         3P/s0lKtHM2Gec0g6OcaGi2WKN3MJHe5xy137aHmTqOf+NaA9QNFk6dtVfdzrFwGMgeB
         GDbQ==
X-Forwarded-Encrypted: i=1; AJvYcCVre2feoNdA/LBawaVjSlVoZ3GV6F2qCswmxs44lVgPiMwvP4hR7vV3q79YiMLtqGYehXfVylw92Uc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzDaI5k6xODxSQiDdpGOGC7s9T/2Eux8L2YQGM0PiRbX15RsGA/
	oPkj99Kp9gDjsdPcoEtL8Fhfo67WFzBNE6/06te4iBS1yBvxdQbdZa5bqulZ9b8Wfn07d092Wih
	eeZvLixQimDf04XpUAuKd88jBLfo=
X-Gm-Gg: ASbGnctLYzmIcIAUET9vJ/pMGcZ+Yahz1tJbgTsRIhcn15sEOgzHUXMD3AO7Ja7feIY
	sMNbGZchicoeqciS3q8zs0+SXYDY5N57TQP0sl121vseUnR/1j38XGBBin0O56p4Kznbhhn/h/F
	k=
X-Google-Smtp-Source: AGHT+IGoiY/D1TiKwL5GXSoLaYBfuEuXQzNiPDbnqOiNifB0jsQGA+mFrH+WWqi6hARBZNpJM2EqqyBf+cDjmszsmSM=
X-Received: by 2002:a17:907:c1b:b0:ab6:36fd:942a with SMTP id
 a640c23a62f3a-ab789c6cedbmr318216966b.50.1738930852678; Fri, 07 Feb 2025
 04:20:52 -0800 (PST)
MIME-Version: 1.0
References: <20250206-gpio-set-array-helper-v2-0-1c5f048f79c3@baylibre.com>
 <CAMRc=Mf9WQjVXvea7tHx0MJG2H8Yqxw=zGqvjp7dfD7+=huDKw@mail.gmail.com> <CAPDyKFoNuXpTEm1rLPvAgib+ugqr7XyETZhfrNr6ypOOKRwjXQ@mail.gmail.com>
In-Reply-To: <CAPDyKFoNuXpTEm1rLPvAgib+ugqr7XyETZhfrNr6ypOOKRwjXQ@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 7 Feb 2025 14:20:16 +0200
X-Gm-Features: AWEUYZlfwIvy7LIm9pIahL5l8siSqdVektaSns5lQfpSrtnfvAL7yjcR2ciezX0
Message-ID: <CAHp75VdmN2wqwwnea0gtTQJ+Y5twQaJp6iEL2esEMCHDi8bvVg@mail.gmail.com>
Subject: Re: [PATCH v2 00/13] gpiolib: add gpiod_multi_set_value_cansleep
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, David Lechner <dlechner@baylibre.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Andy Shevchenko <andy@kernel.org>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Peter Rosin <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-mmc@vger.kernel.org, netdev@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-sound@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_042054_511584_E5C0F58B 
X-CRM114-Status: GOOD (  15.29  )
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

T24gRnJpLCBGZWIgNywgMjAyNSBhdCAxMTo0OOKAr0FNIFVsZiBIYW5zc29uIDx1bGYuaGFuc3Nv
bkBsaW5hcm8ub3JnPiB3cm90ZToKPiBPbiBGcmksIDcgRmViIDIwMjUgYXQgMDg6NDksIEJhcnRv
c3ogR29sYXN6ZXdza2kgPGJyZ2xAYmdkZXYucGw+IHdyb3RlOgo+ID4gT24gVGh1LCBGZWIgNiwg
MjAyNSBhdCAxMTo0OOKAr1BNIERhdmlkIExlY2huZXIgPGRsZWNobmVyQGJheWxpYnJlLmNvbT4g
d3JvdGU6CgouLi4KCj4gPiA+IE1haW50YWluZXJzLCBpZiB5b3UgcHJlZmVyIHRvIGhhdmUgdGhp
cyBnbyB0aHJvdWdoIHRoZSBncGlvIHRyZWUsIHBsZWFzZQo+ID4gPiBnaXZlIHlvdXIgQWNrZWQt
Ynk6LCBvdGhlcndpc2UgSSB3aWxsIHJlc2VuZCB3aGF0IGlzIGxlZnQgYWZ0ZXIgdGhlIG5leHQK
PiA+ID4ga2VybmVsIHJlbGVhc2UuCgo+ID4gSSBjYW4gcHJvdmlkZSBhbiBpbW11dGFibGUgYnJh
bmNoIGZvciB0aGUgZW50aXJlIHNlcmllcyBmb3IgZXZlcnlvbmUKPiA+IHRvIHB1bGwgb3IgSSBj
YW4gYXBwbHkgcGF0Y2ggb25lLCBwcm92aWRlIGFuIGltbXV0YWJsZSBicmFuY2ggYW5kCj4gPiBl
dmVyeSBzdWJzeXN0ZW0gY2FuIHRha2UgdGhlaXIgcmVzcGVjdGl2ZSBwYXRjaGVzLiBXaGF0IGRv
IHlvdSBwcmVmZXI/Cj4KPiBUaGUgY2hhbmdlcyBsb29rIHNtYWxsIGFuZCB0cml2aWFsIHRvIG1l
LiBJIHdvdWxkbid0IG1pbmQgaWYgeW91IHRha2UKPiB0aGVtIGFsbCAoYXQgbGVhc3QgZm9yIG1t
YykuIEFuIGltbXV0YWJsZSBicmFuY2ggd291bGQgYmUgZ29vZCwgaWYgaXQKPiB0dXJucyBvdXQg
dGhhdCB3ZSBuZWVkIHRvIHB1bGwgdGhlbS4KCisxIGhlcmUsIHRoZSBwb3RlbnRpYWwgdXNlciBm
b3IgaW1tdXRhYmxlIGJyYW5jaC90YWcgaXMgSUlPLgpUaGUgcmVzdCBsb29rcyB0cml2aWFsIGFu
ZCB1bmxpa2VseSB0byBoYXZlIGNvbmZsaWN0cy4KCi0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5k
eSBTaGV2Y2hlbmtvCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
