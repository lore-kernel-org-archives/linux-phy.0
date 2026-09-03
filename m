Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB04EC61DD3
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 07:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xsshOG2amwBoefksX3OTtdMyJRicWtfsYaHU52erqYA=; b=JCVTi8X5TDQrN2
	zcSJ8+Je0DX/4UZbIxAAXz6TaAEXD1zAlMbfb0jhDoR33pxXrrH2WU0lMTJ7jbRGqGkn5dDuh++xY
	HrAQCqhGk/agqApq2UJojVbmGEsTd+i5Mixnh9+Vm5qWN6naH9B71zJAPX4qRV4yI2fy+7DUZrfgG
	jdKEfot/MmXAbV2Z0K75gY4C5NrkZBGYGdCoac6ceMh8Cx+90AdE+hmHSOJFBmT47EGZqiFOZR5u5
	rNm4qGTQc/H7g39iP4s0mzpAyRsk/7rxcxJKjkWW+pDIO1pbMc9ZO4MyvVng1CE5vS21EsLkTaJxM
	WAFMmoeoVRMoSsZ0LAxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x21k1-0000000GYo2-2LsI;
	Thu, 03 Sep 2026 07:20:09 +0000
Received: from mail-eastus2azon11011071.outbound.protection.outlook.com ([52.101.57.71] helo=BN8PR05CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x21jz-0000000GYnM-1GRa
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 07:20:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d6ObdarfseX7ku1Tg3ys2u2XoqIq/SYrI3RMGg7uvef+42EUrva4ntSWGZoksKo/btB7dDnM413+6du52vgG7ocg0RNtnaIDvTw86i45njm8GnI77b2js8PmrSS3CsVkOTQ44fhY9oJSSZVkjuTsEcUjYIMht97eTdXL5ZzlWhPqDhk3NdR7gbAY74aq63AI2yXoINPbJZOy5hdq8qtSQKglwBmOh/0gWH0hB3z4J3m14lp0vO+oIntz4O9QKtwf9T3M9+VCreX0uL0KfmLdBhNqUprNBL33gBIW0IgZc1meN16+RIlLSuBVnkovB0TDBvrMoYFf6y6Ij5ZuggNH/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+vQ6wz2S0qNJg+Fx0uuYoLRLwIFfTCeDHN5y51erhUA=;
 b=TDs38Dv6zHbggley+cjVlPQsA/WhQTpepFUJefSzaaAUPgCa0isKRtgWpqYMyXGQ8LUB+wEc+LDsNmYdSv3s5bm67uYfQLqXt3lXYVDzYFMUv37W0SVx18+HK+rPVmo1Qs9lvCAP+xJ5/aGO8Pm5Kvvsfmku4ANSXl3XHzdThynPJrMrAj/FrfEenITtO6Z76G0du3sWWEAXiJq/cdMe0vLum/TGvx+RnLlOiDURLR/Q7Wc8563P5+o1knL38u3DWCl9847c/W7rwJyXVr/1Pa0aIysaO4u8PLR/PLTfZLkNTRLYUFkETHOxftItw5l3KgCDbgevE3YSa8OLT5+D1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.233) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+vQ6wz2S0qNJg+Fx0uuYoLRLwIFfTCeDHN5y51erhUA=;
 b=MoiwaD9ZI5oRCuPdyqFFr/UoqYQKrAfS6CgtSYnSXa7Zfo9Neifwy5EwtB9e2rWzaymD3q8F3HDS9W9MQgDL5sAGGoEragVpyCu6IRynS/hHZvuDqmnwH1LSl7tGRMROK0eXLww1+HzGA35dUuCF/2gX7O9kBfG9g/V0rxmH/MWbUpVtRDjQNrm6hujO3VqAqDU9WxETIwamrl8Tt2hs5dfOZJyGiXvOHDYobLwepfPMWpZZRp4PdmYg7L9Hbcbk60oZKZf6lPwpn/4qgFlmaMw+qD7Cphc3yTSfuRC3U+FToCp2rU7dFOTLwU74S2SivBkfdz8LmzG95kikmiSKhw==
Received: from BN0PR04CA0109.namprd04.prod.outlook.com (2603:10b6:408:ec::24)
 by SA5PPFB9BA66B77.namprd12.prod.outlook.com (2603:10b6:80f:fc04::8df) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.360.13; Thu, 3 Sep
 2026 07:20:01 +0000
