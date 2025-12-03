Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABB6ED1268E
	for <linux-phy@archiver.kernel.org>; Wed,  3 Dec 2025 02:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=40J6x/GHyRAKtVfc1dNK5FDu+Ar5gMRHagh9+J+eN9U=; b=P4m8cnWBIofSGH
	trwholQFAa9PikCxqU+LZiY+swy3KHYfytYy1DCLjTQCuFhGWLe9cqBiBUh4IYQ0khoTH+0hWf40J
	jYCmfP1XurMIwOM6SujSwUol7Q+7/rH48c6sHXA4hyR8C33TOZCLJc45kAsuAvBoheKx7VGlpLtlN
	hZCSk7sEd+YOzT0cf9LEgt6TpiUGAsTnH9IXR4jXei97/n3j+VVpZlJu2yyUVkGx9ku7lu/cSoi8M
	93FftKW7I01Ni1EMIQJBmYBz2VyO8wISHUsDizDLHn+XKzLXwFcHiGS2iLncoWE9Nym5a1VancUFz
	KP4GjEdwKSLzHetS1aVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQcuj-0000000630b-2LWZ;
	Wed, 03 Dec 2025 02:48:21 +0000
Received: from mail-eastus2azon11010032.outbound.protection.outlook.com ([52.101.56.32] helo=BN1PR04CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQcug-0000000630F-0Ern
	for linux-phy@lists.infradead.org;
	Wed, 03 Dec 2025 02:48:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pTzFeOAgL63WkKeWJR4Y9jQEuOeu9uFZ2YalrRnnb6UcC67mazf3Phy796qGsM8KKMmyXuVqdXSQllo0dXQQQKZBCHvTCgt9ObnJowzWJ1++PHlrRDI6OV1/+zbOb/Woo3GwIsRZaie/wmmP6rRgZDaUP8VA3DJKNf+cMwCNcHW/vGz7n70KnIoAtNfsYCl0hfzJYi1WlP7PCqvAertiN2XSbCzmznwuaXsx3wQOINw4QkBsoXxOsLV6QzA3HTsa7xrY5tudaiyJ1ePPYhDJa30nHVT4pZuA3ucbkO13qE3q70iu7Yo6WaMwRMaa6xKB45TxAorVqRGwyfmKBKAgjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jjABCVYLrfkiHKCeVChSpLKX9pX9Lj2R9q9O0S5jkdQ=;
 b=XRF5a203tpxZGr/CUlZ+D1UvQCHiCEBA2Kd5UZqLR4X7fXR4gPQsWPQ1sKyiI/H5MhfLGZbCnySu+FKeZ4x9JRsllji1KWwN34W6wPp4dEqCG7g+o+r5DVIiXuI5iJxb3dVBC1swtpwJ5nhRFfbgF/xQ8v+I2Nyh4m6pl5km7Apxvf1l7oINCw6+awe/5V1yar8CA5prK92fVSOKcwkjuc9/dRTWSA2RB4HF3T7/CvqsCRtHQgyFjHeNDoFs7la3wQRn0QLWIKK39wtxJYaD6IR0J+z6iehgrWhor9u7rjRf8VHAoUOupQHJ36wXF9z5Nizr7Xhak704dp8jriH9vA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.232) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jjABCVYLrfkiHKCeVChSpLKX9pX9Lj2R9q9O0S5jkdQ=;
 b=AN4Ej6wr+s7ac3ReZhrGK8WbzCzcGqvNiiq2YsTOl5BAEiy80zkE0m9Z95z/ip5bZm3MIIgTyiHDCnzjxwamzgz+kVNgeCyJxbu5RBmP6D4Ix8nhQA0VEjHBZV35Bl/82V+90EZ+Lt/cgihR3mjBttOEV08nyrN+Qaik8usZGiaURHfmE1vgKavtIcHAMz5fkE2uSGrSVwPYEPXYMnDnM7VHRejGcOUt/ClarAWBRqlht5Bw62lEe8eL8dJDDMST7nge99RRAVOCL8Km7iIwkbwRbfzAamxz81m6g8WQb6eOoO2jLwMYXVHP1hoOCA2tKseGNOxWG3+xOzpQF9hbrA==
