Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46AA1C54E55
	for <linux-phy@archiver.kernel.org>; Tue,  5 Mar 2024 16:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFpQk4Kt9WZ5rZkhMlY/35kUMZmKMcjI6aNdL7g55vw=; b=fM9wGgdPoXBkfl
	F5c9gjzMEqteCL9+V3XHlDmUEmXarCsNiZ+Zv/w1sA6Hs6nvxivhfAsakOuZ3zsCVLrAEQjPAMK+o
	BEGcVbjeVHJR454yAEBi/h3Cc8KgJ2a41eTU0ZY5csyZG7Jf37emNTJ70RwtvJE93uYGxbQ1zF6AD
	ggFcZdbOpfXPntuyriX2YpI6SRS2UfYk8eqYHjLKPys4z4EVCou1b4aOslHBylZKq9m5h9tOpoeP6
	OKR5NppBCR+UQQYiJm9/1jiHV1foxiD0m7zrRO7kaEW4ELI9ljKslgdlxE94gqoUzP1xaxfsXmDUO
	R4JnBefBt8FxSCP852sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhXOX-0000000EQtR-332P;
	Tue, 05 Mar 2024 16:11:57 +0000
Received: from mail-co1nam11on20600.outbound.protection.outlook.com ([2a01:111:f403:2416::600] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhXOU-0000000EQrD-3Vmm
	for linux-phy@lists.infradead.org;
	Tue, 05 Mar 2024 16:11:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iBgGsec7vghJ52515lo1tqUxEVonOi3G2s9YntshVnEVbxhNIBK40OeWIqz1FRhelbyjrCCliXcZoKlkH0z/hxBwscrZQHU2rEjLqMZAthMppXMZ8s7keQkGszVFLh7vn7iOI+mg8m+8QD2c11Fkurlsq1Rn1qBydflJs5P0ERh8f8jggsh9yIUcm9U8xsvzv9AF0lQQDkAAVKVzsrY9yPlM2aoz9paMyhUiN/NA+5oz8lFbbtU9L8R+aBCqaHgm52XzGQI4xXnIlobakfwKF4ozHoaFJsjrGP+x9Xp8VU5AvIHYi7GVEPZ2w6wCfX24buQi5OiwrppgRAeV7DpmLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SHxsVm1RFsmXOLFGOp9HnzYMEHtmYcu7o+CS2B9gfbk=;
 b=ZeibOkHy7z5noVFXPVqGhqWfqfMNP6xSEkdwQ48S3967JUFAtWGBelQBW9JgZKS0bPM2iKzH9zaiOEoCty0rCI6o59j0LRagWVoyFg9W1dWDzuOJeSKf0e6vAHXiogW6mN/9AQhFNW2Mf2l8iLAZbbs/STuGoEmxl2P+wLSNfzBV6ekcJPCCNZZzJ0/1ZIuF0ElQKiy5yR0NTwhAYSCSicefUe0DAZAHi5OlrA0LRpZa+9LxVaY101wSKYDQTyn7xS/b9o99O0O08zoEMo+mmOP8YQ6HMGi4dKiDLdLJkH/R9Ki3p/Wrs9uDFccTaTlfSj5arHJ0PCjGN6CMl4vJnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.233) smtp.rcpttodomain=gmail.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SHxsVm1RFsmXOLFGOp9HnzYMEHtmYcu7o+CS2B9gfbk=;
 b=OKwp8mTfGid2tIV4rJj10lO7F+NmQAeNYLjONgleGvKfTTf16dY7/QMc1T/S+4Ts7KLxnRHglCOkdgAgKj1BuHnpOxELIqDne1P/K9gRHDTsjYQjsHOAorjTqKUazil9mYdz0k/sA1p6g5WaP7gfOfZ4DCuLU0wREnd5osOSWrDLF4e/kdlWo8rUmAAge64oPuNUAmLOqRdruTj5Xmrb26u68iGtCZqNPmaeNRvfSKlPAWkVVwf0p+YoaUlMuNxTPmjBaQIqk+73EajQkOE/uu3aPZcILgMsPnBY4DuBUf+bJRSz2Ak9KuYafWOxpx1FqMKVXiCelDNiyEz3KM5Hng==
Received: from SN6PR05CA0035.namprd05.prod.outlook.com (2603:10b6:805:de::48)
 by MN0PR12MB5955.namprd12.prod.outlook.com (2603:10b6:208:37e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.24; Tue, 5 Mar
 2024 16:11:39 +0000
Received: from SA2PEPF0000150B.namprd04.prod.outlook.com
 (2603:10b6:805:de:cafe::81) by SN6PR05CA0035.outlook.office365.com
 (2603:10b6:805:de::48) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.24 via Frontend
 Transport; Tue, 5 Mar 2024 16:11:39 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.233)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.233 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.233; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.233) by
 SA2PEPF0000150B.mail.protection.outlook.com (10.167.242.43) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7362.11 via Frontend Transport; Tue, 5 Mar 2024 16:11:39 +0000
Received: from drhqmail203.nvidia.com (10.126.190.182) by mail.nvidia.com
 (10.127.129.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Tue, 5 Mar 2024
 08:11:29 -0800
Received: from drhqmail201.nvidia.com (10.126.190.180) by
 drhqmail203.nvidia.com (10.126.190.182) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.12; Tue, 5 Mar 2024 08:11:28 -0800
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.126.190.180) with Microsoft SMTP Server id 15.2.1258.12
 via Frontend Transport; Tue, 5 Mar 2024 08:11:26 -0800
