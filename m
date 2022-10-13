Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 684D9C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 13 Oct 2022 18:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YV+M+cm9RXaCu2LfxgqqKDWRX8hmaWbxTsirwNqMmAo=; b=2YGxLVC5AAe2qW
	PRSi2ivxZew0/JNWG8jHMNajsI0/uLX6h2WySoxYdyxav/MDlBy0GQENmfvvTTAcYePJ9M2AmuO6W
	uZ+d1NqNnnbn64PryDJNMbKGidvRo/LBLPCRRrhaYmLQXicXZYfaJJ8xEU9p8OSkWw52evdbZFHdg
	1YyQFrjqpZ/DAM1fwHYYtsWuj/+v2YFQzh8iIyWiDBr8nLXg1raEjgj3tmO0RpFoUcIL9qX38Iwlz
	yWlt73g3XL6U0ajukWezTNU8pkoZVtT9g40QVCh8PQZ+huP/hECb/5Ohu0taE6ae62adsLMLJzuog
	5bbAlJLnTi5sxy11V9Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj38G-00CixV-Rt; Thu, 13 Oct 2022 18:40:36 +0000
Received: from mail-bn1nam07on2052.outbound.protection.outlook.com ([40.107.212.52] helo=NAM02-BN1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj38D-00Ciw6-7h
	for linux-phy@lists.infradead.org; Thu, 13 Oct 2022 18:40:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eaIfO+hcuj9aoOp3Jalc5xXjPE3j6F+7xCTblMbVYhg0mRKwQr8+E/JuqShihrj174qZVkxhFqS7WjZHDmuCA5nvd3saAKPfwiwd7wXuQj89y5u5NUxtTAB9EDzJZBLEV3P6cpUpHo5gMWVVzy7NIg4WmkjxHKJ+cbkmTPTCFR/GwEhbpMZTyCd1qPP8O+rXrPB0B48BuhSB8rWPK50bvwu3tHaBW4pbd3tF9PsYMzHr5+pZ1B9N4ezVaj84pLBNlhkHtvDJ1gTRgW3qK75xRxZ0CMPGpz+OSl3DawhqbrhXDSZezK8lph+ZCedOz5Z5rlFEIz54SQSJMcn44HJH8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=77XraY8HtmI9RvcMC5QA1FxyGab/cPTg6lOI+Whf5qo=;
 b=V7rFp6WK+qoFOqAZMhbxX9yGFrOIRSX49qeMthbSMlbvAWo9MWz21qc/kUHhMETJt9/EAIe+5gAP+Gq5d1JJ2S4GidcnS64s+Qe0NI3VsQhgYr4X7iP7OA71fJQhRN1BBmt2RsHSkJQdp7PjPj67k0klp4nYPLrHsHUTMP5yPx0RvmLCeZ7HyKdCx7H2DANHkZxfAmzzTEECcUoQebSySPBpOlmkNOk5S3Vmbxnhvx2lnVGX7nlDiJgnyopGUvBWGxMhF7SwNmtJZxQTGJKxIcJGPybOmZGopP3Yiq1iZoJoERlPs7hRM6oY8+hxnD304vARm26i5cuJOt1z/5upkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.233) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=77XraY8HtmI9RvcMC5QA1FxyGab/cPTg6lOI+Whf5qo=;
 b=oXBcCauqCADP8Mi4DjQlgkUSM5tBFKfaTokFhrEIBwlBe1NZbYGX23qZJ0cANd4V5FuISccooJnlJ8WBtsFqAyy+y0VaWMj1AWfCbN0NtlAM1/mbU/KvF0986P9dWdmWRNE415Nw0O/7HnwOAT+ijw11FaxIc9oHfC8MQxvK1imAMVYICzcdY+QSLLqj5hi+ePC8yE58oWF8bXof8dj2fBvfLZEdJzyAz47r4bPUO1LcT+wQfS2N+fruEibEQ2McDhegtRqkuJnjzpi710uPTPy2S3yGPbhjuIQ+BZxb4LZjT/AxMBjrfPsqND+/RPWm+oPyAlg+fKUy1pA+9RNCvg==