Received: from BYAPR02CA0046.namprd02.prod.outlook.com (2603:10b6:a03:54::23)
 by SA1PR12MB8968.namprd12.prod.outlook.com (2603:10b6:806:388::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.9; Wed, 3 Dec
 2025 02:48:09 +0000
Received: from CO1PEPF000044EF.namprd05.prod.outlook.com
 (2603:10b6:a03:54:cafe::e5) by BYAPR02CA0046.outlook.office365.com
 (2603:10b6:a03:54::23) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9366.17 via Frontend Transport; Wed,
 3 Dec 2025 02:48:09 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.232)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.232 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.232; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.232) by
 CO1PEPF000044EF.mail.protection.outlook.com (10.167.241.69) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9388.8 via Frontend Transport; Wed, 3 Dec 2025 02:48:08 +0000
Received: from drhqmail203.nvidia.com (10.126.190.182) by mail.nvidia.com
 (10.127.129.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 2 Dec
 2025 18:47:57 -0800
Received: from drhqmail201.nvidia.com (10.126.190.180) by
 drhqmail203.nvidia.com (10.126.190.182) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.20; Tue, 2 Dec 2025 18:47:57 -0800
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.126.190.180) with Microsoft SMTP Server id 15.2.2562.20
 via Frontend Transport; Tue, 2 Dec 2025 18:47:54 -0800
From: Wayne Chang <waynec@nvidia.com>
To: <jckuo@nvidia.com>, <vkoul@kernel.org>, <kishon@kernel.org>,
	<thierry.reding@gmail.com>, <jonathanh@nvidia.com>
CC: <waynec@nvidia.com>, <haotienh@nvidia.com>,
	<linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <stable@vger.kernel.org>
Subject: [PATCH 1/1] phy: tegra: xusb: Fix UTMI AO sleepwalk trigger programming sequence
Date: Wed, 3 Dec 2025 10:47:52 +0800
Message-ID: <20251203024752.2335916-1-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-NVConfidentiality: public
X-NV-OnPremToCloud: ExternallySecured
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF000044EF:EE_|SA1PR12MB8968:EE_
X-MS-Office365-Filtering-Correlation-Id: 5cca15f5-6132-4be9-a57e-08de3216646b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|36860700013|82310400026|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?FxFWOQbJ9+r3v5msnbP+/suqmVjiHWruC0/OnOxl9X/ojSjunq2y0WfKBKM9?=
 =?us-ascii?Q?lWW4SyUCib/4polPNt8dw4FItPgcl4afQ1fW0j0Nj1TXrsInPgcJ4kxxxS0h?=
 =?us-ascii?Q?FHCqD/Q+TQnmHe7YIdC7o+g83FWkiY+9Kh1g5aGQY8O8OIYZgSKz5UZRAK3h?=
 =?us-ascii?Q?qufrVnqRq83OuGzIqBvjhY8RvOoggwfiJOIckSTrhCRdGaKmSeYkaFv8sUyH?=
 =?us-ascii?Q?0s5K2EWRNMkktU+1p47QIS3vvHjYo92H8a++4A7UKBjqRtjYEEGtyuIt6n8g?=
 =?us-ascii?Q?vorq9osJp4OpgSv/+jjR0WVJ1JN6WVUue58IYFg9pGeD+aZhPY9O6BsMtpP8?=
 =?us-ascii?Q?pKMVTlrev1WLaSJRZ2CXklMAlNvyapaZ+nGsYuO38+rGjLKyyQOguLirS8Ip?=
 =?us-ascii?Q?K/7rERx4RG3aY+qY0yk2MkFrNzAQG5y4tZEZ0kHwgWeEWMWJZPoAwIbaqP7P?=
 =?us-ascii?Q?3vVQFZoNDwX6ZyBSLA+6WHp+ydU3STPfA90U4pQtWopW4Frb/bmsC8BKkWin?=
 =?us-ascii?Q?UaHsuMAMF/iPxAW3NlEylrNKc+JN0y3XWmWH/s4SQfn5ywnz7fKF0v9gZ9C7?=
 =?us-ascii?Q?EKQh1XyEBliaarzYCJ3KSehZ77Do4eBMto19piN68qanGvuxQkrkp7C4RSms?=
 =?us-ascii?Q?5zGzPvzcn2Nq6u3TFHYVsHqsruFY11V3XXBPpGXJEclHKYSlklpTUpzrKGFd?=
 =?us-ascii?Q?feF2Cw/fVt78LQIZczQhSjJYLq/u0VAWX4eNalP8HccDWL04jstMfMVhjJph?=
 =?us-ascii?Q?j9udaOv5YwWUoS1C5uWF80rSNXl5F7V0XAP8sC5Roe++lkuK9eTjsuLXJoPH?=
 =?us-ascii?Q?OKeliLDVxv1W2z9S4Ooa7UIOGlBf1ODwFGjZdAPbjq+UqfDizKj/k+960qRL?=
 =?us-ascii?Q?3FcW4HeRXu+usSAh/YvoC5HyhgCdx0ogBbtrMOZFIEj3imdQCpJJsPQY12Fc?=
 =?us-ascii?Q?UXLz2GmOPHplCxO5UQnfkQIP3kU/X3CGVrjeURuhFrymyfT1l/E5tZhBZ4Bv?=
 =?us-ascii?Q?jLIfGy67UzHSUuRWnVtStFFYpTHIdSelBcWoytF2djSvB5TgcEoecVjBIIiJ?=
 =?us-ascii?Q?8xaDgw427WRHkFMG+zZelcSGDPJHh3aX11g0y/Fem4U4BzV6UvFx1jDONYPj?=
 =?us-ascii?Q?BNBh/Z4c0BsKIiFM4hwqz/TJ2tkLdr4nYvAqn2X04gfwHcZxAJ8hxt7qtT/c?=
 =?us-ascii?Q?rcEdAdUQ2cXKlMHJCvWCtlBePOAAwoU2Y+hqqT8zDf5Oass2baHVmL2O0u35?=
 =?us-ascii?Q?fClHnZe8IQTy/WLfkDw4a2Wc8eFNUfpUo/C4rixWe8R9WGjT+ebPwxmzzwkC?=
 =?us-ascii?Q?riLlRTQxa5KIq1qKM5Gp4H/1yYMuECvcHcnJjVSv57EE6GISf8dCgmjM+ipL?=
 =?us-ascii?Q?sdX0aRlndwUWpZkhh1WBIgnWztc/QwAM6ZpmTFfxewkJxBrnpd86P5gOfgMj?=
 =?us-ascii?Q?ciFSqXkDd9rwAZCnxiGS7ajl96Qg6ieX+Ue1M0RE75yIr8WeamKCxEWYQJ56?=
 =?us-ascii?Q?260CfV6YCB5pnPl+nWleoWvWjFcbZHtYPIp5pb20DjWMXUSz/l3ie5mJcxeh?=
 =?us-ascii?Q?0cbL83BBSSiS4kHwyIg=3D?=
