Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D2E2C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 13 Oct 2022 18:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZhdd7mAf0ZA3F/VJPZFvB2RPtL80UUz5RvAkhYDmGM=; b=s19JHlLZhLX9fY
	fvXP1I7vLPgth2xaXnT/tFADpmoAKzfMlXD3DzQPRXbj3FNun/5RPJYuelmbBdCwhzlw5QDNMblMI
	JDUO+L41dEadalSzg98znQdow7Gqg0zZinfyFWLtkwTyvueOLoheKHIUN+RR3AeLht/MWSWi003PN
	pj0sbsdUz/+oV2gIktqNYkeaQJGIgg/8Ek0zsETun9mHwLb/rs1O5x4gkGOjSDOlpZnHPaJNDcnoR
	xt4i3EIznmBNbxePfODdxBd8/iOinn0S3/fCJeXGa4NtcTmJqG1XyBE/0likMouur5nGBhe5iMays
	61q/udXM6YbH934GIo6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj37L-00CifA-0X; Thu, 13 Oct 2022 18:39:39 +0000
Received: from mail-dm3nam02on2080.outbound.protection.outlook.com ([40.107.95.80] helo=NAM02-DM3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj37I-00CieE-NS
	for linux-phy@lists.infradead.org; Thu, 13 Oct 2022 18:39:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=APmQ0KiOP8x5ppcxzOgVWLLsz4xH05zZlMmqmX0o2mZK4CSw+lL5MGcPNBL6TxE+oxM0qHdyxWJDgvAhdqyuRLRb+TquzEv3Y4AbK4SVKL0Z7rM+JQJqFT2YCHxtN09Mh1MG2vF/yI+V8QMeg+/TJpJHinipW+eSDeCRiwk1XkGEJfnRc54GuWgxqwnlScdwNjMF6iknGduJTFzZOx2cc7y4ozZwawfzF490+WRsbcK9Pz79QBudpjWrv71apD3haTb1J4er/nkfMvhjH+tFn70EgTEPu7HQQzei+Gwh2FRnnZPHGGKifQQ1In4zRBvwiHokLuZ/l+CHG4V7YkgCag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TBq528JAPZeXu0EMALg3NgzpdfQf6SWx9QDHMwRTqSg=;
 b=a+BgRMUzpk8Y40D4qUk3e/CP1nEPhkkC9J69DEGz1qFQZir5y5dbhO16b/KW8w8C/3jPw+gcilp0SU4coKWMdHhW1/M5ptDxRMMbe3o4m6vSrUERWJPEw0AYItEPvUdiaLH/iqgMYH3b2E/NDHIyB6bkw9VntkI1zbxQwusIv1Xp3yjkCZwXnjLq2fUZVlmRIQHUr6YZ5eE5eLOCyIswmYfMJ8OEYU0GV2mscHMcsIL/+SdD0BcbtsJpN/9OUg5IxVY7wUnvbniPV7BOHx7ZyyeJ82l12aAPefTNnZBO/wv66RQNc/uwRn5NJucpH4mqLUKJ6so6DI2+uEJWzGbMCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.233) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TBq528JAPZeXu0EMALg3NgzpdfQf6SWx9QDHMwRTqSg=;
 b=sRl+oBpS59bZFzc0TaSQJVcUxSUJnl0huCtUpA7+hRNfytQi1DHtWcuy96lxKMA+DxapqtZc8XrYdbLu9u6bWrmURg/yJfewLOj2pb3T29IVB0uqM1uyetlX1QZiQCnjfFJ0G94JbdXAm3KzuYBvD8138FFH83kOcKFVM323U9GODgp+hxmdpbEo7AixrYxxI7xG7lOkSvdeZSBwrbgkv4RnOqMdh50IgnOhgcb0iCyjVTzhtlOo99uK3956ZwkyV95e3SRU6vdcPMexz9qGXLneciTz7YnbEOlKI5GPIalcYWjPWWQwzxsU36nrBWdc2QQM63QdNuic+bRf/oO8bA==
