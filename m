Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BB52C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 13 Oct 2022 18:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lSwJrLUTxeGPDqBvRRxLlJNYhucDRrl3pHX4mjLvuak=; b=oyF/ExUNNc/oKP
	eTq2bBRZtyti0y+2gCctU9+JCgsrmuuO4MQ22pann/zwsxX7I9/+8XAeIoc9Qgzojba7UCzLbDhxS
	rIbX5z4WuTAX5XGiJt07MRNnQ+O7nxuUZrNOFjX7IBm0FHcPDJ0vdYsz6tXnnz9R3Kh0vQ/imf0Pd
	NO9SMQc6Jl4KZ9CsxyApsZe8OWE7Y8naRQoGgWyuxX4thxNiJf9DbYIp9k66AwGqMEz5zaqxjCFvf
	kqlZEGGyqtJagnqZyxpxCX3wJoAHZvIKdZEVnQ43f5ke96k6CeL+/RlYDzOJEz0FrNJU7fSdmlFwJ
	lh2hz88jb9Vu38JEbxJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj37I-00Ciem-Ud; Thu, 13 Oct 2022 18:39:36 +0000
Received: from mail-mw2nam10on2056.outbound.protection.outlook.com ([40.107.94.56] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj37G-00Cid3-7w
	for linux-phy@lists.infradead.org; Thu, 13 Oct 2022 18:39:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZYo8H29q/otDfve4q4iNLtopOrU/ZpMXa3k4UdL+ahy5L+KP2wBCmoRqEKk6O4d0fz0yiHXBsINiS8HAYhw+veIeiOxoZqENQ5jksVvmf50XiHSyRler8F0jrzlYcTH/c95BqFhmOskrx0x3Djy7A1/b6eqLWjvZcNr5guNMekJa5yOodm75+ziICQuAircIwYgzaSwSdDLeJuBGL3ScMc1JXUnanrCqRtjFdMW6fg3RX4WAgvK/H9AFS36VL20Mw287UGiTQNWfgSh/QPMOMlp+69MuRNUQHk9VPcsFb2WnY/yZbzySbBHTO95DffDlUFoW9R0rxq42Pqf5i6arCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L2SDBLtaFY9fUZ7B1MAtE1kvtsVnPPZ5erFTxMZVi74=;
 b=HAPI/k5tdGc1+LQ3W6cG9LGEl0H26Jx49cAnxP6zoEqvRG+UtamVlpGiWHk8PfAfn06P6pH7XUAvsKECcYVQmiv/8Z5HQU2rhNljRCewTbsZyH7AUSxUMCUyvVapHRJ7gF6bUtEVZPJ31JDa5XMWU6OU9fLZzLRFeJLLgCg2qQwyOj+Kw1iPWDP0RsH5qlhH8iNSa6bcCOlPsPAcYGtk6FPSWW0MtwjhUeuvrQwyB0mr5Snz1lXLZ3HLf5OEQfJu9SciKHUGbF2DNXU5TpmqC7Mu7sZFGs4J+yEN8YS2QHZegg3AH8LM4WRjJrA+zrUZ40d3phFytLK79Mcxkle4uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.232) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L2SDBLtaFY9fUZ7B1MAtE1kvtsVnPPZ5erFTxMZVi74=;
 b=MdSMXr/fRaJbeatUdcqvJMx6oK7DjuV6jnbiIw7MbBBBwszNxSqAmB3Exdj0e2U65r6rHNj2iA/cvbCQxC+q23l+8/jZdu5aQPv5uZ9nlS16DK4oCE7OAPtrLOtojdc/GOATtQgOCPjj5Q3ORf0tGKgz5pGTXvTYO6vsSAM9pWdgsc9QS0tzp+WHexUtNXf/2ML+w1v8fpgbq1MTWU2MVZdIo6ouwPX0DY2483SPduQqEY/zl7cefRv1nqMlJH/mKv6dqyQ2i5T7Yd+yiESW77C7r50IKbix1eHGhDo/itupKPNzGXn2n146/eH4qIiUkvUOPA9KVHDLw/ab06nVtw==
Received: from BN1PR14CA0003.namprd14.prod.outlook.com (2603:10b6:408:e3::8)
 by SN7PR12MB7021.namprd12.prod.outlook.com (2603:10b6:806:262::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.22; Thu, 13 Oct
 2022 18:39:28 +0000
Received: from BN8NAM11FT050.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:e3:cafe::e7) by BN1PR14CA0003.outlook.office365.com
 (2603:10b6:408:e3::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26 via Frontend
 Transport; Thu, 13 Oct 2022 18:39:28 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.232)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.232 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.232; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.232) by
 BN8NAM11FT050.mail.protection.outlook.com (10.13.177.5) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.20 via Frontend Transport; Thu, 13 Oct 2022 18:39:28 +0000
