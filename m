Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE504E64A84
	for <linux-phy@archiver.kernel.org>; Tue,  3 Dec 2024 12:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kaPcW77YbeytMf3qJYSP33EK6+3LcE/yfCWzVwVKVhY=; b=2ifzOf+ZfJ30Zb
	5mFh7ZQrY/d2ErzD9OEa7J3vOX+ijgmYOWJF7KSi3gE8ibrerjIg/xsN/BPErisFnWWOTUon6fRwd
	S6XARSI3zyMj6BEVp39+APYUM/sQdZ9KsRDf+TEMlpVdV0Y2G7C++N5m5bo7UTKIa4KnfmLj+kINq
	W/xlfuRyvBHlv/vsxaRQD4N1FL42ABazMMDCeWHCpmd4bwI7iZY9zNRV/32BiL8nI+LlF363RxtWG
	dTcND92c7T4WBMDuHsSCT9CV7oEzuaDz2uPsWksPUVl4DO3pvJGzI0Ik8ibfuJSuPdfM6mul/aWcV
	GJsG8YGk74alndnfyR4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIRrm-00000009Ovv-2oI3;
	Tue, 03 Dec 2024 12:18:58 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIRmt-00000009Nfj-3DQO
	for linux-phy@lists.infradead.org;
	Tue, 03 Dec 2024 12:13:57 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-aa55171d73cso1147576866b.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Dec 2024 04:13:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733228034; x=1733832834; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6M6cTvNs7V+xqyuwhG0n9JcP4Mq9Zi3RChVjlFoyS9c=;
        b=bwsHYZw8qrZzvuEHRjKj+EzzMisoF1hFG5qVSMb9W9sw6UV+CeCkqzhG8pH8oJBV5I
         IZGNioo4HP9pbzJBbKhJM9CSV98HHH4/CwR71hSSORsjrfAQA1C3OONGY5rbVgiBdgpj
         yc9lQj5ORW6uibCVMVX115UhsOVXRIBm8weYlspqKNbKque07nRQBFjILnJSmQeDb3XH
         LZ64bb+8A73BY+Ys7YYGXdRPZ/gLnhUU7Lo6BJSb408fugDPMsnc+VR5g4vL9IQi8z1v
         P2S6PfQTggwko+sLxPNaksQuqVfiSMsSKcfarVTr0Z0hXYiv0n6RYRWYeAmCVgjFCEi6
         Fx7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733228034; x=1733832834;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6M6cTvNs7V+xqyuwhG0n9JcP4Mq9Zi3RChVjlFoyS9c=;
        b=iej2/L4URVg8lJucOkvXJurC7Hqj9iVAt/yCfb37XGNcPDofL6/VtmDEVFukgeNReR
         qp6hB3P+P2ZrGrUgrx0+HODXrB6ImqDb6hhhJqmK3aRlq6MHabQtcoJq72HyAyhsjozV
         keljz7yocMHi9dnqadXNk1+ZfnJ6Fo2eGP1Z+SHVe4n+8ve2I1R7JCuNfj5mVG19h1R6
         ljth4hamTjOitGgkOEo+Bq65oBXUDQXjId2UnNwJJ+QZGwdwb9zQPQI+d9Jfg/mtZp5W
         1FxzaR9Qt5meU10BnGUoHo/8/Cf+tn4l0tZ5jDpsH/55O1liDUat3y7qxIfB4IhZVLuy
         LtLQ==
X-Forwarded-Encrypted: i=1; AJvYcCUEiA4NmeOPDiqbC7sPXPA9VGWILgNdsk3C4fdmpMLftmsztUvhhK+uYRKBhwCGFnB3hoz3THp2RAw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzFwFFuKkBYXiSm6p2t6QuJay0Ro1E9YQskUmZzmZD+yQcrAn/0
	IBwAsIG3iTV6bRIBcnCg9S2vsA3IgWLfeewlVoECZIXJysjevi1cMFu6GKacCT8=
X-Gm-Gg: ASbGncvLaIPbDOztaotT1kyPsbwJZ2HVBUXF70piiRpa7ilAA2DBWLIfs4hbHE9faUR
	ufPlPFvSdSHWnLQ4Z3xPPNRyMOWPWF31lhSks/NYHD/QY68jUNBB/h9nAgcrq2I+IeJ8QJO3jO+
	06xWjNMBjk5njxaPm0O6up2CwThq1rSzirWg0Ndy6Dixs4Q+0mq9cu1/k4Xu5nkcJ4gNnrLTtxC
	hSwRVkF/s/qZYl514fteqWc+zF7//As3HcECw29bNVareDyVCVr0nmZRIplNae/Uns2de30jTpP
	jHIpUszWGbpD9a98RxBbcTBxBuLZLjt2Og==
