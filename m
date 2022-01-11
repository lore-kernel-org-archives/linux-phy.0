Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3310C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jan 2022 09:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1KpVkp/bhqnib1ojsbpgVjl5/qV//Eam2wdRDcrN/AM=; b=sIZE4AgaeYhVCi
	Of+QWsIVz9artlUmTFOwFXOvSmOCRIuRzexcHB+t+df3MaFRNJV7Z6exkYDAs01HASVPa/eEKZ7dS
	Tzw+78XjWJmemHbqOQQYesGgih2AGZuf2ekjzknPm1Mc4qsr3vxwR6GXTOu4DLDcEMiY47rN2e6Zt
	TzEoiRUMSm2het+qz+o/7OnIGwYxDCH48ZyO8KHXZvMJJpko5mJ2IXDNTaOkls0wibLTEnYafEYMU
	+KlprArYE6TBN9xAsuGN4k0mC4sVsEuTExyISmrUV+Ggfb+NjyYM9Pn38Q6eP68dcKjkcPjqHBpoA
	3Ew8kv1s3DApUJPdAORg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n7DqP-00FffM-3i; Tue, 11 Jan 2022 09:53:33 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n7DqK-00FfZm-Ng
 for linux-phy@lists.infradead.org; Tue, 11 Jan 2022 09:53:30 +0000
Received: by mail-wr1-x433.google.com with SMTP id l25so20991522wrb.13
 for <linux-phy@lists.infradead.org>; Tue, 11 Jan 2022 01:53:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A+i9WMf7INTV7WCiMlaX+eZZQolId/EOXyuyr4T+wZU=;
 b=X/P92XWcAUFvR3YEqhxSTn9r+eVg0V0NdBO5apYmzV/a7t25cEbaojIT38kHdrpG5O
 ZvKQCC+gg0RrRpkxbOTwei1qDh3oDHZ9wh9CzqQBvngfvUKTmt+dNSVL1oHFZRhlgI1I
 T4nVsQ8iPQJSsW1UY4HR6I4e7wQIAGMRRJ9YT2c779CbPuwsz/hc+2vtnKTtbRCO5DQt
 2igqhJqekzn1rAwGdqWMW26X6EdJx2BGy9EkTbhax9IzB2MIa1ceUpkWRBBx3OzpZuU8
 bT05pVhBMmE7RqUK3B+VsexoV8eBa+ENdsknN555IDZY0qcseTdv+Ulx0AmEbkQqRAsv
 ClGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A+i9WMf7INTV7WCiMlaX+eZZQolId/EOXyuyr4T+wZU=;
 b=oxr56p32gVsEWfh/I0oIgZ8hT0NGys/9EWDpFqtzRwmoKhEloTFHqgYffJf1JDWUIk
 Wc+VZHPj40BHM7EWX3w2ll6Jlw6Yg00wm2vKXg4EcyTRUzcYtmegRRKXRjwSTAet9OgJ
 bW0acpn3LyWDvgdRInHWyK5X/y6DMHF3sHVqLysIXuOIN4+1H3cVcE9V1/C4kxvRz069
 HVamtP+N1e2TsQ7LG0T1jaxMzSdxTzV73uf1tLtK0pqDkByBx42qjFgjUzOzMItW3SEj
 /LoFlT5M6uenZiLNt8CZ4rSCOQJ2pu5q7SFA5I58wtIOcLCk46p9RxAhbuqN3+U3LYzR
 t4vg==
X-Gm-Message-State: AOAM531vG8Lmfj9457wAbYSHsjokgkx/E0t86nkS3XmO7AfFOT4H730F
 UqN4hOhbMw8vO55NMTFWfef7QA==
X-Google-Smtp-Source: ABdhPJwh7rSklXagPFgtG7DKSa9/4llHAcDXK4XwiB5AjfRTsyZsnMgjJY7WB4LdEMyqAuoUtnxN3Q==
X-Received: by 2002:adf:e3c9:: with SMTP id k9mr3064155wrm.193.1641894806884; 
 Tue, 11 Jan 2022 01:53:26 -0800 (PST)
Received: from localhost.localdomain (203.247.120.78.rev.sfr.net.
 [78.120.247.203])
 by smtp.googlemail.com with ESMTPSA id l18sm1248916wms.24.2022.01.11.01.53.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Jan 2022 01:53:26 -0800 (PST)
From: Amjad Ouled-Ameur <aouledameur@baylibre.com>
To: kishon@ti.com
Cc: Amjad Ouled-Ameur <aouledameur@baylibre.com>, p.zabel@pengutronix.de,
 balbi@kernel.org, jbrunet@baylibre.com, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 khilman@baylibre.com, linux-phy@lists.infradead.org, vkoul@kernel.org,
 martin.blumenstingl@googlemail.com,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH v6 2/3] phy: amlogic: meson8b-usb2: Use dev_err_probe()
Date: Tue, 11 Jan 2022 10:52:54 +0100
Message-Id: <20220111095255.176141-3-aouledameur@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220111095255.176141-1-aouledameur@baylibre.com>
References: <20220111095255.176141-1-aouledameur@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220111_015328_844293_DC970918 
X-CRM114-Status: GOOD (  11.60  )
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

Use the existing dev_err_probe() helper instead of open-coding the same
operation.

Signed-off-by: Amjad Ouled-Ameur <aouledameur@baylibre.com>
Reported-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Acked-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/phy/amlogic/phy-meson8b-usb2.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/amlogic/phy-meson8b-usb2.c b/drivers/phy/amlogic/phy-meson8b-usb2.c
index cf10bed40528..77e7e9b1428c 100644
--- a/drivers/phy/amlogic/phy-meson8b-usb2.c
+++ b/drivers/phy/amlogic/phy-meson8b-usb2.c
@@ -265,8 +265,9 @@ static int phy_meson8b_usb2_probe(struct platform_device *pdev)
 		return PTR_ERR(priv->clk_usb);
 
 	priv->reset = devm_reset_control_get_optional_shared(&pdev->dev, NULL);
-	if (PTR_ERR(priv->reset) == -EPROBE_DEFER)
-		return PTR_ERR(priv->reset);
+	if (IS_ERR(priv->reset))
+		return dev_err_probe(&pdev->dev, PTR_ERR(priv->reset),
+				     "Failed to get the reset line");
 
 	priv->dr_mode = of_usb_get_dr_mode_by_phy(pdev->dev.of_node, -1);
 	if (priv->dr_mode == USB_DR_MODE_UNKNOWN) {
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
