Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E399BC19F53
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 09:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fBHuh7TCPEFaqEcisJcTkXdtErEUbI4NJK7TNPowlvI=; b=E2qC2fFPfJ52as
	qWqxMG4TIC6LeqBiiNnHNwP9xgiPvCD23zgItEqD/gnef6UCedZ8M7CoN+2F//QcO0jPziAKpafI+
	scxYb9aC7dBYVtENGN7SDpZuXT923D8cnOCjTve611zzYY/usyKOgZzzmv0qUFMhJItPKcJcqh39u
	qUeCaoStJuk6AtpVhpW7SVOgoJrZqNtoESSf9R0QpGBQxrJfUwJfnr/JlmklxoPd5Ce/uxn3W8OTp
	zZzEm8hSMXrZ0dgN0+OJSIasDZ0IYLGrFE997TwPlVdcRX1TqJUY7d3jjWcSmFpmC2UD0giXkt71n
	tvyGLaTh3BDN3wlrx23A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s268J-00000008x0i-3nG6;
	Wed, 01 May 2024 09:20:11 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s267s-00000008wib-2TYC
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 09:19:52 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a58ebdd8b64so444538366b.0
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 02:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714555179; x=1715159979; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ge1XBY1iFiQ1LgGiL0ReMY1iuzn74SrGJNOcVuZ28A8=;
        b=Jzj+RCi7zUzkqIITkVjBdU3XjWyQoXGo34ytKgklpSlztKaYmAgYO0qto0nlrnt8Ik
         geAEEGKbH8Rifh3qky8ZwFZlQ9G6BCgaNeM12lz/16yWRbX6gw76tp2EK4GhnZHPGvQL
         +q2tiLAnYTFTZ3BvRl/yWEHvZXBqCajS9Y3ORV8GycGxMrjOqRzCINMZljANCMDpo+rp
         QAl5YbWnjmjzqqoSBQ35YzHB07SBEQTuBRdA8FYCqj1QYdRsu7v0NIQWUZX3w33/SGlU
         w8Zc4n1Yk3U2lpF177eSPmtyHr5+swQuTeqpLZEAnKixAEBTc5v9Pktu2c74wAX1ntK6
         a15Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714555179; x=1715159979;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ge1XBY1iFiQ1LgGiL0ReMY1iuzn74SrGJNOcVuZ28A8=;
        b=Yf2OXYsjCe+lHqXJ/7ezCGMg1R2QiugUFrxAVWcsNUmJb9MxAQymoWolgJrLTTVrZj
         6e+XJimQXFpN6BD5x1A8YBts5q+tmyz5NO5rQT7MsaFpyJ6TjlyyTYUGx7ju484AczUO
         +j4+qholL6Pc4Uk4kYHHtLdWGb6e9jz2j3zhKV1GZjlWej4CPbn7f3nOSFJQlZ8zH14X
         r4u+BNjkq5qBkqcxSFmBJkCZVN+GDQGzR6gQexyPevc0O+MK2JxswxZXltbzRa/PrNFO
         XOqxbufPUc+WSJowTS1ZtMX5pF485TqLBMh9Rb4T9R0uHtiKt35WgAyKYql6PlmnTWcE
         90CA==
X-Forwarded-Encrypted: i=1; AJvYcCWKr6BKf7EertzgG1CZqJVO8LCt3ByFJpnSGFaIHhEQqDdCZro5p2KZQDWo17Io5eQlYfK7NQLhMJ556LO6BFABhWXay7zNcjFdLjTL/g==
X-Gm-Message-State: AOJu0Yy7JrcqanZT3+UFMZ3rQovVEwYZiR/8wnUbd6HsZxOVBof2NiKu
	D2Te/q0Mr1ufY0a7obKGF9OOmHqGj99lruo9XNgZemPOE43Z6ESPRg/+aSWX42k=
X-Google-Smtp-Source: AGHT+IFXnHDIFgKbGwf/ndb2lV/dTNtH4A6FDxdi7dAgY/FQO/V4J/B3Cjb0Xx5+y8cR0YlXsanYKw==
X-Received: by 2002:a17:906:da04:b0:a52:62a2:d727 with SMTP id fi4-20020a170906da0400b00a5262a2d727mr1540329ejb.52.1714555178841;
        Wed, 01 May 2024 02:19:38 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id bw13-20020a170906c1cd00b00a58de09fd92sm5425674ejb.27.2024.05.01.02.19.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 02:19:38 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 01 May 2024 10:19:38 +0100
Subject: [PATCH v2 3/7] phy: exynos5-usbdrd: support isolating HS and SS
 ports independently
