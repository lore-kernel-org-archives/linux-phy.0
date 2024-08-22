Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4DE5C52D7C
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 15:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hOrBf6rNpnmzAcR++HJIc5cCspYQD+23jqBQhNAPhZo=; b=qdaCrwI+DS+z+g
	31g3e4/naoCYz3UW51ZZSaE/W7WWBOP2qjLTywccA9dFN79gXUHJ+Aeh0V3N0y462Ay4NNWiCRp6q
	NVNZU4jX8i2iKG5EDdZZkbm9wRNr49yoEnO6u44C7gIiVK38sODPRe5mb55ZLKlqgCrDsKad2jXQT
	gj5ZNzchu2DpifGhq+6zUllg+mpGzIzDSRbIdYZMimB3lFMmTuct8CwiZfJxHol1MZbxACYTlLACY
	USUqiVNMKUOeb5Z9UKR5mmGK8537klKd/JQEhyYwesC9oHdjSkKL6Ijos/rQA6lA0Umk9Dlq36/GH
	QQB/SXdtzgBH8cuyfmLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shA9J-0000000DRqW-3Sp8;
	Thu, 22 Aug 2024 15:54:57 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh9jk-0000000DKq9-0jVJ
	for linux-phy@lists.infradead.org;
	Thu, 22 Aug 2024 15:28:33 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a8657900fc1so155025966b.1
        for <linux-phy@lists.infradead.org>; Thu, 22 Aug 2024 08:28:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724340511; x=1724945311; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w7FkQHIsvgS8tLvmRvs57rTjX/u1Y5CHinD6jgFXzvM=;
        b=Z4v94E9q/A3rhleNV8lf8eQM6+eo3q5FXQ3jG7WFaOn3UL2THQ4i5EjslCP+Gq4nZN
         H8yEv7elCBOEHusCphf7FgeWAQnBqLkKMG2Lr8YobWquP/wWr3ExjHH//u+gxV5kpswk
         FeutF3/DwIyS/tUHQv4l9zHABKeTRXqBjpC5+oE44GclA1YoK6GRupx9FZHfcZ29mxfh
         MqzdpToIkX62HQMbXa1YrKFjNH7nLbPBqlAX6INuLn55lhyylTODXgDzmLHNaX94P+sR
         JOovwjtvVis0NG6BorjlHrraMkyH7/zEvs7XlJJWvF7MvRxDXU3LklZ8L5l+n36Dh2d0
         qfpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724340511; x=1724945311;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w7FkQHIsvgS8tLvmRvs57rTjX/u1Y5CHinD6jgFXzvM=;
        b=imMvhUgqGv4n0s+fghcuKEYr/GNsjRsihQ5hn1lgHhHdB/Qy4/bBNCbt2qQoCfeRJd
         BVEo+YYrji12N8hKaKlNa/QYxNXDFLmpW+lhUoUilwmVRJk3zqzwk3T+0lOdAF4H63Hj
         oNnbDwAEVGJXCjXBOnMt0jfPYnX5/UvZLRyD8J1RDdFpMFknPHihG1O48Z/7nVWSwvcH
         hBM87/9m4plIqNT5/5lkXiCiqe74vJH6rGyEhUI3KKKg1uTtZQcFXdhpFMWw3NmVjHOW
         qC0VwznxdG/gFeDJsMba3TlXZIOwn6/5dkc1MQvF/YDyS/wEjZt0bT7nrGuwxqbO9JPF
         Vt/A==
X-Gm-Message-State: AOJu0Yyr425kQ1+p6eJeQXGRwiEdLqyABI28a9E4JKXbLGwz/IWpkSov
	ZAoBthOw2GyeXhGg1+HvdaH2Nl5h61aNE3+s0SDJyPiNLviwP4n1ydYMNFRl8Ps=
X-Google-Smtp-Source: AGHT+IGPID6PnpNBLXBTXMtHC4bLo5V7GR8HicFGoYSBbUPtn858dZ2vIoy56QGfOFS6q2WDw3Kkwg==
X-Received: by 2002:a17:907:c7dc:b0:a77:d85c:86fa with SMTP id a640c23a62f3a-a8691abe63dmr193992366b.13.1724340510445;
        Thu, 22 Aug 2024 08:28:30 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f484dc5sm134189166b.171.2024.08.22.08.28.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 08:28:30 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	gregkh@linuxfoundation.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com,
	ulf.hansson@linaro.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 07/16] reset: rzg2l-usbphy-ctrl: Get reset control array
Date: Thu, 22 Aug 2024 18:27:52 +0300
Message-Id: <20240822152801.602318-8-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_082832_250890_8AF41DE2 
X-CRM114-Status: GOOD (  16.02  )
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Before accessing the USB area of the RZ/G3S SoC the PWRRDY bit of the
SYS_USB_PWRRDY register need to be cleared. When USB area is not used the
PWRRDY bit of the SYS_USB_PWRRDY register need to be set. This register is
in the SYSC controller address space and the assert/de-assert of the
signal handled by SYSC_USB_PWRRDY was implemented as a reset signal.

The USB modules available on the RZ/G3S SoC that need this bit set are:
- USB ch0 (supporting host and peripheral mode)
- USB ch2 (supporting host mode)
- USBPHY control

As the USBPHY control is the root device for all the other USB channels
(USB ch0, USB ch1) add support to set the PWRRDY for the USB area when
initializing the USBPHY control. As this is done though reset signals
get the reset array in the USBPHY control driver.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/reset/reset-rzg2l-usbphy-ctrl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/reset/reset-rzg2l-usbphy-ctrl.c b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
index 1cd157f4f03b..8b64c12f3bec 100644
--- a/drivers/reset/reset-rzg2l-usbphy-ctrl.c
+++ b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
@@ -132,7 +132,7 @@ static int rzg2l_usbphy_ctrl_probe(struct platform_device *pdev)
 	if (IS_ERR(regmap))
 		return PTR_ERR(regmap);
 
-	priv->rstc = devm_reset_control_get_exclusive(&pdev->dev, NULL);
+	priv->rstc = devm_reset_control_array_get_exclusive(&pdev->dev);
 	if (IS_ERR(priv->rstc))
 		return dev_err_probe(dev, PTR_ERR(priv->rstc),
 				     "failed to get reset\n");
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
