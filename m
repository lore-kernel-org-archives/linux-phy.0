Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26D7DC19F2E
	for <linux-phy@archiver.kernel.org>; Thu, 27 Feb 2025 07:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NSdUhSUqgbDhuyQK98x8WXEl9BO0ZfDagvTAEc3V1Cc=; b=FFghVadSdv1KE3
	uard5qBE4dA4j5Gw9x+EkNJHkPVnxQxDbKirechMrdX88rbkUnOMke+oiETRKUCFaTt97+FKFukgG
	cF1Cw0jDK2dOxjSYvGa3d7lS4jDBjeRhEYB/cjDJxvs+3fRG+6uPFMffbcyA7aHgGu0rnwY4DcbuH
	akN3pgu/owWZ1F5P2X7Re78Cpmv35pSfCgBjrSQbPlwFg3AVGsih9n5mHUntG3Rt8vHzRNNijBNFV
	KjH0iDA8QInU9k4kTwxSQkTGB8+BmURt346CnCkBPPm7vn1n9JXEL6rcP8Ll1mrbCIn97+B9Q0Q50
	exfEknlYJCAmy96gzGGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnXyo-00000006WcB-3JvK;
	Thu, 27 Feb 2025 07:06:46 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnXxT-00000006WOy-0qz1
	for linux-phy@lists.infradead.org;
	Thu, 27 Feb 2025 07:05:24 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-ab7098af6fdso7797366b.2
        for <linux-phy@lists.infradead.org>; Wed, 26 Feb 2025 23:05:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740639922; x=1741244722; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0apQcE6PfzPMLUzCFy/8QBbVfjes8kdxgXVKnN/YLIM=;
        b=KtJfcZEgLuj7F9wT/3sviJiHJzJIaD1TUUGtaKa8bGTq45HtIM0xixxZl5LO93/JX9
         di4RlzwJItgDT1jyW0ojDEo3OdVAm7/KNii8/MFs6fgvdJSNAo+vWUb3jmkeUTZTKI+s
         EvxiFRek+h7V1yxFfj75AGsfSNuj9kRP3X8E1MJ0fY4bu01fWHwlx+4VvdvzWRkM856/
         f7Zyl/R0Mj9wXCD3AEjJphMv2AQpD8Y4hutqhou2uOu6nO3pTdZUwG6YrDYMkFqOgsh6
         WNmG4ud3c9OzPw2whocDsjdCKfpLGkBNZxrdkoU3TVB6ctmmuNircPjQwbAhVH0FYPDD
         KJYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740639922; x=1741244722;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0apQcE6PfzPMLUzCFy/8QBbVfjes8kdxgXVKnN/YLIM=;
        b=U1XtZB7KnyjXEr/hlURh5id5z0LwMtksoph7JtILIb1ytgHGwCLBvDfWCRNLOfaCug
         oOSkPZBIDfSJX82ieTTW7p/CkoOwg0h59oqjYUBpIqoMxfzOnOLDMyT4jKBaosS3zlad
         DMdOwL7qVCpHexvNugfBfa68dqRoO2quXDqOYgsddrC/88OfwWzX8rV7y1Mfvh6m85Lp
         urGLQ/d9eOsCMF38RprmsjP5nrfldIOGa69h+RxaZgvBIgNvYz6jQSKxTYe5XYYt45EQ
         5dj5TR6srOQUPO/bXPXW0Aka/0xW+J+h3nATUD+w45FOpLJKY2Qa01LrQbJ4vlrwJnJV
         N4aA==
X-Forwarded-Encrypted: i=1; AJvYcCWNBDoiYEYCC9qOLQnWZeD4yH3U1dSvMcc+sAqkYfA46joikochUkwYOmf+fq62GOhjqbv5qXNWCXo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxQIalYWt9tawVt8hxsnb1CqUPQ45RZq2FDIwcVgh351fZtE6Is
	JFaFaUyEcPYezHfRNmYYH2IbJTq3rDfVqwBy+S29OmoAs0DahCOQK5Fq+tGx86Y=
X-Gm-Gg: ASbGncsowtc+jEOCXTWUhDrYWOCXZzqlZ+FuBSHfbnCgxbiR1+KldUK2Ve8dzXL2HGO
	1sacV5AcnBcCSG17f8NI3maHtVVAUeoL5sGeSlmqor95/2JMmrAE2k6LjwpwnkehrVcwpjMHcQ6
	t/koZN7DZ4QeXO+uAWZeiSeq148L2ExjZIKZT0oFykFJqC759O18pmnCZaCMfhxk4/WS4ErN0zK
	EzwWknbwqcguczuTEHMk6tVninu0dtz60gP/fpvrSmupdPHik2gH/k3hX9TgozgYDUhCOCAGwLW
	vrP8SAHW9/lx8qv+AGEcVRQqkiLhDg+gqa+zx21p
X-Google-Smtp-Source: AGHT+IHXy5tCZaZz6X3dSvzvQm4bdYcI3qekmMWxV+GvUxiLx80Fzbswu9wY9k8MAxpjFX7Ux9LlHA==
X-Received: by 2002:a17:907:74a:b0:abb:e5ac:28b2 with SMTP id a640c23a62f3a-abc09c24732mr949678066b.13.1740639921638;
        Wed, 26 Feb 2025 23:05:21 -0800 (PST)
