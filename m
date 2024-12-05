Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46A17E7716C
	for <linux-phy@archiver.kernel.org>; Thu,  5 Dec 2024 07:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kaPcW77YbeytMf3qJYSP33EK6+3LcE/yfCWzVwVKVhY=; b=R0m07tXA72or6y
	taqhWPV+airtsSRAwCgWfjJckvPTAYV9sW4EGGae3VsjJDJJ+EgntOjuGxGEKzU6qVAxIAolvV6u+
	t6vxRv4+b57tZ9YIv6NpP7Ce4NImWYYuNXOpbt7mtIdHs/QW5QizQwPlxhJEZJmVj1xubdCIf8OeZ
	CefMtTsXesa8RY7h1Du9s+ALJHxVYT5OPgT6Nfai9ihxvp/5WZc/RdS6MQrwIZy/xqQ1E2jD9A28A
	H5mtFkCTBAZllKo4Z1jh7RjPGk1dDll6gSduT73f6r1FjuX/StGRJq2dmesTuOdxsgJrkRRAWK7yS
	alP5lEZ4lzmfx7HYHfFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ6Vl-0000000F4GM-04Ry;
	Thu, 05 Dec 2024 07:42:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ6MU-0000000F1ly-3DoF
	for linux-phy@bombadil.infradead.org;
	Thu, 05 Dec 2024 07:33:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=6M6cTvNs7V+xqyuwhG0n9JcP4Mq9Zi3RChVjlFoyS9c=; b=AUNWM33DXmD7hKyS4NMuWwuHyd
	RIviSdK468O++ubO40h2KuVpQw4PLTU5MpiGfztpxldmRlU+2YGQFDdhPigW0aWvGhs+Sp0igc3uq
	ewTmjDbkyTs6i7afNJ/OSz20Ib/tVmtX9QfUQ4zMeCvAXk5nGpT5ApPTG3G7/AHo5ng5pvnna2l0p
	q+JhX5vjwf1RznImtHr1Bd79kiiG7kK1P/fiwIdfCfMfZwxwjZqhG5hoooNSaBHs9JDYnEmvlQXGU
	tIryjcUwOdCg08OJa0cXf0oXyBi9ZpbOfuu2MbtJVfmDjSHZVrry0I7Za/cvcuDA0USz5pZoOCuQ/
	M9GoP3EQ==;
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ6MQ-00000002muB-1Fhq
	for linux-phy@lists.infradead.org;
	Thu, 05 Dec 2024 07:33:21 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-aa530a94c0eso110684266b.2
        for <linux-phy@lists.infradead.org>; Wed, 04 Dec 2024 23:33:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733383996; x=1733988796; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6M6cTvNs7V+xqyuwhG0n9JcP4Mq9Zi3RChVjlFoyS9c=;
        b=ajIW1AiD6tVcPENQ1AT5WUE3pagP8XdL4eR1NtiJJxwGcmGAk6TYjIob9lriIVjkre
         f8vuuUEFrMpywmLg46CkP+DlWEoyBPJK7julz+HsE9097ZzTYsP9e2NbvCT7NX8FfmHY
         2+TDN6F3HA7jxuyQZUngJZdxQO6Rvmb0sVoD0sDZkORD/Gey1B4E4sledyhq2rmPuhZB
         /BrakoG5yVm7TqXyYyPW+9xDi1L1dPOsViTYCfFr6ODelO7/swJEXIm9j5CxjpVM6pI7
         PZU0Y4HgwvB5er01K6xedX4c50jL9HIU4zX7Bc2iDnSJGoBuD5ugp7wCUb1vHqwn+AJk
         9bSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733383996; x=1733988796;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6M6cTvNs7V+xqyuwhG0n9JcP4Mq9Zi3RChVjlFoyS9c=;
        b=aocgSIeAQRurQv7hlGaKLADf3Dq6UnVM5XD2tA5gwl/x05ejn78f6cQQioshky/bjR
         rM6VtLJtclbw0TZuJJBnHzhOk/L2UGrjMG2rK/Xzbnab81zmozjCLO9tckXcZ8GaTM4f
         VgMPFi2sPx0+DkQTa04NiBYtJRVmAxFK9VB0S5SbrpYPnkmYGE6MtHLna6luiYoZRwU7
         afkwZUw8y1tVBfzXgu14ZouCAA1onJPBZpbBdWAwkMbGk2u/pj7/xfEWjB2N59KB5Tg4
         M4j8a2DmiQZHpGQwNyO2RpwByfI43AgWWaKNvb1B9tLhDuEQ5Rc+bZFJXYIL1Hwqvfgw
         Vxrw==
X-Forwarded-Encrypted: i=1; AJvYcCVq/WoLplWiaQoNuFZPJiTRvLi84WkIOuwPbY1j1a3TYgemb9gie9Ez7cVCkQdKIAVUEPtvCGZWcKM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5pSeUDcBpVKwpZogsSmxixWEDru2XS/DuTyO7Q1aFctUuaeeX
	ZPsWNChF3CcHKLwoVQF/VcLFcIufS33gTSVsrPepKJsYE1Xyl9IGI7du9hE4AeI=
X-Gm-Gg: ASbGncsTpykwcwI+jRbost7ia4R12zRgSH4uOL9CAp6DjdzG80nqK2mq3dGLX0lrSB6
	siUHABqJURiVQ/3NaG+sqxaejvG0sIy6bnOiCm1cgjpcGyLsL57AdUjVUVMgbmSZfM1Kmfg9Nvp
	K6bP2Gad5W5dz9NBgYrXrwVosqnvNE1HjiPe9GF4jGqO/fGiMxFlNDnZ1SdVhqln153b0HkH2gQ
	VV4l1bmIF2pSQicJwdNHMEwmzjthVmYuQekQc8zShSaLe9VbwvmjeAC9HjInSS3AsyxyzrXBsY1
	SZ1Yz+LcRESsy9eMehNrqZi6Rwu7sX59/A==
X-Google-Smtp-Source: AGHT+IHuNjq0k6FYk7xK6t2GUtZ0TeRU7XN1ZF4Q/PTjjLe6Nsx4lZ862dPWiqXiDX4zZtdZApQooQ==
X-Received: by 2002:a17:906:2921:b0:aa5:aa3:8c45 with SMTP id a640c23a62f3a-aa5f7ecd65emr765500366b.48.1733383995984;
        Wed, 04 Dec 2024 23:33:15 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260888casm53371766b.133.2024.12.04.23.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 23:33:15 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Dec 2024 07:33:16 +0000
Subject: [PATCH v3 5/8] phy: exynos5-usbdrd: gs101: ensure power is gated
 to SS phy in phy_exit()
MIME-Version: 1.0
Message-Id: <20241205-gs101-phy-lanes-orientation-phy-v3-5-32f721bed219@linaro.org>
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
 stable@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_073318_524836_BEB9ECBE 
X-CRM114-Status: GOOD (  10.72  )
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