From: Wayne Chang <waynec@nvidia.com>
To: <waynec@nvidia.com>, <jonathanh@nvidia.com>, <thierry.reding@gmail.com>,
	<jckuo@nvidia.com>, <vkoul@kernel.org>, <kishon@kernel.org>,
	<gregkh@linuxfoundation.org>
CC: <linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>
Subject: [PATCH 1/2] phy: tegra: xusb: Add API to retrieve the port number of phy
Date: Wed, 6 Mar 2024 00:11:21 +0800
Message-ID: <20240305161122.1254099-2-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240305161122.1254099-1-waynec@nvidia.com>
References: <20240305161122.1254099-1-waynec@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-NV-OnPremToCloud: ExternallySecured
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA2PEPF0000150B:EE_|MN0PR12MB5955:EE_
X-MS-Office365-Filtering-Correlation-Id: b6c22762-6409-4b92-5379-08dc3d2ef0c6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7rE4cPRhM3XRq/lIKGXrFhbYpVxZTH3ufDZsJ6WfROiQjlqwnKLZVfK6dXo33tehhrHHIeUVNOpImmDd57TjJYLMdPZvF5/1NypbclzxD0VRd1tFA2n1OuSUC2i0bIcOd//MM7xTlbpR38EtiIocOsxpV7f0g75cjX9Jik9UEL6Mk6f+xE0USLdPtgHLD7SFY4afMFbm4ePI5s6Q0fBm9g5AclyiclzOmzIE6ccsZAHUCkd1Kp+9rAkpXvxDEcdWFUqWaCAfgkOStGeVssU2FX0hUE3IB2LD/zKcXzyZZEQF9BpLokLPTKPHWVwvpkqZXHVFgqPUHrNNoE3ImdkViwLOpXMUSWEajZGxcol7kLfJTUwGQf8AFn1kN9GFLMh8x4GkeO+JggdpCt26/RnsUOPA/BnN7lm5bgTOWUShEXlBvXin0/t/oRVAvLyV99BtdPfFZMJm8WqJItvBju6tmBKI7pxJD2Ok5f9S19ECL7B8WEz6dHVWshR8ihW1kJ6Uh2H0vioGCayAnVUB1oooHbOiqwVczZkpZj5f7/3faDLN1njH5qQ5FfjwxFlWZAISpPrkSaPBMIk5zMQWIc8jv23vnttckKbC5cvC5uggzAC9t9H/KGhxffM3ISKjSyujjCsO5x7E/JBuA8Ff68DsWwmjZna8P8i3W/qccuQmuxxCJ6ZMzplva8G0GnjuRN9voTV2ebsMbkW4v0My1qMlbGhKMOWdKb37q8vAdEFCEuxZz5qLCu6G54Kbx3u2cQVa
X-Forefront-Antispam-Report: CIP:216.228.118.233;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge2.nvidia.com;CAT:NONE;SFS:(13230031)(36860700004)(376005)(82310400014);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2024 16:11:39.5993
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b6c22762-6409-4b92-5379-08dc3d2ef0c6
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.233];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: SA2PEPF0000150B.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB5955
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_081155_078578_2E6F6B8E 
X-CRM114-Status: UNSURE (   9.92  )
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

This patch introduces a new API, tegra_xusb_padctl_get_port_number,
to the Tegra XUSB Pad Controller driver. This API is used to identify
the USB port that is associated with a given PHY.

The function takes a PHY pointer for either a USB2 PHY or USB3 PHY as input
and returns the corresponding port number. If the PHY pointer is invalid,
it returns -ENODEV.

Signed-off-by: Wayne Chang <waynec@nvidia.com>
---
 drivers/phy/tegra/xusb.c       | 13 +++++++++++++
 include/linux/phy/tegra/xusb.h |  1 +
 2 files changed, 14 insertions(+)

diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index 142ebe0247cc..983a6e6173bd 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -1531,6 +1531,19 @@ int tegra_xusb_padctl_get_usb3_companion(struct tegra_xusb_padctl *padctl,
 }
 EXPORT_SYMBOL_GPL(tegra_xusb_padctl_get_usb3_companion);
 
+int tegra_xusb_padctl_get_port_number(struct phy *phy)
+{
+	struct tegra_xusb_lane *lane;
+
+	if (!phy)
+		return -ENODEV;
+
+	lane = phy_get_drvdata(phy);
+
+	return lane->index;
+}
+EXPORT_SYMBOL_GPL(tegra_xusb_padctl_get_port_number);
+
 MODULE_AUTHOR("Thierry Reding <treding@nvidia.com>");
 MODULE_DESCRIPTION("Tegra XUSB Pad Controller driver");
 MODULE_LICENSE("GPL v2");
diff --git a/include/linux/phy/tegra/xusb.h b/include/linux/phy/tegra/xusb.h
index 70998e6dd6fd..6ca51e0080ec 100644
--- a/include/linux/phy/tegra/xusb.h
+++ b/include/linux/phy/tegra/xusb.h
@@ -26,6 +26,7 @@ void tegra_phy_xusb_utmi_pad_power_down(struct phy *phy);
 int tegra_phy_xusb_utmi_port_reset(struct phy *phy);
 int tegra_xusb_padctl_get_usb3_companion(struct tegra_xusb_padctl *padctl,
 					 unsigned int port);
+int tegra_xusb_padctl_get_port_number(struct phy *phy);
 int tegra_xusb_padctl_enable_phy_sleepwalk(struct tegra_xusb_padctl *padctl, struct phy *phy,
 					   enum usb_device_speed speed);
 int tegra_xusb_padctl_disable_phy_sleepwalk(struct tegra_xusb_padctl *padctl, struct phy *phy);
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
