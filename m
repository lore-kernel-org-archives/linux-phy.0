Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27C58C54FC6
	for <linux-phy@archiver.kernel.org>; Sun,  1 Sep 2024 18:38:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQ2BXVeXf7pOBw00ZSLN+IV32fxBDMur6q3HV/fbHHQ=; b=Dlle/El8Q6KUSA
	ZfP4q5XXAAvubkuVN/ukRosFP8Ujd7nQ+CJDRWXZoHqeQczZNYO5/s6LwBiLWUeEx1YllH7uQo9Hc
	uWjawvrFmiXnxy4LhlyRmcn1QTYjMOqqHT1STSZ63fYjKqCYbHioKIuP67ipe7/wBTVKvXbcnWX8F
	9G8Ez+avdZ5y0pJaj3uhwg/Dx1wEtaB1LnyG/Fy6kGdkTkeRiXccF8bkuOwxrMWgHAfeRmYuurvUS
	0nWJtYWdBgvY+m17TSM9IwAsDrHK+WIykSQxJJSfy3NPSOA7pzMFOtbIXJcy7ZJz6ZqBmUILubWAp
	AVG6LfrGAttkwD0kyJ1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skpSs-0000000C96G-3KJq;
	Sun, 01 Sep 2024 18:38:18 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skpOw-0000000C8MI-3rWR;
	Sun, 01 Sep 2024 18:34:16 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-20551e2f1f8so7970965ad.2;
        Sun, 01 Sep 2024 11:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725215654; x=1725820454; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VLCyRC657hgOtTBOAgAwcacwSzgshdziSy5VI8t2Gq0=;
        b=N+ibu1wqR5m/JbmcN9Mm8LqitngXtOvc4j1NV88X9MhWf2Vl79FrlKjy5aUycrBNwY
         250KYXph8wEVGqrI/87eCGxyxw+C3zMlQoULwcmoEtF+robHSlugTMomEzordyKfSozs
         IAK3bCBtYcDzPELN9o640z529Q0SFggfgn2Xb8M0xfO4s3jrmTlPTULofKO1bjLaAUXt
         1hiQt8kc+rnyPQ1orxBB/S0b9ghbT8ViUnctirmCntgaM2a/Tx7QmLaU0pJPF+UdlT6u
         w2E2PN0ygJoz1yHh5Hq6tSgcJeXhIM9ZhpcHSvtRrNaD//jCICfVJmWWS5fx7ZA+TZdn
         1fsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725215654; x=1725820454;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VLCyRC657hgOtTBOAgAwcacwSzgshdziSy5VI8t2Gq0=;
        b=Swl65DxCnbsALS2bLAAALM9/ZkcYMaPqG44K45bwCC1Wh0sn6izRV43HpJYBSBGZ5b
         paZL1Ecupe7VX7047bMtv8stKmY0Nmt9PT9UaN5BP+XetYg5zboLTJYpVmwUnMqyxEkv
         XmKAtndhvGihgCsUhBVObi3pJ2iihh17AOHn8RmsFdsfpxuD9RLvNQmu/njxHRrmiXpa
         w9GL8d1vr2WkVmVDWmFuDKE7Twstq2RB8ivzKeDAWIBEf3kUCWgxqcsYDcniZ9kMAq9q
         PAq8mJGs3m4dEerLXEwOpjDp7qSC3sJfC1j1i0/LDtXlGDPBM9ARy1FLk/VGMBr/KHRn
         4JXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUEQ1wueve5XaPz2FLPhd05xrqKTt4x8zwHKiIAf9/BSvm6zK2VvVa1TXFcuuPvy/ZgxVQWgjCKx4SXgTlNIp0=@lists.infradead.org, AJvYcCUa/WjrKwJm8aQUfXTR4qbLcEqhjZ6pkdnXPrpMLTkj1PM2+NC0b3hs4a97GMp2m0a5xWHSgkpE66g2eYMP8Ke6@lists.infradead.org, AJvYcCXx64MVvGBWN7HFFhLQOHQucW1G9NzW8qCCAadwP3///wLgQcHgM+P5Bjo6ebzVNetJhQeyPNoK/8dj@lists.infradead.org
X-Gm-Message-State: AOJu0YwPv2mwVzxhZs70/dtsKq+6SZWQ5medtLmvUaXPLvX7HdQo1r1N
	mevlnvdprPKnv2r2DvrNNddyQeEKWrOKmN23qcSI22v/SbpqaDJw
