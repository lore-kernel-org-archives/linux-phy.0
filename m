Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E82ABD6ACC0
	for <linux-phy@archiver.kernel.org>; Wed, 27 Nov 2024 12:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e2TsdwSYUGMRgxbbZJWQjHaJYtxux7k9zpkCiH3TMjU=; b=yupZUncfHBN/dz
	vMZkd8iDnMJqqqF6ob+tIAGY+EGH0JvUxzOlR24y7AdQP4HA4KXddnMK6SH7AS29LwrdnfRktjREC
	2znRRdnlG7yWn1jjNDKAkvQDk1psM6CdCaq7LFxzCloATkOqfao784ou+feDD+HF2GyRkWB7s7Bvj
	CQIHahjptPTUN6/f1+/tGuybXCtTKz2uSU+AVqcaR7BAexCA+wnkVHEbD7ZajrTB6GGJ2bYI0RZ5C
	o+o7McBV+qE0Sy+5drvrgeaeg8NtglAUkQSsX121tcBFj6CCkQAK6EyR1JvgMlXg5rtEUXThDbMBJ
	8s9mCicF4oUIc+SQZfOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGGoo-0000000D5gJ-2IdQ;
	Wed, 27 Nov 2024 12:06:54 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGFkO-0000000CvCW-01F9
	for linux-phy@lists.infradead.org;
	Wed, 27 Nov 2024 10:58:18 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-aa5325af6a0so602971666b.2
        for <linux-phy@lists.infradead.org>; Wed, 27 Nov 2024 02:58:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732705094; x=1733309894; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/xK1rXO8tid7sxZflvw8Sl0BR2j7teaHPSp5KtJr+3E=;
        b=MdA9Qf0vLqkvbCo2x+avZcoUtsEA+Sc1PaNAFfzAVeOqJ6c2Jr09j22BY3xijthUVL
         RhCYqVvIudEO7MPClgiABCcVwv8c3+c440PuG4dnC3ujKztpNg6g1YsAm2wjXQ3mfgWA
         RbazqN9p0KNkLEo6S47pdQfCFq/wnijIpb765xabi/QU6IPjBy0hJegss4a3Rn6+24b4
         g5Ex4/mN2cTma0kITdL4RlKG0HfLAXg6PD0agVdpqWFHhZ97DgX3NQ9Kuq40tejPzIAI
         4A4fsq1Xv6OHq3mKU+C3HO84z2Usue+Zo2r10C4QCuNmxpXsn4f22VYXEA6iYKwgvHW7
         4FuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732705094; x=1733309894;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/xK1rXO8tid7sxZflvw8Sl0BR2j7teaHPSp5KtJr+3E=;
        b=QwbjsM8IXMxgWNFl5jj8ZsWRd0AxAg+Upt3HOkhiOfVedye9ZgAYpnqZcX8Up715cS
         wM7MtmIYBtdFuD4SSjOzPSGkiifsYAmUxrrk/7vRuys86I3EeI7SARGyIM8XrOHliLgy
         mD1Pbmh6UMlkJcTooKyh9NynTAPRDh5W6usTf+8b8Jt6zDWUiUX7FYZp61OmygVp9O51
         8seqzUvlgMS6/GFt0R90UcsGvI4bUcgY1kRvv8XOh+uPSTz924UyCezrgcaGo2CSk6Wp
         Vm48ZcSYkI3xiHEbJT7QrJsvGlnBXGgCe4u3HCorTjxqWdrIqchxEiwuOVN1hL6awvvL
         dEPg==
X-Forwarded-Encrypted: i=1; AJvYcCUFXnPKxdT4L2uV0XSLNnG7TvGc7HWDt6gAY1LV8M1wMDZQ63q3WSYpnuUrFDJvaqrl9M+NLpzGTmY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxvHVUR+R2ZcdPTy35t5LWYbMgrqX1oFe3U7iopyJ+qF6YDi+J+
	f4pmRuRpnUQtcmzQTTrEpRhsOa+nsUfwNcScbPA+KJm7C9RFcUNbNtGV91ztVw4=
X-Gm-Gg: ASbGnct3qMyeYvf47Pr0npkyxjrYCdYs2lzyeTQK66/C57alMTMlFioxA611CTTjfii
	FjfIYgLnkeIwXUHS4Y4mLMITcgCgWiiwSPOOoTiBLE2po9gL3g4JikO4N1MgwsQG/Gm/tjSnoQo
	pion6+YndgnBG7McA/lYND9u3F92blOnBXM9kSe9dkofEBC9rF1EM878HFv3xCzw2BNbAR+W0QW
	+pmN3r5kEcGH1ljtVRpr1a+0Z+nmiGBfJVlKORXFEnH+B/BqaLLiet0KiZ50sL8xM88e/ES4pdm
	D3pDznxO2OnunSbxV+i+jqmCrvt9OpJrlg==
X-Google-Smtp-Source: AGHT+IFg+ahvle9uWHq2KZqsvbKtQxnkarL+5juw3kuxAh2lY4VSQel9JXoaUYp7iW98tOctHLx83w==
X-Received: by 2002:a17:906:31c1:b0:aa5:31f5:922a with SMTP id a640c23a62f3a-aa580f1e0d4mr204197766b.19.1732705094209;
        Wed, 27 Nov 2024 02:58:14 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa54a6db906sm412183566b.41.2024.11.27.02.58.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 02:58:13 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 27 Nov 2024 10:58:14 +0000