Received: from DM6PR10CA0033.namprd10.prod.outlook.com (2603:10b6:5:60::46) by
 DM4PR12MB6568.namprd12.prod.outlook.com (2603:10b6:8:8f::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.26; Thu, 13 Oct 2022 18:40:30 +0000
Received: from DM6NAM11FT074.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:60:cafe::d) by DM6PR10CA0033.outlook.office365.com
 (2603:10b6:5:60::46) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.28 via Frontend
 Transport; Thu, 13 Oct 2022 18:40:30 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.233)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.233 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.233; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.233) by
 DM6NAM11FT074.mail.protection.outlook.com (10.13.173.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.20 via Frontend Transport; Thu, 13 Oct 2022 18:40:29 +0000
Received: from drhqmail201.nvidia.com (10.126.190.180) by mail.nvidia.com
 (10.127.129.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Thu, 13 Oct
 2022 11:40:23 -0700
Received: from drhqmail203.nvidia.com (10.126.190.182) by
 drhqmail201.nvidia.com (10.126.190.180) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.29; Thu, 13 Oct 2022 11:40:22 -0700
Received: from vidyas-desktop.nvidia.com (10.127.8.9) by mail.nvidia.com
 (10.126.190.182) with Microsoft SMTP Server id 15.2.986.29 via Frontend
 Transport; Thu, 13 Oct 2022 11:40:18 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lpieralisi@kernel.org>, <robh@kernel.org>, <kw@linux.com>,
	<bhelgaas@google.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
	<kishon@ti.com>, <vkoul@kernel.org>, <mani@kernel.org>,
	<Sergey.Semin@baikalelectronics.ru>, <ffclaire1224@gmail.com>
CC: <linux-pci@vger.kernel.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<kthota@nvidia.com>, <mmaddireddy@nvidia.com>, <vidyas@nvidia.com>,
	<sagar.tv@gmail.com>
Subject: [PATCH V3 12/21] PCI: tegra194: Enable DMA interrupt
Date: Fri, 14 Oct 2022 00:08:45 +0530
Message-ID: <20221013183854.21087-13-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221013183854.21087-1-vidyas@nvidia.com>
References: <20221013183854.21087-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT074:EE_|DM4PR12MB6568:EE_
X-MS-Office365-Filtering-Correlation-Id: 02db9b6d-fa3c-4d5b-76cf-08daad4a6764
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	T8ujoV2wIcLBb9jzuOlqb/HDbNjMhUeJE9w6uZIJIT0X/dJRijyZUIiMJnT9Y1ZMHbKI7eBFjyzh7mfYgRA3ZEjY314mEUoihbcamYDAf74c0/CrhQTPXnrMsvC0rJa1AyX1IUHljo9om/O/mQMfnl0Lj3PaPgrIcZ4DrhN43rY3LoFAN9e58f/x3zkyZ72PTZm4hhpd6yvKr7ZGMJOOPWQuR/ova1CA4608h9RP/cdQnOLCLlaP7DLRGmGZ139e1yecOUECX5EdaHGNmnGCfK4SoGGRLha7y8Am0vxvGRbZCxO8sjKik1y/yMo+y7cQlCfO8RiBgDf2XRBEgPu76x3N87rFJ3PqLmew5trA6cGkIg4yDrAgFAxdkLOroU9qxOCG3uZeJZSu+CSoGJUX1Tbo8pD7Za7cZmw8FurUL9kwK+6w3tuOCLkh3kCCsRyPrWWquLvr4jN/PRqk1KJxwmLSxaf48Xh4/1+2Wxx7q9lh3Aayeykcui66Z3YCLWMwbd9Vm8+hTGMQaG4D/9ML/yuF+JZrCtwkLAStYzIsLAqz+UURhgQiYyRBdus3YKOswGILzUGgdN1djlfYyQA74D5sU7u4RpWuKm1rAgkzkAUFc3TFqoqnqwTqkB3SQMXjciVwevJhBHM4Kgzp7wCZpZ7T9EOF/GCXQ8x7hyRtCw3i6JZ9ZWxW2BCAMrcvBDKzqvi4QDv2cyabKWB+/U9gpQsIATOAPLUlGiv1wxVB2eAXwRAAEozh8XE2z3TmDK/J4v3otnsb2ktctIM2V/2gqdV9ayyZyEIDhNJNZ8qK2z4=
X-Forefront-Antispam-Report: 	CIP:216.228.118.233;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge2.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(396003)(39860400002)(346002)(136003)(376002)(451199015)(40470700004)(46966006)(36840700001)(5660300002)(7416002)(1076003)(186003)(336012)(2616005)(7636003)(2906002)(356005)(41300700001)(26005)(8936002)(7696005)(426003)(921005)(82310400005)(86362001)(40460700003)(36756003)(47076005)(40480700001)(82740400003)(36860700001)(316002)(110136005)(54906003)(478600001)(70206006)(8676002)(70586007)(4326008)(6666004);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2022 18:40:29.8606
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 02db9b6d-fa3c-4d5b-76cf-08daad4a6764
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.233];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	DM6NAM11FT074.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6568
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_114033_294387_915E995B 
X-CRM114-Status: GOOD (  10.01  )
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

Enable DMA interrupt to support Tegra PCIe DMA in both Root port and
Endpoint modes.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
V3:
* This is a new patch in this series

 drivers/pci/controller/dwc/pcie-tegra194.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index 786e5d5f43b9..a1c3481585c9 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -94,6 +94,7 @@
 #define APPL_INTR_EN_L1_8_0			0x44
 #define APPL_INTR_EN_L1_8_BW_MGT_INT_EN		BIT(2)
 #define APPL_INTR_EN_L1_8_AUTO_BW_INT_EN	BIT(3)
+#define APPL_INTR_EN_L1_8_EDMA_INT_EN		BIT(6)
 #define APPL_INTR_EN_L1_8_INTX_EN		BIT(11)
 #define APPL_INTR_EN_L1_8_AER_INT_EN		BIT(15)
 
@@ -552,6 +553,13 @@ static irqreturn_t tegra_pcie_ep_hard_irq(int irq, void *arg)
 		spurious = 0;
 	}
 
