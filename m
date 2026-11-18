Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F535606A31C
	for <linux-phy@archiver.kernel.org>; Wed, 18 Nov 2026 01:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hfh37caG;
	dkim=pass (1024-bit key) header.d=cmss.chinamobile.com header.i=@cmss.chinamobile.com header.a=rsa-sha256 header.s=default header.b=cSrj/jBq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=CP14bEtIuwpRh5q3j2PascpH5NJ9JzjsCVGuWRE/O7Y=; b=hfh37caGv6R8cNw5JwaZeFiZ8a
	zXc0TaZ9lHo45oFtNTl33VzoYhjlSqOH2ENPvSJMqBde0+cMLsoPhl0rBk2vYg6RywAt5d5cU35rD
	jmwKBpDMT5K7dGMcwyAakuOKeLpCkoVdVvRpjmqYx+KEoIjt3hQ8nizytDprG1eAg4YfUde6ngxSK
	JfL1ERBEL8FEcGE/WvWvwiB7bD2NRzOXFTJ7AIqaMOkOikqMdoOtnJYepNGaDNYbr8AMErIz80+G0
	nFDPRE2sAlE4YcdxUldd+dv3eNPDCiThH5ieaBbAJ7340nzoAGbXeAhy/gwvyb3qY8LpPDS3MLJil
	OUNTN3cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTUcH-00000007Sv5-0eJN;
	Wed, 18 Nov 2026 01:37:41 +0000
Received: from cmccmta2.chinamobile.com ([111.22.67.135])
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTUcC-00000007SrJ-0gOQ
	for linux-phy@lists.infradead.org;
	Wed, 18 Nov 2026 01:37:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cmss.chinamobile.com; s=default; l=0;
	h=from:subject:message-id:to:cc:mime-version;
	bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
	b=cSrj/jBqk0SuDTMhVLLoU3s26qmxRpaisfDbBKfHMOirb0hH2PALyqimSSSgbldrAY7iH86+4oNXX
	 ZT9TUI6i35r5yqnfpHPTilKJHeKP/cclfD0fOnw8uB+5XF9qwSXeunQ0RMfrA1W7rvE8Y5GdlHxZGd
	 dLGCybOD5F+3KlLw=
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from spf.mail.chinamobile.com (unknown[10.188.0.87])
	by rmmx-syy-dmz-app07-12007 (RichMail) with SMTP id 2ee76afd0154c52-0eafa;
	Wed, 18 Nov 2026 09:37:25 +0800 (CST)
X-RM-TRANSID: 2ee76afd0154c52-0eafa
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from DESKTOP-3K8GUTQ (unknown[223.108.79.97])
	by rmsmtp-syy-appsvr04-12004 (RichMail) with SMTP id 2ee46afd0153bb3-c42db;
	Wed, 18 Nov 2026 09:37:24 +0800 (CST)
X-RM-TRANSID: 2ee46afd0153bb3-c42db
From: Xiangwu Lai <laixiangwu@cmss.chinamobile.com>
To: vkoul@kernel.org
Cc: neil.armstrong@linaro.org,
	mani@kernel.org,
	narmstrong@baylibre.com,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Xiangwu Lai <laixiangwu@cmss.chinamobile.com>
Subject: [PATCH] phy: amlogic: meson-axg-mipi-dphy: fix clock leak in probe error paths
Date: Wed, 18 Nov 2026 09:37:23 +0800
Message-ID: <20261118013723.232-1-laixiangwu@cmss.chinamobile.com>
X-Mailer: git-send-email 2.50.1.windows.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_173737_236819_92AF57B8 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The probe path enables the pclk clock with clk_prepare_enable() but
none of the error paths that follow (reset_control_deassert(),
devm_phy_create(), devm_of_phy_provider_register()) disable it again.
When one of them fails, the prepared and enabled clock is leaked.

Use devm_clk_get_enabled() to get the clock, so the clock is disabled
and its reference released automatically if probe fails after it or
the driver detaches.

Fixes: 76aefb221146 ("phy: amlogic: Add AXG MIPI D-PHY driver")
Signed-off-by: Xiangwu Lai <laixiangwu@cmss.chinamobile.com>
---
 drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c b/drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c
index 5e2b7d93b..8a132b0e7 100644
--- a/drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c
+++ b/drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c
@@ -355,7 +355,7 @@ static int phy_meson_axg_mipi_dphy_probe(struct platform_device *pdev)
 	if (IS_ERR(priv->regmap))
 		return PTR_ERR(priv->regmap);
 
-	priv->clk = devm_clk_get(dev, "pclk");
+	priv->clk = devm_clk_get_enabled(dev, "pclk");
 	if (IS_ERR(priv->clk))
 		return PTR_ERR(priv->clk);
 
@@ -367,10 +367,6 @@ static int phy_meson_axg_mipi_dphy_probe(struct platform_device *pdev)
 	if (IS_ERR(priv->analog))
 		return PTR_ERR(priv->analog);
 
-	ret = clk_prepare_enable(priv->clk);
-	if (ret)
-		return ret;
-
 	ret = reset_control_deassert(priv->reset);
 	if (ret)
 		return ret;
-- 
2.50.1.windows.1




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
