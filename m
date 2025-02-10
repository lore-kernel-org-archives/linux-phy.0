Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AC4BC0219E
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 22:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQ7iqIk+fniulshAjGckHGzsHnSk+9Cy8L+cxrN/WlA=; b=CnaFT6kHoXqJkv
	/busKvbjHoDt3tNOvqDQRiOBUQGn7CZ36nO9YNAFkUvQ/j5gCsLUOAWYrMePck2sBxDwg0V4TwLrm
	GxJayog4hkqkN/8rPx7Ai3Zf6P3E+7OjDBZ9mWRzez5ffWcbTchQb6+E29LhoiI8FcH676tvQpi32
	Ri0YJcqMdHS+ABQveN0jl8L7AUuTA/lp3NMc5KJbqyhUhhqeVw/yYZdXOIU6z39scUF3U9m7sHCnS
	MlFco+CNO6jXIZ1x97DKC1IYmgxGwR8dIhUvQzkXyApMvpm4IPz/X+oJ/Ov8vVwdFYFNBmauJrgix
	AzYDcPj26GHvCvl9jo/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thcgl-00000001kSc-3jQt;
	Mon, 10 Feb 2025 22:55:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPR-00000001gKC-3Pxl
	for linux-phy@bombadil.infradead.org;
	Mon, 10 Feb 2025 22:37:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=dI+YClki4Q+OM8j5JXLpkAENpDyF7Cb60VCru1h+I9Y=; b=Mv+aKgVcZkUgGPajbF6VzM8jGk
	Eb4PSw2Q2nwdf8u8oqSL+jagkuWGBRTBCT/3yg+K5KM0KDIAPyYvDUDBcyxlZdFNZ5yFW+XvUuA2l
	j2YZGrbDwe/DyWT8p+OScP85GxMdOVqaleYvQy9436e0QHbejjVAPT/M+nNmvWNSMPaYECyCRzDBU
	o7JKh1C2k7TZRNrQSHDg4c7KScyry7U8Nly7lSazxyS1RG+JfhOtH8afHeqqpe6iYXXW6Ykl6j5WD
	R4W2RUyn+zYIwM9QB1Q2QjsIaApoaJK0vNQKEAWbvCYY2u5pl+k1VNmvhL5scAB8pqlMGbYwHtMSy
	eUt5eIDA==;
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPO-00000000KNa-3v0O
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 22:37:44 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-3f3a6ee569cso483968b6e.0
        for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 14:37:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739227059; x=1739831859; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dI+YClki4Q+OM8j5JXLpkAENpDyF7Cb60VCru1h+I9Y=;
        b=0Rqcay4ojEzq0OjASFQryFmbx3V3rmJmvCj3cKyo38wNxt9uQFvZck8M+NmrYwI8yO
         J9YH1LHs+e/kufnp3WP0mYiZ87t3/xQlo/iQ1EQMdxymFg1SpLFp8Q4M61N4QBvhL4zb
         h5fbGNuhtn9dsVTz2p5RIH77u7hRP3dNBj6nOyvbu4l8boCrt0dj/cY5N8YNPRgkYOiM
         uTH8B4baOSMFGKjLDC0YpU/QAswjEdR2ukOgMgdnt/WF3qV//wsL2cbRNrHhSSKgJMCI
         qWwHbgEVmDm4l/nM9WPUsj++9HCDXhqOXsWOT9Ekdfj+O9fH4Z7f4IARJlpRxzaR6y/Q
         RI7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739227059; x=1739831859;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dI+YClki4Q+OM8j5JXLpkAENpDyF7Cb60VCru1h+I9Y=;
        b=rilxEHTgOmqs9GiZNECxDX0Kraq79GTyFfiEm3NT+J4CLU8l2P79twvgnuZDcgWrsB
         e8Ub7tASkr7v+Nzp9Xs+tq4ypiv/dXXvKlCOKBaTPtFj+vu+1qWhMWg6Pi7GvRrv7W0O
         rKByRig+Hc+Vfa5Au5h8yQclj/3ElQsxP16fspI2stTYcRqo/fe5rtITGlYHgvPQULLQ
         wJddUSYOeneQyKn9XKtwPQm2pH/4W5dkxHdIS71wiHlJ+2kknI/4pg+60UKZx5uhnm7g
         9EPARNOZxLyDLtNIlZDv65cNtpdI0liEtEwS6T+DjHLYiZ8Eh+hJm33+q12ptx8mjrgG
         A5Ag==
