Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20355C61DA4
	for <linux-phy@archiver.kernel.org>; Thu,  9 Mar 2023 06:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=20HDPuVCuSnCYOvkrTGfBQGbkq1Gl46qNYmnapzOhoc=; b=4pa8/AbkY5YUXp
	g7UzqwG7s18WnIx9BU0ZnsJY/HI/MQhSlGP1/jS8+VUM6J/D8HK+pqH5kbCCHcyY+GegjK8U+QMqt
	OV8mE8DB3h882xAaw9Lp48zCqPin9UBIstEfkz572ApKuiD+2eBZUyNdKykoRblmtTI2msJ0ksKEt
	VbBroAS+wpD6IxKsR51GHfJ3vNd6tGb+/ohi9KczoUWQFnCwpkeUMmTIgtw2rAQW8tdPeNWIaXL/T
	7nubHZkaMU3M7itElllwW7ET69GMVlrUaxF5AvABLIzOo0pb6WJWGtL6COwJLTAhe3ikUR/En39D1
	lo8zMArtRuiG+1d5NYog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pa9gM-008459-Ge; Thu, 09 Mar 2023 06:23:18 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pa9fx-0083vY-Ds; Thu, 09 Mar 2023 06:22:54 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3296Mnkx130022;
	Thu, 9 Mar 2023 00:22:49 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1678342969;
	bh=SarMmzoDst6FpFLh4XmlLgNV3RN5yzyGtHul1q4FhFk=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=k5V7vKelUc2/WOkplt1tTMbuI+0EXbPbdtAfDIqEV7HmAn/Dn3JopREjcroMUmctk
	 tWZ7FKbE3tKqThEdUGwkYwVLT5Cy86nirwnrD5TA/w+ckVEFTim9vtRE6gIcCsDntv
	 6hbe9ebaJaTaz9bE/Zllg4AthUN66GMzLWYSRAw0=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3296MniN103508
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 9 Mar 2023 00:22:49 -0600
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Thu, 9
 Mar 2023 00:22:48 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Thu, 9 Mar 2023 00:22:48 -0600
Received: from uda0492258.dhcp.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3296Mca4088683;
	Thu, 9 Mar 2023 00:22:46 -0600
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <rogerq@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>,
        <s-vadapalli@ti.com>
Subject: [PATCH 3/3] phy: ti: gmii-sel: Enable SGMII mode for J721E
Date: Thu, 9 Mar 2023 11:52:37 +0530
Message-ID: <20230309062237.389444-4-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230309062237.389444-1-s-vadapalli@ti.com>
References: <20230309062237.389444-1-s-vadapalli@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_222253_530212_748174FB 
X-CRM114-Status: GOOD (  11.38  )
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

TI's J721E SoC supports SGMII mode with the CPSW9G instance of the CPSW
Ethernet Switch. Thus, enable it by adding SGMII mode to the list of the
corresponding extra_modes member.

Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
---
 drivers/phy/ti/phy-gmii-sel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
index b0335a8abc18..fd934a38b71d 100644
--- a/drivers/phy/ti/phy-gmii-sel.c
+++ b/drivers/phy/ti/phy-gmii-sel.c
@@ -228,7 +228,7 @@ static const
 struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw9g_soc_j721e = {
 	.use_of_data = true,
 	.regfields = phy_gmii_sel_fields_am654,
-	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII),
+	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII) | BIT(PHY_INTERFACE_MODE_SGMII),
 	.num_ports = 8,
 	.num_qsgmii_main_ports = 2,
 };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
