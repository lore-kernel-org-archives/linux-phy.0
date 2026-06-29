Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93FE2C43458
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 09:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vNv8w2HR6UXJ0U84J1SgYRI4S35SlBSW5UpCsF3rjYM=; b=3XmYPZ8B7rVHAH
	Wx5G1MPtJ4fL2SYBDf6Gdj0ZZTmyhNijuF1fXFtYmoyDPPDWpHq1jrWFZYhciaYCm7ThzTU0znHAU
	vRxGwtYKE8jWXpJt2eT8OiBLw8G3uYbTtOQv8LqILzK/A85hRtASQ0qEtlx82Sf1SkaXT4bVp38cE
	41nbCqMO/Sk+GozM8PKZ75SMUf594oJnh/Z3DGKzPuaEOgJlcRc8321tyiYHtobO7FQQS6uMSeUni
	3bkEEHVlwNX974NXc/UG8BXMUZO2fiTP9bKglEca+yu30T4cBqtnW6iBRI3PQYzheJFsXI1B5818o
	bRkPi8Qy7u27GKwe3IXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8O1-0000000EB8g-1VF3;
	Mon, 29 Jun 2026 09:34:41 +0000
Received: from mail-centralusazon11011004.outbound.protection.outlook.com ([52.101.62.4] helo=DM5PR21CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8Ny-0000000EB7g-0yNs
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 09:34:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HMLFGsN7gJqeiy32AYTQW/fTwvDTtFKZ/I35GaV3vktH6gQCGlnVEzX16CzH7ZmILfm2Xz4Oc3lo6Kr41rUoFEXLVPTvzmGGDn3Q9n58t4jB78JGpQl2ZMIgCe5owT1LAS/kHlL8RA/JSFL8Pqe7dAQpBCtjp0IoP3812u99HWLneNHl1Csk8wdHWOaFjb5AVPrzCHMklti84YusSGcwYI8TtFRZBkrNU4V9lsqlsu6mh7pQS/i8YoCXlpT9DK8XTo0LcjIxLhdQSAq8ykj49Y9G2Fj2og0R8Wv3KMklkQpen9zUswzHXGhEUP2Spfi6ruAtwBxxATmEpQAVFRL0cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9OXuVJXLdBdXQ/wHrMcZxi/6axyLllGRmIGDrhJJIyc=;
 b=AD6tqm/8VjME57sXkPRxNA6KhhhGuChChqinN39VuxtRmOBlLTVIAhjzX554JqlDdeHAUcC7rWCZSzNF4tpSzQLeP1aI7c/LjXuoeRrm0/2jb7NV6/Af4gOnl2iGwf0BJtzQixgfosZJFJy699P1vuFD+PPpbS+XpcOI2NSpcBI4XK6Jk9oYu+AaSHG4Ex/EiDcKC6tOTZetxxs0PnbxPyf/MaPQIIYDv+IQaVpq573E9d6Z0SC1dWMpsKEhUA8hL/Ga5gMgQBEwUI7hrA1BpdNDBXNvVsUtYbNmnNzZEJ6SrW4r8a+9Qg0lMmQg+Jt9fqtPqytOukhrBmqfFg0Dzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.232) smtp.rcpttodomain=intel.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9OXuVJXLdBdXQ/wHrMcZxi/6axyLllGRmIGDrhJJIyc=;
 b=RAQLU9uQHMxahLr+dXSWAd6ORjU317rN7uOcRvLFVkCE/HcySvVELaO4ktkQq+DdKDXUmjnBF51iw3h0PZDQ5tOjGjVOvj/5vrUNA14nem3SHQScuudLJ3aFZOGMM7ItyF1cYgc87Hf2ojJ/L/IY8d0AjDC+u7jz8xgJYCkm1VhIBIlF8/cpXtrZMUEZAH1fst7FW1P5cX93tfcG0JmkE9mKb+eZx+0B2XwyyKXkK8X06lzP/kYjreg8MSHzgGX4XOaOD0Lqrz6cPCPiA4a2ZT057tK8foo/MFg6+hMMYhV8gFfBYKc5jFz7fMQ8btNMNWdImP1cmVEZZS3Ks3pbdw==
Received: from MN2PR07CA0026.namprd07.prod.outlook.com (2603:10b6:208:1a0::36)
 by MN2PR12MB4455.namprd12.prod.outlook.com (2603:10b6:208:265::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Mon, 29 Jun
 2026 09:34:29 +0000
Received: from BL02EPF0001A0FD.namprd03.prod.outlook.com
 (2603:10b6:208:1a0:cafe::30) by MN2PR07CA0026.outlook.office365.com
 (2603:10b6:208:1a0::36) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.159.19 via Frontend Transport; Mon,
 29 Jun 2026 09:34:29 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.232)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.232 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.232; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.232) by
 BL02EPF0001A0FD.mail.protection.outlook.com (10.167.242.104) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Mon, 29 Jun 2026 09:34:29 +0000
Received: from drhqmail202.nvidia.com (10.126.190.181) by mail.nvidia.com
 (10.127.129.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.43; Mon, 29 Jun
 2026 02:34:19 -0700
Received: from drhqmail201.nvidia.com (10.126.190.180) by
 drhqmail202.nvidia.com (10.126.190.181) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.20; Mon, 29 Jun 2026 02:34:18 -0700
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.126.190.180) with Microsoft SMTP Server id 15.2.2562.20
 via Frontend Transport; Mon, 29 Jun 2026 02:34:15 -0700
From: Wayne Chang <waynec@nvidia.com>
To: <mathias.nyman@intel.com>, <vkoul@kernel.org>,
	<neil.armstrong@linaro.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <gregkh@linuxfoundation.org>,
	<thierry.reding@gmail.com>, <jonathanh@nvidia.com>
