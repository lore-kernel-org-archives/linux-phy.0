Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 630FDEDE9AC
	for <linux-phy@archiver.kernel.org>; Tue, 10 Sep 2024 18:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZcAaSGMmKu5GPYHgMXc4nYojKuFHGgq3a7qVJuJC4PI=; b=mXUt+KBgQA3klu
	FJ7TumT9eltxhaRj5M4J81wdLf1ZGnNf3zEMc+YH0RzfZLbsiL0gAznRh3841oWPdjOoE68KeQloN
	JkT4jLN7Z4bPysvDDhNgQ4+K63qS3dDNzE08Or3DpZNMFAgZzNfiVULidKZd3wqihzLzV3x9AN+ZI
	pLkhj+gLS36M9nbr4vKPmSrjVqm63i9uTEY95YU11Xvc8ZdKR3Ur7+yI1feSQ4rnEmcSQAwda0iWV
	tY5jutcLDv0MwMZxZGVBZ5GKSJRLGxUex09Bke/eFwhAp+/YWMEdkA007lHfByDTlhmlrSouGZWfT
	digRdnIb6eQbo6+N/wwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so5Pp-00000006iUY-0TrV;
	Tue, 10 Sep 2024 18:16:37 +0000
Received: from mail.fris.de ([2a01:4f8:c2c:390b::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so5Pl-00000006iTa-0O5i
	for linux-phy@lists.infradead.org;
	Tue, 10 Sep 2024 18:16:35 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 7BA44BFB9D;
	Tue, 10 Sep 2024 20:16:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=dkim;
	t=1725992189; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=uCweU3Lk1T+91XKOciulF6pemJgorXgwSwPa475ru3Y=;
	b=1edacjsSPuflsVcYxBqFqQRRnnCwkqLCQoKjsu8q7rKDRR8IsgW+IF1j9ngKKOnTB7h8lv
	VEfmgBfDaVLKPAB0YyfbOiZwDVlOtrhFLk8fzOuk9SeBoykWcnLaxbUw7gPAN4pGoxDLvu
	fWY0ANlDbRQAyRQa8KCdDjsF6geoea6T1V47LFVlVmi71rML19SBqNn7Ld37g2/8AWnoDV
	2LhfhiP+2uvlTYrzBvu5bfgpwO0zvv1POu/ADY+PDjM6L9f0HkVMZTumZNR6E8ohWi/cpD
	UpJAjz07RqiMo7NM3C40B1v0WKWXgVCbuX2AId3uA0LihN+objK+GSer+m5P3w==
From: Frieder Schrempf <frieder@fris.de>
To: Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Vinod Koul <vkoul@kernel.org>
Cc: Dominique Martinet <dominique.martinet@atmark-techno.com>,
	Frieder Schrempf <frieder@fris.de>,
	Adam Ford <aford173@gmail.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: [PATCH 1/2] phy: freescale: fsl-samsung-hdmi: Add references for calculating LUT parameters to comment
Date: Tue, 10 Sep 2024 20:14:52 +0200
Message-ID: <20240910181544.214797-2-frieder@fris.de>
In-Reply-To: <20240910181544.214797-1-frieder@fris.de>
References: <20240910181544.214797-1-frieder@fris.de>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_111633_626160_8A027528 
X-CRM114-Status: UNSURE (   8.67  )
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

Mention the Reference Manual and the scripts and tools available
to help calculating the PLL parameters for additional LUT entries.

Suggested-by: Dominique Martinet <dominique.martinet@atmark-techno.com>
Signed-off-by: Frieder Schrempf <frieder@fris.de>
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 1203143bad7a..401178bfcdda 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -61,7 +61,13 @@ static struct phy_config calculated_phy_pll_cfg = {
 	.pll_div_regs = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00 },
 };
 
-/* The lookup table contains values for which the fractional divder is used */
+/*
+ * The lookup table contains values for which the fractional divder is used.
+ * Please see the i.MX8MP Reference Manual and the resources at [1] for
+ * additional information on calculating values for table entries.
+ *
+ * [1] https://codeberg.org/fschrempf/samsung-hdmi-phy-pll-calculator
+ */
 static const struct phy_config phy_pll_cfg[] = {
 	{
 		.pixclk = 22250000,
-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