X-Forefront-Antispam-Report: CIP:216.228.118.232;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge1.nvidia.com;CAT:NONE;SFS:(13230040)(376014)(36860700013)(82310400026)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2025 02:48:08.8284
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cca15f5-6132-4be9-a57e-08de3216646b
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.232];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1PEPF000044EF.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB8968
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_184818_111034_AA068D53 
X-CRM114-Status: UNSURE (   8.43  )
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

From: Haotien Hsu <haotienh@nvidia.com>

The UTMIP sleepwalk programming sequence requires asserting both
LINEVAL_WALK_EN and WAKE_WALK_EN when enabling the sleepwalk logic.
However, the current code mistakenly cleared WAKE_WALK_EN, which
prevents the sleepwalk trigger from operating correctly.

Fix this by asserting WAKE_WALK_EN together with LINEVAL_WALK_EN.

Fixes: 1f9cab6cc20c ("phy: tegra: xusb: Add wake/sleepwalk for Tegra186")
Cc: stable@vger.kernel.org
Signed-off-by: Haotien Hsu <haotienh@nvidia.com>
Signed-off-by: Wayne Chang <waynec@nvidia.com>
---
 drivers/phy/tegra/xusb-tegra186.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
index e818f6c3980e..b2a76710c0c4 100644
--- a/drivers/phy/tegra/xusb-tegra186.c
+++ b/drivers/phy/tegra/xusb-tegra186.c
@@ -401,8 +401,7 @@ static int tegra186_utmi_enable_phy_sleepwalk(struct tegra_xusb_lane *lane,
 
 	/* enable the trigger of the sleepwalk logic */
 	value = ao_readl(priv, XUSB_AO_UTMIP_SLEEPWALK_CFG(index));
-	value |= LINEVAL_WALK_EN;
-	value &= ~WAKE_WALK_EN;
+	value |= LINEVAL_WALK_EN | WAKE_WALK_EN;
 	ao_writel(priv, value, XUSB_AO_UTMIP_SLEEPWALK_CFG(index));
 
 	/* reset the walk pointer and clear the alarm of the sleepwalk logic,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
