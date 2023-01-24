Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84DCCC54E94
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jan 2023 20:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tux407ejr9cv6tT//WZRFJ4fhPAIFasHHjGJmpTqYZ8=; b=19UctwgGY19Qoh
	DAeVrxCUPBiq0oeR/tDfRelreX+mjzzz6OMw3By2+G3DmPzo2rXKMmlXxKKtaV3xxDhuNQENOFv7i
	R2aEzTgoThesTbBwak0U2+iEP+YX9kWdOmcJdG+eN5zelSTnmjZ8zTj4Nhq9lugx8YxRWRfzOaEat
	mXltg2Zixt1S7veMTmhYNwGsVDRs6P3N4VYT00YWUatNRr1u2/yCJ1gicg+jgEHSyIm7AdMhfmfMA
	KV/9RMVJ45/sF3Mbee/3xbAkXkRu8k8BoIqf2u2Z0xVhGPi0ZCsQYiAHLxTn21DAyGUnoR6o9NuAm
	kUPX9QtUUQmqvMa/aNmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKQAS-005F29-Pc; Tue, 24 Jan 2023 20:45:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKQAE-005Ewp-NR
	for linux-phy@lists.infradead.org; Tue, 24 Jan 2023 20:45:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1pKQAD-0003eQ-9t; Tue, 24 Jan 2023 21:45:05 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mgr@pengutronix.de>)
	id 1pKQAB-000BhY-Fl; Tue, 24 Jan 2023 21:45:02 +0100
Received: from mgr by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mgr@pengutronix.de>)
	id 1pKQA9-00EhDd-TW; Tue, 24 Jan 2023 21:45:01 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
To: linux-arm-kernel@lists.infradead.org
Cc: linux-phy@lists.infradead.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com,
	error27@gmail.com,
	kernel@pengutronix.de
Subject: [PATCH] phy: stm32-usphyc: add mdelay(1) to fix timeout on some machines
Date: Tue, 24 Jan 2023 21:45:00 +0100
Message-Id: <20230124204500.3502665-1-m.grzeschik@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mgr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_124506_806639_04720789 
X-CRM114-Status: GOOD (  11.98  )
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

An mdelay of 1 seems to be necessary on some machines, since
the monsel status does not seem to be accurate. On rare occasions just
working with the phy after this pll check lead to no functional usb.
With this short mdelay this issue was not reported again.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/phy/st/phy-stm32-usbphyc.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/phy/st/phy-stm32-usbphyc.c b/drivers/phy/st/phy-stm32-usbphyc.c
index 5bb9647b078f12..c452a0caceb9fa 100644
--- a/drivers/phy/st/phy-stm32-usbphyc.c
+++ b/drivers/phy/st/phy-stm32-usbphyc.c
@@ -353,6 +353,15 @@ static int stm32_usbphyc_phy_init(struct phy *phy)
 		goto pll_disable;
 	}
 
+	/* This mdelay seems to be necessary on some machines, since the
+	 * monsel status does not seem to be accurate. On rare occasions
+	 * just working with the phy after this pll check the usb
+	 * peripheral (e.g. on the dwc2) run into timeout issues and
+	 * leading to no functional usb. With this short mdelay this
+	 * issue was not reported again.
+	 */
+	mdelay(1);
+
 	usbphyc_phy->active = true;
 
 	return 0;
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
