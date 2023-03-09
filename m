Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E1CDC6FD1F
	for <linux-phy@archiver.kernel.org>; Thu,  9 Mar 2023 06:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LsqvK2tkM6NmtPCVijLUmckZgUgxv6qnHCJZRWy8sD0=; b=p/WtFiYdEyrKjZ
	wzuPebh9NQAGEE1CK6zncs/hZ+ynmPnGcNWlN9i5BbA6O7RPz1HxWtTG2aWYt8Svk7rP12aUPx4EI
	Cpkvrh19mSa8iObDN+Q9aJwpPNg405E6DPU8VMhkwvSw/1j7Sj5DZG2EQ1cAAXnpPqBwfb08nCjv9
	6oRO9T8ATdH+GMWY1MJL08dPh9yOZF1LphTBwksjBWEh8Dl4fPKiRrKW7KYiw2uSxkEuYjPNhJwCz
	CmHQks1OtvqBgmN4jEcxniIDIlUnWH1vyquX8qVt/TLh6vOIpHScx7CJshbIj/ZSmKsi6+Q+GZNZG
	fpYouaNbbTrvN9mPWE+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pa9sQ-0087EM-2t; Thu, 09 Mar 2023 06:35:46 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pa9s5-0087AN-ND; Thu, 09 Mar 2023 06:35:27 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3296ZNrf062437;
	Thu, 9 Mar 2023 00:35:23 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1678343723;
	bh=k50jCkv4S7wXSq8wTTdq+ChnRdDEMnnkoXT+Qd304j0=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=oaTpYJhWcED39jy+3DkBtmZkLxE7ke/68/bnX4TZrDuRBQiMaOKnBr+lauPqKCNJR
	 R4WRM1rIpzpTpllTGFkQQcWgrYTe6OFSCSZjh22cEo7VfPOeoHrpzj0JMkasydZXLn
	 +nyPFNOWRUaXui80XZYVqfxTIFNoHjten/bOQnZI=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3296ZNSp012444
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 9 Mar 2023 00:35:23 -0600
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Thu, 9
 Mar 2023 00:35:22 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Thu, 9 Mar 2023 00:35:22 -0600
Received: from uda0492258.dhcp.ti.com (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3296ZEQp099087;
	Thu, 9 Mar 2023 00:35:20 -0600
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <rogerq@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>,
        <s-vadapalli@ti.com>
Subject: [PATCH v2 2/3] phy: ti: gmii-sel: Enable SGMII mode for J7200
Date: Thu, 9 Mar 2023 12:05:13 +0530
Message-ID: <20230309063514.398705-3-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230309063514.398705-1-s-vadapalli@ti.com>
References: <20230309063514.398705-1-s-vadapalli@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_223525_828235_2CD14ACD 
X-CRM114-Status: GOOD (  11.68  )
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

TI's J7200 SoC supports SGMII mode with the CPSW5G instance of the CPSW
Ethernet Switch. Thus, enable it by adding SGMII mode to the list of the
corresponding extra_modes member.

Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
---
 drivers/phy/ti/phy-gmii-sel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
index 5e16d8dd5bee..f3da6b020247 100644
--- a/drivers/phy/ti/phy-gmii-sel.c
+++ b/drivers/phy/ti/phy-gmii-sel.c
@@ -221,7 +221,7 @@ static const
 struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw5g_soc_j7200 = {
 	.use_of_data = true,
 	.regfields = phy_gmii_sel_fields_am654,
-	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII),
+	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII) | BIT(PHY_INTERFACE_MODE_SGMII),
 	.num_ports = 4,
 	.num_qsgmii_main_ports = 1,
 };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
