Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76771E77179
	for <linux-phy@archiver.kernel.org>; Fri,  6 Dec 2024 16:35:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aA/MWKcMHvlEvSF2mytGD25q2yXqc/rACkiW3VE4c8U=; b=jkCs7kwiCFKwqc
	+dGwLuXqSe00twqpVvaTTAFgumVphpCkdXvCXjzNVSj+7aF3SQ3bqnC79cK80ggka64eFHI1Mfi8g
	ttmZuJ57NrRDlBoMmUlVlCZH4bk+m2HOPDW1RL4Xm628dfU6ex1J0DJwjudRbdJuBveRJh8wATI5O
	0Ju4sR4bKhmUMOgT4qIXOA2X07afbhG806l070MgVHZtEbmOnXWf2jhxnxORCGXZurSFPhwz6VXoV
	aG6iJwerdPQEzaIhtLs2mYNIzxR14XtkEZVpznJ8wOYVj+WxulUNM6PGUcSzblUuqtCftTJU7a1Ns
	Hh5Ew3wsbPFfLWkWY4Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJbIS-00000002BTt-0wNK;
	Fri, 06 Dec 2024 16:35:16 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJbEP-00000002ADT-28QD
	for linux-phy@lists.infradead.org;
	Fri, 06 Dec 2024 16:31:07 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-53df119675dso3004403e87.0
        for <linux-phy@lists.infradead.org>; Fri, 06 Dec 2024 08:31:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733502663; x=1734107463; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H11rnIjZ/6A+y0BhElAhFFU5gZO2NZydl8Xc9FZjLpY=;
        b=oKT9uGmUWvsupxgmEMebfD8zhvFhR+J7axPfIuTycsrQVY/Jcxt9Henvfhif0bDVfQ
         lQOeBz6wljqM93nd5YL9+H7oFJfw+y9JxPmORgcr9sCZ6aPceh8wMl6nKf0GO1/GfZOu
         AWJHs7RTpeZqNy3eQXpC4bDcm+Oo+g07h0aCLVZl8PxQCpLIE6KwNt/51zD1C61dIsA6
         AtEoPn2DO4Pe777wD1JtDcmuZpjVRwY4fo3c5sTsfGnRJz/o8YkaiQMb2gG4L23fFMPP
         BiNxMI40Xe0za4CvXE0hxiTMoDYC8NZtbOEE0WjQKnxPQ4q2QRiEoCiax7LkuO04tY3y
         3Yaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733502663; x=1734107463;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H11rnIjZ/6A+y0BhElAhFFU5gZO2NZydl8Xc9FZjLpY=;
        b=JKeMbsSAqujBR82pqeLHhoVS2XIhL7qjUFXwAdNVUYH48Jj/NLTn/8IbY6qV9B5aMn
         98i0GGVSxnE1RcyGffGV+/jX4mxYIAoNwomgMj5UiTZv6LDGxpLQENfet/0D449dE9ye
         JZZWoIWrw355/sxAMEmfniH62X4R9H2mRpFazfqi2b3DFuO/MSw8TY/fbalV6uTV8D6C
         W++JaP2O14mwRBlGWvdC0qjIfVhWr2qa7uBF2eGtYv84VqXiAnM944yzQNzHIpRFGPzt
         NBmNEi5w0EtUNw+XguZ0x+TTawhCfESKPgEdVpsaBs+ADNlmXIDROQykX/B36+ZJkMHZ
         hpig==
X-Forwarded-Encrypted: i=1; AJvYcCUxfeFiyA5+lUhZDnr86O6VMACOLQc7IKNFAmHM9KbIoS8nNDlHUIfN/PQoJ9oh/Pa7CbV9Pp6RyEg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy337iNQQQeaEvXHXuPbr1gUpXZhEZy0/cKbH5ssh+i1ibSrgRq
	0CXj9AA3PLZ75QGlaeneWcTmeSFRsen615/jlFfQksmdW0IP7KDvRAWOSapJi5s=
X-Gm-Gg: ASbGncsLx3tE60XR3f8Img9xhq88Mg1yPCNuYCirhf9F6pqd8rn8wizJRh3QB7itF9D
	mR12/l7Oh6EVbmqG9SNG3L0c9qJpZN9rvfd0FQiNjH/7u5Op2Jm6xCfcvh5zP3xqlg/ZtqzUxzn
	qFwE+Rpv52ZuJiG0nbstSsElM0I6jpm5+86G85uvadbiDtivsHajP5GckFtKEGdRuZZ5/M99vAh
	IVAJ9pfRUVV2PddGmRbBFfDLk3X9UT4JXh8nGKforEeacn4e2qHDf+7ayrjHfsLhqVx3a2kqiXt
	NbYjpL4a7dJ0/nG3uvRLBxw+HHy9IFKebw==
X-Google-Smtp-Source: AGHT+IExkzoUN1HflnT9opUQAW9MqmmpGeThLHiF2BwdjV6cAu9grD1ih7bZFlXxIc4t4D7GinRxbw==
X-Received: by 2002:a05:6512:ad1:b0:539:da76:c77e with SMTP id 2adb3069b0e04-53e2c2ac7fcmr2130253e87.5.1733502663241;
        Fri, 06 Dec 2024 08:31:03 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260e8af8sm257710266b.191.2024.12.06.08.31.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 08:31:02 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 06 Dec 2024 16:31:03 +0000
