Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6E8ECCFA03
	for <linux-phy@archiver.kernel.org>; Thu,  6 Nov 2025 14:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8dSJtxNHpyYBngD8xdQVsmxR9E27OFGfreF0KGRrSxI=; b=0ZDo0Ue4A7zdhU
	svpiTD1HWfAxE0MReKDTb62liIYILwxbT7p5rY2ccOUCKlGD9n52/ldg9GF+MO0SMbaoijKBM6Vgg
	4EOOmB5UJhcf5nGK7DzLE5VxvBfu9JPeJom8q1unkrfK4gwI04vgKPVWuJOcxOPIn+DPMtk6fDYo2
	viLYHi2QJrNrXqIpHY47dYelBw1QJhe7kx17oFkIH7+qFLchGn8SXVLpMMb1+qs9Ur05Hw9F+UlBu
	VPxv7mpI7IrZuSfEGyW9r5ogIjWoBSjAsa23G7He9auMfnDW0NhN9v6ioRAjj36MBqUU+VMVE9vuQ
	VkLMcGFNciq00ck7sbmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1BW-0000000FiIU-1JPc;
	Thu, 06 Nov 2025 14:41:58 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1BS-0000000FiHu-2zFg
	for linux-phy@lists.infradead.org;
	Thu, 06 Nov 2025 14:41:56 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-47112edf9f7so6258035e9.0
        for <linux-phy@lists.infradead.org>; Thu, 06 Nov 2025 06:41:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1762440112; x=1763044912; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XLvBreGMwkIXqaZtfvc2Qx+LalMucsk2m3rxCN5bCz4=;
        b=MR7BvO56xcyHtNRAnx/uovnVP5g9eciaEUX5QmwxCZ7MwPmHZtCz6VNyW2Q9JZuEjR
         paWxWHqj2X2G1o6+bHG8M5GI8UpBfZtOFIM0AgYoOMhclKuwvTKRQvOlZ+LG9xSUFBQy
         fsoCQaAzl8z0BHSKFd6sNbNbTzzE999QAU636kzp9YOLnxlBcrIbtsHLeOWd+Vb8v77l
         11YhtAsecMnQHD8R7JivyXeLlCwLzKioPePiDLP1HoSa46vXk8apvCZHdy7LkmGQY4O/
         PZNjAveGkQt6qUlx/+Hr/t9RCTS14BCyfvu4xsrVzFeQK6gEEhjdHe44yxEzAo0yVDgk
         LKUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762440112; x=1763044912;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XLvBreGMwkIXqaZtfvc2Qx+LalMucsk2m3rxCN5bCz4=;
        b=ZWpz6H4TMXmMT8iS32VN3QJ3LkGdAeP3p4uBfFyc6WtPojlAeW66C+1w94CtIvtZkn
         TCAzCeaXOReLBmxZ8DV3+ZIP7K5YyEnHRi2n6VVG0pLOMM/+0qlvin0lyzj1fuO8XNrj
         GrMg3CLoewKCzBdepOdz57wcwhwREsVbl/Kz+cUTvMRDaCN0aDZIeWY4/rko0MCqSNZN
         bvNq38rA0esWtoOJKA/T0IIP0bI/irrnIgNsWLNUJZqblmMpYFVK1OtUE8nXnEAoFzlI
         Z3sukfzGezWGZGIcN0iPbcx/FXhHSgkUCqZO2WmdVqyk1jXBIjbof/1bgjB3DRB3GqJI
         SB9Q==
X-Forwarded-Encrypted: i=1; AJvYcCW2bjquHRPqnBKPmyxvUb4y8c3tAxX2MJUb5J8UUXAWZn/4eRSIPbQo7B37j4osPv0fUx1+yMpP9OY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5j2GohNcqmFyZnzENVLAE6IvrfHghPiLQt+SUCHvljQRnCLlT
	E7Qus7tLFEhfn4Q8q1ZdurLfdhROUlbpsnx3VonaRbrxf7QENUvv/jr3oqRjv9rJ3Rg=
X-Gm-Gg: ASbGncvaE5sHwFJvb1KyeWI/qQUoPdQvQvHeZI/skepR426YsGb9TGXsGHdEfi8Bgqg
	B/PT7IT3b/pBSyK/H8RAr8X15TILyTpsLpaizaKlAFgLjzuzRwGk4vBoY0m7lIirDPIMhWTinEV
	4SOGkcKqygY2bxhUVf42V3oBMA4p/XWVUQYEUySgS/XnYtDKXtYkFpquSVrGEnPqxyPnBq9Sro1
	vAkCEQ1HgsS0fgQ/Yx1vQXp0JJ01XhIXIhGurbY9baMcBV7QcsfcZ7dOEc5VvuC7PR8pKLgDf8n
	EstIyZfTA0JSSMmReOgCB+FWdv27DQTCu9D8/RuT7uWE39uA+vZplv7KfyseCQocBhd58VdlR/P
	cbzl7HkURxrYQKczpE4QisqgqjsT7AX1C5QZNQHmbIFI3dkCXp2iYC8gx6hKJ+9ayKn9tPmBGtt
	FUdWhgm4vfpDtaMBbFad8PSAPxdm3jYg==