Received: from DM6PR10CA0028.namprd10.prod.outlook.com (2603:10b6:5:60::41) by
 PH0PR12MB5605.namprd12.prod.outlook.com (2603:10b6:510:129::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26; Thu, 13 Oct
 2022 18:39:33 +0000
Received: from DM6NAM11FT074.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:60:cafe::a1) by DM6PR10CA0028.outlook.office365.com
 (2603:10b6:5:60::41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.22 via Frontend
 Transport; Thu, 13 Oct 2022 18:39:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.233)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.233 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.233; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.233) by
 DM6NAM11FT074.mail.protection.outlook.com (10.13.173.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.20 via Frontend Transport; Thu, 13 Oct 2022 18:39:33 +0000
Received: from drhqmail202.nvidia.com (10.126.190.181) by mail.nvidia.com
 (10.127.129.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Thu, 13 Oct
 2022 11:39:23 -0700
Received: from drhqmail203.nvidia.com (10.126.190.182) by
 drhqmail202.nvidia.com (10.126.190.181) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.29; Thu, 13 Oct 2022 11:39:23 -0700
Received: from vidyas-desktop.nvidia.com (10.127.8.9) by mail.nvidia.com
 (10.126.190.182) with Microsoft SMTP Server id 15.2.986.29 via Frontend
 Transport; Thu, 13 Oct 2022 11:39:18 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lpieralisi@kernel.org>, <robh@kernel.org>, <kw@linux.com>,
	<bhelgaas@google.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
	<kishon@ti.com>, <vkoul@kernel.org>, <mani@kernel.org>,
	<Sergey.Semin@baikalelectronics.ru>, <ffclaire1224@gmail.com>
CC: <linux-pci@vger.kernel.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<kthota@nvidia.com>, <mmaddireddy@nvidia.com>, <vidyas@nvidia.com>,
	<sagar.tv@gmail.com>
Subject: [PATCH V3 03/21] PCI: tegra194: Fix polling delay for L2 state
Date: Fri, 14 Oct 2022 00:08:36 +0530
Message-ID: <20221013183854.21087-4-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221013183854.21087-1-vidyas@nvidia.com>
References: <20221013183854.21087-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT074:EE_|PH0PR12MB5605:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f8260e9-1b4f-43d6-cec7-08daad4a45a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	9yWnphlIiD96OWLIPbl7IaCpKeRaIWc3Sb1C3eKZuEyMgGi8OCGBjlx0so6Zvxu9WRGU9V/5EudOyief0fC0UBkeJGIMIETt3SF+StwkXB9GZSbS0v1822FIiKcthmDYDBVwtfqrlqqrIJ13J+PDuIXkDpClNJWLog0auwB5AIrLhUHw2VGT6u6vqBre1C1Im7nMc4Sb59g+LWsly2iK7Jo1lNzk5gjb6a7mXETdNDD6DgqXkBiNQdBOE5cTvU/tIZE4GdFWwizMXf5jUt27UjPU0CEHm3emAvEj7/Wp3ouyWMjSpgZNhSnFgYlHKsM0D99giC8u0BXoDQjrDos06K+Oi6BcolYPMOUjwPKSSexM6ZDG2mFPdna0f+rriLOaWtQZqTa2iRSJr17Qa2kctkk4nAUQUj3ldktNJ9rK3pZQWGtDIS3TswDYc4/Abl597VTM9bm/lMwv5qnkjpBJ4pTvug+2PjA55+LVIVByCoQtHI/p4EOCIadHM+rd0KFZkAPtpHkQtJXoJu5eZTnklkWMTSXqgnZOY31psUc1d8KkAEkxweoz1zfSWO0d6qeTCQW/7ExnuNoybKy1uYqe8vkc0anM1iOIGZbVFdP5h00WtCoknE+kqWI7c5/b39I/DwsZzyLuxaSHDr/6vXgzc906L1+4nW5e0scc+IvNiybj/KvWIZ5a/oLSmKHEO7SelWSp2yl4vjIFG6kaD3fBoekiQ+/Iz1fYp/1x8dUXG5BPxqQe71w3XLeTtauqspuaWqd4/r5FwfkOLYCOyElv+A6X5+8nCu0NlzxfoBAVGFY=
X-Forefront-Antispam-Report: 	CIP:216.228.118.233;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge2.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(396003)(346002)(39860400002)(136003)(451199015)(46966006)(36840700001)(40470700004)(36860700001)(83380400001)(426003)(47076005)(110136005)(316002)(8936002)(70586007)(70206006)(4326008)(8676002)(54906003)(86362001)(41300700001)(1076003)(186003)(36756003)(40480700001)(2616005)(336012)(2906002)(82740400003)(26005)(40460700003)(921005)(7636003)(82310400005)(6666004)(356005)(5660300002)(7416002)(7696005)(478600001);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2022 18:39:33.2554
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f8260e9-1b4f-43d6-cec7-08daad4a45a4
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.233];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	DM6NAM11FT074.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB5605
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_113936_781500_1308C7A3 
X-CRM114-Status: UNSURE (   9.15  )
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

As per PCIe spec r6.0, sec 5.3.3.2.1, after sending PME_Turn_Off message,
Root port should wait for 1~10 msec for PME_TO_Ack message. Currently,
driver is polling for 10 msec with 1 usec delay which is aggressive.
Change it to 10 msec polling with 100 usec delay. Since this function
is used in non-atomic context only, use non-atomic poll function.

Fixes: 56e15a238d92 ("PCI: tegra: Add Tegra194 PCIe support")
Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
V3:
* Changed atomic call to non-atomic call
* Reworded the commit message

V2:
* None

 drivers/pci/controller/dwc/pcie-tegra194.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index a33c86e3de9d..685aee378c93 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -207,7 +207,8 @@
 #define CAP_SPCIE_CAP_OFF_USP_TX_PRESET0_MASK	GENMASK(11, 8)
 #define CAP_SPCIE_CAP_OFF_USP_TX_PRESET0_SHIFT	8
 
-#define PME_ACK_TIMEOUT 10000
+#define PME_ACK_DELAY		100   /* 100 us */
+#define PME_ACK_TIMEOUT		10000 /* 10 ms */
 
 #define LTSSM_TIMEOUT 50000	/* 50ms */
 
@@ -1611,9 +1612,9 @@ static int tegra_pcie_try_link_l2(struct tegra_pcie_dw *pcie)
 	val |= APPL_PM_XMT_TURNOFF_STATE;
 	appl_writel(pcie, val, APPL_RADM_STATUS);
 
-	return readl_poll_timeout_atomic(pcie->appl_base + APPL_DEBUG, val,
-				 val & APPL_DEBUG_PM_LINKST_IN_L2_LAT,
-				 1, PME_ACK_TIMEOUT);
+	return readl_poll_timeout(pcie->appl_base + APPL_DEBUG, val,
+				  val & APPL_DEBUG_PM_LINKST_IN_L2_LAT,
+				  PME_ACK_DELAY, PME_ACK_TIMEOUT);
 }
 
 static void tegra_pcie_dw_pme_turnoff(struct tegra_pcie_dw *pcie)
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
