Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73E8EC3ABBE
	for <linux-phy@archiver.kernel.org>; Wed,  7 May 2025 02:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pp3FTP+L9F1XFjPKgJra2Fom5Zi5iZIaoosZQjkybWo=; b=Pp187l1J0h9Qo5
	RzVPYx7r5tQzG6ZduT8Nm3g4Q4OE5IQBSObVIt07Aki8jOagS4r/R0shZ9gU76GNzIPX1ZVNNTRXv
	C+Qr8fJ33pRR+HeNtPui5CC0megXyFyCsKK9wmsNFw+PoLYcuWRNeXcG5lfRPpeX6alitUtsajRXj
	/RIvQ92eRS1m3EKEj954KFpkBbXRlwmUG7AAiFSaa6PZKoWS9qTUCAHWRGN9kjGgcqRFwF9XVZNjS
	PbHHfdMt84I0C7Gr1tGg7WcOIWYjv8f0IjWaeQBOGJi1D1DSe+sWVsyaoxwORfpg2ptqAE6hrRxjx
	NY0pN52XN4sFzT3WcXcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCUq2-0000000E1RI-0LTX;
	Wed, 07 May 2025 02:48:50 +0000
Received: from mail-bn8nam04on20618.outbound.protection.outlook.com ([2a01:111:f403:2408::618] helo=NAM04-BN8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCUq0-0000000E1Ql-13A4
	for linux-phy@lists.infradead.org;
	Wed, 07 May 2025 02:48:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H7Dr4aRuNbuLqgC63Bhj/Ne93fIg2ih2cEOMW1sybzGgkllPSiWOUUbvA51ndzIEfnUsFsj/39cfJ70OWZsBXqcsvlt3U/TpEurkL1jtYxTIi9RqCJJMsUANiHV/gJUHHJQMAbOoeiZZwRws9u67uKQQoi3q7i/zDBRe6ywuaAaLUH3cNfdzYF5dyvzLpEW5iuB2ugxG14sWDsCT05VxjzYNMEwvV4Wxem0JME46Fem3aAF6O3DyWN9H0nYXDPaiDD3AusVbPbfWmignd/oE46XHFKpsGIfnCviwy4NKUN7M6jZAHGl96fsD8o61Ub8xrNMnQjj/t7veX7Rs0Z2ugg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sy8gNXFAZcR3YBq07i1jmeIn7KhYOFFCjK0asDbRk7Y=;
 b=SKCkTJNa/vCAEl1D7Mtg6oHjSCxGC7LldWaH9yQl7Ws9E6G3CwDgmSO8Z+v6puiP4l8nnHRVtmuJdUSOMFw8PSFMAqTIRtvxt7D98ikBzJ+1osBTXLg8etDEdXt5OIRbZojOGCeCkbSvNy0rSFuSOwI8tCCBmMYUf69bfXMVSiSW+JeBC/1XIuPRabSygF26oZMsRKRf5Wr8X0ZTm8BmDY1nH1eS6Zg3//CyIDeYR7jU357NyomEoUwHll6XfAYhCUFBEphmRAeMnbZ8Iu2SeWtuxYynQy+04Qz9imTtg7AG0QsGMXG34EQ+d2ACsdM5polyx1ILuGp2aCwMeDz4Eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.232) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Sy8gNXFAZcR3YBq07i1jmeIn7KhYOFFCjK0asDbRk7Y=;
 b=MwC4FtDupkxinSl2DrN9X4X8UxJf6GAErMJW859QBsEsaEO4XUkywTyUhLaKAE37nirc4Zw5I9oy4U3gAZ3sKtQVvG0aBsjWH4rOZ64oymLwCy2blLS1qjlSL6ANHKuKWad/YDGJ59Ar7oIfXE+fgiUI4lv74lf2p7Zi7ytAAtpwzOoFYigf0q5DiABZMCwE/jU/yhrX1MlJEdkffcqIlb7nLAd7BFjw8Z8Oz/7lxHjfhNElWnt9Ez6Zx9Q4kYjzXwdRdhoE5PuH3io1oLCejiGlkMrkK4Dan3ZJ+bP3oWh4FCYCXCthQfgrTM6syz7xOdh8RUgGklxzLUoli00uQg==
Received: from MN2PR12CA0021.namprd12.prod.outlook.com (2603:10b6:208:a8::34)
 by LV2PR12MB5918.namprd12.prod.outlook.com (2603:10b6:408:174::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.22; Wed, 7 May
 2025 02:48:42 +0000
Received: from BL02EPF00021F6B.namprd02.prod.outlook.com
 (2603:10b6:208:a8:cafe::32) by MN2PR12CA0021.outlook.office365.com
 (2603:10b6:208:a8::34) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8699.29 via Frontend Transport; Wed,
 7 May 2025 02:48:42 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.232)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.232 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.232; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.232) by
 BL02EPF00021F6B.mail.protection.outlook.com (10.167.249.7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8722.18 via Frontend Transport; Wed, 7 May 2025 02:48:42 +0000
Received: from drhqmail201.nvidia.com (10.126.190.180) by mail.nvidia.com
 (10.127.129.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Tue, 6 May 2025
 19:48:26 -0700
Received: from drhqmail203.nvidia.com (10.126.190.182) by
 drhqmail201.nvidia.com (10.126.190.180) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 19:48:28 -0700
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.126.190.182) with Microsoft SMTP Server id 15.2.1544.14
 via Frontend Transport; Tue, 6 May 2025 19:48:26 -0700
From: Wayne Chang <waynec@nvidia.com>
To: <waynec@nvidia.com>, <jckuo@nvidia.com>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>
CC: <linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <stable@vger.kernel.org>
Subject: [PATCH 1/2] phy: tegra: xusb: Decouple CYA_TRK_CODE_UPDATE_ON_IDLE from trk_hw_mode
Date: Wed, 7 May 2025 10:48:19 +0800
Message-ID: <20250507024820.1648733-2-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250507024820.1648733-1-waynec@nvidia.com>
References: <20250507024820.1648733-1-waynec@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-NV-OnPremToCloud: AnonymousSubmission
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF00021F6B:EE_|LV2PR12MB5918:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c215162-fbde-4e3a-3e37-08dd8d11add1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|36860700013|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?RTZg/5tWWwKAb3BAQ4ULZ5O37H5HKtHwrCpODcmRpa2C9SRaU0R1eclVyj2E?=
 =?us-ascii?Q?TQq7uprX+BH1WHLIaL0S8leLUKszyu05/PgaWECU9vTCxJj1ewdXF3l6By1p?=
 =?us-ascii?Q?ESz06JBFdd/u0CdXSSQHOuDfsxVyEN0ApsHee/SMekcgsg1+RIVdhQg5l93x?=
 =?us-ascii?Q?sXmU4rrI9UX70yFqGK8JNxd+4szPZSsPKJM9H9+0k6djFKHUslqmSfT6Na8j?=
 =?us-ascii?Q?yZgRJETHOPnuZCL9WJbXFrPLiWCrp7ROyodRpiU69fzWXA5PVPFvN2kHKg6x?=
 =?us-ascii?Q?D8ViYsw8yOVmfKEXCPyRRFJvQFZ8VK0Rqb8F/IC4yT453l2uJhfAF2c6cVy/?=
 =?us-ascii?Q?ZPMZLYqhORdD2wwibQ2tA01LRHZPNllTPvFnU3mLaDyVyb6YJ1SDruUN7XDj?=
 =?us-ascii?Q?Xj2wFwSDX2e6ukrOhXeDeaxetAhg2TUCiCSqFwJs+oOu9aX7Pg4H5RjWHnD+?=
 =?us-ascii?Q?7r8JBbuHl0fIdQOWgGj2RdV7olAMFpJo8uq4vKwZ9wRDP/jrJoDPgdwDbUOm?=
 =?us-ascii?Q?SdRPg+DRY/qh1H95tdYAz6u1Qfd5hKvIdK7rrnCw/6eqm/vvmc0RibP9yCxz?=
 =?us-ascii?Q?kgj66Gdp58KYGUCAZy4Oa8lh015BTU0NYm6b4i2PE+fCrpuXSqDtUvAfWsGP?=
 =?us-ascii?Q?RuDNrYloZNdkeiRQqMbPMAnon6tYOkMsPyGvZbbOUMKoSRFF52xGkGXn4KKC?=
 =?us-ascii?Q?7yT7z28Xe2JTwNJ9hHOJP/B0dh2a5WnsS3KnOcdOHqH8PKcGIjh7gSPeoraj?=
 =?us-ascii?Q?VRLutlX4MR8CyQWMRV/zk9EkP3Epqky3l/z2diqvnUHxLyYqEiU9zNCIde1b?=
 =?us-ascii?Q?wb0KDBOO9nPqNCLkbszdbNxt8itXp7TFuw7y6h9Y3QIwlZ1WcH00WS/ydipq?=
 =?us-ascii?Q?TAoDlwxSGJ6p9n0qdQtukP4wNlLaAy9f6wf54FnzwBDCOO12NuVxDtMqP2/A?=
 =?us-ascii?Q?oLPkHgKVBsEUR3y6SuTh0sGX1FX3mCW3hktgGpGavbQ4WrR6sq9ImIKpCnHP?=
 =?us-ascii?Q?6inw5IOxM6L26rLjuvq71/NUlv4Kd+sxs/DBDq0F/8yVPXo7RfmZVDtnLqEj?=
 =?us-ascii?Q?HYhbbaXACrv9iOeSCaHXGRqXK+pFiqeMmgu1lLh55LGabLk9BOENLzy7RgUp?=
 =?us-ascii?Q?0RArokQ7EWe8H+sjsHMQsI1c5jzZpDB/XSCU6l0Y8/+hDxb1Yznt0ZXrXDj0?=
 =?us-ascii?Q?Rf883LjsYqldjMIWU+MDDOkHkvo+nXKAcElbZOrOdpOzJ/+Htg44aDfBS7ZF?=
 =?us-ascii?Q?2wRHiXKODOFCm1IsnKGp9immQfe5Df6beql3PDOnuttW6Ml9YS8nlx0ozYGt?=
 =?us-ascii?Q?CeDpuep8IFZ1YoN7ssr9Lb63Jlc9cyxDr7B804gEhjq02xAIGwrFQ+kqCruM?=
 =?us-ascii?Q?AMTaVaWFWIPyUrKliheahjIkpI/hX7HscLTFngeMM+O6ZNiUfBSPXRnYcgZT?=
 =?us-ascii?Q?xPEdA2oOIRLBI74XJNLr6KPDPlBIXuFu+UT3LXBbts6PK1OSmbkB/jf82etV?=
 =?us-ascii?Q?tvf4n3yU3pl+o6828vRgpAb2oYlh7EDsscPm?=
X-Forefront-Antispam-Report: CIP:216.228.118.232;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge1.nvidia.com;CAT:NONE;SFS:(13230040)(82310400026)(36860700013)(376014)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 02:48:42.5148
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c215162-fbde-4e3a-3e37-08dd8d11add1
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.232];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BL02EPF00021F6B.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR12MB5918
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_194848_295437_C90C145E 
X-CRM114-Status: GOOD (  11.88  )
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

