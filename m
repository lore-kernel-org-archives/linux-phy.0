Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D69F1C43458
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 09:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dD8VLC8XsKE94O6AGCDsZWkvHS2VZSlQ7Pzc2AWYal4=; b=Tjq7bt4riaEojE
	rdmE6v7cnO41RX0TkrIm6NBFlkHWvYjXDWquWojUqzmObhvXjt1rJOu+TJlAkXvGY18o3AmQlj35D
	YkJFewg79vgENpE0xMLWeWl0k3kRztyejIAn3BUcKpx9tWdyNevO7+VV3sNILqi4J0arKIKUJhpFL
	0Ep7swxmRGn9BtEA2W0GuFikZm+NUP2Ua+pQBZWbUNl8gJBY7glxTSL0WBYokBKdTs6mDCvcQCy9r
	AJH7EL9lv1VEAxzm0el1oIt9qO83M85bDqAcUclHJzXFbJOlFG0BtMMxh8NKXBd8WJxIqKhu2/2xh
	FpkfDjPDn91mGpMXmnHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8O4-0000000EB9o-1iw0;
	Mon, 29 Jun 2026 09:34:44 +0000
Received: from mail-westusazlp170100005.outbound.protection.outlook.com ([2a01:111:f403:c001::5] helo=BYAPR05CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8O1-0000000EB8S-17OK
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 09:34:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eqWmb7AnP1U5nY4SHSTOMftuQe5WbdCX9jafxwj9JXw9UTGkhmANvWivU/q02SBDlbv3/1xK0it0fEYeTFM5KX+3RMOohgVf0BTTcCgI16SWJ7BI8hDW+wvoGNO6ne+E+4/lNbs+Wce4xatwZyuvwodYNbXFnMKPnUZ/2sbXiglwkT8nNZSEE9a2sdNTTX5t4ytCyajiLhNU8KBiCoWAmjDfPHV+k+te3vsqef/AMwtPoID/21JgD/0s60OT4VxhwADHd8Ds0qqKnAGAz+Bp+WG1i6tOqvnkzFnlYcnUEO9g9QohvSv3FvJUZtTmiposr/NrBrGI1xaYjt9lSM9rHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=22qwX8Z8yrRz7VNGiixRJRGbsyMq3bJPbYMSk6ZI4Jg=;
 b=duqn5F/VgNr2XEbwoQ2Wm8+OEeTdycjXL9Ux7UMccKyAWGT0oX4fUvdxeMCqsfoKl78mju/fIW81PIib1cgPVLMv/jstkvfHfyihffxWV5SONKTFMB+EkoHngFdP9D31lBFz6s90h2UQXmba3JzCKi4cMb39TZDoU8XO4MVAI6TDKV2PLAInNS1F7FVZSJa0U2BlwKC9otyWwk+n2sff37294ANXyDrATsMbr0WCj7lx+jQUEeTZcI795/K1qQ+cFtZ6x0tTBuZWVq2kWHcbVYW+wxUSz0SN33/pAMcNnw3IGjHpa+1aEUto2sJtTXkwFVvENS9Ap4ACH+oohgQWGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.232) smtp.rcpttodomain=intel.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=22qwX8Z8yrRz7VNGiixRJRGbsyMq3bJPbYMSk6ZI4Jg=;
 b=G/O1BpCgk6oTrEizi8agfl5qnFLFHlXE6X+Vhkym68v0IXUhYVolFgE/smnDqQeVz7z1bfipUnrvgUGnqMY0KH14aEcgUPZfF0IuMcEuuRolIl3maLmeLLLZkYpbX3HPjm91kVyuxZGZc5uv9cv65jWXrmKStEHKZPM55RpmSTl/NvnVQBMVyBEiP9ZFVaFSBpCxfUj0BnmwsuAOGbydRGDyuUm1ppYoqQks0x8Y2nWl0osrqDciiSf8PqEdrg7MpvuYnETbaVwzWzsUWTWlgWjBcZDeQKqXaHhx4QJ07qfRfwS3lFWV2kEF1Ir6rdJOpgI1HwsQZVntwACBKVziHA==
Received: from MN2PR07CA0005.namprd07.prod.outlook.com (2603:10b6:208:1a0::15)
 by SA1PR12MB8144.namprd12.prod.outlook.com (2603:10b6:806:337::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.18; Mon, 29 Jun
 2026 09:34:33 +0000
Received: from BL02EPF0001A0FD.namprd03.prod.outlook.com
 (2603:10b6:208:1a0:cafe::5a) by MN2PR07CA0005.outlook.office365.com
 (2603:10b6:208:1a0::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.159.19 via Frontend Transport; Mon,
 29 Jun 2026 09:34:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.232)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.232 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.232; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.232) by
 BL02EPF0001A0FD.mail.protection.outlook.com (10.167.242.104) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Mon, 29 Jun 2026 09:34:33 +0000
Received: from drhqmail202.nvidia.com (10.126.190.181) by mail.nvidia.com
 (10.127.129.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.43; Mon, 29 Jun
 2026 02:34:23 -0700
Received: from drhqmail201.nvidia.com (10.126.190.180) by
 drhqmail202.nvidia.com (10.126.190.181) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.20; Mon, 29 Jun 2026 02:34:22 -0700
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.126.190.180) with Microsoft SMTP Server id 15.2.2562.20
 via Frontend Transport; Mon, 29 Jun 2026 02:34:20 -0700