Received: from BN1PEPF00018548.namprd05.prod.outlook.com
 (2603:10b6:408:ec:cafe::3a) by BN0PR04CA0109.outlook.office365.com
 (2603:10b6:408:ec::24) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.382.12 via Frontend Transport; Thu, 3
 Sep 2026 07:20:00 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.233)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.233 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.233; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.233) by
 BN1PEPF00018548.mail.protection.outlook.com (10.167.248.7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.382.8 via Frontend Transport; Thu, 3 Sep 2026 07:20:00 +0000
Received: from drhqmail203.nvidia.com (10.126.190.182) by mail.nvidia.com
 (10.127.129.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.46; Thu, 3 Sep
 2026 00:19:50 -0700
Received: from drhqmail202.nvidia.com (10.126.190.181) by
 drhqmail203.nvidia.com (10.126.190.182) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.46; Thu, 3 Sep 2026 00:19:49 -0700
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.126.190.181) with Microsoft SMTP Server id 15.2.2562.46
 via Frontend Transport; Thu, 3 Sep 2026 00:19:46 -0700
From: Wayne Chang <waynec@nvidia.com>
To: Vinod Koul <vkoul@kernel.org>, JC Kuo <jckuo@nvidia.com>, Thierry Reding
	<thierry.reding@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, "Neil
 Armstrong" <neil.armstrong@linaro.org>, Manivannan Sadhasivam
	<mani@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-tegra@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Sing-Han Chen
	<singhanc@nvidia.com>, Wayne Chang <waynec@nvidia.com>
Subject: [PATCH V3 2/4] phy: tegra: xusb: Use devm_clk_get_optional to fetch USB2 tracking clock
Date: Thu, 3 Sep 2026 15:19:35 +0800
Message-ID: <20260903071937.533646-3-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260903071937.533646-1-waynec@nvidia.com>
References: <20260903071937.533646-1-waynec@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-NV-OnPremToCloud: ExternallySecured
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN1PEPF00018548:EE_|SA5PPFB9BA66B77:EE_
X-MS-Office365-Filtering-Correlation-Id: edcd3bb4-b2a2-4020-298c-08df098bc453
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|36860700016|82310400026|23010399003|18002099003|22082099003|11063799006|10067099003|56012099006;
X-Microsoft-Antispam-Message-Info: Pvl4s3hx2zoqH6HkrmodjJXim34063mSd9lNJ35HLXYuEaM6Spw0gWSmU/IoCswKtCruMy7j0yoXQ/c27GnaeBvycLvOnej5CiqfYqQe79cM3G24LT2T/PyyNYmUwNrAsK4qoDukdhVGIwTPtACib19Bg36e44sFn8ybpCHHQ0uUIfRs+is+d8YxeZElu/DwufpbHFH70ffi0ZCMGWv8+VhP/GURC//s0TkGM13PkXFXE3B+/kSUrdwZZjMpfB4aTxIFM1PvoGTiD3dW/Ro012ehdkTXzUyxt8tTBUXgo5SVGfTfWMjKnLPQvIeImPjRLvMP7bPm3jHHk15XsCCI7R5XeyekHYEqYZcaRNXcKED3eEmc2f4C4L0fWG6nAcqazQ4CRUKk1c8mOOLx9X/RlwA1zTS7P5hMm/BcCtP7haPWB6acITdxq2ZPWy/XL4iubPMHXWKzXrJfP9i0G7SvDh2ee6wyd5b6ABLLKt1Pmg5qG03VWmdy/0Y7X4uvw8RY2adyKBkIiuTpKb/o3LEKIDGA5eOsHxZmC8lkAA+ho76+CBpZgrhRvwinceIuhRobbbY4qKKqOvCH2VVwIX/+sw3VN348M+lBpK0KkuWT31e0OKXIKZuIyuxe9TYbDMVvItGHrWZerc9inPiFEzqltmiJ2m7bMBHfff6k2PSz3/fozxwMMnTJblVBJUw6JXb+vlrYjptzkWcJkuYTiF0iMQ==
X-Forefront-Antispam-Report: CIP:216.228.118.233;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge2.nvidia.com;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(36860700016)(82310400026)(23010399003)(18002099003)(22082099003)(11063799006)(10067099003)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: EFgp58/87tZh1Y6j/lCVNxGq0evM5zGSWWWMKLnDmOUE4BDlCBMjmHo4dyDIjNwiG/1mr9loXyqc3Nx/lw6d5CMuX+TjVX+u5SxTL+QOuTD6m1nMyUvKZn3PyVUg+zLzP5ZhPxwGXts7dzyWcW6MJsl0PIMejKXroB0WQTWUKal0D05VzXH9e7GgAx3woUB932f6455aGwu94WA41p+TwQZ8GkbTafLu8W+v++SNWP63/WjdkQFEwqi9notZiueXTnAPaeaqTyF2xJ6Yr/gQ+CTdGVq9tthwndljJW7oTeIrlqLHpRRNVtla28lx8z9dlxgsD0hoooiFjk4WOl2Px8gI8mKvk4ESUaWEgoZYDZSm4O1DtM82fSMaM5lINGwHS+28u6ddqBsn1UCFJH9/LhGyQYdX1fA4Qybq7tA/9t4hssgYR3QoxmJj89rbJ0Jp
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2026 07:20:00.6956
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: edcd3bb4-b2a2-4020-298c-08df098bc453
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.233];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BN1PEPF00018548.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA5PPFB9BA66B77
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_002007_364069_9AE5CB75 
X-CRM114-Status: UNSURE (   9.39  )
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

From: Sing-Han Chen <singhanc@nvidia.com>

The USB2 PAD tracking clock is an optional clock so use
devm_clk_get_optional() so a missing clock in devicetree is
represented as NULL and probe can continue. clk_prepare_enable()
and clk_disable_unprepare() already treat a NULL clock as a no-op.

Signed-off-by: Sing-Han Chen <singhanc@nvidia.com>
Signed-off-by: Wayne Chang <waynec@nvidia.com>
---
V2 -> V3: No change
V1 -> V2: No change
 drivers/phy/tegra/xusb-tegra186.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
index 60156aea2707..800be0cbb3f9 100644
--- a/drivers/phy/tegra/xusb-tegra186.c
+++ b/drivers/phy/tegra/xusb-tegra186.c
@@ -1045,7 +1045,7 @@ tegra186_usb2_pad_probe(struct tegra_xusb_padctl *padctl,
 		goto out;
 	}
 
-	priv->usb2_trk_clk = devm_clk_get(&pad->dev, "trk");
+	priv->usb2_trk_clk = devm_clk_get_optional(&pad->dev, "trk");
 	if (IS_ERR(priv->usb2_trk_clk)) {
 		err = PTR_ERR(priv->usb2_trk_clk);
 		dev_dbg(&pad->dev, "failed to get usb2 trk clock: %d\n", err);
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
