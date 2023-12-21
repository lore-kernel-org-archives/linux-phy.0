Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03041C35274
	for <linux-phy@archiver.kernel.org>; Thu, 21 Dec 2023 10:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RiQEIsJedB0+x6uX3Q8q7FZlRouYrmHdCsqLc4gfkC4=; b=A5Du+kNrOUC1bD
	GxrOYunM49OY3TS7RifRMrkWYXHgdtXfqm72/PuAk7vCuhFlHLsg96fbHICxKRC4a13O7B1RsdKrF
	NKCY20xQJG06yq93kuyA5fiHw/ysA1NhA9FoWKTrjhA3JcStegCFkH8acTJLvh6AQ+dc+aPbvqFVi
	3Hn61s3eQBZnNPkdNqpUhT5rx05svWiMl58GOsubR8LFclOeYJYLkgZlt9ms8fTG83necgax8o1H8
	Fa/i/W+SRuPYrzSmfEkrHkh0rvPDiEBxuHh1BkbpwR7tSeLu3g70QLK1aHKOfo3uu8HjJa6vDD7gq
	b/rRt7b5ElFFB9mhPk8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGGJk-002Qen-2O;
	Thu, 21 Dec 2023 10:30:16 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGGJh-002QeK-1L
	for linux-phy@lists.infradead.org;
	Thu, 21 Dec 2023 10:30:14 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BLAU7Mb016150;
	Thu, 21 Dec 2023 04:30:07 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1703154607;
	bh=inQKoPNZLeZ1cwGBY9kLHmeSPB9ellZ0jwcj4lbGv3I=;
	h=From:To:CC:Subject:Date;
	b=kb9TS5kGFH1uKCpofsi3eAG09Lr8zYL7zPblMEN/VpCdDQ/UvQNeiEUjokz3JCxcg
	 vDEQkn+S6ccTqgFBE1myZ0XflcKJbkRNX49Vs1ER53T/wC8xngV42p82mj0ERbN9k+
	 GZnEr7TC/yUEWhvFI6PVLCxYrUJcWhGY7qZR4ksc=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BLAU7uh016174
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 21 Dec 2023 04:30:07 -0600
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 21
 Dec 2023 04:30:06 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 21 Dec 2023 04:30:06 -0600
Received: from localhost (chintan-thinkstation-p360-tower.dhcp.ti.com [172.24.227.220])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BLAU6Rv065632;
	Thu, 21 Dec 2023 04:30:06 -0600
From: Chintan Vankar <c-vankar@ti.com>
To: Maxime Ripard <mripard@kernel.org>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?=
	<u.kleine-koenig@pengutronix.de>,
        Sinthu Raja <sinthu.raja@ti.com>, Chintan
 Vankar <c-vankar@ti.com>,
        Andrew Davis <afd@ti.com>, Siddharth Vadapalli
	<s-vadapalli@ti.com>,
        Roger Quadros <rogerq@kernel.org>,
        Kishon Vijay Abraham
 I <kishon@kernel.org>,
        Vinod Koul <vkoul@kernel.org>
CC: <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [RFC PATCH 1/2] phy: ti: gmii-sel: Enable SGMII mode for J784S4
Date: Thu, 21 Dec 2023 15:59:55 +0530
Message-ID: <20231221102956.754617-1-c-vankar@ti.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_023013_513434_B8CFFB27 
X-CRM114-Status: GOOD (  11.37  )
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

TI's J784S4 SoC supports SGMII mode with the CPSW9G instance of the CPSW
Ethernet Switch. Thus, enable it by adding SGMII mode to the list of the
corresponding extra_modes member.

Signed-off-by: Chintan Vankar <c-vankar@ti.com>
---
 drivers/phy/ti/phy-gmii-sel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
index bc847d3879f7..0f4818adb440 100644
--- a/drivers/phy/ti/phy-gmii-sel.c
+++ b/drivers/phy/ti/phy-gmii-sel.c
@@ -248,7 +248,7 @@ static const
 struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw9g_soc_j784s4 = {
 	.use_of_data = true,
 	.regfields = phy_gmii_sel_fields_am654,
-	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII) |
+	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII) | BIT(PHY_INTERFACE_MODE_SGMII) |
 		       BIT(PHY_INTERFACE_MODE_USXGMII),
 	.num_ports = 8,
 	.num_qsgmii_main_ports = 2,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