X-Google-Smtp-Source: AGHT+IEQIEtoq2huqYNM973Pi0C7dV27dTRh+KYLOlZZJrYRyqy5q0MDFqLHXSPi+tcIpGgwQC9bug==
X-Received: by 2002:a05:6000:184e:b0:429:bc68:6c95 with SMTP id ffacd0b85a97d-429e330ab3dmr6769606f8f.47.1762440111989;
        Thu, 06 Nov 2025 06:41:51 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429eb42a2aasm5369892f8f.21.2025.11.06.06.41.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 06:41:51 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: yoshihiro.shimoda.uh@renesas.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH] phy: renesas: rcar-gen3-usb2: Add suspend/resume support
Date: Thu,  6 Nov 2025 16:41:48 +0200
Message-ID: <20251106144148.3051962-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_064154_793132_441FA757 
X-CRM114-Status: GOOD (  19.77  )
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

The Renesas RZ/G3S supports a power saving mode where power to most of the
SoC components is turned off. The USB PHY is among these components.
Because of this the settings applied in driver probe need to be executed
also on resume path. On suspend path only reset signal need to be asserted.
Add suspend/resume support.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

This patch is built on top of patches 1/7, 2/7 at [1]

[1] https://lore.kernel.org/all/20251023135810.1688415-2-claudiu.beznea.uj@bp.renesas.com

 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 66 +++++++++++++++++-------
 1 file changed, 47 insertions(+), 19 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index a38ead7c8055..3c063e4dea41 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -132,6 +132,7 @@ struct rcar_gen3_chan {
 	struct device *dev;	/* platform_device's device */
 	const struct rcar_gen3_phy_drv_data *phy_data;
 	struct extcon_dev *extcon;
+	struct reset_control *rstc;
 	struct rcar_gen3_phy rphys[NUM_OF_PHYS];
 	struct regulator *vbus;
 	struct work_struct work;
@@ -778,35 +779,24 @@ static void rcar_gen3_reset_assert(void *data)
 static int rcar_gen3_phy_usb2_init_bus(struct rcar_gen3_chan *channel)
 {
 	struct device *dev = channel->dev;
-	struct reset_control *rstc;
 	int ret;
 	u32 val;
 
-	rstc = devm_reset_control_array_get_shared(dev);
-	if (IS_ERR(rstc))
-		return PTR_ERR(rstc);
+	if (!channel->phy_data->init_bus)
+		return 0;
 
 	ret = pm_runtime_resume_and_get(dev);
 	if (ret)
 		return ret;
 
-	ret = reset_control_deassert(rstc);
-	if (ret)
-		goto rpm_put;
-
-	ret = devm_add_action_or_reset(dev, rcar_gen3_reset_assert, rstc);
-	if (ret)
-		goto rpm_put;
-
 	val = readl(channel->base + USB2_AHB_BUS_CTR);
 	val &= ~USB2_AHB_BUS_CTR_MBL_MASK;
 	val |= USB2_AHB_BUS_CTR_MBL_INCR4;
 	writel(val, channel->base + USB2_AHB_BUS_CTR);
 
-rpm_put:
 	pm_runtime_put(dev);
 
-	return ret;
+	return 0;
 }
 
 static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
@@ -846,6 +836,18 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 		}
 	}
 
+	channel->rstc = devm_reset_control_array_get_optional_shared(dev);
+	if (IS_ERR(channel->rstc))
+		return PTR_ERR(channel->rstc);
+
+	ret = reset_control_deassert(channel->rstc);
+	if (ret)
+		return ret;
+
+	ret = devm_add_action_or_reset(dev, rcar_gen3_reset_assert, channel->rstc);
+	if (ret)
+		return ret;
+
 	/*
 	 * devm_phy_create() will call pm_runtime_enable(&phy->dev);
 	 * And then, phy-core will manage runtime pm for this device.
@@ -861,11 +863,9 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, channel);
 	channel->dev = dev;
 
-	if (channel->phy_data->init_bus) {
-		ret = rcar_gen3_phy_usb2_init_bus(channel);
-		if (ret)
-			goto error;
-	}
+	ret = rcar_gen3_phy_usb2_init_bus(channel);
+	if (ret)
+		goto error;
 
 	spin_lock_init(&channel->lock);
 	for (i = 0; i < NUM_OF_PHYS; i++) {
@@ -936,10 +936,38 @@ static void rcar_gen3_phy_usb2_remove(struct platform_device *pdev)
 	pm_runtime_disable(&pdev->dev);
 };
 
+static int rcar_gen3_phy_usb2_suspend(struct device *dev)
+{
+	struct rcar_gen3_chan *channel = dev_get_drvdata(dev);
+
+	return reset_control_assert(channel->rstc);
+}
+
+static int rcar_gen3_phy_usb2_resume(struct device *dev)
+{
+	struct rcar_gen3_chan *channel = dev_get_drvdata(dev);
+	int ret;
+
+	ret = reset_control_deassert(channel->rstc);
+	if (ret)
+		return ret;
+
+	ret = rcar_gen3_phy_usb2_init_bus(channel);
+	if (ret)
+		reset_control_assert(channel->rstc);
+
+	return ret;
+}
+
+static DEFINE_SIMPLE_DEV_PM_OPS(rcar_gen3_phy_usb2_pm_ops,
+				rcar_gen3_phy_usb2_suspend,
+				rcar_gen3_phy_usb2_resume);
+
 static struct platform_driver rcar_gen3_phy_usb2_driver = {
 	.driver = {
 		.name		= "phy_rcar_gen3_usb2",
 		.of_match_table	= rcar_gen3_phy_usb2_match_table,
+		.pm		= pm_ptr(&rcar_gen3_phy_usb2_pm_ops),
 	},
 	.probe	= rcar_gen3_phy_usb2_probe,
 	.remove = rcar_gen3_phy_usb2_remove,
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