Subject: [PATCH v4 3/7] phy: exynos5-usbdrd: convert to dev_err_probe
MIME-Version: 1.0
Message-Id: <20241206-gs101-phy-lanes-orientation-phy-v4-3-f5961268b149@linaro.org>
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
In-Reply-To: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_083105_538429_BA2B2C5F 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
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

ZGV2X2Vycl9wcm9iZSgpIGV4aXN0cyB0byBzaW1wbGlmeSBjb2RlLgoKUmV2aWV3ZWQtYnk6IEty
enlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KUmV2aWV3
ZWQtYnk6IFBldGVyIEdyaWZmaW4gPHBldGVyLmdyaWZmaW5AbGluYXJvLm9yZz4KU2lnbmVkLW9m
Zi1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KCi0tLQp2MjoK
KiBjb2xsZWN0IHRhZ3MKLS0tCiBkcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRy
ZC5jIHwgMjEgKysrKysrKysrLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRp
b25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9zYW1zdW5n
L3BoeS1leHlub3M1LXVzYmRyZC5jIGIvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11
c2JkcmQuYwppbmRleCBjNDIxYjQ5NWViMGYuLmNlYWU0YjQ3Y2VjZSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYworKysgYi9kcml2ZXJzL3BoeS9z
YW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCkBAIC0xNzI1LDEwICsxNzI1LDkgQEAgc3RhdGlj
IGludCBleHlub3M1X3VzYmRyZF9waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKIAogCXJlZ19wbXUgPSBzeXNjb25fcmVnbWFwX2xvb2t1cF9ieV9waGFuZGxlKGRldi0+b2Zf
bm9kZSwKIAkJCQkJCSAgICJzYW1zdW5nLHBtdS1zeXNjb24iKTsKLQlpZiAoSVNfRVJSKHJlZ19w
bXUpKSB7Ci0JCWRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIGxvb2t1cCBQTVUgcmVnbWFwXG4iKTsK
LQkJcmV0dXJuIFBUUl9FUlIocmVnX3BtdSk7Ci0JfQorCWlmIChJU19FUlIocmVnX3BtdSkpCisJ
CXJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgUFRSX0VSUihyZWdfcG11KSwKKwkJCQkgICAgICJG
YWlsZWQgdG8gbG9va3VwIFBNVSByZWdtYXBcbiIpOwogCiAJLyoKIAkgKiBFeHlub3M1NDIwIFNv
QyBoYXMgbXVsdGlwbGUgY2hhbm5lbHMgZm9yIFVTQiAzLjAgUEhZLCB3aXRoCkBAIC0xNzU5LDEw
ICsxNzU4LDkgQEAgc3RhdGljIGludCBleHlub3M1X3VzYmRyZF9waHlfcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKIAlmb3IgKGkgPSAwOyBpIDwgRVhZTk9TNV9EUkRQSFlTX05V
TTsgaSsrKSB7CiAJCXN0cnVjdCBwaHkgKnBoeSA9IGRldm1fcGh5X2NyZWF0ZShkZXYsIE5VTEws
IGRydl9kYXRhLT5waHlfb3BzKTsKIAotCQlpZiAoSVNfRVJSKHBoeSkpIHsKLQkJCWRldl9lcnIo
ZGV2LCAiRmFpbGVkIHRvIGNyZWF0ZSB1c2JkcmRfcGh5IHBoeVxuIik7Ci0JCQlyZXR1cm4gUFRS
X0VSUihwaHkpOwotCQl9CisJCWlmIChJU19FUlIocGh5KSkKKwkJCXJldHVybiBkZXZfZXJyX3By
b2JlKGRldiwgUFRSX0VSUihwaHkpLAorCQkJCQkgICAgICJGYWlsZWQgdG8gY3JlYXRlIHVzYmRy
ZF9waHkgcGh5XG4iKTsKIAogCQlwaHlfZHJkLT5waHlzW2ldLnBoeSA9IHBoeTsKIAkJcGh5X2Ry
ZC0+cGh5c1tpXS5pbmRleCA9IGk7CkBAIC0xNzg2LDEwICsxNzg0LDkgQEAgc3RhdGljIGludCBl
eHlub3M1X3VzYmRyZF9waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAog
CXBoeV9wcm92aWRlciA9IGRldm1fb2ZfcGh5X3Byb3ZpZGVyX3JlZ2lzdGVyKGRldiwKIAkJCQkJ
CSAgICAgZXh5bm9zNV91c2JkcmRfcGh5X3hsYXRlKTsKLQlpZiAoSVNfRVJSKHBoeV9wcm92aWRl
cikpIHsKLQkJZGV2X2VycihwaHlfZHJkLT5kZXYsICJGYWlsZWQgdG8gcmVnaXN0ZXIgcGh5IHBy
b3ZpZGVyXG4iKTsKLQkJcmV0dXJuIFBUUl9FUlIocGh5X3Byb3ZpZGVyKTsKLQl9CisJaWYgKElT
X0VSUihwaHlfcHJvdmlkZXIpKQorCQlyZXR1cm4gZGV2X2Vycl9wcm9iZShwaHlfZHJkLT5kZXYs
IFBUUl9FUlIocGh5X3Byb3ZpZGVyKSwKKwkJCQkgICAgICJGYWlsZWQgdG8gcmVnaXN0ZXIgcGh5
IHByb3ZpZGVyXG4iKTsKIAogCXJldHVybiAwOwogfQoKLS0gCjIuNDcuMC4zMzguZzYwY2NhMTU4
MTktZ29vZwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
