Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACB98C2BA18
	for <linux-phy@archiver.kernel.org>; Mon, 17 Jun 2024 16:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9XsSex1ytT9ciqjtaEGAG+/p+r1QJgpXaB11KKP/BTc=; b=lyt5i1fem2dwny
	Lpnwijeu0BcQKB/3RkntUTZb5BSo36rg4ZnYFiZJprTw+MLOn3CNzbXeK9Ti1zNKRJFA1TSDWQVCk
	ZZ83Ha3p8azdQNkrsCBEQuHLx63FNIPlz6UFgOpMj5snSIr/kcPVUpFT+do5wvboe5VsHIkzlUw+r
	KWJ1JuzxzObmnyH+xCy7LBzcuyREoXFZ0f1MOp+z2StiNMHIO0Xx7l6kMbTAHFjDMhlkZiDhYhMFv
	QyExheZYxBL5ckypteoDCP07MX9jZQWrOe2zhNgzGMuaKG1Nc5J1kPrpJ949Gx++4RcEcrTNavdxn
	UlXP4XcXmeFBClAdgr1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJFTt-0000000Bn89-0d7W;
	Mon, 17 Jun 2024 16:45:21 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJFTl-0000000Bn0m-2APl
	for linux-phy@lists.infradead.org;
	Mon, 17 Jun 2024 16:45:17 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a6f936d2ba1so28556266b.0
        for <linux-phy@lists.infradead.org>; Mon, 17 Jun 2024 09:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718642712; x=1719247512; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ThsTojdQQ8zSHFhNOOxiXRSOPUFKMTWzQLxLd3s8TBU=;
        b=vp5CHSJVxg2nbyr/yBtPeLXjE86OlOmq5IARQZuSesl7GFmE1lub5ZZxI1blDCCeRG
         95N124hid+1kIv7Z79L3JTVOtBi0kmDEfV0ANEUKK3kOBWbzp7CDBVkglXQYrCfzDaf5
         haDLa3oZqLrlEwUIyUK2JpDiPkw1rg9bFZeBN4qWjyH5XAnIAn8KQBPvhgtjFDm3ypgW
         uL1xuVrSW91w6vZIGCMHeYGXOI/aZPJg9VrQo6CRg/bt2IuPVzDgeRCbKmVZVhBnl8hM
         WUq7SdBZee0pIBorfoOpAT8bPuymzei90Sb629bhAEfVhHwaHz6cZtLlzQXbNAI/WdRt
         2V+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718642712; x=1719247512;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ThsTojdQQ8zSHFhNOOxiXRSOPUFKMTWzQLxLd3s8TBU=;
        b=hRFYe5JDShWT8150TU4dSJC05FcPI/R2pin1741uCG143Dv/CP3Ueyqh8+tNv0h62t
         0+clcAPS2WwG2nko/ls6pQH9r3rg8IlfEBHjylsAyOZuvsyMvNbBWHVqit3abHcjCW9h
         YDNJV0o7etoi7N32KJox3tyK/ATYCyAXWRfweRMa+vm3gWwhdb94OuzwdeAxPde7wHbK
         hb6IVx8aRfx3prsccLn/+1fBzXjwKulJEbn74fdUk0PNZIGRpSFDjvetqQK/ZK79YUZ2
         E86WazZp9JI4yCxXf+TuWw9MJqoC9JG18dH2+34hpRdccQ3XIN7dlt5dkBnmT44Usr4H
         oGcg==
X-Forwarded-Encrypted: i=1; AJvYcCX1ImGmL9l7VW+MO55C4oahRnsCCfJDx/I+53lRBIwut8+VPLu1dNZwvHKg4Fv+zqD24VRZnP8cYXJaNsLDbNHmpvXI81AbdP9tgGSQlQ==
X-Gm-Message-State: AOJu0YyrxY7YGOsG3W9pjcpfbXFKTpQkPidhl+Zpby7uJmeWFiPf2D+M
	8C5z75pfYAh/xutbaq5gvACTAe5L3JT0raF5BkYHwUp/hQuqfqYad2Y+rrDtLmk=
