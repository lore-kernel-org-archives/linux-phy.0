Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94B83C3ABA9
	for <linux-phy@archiver.kernel.org>; Tue, 29 Apr 2025 08:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Feo1WLNk4emdYGoleO3uXhyblY4CFb7XBk4IKge0uw=; b=A+0GY1BQ0eN3ML
	xrE+t2y5+yAfk4zuPjB/pKV3qWpTSGJ9yAUZPUAb5A3B4n/FiEjcanNuMJPfbdY98iXdLbvbS9Gui
	yvC8DDKzRJukwArZBz44KHStdfK6MvJ9fLqY1NiT4fYp0eSj2vQ1f7XPeYMSHf88ldKP3UxhsiBLp
	z3p8GQg8YgyHEEhldauRd0BfoE/+a6k+sKESrvn/prXeje7NjYqS7a3Sb9p/oNOtlkI7W64+nHnDz
	Wey98vyfdfgnFEhw/q/kvRZJtv0/5lTFCvqHM/MRRo9f8ryUI+UppmWFaAZWeyhxW1XHaQRZto68z
	uaeHyiYIrlkA9clXJ40Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9ggc-000000090Lt-1QUh;
	Tue, 29 Apr 2025 08:51:30 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9gef-00000008zsq-1sLQ
	for linux-phy@lists.infradead.org;
	Tue, 29 Apr 2025 08:49:31 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-5efe8d9eb1eso5960432a12.0
        for <linux-phy@lists.infradead.org>; Tue, 29 Apr 2025 01:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745916568; x=1746521368; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iOHk0EcvHS1m6pI1CWGPH0pDdJT4Hc9pp689arLCCW0=;
        b=bwQRGSRdcJ7IzLi9KDzbvFL9Bh96w7tg6GabEoHW+D740Y8Imckg/X8KVYRDRGaq4l
         fljmZHgL+Gj2Pjpu/trZTlu1+HWVd1FJALKo1CNamgl7ePy0dLprN24mP3ueUwd2tIjh
         Wwg8oy9VIZlgxG4yiR+VWdwpQvfZTWOCTLAaDpi0gS2dduUZMnBH1ZH+AyY77F2i15/3
         fueBvfKNVhvBaai5eJWI2ynDitUORT2o4ZP43d+yjl2U9g9aUMO0PEtFf4sw2boRyyvo
         5lw9Gr8xjJb4lrodN4Be9Qr722sRvB9OvePwtqpI3ox3r33fOQCdjYollM/1q7zK37W3
         wRjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745916568; x=1746521368;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iOHk0EcvHS1m6pI1CWGPH0pDdJT4Hc9pp689arLCCW0=;
        b=qkZgt/E96PIdUYwntXztwgIJgbPf6Wm+TyzXovCAeHtlghAlxVQJbBYWAtcwHsCRAj
         czfElQtc+WUoITUVLq4mKpo5BXPsxNlhFpgFUq+dLCfzJiq18EShkH8svPV70+McMurV
         UZ0gbq8yIGPmsOWiC8xPc0vFiwScKxKq5TaNVzFYqaTfg+HYMmWxR8lL6TOSLRSyXmoM
         /KB3uBLclsXPqBykkkvQ/DjDunFDb2a7/gAz/LHzza+UUdxRKvG5sZFo5CU3A2NQ6741
         /E74zJ6PCx1vErQV+iR/JXdd/1MYXWdjJzwzHftNA7sbbJyUH9mDN7pa+wiHKws9f6Hu
         vjzA==
X-Forwarded-Encrypted: i=1; AJvYcCX+F9yJHVrYIL1WmjJDf3RUcbJ5ouOrwYzR5e1w0NreDZIemsrehi64meWqliCZLCUmsQR5lqnr2bI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwiaCaiIYDWTnhUnxvl8aIxUQhEdmfukPwPQhg+Pqc1z1Ea0hCP
	PkCsCxqQLkYyVLENIKdpj4HmpkprooVYyjTWCpIrv9nNkFpbnUYHoZ800gWIg5bH8HqZSn6Bd+X
	RgFY=
