Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51F12CF11FC
	for <linux-phy@archiver.kernel.org>; Thu, 10 Oct 2024 15:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=urOvM98iKZRIIO1v/N42rLDP9/oVhNvyNg8Xn6rcG0s=; b=z+5blGpz/1uhXi
	ObLRE43LBDMO0XmT4Do82oYCOuew9MOq58Qpn3BQoD75lop8wbYyiJOuhxeo+daKb0LV0Rqk/1eoI
	C+aMaoFoUBDkekZs26G8/l2Q9fkvkfX1PCQZtzJA3eDxkAsEBOKctrQc67mzskk2vHU3GZyUyXjf4
	D9UewHVbzcDn/Upc8vCfWzRAhmjbCpdK1SkoHY7Z1MHLdKfqixTCzfg5aG6hdk4YRYg85+IIlGfHG
	5u9i63Pe8jgymma1pavUtsEsVxk0sESVzXaRH3zSabQgiGiweGdo+lTRW3Io2Qnc6LyH8Igf8c+N6
	uke+5YJk88BnWZ5ncO1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syuyt-0000000DJ0z-0Avw;
	Thu, 10 Oct 2024 15:21:35 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syuTR-0000000DBnN-1cc3;
	Thu, 10 Oct 2024 14:49:06 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 49AEmpuP021072;
	Thu, 10 Oct 2024 09:48:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1728571731;
	bh=WGpzSHyv4hN94fLKBm9CwNkrtkCZrpk5DG6ytNR+FeA=;
	h=From:To:CC:Subject:Date;
	b=WLgcEIbKXfLnZ91cTr+LOArvhXCMZ86zG+YbXXv+i2efsHub0aMPmcuYov6ABwANB
	 MkC4rpgRFPo//yKSe91dKc+CZEsiFjQlRj5+nKgVvtu9zX9nS/KVuJoKiX14c5xDNA
	 IonJzatIK9xEAkVJmC7RZenBD9GRwyyQfo9udjJQ=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 49AEmpCK026303
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 10 Oct 2024 09:48:51 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 10
 Oct 2024 09:48:50 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 10 Oct 2024 09:48:50 -0500
Received: from uda0492258.dhcp.ti.com (uda0492258.dhcp.ti.com [10.24.72.81])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 49AEmk7F011103;
	Thu, 10 Oct 2024 09:48:47 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <thomas.richard@bootlin.com>,
        <krzysztof.kozlowski@linaro.org>, <rogerq@kernel.org>,
        <florian.fainelli@broadcom.com>, <c-vankar@ti.com>, <afd@ti.com>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>,
        <s-vadapalli@ti.com>
Subject: [PATCH] phy: ti: gmii-sel: Enable USXGMII mode for J7200
Date: Thu, 10 Oct 2024 20:18:45 +0530
Message-ID: <20241010144845.2555983-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_074905_537603_1503CC2D 
X-CRM114-Status: UNSURE (   9.19  )
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

TI's J7200 SoC supports USXGMII mode with the CPSW5G instance's MAC Port1.
Add USXGMII mode to the extra_modes member of J7200's SoC data.

Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
---

Hello,

This patch is based on linux-next tagged next-20241010.

Regards,
Siddharth.

 drivers/phy/ti/phy-gmii-sel.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
index 103b266fec77..e0ca59ae3153 100644
--- a/drivers/phy/ti/phy-gmii-sel.c
+++ b/drivers/phy/ti/phy-gmii-sel.c
@@ -230,7 +230,8 @@ static const
 struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw5g_soc_j7200 = {
 	.use_of_data = true,
 	.regfields = phy_gmii_sel_fields_am654,
-	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII) | BIT(PHY_INTERFACE_MODE_SGMII),
+	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII) | BIT(PHY_INTERFACE_MODE_SGMII) |
+		       BIT(PHY_INTERFACE_MODE_USXGMII),
 	.num_ports = 4,
 	.num_qsgmii_main_ports = 1,
 };
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