X-Google-Smtp-Source: AGHT+IFmVCN79AgO12dD2PdCbqVnKblHT8yfYp2CBGY/43ZxpcqEVT7DluzFyun9DnuIF1YW27jRrA==
X-Received: by 2002:a17:906:d54b:b0:aa5:3fe7:4475 with SMTP id a640c23a62f3a-aa59453454fmr3031209566b.11.1733228033761;
        Tue, 03 Dec 2024 04:13:53 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5996c245bsm607603766b.8.2024.12.03.04.13.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 04:13:53 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 03 Dec 2024 12:13:53 +0000
Subject: [PATCH v2 5/8] phy: exynos5-usbdrd: gs101: ensure power is gated
 to SS phy in phy_exit()
MIME-Version: 1.0
Message-Id: <20241203-gs101-phy-lanes-orientation-phy-v2-5-40dcf1b7670d@linaro.org>
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
 stable@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_041355_840753_2B86B06A 
X-CRM114-Status: GOOD (  10.91  )
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

V2UgY3VycmVudGx5IGRvbid0IGdhdGUgdGhlIHBvd2VyIHRvIHRoZSBTUyBwaHkgaW4gcGh5X2V4
aXQoKS4KClNodWZmbGUgdGhlIGNvZGUgc2xpZ2h0bHkgdG8gZW5zdXJlIHRoZSBwb3dlciBpcyBn
YXRlZCB0byB0aGUgU1MgcGh5IGFzCndlbGwuCgpGaXhlczogMzIyNjdjMjliYzdkICgicGh5OiBl
eHlub3M1LXVzYmRyZDogc3VwcG9ydCBFeHlub3MgVVNCRFJEIDMuMSBjb21ibyBwaHkgKEhTICYg
U1MpIikKQ0M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcgIyA2LjExKwpSZXZpZXdlZC1ieTogS3J6
eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgpSZXZpZXdl
ZC1ieTogUGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnPgpTaWduZWQtb2Zm
LWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgoKLS0tCnYyOgoq
IGFkZCBjYy1zdGFibGUgYW5kIGZpeGVzIHRhZ3MgKEtyenlzenRvZikKKiBjb2xsZWN0IHRhZ3MK
LS0tCiBkcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jIHwgMTMgKysrKysr
KystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jIGIv
ZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYwppbmRleCAyYTcyNGQzNjJj
MmQuLmMxY2U2ZmRlZWYzMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5
bm9zNS11c2JkcmQuYworKysgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRy
ZC5jCkBAIC0xMjk2LDE0ICsxMjk2LDE3IEBAIHN0YXRpYyBpbnQgZXh5bm9zNV91c2JkcmRfZ3Mx
MDFfcGh5X2V4aXQoc3RydWN0IHBoeSAqcGh5KQogCXN0cnVjdCBleHlub3M1X3VzYmRyZF9waHkg
KnBoeV9kcmQgPSB0b191c2JkcmRfcGh5KGluc3QpOwogCWludCByZXQ7CiAKKwlpZiAoaW5zdC0+
cGh5X2NmZy0+aWQgPT0gRVhZTk9TNV9EUkRQSFlfVVRNSSkgeworCQlyZXQgPSBleHlub3M4NTBf
dXNiZHJkX3BoeV9leGl0KHBoeSk7CisJCWlmIChyZXQpCisJCQlyZXR1cm4gcmV0OworCX0KKwor
CWV4eW5vczVfdXNiZHJkX3BoeV9pc29sKGluc3QsIHRydWUpOworCiAJaWYgKGluc3QtPnBoeV9j
ZmctPmlkICE9IEVYWU5PUzVfRFJEUEhZX1VUTUkpCiAJCXJldHVybiAwOwogCi0JcmV0ID0gZXh5
bm9zODUwX3VzYmRyZF9waHlfZXhpdChwaHkpOwotCWlmIChyZXQpCi0JCXJldHVybiByZXQ7Ci0K
LQlleHlub3M1X3VzYmRyZF9waHlfaXNvbChpbnN0LCB0cnVlKTsKIAlyZXR1cm4gcmVndWxhdG9y
X2J1bGtfZGlzYWJsZShwaHlfZHJkLT5kcnZfZGF0YS0+bl9yZWd1bGF0b3JzLAogCQkJCSAgICAg
IHBoeV9kcmQtPnJlZ3VsYXRvcnMpOwogfQoKLS0gCjIuNDcuMC4zMzguZzYwY2NhMTU4MTktZ29v
ZwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