X-Gm-Gg: ASbGncvG25ziuxTNccrrhiG0ojjkYzt3k3xtou+X+P44VTyfXQl+hj4fpLgy3H+AkuT
	g6XXfTVt2n/VXeWxX6T941z2jL2M0GagCoLYaX36CAUhdXwCo6PS0Jea6MGkjyhAdpAzlvSH2g0
	Y6lwEFAAZopo657EbRZJcka9fMZnlzY2diB8mK693qzc5Qmo1s6t9B0evGOzFTNwheHDcyX1AFK
	qw9HfTAevsk386uPrWn6XMbvYGSG/FRfrdz4VeIWrAKeBiUpPFojoW0wcf52xD3uxJbhbWYXGZQ
	aPEFMo3xLHio8SWEvyzZqL6eaibs0x/ZAijUXeJaT2SVJwDIXNIlWU6dFV6llBv1R2H9vRiTaIN
	8jfRKmfUTxEeg0Vh+BkHilahpI9gijigkyuc=
X-Google-Smtp-Source: AGHT+IHXapYhYNQRO/RaBffrKQEMjGSVNPTmRkoaa654MIwJC23akNlWVNoXM5sb6eltRo6RavJmhA==
X-Received: by 2002:a05:6402:51ca:b0:5e4:d52b:78a2 with SMTP id 4fb4d7f45d1cf-5f839b22e1cmr1914271a12.15.1745916567896;
        Tue, 29 Apr 2025 01:49:27 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7ec0e6331sm3546619a12.78.2025.04.29.01.49.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 01:49:27 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 29 Apr 2025 09:49:24 +0100
Subject: [PATCH 1/2] phy: exynos5-usbdrd: fix setting LINKSYSTEM_FLADJ on
 exynos7870
MIME-Version: 1.0
Message-Id: <20250429-exynos5-phy-field-prep-v1-1-39eb279a3e0e@linaro.org>
References: <20250429-exynos5-phy-field-prep-v1-0-39eb279a3e0e@linaro.org>
In-Reply-To: <20250429-exynos5-phy-field-prep-v1-0-39eb279a3e0e@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_014929_486472_16ACDB43 
X-CRM114-Status: UNSURE (   8.24  )
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

VGhlIGNvZGUgaGVyZSBpcyB0cnlpbmcgdG8gc2V0IHRoZSBGTEFESiBmaWVsZCB0byAweDIwLCBz
byBpdCBzaG91bGQKY2xlYXIgYW55IHByZXZpb3VzIHZhbHVlIGluIHRoYXQgZmllbGQgYmVmb3Jl
IG9yJ2luZy1pbiB0aGUgbmV3IHZhbHVlLgoKRml4ZXM6IDU4OGQ1ZDIwY2E4ZCAoInBoeTogZXh5
bm9zNS11c2JkcmQ6IGFkZCBleHlub3M3ODcwIFVTQkRSRCBzdXBwb3J0IikKU2lnbmVkLW9mZi1i
eTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KLS0tCiBkcml2ZXJz
L3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlu
b3M1LXVzYmRyZC5jIGIvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYwpp
bmRleCA2MzRjNDMxMGM2NjBhNTBlNWQwODY5NjQ1NTA2YWIxYjY0ZmZmZDRiLi40ZWExZmFiZDRk
NmY5YzlmZTQxMmYxN2Q0ZDI2YmUwNzcyNGI2MzYxIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9z
YW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCisrKyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5
LWV4eW5vczUtdXNiZHJkLmMKQEAgLTExODYsNiArMTE4Niw3IEBAIHN0YXRpYyB2b2lkIGV4eW5v
czc4NzBfdXNiZHJkX3V0bWlfaW5pdChzdHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5ICpwaHlfZHJk
KQogCSAqIFNlZSB4SENJIDEuMCBzcGVjLCA1LjIuNAogCSAqLwogCXJlZyB8PSBMSU5LU1lTVEVN
X1hIQ0lfVkVSU0lPTl9DT05UUk9MOworCXJlZyAmPSB+TElOS1NZU1RFTV9GTEFESjsKIAlyZWcg
fD0gRklFTERfUFJFUF9DT05TVChMSU5LU1lTVEVNX0ZMQURKLCAweDIwKTsKIAkvKiBTZXQgVkJV
U1ZBTElEIHNpZ25hbCBhcyB0aGUgVkJVUyBwYWQgaXMgbm90IHVzZWQgKi8KIAlyZWcgfD0gTElO
S1NZU1RFTV9GT1JDRV9CVkFMSUQ7CgotLSAKMi40OS4wLjkwMS5nMzc0ODRmNTY2Zi1nb29nCgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