The logic that drives the pad calibration values resides in the
controller reset domain and so the calibration values are only being
captured when the controller is out of reset. However, by clearing the
CYA_TRK_CODE_UPDATE_ON_IDLE bit, the calibration values can be set
while the controller is in reset.

The CYA_TRK_CODE_UPDATE_ON_IDLE bit was previously cleared based on the
trk_hw_mode flag, but this dependency is not necessary. Instead,
introduce a new flag, trk_update_on_idle, to independently control this
bit.

Fixes: d8163a32ca95 ("phy: tegra: xusb: Add Tegra234 support")
Cc: stable@vger.kernel.org
Signed-off-by: Wayne Chang <waynec@nvidia.com>
---
 drivers/phy/tegra/xusb-tegra186.c | 14 ++++++++------
 drivers/phy/tegra/xusb.h          |  1 +
 2 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
index fae6242aa730..dd0aaf305e90 100644
--- a/drivers/phy/tegra/xusb-tegra186.c
+++ b/drivers/phy/tegra/xusb-tegra186.c
@@ -650,14 +650,15 @@ static void tegra186_utmi_bias_pad_power_on(struct tegra_xusb_padctl *padctl)
 		udelay(100);
 	}
 
-	if (padctl->soc->trk_hw_mode) {
-		value = padctl_readl(padctl, XUSB_PADCTL_USB2_BIAS_PAD_CTL2);
-		value |= USB2_TRK_HW_MODE;
+	value = padctl_readl(padctl, XUSB_PADCTL_USB2_BIAS_PAD_CTL2);
+	if (padctl->soc->trk_update_on_idle)
 		value &= ~CYA_TRK_CODE_UPDATE_ON_IDLE;
-		padctl_writel(padctl, value, XUSB_PADCTL_USB2_BIAS_PAD_CTL2);
-	} else {
+	if (padctl->soc->trk_hw_mode)
+		value |= USB2_TRK_HW_MODE;
+	padctl_writel(padctl, value, XUSB_PADCTL_USB2_BIAS_PAD_CTL2);
+
+	if (!padctl->soc->trk_hw_mode)
 		clk_disable_unprepare(priv->usb2_trk_clk);
-	}
 
 	mutex_unlock(&padctl->lock);
 }
@@ -1703,6 +1704,7 @@ const struct tegra_xusb_padctl_soc tegra234_xusb_padctl_soc = {
 	.supports_gen2 = true,
 	.poll_trk_completed = true,
 	.trk_hw_mode = true,
+	.trk_update_on_idle = true,
 	.supports_lp_cfg_en = true,
 };
 EXPORT_SYMBOL_GPL(tegra234_xusb_padctl_soc);
diff --git a/drivers/phy/tegra/xusb.h b/drivers/phy/tegra/xusb.h
index 6e45d194c689..d2b5f9565132 100644
--- a/drivers/phy/tegra/xusb.h
+++ b/drivers/phy/tegra/xusb.h
@@ -434,6 +434,7 @@ struct tegra_xusb_padctl_soc {
 	bool need_fake_usb3_port;
 	bool poll_trk_completed;
 	bool trk_hw_mode;
+	bool trk_update_on_idle;
 	bool supports_lp_cfg_en;
 };
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
