Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A134C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 13 Oct 2022 18:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BkQxOU6YehhAlV2DF8iDKxqmmITZe2aikq2Tp8INRYw=; b=D9J2wg+eMFeDL9
	2Tv1uQsiZWb0dYSIVsgwebMwnKJYoPTRZSQkKVZC4hFf8NFy0c9R9xsvzCTBYhx7nXM3pheciExOO
	sh1lfIwsbbX3IGT2OH8YFzo/KAeSha0aMlEWkumiWLu/QOkRtZQ8eOdx0lVMjv6ezYeSXFTxOh1hJ
	y5avWjNbOUwy9sPLpBKTmQ3GpaADVIGrYq3zY1TGj+HjqaoZmjJX+HL4Nbk7BdEBwsJPrEMv1L3fE
	z9MOgcCLNTMhitxr5y3YCVAZyh7JhxFaXGosQg2qYbquRJRfGWDRsSkR+XYcnU1EoySh/L+k2QCm4
	KnDDNODhl2vEcs0vb9mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj37z-00CirC-Iv; Thu, 13 Oct 2022 18:40:19 +0000
Received: from mail-co1nam11on2063.outbound.protection.outlook.com ([40.107.220.63] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj37w-00Ciq7-LK
	for linux-phy@lists.infradead.org; Thu, 13 Oct 2022 18:40:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NuwA2ZcBtySavjbswlEemEQ/vI2MzyR3anQwG0HrtFG99Fb5PzknLlzda851Ao7gHHfkSqUVam7rvoVrW0fpZfVJij4HdB7HlXwy7SI2ANpmrX27bFFlmNHJp1eu8NlRTknTn3r2WwD/ZowBRB9xEOg1HLSS5kxhAegdRZssAzQJ9Nibeqxr+BsdK0TOVsbKhXPY6hLVPnEDiwlIkgsPBORHehziJWKNzmsw52qKv1Z6zzrux3WhBgYwNa6BOdI9GnSi5m7SrJGrM6rsTLdSxtoygWgqVIvGtlhHtGzuyKPtlieh//Vi8MqefpPAsYu2uoaWPeuXjX0caMGO9Dh2/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AEfQavBN7MZ0wUAhnJBthx7U6nJZTglMIirSa0jSIYU=;
 b=Om828uqvMlvEk9CXah4l6f0KafDZKlAkZC9OhyyHHYoq7lKfX3BjCJAqql0Wi0TNE9644ivy6ZKW3NsQdFr34IOl4KUDDbLrqEKb+z341l6QLviUVbb45QwK4LmpJdl6YCxmq3XZH4VQoAnJyfBl3P6xXx2B8G9Y2712TMTvRaPVTkiw91nfXopfvk9OCsLKh1lPMSKvOAGXkpZsnQcXjkwNQAbPpQdDXB/HI/oPaMr5COf3z9doGWMFV2Hm4haZNlpI2kT98SNnyHFZ5IiyV0XnJBB9pBenA5MCtg1Hwg5IL+l7Ann4B/weFe0CK16Z7bm0CP+WTLt1f3HuBghesA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.232) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AEfQavBN7MZ0wUAhnJBthx7U6nJZTglMIirSa0jSIYU=;
 b=dhmsjTfgfBtb7Nn1rY/FdITmFDG3LRdw6q1eroTtd6pi7JC+sLX/0Qev7oGHxCd+CqDReVjBJfvdYhGGLZc+pu7/uVEzg9w6luEc6GFLO0fBRcIS5v7q9jnHjcAicRvrc62AkG9dFaVWA+1nDb2AR8K22txD5M3RcYrB14WTImyBx2TWzqOQGP39FDUE3ghQY18JcOOHvN0MbNnCz3i1efJQc9O8bah+ZFIMLTb2+nzakSd6DrPFk/thD6aAOduyTmA33aBVaXudkkM4MysZ9/T/W6uLIiTp4GGbqIR4OZLjTRAykbw6qyOyoHJ279NRM1Qnr8aXzSHHEBCvMm4tjQ==
Received: from BN9PR03CA0489.namprd03.prod.outlook.com (2603:10b6:408:130::14)
 by MN0PR12MB5859.namprd12.prod.outlook.com (2603:10b6:208:37a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.15; Thu, 13 Oct
 2022 18:40:13 +0000
Received: from BN8NAM11FT051.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:130:cafe::ad) by BN9PR03CA0489.outlook.office365.com
 (2603:10b6:408:130::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26 via Frontend
 Transport; Thu, 13 Oct 2022 18:40:13 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.232)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.232 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.232; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.232) by
 BN8NAM11FT051.mail.protection.outlook.com (10.13.177.66) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.20 via Frontend Transport; Thu, 13 Oct 2022 18:40:13 +0000