Received: from krzk-bin.. ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf0c6e9c25sm74556466b.108.2025.02.26.23.05.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 23:05:21 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Subject: [PATCH v4] phy: exynos5-usbdrd: Do not depend on Type-C
Date: Thu, 27 Feb 2025 08:05:18 +0100
Message-ID: <20250227070518.5468-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_230523_325771_3419F74E 
X-CRM114-Status: GOOD (  12.15  )
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

T2xkZXIgRXh5bm9zIGRlc2lnbnMsIGxpa2UgRXh5bm9zNTQyMiwgZG8gbm90IGhhdmUgVVNCIFR5
cGUtQyBhbmQgdGhlClVTQiBEUkQgUEhZIGRvZXMgbm90IHJlYWxseSBuZWVkIENPTkZJR19UWVBF
QyBmb3IgdGhlc2UgZGV2aWNlcyBhdCBhbGwuCkluY29ycmVjdGx5IGFkZGVkIG9wdGlvbmFsIGRl
cGVuZGVuY3kgb24gQ09ORklHX1RZUEVDIGNhdXNlZCB0aGlzIGRyaXZlcgp0byBiZSBtaXNzaW5n
IGZvciBleHlub3NfZGVmY29uZmlnIGFuZCBhcyByZXN1bHQgRXh5bm9zNTQyMi1iYXNlZCBib2Fy
ZHMKbGlrZSBIYXJka2VybmVsIE9kcm9pZCBIQzEgZmFpbGVkIHRvIHByb2JlIFVTQi4KClJlcG9y
dGVkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+CkNsb3NlczogaHR0
cHM6Ly9rcnprLmV1LyMvYnVpbGRlcnMvMjEvYnVpbGRzLzYxMzkKUmVwb3J0ZWQtYnk6IE1hcmVr
IFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KQ2xvc2VzOiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9hbGwvM2MwYjc3ZTYtMzU3ZC00NTNlLThiNjMtNDc1N2MzMjMxYmRlQHNh
bXN1bmcuY29tLwpGaXhlczogMDlkYzY3NDI5NWEzICgicGh5OiBleHlub3M1LXVzYmRyZDogc3Vi
c2NyaWJlIHRvIG9yaWVudGF0aW9uIG5vdGlmaWVyIGlmIHJlcXVpcmVkIikKUmV2aWV3ZWQtYnk6
IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+ClRlc3RlZC1ieTogTWFy
ZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgpTaWduZWQtb2ZmLWJ5OiBL
cnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+CgotLS0K
ClBhdGNoIGZvciBpc3N1ZSBpbiBsaW51eC1uZXh0CgpDaGFuZ2VzIGluIHY0OgoxLiBDaGFuZ2Ug
c3ViamVjdCAoVmlub2QpCjIuIEFkZCBNYXJlaydzIGFuZCBBbmRyZSdzIHRhZ3MuCgpDaGFuZ2Vz
IGluIHYzOgoxLiBTaW1wbGlmeSBhbmQgZ28gYmFjayB0byBzdGFuZGFyZCBvcHRpb25hbCBkZXBl
bmRlbmN5IHdpdGhvdXQKICAgaW50ZXJtZWRpYXRlIHN5bWJvbAoKQ2hhbmdlcyBpbiB2MjoKMS4g
QWRkIFBIWV9FWFlOT1M1X1VTQkRSRF9UWVBFQywgc28gYXJtNjQgZGVmY29uZmlnIHdpbGwgaGF2
ZSBib3RoCiAgIHN5bWJvbHMgaW4tc3luYwotLS0KIGRyaXZlcnMvcGh5L3NhbXN1bmcvS2NvbmZp
ZyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvS2NvbmZpZyBiL2RyaXZlcnMvcGh5L3Nh
bXN1bmcvS2NvbmZpZwppbmRleCA3ZmJhNTcxYzBlMmIuLjY1NjYxMDA0NDFkNiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmlnCisrKyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcv
S2NvbmZpZwpAQCAtODEsNyArODEsNyBAQCBjb25maWcgUEhZX0VYWU5PUzVfVVNCRFJECiAJdHJp
c3RhdGUgIkV4eW5vczUgU29DIHNlcmllcyBVU0IgRFJEIFBIWSBkcml2ZXIiCiAJZGVwZW5kcyBv
biAoQVJDSF9FWFlOT1MgJiYgT0YpIHx8IENPTVBJTEVfVEVTVAogCWRlcGVuZHMgb24gSEFTX0lP
TUVNCi0JZGVwZW5kcyBvbiBUWVBFQyB8fCAoVFlQRUM9biAmJiBDT01QSUxFX1RFU1QpCisJZGVw
ZW5kcyBvbiBUWVBFQyB8fCAhVFlQRUMKIAlkZXBlbmRzIG9uIFVTQl9EV0MzX0VYWU5PUwogCXNl
bGVjdCBHRU5FUklDX1BIWQogCXNlbGVjdCBNRkRfU1lTQ09OCi0tIAoyLjQzLjAKCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
