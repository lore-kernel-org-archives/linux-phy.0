Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54080C624D4
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 07:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AHhtQx1enkikSr4t2cQtvAC7jPLpGI+PYLCbYtP/l/w=; b=QTtsl1XTCwGwGC
	PRlpN0sBtx6TuKS6qZa3hk+mF3S82QwYN1W+yAXH6zjFFa5f5H2NZ70BvGDb2ITYav0d/4mYV7jAb
	LqnEj36Bgkv18qVZxRc9wn5RPAmLtng9mH8Mo1SnRBVP0UK6k4iE1bqtUU/xwAoVUM2c/mSvzYjP8
	bUgGwuzvlH7h3Isp/E//q5QYuuysLTYhudRW/hyDO34pk8SMYlBRaKgChb0pP12bE36TwSw3Zs0GB
	F6mM+dRISKjcBsL44Rd1HrxuA539xQoqpFENZzLQwaajzM5gs1j/ZsB7U25U7DVZscnUagywDNiwc
	qS8qHST0oWd9j/zEhqOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x21k9-0000000GYrk-089H;
	Thu, 03 Sep 2026 07:20:17 +0000
Received: from mail-southcentralusazlp170120001.outbound.protection.outlook.com ([2a01:111:f403:c10d::1] helo=SN4PR2101CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x21k6-0000000GYpR-2UEB
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 07:20:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EH0mjlBlXVkyBUwG3ShGePoUbyBpDLwW7sAt4QPAzuhTVXvlHEFvB0ZqM9f1tLkdqIVlNXoCiSwbosgAkUplldWgRy1m3S8DN+9XaCL9uJ5Ac6VBtXgXz+rAxiuVrq43RbbDQWjRIfE7hsp8HlIgW2OmYuzKlZsCjKk28V/QXashrMnDI9MbPW0lxFoRO1a0hXcLkR8VQlIWgyOVoYzKJfSNkbf7lNM76nn04yKfTz2zquuTcqZOscTAkxXzjnV5IxsQk90/rYa+PoIeuZtoMdxYYYt9BnoloZBwJUvd5l4dWwB5EbMtT7u7Rt8viZTwmu27eajTQPjTIoCjN+UnhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tBNK27nRczXzaImqeMAsmXW6duahFy4UDlBU8gW4l6A=;
 b=dni6LlUoVHuOCwFFOqUjwcP21xHcaLTnVQS7P9Wj1iJX+dRMcENJzFEZGLx197NiOAvNn6wpYy7YJwfIVxzlunT/YjPWFHNp9J0Z9UqsnSQnTow7H/n9vDhZb5lvvvoWYSeiZAUB8RvdIc8CDNB/4r3Ab8lIHf0yhRZ1ibFiW+87QHkxPLmZYt1R08WJ2Tw6EKbmRKtjYiMNXDZJfLlto9ufqyDsg+pOYJqKk225YAsaZx03Q5yc/ttEKfEmZ4ozk/xzEiT8dkKn6kZAKS71oNYCdhyFzBUqsiNearvRJHngL4xZ71+c+OcOeHRSlStKcBE1RN0MX1/kCYm4AOByTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.233) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tBNK27nRczXzaImqeMAsmXW6duahFy4UDlBU8gW4l6A=;
 b=Bjraus2ZwhG7qCI7cPSPz3oZxwqFQiPFIH+2ZhCeMW2yVj3K4YFMK3eQhw1SytG/tUoaW1UPVp+Y1SKbEyS7H9OfxNC9kW1gjl/S8PIOjcJhJecP81lqB9LtZEPyAmX/YoNmU5WMikEzh5HP80sMW6Lrr9Ov9uBeaaN3nid6EymIfz4o5w/fbjmSHAElMYXfTtdOdlFihzm/NPvsyTnFP2qVbjOVrlQs+ppW9k4WaE9NoAGIdEQeZmyHTA4jMa4JnRqFgul6dyF6WKwrB8+fnaqEAo4o6Sogwo0cdcK5oeFLE1qs3b/OcvgDyIxTft8VyekSKeMEykwhUXyzs4DhvA==