Received: from drhqmail202.nvidia.com (10.126.190.181) by mail.nvidia.com
 (10.127.129.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Thu, 13 Oct
 2022 11:40:02 -0700
Received: from drhqmail203.nvidia.com (10.126.190.182) by
 drhqmail202.nvidia.com (10.126.190.181) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.29; Thu, 13 Oct 2022 11:40:02 -0700
Received: from vidyas-desktop.nvidia.com (10.127.8.9) by mail.nvidia.com
 (10.126.190.182) with Microsoft SMTP Server id 15.2.986.29 via Frontend
 Transport; Thu, 13 Oct 2022 11:39:58 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lpieralisi@kernel.org>, <robh@kernel.org>, <kw@linux.com>,
	<bhelgaas@google.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
	<kishon@ti.com>, <vkoul@kernel.org>, <mani@kernel.org>,
	<Sergey.Semin@baikalelectronics.ru>, <ffclaire1224@gmail.com>
CC: <linux-pci@vger.kernel.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<kthota@nvidia.com>, <mmaddireddy@nvidia.com>, <vidyas@nvidia.com>,
	<sagar.tv@gmail.com>
Subject: [PATCH V3 09/21] PCI: tegra194: Calibrate P2U for endpoint mode
Date: Fri, 14 Oct 2022 00:08:42 +0530
Message-ID: <20221013183854.21087-10-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221013183854.21087-1-vidyas@nvidia.com>
References: <20221013183854.21087-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8NAM11FT051:EE_|MN0PR12MB5859:EE_
X-MS-Office365-Filtering-Correlation-Id: d168f173-7866-4d8c-54f2-08daad4a5d83
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	xEc3vT0NIjhPigPclO+fS+nPvr2E9Z/ck4J723D0VvfBIB67yKZpYf2Nf/VFK0rW73vtuATbCkx8YLGDH329nA9yOfw4loOEqxJD1+UuSrlSL/SPo2PNYj356DYnjfrJpJnXnewH73WBPvaJsg1jnyKY5kg5NdsFulvgSLfp0w/2XK/gvv8dpi2lAQbmyf9o4iHUrHflZFtAGYXap4Tz5IrHBcf7uqaz1ZXvB9f6FwU0c5rF395sEBQpjLYUCMlhU8ZmqpekjXVH9yoBm25bEdNwAPkHccdw3pyHE6dndX4yZHFsqHsKzS5b3fTqgdLtR1F0L1v+FFtsqGp5m4LmyZMoEkMrcEF+doipLP5f6Ft0FQ7SOWZPr6LA7bhxugi4dIVBk4wyiCe//bb5edbXjnD9Cz/Rk7UaeuAL+JtFng7XktsTHmX9qgCvBJ8JRAdvOGN5FM+oByPgyV64RqSmrxigsaKToF4k01xq73xAqyzgWEHwMyKYFaTG/wk2DnDZ9fuDz1W2wqTEshl+Jtz9AQ2J24iwcGplm5yCzJlKE++NgDanXzZ4F86h28azLkwcdqYweYwZQRsHXwykdBFfE93xLeP3f9soS13wJgdAPp1OIWbr1KOQKfwSVFPv7Ao3oAd3l3e8Rdsvh2idYDY3RpC7os4/oIc2PXXbuoV0SHvCqmDCgKSLP992ufH2wK4Dt2DcSV9THYfb3u+8CEHH3wgD1fwXz/bCvWC5Nkl+ABdfBhUPyKIc7bgsExTf/CbZg7xrO4Z1x7VLvHH6IcAQjjOfT72qGK45igYOlXsbRss=
X-Forefront-Antispam-Report: 	CIP:216.228.118.232;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge1.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(396003)(376002)(346002)(136003)(451199015)(46966006)(36840700001)(40470700004)(82740400003)(36756003)(921005)(86362001)(356005)(7636003)(186003)(2906002)(47076005)(83380400001)(5660300002)(336012)(40480700001)(4744005)(7696005)(36860700001)(70206006)(2616005)(6666004)(1076003)(7416002)(4326008)(70586007)(426003)(54906003)(40460700003)(8676002)(41300700001)(26005)(110136005)(82310400005)(316002)(8936002)(478600001);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2022 18:40:13.2232
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d168f173-7866-4d8c-54f2-08daad4a5d83
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.232];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	BN8NAM11FT051.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB5859
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_114016_719359_AB9B9112 
X-CRM114-Status: UNSURE (   7.39  )
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

Calibrate P2U for endpoint controller to request UPHY PLL rate change to
Gen1 during initialization. This helps to reset stale PLL state from the
previous bad link state.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
V3:
* Reworded the commit message

V2:
* None

 drivers/pci/controller/dwc/pcie-tegra194.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index dff38f73d9a7..910dc6c2154e 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -1130,6 +1130,9 @@ static int tegra_pcie_enable_phy(struct tegra_pcie_dw *pcie)
 		ret = phy_power_on(pcie->phys[i]);
 		if (ret < 0)
 			goto phy_exit;
+
+		if (pcie->of_data->mode == DW_PCIE_EP_TYPE)
+			phy_calibrate(pcie->phys[i]);
 	}
 
 	return 0;
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