CC: <waynec@nvidia.com>, <linux-usb@vger.kernel.org>,
	<linux-tegra@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>
Subject: [PATCH 0/8] Enable USB host functions on Jetson AGX Thor
Date: Mon, 29 Jun 2026 17:33:58 +0800
Message-ID: <20260629093406.1118594-1-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-NVConfidentiality: public
X-NV-OnPremToCloud: ExternallySecured
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF0001A0FD:EE_|MN2PR12MB4455:EE_
X-MS-Office365-Filtering-Correlation-Id: 12e50155-5a8e-43f6-a1cf-08ded5c19e94
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|36860700016|82310400026|23010399003|6133799003|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: /Qt5YmYMHvI59CGqfx6jE5FMkSRFAGaxO0iJ0Ifx9rQENd+sXwZuXapmcDIIiECI2M9pTf0XXwLmxzPZHEDy1w+Tqn6JyzYh/duskMpRiDo449YEogdrdUU71Oj88lyi/iAoqUsGODIDM8yZD5BOIrO9lJYIlhx8Rm+ButAajKnMZosErWXdDFnSpvTxyhjGvz/sHFWdCXRScjzCYFOk8BJmaRt49A+GRn10qj9rafBmF3tE6RVO/4VjDGC5mHzJKHEuarA7IVz/H3hW0Zs5ZHxRnXNaLBtIq+0qT/msAGj5BMRL/tC2OyzrRuCm8jYixI9iEQA3XdJSBfrlmYae3HpeQDw+X9p2HRlWZqo4F7c81S9LkBsoGDP7s9aCEHBw3pw0qZElBfFWOr3Pu8+9ozlaXlGYy+KW4M6oh1+nxpKTNftb9xzdH/YJ351EnjFGB8VZtivI4JxcR3ZhmccIFQwwXQox5iTaR+poGyw3RRUTtMT6eG8B5LS/szbGEMYhbwJuKSNZAo6r5mLj7LegNR710P4ugPXnmDEUUe09euPToMr9noXtFA/twKZUmPHmjgWJ/iVTCPpxtg9ZZ3sZeR6CkXcbHxwmATOwCriAJvDo+M1K95EQS6nB6FMqMr1UBCAP0DDTgkjUsSs9lyyFZ/9TUrocORgQfhNVYfKf5AQY30+SmNCtmoFBBCt/6cbAGyKBQCqf4iyUUObt/Wkwzw==
X-Forefront-Antispam-Report: CIP:216.228.118.232;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge1.nvidia.com;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(36860700016)(82310400026)(23010399003)(6133799003)(18002099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: jpTRUjpcRn4F2VUcrp5UoBePiwNch6mNNal7HZAwSkEU9TqVYAlldr5Sn8BNkCkwpAXSRcsXuXv/bo6mNwAL0zJfz1QfW3Iwgp1a99Ob/XPL1S1ic+CySVjvgou59TRgMVSYI3m54Me8K/PDYR2Z2VpMcrSIoFRtU3s6MElWm4pJ7CFw72UW/9yCaFC+R+4JkgHwJLLu0ID2g/z6dJFLaxnBKBQAb5f7qrySjCAjrTAmNCe3gopxiYQ1pT1zGKLjW3e4MzpPMVWUlIrtkPbc57YNL4d/W+z/tYnjt4pZbzK+prkUXfUqeyYkehY//t0iUDOXwgo8W5Fo+uMGxBZk2RA5d3voBXzW7VFdy2g6sY+2Emm2fjcOEHXA8EtwgRCPZlLvtCrMKmQqOwTVE535HcIni3I6BxUKW2ASn1yhc8j+/tCMm9TdBS4LRbPsBcUu
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2026 09:34:29.7247
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 12e50155-5a8e-43f6-a1cf-08ded5c19e94
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.232];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BL02EPF0001A0FD.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4455
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_023438_276117_29BFF7AF 
X-CRM114-Status: UNSURE (   4.90  )
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

Enable support for USB host functions on the Tegra264 Jetson AGX Thor
platform

Sing-Han Chen (1):
  phy: tegra: xusb: Use devm_clk_get_optional to fetch USB2 tracking
    clock

Wayne Chang (7):
  dt-bindings: phy: tegra-xusb: Add support for Tegra264
  dt-bindings: usb: Add Tegra264 XUSB host support
  arm64: tegra: Enable XUSB host function on Jetson AGX Thor
  phy: tegra: xusb: Increase timeout for USB2_TRK_COMPLETED polling
  phy: tegra: xusb: Add Tegra264 support
  usb: host: xhci-tegra: Skip MBOX MSG_ENABLED on Tegra264
  usb: host: xhci-tegra: Add Tegra264 XHCI support

 .../phy/nvidia,tegra194-xusb-padctl.yaml      |   1 +
 .../bindings/usb/nvidia,tegra234-xusb.yaml    | 115 +++++++++----
 .../arm64/boot/dts/nvidia/tegra264-p3834.dtsi |  50 ++++++
 .../dts/nvidia/tegra264-p4071-0000+p3834.dtsi |  95 +++++++++++
 arch/arm64/boot/dts/nvidia/tegra264.dtsi      | 154 ++++++++++++++++++
 drivers/phy/tegra/Makefile                    |   1 +
 drivers/phy/tegra/xusb-tegra186.c             |  30 +++-
 drivers/phy/tegra/xusb.c                      |   6 +
 drivers/phy/tegra/xusb.h                      |   3 +
 drivers/usb/host/xhci-tegra.c                 |  37 +++++
 10 files changed, 454 insertions(+), 38 deletions(-)


base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