X-Google-Smtp-Source: AGHT+IE0DF0h8dNkgogZ/U5Ym66OZuvgg8ZiSDLJNUPCI1HaXLR9hpfBmfxTQjfDGWPLFLoNSdDjfw==
X-Received: by 2002:a17:902:ced2:b0:1fd:791d:1437 with SMTP id d9443c01a7336-2058417b1d9mr426515ad.6.1725215653750;
        Sun, 01 Sep 2024 11:34:13 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20559b793f8sm16262405ad.15.2024.09.01.11.34.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Sep 2024 11:34:13 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 6/6] phy: rockchip-pcie: Use regmap_read_poll_timeout for PCIe reference clk PLL status
Date: Mon,  2 Sep 2024 00:02:13 +0530
Message-ID: <20240901183221.240361-7-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240901183221.240361-1-linux.amoon@gmail.com>
References: <20240901183221.240361-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240901_113415_063796_A717D6BD 
X-CRM114-Status: GOOD (  13.12  )
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

Replace open-coded phy PCIe reference clk PLL status polling with
regmap_read_poll_timeout API. This change simplifies the code without
altering functionality.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v5: New patch in this seriese
---
 drivers/phy/rockchip/phy-rockchip-pcie.c | 56 +++++++-----------------
 1 file changed, 15 insertions(+), 41 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
index a1b4b0323e9d..2c4d6f68f02a 100644
--- a/drivers/phy/rockchip/phy-rockchip-pcie.c
+++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
@@ -162,7 +162,6 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
 	struct rockchip_pcie_phy *rk_phy = to_pcie_phy(inst);
 	int err = 0;
 	u32 status;
-	unsigned long timeout;
 
 	mutex_lock(&rk_phy->pcie_mutex);
 
@@ -191,21 +190,11 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
 	 * so we make it large enough here. And we use loop-break
 	 * method which should not be harmful.
 	 */
-	timeout = jiffies + msecs_to_jiffies(1000);
-
-	err = -EINVAL;
-	while (time_before(jiffies, timeout)) {
-		regmap_read(rk_phy->reg_base,
-			    rk_phy->phy_data->pcie_status,
-			    &status);
-		if (status & PHY_PLL_LOCKED) {
-			dev_dbg(&phy->dev, "pll locked!\n");
-			err = 0;
-			break;
-		}
-		msleep(20);
-	}
-
+	err = regmap_read_poll_timeout(rk_phy->reg_base,
+				       rk_phy->phy_data->pcie_status,
+				       status,
+				       status & PHY_PLL_LOCKED,
+				       200, 100000);
 	if (err) {
 		dev_err(&phy->dev, "pll lock timeout!\n");
 		goto err_pll_lock;
@@ -214,19 +203,11 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
 	phy_wr_cfg(rk_phy, PHY_CFG_CLK_TEST, PHY_CFG_SEPE_RATE);
 	phy_wr_cfg(rk_phy, PHY_CFG_CLK_SCC, PHY_CFG_PLL_100M);
 
-	err = -ETIMEDOUT;
-	while (time_before(jiffies, timeout)) {
-		regmap_read(rk_phy->reg_base,
-			    rk_phy->phy_data->pcie_status,
-			    &status);
-		if (!(status & PHY_PLL_OUTPUT)) {
-			dev_dbg(&phy->dev, "pll output enable done!\n");
-			err = 0;
-			break;
-		}
-		msleep(20);
-	}
-
+	err = regmap_read_poll_timeout(rk_phy->reg_base,
+				       rk_phy->phy_data->pcie_status,
+				       status,
+				       !(status & PHY_PLL_OUTPUT),
+				       200, 100000);
 	if (err) {
 		dev_err(&phy->dev, "pll output enable timeout!\n");
 		goto err_pll_lock;
@@ -236,19 +217,12 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
 		     HIWORD_UPDATE(PHY_CFG_PLL_LOCK,
 				   PHY_CFG_ADDR_MASK,
 				   PHY_CFG_ADDR_SHIFT));
-	err = -EINVAL;
-	while (time_before(jiffies, timeout)) {
-		regmap_read(rk_phy->reg_base,
-			    rk_phy->phy_data->pcie_status,
-			    &status);
-		if (status & PHY_PLL_LOCKED) {
-			dev_dbg(&phy->dev, "pll relocked!\n");
-			err = 0;
-			break;
-		}
-		msleep(20);
-	}
 
+	err = regmap_read_poll_timeout(rk_phy->reg_base,
+				       rk_phy->phy_data->pcie_status,
+				       status,
+				       status & PHY_PLL_LOCKED,
+				       200, 100000);
 	if (err) {
 		dev_err(&phy->dev, "pll relock timeout!\n");
 		goto err_pll_lock;
-- 
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