Received: from BN0PR04CA0108.namprd04.prod.outlook.com (2603:10b6:408:ec::23)
 by MW3PR12MB4378.namprd12.prod.outlook.com (2603:10b6:303:52::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.360.13; Thu, 3 Sep
 2026 07:20:07 +0000
Received: from BN1PEPF00018548.namprd05.prod.outlook.com
 (2603:10b6:408:ec:cafe::25) by BN0PR04CA0108.outlook.office365.com
 (2603:10b6:408:ec::23) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.382.11 via Frontend Transport; Thu, 3
 Sep 2026 07:20:07 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.233)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.233 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.233; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.233) by
 BN1PEPF00018548.mail.protection.outlook.com (10.167.248.7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.382.8 via Frontend Transport; Thu, 3 Sep 2026 07:20:06 +0000
Received: from drhqmail203.nvidia.com (10.126.190.182) by mail.nvidia.com
 (10.127.129.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.46; Thu, 3 Sep
 2026 00:19:54 -0700
Received: from drhqmail202.nvidia.com (10.126.190.181) by
 drhqmail203.nvidia.com (10.126.190.182) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.46; Thu, 3 Sep 2026 00:19:53 -0700
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.126.190.181) with Microsoft SMTP Server id 15.2.2562.46
 via Frontend Transport; Thu, 3 Sep 2026 00:19:51 -0700
From: Wayne Chang <waynec@nvidia.com>
To: Vinod Koul <vkoul@kernel.org>, JC Kuo <jckuo@nvidia.com>, Thierry Reding
	<thierry.reding@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, "Neil
 Armstrong" <neil.armstrong@linaro.org>, Manivannan Sadhasivam
	<mani@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-tegra@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Wayne Chang
	<waynec@nvidia.com>
Subject: [PATCH V3 3/4] phy: tegra: xusb: Increase timeout for USB2_TRK_COMPLETED polling
Date: Thu, 3 Sep 2026 15:19:36 +0800
Message-ID: <20260903071937.533646-4-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260903071937.533646-1-waynec@nvidia.com>
References: <20260903071937.533646-1-waynec@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-NV-OnPremToCloud: ExternallySecured
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN1PEPF00018548:EE_|MW3PR12MB4378:EE_
X-MS-Office365-Filtering-Correlation-Id: 7387ee16-a173-430c-28ab-08df098bc803
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|82310400026|36860700016|376014|23010399003|7416014|10067099003|56012099006|11063799006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 6gXa3m7uOS/fgvMHJx7DtPhKWkr3GzVnBFBtpjv/RdnNoNjPtUA2BymdXOUNBXxQEDJ/ZsjunJ9fjzRgJQLkjupkygpNZ2hVLXSEibbijMEHzNUCDR1rbCQMRA8hDhH2+zARxb8Zn3qa0L22Xpx6hhu8RS5e84rCXXp0UvqDKw4b2E4l+1vQ1olUrcOpDCatF9vRhmGtS8elNWfg35iBZmKyfhj+M0KnySAhqzTZua3yDuyGnuLoILVzZGAqOnOOx2kiHwkRYhzhX1v0hT5vwzwlRIIXnIEoopAt3noqhzu5IB2IRd2FjD1Pt7pBGHARWF0Fd881CsaqQIPYEZyzz7x/goNwpGoEQ+OK33W/FDEw4sO7GwOlTs4ETicE5h2F0V85xi49eLtfCIWL+PHFnXK9sfN3JET80xCR6uJcr3CHZDZxyx/sMM4TjpmX78MsuP6qlKryJ0fM3UhpHUxy1D7yHO/kXkk4Jkj99hFcUW60SBU3zSL03n9kpUzV9KecPe+S/fpkAxpif2w7zS1eJrdlhX/478T+cLK5mzWqQmrIdaWYFRH7VvO0w+orUbFHAIDd8ufYnLPE/w5Yijdkxcj+TLTg5ELlmfCqrKrxXz1P4gnKdGlCVZxeRTXr78iWlFkncshAQdTJ34fDqVLj2cfUaE2yDRSlW/IvXYCOAZqXHWiFV70kNiUiyIg+1mCWIgmtzFcSaA0Y7Ey5wrd7KQ==
X-Forefront-Antispam-Report: CIP:216.228.118.233;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge2.nvidia.com;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(36860700016)(376014)(23010399003)(7416014)(10067099003)(56012099006)(11063799006)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: f/3+OThiPB4+tKrmNAaUPt4CWy+S/TGcmQ/ByElkFd8HaQ32EV60CyGeKXzWVPfj9l8hxPc9wC/6ALkY09GM9IvxfRbftQuGfI9n7xJRDI0nPLaQnMdOv7P07eoqeY4s/HTsRJhZG8al7OEQsvWQ/1bwov+01kSh9MTGeRu3mTxIh/eekBoDAuVRe1NqtpVYQX/QxzM+N558S6pZMiVc8PQiVVeaTiMGYEfaYGHV+jS1vOc9LYHmvjig2dTUDsjLOGIYqMvWWHFLhwDNNJX2RX/d/3bCSLZvMOT0zS0pOpg/0LsAMmw31c9BajUmbaOcqpFOd/eVH3Xz8pV3IUoxPAUIR4yHgSJYJLq+yrklL1gh7Dz4fXpU5qQWiNXuiCe9XKj16BuxZ7MeQdovq/QjN5WqBO274vB2G8SGdq2dBJh/drBwzSHcNpXlTpH0Ie1u
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2026 07:20:06.8769
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7387ee16-a173-430c-28ab-08df098bc803
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.233];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BN1PEPF00018548.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR12MB4378
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_002014_637553_085B9512 
X-CRM114-Status: GOOD (  10.46  )
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

On Tegra264, the UTMI bias tracking circuit runs at 1 MHz and needs
more cycles for the biases to settle than on earlier SoCs such as
Tegra234. The existing timeout is therefore not long enough and can
cause spurious polling failures during bias pad power-on. Therefore,
increase the timeout to 200 cycles to support Tegra264 devices

Signed-off-by: Wayne Chang <waynec@nvidia.com>
---
V2 -> V3: No change
V1 -> V2: No change
 drivers/phy/tegra/xusb-tegra186.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
index 800be0cbb3f9..9c1bcd4a72ac 100644
--- a/drivers/phy/tegra/xusb-tegra186.c
+++ b/drivers/phy/tegra/xusb-tegra186.c
@@ -636,7 +636,7 @@ static void tegra186_utmi_bias_pad_power_on(struct tegra_xusb_padctl *padctl)
 
 	if (padctl->soc->poll_trk_completed) {
 		err = padctl_readl_poll(padctl, XUSB_PADCTL_USB2_BIAS_PAD_CTL1,
-					USB2_TRK_COMPLETED, USB2_TRK_COMPLETED, 100);
+					USB2_TRK_COMPLETED, USB2_TRK_COMPLETED, 200);
 		if (err) {
 			/* The failure with polling on trk complete will not
 			 * cause the failure of powering on the bias pad.
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
