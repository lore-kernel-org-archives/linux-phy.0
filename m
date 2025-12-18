Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 299DDD70DF2
	for <linux-phy@archiver.kernel.org>; Thu, 18 Dec 2025 19:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2DYuZE2diE4sXyaTUtFEB5bXI1/Kei0zar+PNEAYDJs=; b=uf50jG8zX4Svft
	FzKba1LwjAh5skJv2xt2XeMczxATBJhfF2/LJHUrLrMcWIYXKwlpmCBy74K/GnEWQ30rlCqL4BFha
	us4tI0r9J3UvNrv04jJhHzJBDQ6JFESHLSDRNzjDknMiajwe6GmVOIdego/la1mHK7+EXNLbCzeRb
	bLG9kMQsvp7o4iBCpEix/HtwkiTm+P0rn0QY2tIDuEFJkpLJ1XClsAOP4OBSm7ut2p/OExYYLmemm
	fso/rAJ9N26Ouq3ttorDZ6ZlznKd4epx4wOxjw6aybNM/Lj2KFLRfCKF4UmFoioZWvEs+zu36BAkF
	PvxWLwkS/vtfaHiyKi9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWJsN-000000096hn-3rc8;
	Thu, 18 Dec 2025 19:41:27 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWJsK-000000096h5-13Ev
	for linux-phy@lists.infradead.org;
	Thu, 18 Dec 2025 19:41:26 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-42fb2314eb0so807640f8f.2
        for <linux-phy@lists.infradead.org>; Thu, 18 Dec 2025 11:41:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766086882; x=1766691682; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BLxs0lQBx4sta6z6nnKDj4vKVTRti3i1pI2/aCW6qDU=;
        b=O54EkcC5mZ3vjs1K0WK+9pH6e+jZNko3yvqyLOy7N2YSGJ8h91eq21BA3SKLmBlN7v
         EM0Isk6V9qoqAHNbATFKXQv9yk90Ic8P98zfk+qkw30+4jk+yS7Kmw1GFQXjidpZDt9Y
         D1PSYrxxkY8Y5OMoywRo3hE3AVsKfVt5rRUhFq/EjMCuLS3PijZKT0tYlYuhR5XWAuX3
         0SLryrtqhOIv7nS2d3vhMFdzJO+L2N8CZIu0FMeBEIBGFZgQtnZlk68KZV5TgtJGkOpB
         ppfoioiSV3OqgAGhTZOul1H710on4WMGMLDUyd79dzg+Sh5ZFKLYe0J57d0vtHagXh5p
         rxkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766086882; x=1766691682;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BLxs0lQBx4sta6z6nnKDj4vKVTRti3i1pI2/aCW6qDU=;
        b=F76h3q0ry1pk3IBj6xG8NA7BO2qUKqp7UOWD7PSCj0pYORRrMUfBb/Nmq7CcJajCCY
         oAixuPseIleqcG2N4+9k64y0ZEpFHJn20wr0i8eL1w9OXc6TmQ48SiE9+eH4BiSkBl6c
         RFMjKrCpVxfaU5a04ZQV2qkjZvuOJPIMp/bYgs+84cSF3yppgpzvdB0mwcvD6oGQdPER
         Ymzaa6vXUPkqrM+BGFQrPbFdlmNwcM4vSviPGKNuVoFZK6refF7vZUPpKXG8AYV/63NB
         Csc0bz96zkz+6IC+vx9jhay0FWSJ8PuF79DAwcCy52Z5iHxEIgghT2ZNg1pXBKyKVXpH
         /4yA==
X-Forwarded-Encrypted: i=1; AJvYcCUIgeLfMe82PM3ySELk7eW887mxHcX1v4oXAhSQngh/UWDvgxNVn5cjkNbLljKCH7ZVrhnXCO3p8js=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4NUnRo0vAVaGzZmDczzwPjJUQTnhYXfASJQ/oEwlKykaXkdcm
	htQBPQvaSCVCz2dj11SIcEVf0QdG3706OLskxToCD0BDqYp9em807yCD
