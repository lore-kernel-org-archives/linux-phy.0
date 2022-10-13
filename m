Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBFA7C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 13 Oct 2022 18:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kwQgsRv9wGr6JdPWxggYiVCowgHlYdtaFsmK68QuLu4=; b=yQOTsUtw2AD35U
	Yn4YgMFbUF3fqhGjInjF7JVtc4NQkBdybhl7Xq/umakTbAr5Ylp5HHe78m4ZIGsRhCwBR5NEJCYAC
	74sYHMnEJ8ZvHHZcV6s+mFOn6ab+7nTOskBZm0TMItdgMkIsUgqlRMpk6KsUhQNaWtFRHtq3s+OSG
	X7LLyKVu+6YXwLulSh1qLvqmco0ppi8taqi3OK0yjLgJYkam3wIcTXZxlhjzMUrtTvq7ldbyBiS1e
	Cbjl686h1VA/Y1Fj70a4EZAgfL7qFcUrQufJkuIvPd3q/jlDhrDFg2nKbogaXHtOem/P5DS36pUU1
	SAGhzLg7RzabU12xDllw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj37m-00Cinx-D0; Thu, 13 Oct 2022 18:40:06 +0000
Received: from mail-dm6nam04on2063.outbound.protection.outlook.com ([40.107.102.63] helo=NAM04-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj37j-00CinC-GT
	for linux-phy@lists.infradead.org; Thu, 13 Oct 2022 18:40:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KbYh07vA4SGNZSh3w0e/UeebTfqthWfuum19VPmyyvtE18wV0/qTxv1crw/EpeZfRHQH4DsqHErJYgcIKFbYd88z8oYq45kDdlG0haEr9ChGtf4MqxSgjT90IJnDS+fE7/MCkcmCKQuojozoT6bn7HUSCUJ5wM5POzcL4Ze1m2mAGxKhuqF418pQDlcJ/qauK/Ug7Y87RZZgaRZlnnwve6Cx2KEJKtoV2c+CMOQdVtJ7VC6Iav62oBLSEayErS20JqfG3gs6HySJulAnUTo0t91fh0lWWoECCpoFbedOETgVeTqYJgDfR3j0hp5S9GyYP98Za2llBOZBfq6ZrqdGoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XeP2n9kvp0meTUaeqD+YLu2d/BVbWALLwpD5bIe6CYA=;
 b=ATNIocWaIP91iCyUnWdjXweOo5bA5YnAcdPvAzgulKQPXPqOkPaLECEC8JneO+FfPJ0MWId4sCrp2s2H70fFusniD+MJ6/90/wU7uX1qqEen8Zp2L9zayETAbXpuTEiC+4UeK3fHWVORMjYDk7WOKoSe8ID1NfMJfTbpcmqZ07rQRXjBWmXBfdjxuUtyWvBHxdQQvBsDg7HY7c42Qk5qOY1mJzfxYyGHvMK1eAoWZtqQ9s6f8qLtY8yfctPnvVXPPVZZvGS6T4D+8TXvmiDjkzkzTQb8tu6F0ZJbBXYToZqLvz7WJ8DkcXfeiJKpi4gEAIBPnYFgaGHrB7WGior5Dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.233) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XeP2n9kvp0meTUaeqD+YLu2d/BVbWALLwpD5bIe6CYA=;
 b=gUBAjen9aNg5GK7ahKS0VZ9FCEg7+MrMxZRhoz38JmiUx9XNzMkHRnxJfgM/uy2y7q1vcyBJOe2MYFvXC80ic6rXzRodpKsaYWgf4jQWRBMr16QKcyJwrTBB/TieB9ndDMfz8VCpQeRRkhpFY4bGRh8q3C118XVc0GXrF4Kuhju0RDOaD9nTboHG3neOwN6UGPpWpFsvq1vBH0omqgQg43+zsHmYHgv7/9QheeMh8MrljQebq+CsEu5y90dWIzYwBvi1CZ2v3Ivi1t6B3tA34m7uHw6+oyBIhDqMoa8+KPsHm7nSPXaqUcEQ4drWnXOi4ywEUsReoftWvm5tpR/KQg==
Received: from DS7PR03CA0067.namprd03.prod.outlook.com (2603:10b6:5:3bb::12)
 by BL1PR12MB5302.namprd12.prod.outlook.com (2603:10b6:208:31d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26; Thu, 13 Oct
 2022 18:39:59 +0000
Received: from DM6NAM11FT098.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:3bb:cafe::8f) by DS7PR03CA0067.outlook.office365.com
 (2603:10b6:5:3bb::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26 via Frontend
 Transport; Thu, 13 Oct 2022 18:39:59 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.233)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.233 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.233; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.233) by
 DM6NAM11FT098.mail.protection.outlook.com (10.13.173.61) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.20 via Frontend Transport; Thu, 13 Oct 2022 18:39:59 +0000