From: Wayne Chang <waynec@nvidia.com>
To: <mathias.nyman@intel.com>, <vkoul@kernel.org>,
	<neil.armstrong@linaro.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <gregkh@linuxfoundation.org>,
	<thierry.reding@gmail.com>, <jonathanh@nvidia.com>
CC: <waynec@nvidia.com>, <linux-usb@vger.kernel.org>,
	<linux-tegra@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>
Subject: [PATCH 1/8] dt-bindings: phy: tegra-xusb: Add support for Tegra264
Date: Mon, 29 Jun 2026 17:33:59 +0800
Message-ID: <20260629093406.1118594-2-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260629093406.1118594-1-waynec@nvidia.com>
References: <20260629093406.1118594-1-waynec@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-NV-OnPremToCloud: ExternallySecured
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF0001A0FD:EE_|SA1PR12MB8144:EE_
X-MS-Office365-Filtering-Correlation-Id: d365cff9-e9d3-40ea-7758-08ded5c1a0a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|82310400026|36860700016|23010399003|7416014|22082099003|18002099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: Hvqj8UePmk13+QdwqhfjLpQXh5nSz6WiEa4L6oaluqj09U0i8fywk3ooZyKKOThxigVW6Wfm2l/I1Sz2jSaDvfH7TrA/wkyS2EmGdFmSci+Vtl7YaVtrDMPH4IC5oZBLZGGbDv6/dYmygZPfSS3qv+xiYTkYPcw54mDV6J+x95LR/g5B/v8UkY3L+d9idFXUXOhbieFxrXUub4mnxEN9ZAoqG/4V+x7c+jo/4yzVLECeMx4uMD5JW5iCgiihspWBKQxqr6n2529J+pYdsD+4L8NFfMGqPTwUDjK88KhIU2N5QhDQedwJyDW8NHFX3VoztHJNs4C0bB3YxQytOwRN3xPSIEpaxCCiEBU8mzrFXfQShvgJb1eutYvvAgOuAa9q+Y2wkV5WYY7lqxwsqlFMumEk/fePldA1jHpe3nCzdmBNQQ3ZQtzgJ2TbHG9QCjXQArG+U33eU8cBU824cGCp1vh4o2RSdYbP2sMwEjFT7QdTe+BD1XCkbinKTCuUZn7wmYLMkRNKjn/vmLysQmkD1DHLxvRby2g7Ny+mymBG2tVnebCsm1qSIWrL0N7kKQ5z+erZGxW/jdQk/wnLEgCUhfcDv79amomCmQBqNADwosVFftgvRxSdjpFOwcTkuHZ4fpsJnwEWjyD5AdjQKtBOPUevWUned9hifjYmHraA0ldY+gxI1pdF2lleYgX9LNcyd2gpur2RXqDZVA75yG/Iew==
X-Forefront-Antispam-Report: CIP:216.228.118.232;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge1.nvidia.com;CAT:NONE;SFS:(13230040)(1800799024)(376014)(82310400026)(36860700016)(23010399003)(7416014)(22082099003)(18002099003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: +G7QPmcDNqSNkD7Ot7Lq6yyCEFe9zkc+mGqF4RN0jfLvRcn0lGxv7u2722iMGB+vflHPFH+Epx1sZBCOWkjN4snQIO2EVaRBhGkRR0JZDFxaSfKJf5JFHlY16T4kzRVnlo6uJF4YxxRstiKpqrORUI22i6fpZ2T1a6HYX/D3JgqjFEO9J0aHYNlV145Kr+Pi3ZAbNnZn2HAs6urU/8xMkEvScUdWAwHxNip1c/ZcNOiPMuH6FVec3+MgcSYpyJrUwSQRDJ9IDhW+cdKKSbrV+OLNYMjRAE/UkoCnb6iiDaPPJVVw0vACwdHaU2RJ3e1tWom/hTvfAedDJELiSZozo3eDdck2htDPOrJd5r4djNoK6uIWeNEkhMVtNa+NGNjqLkTL0VNf0VtoUB/gUxvQQfYtkh5XxuP0bdY5APNNDWv11keygWNWSajwFV7BWP3k
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2026 09:34:33.1621
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d365cff9-e9d3-40ea-7758-08ded5c1a0a0
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.232];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BL02EPF0001A0FD.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB8144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_023441_324369_909896F0 
X-CRM114-Status: UNSURE (   6.86  )
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

Add the compatible string for the Tegra264 XUSB PHY.

Signed-off-by: Wayne Chang <waynec@nvidia.com>
---
 .../devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml     | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml b/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml
index d8de900a4fce..f6fe3c90b5b0 100644
--- a/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml
+++ b/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml
@@ -45,6 +45,7 @@ properties:
     enum:
       - nvidia,tegra194-xusb-padctl
       - nvidia,tegra234-xusb-padctl
+      - nvidia,tegra264-xusb-padctl
 
   reg:
     items:
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