Subject: [PATCH 4/9] phy: exynos5-usbdrd: convert to dev_err_probe
MIME-Version: 1.0
Message-Id: <20241127-gs101-phy-lanes-orientation-phy-v1-4-1b7fce24960b@linaro.org>
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
In-Reply-To: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_025816_062732_E7D23D91 
X-CRM114-Status: GOOD (  10.64  )
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

ZGV2X2Vycl9wcm9iZSgpIGV4aXN0cyB0byBzaW1wbGlmeSBjb2RlLgoKU2lnbmVkLW9mZi1ieTog
QW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KLS0tCiBkcml2ZXJzL3Bo
eS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jIHwgMjEgKysrKysrKysrLS0tLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jIGIvZHJpdmVy
cy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYwppbmRleCBjNDIxYjQ5NWViMGYuLmNl
YWU0YjQ3Y2VjZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11
c2JkcmQuYworKysgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCkBA
IC0xNzI1LDEwICsxNzI1LDkgQEAgc3RhdGljIGludCBleHlub3M1X3VzYmRyZF9waHlfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAogCXJlZ19wbXUgPSBzeXNjb25fcmVnbWFw
X2xvb2t1cF9ieV9waGFuZGxlKGRldi0+b2Zfbm9kZSwKIAkJCQkJCSAgICJzYW1zdW5nLHBtdS1z
eXNjb24iKTsKLQlpZiAoSVNfRVJSKHJlZ19wbXUpKSB7Ci0JCWRldl9lcnIoZGV2LCAiRmFpbGVk
IHRvIGxvb2t1cCBQTVUgcmVnbWFwXG4iKTsKLQkJcmV0dXJuIFBUUl9FUlIocmVnX3BtdSk7Ci0J
fQorCWlmIChJU19FUlIocmVnX3BtdSkpCisJCXJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgUFRS
X0VSUihyZWdfcG11KSwKKwkJCQkgICAgICJGYWlsZWQgdG8gbG9va3VwIFBNVSByZWdtYXBcbiIp
OwogCiAJLyoKIAkgKiBFeHlub3M1NDIwIFNvQyBoYXMgbXVsdGlwbGUgY2hhbm5lbHMgZm9yIFVT
QiAzLjAgUEhZLCB3aXRoCkBAIC0xNzU5LDEwICsxNzU4LDkgQEAgc3RhdGljIGludCBleHlub3M1
X3VzYmRyZF9waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlmb3IgKGkg
PSAwOyBpIDwgRVhZTk9TNV9EUkRQSFlTX05VTTsgaSsrKSB7CiAJCXN0cnVjdCBwaHkgKnBoeSA9
IGRldm1fcGh5X2NyZWF0ZShkZXYsIE5VTEwsIGRydl9kYXRhLT5waHlfb3BzKTsKIAotCQlpZiAo
SVNfRVJSKHBoeSkpIHsKLQkJCWRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIGNyZWF0ZSB1c2JkcmRf
cGh5IHBoeVxuIik7Ci0JCQlyZXR1cm4gUFRSX0VSUihwaHkpOwotCQl9CisJCWlmIChJU19FUlIo
cGh5KSkKKwkJCXJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgUFRSX0VSUihwaHkpLAorCQkJCQkg
ICAgICJGYWlsZWQgdG8gY3JlYXRlIHVzYmRyZF9waHkgcGh5XG4iKTsKIAogCQlwaHlfZHJkLT5w
aHlzW2ldLnBoeSA9IHBoeTsKIAkJcGh5X2RyZC0+cGh5c1tpXS5pbmRleCA9IGk7CkBAIC0xNzg2
LDEwICsxNzg0LDkgQEAgc3RhdGljIGludCBleHlub3M1X3VzYmRyZF9waHlfcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAogCXBoeV9wcm92aWRlciA9IGRldm1fb2ZfcGh5X3By
b3ZpZGVyX3JlZ2lzdGVyKGRldiwKIAkJCQkJCSAgICAgZXh5bm9zNV91c2JkcmRfcGh5X3hsYXRl
KTsKLQlpZiAoSVNfRVJSKHBoeV9wcm92aWRlcikpIHsKLQkJZGV2X2VycihwaHlfZHJkLT5kZXYs
ICJGYWlsZWQgdG8gcmVnaXN0ZXIgcGh5IHByb3ZpZGVyXG4iKTsKLQkJcmV0dXJuIFBUUl9FUlIo
cGh5X3Byb3ZpZGVyKTsKLQl9CisJaWYgKElTX0VSUihwaHlfcHJvdmlkZXIpKQorCQlyZXR1cm4g
ZGV2X2Vycl9wcm9iZShwaHlfZHJkLT5kZXYsIFBUUl9FUlIocGh5X3Byb3ZpZGVyKSwKKwkJCQkg
ICAgICJGYWlsZWQgdG8gcmVnaXN0ZXIgcGh5IHByb3ZpZGVyXG4iKTsKIAogCXJldHVybiAwOwog
fQoKLS0gCjIuNDcuMC4zMzguZzYwY2NhMTU4MTktZ29vZwoKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
