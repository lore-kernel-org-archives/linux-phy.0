Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AD9BC4345F
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 09:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=erfcSHeFE0eJFiNij02oV8tNhgQtTheDQ/PX9ScxwPM=; b=x0xtnOtbxgre61
	aDWUNE/hKRNqrKnxAC9IZdYd5Z7HT8XaGkiZl4aFpFAKN86fugQd95EvLvgA7r8JcotXkgJwG8VNB
	By0D7DlTVvLj4Ll1o26d2pPOyNkMRj33/XGUg3YdYDWQo/S2T0NkjVZ9numDWStDxDDtLMEmQTbKo
	kQckOcXk8lA1F4bsvQYgtjafnBHSFZYn7C3wneOs5U6KVxPqgh5mRdfQFuJxnScvfiamN1j7SP4/7
	g2x2+LYxgYNun1VjpIe48bY1lZbNWzjHa7rr1FugcCfbcbaCHZ0u/QdIglTo7QqeZ1CqsyH8u2S0F
	zFOGN2lAwWE5F+JjWTcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2688-00000008wr7-3pWj;
	Wed, 01 May 2024 09:20:00 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s267s-00000008wiY-2Pu9
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 09:19:49 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-51ab4ee9df8so8309382e87.1
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 02:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714555178; x=1715159978; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gDKjYuMOOvQueQlZtzxRYnLgIlA8f7Ari39jSEC+hu0=;
        b=FzFikRXaSvi791ug9FlmkKWBLvt78j/QIrWFW6hWEbbIooMXNfy4sUnNGebBRLD2SS
         861IWCcx0POFRBtEEvIsLpopYYUGMSfD0zLRKD7RLEQOkEBzWM+fxb17VWQHpfy0Gd12
         PZpigKI8p6Pmi7i+XIL/E0h7gX4phMK/pDXh5alesq78pH0yA4zvlTDSnNW+GEUeCYU6
         vS31P05DbT6FDCmlQYQtAOHjLUQ2lagtCZOpQ9U2e9Eo0SQEztibfaiBA9E+9frMsOWv
         QqBDNU7v2Bzor7Q+Kf1Khby0mIDAwNXXUwcaj8QA5XShH3i9YPV/ehE6eW0fkpaxRjpJ
         2mzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714555178; x=1715159978;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gDKjYuMOOvQueQlZtzxRYnLgIlA8f7Ari39jSEC+hu0=;
        b=klXPdkYPDupxv8+Q++U+egUq/2mw7hofIu3iaoIPJPNHiJUoBE0sNWG2MBfA/9ZvGS
         v06ZiL2rBx8owF4lUvkkQ+RVD52vsJq0SFlvbGduE3QddaFq5jO4dglyzTZj+BkKTJCQ
         E4z3mAjSja9NO606/ldKh8UYl7zSn0EB/trNPpG+lDFNtFKQousfkAP21YZ+0dT06Aub
         Rqt3PyWs992QuGQcQd/8xvoZ6lrCe4zACfwGO5EfK4Oz7c3zqa7SL6KNZ6pEANWxCv76
         rFAib6BTighihdiRrmZBdgzNMwFrJIZOcPN069wR8QGIsKHggPf/JdZfC8DctEXi1oy1
         /PHQ==
X-Forwarded-Encrypted: i=1; AJvYcCW/fOY8EZioUGl+a+XfdLBwVh2mwF0/np07Q8vvoAbearbcI7XZA+qz+a+/vc/44cI6dV0HsEuVR8IkF6RlrWhRGp25UMNZYq5ZWz6UqQ==
X-Gm-Message-State: AOJu0YwsxyIWdwrfkYfDYs0UMooIeNEUWeM379G6spFGoaw3yPR6Lrtr
	qydO/9BFGF0IAjPaH8bOCEDJANGykl+mvvz/0g3SUv+VWjKDSGkwdpD7hC7caV0=
X-Google-Smtp-Source: AGHT+IG35wPVpTgwkzCXgj+m93i9OP3q32II4vi8eJQ5xijSDEEE5d2Q9QmPaTZNA6Hi++3pKyY3vg==
X-Received: by 2002:a19:ca53:0:b0:51b:396e:2880 with SMTP id h19-20020a19ca53000000b0051b396e2880mr1133041lfj.63.1714555178313;
        Wed, 01 May 2024 02:19:38 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id bw13-20020a170906c1cd00b00a58de09fd92sm5425674ejb.27.2024.05.01.02.19.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 02:19:37 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 01 May 2024 10:19:37 +0100
Subject: [PATCH v2 2/7] phy: exynos5-usbdrd: use
 exynos_get_pmu_regmap_by_phandle() for PMU regs
MIME-Version: 1.0
Message-Id: <20240501-usb-phy-gs101-v2-2-ed9f14a1bd6d@linaro.org>
References: <20240501-usb-phy-gs101-v2-0-ed9f14a1bd6d@linaro.org>
In-Reply-To: <20240501-usb-phy-gs101-v2-0-ed9f14a1bd6d@linaro.org>
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
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Arnd Bergmann <arnd@arndb.de>, lee@kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_021944_881568_282FDC19 
X-CRM114-Status: GOOD (  14.20  )
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