X-Google-Smtp-Source: AGHT+IFcJWeLyEHV3yWQ18wnmpR54ia9kKxwzabyy2RmlFFm5mvL5H8jtPPWb261kiLvundn45hNyg==
X-Received: by 2002:a17:907:c249:b0:a6f:603a:d9e9 with SMTP id a640c23a62f3a-a6f94e29a83mr13525366b.10.1718642711493;
        Mon, 17 Jun 2024 09:45:11 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56f4170bsm527139966b.157.2024.06.17.09.45.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 09:45:11 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 17 Jun 2024 17:44:43 +0100
Subject: [PATCH v3 2/6] phy: exynos5-usbdrd: support isolating HS and SS
 ports independently
MIME-Version: 1.0
Message-Id: <20240617-usb-phy-gs101-v3-2-b66de9ae7424@linaro.org>
References: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org>
In-Reply-To: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_094514_003712_304BDAF5 
X-CRM114-Status: GOOD (  12.43  )
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

U29tZSB2ZXJzaW9ucyBvZiB0aGlzIElQIGhhdmUgYmVlbiBpbnRlZ3JhdGVkIHVzaW5nIHNlcGFy
YXRlIFBNVSBwb3dlcgpjb250cm9sIHJlZ2lzdGVycyBmb3IgdGhlIEhTIGFuZCBTUyBwYXJ0cy4g
T25lIGV4YW1wbGUgaXMgdGhlIEdvb2dsZQpUZW5zb3IgZ3MxMDEgU29DLgoKU3VjaCBTb0NzIGNh
biBub3cgc2V0IHBtdV9vZmZzZXRfdXNiZHJkMF9waHlfc3MgaW4gdGhlaXIKZXh5bm9zNV91c2Jk
cmRfcGh5X2RydmRhdGEgZm9yIHRoZSBTUyBwaHkgdG8gdGhlIGFwcHJvcHJpYXRlIHZhbHVlLgoK
VGhlIGV4aXN0aW5nICd1c2JkcmRwaHknIGFsaWFzIGNhbiBub3QgYmUgdXNlZCBpbiB0aGlzIGNh
c2UgYmVjYXVzZQp0aGF0IGlzIG1lYW50IGZvciBkZXRlcm1pbmluZyB0aGUgY29ycmVjdCBQTVUg
b2Zmc2V0IGlmIG11bHRpcGxlCmRpc3RpbmN0IFBIWXMgZXhpc3QgaW4gdGhlIHN5c3RlbSAoYXMg
b3Bwb3NlZCB0byBvbmUgUEhZIHdpdGggbXVsdGlwbGUKaXNvbGF0b3JzKS4KClNpZ25lZC1vZmYt
Ynk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+CgotLS0KdjM6IHVz
ZSBkcnZfZGF0YSBpbnN0ZWFkIG9mIHBoeV9kcmQtPmRydl9kYXRhIGZvciBzaG9ydGVyIGxpbmVz
Ci0tLQogZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYyB8IDIzICsrKysr
KysrKysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMTAg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9z
NS11c2JkcmQuYyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKaW5k
ZXggMTViZTk2NmI1MGFlLi5iN2UyNTI2ZjRjMDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L3Nh
bXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKKysrIGIvZHJpdmVycy9waHkvc2Ftc3VuZy9waHkt
ZXh5bm9zNS11c2JkcmQuYwpAQCAtMTg2LDYgKzE4Niw3IEBAIHN0cnVjdCBleHlub3M1X3VzYmRy
ZF9waHlfZHJ2ZGF0YSB7CiAJY29uc3Qgc3RydWN0IGV4eW5vczVfdXNiZHJkX3BoeV9jb25maWcg
KnBoeV9jZmc7CiAJY29uc3Qgc3RydWN0IHBoeV9vcHMgKnBoeV9vcHM7CiAJdTMyIHBtdV9vZmZz
ZXRfdXNiZHJkMF9waHk7CisJdTMyIHBtdV9vZmZzZXRfdXNiZHJkMF9waHlfc3M7CiAJdTMyIHBt
dV9vZmZzZXRfdXNiZHJkMV9waHk7CiAJYm9vbCBoYXNfY29tbW9uX2Nsa19nYXRlOwogfTsKQEAg
LTEwNjUsMTYgKzEwNjYsNiBAQCBzdGF0aWMgaW50IGV4eW5vczVfdXNiZHJkX3BoeV9wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWlmIChjaGFubmVsIDwgMCkKIAkJZGV2X2Ri
ZyhkZXYsICJOb3QgYSBtdWx0aS1jb250cm9sbGVyIHVzYmRyZCBwaHlcbiIpOwogCi0Jc3dpdGNo
IChjaGFubmVsKSB7Ci0JY2FzZSAxOgotCQlwbXVfb2Zmc2V0ID0gcGh5X2RyZC0+ZHJ2X2RhdGEt
PnBtdV9vZmZzZXRfdXNiZHJkMV9waHk7Ci0JCWJyZWFrOwotCWNhc2UgMDoKLQlkZWZhdWx0Ogot
CQlwbXVfb2Zmc2V0ID0gcGh5X2RyZC0+ZHJ2X2RhdGEtPnBtdV9vZmZzZXRfdXNiZHJkMF9waHk7
Ci0JCWJyZWFrOwotCX0KLQogCS8qIEdldCBWYnVzIHJlZ3VsYXRvcnMgKi8KIAlwaHlfZHJkLT52
YnVzID0gZGV2bV9yZWd1bGF0b3JfZ2V0KGRldiwgInZidXMiKTsKIAlpZiAoSVNfRVJSKHBoeV9k
cmQtPnZidXMpKSB7CkBAIC0xMTA5LDYgKzExMDAsMTggQEAgc3RhdGljIGludCBleHlub3M1X3Vz
YmRyZF9waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAkJcGh5X2RyZC0+
cGh5c1tpXS5waHkgPSBwaHk7CiAJCXBoeV9kcmQtPnBoeXNbaV0uaW5kZXggPSBpOwogCQlwaHlf
ZHJkLT5waHlzW2ldLnJlZ19wbXUgPSByZWdfcG11OworCQlzd2l0Y2ggKGNoYW5uZWwpIHsKKwkJ
Y2FzZSAxOgorCQkJcG11X29mZnNldCA9IGRydl9kYXRhLT5wbXVfb2Zmc2V0X3VzYmRyZDFfcGh5
OworCQkJYnJlYWs7CisJCWNhc2UgMDoKKwkJZGVmYXVsdDoKKwkJCXBtdV9vZmZzZXQgPSBkcnZf
ZGF0YS0+cG11X29mZnNldF91c2JkcmQwX3BoeTsKKwkJCWlmIChpID09IEVYWU5PUzVfRFJEUEhZ
X1BJUEUzICYmIGRydl9kYXRhCisJCQkJCQktPnBtdV9vZmZzZXRfdXNiZHJkMF9waHlfc3MpCisJ
CQkJcG11X29mZnNldCA9IGRydl9kYXRhLT5wbXVfb2Zmc2V0X3VzYmRyZDBfcGh5X3NzOworCQkJ
YnJlYWs7CisJCX0KIAkJcGh5X2RyZC0+cGh5c1tpXS5wbXVfb2Zmc2V0ID0gcG11X29mZnNldDsK
IAkJcGh5X2RyZC0+cGh5c1tpXS5waHlfY2ZnID0gJmRydl9kYXRhLT5waHlfY2ZnW2ldOwogCQlw
aHlfc2V0X2RydmRhdGEocGh5LCAmcGh5X2RyZC0+cGh5c1tpXSk7CgotLSAKMi40NS4yLjYyNy5n
N2EyYzRmZDQ2NC1nb29nCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
