Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95843E64A83
	for <linux-phy@archiver.kernel.org>; Tue,  3 Dec 2024 12:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aA/MWKcMHvlEvSF2mytGD25q2yXqc/rACkiW3VE4c8U=; b=KC21sw9w21DDiX
	GucU/HXHWHh5A5/fooJ2O7nkoWCZsc2XLv/aGfYqWnevvGyRAggShDMwy047UFS7mS7Rpxf+t/YzR
	c8W6Np7XXvnkYoM0blAjpuxPf1WHsy5mQGrcet7370tn4x9hP9Vk7IomMUjVJimPiDNjzftu9DirC
	wH0GGIWSisClgpInC7VUWY39e/jexo9u4m1+ta00a2BZ6rhJO9NnLFSHvO7KLpPLDCRUQcbpTXhzn
	xU4wEqfNngXjZ2qq50xai13oLeWExUXjmRqzAcV2udOVpMgJ8mDmpZKQgiZCU+Hhd7QRfWoWMXyTH
	8Z4uwLX7ZRyifds/8cKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIRqo-00000009Ofp-0nLQ;
	Tue, 03 Dec 2024 12:17:58 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIRms-00000009NeQ-2RZp
	for linux-phy@lists.infradead.org;
	Tue, 03 Dec 2024 12:13:56 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-53df67d6659so8480417e87.3
        for <linux-phy@lists.infradead.org>; Tue, 03 Dec 2024 04:13:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733228032; x=1733832832; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H11rnIjZ/6A+y0BhElAhFFU5gZO2NZydl8Xc9FZjLpY=;
        b=O8MCqRie4YO2ExDgGGkkbLImDvgUSK2lY9sY8WZLRPEm0OEzeEDAHBJNMJlUD9fGr8
         S+dkDy4WMkaF0HkoRy69BMBWKFwIWGycpLzVNU+LIS6yRvx6TBwKaCR4CqQT7t4Uis0i
         aO4Hg2CASszi34y/fuWQ0Lvx0Y1B9nWiXZEeCBBzG7+ia/GQbxaP5ePD+8QkGEbNHh0W
         AkcoK2JCMSA2NgfOtThmSnVRsMhWCrdJrkksoCVPHE6nLQcpl7qn2imakbCvOpB5JJGv
         /P7UaDaMu9ivb7WgOgdz97PtB7YWGqpvgQx5Ng+BwZtAjOp7qDBPHmaImCuciszWYq9G
         Hpjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733228032; x=1733832832;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H11rnIjZ/6A+y0BhElAhFFU5gZO2NZydl8Xc9FZjLpY=;
        b=aiAObjZiS53+6J/KA8/reGmz7rZb+dI0edWDJRq7uf03EqOL3dmAHXfZhMM39+d1P/
         ++XeeIaMicGrbbzCr0cILugSo9GFXQlUyVY5RM5ftGSOsx3KhYIznROyCTevzWWzk5Kb
         HZQ2yDMtKIx5rUc3Z8Jbz4c+52d0kc+7TgXPSB49+oaUiv4U6/47jmudOU0EW+hSlwIr
         tAC6OquhRGhM7IIzzfKtJCRONZfmBPcCkowY6lnUudzGUEIipV+vGjHtrN70UmOPKOaT
         FgrZj6Zh6SVboXWqE/TEur1mLbtX7svx2CJZSh8TrBE3nhYTzRRa1zRsgjmovatN5XkS
         W0ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZddAx9YSbuGx3W6W4k/IQCwJ1n6QQhLeBpJPBdfFoopeeeZc3JLAYbyyghjfPTO1wDTaes4g79K4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyRvYm5m4rs0GavDNsXa4utFHNpDJ70/SQBeW7NHGhXEO/ndWT5
	4yGfFpEJmXQ+6NlmLso/BL7J8QpxnDsavNuPdPx4g6iKgaHyw5NgbPETVouUGo0=
X-Gm-Gg: ASbGncseN8OnIUyHqRsgw0F35WfCZaDQNRezf2fyqJqkAMiXVlqSQKntupw1+jGuAV7
	ZSkPz6IXU3jGy19E71+tmmcHTd9fAP5VXXtvhkPszcXff6boJlJvLKPh04CyAR6M5jsx4JWFrva
	UPdogX0Sk1JrccgQbFcd0IrStUui5fms6a7ArukrOYL7SPdfTtPRH+hvKZgZXEDjJw9wsNYFC9B
	0W/ULZYCcj8LFCDerAwnYGjBk7jm+pz+On+bryny2RfGf016beaeSsCeuTlS5fzH4TuZvNaPP9c
	rfGtj7vZRIpWQKGoCrwU+zGFpuhiIQniLQ==
X-Google-Smtp-Source: AGHT+IHQdMSg8Woe8SDIrFAGgEbEvNlb4MTQhoB4mrSWw8iZG9ODfRvK6W0FE8ok+EwQTy/draIGwg==
X-Received: by 2002:a05:6512:32c9:b0:53d:e592:5415 with SMTP id 2adb3069b0e04-53e12a07a6amr2081271e87.34.1733228032380;
        Tue, 03 Dec 2024 04:13:52 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5996c245bsm607603766b.8.2024.12.03.04.13.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 04:13:52 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 03 Dec 2024 12:13:51 +0000
Subject: [PATCH v2 3/8] phy: exynos5-usbdrd: convert to dev_err_probe
MIME-Version: 1.0
Message-Id: <20241203-gs101-phy-lanes-orientation-phy-v2-3-40dcf1b7670d@linaro.org>
References: <20241203-gs101-phy-lanes-orientation-phy-v2-0-40dcf1b7670d@linaro.org>
In-Reply-To: <20241203-gs101-phy-lanes-orientation-phy-v2-0-40dcf1b7670d@linaro.org>
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
X-CRM114-CacheID: sfid-20241203_041354_624541_2F1425AC 
X-CRM114-Status: GOOD (  10.73  )
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
