Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14B16EE49A4
	for <linux-phy@archiver.kernel.org>; Sat, 19 Aug 2023 03:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UUVwaMpHxL90cBj8C5LypsZ8QByLzteszxkDudZmLGA=; b=tXoLEbBl0Fyj5p
	V0oPudQofsx1/NLOA2Tg1hxet/pdul0GeTaHzUEABckOyNiPYHcd7j/QYufsoB5nlul1zY4sWOaZb
	zCoxHypeGSqoMQF/i/4Ku5DfxWN+rtYHlbx36L+fbuCEOMfBVpwTrPi/wghrNZSow1ZrfESZDAPHL
	jZ2UmgxPmmx0KgQgspd8hvq57iVy72OrsKNmlS/8dTjR8NAOsG7vKIT4xGLMF5iJYxP1ArgAmbNND
	O0hfSNNRgJwnT6MNm25LKGTsoIM9om6hivdwLSY1l7kWLPlK4EQKKYNQB2MNi96FJQCtyzLhOwY40
	BATwEYeiB3F15NRykMMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXCTC-00AKiF-2U;
	Sat, 19 Aug 2023 03:17:46 +0000
Received: from mail-oo1-xc30.google.com ([2607:f8b0:4864:20::c30])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXCT5-00AKdx-2g
	for linux-phy@lists.infradead.org;
	Sat, 19 Aug 2023 03:17:41 +0000
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-56ffe7eee6fso249367eaf.1
        for <linux-phy@lists.infradead.org>; Fri, 18 Aug 2023 20:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692415057; x=1693019857;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wz7l2Nt7KOsakojMIBUT2YVYRMmwVU4JH/swQRaBmqA=;
        b=mYshb+Rn/3oQMH2VIbVz1A52sXeo6UhZTI9Ci68KggWZXvpTtBDlTcTm0Zb9Rdi61i
         sypgYsqCKqH901t+31x5FGrwLfNby8AhYS9U98qv78Dan/4Px+cVwfmWj1wl0rVRaKsY
         B83noMDKu+V2FpxP4eAcvyy3CkP/cExFyRgtoMjIgPFXEsNS6pNgVITs942I980UNXU3
         v/cX9Fiwp1lRO6TmBHY4HVGMDf5j2a34VRDIZwOZXiGGdqrhxgs57zJTwaBdVotwJTAp
         WA53bknQp1yVohelRcUMrcmAE9Ys5San+fs+rdiVmiR8XQHuUzBpY6yBZr1CtwjSYNN2
         HWow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692415057; x=1693019857;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wz7l2Nt7KOsakojMIBUT2YVYRMmwVU4JH/swQRaBmqA=;
        b=kcXlZCYrJsVmKgdOrLCpwC1MlyyuhT7yJpUQPW0TYBM1roqrFhMcWW4sfZL7baZtmF
         WbprgeJbIiDZxNSF3SzXjYw0a1IJ6unOHdzM9327kkgXoozhYuQHXfb+uIHrWobi5ea3
         15u5lHp02+05n96XzkqGi1BUmpJCHVlMXlSL74hErVonrR2ENYLgkHeyQ64fs3xscdFF
         EBVmUdl+uinO3ONrqbW1G/u6z5slTH/ixsnCvVemY88O/Vvx9nbhEue1fawT9yBJP9bN
         P2RlNU/UEymZcC1Zgiw3xO141yTEcwoyQ+fbyjHSXLPqgBVCpUibkqhT0mC+xlV8OeZm
         6Hnw==
X-Gm-Message-State: AOJu0YzvBn5amdMdvrZ2GJJwTvSHUosh85DRtHDpNoB3Zq8YUxUx9UUN
	s32coUxsLLnvydGRAjSoH679YQ==
X-Google-Smtp-Source: AGHT+IEHWIhbOpE4bIXnVimEwmLiWUBgqMQ3a5vV0u2jZL1ABZYcOvaZH4EGTDEVIcZmmf2p8BUZqw==
X-Received: by 2002:a4a:9c5a:0:b0:566:f763:8fb7 with SMTP id c26-20020a4a9c5a000000b00566f7638fb7mr1434181ook.2.1692415057099;
        Fri, 18 Aug 2023 20:17:37 -0700 (PDT)
Received: from localhost ([136.49.140.41])
        by smtp.gmail.com with ESMTPSA id p127-20020a4a4885000000b00569c5eadf15sm1505569ooa.26.2023.08.18.20.17.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Aug 2023 20:17:36 -0700 (PDT)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: JaeHun Jung <jh0801.jung@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: [PATCH 5/8] phy: exynos5-usbdrd: Add 26MHz ref clk support
Date: Fri, 18 Aug 2023 22:17:28 -0500
Message-Id: <20230819031731.22618-6-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230819031731.22618-1-semen.protsenko@linaro.org>
References: <20230819031731.22618-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230818_201739_871521_AF1A8BD4 
X-CRM114-Status: GOOD (  13.75  )
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

Modern Exynos chips (like Exynos850) might have 26 MHz OSCCLK external
clock, which is also used as a PHY reference clock. For some USB PHY
controllers (e.g USB DRD PHY block on Exynos850) there is no need to set
the refclk frequency at all (and corresponding bits in CLKRSTCTRL[7:5]
are marked RESERVED), so that value won't be set in the driver. But
even in that case, 26 MHz support still has to be added, otherwise
exynos5_rate_to_clk() fails, which leads in turn to probe error.

Add the correct value for 26MHz refclk to make it possible to add
support for new Exynos USB DRD PHY controllers.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 drivers/phy/samsung/phy-exynos5-usbdrd.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index 1ece4a1a1a6e..41508db87b9b 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -30,6 +30,7 @@
 #define EXYNOS5_FSEL_19MHZ2		0x3
 #define EXYNOS5_FSEL_20MHZ		0x4
 #define EXYNOS5_FSEL_24MHZ		0x5
+#define EXYNOS5_FSEL_26MHZ		0x82
 #define EXYNOS5_FSEL_50MHZ		0x7
 
 /* Exynos5: USB 3.0 DRD PHY registers */
@@ -244,6 +245,9 @@ static unsigned int exynos5_rate_to_clk(unsigned long rate, u32 *reg)
 	case 24 * MHZ:
 		*reg = EXYNOS5_FSEL_24MHZ;
 		break;
+	case 26 * MHZ:
+		*reg = EXYNOS5_FSEL_26MHZ;
+		break;
 	case 50 * MHZ:
 		*reg = EXYNOS5_FSEL_50MHZ;
 		break;
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
