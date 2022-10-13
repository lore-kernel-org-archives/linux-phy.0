Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40368C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 13 Oct 2022 18:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tf0VCfRGjvlY5POsICwFeL0fmYLDlScV6+PD9o0f8w=; b=BICyS4xGRz8mRP
	+uitHrBc0Nq5ZtHajiNkOZR2w1Ya+XskDJkD5keO2kNt1uApOC2zW3WkaEFaoQFYxC81KLc56Wmq0
	/kkHLN+Rw4Q3nb0IU/xF1NlskkDkiMoU3hqac6ISA+iSTzilK/vIPn/yTxx4x070LYMEtEqzTDtwv
	4/9kRLXjUj6sUomz9utlD62YDfz++8OWlzZwlrUJMXxxR5ttqcAaPUIkYP5SU5Fedj5O87wYtlVCR
	RK7o8R9vjn6SKsqIKYQdCRbunFjSZpT9qTiQDghxS0hi27IPFcu4ca+DyRp59wdQ4ZCAuYAru8sp0
	WHAHntOlbrs4guqcyfYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj383-00Cism-Mz; Thu, 13 Oct 2022 18:40:23 +0000
Received: from mail-dm6nam10on2086.outbound.protection.outlook.com ([40.107.93.86] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj380-00CirR-OB
	for linux-phy@lists.infradead.org; Thu, 13 Oct 2022 18:40:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fp3pkHYOGSjnJbdYdF5dDqEGOdWUY+F0lzxBQQnA6s9Kx2ihyQAZHMcsBpkWgIbr1yGW3WsCxo8Rkyd1SqXrSnMTBxDI1GJKMMtPAcuZyAn/pJ9fVnylsSrIqOL5UYc6dxWN5XG5JHQyg4rIx+a4wijmEcRLX1/3uE0soBocPX1WZkOoal15APnlF/ko/brM+JMBlp+JhqLsfBLbd5y0fHPTmjRcZbfmelVFIQtUFF2roljxC02ZQHk/tnRyJDAfReZ619LvsRvaYhHA67YTfuA3l26Qe3Lhh5h9YcuwNulfzjWl1OLg/RF2A/IdOtApNPDcOLsXacDLp226KcKAHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7weGrSIDLBM7TO9gaN5MsLe4MAx+Wl+GvpEGP4EWS6c=;
 b=Mk+h2hCbshOoRLQGnAEmebqOrXHsm6Bf0LPf+lpKcFjqFOF5J8ZNHm3ec9yqxxvRLs5xtb9t0oqEEXpYQA5MTiGmuIOsV3bOihk3xZAgaKKLdIupNX2VLbTgRb8LePhJW8Qu+bD3UcKNbI6/fAQmPFp9/pFMzw1e1v4K40tuP6/louYFz7cHATIJcFFbCHGjVaITPv8t//hGOIB59SLX6rw6u9cdqaLAGzqyb5jRHmVTacwDp1p+nsdb+J4tvo+eE6XP/oXAcPHCMFTQs/ixqYspvXCqA+Dg6as0oSePXCPUx9WBaw3c2Cdy4AlQNlBQZpwPhMFqTQAoHlaUNH9I3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.233) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7weGrSIDLBM7TO9gaN5MsLe4MAx+Wl+GvpEGP4EWS6c=;
 b=oh7FAcE6DOq2CrK+EyvnRn5336B8upUYTtNwXsh2+oa8p9JhiPpJ1m7GSImci/b68hsfE1igX3bLB3xme3O5mGyTtn34bk3qTWYbDmQMgZZzd+wz8Z46ByvkPsuC5On+fBfDuERHjt1A1XOC0UtOA+pVaMmi7uHwgGXaAwxvdl9XblClzw7MNn10dB+WMBfNfxdQlK9YBU6/duKtQEyY4hx3vDThW7YAE/inBTq8R0dmFTIT3tyW1M749HA9TiRgu/RAZauNjMkHjYji5rOz3qyYQhdSRZS0rSi3Vzm6F4xc95qlEbONuo9kya/+6FNg5TXRgtkTiCRtIYEqUfWitw==
Received: from DM6PR05CA0065.namprd05.prod.outlook.com (2603:10b6:5:335::34)
 by DS7PR12MB5911.namprd12.prod.outlook.com (2603:10b6:8:7c::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.15; Thu, 13 Oct
 2022 18:40:17 +0000
Received: from DM6NAM11FT038.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:335:cafe::18) by DM6PR05CA0065.outlook.office365.com
 (2603:10b6:5:335::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.9 via Frontend
 Transport; Thu, 13 Oct 2022 18:40:17 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.233)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.233 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.233; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.233) by
 DM6NAM11FT038.mail.protection.outlook.com (10.13.173.137) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.20 via Frontend Transport; Thu, 13 Oct 2022 18:40:17 +0000
