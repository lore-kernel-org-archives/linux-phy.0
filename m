Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9ACDC43217
	for <linux-phy@archiver.kernel.org>; Thu, 13 Oct 2022 18:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ysFbAAAtQCmOUKA27gVcXApS1SgBIe2eAqOWmhPJFo=; b=pTcUgFLc3Nirh+
	YjupvQkQzsxE8VTMW0vn2jEAP/ETHsXgYYU++nIjr0EEGdB/tIKZxXioGvo3ZFy5KI/Jv3uM7QQ4i
	BH3K1kEGODB4VuY8hYIAcFHpYZxyGXJKhFLzxejpIkfU0yqLQ1YmppPBNp4QGRDJ2xZ9ZPARIOaPn
	/ljs2qDdZfM5FGT9KmxP59LCLCMIr/d3n+Tpq5MXliBTpFBDN0HD/y/mt9Fnhi1MDY4D4/KYJOb0Z
	C3/BFSvn9drbBWZCmTmVo6/GtMlf+W4MB45VXlGLgz8iPj/wmKu7bak8KOTUtfYRvwY65ViPMbBt3
	FqcqynPlIq65L70tHCJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj38I-00Ciyd-Vu; Thu, 13 Oct 2022 18:40:39 +0000
Received: from mail-co1nam11on2065.outbound.protection.outlook.com ([40.107.220.65] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj38G-00CixE-Ny
	for linux-phy@lists.infradead.org; Thu, 13 Oct 2022 18:40:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GnhlqrVAgFO7eUZ7gpj33QLya7dylVDGiDLJ1m1VDMPUFFqO/JXdfwX2YUgf+uraRFoF83PyHqR7b34MTp+zj5moqxiHP5p3u6OO1zlRN/poMA8OEysDVvIowRUTkJcRX7cQGfl0ENPI5jDgsgKRXMFyHB5lJ/79oIVu/FlltusBTdCTU8Fu3/Id6+8GNxx5ujKkOcwDsz4JYL/Hw85EvCdY4jwo+X6lURhiipcsS3+c7WLxn0uG84Otre73t0Be/o4uxCkJGJ2bP3hvqGN9rYVLy7JN+QNjmHZhRj/6NQ2RsC1/Yts8Qi+9SGV1hq4Iy3WiCO1vufxp8HmR0GpE3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NVum5g4iSVlMg0X000qp1jZQMVyDsz0ZHu0LASebBOg=;
 b=T1F5QU3cB6tx44CTTVH3YIF4f/c+Vo0BoZKA1MR1mIT9W53hjHnSHi5ryMriQdwVpCbsKM2Zf0PZ0nfsj0NVpz+Ym2QuhNPyxiqz2nOaLz/njzM1IasTI07VLJIFDm92gqss0HKT2n7sBw0HOEb8rz5H9+I+8W9EAzZMXFwW8c07AuH4lIjjW/d81n3uhvZMFDZPOajFCugbMHOEoPe4380eby1Y7GNXm61z3fOegChI8f5KzyI0qfAIdppffxu0AfGzS/x12jma2rV6YcyXY27Jwnm6HSmRwyltbq4UUtbr2oqaP4USp9aD6RiJswQoqPndX02H0oi7FfLxDi3yqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.233) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NVum5g4iSVlMg0X000qp1jZQMVyDsz0ZHu0LASebBOg=;
 b=osA6MSIKsUfUXW1KKa9U0dlokNXFFzGQ6DLCDirz6R8v7S4m9ueDUNdixiNrcs1GBg+Qhd5+YnNKRvqDcm6cFJG1mlkbhB9SQNJkM3n4Dc7mp2RIbgSZiV3FGeLM9iNchA8lG2Jgvdsv5aa1aJEkgkClHa+Xfwhwh/SVJuQ3gpwlb+EzGWyWNsmuPSY9R1iruSagWARaSINvGnnS9LmjN+4loGWsj9LYlPxIX9N0dtOIEnwg7wr3A5uK42MGxSxCZEZWAD8f8OB362+OwrrJiZKC8lp6C2ZakCURWHEmrSdeoawF0Z2dEF9tGLrxUaGCDTdKPMYIxXbufPPGqX/egw==
