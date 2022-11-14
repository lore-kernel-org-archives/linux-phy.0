Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E60DC433FE
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 12:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x56ukXsxEZfs32ZUlWWFcmILf9CnNZ9OKmAJIeKPx0c=; b=Y8nnb5EcGgE+9K
	DWKl6JH76nMltkxfjIK2dS3e6cHlBRvtzs3gIxxc27n3buo4aBwwkG84Z5ggpxpnlDQ/cMapH3UMT
	xlUQ1RbmykI6TVOEWy54NUR2F+8Gw1e4zZhYkmyz502koVF7SIx6MPdtCW62nF1vugmAiRi0WHcT2
	/RIkkETc1KEvrAMwgeYIzkb5BzSj4yqs7IwvQlw2yUmhTTLnNhU40LjlAvWWOzXuSokRBq1wu27M8
	Rp2zF0lefQiSPjf9HbvNZgB0DXCOTbeorQbv1e5Lt0tUUhcElMQ2hqCMZ+42TureIMQjJJkHeU4OS
	kKcH+aJAKPe1Br6DWKKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouYn3-000rra-LJ; Mon, 14 Nov 2022 12:42:17 +0000
Received: from mail-dm6nam12on20603.outbound.protection.outlook.com ([2a01:111:f400:fe59::603] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouYn0-000rnA-Lt
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 12:42:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Copy/L1/+uzgZQ0OY7EQFcCobfDY5iwL7SfKa2P+DtEEdhn1A8AIW22sX99s8KcLkhwJHRrcGc+x7rYAIsdt9stQo6C3A086uljYzuC5zYcFPEqmZlnod0GdRVpUHkcab8d78zfbELc0PKAbyxUVghdHsyhgoE/T7BmH1dNqQc237BkCqyaeWHm5/zWbIpgms11y98hKGPPTvtDShygWPE9gLYccLryIiqJXo2mfz083blSslVr0M3sgOQkHYf08kDy2jlELLTP1AgDZhW725bmDbBsKPXVqtdFGpbKGk4uRhVHKFjSG12JRBHPLmVvvzhDvM/FvhLFzXsgmLmFJNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ROCVdifGaQFd2ky2Z1uEdzRwoK7/v6Qh9sUb1kBotLw=;
 b=I7T8pe/M6yt4SN3trofR9dmELuKAqt4LEmkxj9AcfGP6ERGglBXTWV6fwm2AOgb3CgfjmVAN+/wy6isycrbm/tJQbR0yJ6eYIBSMxFL3GuKjrRQp7XLM7r0J2KHgV5TBnSYZLFdLA6iou/gVSHkXLFlmCBVDMn4tzsKoCz+NgFTTojLW4J4btPOd1mYHSDIzrfIrFEAObPcFd8qVLmYxTZEMPCgbBzj94Kl1JZWflQG4TBVX/I7lT1rEY+6NpBDbX6L7OPtvLPxbvJEmVchAfrlhE1Bw+aPHJ1vnX+3M+YkN9qGMXFfFICee/JxrlvcJSTh/KDMqY5Sib9ZA2cizpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=linuxfoundation.org
 smtp.mailfrom=nvidia.com; dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ROCVdifGaQFd2ky2Z1uEdzRwoK7/v6Qh9sUb1kBotLw=;
 b=uBOvnGV7NT04SP/wrYoRPFCmfT7trKMMU4Ua+E2cNBT76x06RyOayMGgsHGqjl89wCYK7m+tIYlrTMUZNogOZY3KczXhDnz4ukvqUO1gEAMHRGEd56j2BYILRkiK5td5iyLb80M9e7whRrsI2XWnxauTw3Z5y6S5nmK6qHN0tV3rjHHT02lawfVh0kfQRKYd9C4RoLWdAwur86CFM8GrtrSCrsgKfguMjCUVN27u8j0XM5gmIP7E0uoAb9LgSxgHu6TfPNhhwzq2sfq3iYv08/GcI29g7sR4vNVCO+LkUv/5XrcAYuT1xkq4zLQlXKvBZqvItBAqnHPPa2LWp4x49Q==
Received: from MN2PR11CA0007.namprd11.prod.outlook.com (2603:10b6:208:23b::12)
 by DS0PR12MB7678.namprd12.prod.outlook.com (2603:10b6:8:135::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Mon, 14 Nov
 2022 12:41:54 +0000
Received: from BL02EPF0000EE3D.namprd05.prod.outlook.com
 (2603:10b6:208:23b:cafe::e7) by MN2PR11CA0007.outlook.office365.com
 (2603:10b6:208:23b::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17 via Frontend
 Transport; Mon, 14 Nov 2022 12:41:54 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 BL02EPF0000EE3D.mail.protection.outlook.com (10.167.241.134) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5813.11 via Frontend Transport; Mon, 14 Nov 2022 12:41:54 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Mon, 14 Nov
 2022 04:41:40 -0800
Received: from rnnvmail202.nvidia.com (10.129.68.7) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Mon, 14 Nov
 2022 04:41:39 -0800
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.129.68.7) with Microsoft SMTP Server id 15.2.986.36 via
 Frontend Transport; Mon, 14 Nov 2022 04:41:36 -0800
From: Wayne Chang <waynec@nvidia.com>
To: <gregkh@linuxfoundation.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <treding@nvidia.com>,
	<jonathanh@nvidia.com>, <thierry.reding@gmail.com>,
	<heikki.krogerus@linux.intel.com>, <ajayg@nvidia.com>, <vkoul@kernel.org>,
	<p.zabel@pengutronix.de>, <balbi@kernel.org>, <mathias.nyman@intel.com>,
	<jckuo@nvidia.com>
CC: <waynec@nvidia.com>, <linux-usb@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<singhanc@nvidia.com>, <linux-i2c@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>
Subject: [PATCH v3 10/13] phy: tegra: xusb: Disable trk clk when not in use
Date: Mon, 14 Nov 2022 20:40:50 +0800
Message-ID: <20221114124053.1873316-11-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221114124053.1873316-1-waynec@nvidia.com>
References: <20221114124053.1873316-1-waynec@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF0000EE3D:EE_|DS0PR12MB7678:EE_
X-MS-Office365-Filtering-Correlation-Id: 66033cac-1e55-43a9-75b1-08dac63d9c5a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	6BTWMIzI1lHJ3B1URJBm+6yHu6gjetw2tYjBJfITcVcO8aiKfRJcou9W+DKx2vCh1qxgqXBkFeuPy4ywUbPi7bBORB4LnjugB+xInCOUivB5+VMHEfQbH9A3uL7khOgU4741pAdk0euLcBj6IFRjnA9CAFW6yClxbhd4BLKvfSIqj2XXunF6wB7o4zzVS1XRcNG266wp/1Gxvfzp9MFZX1wiseO1OYwmDq4zO53GJJuGfveHr6kS/NOPk4lKY2pGcj0Xkjt+04HVX09RV0MuW0PJrCGTELtlfbo0LgL6T5PAUFZg5XJFCgW8VJL5G1fjI+46yiL8M1Gc3eU0goAytnEnEwp46ZHfEaJyyOfa0qhLeZvNiunB3V3nDiH0sC8FfTzTk0lXv57cH6yRn2jZpCI/tGEWuX0mY5FSQNAg39YQJLGNcWl6j58IUoDHkMHGoMTMNucRQFezje6NtpVDA5wiVETFiigBVb4Q6jBtM4QBbbKyxzW4uxajRnTWHlSrQAfm//74bONQjez+wLq4uiScp3m5H1acMUoBo8ipHzC05WEQGfbljsLSIPwCPc/6XiXQlW40sdsEv0iBLHNq1DiRMp5Dwl84Ti9aJM25hXOYH6z/DGO3C2p7eLyy71WhlizHj/zQAAiMn+haUF/KIN1RivVMZyVEtTkzR5NyO6Ga/fhOWCiZ4MPRppHrI2PZ2GTFMYqk0XEGK5sUV6r2lVWakaw3TWgec8EXplq5COiifopTd17kSequaHm+y2HYY0Z35CXdfK1KcUZQZLageYh6jR/vR61TEk/G3oNU9DE=
X-Forefront-Antispam-Report: 	CIP:216.228.117.160;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge1.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(396003)(346002)(39860400002)(136003)(376002)(451199015)(36840700001)(40470700004)(46966006)(83380400001)(1076003)(426003)(336012)(2616005)(47076005)(186003)(82740400003)(356005)(7636003)(36860700001)(2906002)(7416002)(8936002)(921005)(40460700003)(40480700001)(82310400005)(478600001)(26005)(6666004)(7696005)(5660300002)(8676002)(41300700001)(70586007)(70206006)(4326008)(316002)(6636002)(54906003)(110136005)(36756003)(86362001);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2022 12:41:54.2637
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 66033cac-1e55-43a9-75b1-08dac63d9c5a
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.160];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	BL02EPF0000EE3D.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB7678
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_044214_738838_EEEF812A 
X-CRM114-Status: UNSURE (   7.75  )
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

Pad tracking is a one-time calibration for Tegra186 and Tegra194.
Clk should be disabled after calibration.

Disable clk after calibration.
While at it add 100us delay for HW recording the calibration value.

Signed-off-by: Wayne Chang <waynec@nvidia.com>
---
V2 -> V3:nothing has changed
V1 -> V2:update the commit message.
 drivers/phy/tegra/xusb-tegra186.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
index 0996ede63387..f121b4ffbbfd 100644
--- a/drivers/phy/tegra/xusb-tegra186.c
+++ b/drivers/phy/tegra/xusb-tegra186.c
@@ -609,6 +609,10 @@ static void tegra186_utmi_bias_pad_power_on(struct tegra_xusb_padctl *padctl)
 	value &= ~USB2_PD_TRK;
 	padctl_writel(padctl, value, XUSB_PADCTL_USB2_BIAS_PAD_CTL1);
 
+	udelay(100);
+
+	clk_disable_unprepare(priv->usb2_trk_clk);
+
 	mutex_unlock(&padctl->lock);
 }
 
@@ -633,8 +637,6 @@ static void tegra186_utmi_bias_pad_power_off(struct tegra_xusb_padctl *padctl)
 	value |= USB2_PD_TRK;
 	padctl_writel(padctl, value, XUSB_PADCTL_USB2_BIAS_PAD_CTL1);
 
-	clk_disable_unprepare(priv->usb2_trk_clk);
-
 	mutex_unlock(&padctl->lock);
 }
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
