Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A01BC4345F
	for <linux-phy@archiver.kernel.org>; Tue, 16 Apr 2024 14:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hp8uwVGLRcO7VI6TnHYoG43Su+ydyBHmTaE3jXsjy6c=; b=SmTeExO8ks/AE3
	Oh3rSKJDXcR/eyUGCNVFYF0VeCJ1YZKgw+A3k0tRoJjDZfw9SRRlnwIgdHvHKkAw2r29+XNaT+Mtz
	Xxm8gVvSjuY7Zkor3TmGB+0kTlQ4pYoMY3FbIIbFbthLsPdJkNBy1d1ZA49tJ6taZFCobNVajuhl8
	Yw9qtUrqv0JOzSIG3y2rNFAsTUTOCWCt/mujD7YeDTyOnhmtP9hB78PdeMVP1Lrh77WxY+uWrKKyg
	TpCNWVAKxrOUHvWV+iglqrnhRDEv4NM5+ZqcFaRHpCAc5g27K0mTzRD8YCTHPlb6dAD1FTQ726W1h
	n6fZch6LDmG21u7iK1gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwkAy-0000000CdOm-3kPc;
	Tue, 16 Apr 2024 14:52:48 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwkAv-0000000CdNr-2SkA;
	Tue, 16 Apr 2024 14:52:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1713279161;
	bh=HPmb2szhQKDKX5mdO/grAy6pl1MS0jhcoSHizX57RlU=;
	h=From:To:Cc:Subject:Date:From;
	b=D2S2A26o+MTMwOBusO5Z2WpX5BVnuM+rIrgzma2yRygh4upRRk/+V5yBiMc5kUKkn
	 Fm3uXdYsBk6ehuGeZm8UoBycNVSuVaGd1bj8fNyUe0/PvkbsUAugUD/cHD/PO5ztjz
	 6cS0jdx9/pE/cxa5CU7UVBgruT6lbcK0xH14ILOCpMDJic1hYKrJiij673EFLB2lHm
	 vax38vBO3TDnH02a4At9aqiFQkdlsGXSTgcIIFJOBGnHaAnweHhrre7B/t4vdocd/6
	 QAEPVQf/d1Mg92rqMAA/ucaiRBU6wkhtxMIQGN4+FTBZhaHS6xsZDcGGzeYhyDb6W9
	 cVuRrSOTjK61Q==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 5FF2537820F9;
	Tue, 16 Apr 2024 14:52:41 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 023FB4800CD; Tue, 16 Apr 2024 16:52:40 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	kernel test robot <lkp@intel.com>
Subject: [PATCH v1 1/1] phy: rockchip: usbdp: fix uninitialized variable
Date: Tue, 16 Apr 2024 16:51:23 +0200
Message-ID: <20240416145233.94687-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_075245_846810_89F9E5F5 
X-CRM114-Status: GOOD (  13.59  )
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

The ret variable may not be initialized in rk_udphy_usb3_phy_init(), if
the PHY is not using USB3 mode.

Since the DisplayPort part is handled separately and the PHY does not
support USB2 (which is routed to another PHY on Rockchip RK3588), the
right exit code for this case is 0. Thus let's initialize the variable
accordingly.

Fixes: 2f70bbddeb457 ("phy: rockchip: add usbdp combo phy driver")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202404141048.qFAYDctQ-lkp@intel.com/
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 32f306459182..2c51e5c62d3e 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -1285,7 +1285,7 @@ static const struct phy_ops rk_udphy_dp_phy_ops = {
 static int rk_udphy_usb3_phy_init(struct phy *phy)
 {
 	struct rk_udphy *udphy = phy_get_drvdata(phy);
-	int ret;
+	int ret = 0;
 
 	mutex_lock(&udphy->mutex);
 	/* DP only or high-speed, disable U3 port */
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
