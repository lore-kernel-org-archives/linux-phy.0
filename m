Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC74EC04FFE
	for <linux-phy@archiver.kernel.org>; Tue, 23 Apr 2024 17:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yjYv5yXd8TNeQleWIiI2GJEkSqHAXQvTrqr8JHHnMss=; b=EUCGTawcOdWQfQ
	wqeEM0j3XDAlK0xQ1isrJLg7QUflVPCUM/sAwwvmUGgNO/M1Ckg8g1fxGHOIwz2aAltBdVvzCvpwc
	t0xuHbMSYH3yVXuHyJ4cEa49vfujAhIKVHnZ+0Nj8lHy/ZqL/n+dfB9SdfKcRteylPlRI+cJimkuL
	nv8I2bv6aewtGb775GhSw4HJoKT+IeO6bkCAXhLwniPFXlg96XBuc1JsAQBg0aOz+UBl8g6lQ8/SY
	JT8q+8iXMkW5pjdf0vPmWZRZf20R7ymVhywGbApk88tSlinzQf4kb5K4ewJ6sZT/GZsBK6Ve3+ObL
	C+tRcjiIOiVo6AnlMmTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzJbV-00000000sNQ-0lQG;
	Tue, 23 Apr 2024 17:06:49 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzJb9-00000000s9h-2b7x
	for linux-phy@lists.infradead.org;
	Tue, 23 Apr 2024 17:06:30 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a559b919303so395141766b.1
        for <linux-phy@lists.infradead.org>; Tue, 23 Apr 2024 10:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713891986; x=1714496786; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9GFmm1lXG8IRDZ7oQOROxJWRILdkR+JVdhVLDYhofYU=;
        b=EAnP759JVPiV3bYM6/FcuhEMIeRhKdtlfoEeEyHAgBylTak7g8aho/NT5U/FAx1hPR
         EDrrnCpbQvzQi/gvBeFvRTgLRkaLdPrXhquQBWZijX/mTk+6OHym8rI4FaUl3J0kJ4sY
         7EODRFJXbZl5AD0KZZC3zfTtE58P5yEVhX0eT53Y5Trp/PLUQk0Wbta1vAfwd4gYpik+
         SrukBQR0N8c3+WvKu00Odt7lHLOxBBxH5myOwC3IIgbVDr0fRjzZZLZqpCuFxLn3ssxk
         DCmb4HiVpc2Eg2IYuM0LkfAl5lZtGSVjTuc2KfgYTBgN3HsLwT0wuV/xjJw3RIMDn2Pb
         kneg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713891986; x=1714496786;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9GFmm1lXG8IRDZ7oQOROxJWRILdkR+JVdhVLDYhofYU=;
        b=sf5S3ztTxRY6YoD88vLcv0Q1LttJDj1BGkC5xt60jb5ra4spnBkMYzL7gvn8dK4Ycm
         MYX8UGG/QFDXxtOo/tlZElTEhFZipKaoQAdpKFtDbbD8i+wDCr8rI2ZMlJU5y5AFcw2x
         AfQLJFslanIEc9+0/KxUByiV8q1JVRoBLJ0Is4/31g3MbKH3mRHc+wbJ/w28F0d+fM6x
         5GUuydFDP3EeKJoRbjEcZnJRsuu0/3VFcvpn9DliHfq+x4KBwz+RRWGNfzx5caw6Ew98
         pqIjLyTGmSy70vcZpz/cNTTtFIANRZ3YkYl7ZbDeI77mzDcrSdYkiPqm1vnw8yhUZ+l2
         lTbg==
X-Forwarded-Encrypted: i=1; AJvYcCVNnUxjbPFkrzc64jE/gSbKZQtA/jgHyT0PezPBTUce38A0TQO4RkA7U/TQ+CNttwvTupsdeBYjVvOnI3lu1Q0RosbFeV4LhkIL01XXGA==
X-Gm-Message-State: AOJu0YyhPiqt1IWp1GquMznbASmjt0kUuqMw/puY7tPWwVaKyWfriAgs
	/ZhKX8LhlP8eCcfrHD7tjhZuC78UztlcjIKSW3NevEuEvnhBDDIVPedQr7gPHX4=
X-Google-Smtp-Source: AGHT+IELSQMCCaxbBsIXMUuZUEHUL5pQZw+OSlDBpsZVCdsybeaLKXQSWkyki7sDtsHzyRdBoDfqTA==
X-Received: by 2002:a17:906:4fcc:b0:a55:6f2e:b87f with SMTP id i12-20020a1709064fcc00b00a556f2eb87fmr12163408ejw.8.1713891985752;
        Tue, 23 Apr 2024 10:06:25 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id t22-20020a1709063e5600b00a5209dc79c1sm7351624eji.146.2024.04.23.10.06.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 10:06:25 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 23 Apr 2024 18:06:04 +0100
Subject: [PATCH 2/7] phy: exynos5-usbdrd: use
 exynos_get_pmu_regmap_by_phandle() for PMU regs
MIME-Version: 1.0
Message-Id: <20240423-usb-phy-gs101-v1-2-ebdcb3ac174d@linaro.org>
References: <20240423-usb-phy-gs101-v1-0-ebdcb3ac174d@linaro.org>
In-Reply-To: <20240423-usb-phy-gs101-v1-0-ebdcb3ac174d@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_100627_727902_C6D67F77 
X-CRM114-Status: GOOD (  13.15  )
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
IFBNVSByZWdtYXBcbiIpOwoKLS0gCjIuNDQuMC43NjkuZzNjNDA1MTY4NzQtZ29vZwoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