U29tZSBFeHlub3MgYmFzZWQgU29DcyBsaWtlIFRlbnNvciBnczEwMSBwcm90ZWN0IHRoZSBQTVUg
cmVnaXN0ZXJzIGZvcgpzZWN1cml0eSBoYXJkZW5pbmcgcmVhc29ucyBzbyB0aGF0IHRoZXkgYXJl
IG9ubHkgd3JpdGUgYWNjZXNzaWJsZSBpbgpFTDMgdmlhIGFuIFNNQyBjYWxsLgoKVGhlIEV4eW5v
cyBQTVUgZHJpdmVyIGhhbmRsZXMgdGhpcyB0cmFuc3BhcmVudGx5IHdoZW4gdXNpbmcKZXh5bm9z
X2dldF9wbXVfcmVnbWFwX2J5X3BoYW5kbGUoKS4KClN3aXRjaCB0byB1c2luZyB0aGF0IEFQSSB0
byBzdXBwb3J0IHN1Y2ggU29Dcy4gQXMgdGhpcyBkcml2ZXIgbm93IG5vCmxvbmdlciBkZXBlbmRz
IG9uIG1mZCBzeXNjb24gcmVtb3ZlIHRoYXQgaGVhZGVyIGFuZCBLY29uZmlnIGRlcGVuZGVuY3ku
CgpTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3Jn
PgotLS0KIGRyaXZlcnMvcGh5L3NhbXN1bmcvS2NvbmZpZyAgICAgICAgICAgICAgfCAxIC0KIGRy
aXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgfCA0ICsrLS0KIDIgZmlsZXMg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGh5L3NhbXN1bmcvS2NvbmZpZyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvS2NvbmZpZwpp
bmRleCBmMTBhZmEzZDdmZjUuLmJiNjNmYTcxMDgwMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkv
c2Ftc3VuZy9LY29uZmlnCisrKyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvS2NvbmZpZwpAQCAtODIs
NyArODIsNiBAQCBjb25maWcgUEhZX0VYWU5PUzVfVVNCRFJECiAJZGVwZW5kcyBvbiBIQVNfSU9N
RU0KIAlkZXBlbmRzIG9uIFVTQl9EV0MzX0VYWU5PUwogCXNlbGVjdCBHRU5FUklDX1BIWQotCXNl
bGVjdCBNRkRfU1lTQ09OCiAJZGVmYXVsdCB5CiAJaGVscAogCSAgRW5hYmxlIFVTQiBEUkQgUEhZ
IHN1cHBvcnQgZm9yIEV4eW5vcyA1IFNvQyBzZXJpZXMuCmRpZmYgLS1naXQgYS9kcml2ZXJzL3Bo
eS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jIGIvZHJpdmVycy9waHkvc2Ftc3VuZy9waHkt
ZXh5bm9zNS11c2JkcmQuYwppbmRleCAwNDE3MWVlZDViMTYuLmFjMjA4Yjg5ZjVhNiAxMDA2NDQK
LS0tIGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYworKysgYi9kcml2
ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCkBAIC0xOCw5ICsxOCw5IEBACiAj
aW5jbHVkZSA8bGludXgvcGh5L3BoeS5oPgogI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2Rldmlj
ZS5oPgogI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+Ci0jaW5jbHVkZSA8bGludXgvbWZkL3N5c2Nv
bi5oPgogI2luY2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgogI2luY2x1ZGUgPGxpbnV4L3JlZ3VsYXRv
ci9jb25zdW1lci5oPgorI2luY2x1ZGUgPGxpbnV4L3NvYy9zYW1zdW5nL2V4eW5vcy1wbXUuaD4K
ICNpbmNsdWRlIDxsaW51eC9zb2Mvc2Ftc3VuZy9leHlub3MtcmVncy1wbXUuaD4KIAogLyogRXh5
bm9zIFVTQiBQSFkgcmVnaXN0ZXJzICovCkBAIC0xMDM0LDcgKzEwMzQsNyBAQCBzdGF0aWMgaW50
IGV4eW5vczVfdXNiZHJkX3BoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQog
CQlyZXR1cm4gcmV0OwogCX0KIAotCXJlZ19wbXUgPSBzeXNjb25fcmVnbWFwX2xvb2t1cF9ieV9w
aGFuZGxlKGRldi0+b2Zfbm9kZSwKKwlyZWdfcG11ID0gZXh5bm9zX2dldF9wbXVfcmVnbWFwX2J5
X3BoYW5kbGUoZGV2LT5vZl9ub2RlLAogCQkJCQkJICAgInNhbXN1bmcscG11LXN5c2NvbiIpOwog
CWlmIChJU19FUlIocmVnX3BtdSkpIHsKIAkJZGV2X2VycihkZXYsICJGYWlsZWQgdG8gbG9va3Vw
IFBNVSByZWdtYXBcbiIpOwoKLS0gCjIuNDUuMC5yYzAuMTk3LmdiYWU1ODQwYjNiLWdvb2cKCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