+	if (status_l0 & APPL_INTR_STATUS_L0_INT_INT) {
+		status_l1 = appl_readl(pcie, APPL_INTR_STATUS_L1_8_0);
+		/* Interrupt is handled by dma driver, don't treat it as spurious */
+		if (status_l1 & APPL_INTR_STATUS_L1_8_0_EDMA_INT_MASK)
+			spurious = 0;
+	}
+
 	if (spurious) {
 		dev_warn(pcie->dev, "Random interrupt (STATUS = 0x%08X)\n",
 			 status_l0);
@@ -781,6 +789,7 @@ static void tegra_pcie_enable_legacy_interrupts(struct dw_pcie_rp *pp)
 	val |= APPL_INTR_EN_L1_8_INTX_EN;
 	val |= APPL_INTR_EN_L1_8_AUTO_BW_INT_EN;
 	val |= APPL_INTR_EN_L1_8_BW_MGT_INT_EN;
+	val |= APPL_INTR_EN_L1_8_EDMA_INT_EN;
 	if (IS_ENABLED(CONFIG_PCIEAER))
 		val |= APPL_INTR_EN_L1_8_AER_INT_EN;
 	appl_writel(pcie, val, APPL_INTR_EN_L1_8_0);
@@ -1927,6 +1936,7 @@ static void pex_ep_event_pex_rst_deassert(struct tegra_pcie_dw *pcie)
 	val |= APPL_INTR_EN_L0_0_SYS_INTR_EN;
 	val |= APPL_INTR_EN_L0_0_LINK_STATE_INT_EN;
 	val |= APPL_INTR_EN_L0_0_PCI_CMD_EN_INT_EN;
+	val |= APPL_INTR_EN_L0_0_INT_INT_EN;
 	appl_writel(pcie, val, APPL_INTR_EN_L0_0);
 
 	val = appl_readl(pcie, APPL_INTR_EN_L1_0_0);
@@ -1934,6 +1944,10 @@ static void pex_ep_event_pex_rst_deassert(struct tegra_pcie_dw *pcie)
 	val |= APPL_INTR_EN_L1_0_0_RDLH_LINK_UP_INT_EN;
 	appl_writel(pcie, val, APPL_INTR_EN_L1_0_0);
 
+	val = appl_readl(pcie, APPL_INTR_EN_L1_8_0);
+	val |= APPL_INTR_EN_L1_8_EDMA_INT_EN;
+	appl_writel(pcie, val, APPL_INTR_EN_L1_8_0);
+
 	reset_control_deassert(pcie->core_rst);
 
 	val = dw_pcie_readl_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL);
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
