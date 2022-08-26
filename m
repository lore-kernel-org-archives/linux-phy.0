Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EE2EECAAD5
	for <linux-phy@archiver.kernel.org>; Fri, 26 Aug 2022 14:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0p53D9LxlDaT9YpiRGJMufuSILC0kQkVEU47W2ESD9o=; b=2/hHZ6/Uomf+b6
	veBOaTiSnVuSpxdbaQ4gVjRkJLekDibnST45Xpx/FM0u0196tVJD/y6ZcYlBIuYFcckGpctMCUPdO
	cofo7dr+hf592GuSXesBlIUU/p577WVHPjzeIphMuki1tqkTUJe3Je1cciWSJzdLvlKxacCL8lXUy
	ADQQgV70RnbILdxo0mfYMUTHUDksNYGKzSGPZlAtJYma63rghcBc9WFbGgtqjazvDoNJZ3pifkjf0
	pM0X9iQ5xFWApHN34NkPt/XhqhNQdlZYuA3+Md264g3E0I6pxhiTUH3rUJMz2IHE00XfiMuFNeowf
	z6BHM+zO6YWg++o2zTig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRa9W-0060lb-Px; Fri, 26 Aug 2022 14:17:42 +0000
Received: from relay3-d.mail.gandi.net ([2001:4b98:dc4:8::223])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRa9T-0060i4-Oc
	for linux-phy@lists.infradead.org; Fri, 26 Aug 2022 14:17:41 +0000
Received: (Authenticated sender: maxime.chevallier@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id AC2BD60005;
	Fri, 26 Aug 2022 14:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1661523456;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=EBGcmPPjqpaDTKplW8ZCyDWmnpPadRiKMDQ8Yx3Y624=;
	b=I+1WcXCD02Og/9KlbaCI7e0UycUKzVan9FO6q6YhhiryYyZQbNbtWV40yBXo6I74lmZPFk
	znY2lDnSwHcLlAukMAc0VqlpfcFlPZyz8bwZMRZabuTFq+re9lEIzgHxEBx9v6cIYnt3NB
	nVNn5jaXAj9D6zHy/7/IPmJbuTIX6iNqQDhsUEKoJU6sX9z9kTBd8whv8BKlBextLIDxAB
	KtZztr5OAO3WYl2JweNqfPaKZgSS3HNx+JGIY4H0sGZpqpkLkTEIXwW0rPkDHqWsEi5PG0
	K4yPR1H4tUPPHPQs/vGxXwudS6tTh0a6MRlNkDn5EdCDlPke/n/Vw0tURFX0NQ==
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: davem@davemloft.net
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>,
	linux-phy@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	Russell King <linux@armlinux.org.uk>,
	UNGLinuxDriver@microchip.com,
	thomas.petazzoni@bootlin.com
Subject: [PATCH net-next] phy: lan966x: add support for QUSGMII
Date: Fri, 26 Aug 2022 16:17:22 +0200
Message-Id: <20220826141722.563352-1-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220826_071739_980149_63665610 
X-CRM114-Status: UNSURE (   9.87  )
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

Makes so that the serdes driver also takes QUSGMII in consideration.
It's configured exactly as QSGMII as far as the serdes driver is
concerned.

Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
---

Dear netdev and Generic PHY maintainers,

This patch should go through the net-next tree instead of the generic
PHY tree, as it has a dependency on :

5e61fe157a27 "net: phy: Introduce QUSGMII PHY mode"

This commits only lives in the net-next tree as of today.

Given the simplicity of this patch, would that be OK for you ?

Thanks,

Maxime

 drivers/phy/microchip/lan966x_serdes.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/microchip/lan966x_serdes.c b/drivers/phy/microchip/lan966x_serdes.c
index e86a879b92b5..d1a50fa81130 100644
--- a/drivers/phy/microchip/lan966x_serdes.c
+++ b/drivers/phy/microchip/lan966x_serdes.c
@@ -401,6 +401,9 @@ static int serdes_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 	    submode == PHY_INTERFACE_MODE_2500BASEX)
 		submode = PHY_INTERFACE_MODE_SGMII;
 
+	if (submode == PHY_INTERFACE_MODE_QUSGMII)
+		submode = PHY_INTERFACE_MODE_QSGMII;
+
 	for (i = 0; i < ARRAY_SIZE(lan966x_serdes_muxes); i++) {
 		if (macro->idx != lan966x_serdes_muxes[i].idx ||
 		    mode != lan966x_serdes_muxes[i].mode ||
-- 
2.37.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
