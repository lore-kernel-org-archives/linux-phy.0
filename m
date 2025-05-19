Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B4BFC3DA6D
	for <linux-phy@archiver.kernel.org>; Mon, 19 May 2025 09:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nf/esjO903d5cnb8AR020sAtgFXgdCZBt6CYD14nYOU=; b=hbWioLKrZCG573
	FlFHEIcgGWQInCMbCoUHV/LR9HTN5fJEYXl4JasT7Jtsqm+EcJDtZ4PhO/fvNnyt5T+4trJEGmloG
	2dG3+R+sZSSfAnNNqTgO22sD7rN+igVROXZCjHinuLFipaZcYm8/yMoVWjknkXwCBG2Qi2BthAaP7
	Qv87dUWmloD37kLGv4+j7+55LgNEsZcTrTJ/eO4Nnp9ItDLPt5wzpy9Y+a3N4Qv2TZ+AN8bfyRcWY
	g1AWOqSvG9yS1i6zneAYhp9uPcMrcSIYxFxbXbDZSRGDeRnFS12OzMhxPcnKa2b6W7/kjqfse4woy
	aNNxQ20q5wBPSz6gQqAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGwWK-00000008USJ-074q;
	Mon, 19 May 2025 09:10:52 +0000
Received: from mail-bn7nam10on20600.outbound.protection.outlook.com ([2a01:111:f403:2009::600] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGwVU-00000008UFZ-1PPY
	for linux-phy@lists.infradead.org;
	Mon, 19 May 2025 09:10:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vqGJOGkBZhxynHRjcliMlMkov1Kt2ODsO03XUnTkz0Np7G2tvZkHXZ96HCD/zDT9YeSRqt6jQ5Xz4osK1CLOQCgRD8IUk+TekYgbdc5du3LAbscX8p2WoL2jIgMh0GxJMvHtkLF5M4Btj3wxJIxIi0kqPda1Rxjiq3/2oeHup2IpUiSwqnF5mumiWUkCwttF1taGWnwMIQocZ9xQmvB/pmjpasX5pi9ZkIyQQWXLBc7hzFPpwJKDYUA6r8j1nNLd6DZMwbBas+DhXrminebJnvyFZ6Go4ekPAKHg3422c5E/nAzZMwRklxXS6sPYxVdsyCTDiP4xkIIM2qT3NoSaFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i8EpxB6sgW43l+UiIbAbMrA5igFZ37m0i/MqD2Q5Hhc=;
 b=ycZ2VMNhSPeH0fnloxG+1czppNPkI1Taf2acEYp1VT2DhzxiP651jHaMlrojx/a2ZGVgu8zDfCplF2STP01KmCM/UhFrIjUWFPMKi7OvCzckt5BewMV0wegMcRTUPbLjhlK4rPbXBUZwbqxml9LCKz0Tlf8ryU0QviCeC//HUDU3i/oGfrf44A058l+xXoQyty75MR1I8Jva5UEMAJBXJ5MUvBWaQzUWCUP6a8ezc4ZY478aM8gnbQFE/F9GH4HK46mpHDVKYfaKjDmgNwUwcTM3+Dq8+zl+lQsDzjBKKnOlugRq9oaszPG0SiksEKYReEq9RmdvzMnvFKVRIIzgjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i8EpxB6sgW43l+UiIbAbMrA5igFZ37m0i/MqD2Q5Hhc=;
 b=TbyXiGH4w8uMrfazIFXIkaLsuuX8Opu56WlpyjsIkIZ+q4twAPrN2Nfa2J5FwnGiCwwZEpw3ONf+0jZoqByINCwnZgeYYKvc3yr9EBXaLqqlr/IQLMeu7tf4IhbpF8epWalLiCDdA0O6abmim1KhR6WgpFnIW2ia7h68BLJsIOSNxDFk5ZVeHv9IpPNOEEbh/YGyQ/5UQHTRn9wjT0Nc/AF0z/ntzOKFiyDPRUyGRnpng7Lb0Kw2pfYo0bbuFV1gdMrKkCEiqRnQ9BsDg4vZccz8zNslnqzRjhHWxE8HXGkpb5aYwQ2cccxrvYAZHsyQ+2B2L05xvjp8Sqs2JYiL1A==
Received: from MW2PR16CA0055.namprd16.prod.outlook.com (2603:10b6:907:1::32)
 by IA1PR12MB6433.namprd12.prod.outlook.com (2603:10b6:208:3af::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.33; Mon, 19 May
 2025 09:09:55 +0000
Received: from CO1PEPF000042A9.namprd03.prod.outlook.com
 (2603:10b6:907:1:cafe::db) by MW2PR16CA0055.outlook.office365.com
 (2603:10b6:907:1::32) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8746.29 via Frontend Transport; Mon,
 19 May 2025 09:09:54 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 CO1PEPF000042A9.mail.protection.outlook.com (10.167.243.38) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8769.18 via Frontend Transport; Mon, 19 May 2025 09:09:54 +0000
Received: from rnnvmail204.nvidia.com (10.129.68.6) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Mon, 19 May
 2025 02:09:37 -0700
Received: from rnnvmail203.nvidia.com (10.129.68.9) by rnnvmail204.nvidia.com
 (10.129.68.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.14; Mon, 19 May
 2025 02:09:36 -0700
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.129.68.9) with Microsoft SMTP Server id 15.2.1544.14 via
 Frontend Transport; Mon, 19 May 2025 02:09:34 -0700
From: Wayne Chang <waynec@nvidia.com>
To: <waynec@nvidia.com>, <jckuo@nvidia.com>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>
CC: <linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <stable@vger.kernel.org>
Subject: [PATCH V2 1/2] phy: tegra: xusb: Decouple CYA_TRK_CODE_UPDATE_ON_IDLE from trk_hw_mode
Date: Mon, 19 May 2025 17:09:28 +0800
Message-ID: <20250519090929.3132456-2-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250519090929.3132456-1-waynec@nvidia.com>
References: <20250519090929.3132456-1-waynec@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-NV-OnPremToCloud: AnonymousSubmission
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF000042A9:EE_|IA1PR12MB6433:EE_
X-MS-Office365-Filtering-Correlation-Id: eb8ce671-e4c9-404f-08a9-08dd96b4eb87
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|36860700013|376014|82310400026;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?TchmRSUM0SUWzYjx0c8ygi+ztBTsQVpz00mLL7qrJRYCqEmuFIAmcJ7BFAiT?=
 =?us-ascii?Q?USSx17JIrRZw0t9IRoIs9/uhcWz6SAzJJl2MKk/YF7xB/Xh/qj5Q5TGWEAO3?=
 =?us-ascii?Q?vtk+mP6W7BmJ+MOfk6M7efqB42zsKJIHw/ojpVuuYtjvoWfeGoroNwfxnhM9?=
 =?us-ascii?Q?CnevhHBs99IfjSX47CrSuL8okkbWmFZVl+b2UijFfVwyLJbKEA/mq2yiVAhZ?=
 =?us-ascii?Q?ODY0/jMwFRBFAdgapwFw0QeX5jQBBVRoXApKVwDnL2Uy0nOeeyCPpeBG/6wz?=
 =?us-ascii?Q?BAv1pa7O6P1x0zEZr5aDyLNTTMYUyeKvhrRUZK5jY5eEM54tsOwpxC5/1Q16?=
 =?us-ascii?Q?jyIwQVReaFvwv6ko6es4RL0NWOF3MIBF9WE53GIfdRcMKMr+PTK2Pj2DkDPm?=
 =?us-ascii?Q?M0SAD3+GktE7x4oKYrerYP4XF4z47YcMg7wXnFDS0yn/qJu71zS18cESon4X?=
 =?us-ascii?Q?iErSX9zf3O9wwm4Tps3yTfGrudsGuPEB+FJsSY/Hfq4nVRVs9dulY58ghuST?=
 =?us-ascii?Q?21+b3N4+i3wCrd+EhNK0aNGWY0uuWQqXr/s8D5zFhH1malMoIe/nw/2RHCcv?=
 =?us-ascii?Q?UOZxxlstLHcR5duQiUENehvzt1QdPm9TMfDSYj9fDpAesq21Q4gIaGsVVkEn?=
 =?us-ascii?Q?2llhIQGuRuMLt0LkMhnjqS4vA7LubdHp+NP8WyA1C1SlrlL3n/xvR7AguJ4J?=
 =?us-ascii?Q?9RycN81roRJFd81QAquAEwfcMP5coQ9rXCcce9dLfBr4L/8snIVs9cxj6tNX?=
 =?us-ascii?Q?aDegr3tUsCEq6LLDXX7VOae++QeqaLMQDseCxgOKBjZhAJDs4k4aW6tz5GdA?=
 =?us-ascii?Q?0EeEvM98UL9Vmkl1N9YTspOaJ8CS7FyrWKmTGZtDg1ePVSNqsXv0qHkijshS?=
 =?us-ascii?Q?KVyBajLFos6ohS4OvMvt5G6hEweRdvnzxVmg0vXpKwRqtnugY2XVTG9X9tAb?=
 =?us-ascii?Q?CCAFa0vDQT3m9kk6tRtf3RpWaOcmdLbymX6a3Trm5ybHXkubWqq0tM4Yy0VU?=
 =?us-ascii?Q?7xsOYT3u4QxYH0lo0LJQxz/JoCdQU8brjQOcJh7ySPuKi6lKS0GGNqH6QBau?=
 =?us-ascii?Q?RFIVc1t+4WOLGBj6UFeu17ntul7FgCAiYFzQtDlsoHwRRcpRsXrV+xrF3QlU?=
 =?us-ascii?Q?a8OGOZEcV9VmDG3wybVe8vzAh7ZL+hDtUNSDXM1kDNvtuWiFTc9wzwZUANar?=
 =?us-ascii?Q?OUdrd6qwgd20PVAMv+Cvargl/uy9XFBS0wnxT/BbmosxchDDTr/eDJtW3fyN?=
 =?us-ascii?Q?gANiGLzgtbA9rcH2tAkWOpSk3uP5bP02nSge4Ux5XsVJxNlkIh6Mnxib4qF2?=
 =?us-ascii?Q?pTLamvgrlL7E1/gl6Bi0pDjBQw2170rxDB0fnCwCerzJPBm6Zr+9iL3JzlJ/?=
 =?us-ascii?Q?6r9+olryGKGvEoZ7nfWJbiVwyKDhyE2tRhcjZG2HpKUareVB5MN5y1jWBMtL?=
 =?us-ascii?Q?EbVeK6lUnoiEhqlzOJxYBy4Ao0ExCdNJi7Qgjo5TXpy0VGUSWyYqgKpzlsoJ?=
 =?us-ascii?Q?CiBc3Zv6Yvmtu8YDkdLeQayy4JUG5Eqb8605?=
X-Forefront-Antispam-Report: CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230040)(1800799024)(36860700013)(376014)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2025 09:09:54.4951
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: eb8ce671-e4c9-404f-08a9-08dd96b4eb87
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1PEPF000042A9.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6433
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_021000_378366_6A539E51 
X-CRM114-Status: GOOD (  11.92  )
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
V1->V2: Rebased the commit
 drivers/phy/tegra/xusb-tegra186.c | 14 ++++++++------
 drivers/phy/tegra/xusb.h          |  1 +
 2 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
index 23a23f2d64e5..683692f0ec3c 100644
--- a/drivers/phy/tegra/xusb-tegra186.c
+++ b/drivers/phy/tegra/xusb-tegra186.c
@@ -648,14 +648,15 @@ static void tegra186_utmi_bias_pad_power_on(struct tegra_xusb_padctl *padctl)
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
 }
 
 static void tegra186_utmi_bias_pad_power_off(struct tegra_xusb_padctl *padctl)
@@ -1711,6 +1712,7 @@ const struct tegra_xusb_padctl_soc tegra234_xusb_padctl_soc = {
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