Received: from drhqmail201.nvidia.com (10.126.190.180) by mail.nvidia.com
 (10.127.129.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Thu, 13 Oct
 2022 11:39:49 -0700
Received: from drhqmail203.nvidia.com (10.126.190.182) by
 drhqmail201.nvidia.com (10.126.190.180) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.29; Thu, 13 Oct 2022 11:39:48 -0700
Received: from vidyas-desktop.nvidia.com (10.127.8.9) by mail.nvidia.com
 (10.126.190.182) with Microsoft SMTP Server id 15.2.986.29 via Frontend
 Transport; Thu, 13 Oct 2022 11:39:44 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lpieralisi@kernel.org>, <robh@kernel.org>, <kw@linux.com>,
	<bhelgaas@google.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
	<kishon@ti.com>, <vkoul@kernel.org>, <mani@kernel.org>,
	<Sergey.Semin@baikalelectronics.ru>, <ffclaire1224@gmail.com>
CC: <linux-pci@vger.kernel.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<kthota@nvidia.com>, <mmaddireddy@nvidia.com>, <vidyas@nvidia.com>,
	<sagar.tv@gmail.com>
Subject: [PATCH V3 07/21] PCI: tegra194: Disable direct speed change for EP
Date: Fri, 14 Oct 2022 00:08:40 +0530
Message-ID: <20221013183854.21087-8-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221013183854.21087-1-vidyas@nvidia.com>
References: <20221013183854.21087-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT098:EE_|BL1PR12MB5302:EE_
X-MS-Office365-Filtering-Correlation-Id: 15b41eb3-eaff-47ff-e793-08daad4a5541
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	nyb4t4+6JpeakYc7lbnqDah7DWhDw3JNZ4uL2uNjpk23XMQpjrFyczbGxfkYqkiWf+Q9BqQm9t1zZAZqEGSxIVn9YtvUDO3JIXPy02fHJY3KMlyVRWGqMkjLeQEz/PfxS75IeMjve5h73Sx4qc5NTWinKGA6VSZ8V7MakmQsROL7z8PzS9GerNAc9xD+mkYgOFCoxv4o2Ps6miutrHi4rEachw3vL4r5kDu9K7ZJajkRdoaqSD77TUyGPLLw9ya+mwypjk6YIg7aZqvp24geJb6Wf/iSGR7KhMYgIEtvf5raGknY/4jnM+m4d6mhNTCajidcEpKKSYlkCpH5rr36g2SfYejyiJ9+dEldJceP2c3BsSKqQcthbEe/bJ2mYI3waA5DrDGQ/1WYQZVIw74F0ihOUJFKoVsr/JAutkFl7y/mQmDOhqoUy48ebE92IzGa7p//xrDFi72/GQRNVYakK76Qz9Io4LjNRxZ4qnLcQJLOJR9JqqTfXso/ZBfF8Ls/629jd6O27oBHplIkVaAn9+gq33dzTgt9I4F07N8llY3MaFAAOXjBlU2Zn3rrzw20ysjX8qLDiJxameNH73dHoBoj+yAYnllE8crpxmayizQY44fuWGjP/RejYD3zrcpJzZf8BIG/rI/hEEi0saKtoZugJWvljsRHx81GW16xMoGImKrmiUbHFv0kevZQhXUdV2xqUokWIPGsZTxbEKQGJnyXrywxkH+vQsqBEG0+xurDYXeo10+tBRQRmTNGvY/IH8MmmwEbjf+CsAGY8pYxVAZ5EtzEyiXSUcVXViuTRgU=
X-Forefront-Antispam-Report: 	CIP:216.228.118.233;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge2.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(396003)(136003)(39860400002)(346002)(376002)(451199015)(36840700001)(40470700004)(46966006)(5660300002)(7416002)(1076003)(186003)(336012)(2616005)(7636003)(2906002)(356005)(41300700001)(26005)(8936002)(7696005)(921005)(82310400005)(86362001)(40460700003)(426003)(36756003)(83380400001)(47076005)(40480700001)(82740400003)(36860700001)(478600001)(316002)(110136005)(54906003)(8676002)(4326008)(70206006)(70586007)(6666004);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2022 18:39:59.4195
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 15b41eb3-eaff-47ff-e793-08daad4a5541
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.233];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	DM6NAM11FT098.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5302
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_114003_572006_AA1A1E45 
X-CRM114-Status: UNSURE (   6.77  )
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

Disable direct speed change for the endpoint to prevent it from initiating
the speed change post physical layer link up at gen1. This leaves the speed
change ownership with the host.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
V3:
* Reworded the commit message

V2:
* None

 drivers/pci/controller/dwc/pcie-tegra194.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index 897e2a22bcd3..dff38f73d9a7 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -1929,6 +1929,10 @@ static void pex_ep_event_pex_rst_deassert(struct tegra_pcie_dw *pcie)
 
 	reset_control_deassert(pcie->core_rst);
 
+	val = dw_pcie_readl_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL);
+	val &= ~PORT_LOGIC_SPEED_CHANGE;
+	dw_pcie_writel_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL, val);
+
 	if (pcie->update_fc_fixup) {
 		val = dw_pcie_readl_dbi(pci, CFG_TIMER_CTRL_MAX_FUNC_NUM_OFF);
 		val |= 0x1 << CFG_TIMER_CTRL_ACK_NAK_SHIFT;
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
