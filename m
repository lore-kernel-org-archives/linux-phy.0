Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06050D6E2CA
	for <linux-phy@archiver.kernel.org>; Thu, 18 Dec 2025 17:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m9OZrj6gaIG52OgryCXJXGskaju+Bk+8fDf3xutHCMw=; b=SxxlM91jpkokV5
	a4d4Kv8IpPYvGQ4adgaVNKTrU94wpjenDLKdTKOYEWcNvYyPsoO50/H3kHvJwuBaVzRxiOY1pO2ij
	sqyr3rjgupn+ZSAiuCogHjTtrRhXs7LVGoHY6EluUJJhAy3GvdRfWLZ8MXDKc7jGAtKNuH8aVRLit
	EoiejGQXFTmqEkUA+ymd1e/HoUr7Tlh0ibBI4t4sfri1bBCt+ZWbhF2VU9fSNLK8vo7mNcViwYi/v
	xBncpIM9/mVHxp4Kzf1FSPGI8FTnSiFQRLEfUqREW50MFQdv8skoV2WcdJeRj0/f9pJmGEkVmhmAf
	CkIcL2+slRpBvhPNGelA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWI8i-00000008wpK-2RSJ;
	Thu, 18 Dec 2025 17:50:12 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWI8g-00000008woW-1kNk
	for linux-phy@lists.infradead.org;
	Thu, 18 Dec 2025 17:50:11 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-42e2e628f8aso368279f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 18 Dec 2025 09:50:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766080208; x=1766685008; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AVw7T5bcH3lvfv3rJWK9YzPen8SSd5iHLxvK3gngGo0=;
        b=PLnE1sVRKniedKbCI4kSPkCaAuOLsvWxt16bqQ5iVg1mMKrC5uKBlQ9JxbZKAI5MpG
         Xcpk7ay4+8Jd+YSb8E/n7soGW/jjliiKi91eOXEFQzk6Mi1WXzkmhNBgZpAmFO28P8dF
         qZpne0nXACyDFNP8PYGIFyVCJ0Q3XZNsTgcGww69fG9BElH9onXP4L7QL4JAqnxIIWqE
         NYv2ZZiSSxmv/yfo1Qj6SDQKtEXKG3vBd1drSkc8Gh0xR8iPO9CMOjRYnBvnJ4VMOWBs
         rP+mgnzFvEq9ktZl2eKF8Tp6LsBHEB63lx1WO1Vd78XgWuLErasSb2iKdZ/oLhu9+ZGm
         9CDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766080208; x=1766685008;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AVw7T5bcH3lvfv3rJWK9YzPen8SSd5iHLxvK3gngGo0=;
        b=uPJF0yuLD5c1MDyIyy14bcjYpK1Aw4jB902nnDM5bqSVBAXQyiS5hl/yKgIA0wOYpN
         UDgbd9W/M7r27HuGQRkQiLeI3mosu7Oc8KKwQq8z7gBrLzSQwVHUGkU23VWUSsQosIwe
         XIwfKqJ8iEn0qJoQAZTEtTp1bTRuaYwcQBogw5EYVq4CmKJIjSwhTFavsSJj/7pfSltc
         csXGP4J934bSlpD0tu99Ny4sgyweD56oGFMmrT1t+OCu0l0wBtyE/SYI532ZhsFk+M8n
         0HrnCn1l195g4fU6FZQOwreUHvQf+/BBwALSbbTJ+IiyIbdyP9kcnX+Qkd5p+7RLuEZZ
         nJkw==
X-Forwarded-Encrypted: i=1; AJvYcCVZaL3Or30tpdDb1N+BsZzolO3F1rB6VsiSfaf8R8RQgoHgHhtC/UBKlRabGInYtNulB36MyjZGu4Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/RRopdd9bhLkHsU5x/BqDLmRQAN+B5Nk5sVyHW9V05R0aS/T/
	4lif5E+ceBDuTQ7W2dtEtTzwuH2qnR2NP674Q4LVmwGrBxkUOLidrU3c
X-Gm-Gg: AY/fxX72C+w/21xVRetReO46yEJLbwphHXtHx0UEg9syYhwrpAJPvYQi4uWKr1fmN4k
	MJu9IovyA+3Zq0kXxLPc33+XDdRi0xuhqbGjczOpec5609Je3PLAmr5Y6ONaTsofTd3oM+/lWRx
	0TFxkSRYvGvqE5NbTD5ifpLUF6BNSeKZTp6YHedNns/OSvq8D5jcdYrEW1QK2NcGGXuABUm/EhM
	+gg3Lt+GFqc05LCFaCfDZDhVQakJG0UaNKCs5FKwGuDN/Jks2nV8z2e2OETIiV0XPgqOfT7jQ5Y
	Yn5jVT/3bLaRlFFwephkb9OWjBXeEJ+Wf4+Dkl4m46ci3KiKiEUSB2R6sTtDnS+iSlO3FRzdiAi
	UWyVgue0htAL8rPebJDHjAHkR01mtlBj0kSrOu0C8+pMk6q6oX/rh9LAxlukJ7WTDycgIAZDcYD
	PCxrfzCaYMV7rIBTq1Xqsa/YyH+FtE47NGureXA2RneZrMKvzA9XapaB0zEH8w+7OqYQcgOYh+B
	kw2YTgz/X0wUsDtVYZQm1XaHw==
X-Google-Smtp-Source: AGHT+IHkrVsVPpnhIf2cWnEa+19MOkN09a76xidWg9x92oZBtd32naBG20DJoni8nBJ/zdrSoqP2Dg==
X-Received: by 2002:a05:6000:2886:b0:42b:4247:b077 with SMTP id ffacd0b85a97d-4324e501629mr374640f8f.41.1766080207883;
        Thu, 18 Dec 2025 09:50:07 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-5.cust.vodafonedsl.it. [5.94.28.5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea82c5csm92552f8f.21.2025.12.18.09.50.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 09:50:07 -0800 (PST)
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
Subject: [PATCH v1] phy: fsl-imx8mq-usb: Fix PCS_TX_SWING_FULL register configuration
Date: Thu, 18 Dec 2025 18:49:20 +0100
Message-ID: <20251218174920.359282-1-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_095010_470877_0496CCD2 
X-CRM114-Status: UNSURE (   7.73  )
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