X-Forwarded-Encrypted: i=1; AJvYcCXfOix7YiXvRm+HCfpxFZWX9viEZfddv4HEq5WCgTG677xMun5JGW1d7/hZkLp5axAaZzv2R3P6e9w=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz1DYd3ILQq3TEjcGlvwz2HMSKrFjsQaO0RX24u4QT9GdOtXH/P
	Vi4zBqjnj/qPbRt+r22P31p518RiiOdYlNKU9SYWjLdOQUEhC1HXMB1o2GyJT4Q=
X-Gm-Gg: ASbGnctegoASdSX4fYmIE4N3+iWbQy8FTwd5huE8suAPRQAIC67gaovy9jJ/gAMAtz5
	Z+XsxK25pB7EgcUhVwxhQ/szjVLfoJXNoPOKm8g46Fzp9GWorbFFjr+Cm+ToNlqAQUqBxqnDWKN
	VRYsesusO09g7YXflEnsUcoPhBOqEWLqNAK5UFgIGrQIZ/KbcWzy2Xr9WPb8yoZXkJU88Tb5B55
	kQjNKkp9oD0rZNvaX9xsEENpPhUUEtmXxDQf9OJcnlwJn7sm1StN+ui7tddUh1gnqc0fiCyI2Mg
	HPraT4i/3O7vvidugDOB7lqafH+a9670/NgYrYPNsqUQrHQ=
X-Google-Smtp-Source: AGHT+IFW6c/bCwKZFJx1mUCSPW7GBmt4Y2h9+oGTyfDUlc4EaqeUGtPptBQHkkXiE7A01fG2q4Y7jw==
X-Received: by 2002:a05:6808:3095:b0:3f3:c370:4d65 with SMTP id 5614622812f47-3f3c3704f3cmr548358b6e.20.1739227059360;
        Mon, 10 Feb 2025 14:37:39 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f389ed1ca2sm2521820b6e.11.2025.02.10.14.37.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 14:37:37 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 10 Feb 2025 16:33:29 -0600
Subject: [PATCH v3 03/15] bus: ts-nbus: validate ts,data-gpios array size
MIME-Version: 1.0
Message-Id: <20250210-gpio-set-array-helper-v3-3-d6a673674da8@baylibre.com>
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
In-Reply-To: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
To: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
 Geert Uytterhoeven <geert@linux-m68k.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
 Peter Rosin <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org, 
 netdev@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-sound@vger.kernel.org, David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_223743_090049_2C91DCA7 
X-CRM114-Status: GOOD (  12.75  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add validation of ts,data-gpios array size during probe. The driver
later hard-codes 8 as the size of the array when using it, so we should
be validating that the array is actually that big to prevent possible
out of bounds accesses.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/bus/ts-nbus.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/bus/ts-nbus.c b/drivers/bus/ts-nbus.c
index 2328c48b9b1260e805c631f2aa7379d620084537..d3ee102a13893c83c50e41f7298821f4d7ae3487 100644
--- a/drivers/bus/ts-nbus.c
+++ b/drivers/bus/ts-nbus.c
@@ -48,6 +48,10 @@ static int ts_nbus_init_pdata(struct platform_device *pdev,
 		return dev_err_probe(&pdev->dev, PTR_ERR(ts_nbus->data),
 				     "failed to retrieve ts,data-gpio from dts\n");
 
+	if (ts_nbus->data->ndescs != 8)
+		return dev_err_probe(&pdev->dev, -EINVAL,
+				     "invalid number of ts,data-gpios\n");
+
 	ts_nbus->csn = devm_gpiod_get(&pdev->dev, "ts,csn", GPIOD_OUT_HIGH);
 	if (IS_ERR(ts_nbus->csn))
 		return dev_err_probe(&pdev->dev, PTR_ERR(ts_nbus->csn),

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