Received: from DM6PR10CA0017.namprd10.prod.outlook.com (2603:10b6:5:60::30) by
 DM6PR12MB4121.namprd12.prod.outlook.com (2603:10b6:5:220::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.26; Thu, 13 Oct 2022 18:40:33 +0000
Received: from DM6NAM11FT074.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:60:cafe::5e) by DM6PR10CA0017.outlook.office365.com
 (2603:10b6:5:60::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26 via Frontend
 Transport; Thu, 13 Oct 2022 18:40:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.233)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.233 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.233; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.233) by
 DM6NAM11FT074.mail.protection.outlook.com (10.13.173.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.20 via Frontend Transport; Thu, 13 Oct 2022 18:40:33 +0000
Received: from drhqmail202.nvidia.com (10.126.190.181) by mail.nvidia.com
 (10.127.129.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Thu, 13 Oct
 2022 11:40:29 -0700
Received: from drhqmail203.nvidia.com (10.126.190.182) by
 drhqmail202.nvidia.com (10.126.190.181) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.29; Thu, 13 Oct 2022 11:40:29 -0700
Received: from vidyas-desktop.nvidia.com (10.127.8.9) by mail.nvidia.com
 (10.126.190.182) with Microsoft SMTP Server id 15.2.986.29 via Frontend
 Transport; Thu, 13 Oct 2022 11:40:24 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lpieralisi@kernel.org>, <robh@kernel.org>, <kw@linux.com>,
	<bhelgaas@google.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
	<kishon@ti.com>, <vkoul@kernel.org>, <mani@kernel.org>,
	<Sergey.Semin@baikalelectronics.ru>, <ffclaire1224@gmail.com>
CC: <linux-pci@vger.kernel.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<kthota@nvidia.com>, <mmaddireddy@nvidia.com>, <vidyas@nvidia.com>,
	<sagar.tv@gmail.com>
Subject: [PATCH V3 13/21] PCI: tegra194: Enable hardware hot reset mode in Endpoint
Date: Fri, 14 Oct 2022 00:08:46 +0530
Message-ID: <20221013183854.21087-14-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221013183854.21087-1-vidyas@nvidia.com>
References: <20221013183854.21087-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT074:EE_|DM6PR12MB4121:EE_
X-MS-Office365-Filtering-Correlation-Id: f45e2618-a5fa-4631-7afb-08daad4a697a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	FYfU4cqeglcAzTBMKHF6GtTFLsGeS9geP0vK3PcpSJvvppBdNZFwT3HI3XEATJ9CsA1IVDWJ7KdmtjX8TYGYDyFEsVB74X4a+Yrg4ULWRwRiYe3P9pn7iWdvz8Ka18ngPGH5rREXKY/IGzTB6ULMf/uMi6l0bzbWUi2NmWeZkbOElUeqvVOuYSX+o6sMtNKiwiossFoYORybslTPBbutlSH6GNpXj73Hsqyr+LtzxXZpZddi7df8bz/0uvCRYBJMawUjnXBcM7oIC1XVA73g6njfaOT/rlfdfsUJe2S2Bcq0J2n7tx93h6L4gE//wyhruEy+6BmNhfKwOBr1CRrF3n0OKERAKXtmO33UiyDIXYy++VFBszscXzhKssbs8y2j4Z1POHZZ9kUITCJZqFa6plK0Bj/ZA3rrgvjOE7nstQ2ORFjo0+Ps/IpMxVu4Ue0QcBPV0PW8xq1fPkdLOH+is6rVq2LYq3rjMaPn/X+7Zax+YmmSM0wnCIiQhjVrJ0WzkjEkQV5BNKPjbllBPPiGa45596f0LRHmIWJzyfGaAirbd955lmcUrYXMDfo3bm6YIsjhhdiYU+9n2DqxSYRiSq3N5TckWd99VjjgyQLDoEC3Lok47ShhAEyHr6xmeOaPrBbHQ3NeVRSwqV7q/YKruSPgNPDXIxll7bco7ZZO1+uHdMrcPtRej2xSYylkTQQIj0l6/XCo5dm/9YvlG1/JTwRgJnTr8xr1QPeSNQQ/uoX6tMDQ/3ZViWxHT87t+oMZgj9TiaNSuPmGgvAT77joHvMGY3LkuAx96DbaLebZ/uI=
X-Forefront-Antispam-Report: 	CIP:216.228.118.233;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge2.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(39860400002)(346002)(396003)(136003)(451199015)(36840700001)(40470700004)(46966006)(47076005)(356005)(26005)(7636003)(36756003)(86362001)(54906003)(110136005)(7696005)(8676002)(70206006)(4326008)(7416002)(70586007)(2906002)(82740400003)(6666004)(2616005)(41300700001)(5660300002)(40480700001)(8936002)(1076003)(336012)(40460700003)(186003)(316002)(426003)(921005)(82310400005)(36860700001)(478600001);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2022 18:40:33.3760
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f45e2618-a5fa-4631-7afb-08daad4a697a
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.233];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	DM6NAM11FT074.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_114036_799493_37DAAF17 
X-CRM114-Status: UNSURE (   7.09  )
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

When PCIe link goes down, hardware can retrain the link and try to link up.
To enable this feature, program the APPL_CTRL register with hardware hot
reset with immediate LTSSM enable mode.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
V3:
* This is a new patch in this series

 drivers/pci/controller/dwc/pcie-tegra194.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index a1c3481585c9..78ee0f713e71 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -1913,6 +1913,8 @@ static void pex_ep_event_pex_rst_deassert(struct tegra_pcie_dw *pcie)
 	val = appl_readl(pcie, APPL_CTRL);
 	val |= APPL_CTRL_SYS_PRE_DET_STATE;
 	val |= APPL_CTRL_HW_HOT_RST_EN;
+	val &= ~(APPL_CTRL_HW_HOT_RST_MODE_MASK << APPL_CTRL_HW_HOT_RST_MODE_SHIFT);
+	val |= (APPL_CTRL_HW_HOT_RST_MODE_IMDT_RST_LTSSM_EN << APPL_CTRL_HW_HOT_RST_MODE_SHIFT);
 	appl_writel(pcie, val, APPL_CTRL);
 
 	val = appl_readl(pcie, APPL_CFG_MISC);
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