Received: from drhqmail202.nvidia.com (10.126.190.181) by mail.nvidia.com
 (10.127.129.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Thu, 13 Oct
 2022 11:39:17 -0700
Received: from drhqmail203.nvidia.com (10.126.190.182) by
 drhqmail202.nvidia.com (10.126.190.181) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.29; Thu, 13 Oct 2022 11:39:16 -0700
Received: from vidyas-desktop.nvidia.com (10.127.8.9) by mail.nvidia.com
 (10.126.190.182) with Microsoft SMTP Server id 15.2.986.29 via Frontend
 Transport; Thu, 13 Oct 2022 11:39:12 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lpieralisi@kernel.org>, <robh@kernel.org>, <kw@linux.com>,
	<bhelgaas@google.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
	<kishon@ti.com>, <vkoul@kernel.org>, <mani@kernel.org>,
	<Sergey.Semin@baikalelectronics.ru>, <ffclaire1224@gmail.com>
CC: <linux-pci@vger.kernel.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<kthota@nvidia.com>, <mmaddireddy@nvidia.com>, <vidyas@nvidia.com>,
	<sagar.tv@gmail.com>
Subject: [PATCH V3 02/21] PCI: tegra194: Drive CLKREQ signal low explicitly
Date: Fri, 14 Oct 2022 00:08:35 +0530
Message-ID: <20221013183854.21087-3-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221013183854.21087-1-vidyas@nvidia.com>
References: <20221013183854.21087-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8NAM11FT050:EE_|SN7PR12MB7021:EE_
X-MS-Office365-Filtering-Correlation-Id: 0beea1e1-012d-4ef4-7da8-08daad4a42c8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	bYnTU4AOp5SjlRpP4zGKYR5K/3yvhAmHL3BC6v07IOWzQYXoehKWPvz1+SHe/3KoUTZcD0QwA8XzuT7KqT5dK2JIm31QG7lvUrJFvio4Jb11FMtiIUgzPRhJDHMehXw2QBfcx7c2lViNJPr5GkNnjPmlHdCXnsZWyPvHkQnfccpcIe36zbWAuE8Netnie9heznEyQ7p53lbH/I4rRwbByHgbJXHNvKg6166H5emy45zHUDxruXdpCPkAWumDFCpvhSMLLoojaR+AOeSEOnp0sITJ4rA8l+IPT3C1T1C5nsGLpwKOa7WXunldwFJ8RgpAqmcLtFCh9VzgI6tFoZcq6t8rUvahw2xUtp0iVxIbpbWqirqMwlox5+sq33fd9KTDHPjgp+o46TSnjw8a5ap+JmkBw+xbgZ8tAVxPcF9VR5cE0uVgv6gxtVpkpiTG5M08F/GfN8Zcbh6FtUT+XKBtSY/7HrPTEseNaOpMLQS/g8iTZ6QOQaRZtAUOT5VGC6BSdSh7SCgn9xghiB4cGTO9ZxZpSfz0nQBEy05k5Zkk5DZPkqqHo5NvI9SedFGrlntq9F+qv1lYsLJmcO+bTr+QxMTDp7V8sb5TgstjVHy8W+gqbaWpEx//zBtUHC30NeUEQnKYgQF+DvYVOmNvSKKT7kRLD8YnUh5nrRDZdS87QFe0mALm+7yZeKyrIOFS7UtokTqoUDCj22SFmAjgK+ZQQbDB4oiAKqrzPa41S+fR5pfQm4t5NpAvjDVgYybBVYNL7yrKMklgAR47KzsKDSQOcZf+sLkRKYQDShRDTL2Tdp0=
X-Forefront-Antispam-Report: 	CIP:216.228.118.232;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge1.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(136003)(39860400002)(346002)(396003)(376002)(451199015)(46966006)(40470700004)(36840700001)(316002)(110136005)(82740400003)(40480700001)(426003)(921005)(36860700001)(54906003)(47076005)(8936002)(1076003)(7416002)(7636003)(26005)(186003)(5660300002)(6666004)(2616005)(2906002)(8676002)(4326008)(70206006)(70586007)(82310400005)(7696005)(336012)(36756003)(356005)(41300700001)(40460700003)(83380400001)(86362001)(478600001);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2022 18:39:28.3936
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0beea1e1-012d-4ef4-7da8-08daad4a42c8
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.232];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	BN8NAM11FT050.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB7021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_113934_305021_0B60FED2 
X-CRM114-Status: GOOD (  10.82  )
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

Currently, the default setting is that CLKREQ signal of a Root Port
is internally overridden to '0' to enable REFCLK to flow out to the slot.
It is observed that one of the PCIe switches (case in point Broadcom PCIe
Gen4 switch) is propagating the CLKREQ signal of the root port to the
downstream side of the switch and expecting the endpoints to pull it low
so that it (PCIe switch) can give out the REFCLK although the Switch as
such doesn't support CLK-PM or ASPM-L1SS. So, as a workaround, this patch
drives the CLKREQ of the Root Port itself low to avoid link up issues
between PCIe switch downstream port and endpoints. This is not a wrong
thing to do after all the CLKREQ is anyway being overridden to '0'
internally and now it is just that the same is being propagated outside
also.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
V3:
* Reworded the commit message

V2:
* None

 drivers/pci/controller/dwc/pcie-tegra194.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index d7ab33931de4..a33c86e3de9d 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -47,6 +47,7 @@
 #define APPL_PINMUX_CLKREQ_OVERRIDE		BIT(3)
 #define APPL_PINMUX_CLK_OUTPUT_IN_OVERRIDE_EN	BIT(4)
 #define APPL_PINMUX_CLK_OUTPUT_IN_OVERRIDE	BIT(5)
+#define APPL_PINMUX_CLKREQ_DEFAULT_VALUE	BIT(13)
 
 #define APPL_CTRL				0x4
 #define APPL_CTRL_SYS_PRE_DET_STATE		BIT(6)
@@ -1510,6 +1511,7 @@ static int tegra_pcie_config_controller(struct tegra_pcie_dw *pcie,
 		val = appl_readl(pcie, APPL_PINMUX);
 		val |= APPL_PINMUX_CLKREQ_OVERRIDE_EN;
 		val &= ~APPL_PINMUX_CLKREQ_OVERRIDE;
+		val &= ~APPL_PINMUX_CLKREQ_DEFAULT_VALUE;
 		appl_writel(pcie, val, APPL_PINMUX);
 	}
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