Received: from drhqmail201.nvidia.com (10.126.190.180) by mail.nvidia.com
 (10.127.129.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Thu, 13 Oct
 2022 11:40:09 -0700
Received: from drhqmail203.nvidia.com (10.126.190.182) by
 drhqmail201.nvidia.com (10.126.190.180) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.29; Thu, 13 Oct 2022 11:40:09 -0700
Received: from vidyas-desktop.nvidia.com (10.127.8.9) by mail.nvidia.com
 (10.126.190.182) with Microsoft SMTP Server id 15.2.986.29 via Frontend
 Transport; Thu, 13 Oct 2022 11:40:05 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lpieralisi@kernel.org>, <robh@kernel.org>, <kw@linux.com>,
	<bhelgaas@google.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
	<kishon@ti.com>, <vkoul@kernel.org>, <mani@kernel.org>,
	<Sergey.Semin@baikalelectronics.ru>, <ffclaire1224@gmail.com>
CC: <linux-pci@vger.kernel.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<kthota@nvidia.com>, <mmaddireddy@nvidia.com>, <vidyas@nvidia.com>,
	<sagar.tv@gmail.com>
Subject: [PATCH V3 10/21] PCI: tegra194: Free resources during controller deinitialization
Date: Fri, 14 Oct 2022 00:08:43 +0530
Message-ID: <20221013183854.21087-11-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221013183854.21087-1-vidyas@nvidia.com>
References: <20221013183854.21087-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT038:EE_|DS7PR12MB5911:EE_
X-MS-Office365-Filtering-Correlation-Id: af831bb4-a975-43eb-c292-08daad4a600c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	4zcgVGdQjalMWiBTtbmiw7RSxl8i690JhwLeJIfb3Bwn8H06iSRGvE8qJU9eFydCmtBuHjrrqScS0xNFyDVaemaZz6k0JaohPYkbYOdslu2HcbtRvzE7xg0axqHaThf80djaqkKbhTI0K4BypTDiNn4vv1oaqIAilvcYNVIPuPmBVRd08BTYAeODBsJeG5tc+D83rs/gmp7SFCC3Wrqk+QJLDXMXSgGQ4oth6mw6uNA0ZsvlSE2MGdg5k45hmCzraffqjW+BzrJaH4av6479Z50nfCrBJTCWBSPhdte8HCUC9p9OrOAes3NWHHPuyIxqfzU4LtSSROl2Y3yCZ0U3W2KR9qf2/quES2O0sVkOhHIBxvj4E0YWNL13Df4r/kNWisv5NDLj/Kx7Ll1bgIU8dIsW1Es6wPLj9nN4CiTQ2r+WC5ugZCqX4Qco8y8bmosFBHg+1i0c2v7iNSiVIbkS21f6zw4IypsvktqYTFHdtDeC0x9t5A02NjckE0JKITRhaxtXBMJmqMkUEX+rOudts/IJNrHdHN7YtwRw0e8Wp+eXoI8a/RBI2SGgOvOiqcXtDYqIru3mNiCUj3WB/hQMFUJHkRXPrwoVzdOOK8vByj/fHV7/H2hTG5w5bn0NqmSKL0btMRUWMvZ/fD5KedHNi0UUcX1wPtatetDTcMcUgzeVRt13m1bI/C34Ou5KX9jO5ZvVkeBKYvEwAvA7kcqYq1thpYF7KoKBKsL0OJyPN993LyjrZZ3iJsVJOCjbzbP/V6R10snMtpQ0bRANg0stPLLaSYWX/++yTTepwXt/PJY=
X-Forefront-Antispam-Report: 	CIP:216.228.118.233;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge2.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(396003)(39860400002)(136003)(451199015)(36840700001)(40470700004)(46966006)(26005)(7696005)(36860700001)(82740400003)(4326008)(316002)(8676002)(70206006)(921005)(70586007)(7636003)(86362001)(40460700003)(36756003)(40480700001)(356005)(82310400005)(83380400001)(186003)(6666004)(47076005)(2616005)(478600001)(54906003)(2906002)(41300700001)(336012)(5660300002)(7416002)(1076003)(8936002)(110136005)(426003);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2022 18:40:17.5418
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: af831bb4-a975-43eb-c292-08daad4a600c
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.233];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	DM6NAM11FT038.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB5911
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_114020_803832_09C8E67E 
X-CRM114-Status: UNSURE (   7.01  )
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

Call dw_pcie_ep_deinit() during controller deinitialization to free the
resources allocated in common DesignWare driver.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
V3:
* This is a new patch in this series

 drivers/pci/controller/dwc/pcie-tegra194.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index 910dc6c2154e..7820bf4b9786 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -1770,12 +1770,16 @@ static int tegra_pcie_config_rp(struct tegra_pcie_dw *pcie)
 
 static void pex_ep_event_pex_rst_assert(struct tegra_pcie_dw *pcie)
 {
+	struct dw_pcie *pci = &pcie->pci;
+	struct dw_pcie_ep *ep = &pci->ep;
 	u32 val;
 	int ret;
 
 	if (pcie->ep_state == EP_STATE_DISABLED)
 		return;
 
+	dw_pcie_ep_deinit_notify(ep);
+
 	ret = readl_poll_timeout(pcie->appl_base + APPL_DEBUG, val,
 		((val & APPL_DEBUG_LTSSM_STATE_MASK) == LTSSM_STATE_DETECT_QUIET) ||
 		((val & APPL_DEBUG_LTSSM_STATE_MASK) == LTSSM_STATE_DETECT_ACT) ||
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
