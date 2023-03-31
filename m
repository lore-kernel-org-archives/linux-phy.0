Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F4EEC77B60
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 06:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=seeXBzsBjYQwpWXPSxjGpHky4XgcU7VU26/mY/4dHxo=; b=XU3ASCjs3NKMdf
	FnF11RKHkKjZ0idQ5qFjWIEdNUqmiLMaBG966CMTLGd4W8QRU0qqapnST+qtKF45fIb8FY8Da+LbM
	N8Yk3WJ+QHfPlM4fAWA2jj+kKGTdmKa1BzhWTVUHjY4SKZk1q3Ey3ejzEARXIqZ5H0lsabyN3zQYW
	t6yxfOvX5lLnJ1BVDMxpAMN0IpgtzkW3tpjaBoK2FRL+CWGm2XDRb0cBqizbR2zXMdwVGG2GqOhf7
	D1y88+f8qmwuKplNwp2tm/gO+15v37K5ZdawGklfL/+MfJupetyr5VCI00Ceh2QvVJe2aWwqdUmEj
	IKsqPve7vel8Fh9ZAkNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pi8Cn-00608h-1Q;
	Fri, 31 Mar 2023 06:25:45 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pi8Ce-00606D-2h;
	Fri, 31 Mar 2023 06:25:38 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 32V6PRRX013259;
	Fri, 31 Mar 2023 01:25:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1680243927;
	bh=8RLcEGn9u7T/MUWJn7GJ3OTSwlD7b2cA29eH8xwKEn8=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=lc9KdtQfdE04lt975ol2E4lX4kNTiuqSwqjkWFDT4ryQCQ3oD9Pm7xtUHwCUmp144
	 m/3tJgc3E9EN9lIt6q476RwcWkMvW1ODVMo7hc9c4QKsXi3uXxL0akf6WGOYttGiLK
	 WXBf/NTS7J+OgGHqQwgpa8yxbEN9hP89jcz5Wxdg=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 32V6PRbZ028474
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 31 Mar 2023 01:25:27 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Fri, 31
 Mar 2023 01:25:26 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Fri, 31 Mar 2023 01:25:26 -0500
Received: from uda0492258.dhcp.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 32V6PLvA027504;
	Fri, 31 Mar 2023 01:25:24 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <rogerq@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>,
        <s-vadapalli@ti.com>
Subject: [PATCH 1/2] phy: ti: gmii-sel: Add support for CPSW9G GMII SEL in J784S4
Date: Fri, 31 Mar 2023 11:55:20 +0530
Message-ID: <20230331062521.529005-2-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230331062521.529005-1-s-vadapalli@ti.com>
References: <20230331062521.529005-1-s-vadapalli@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_232536_994383_EBF7E555 
X-CRM114-Status: GOOD (  11.36  )
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

Each of the CPSW9G ports in TI's J784S4 SoC support modes such as QSGMII.

Add a new compatible for it and allow the usage of "ti,qsgmii-main-ports"
property for J784S4.

Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
---
 drivers/phy/ti/phy-gmii-sel.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
index c87118cb2af9..fba5c0c0771c 100644
--- a/drivers/phy/ti/phy-gmii-sel.c
+++ b/drivers/phy/ti/phy-gmii-sel.c
@@ -235,6 +235,15 @@ struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw9g_soc_j721e = {
 	.num_qsgmii_main_ports = 2,
 };
 
+static const
+struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw9g_soc_j784s4 = {
+	.use_of_data = true,
+	.regfields = phy_gmii_sel_fields_am654,
+	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII),
+	.num_ports = 8,
+	.num_qsgmii_main_ports = 2,
+};
+
 static const struct of_device_id phy_gmii_sel_id_table[] = {
 	{
 		.compatible	= "ti,am3352-phy-gmii-sel",
@@ -264,6 +273,10 @@ static const struct of_device_id phy_gmii_sel_id_table[] = {
 		.compatible	= "ti,j721e-cpsw9g-phy-gmii-sel",
 		.data		= &phy_gmii_sel_cpsw9g_soc_j721e,
 	},
+	{
+		.compatible	= "ti,j784s4-cpsw9g-phy-gmii-sel",
+		.data		= &phy_gmii_sel_cpsw9g_soc_j784s4,
+	},
 	{}
 };
 MODULE_DEVICE_TABLE(of, phy_gmii_sel_id_table);
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