X-Gm-Gg: AY/fxX5f3kKRktCvPk/Y82XxuPF8251DUi9ED/uUk4wEnlpKHu7NBltF8vELk4WKrs4
	5hVChdCIZ4Z2SCrgmpiKs2Z+tDYw8L9pFZV/VrVW/6M4LOgsHzUpGO333F0mcWZ4iXp8Agrr4vz
	kpvyG23nF/i2Jdv3XS9gDs/+QrV1ILLXQVKc5x/hoSfk6JsLqoclRJAcGxWdi0VKkFJWbuF384N
	OPWhibZ85kS69/OfYpTxhlOQhWSGrXc1b1PRWInFAlCFqwmePwsif1jHXPQNseTYtR+Dwa9dmLq
	qGlu14yfrD7tLD1KUmdvl584zSd7nW4NVfEKLS0kXEhO1P3rR47eNPJUV/d62eXsEShY4xm4LLs
	SVBYiv3CFlkKnn2D5H2fXITsWX8nd//qZsfxfGUledJgux71hugi85qeGNKg4Nei7aaPdCWoNFo
	3XOAh3W/ICTSjNOgeQRvLXJSge9UHNR+OBqC8RyWNPrknpbl6ciXzFOgIMMu8HEJXj1Xia1qi6q
	ZvUxCGllj3x9hs=
X-Google-Smtp-Source: AGHT+IGQAnLgRUsVVnoRwQFGOEHR79qz4dsFP+YsgAFKs+KUs0BWTkYbN/tIazS3ji6D/iA5kpDA1g==
X-Received: by 2002:a05:6000:186a:b0:430:f301:3e6c with SMTP id ffacd0b85a97d-4324e4fdcd8mr637543f8f.34.1766086882068;
        Thu, 18 Dec 2025 11:41:22 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-5.cust.vodafonedsl.it. [5.94.28.5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea82c5csm556586f8f.21.2025.12.18.11.41.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 11:41:21 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	j.zink@pengutronix.de,
	linux-kernel@vger.kernel.org
Cc: xu.yang_2@nxp.com,
	jun.li@nxp.com,
	Frank.Li@nxp.com,
	haibo.chen@nxp.com,
	linux-phy@lists.infradead.org,
	imx@lists.linux.dev,
	Stefano Radaelli <stefano.r@variscite.com>,
	Pierluigi Passaro <pierluigi.p@variscite.com>
Subject: [PATCH v2] phy: fsl-imx8mq-usb: Clear the PCS_TX_SWING_FULL field before using it
Date: Thu, 18 Dec 2025 20:41:00 +0100
Message-ID: <20251218194100.365269-1-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_114125_524644_34F6EDAE 
X-CRM114-Status: UNSURE (   7.63  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Clear the PCS_TX_SWING_FULL field mask before setting the new value
in PHY_CTRL5 register. Without clearing the mask first, the OR operation
could leave previously set bits, resulting in incorrect
register configuration.

Fixes: 63c85ad0cd81 ("phy: fsl-imx8mp-usb: add support for phy tuning")
Suggested-by: Pierluigi Passaro <pierluigi.p@variscite.com>
Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v2:
- Improved commit subject as suggested by Fabio Estevam

 drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
index ad8a55012e42..9458b6e5fcf4 100644
--- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
+++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
@@ -504,6 +504,7 @@ static void imx8m_phy_tune(struct imx8mq_usb_phy *imx_phy)
 
 	if (imx_phy->pcs_tx_swing_full != PHY_TUNE_DEFAULT) {
 		value = readl(imx_phy->base + PHY_CTRL5);
+		value &= ~PHY_CTRL5_PCS_TX_SWING_FULL_MASK;
 		value |= FIELD_PREP(PHY_CTRL5_PCS_TX_SWING_FULL_MASK,
 				   imx_phy->pcs_tx_swing_full);
 		writel(value, imx_phy->base + PHY_CTRL5);

base-commit: ea1013c1539270e372fc99854bc6e4d94eaeff66
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