MIME-Version: 1.0
Message-Id: <20240501-usb-phy-gs101-v2-3-ed9f14a1bd6d@linaro.org>
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
X-CRM114-CacheID: sfid-20240501_021944_945203_C34A664A 
X-CRM114-Status: GOOD (  13.14  )
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
Ynk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+Ci0tLQogZHJpdmVy
cy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYyB8IDI0ICsrKysrKysrKysrKysrLS0t
LS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMg
Yi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCmluZGV4IGFjMjA4Yjg5
ZjVhNi4uZDY5MTg3YzIyNjEzIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1l
eHlub3M1LXVzYmRyZC5jCisrKyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNi
ZHJkLmMKQEAgLTE5Niw2ICsxOTYsNyBAQCBzdHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5X2RydmRh
dGEgewogCWNvbnN0IHN0cnVjdCBleHlub3M1X3VzYmRyZF9waHlfY29uZmlnICpwaHlfY2ZnOwog
CWNvbnN0IHN0cnVjdCBwaHlfb3BzICpwaHlfb3BzOwogCXUzMiBwbXVfb2Zmc2V0X3VzYmRyZDBf
cGh5OworCXUzMiBwbXVfb2Zmc2V0X3VzYmRyZDBfcGh5X3NzOwogCXUzMiBwbXVfb2Zmc2V0X3Vz
YmRyZDFfcGh5OwogCWJvb2wgaGFzX2NvbW1vbl9jbGtfZ2F0ZTsKIH07CkBAIC0xMDUwLDE2ICsx
MDUxLDYgQEAgc3RhdGljIGludCBleHlub3M1X3VzYmRyZF9waHlfcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKIAlpZiAoY2hhbm5lbCA8IDApCiAJCWRldl9kYmcoZGV2LCAiTm90
IGEgbXVsdGktY29udHJvbGxlciB1c2JkcmQgcGh5XG4iKTsKIAotCXN3aXRjaCAoY2hhbm5lbCkg
ewotCWNhc2UgMToKLQkJcG11X29mZnNldCA9IHBoeV9kcmQtPmRydl9kYXRhLT5wbXVfb2Zmc2V0
X3VzYmRyZDFfcGh5OwotCQlicmVhazsKLQljYXNlIDA6Ci0JZGVmYXVsdDoKLQkJcG11X29mZnNl
dCA9IHBoeV9kcmQtPmRydl9kYXRhLT5wbXVfb2Zmc2V0X3VzYmRyZDBfcGh5OwotCQlicmVhazsK
LQl9Ci0KIAkvKiBHZXQgVmJ1cyByZWd1bGF0b3JzICovCiAJcGh5X2RyZC0+dmJ1cyA9IGRldm1f
cmVndWxhdG9yX2dldChkZXYsICJ2YnVzIik7CiAJaWYgKElTX0VSUihwaHlfZHJkLT52YnVzKSkg
ewpAQCAtMTA5NCw2ICsxMDg1LDE5IEBAIHN0YXRpYyBpbnQgZXh5bm9zNV91c2JkcmRfcGh5X3By
b2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJCXBoeV9kcmQtPnBoeXNbaV0ucGh5
ID0gcGh5OwogCQlwaHlfZHJkLT5waHlzW2ldLmluZGV4ID0gaTsKIAkJcGh5X2RyZC0+cGh5c1tp
XS5yZWdfcG11ID0gcmVnX3BtdTsKKwkJc3dpdGNoIChjaGFubmVsKSB7CisJCWNhc2UgMToKKwkJ
CXBtdV9vZmZzZXQgPSBwaHlfZHJkLT5kcnZfZGF0YS0+cG11X29mZnNldF91c2JkcmQxX3BoeTsK
KwkJCWJyZWFrOworCQljYXNlIDA6CisJCWRlZmF1bHQ6CisJCQlwbXVfb2Zmc2V0ID0gcGh5X2Ry
ZC0+ZHJ2X2RhdGEtPnBtdV9vZmZzZXRfdXNiZHJkMF9waHk7CisJCQlpZiAoaSA9PSBFWFlOT1M1
X0RSRFBIWV9QSVBFMworCQkJICAgICYmIHBoeV9kcmQtPmRydl9kYXRhLT5wbXVfb2Zmc2V0X3Vz
YmRyZDBfcGh5X3NzKQorCQkJCXBtdV9vZmZzZXQgPSBwaHlfZHJkLT5kcnZfZGF0YQorCQkJCQkJ
LT5wbXVfb2Zmc2V0X3VzYmRyZDBfcGh5X3NzOworCQkJYnJlYWs7CisJCX0KIAkJcGh5X2RyZC0+
cGh5c1tpXS5wbXVfb2Zmc2V0ID0gcG11X29mZnNldDsKIAkJcGh5X2RyZC0+cGh5c1tpXS5waHlf
Y2ZnID0gJmRydl9kYXRhLT5waHlfY2ZnW2ldOwogCQlwaHlfc2V0X2RydmRhdGEocGh5LCAmcGh5
X2RyZC0+cGh5c1tpXSk7CgotLSAKMi40NS4wLnJjMC4xOTcuZ2JhZTU4NDBiM2ItZ29vZwoKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
