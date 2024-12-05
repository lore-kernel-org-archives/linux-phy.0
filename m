Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 045ECE77171
	for <linux-phy@archiver.kernel.org>; Thu,  5 Dec 2024 07:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aA/MWKcMHvlEvSF2mytGD25q2yXqc/rACkiW3VE4c8U=; b=hUuj21fa6QH0nK
	v4Q0VCBSEHj3CRR10egPJ1ODuFytoe2UUYJqvjImD4PdPH5DaADHcGVANCNf+blFtYXEHGfsVbvi4
	2FpO5h33Rdgp5X/2gQLa97WA8dEJjUUcktMZEUxC1bq85vWw8Opa7fbV/FHeJho+gg6GkPKGPsbfF
	UoCLvHNGnamvuA1hvE8zQs9a6bpIhUtMn308fRyQHY80NjfdNrB2zFtxTpU8RvxJ+paLtXHUvSyct
	yv8To3LyYuzFiWoh0GKHIs53Lhhl3Ff4tWAgtS62anZ3GfBvHpiPMaTOdz9RRKoGEkQTY14bZVqu7
	9MjYvUEzHPMJ93zlCdfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ6Vk-0000000F4G6-38JW;
	Thu, 05 Dec 2024 07:42:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ6MU-0000000F1lx-39i8
	for linux-phy@bombadil.infradead.org;
	Thu, 05 Dec 2024 07:33:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=H11rnIjZ/6A+y0BhElAhFFU5gZO2NZydl8Xc9FZjLpY=; b=DIrehjd1GsGRyByo3D5a1D9UJg
	iP27m22v2Ga76lXB3KDUJQrAyIi/cjWELaygfWm/EgpwOvBLuHwV/eIdPGos50lDxCh5uZA/BD7zc
	fsY6rpeMWjP14pQACsshft1XErO63lR8OygnoK0HoeLXCGclKekpby1strD37qANMW6nNjODknGND
	CzWYfdtIFNfnW9T6ILiXBVbFfrHdFpLS1GpG0tSmi9XTXZ4w43wGpmEr7KBtY9sMdQND58im3YWkl
	d5BnUSuleQNnItWB9FSExVfwUrNrGKeEUTlnNoPZYQpiNsWtPrPo4zRU3arFZjUZgEuJD6pxJMRaF
	/G/2z+BQ==;
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ6MQ-00000002mu8-12m8
	for linux-phy@lists.infradead.org;
	Thu, 05 Dec 2024 07:33:21 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-aa549d9dffdso76966066b.2
        for <linux-phy@lists.infradead.org>; Wed, 04 Dec 2024 23:33:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733383995; x=1733988795; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H11rnIjZ/6A+y0BhElAhFFU5gZO2NZydl8Xc9FZjLpY=;
        b=DoPQrHnq3DirzRypLOMfQQI1IV7q3cgXtheWbXN1Dq++FarAprrqoxGQlufqQzB42l
         xlugqemhfBXKv7mmqB0mY16fGozvL7w2i1N2sD/k9c0Cf8FcNp6CKzPs/A/bufNiUo9B
         KSD/gIueTGm89X7thD2EpQMJllOFMpI789dzF/TzFvVl0Prlbh95yzidGqwxx4+/lfpE
         VgD8AZaFIbxPzvGax4S9hBVi4RgrEOyMaN53DVpRPTsyhuwIhN08vqP9RswLxEpwQy3z
         U2poRIlylNxBfyMLAmAyZJk5lPV5YeDiwlrJRtanp5nHxPNSDPa0TV44r8ov6huqk/5Y
         cGXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733383995; x=1733988795;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H11rnIjZ/6A+y0BhElAhFFU5gZO2NZydl8Xc9FZjLpY=;
        b=l5o45UXlGPFqf383PEc0VxIEu71FYucXNkzknJ+VFuXTPX1WULxBMEndlEXxqRqjf3
         mf1A2ZYZ+XFy3932iE+lzrUhluhEl54WvpMORiAw3HsXwvkN8yi1/aB3q5zpV12HL8q9
         weUJmKdIR1MWHc6SIYIWFRovSYsODeIdnfzBsC+e4PgoY82BIg0ICbfgaDxSwDBWz2/x
         FbyUTxsWSf+mA2C0OEJYyVgLfl9CmMFFA0006RyU2l6KkIjBsTyt+MLJtNGhLm2IBc3M
         US+/88FRTsGMAzezDfPbqcUJg6Ct7vbuqlaXtT6tiN1T2IFkIxy253rk6rhFA8Y06cj4
         hanA==
X-Forwarded-Encrypted: i=1; AJvYcCWZiufTW5yg6V1kF6ga4RlUqCaWf/JmgDHknnQW8PcdpkYc9zN7OyC5gYR+2iYUG6geki5Opw+5Xzw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxGTaVvVjWB8O0yYRYzPO9hd/llCFc/cceatM0vNtPsYm0L4omG
	/jQMCVPJKQeRqzrocBFDaX0Q5NCeA5Fpx0Lwrqo4XWhWIDigx7pMnPpygjlbcJM=
X-Gm-Gg: ASbGncu5eRXtvAJJx4f2YWwiV7OBLfd4awkyeD+Wmspaub7HGFRS8ZdHTh5bQJDSrlJ
	dTH98aZIHGIxmTsOFUn+Fc/fpt43oz9MjpqWJK1cwzauC0T8l8fOa59wkEOr95Ewdj3C//kFwBf
	ylvETwzKa8kDbxMl+/EK6pNKjBeAFbalM6a+Gn1Ryq/1MUJj7j+Ccj/qlfhh45EV8OugmQ1fh5S
	bxM6iCwj7HvIy5tr7ytpfRbBc4LCfOGKGeOgv0tCjRDuBv8Syv2+7zWleWaRqTPHDyc23y8HL6G
	Q4tlg7MXDtz9QugRpdM6KD1DTbHksFN6Lw==
X-Google-Smtp-Source: AGHT+IFYsJycA4yASAH+sZjUsdut4D7esnBNe4R4ApeFxO8IGWZZ/0bN1Z5Vd1ltD4MxKYmMzQqjIw==
X-Received: by 2002:a17:906:31c7:b0:a9a:bbcc:508c with SMTP id a640c23a62f3a-aa5f7ca9f9emr722031966b.2.1733383995058;
        Wed, 04 Dec 2024 23:33:15 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260888casm53371766b.133.2024.12.04.23.33.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 23:33:14 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Dec 2024 07:33:14 +0000
Subject: [PATCH v3 3/8] phy: exynos5-usbdrd: convert to dev_err_probe
MIME-Version: 1.0
Message-Id: <20241205-gs101-phy-lanes-orientation-phy-v3-3-32f721bed219@linaro.org>
References: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
In-Reply-To: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
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
X-CRM114-CacheID: sfid-20241205_073318_546292_F14E2816 
X-CRM114-Status: GOOD (  10.54  )
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
