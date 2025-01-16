Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BBCAE77188
	for <linux-phy@archiver.kernel.org>; Thu, 16 Jan 2025 06:46:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OPlsae4kbZZ9ZfqxcIUK5VEvbh4ygzb9KtPJRei6Qj4=; b=wU/PxhXJUcAjCO
	hbM+/izCkhbAUoXlpUMs7arXeO1iFyBC3PkqQaSvC4jVNzPbQFzwCNIUXDVLH/xTb1ZqDD4bLjGYb
	ytGzNFgFAPVQzhLVtm2psIhSsQCE5V3s+Wk5roL1UhBHx7tOyYcHV5PizYMhXcvsBsuynP6Sool8J
	jMryWZoshG9tTKFOdFvwuft6ZNvA8VnnAuKgHXow3qjjKzIxIyCkK0aPECuQARpcHk60O7kI2YubV
	TT/JPueL/aQPsTp3CYQYZKQDAXH1SoxIGRqhIz26InTShsjSygqxBMZBexOWKO0rx4h1rGm9gX4Ts
	zkaqmeOUxIx6Imr27/UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYJdo-0000000Dybo-1knA;
	Thu, 16 Jan 2025 06:46:08 +0000
Received: from mail-mw2nam10on20619.outbound.protection.outlook.com ([2a01:111:f403:2412::619] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYJdi-0000000Dyb8-2k9n
	for linux-phy@lists.infradead.org;
	Thu, 16 Jan 2025 06:46:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oLbzSVfu4UGJ0rzkQ2GB1RbRSQFwdIiGPZW7GqoXYvjJ9C+y0i30/jWKGV1ey40Ker44OjmmagNfGWC6nbX6A+Cam/dpbj940BXObRkGSu62XpKP8PLGo534zypitc4OZsD0JB7eDM5HkRcqP0UX8YSm1/bPEAQ/imLe1HuuVaTklwSyqCQH8dBBVuLcnmJMZxYYuZuRw+JHcN5G2vn2ixMclQfg7C0WtJL6+cIZixUdi+mXn2iEm0IEG58i6GTyp76mgHSJWzTpbPoYJROjDoEZcwYNCRo0pc7rw8tTpRKW26q9X9vNXUr2U12ZITmzvqoMVbPzdC+X+rZPNn7MCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XyOk8uptiOWQrwzJCJepJFE9ycZHXMuoZzTcmbc2Y2g=;
 b=JnvejceUnUiJemkJliy3raZpsZhOxkIcla7IN+SD5QVtmydqnZGI/0WC8k50xYh7VnTVXtM2sbudJEVLv9t29ui2SWU4NaAuIpA8RlxRoAcguWGxUBLKgTS46xXMnukpZXzd/bMMSrta09oeMCqUWczt8C+PZQ1JhyvjsiNJoGTIsUH/CEzwgGE3moWw3lgKCX0uzE7faFZMXLY313YZXftuoD5T9FrnUGbNUT0q8meWdFoqCJ+6h1XqPUCEdpvbiGvJSUrn2h4qFhXGkvkQcACJ1WdPMmmDSZdTJkPjw0dofDzphnYR0dZNUbaRkOLwjMudmTW+mycTfZedvidX0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XyOk8uptiOWQrwzJCJepJFE9ycZHXMuoZzTcmbc2Y2g=;
 b=LTxPOW6zJS6zRL4U+q2ZudRg0u0oaw8fPIX33WA8JH624lGifs6Ni/3RYST87zjdFq+1XJ6zCNU4OkC5xC8HDPybzSaHi7gKyow+u1RcVEnCIC5RUeZJSUctIv8TVEomAIKesySCaLJIxbP62Cw6KpSo6kC9QK+oQecEuSbOdZwylux5UoD45C/gC+89D5AUsKzo+YoshkX52uuX0LMZZp3ay/GVd3VmpGobLTXOyRbWFuRHQkJsdnlyQVBIw2CD4NYvm3wfShLIcxsWtdRbI03LW/GHMLxt2jqSh4ILEl7zxuXnk14X3gpWg4+GN1iZwJJHHccClov54IIqP5z7fA==
Received: from CH0PR04CA0059.namprd04.prod.outlook.com (2603:10b6:610:77::34)
 by DS7PR12MB5863.namprd12.prod.outlook.com (2603:10b6:8:7a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Thu, 16 Jan
 2025 06:45:58 +0000
Received: from CH2PEPF00000147.namprd02.prod.outlook.com
 (2603:10b6:610:77:cafe::a8) by CH0PR04CA0059.outlook.office365.com
 (2603:10b6:610:77::34) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8356.14 via Frontend Transport; Thu,
 16 Jan 2025 06:45:57 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 CH2PEPF00000147.mail.protection.outlook.com (10.167.244.104) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8356.11 via Frontend Transport; Thu, 16 Jan 2025 06:45:57 +0000
Received: from rnnvmail205.nvidia.com (10.129.68.10) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Wed, 15 Jan
 2025 22:45:46 -0800
Received: from rnnvmail203.nvidia.com (10.129.68.9) by rnnvmail205.nvidia.com
 (10.129.68.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Wed, 15 Jan
 2025 22:45:46 -0800
Received: from henryl-vm.nvidia.com (10.127.8.9) by mail.nvidia.com
 (10.129.68.9) with Microsoft SMTP Server id 15.2.1544.4 via Frontend
 Transport; Wed, 15 Jan 2025 22:45:44 -0800
From: Henry Lin <henryl@nvidia.com>
To: JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>, "Kishon Vijay
 Abraham I" <kishon@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>, Henry Lin <henryl@nvidia.com>
CC: <linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, BH Hsieh <bhsieh@nvidia.com>,
	<stable@vger.kernel.org>
Subject: [PATCH] phy: tegra: xusb: reset VBUS & ID OVERRIDE
Date: Thu, 16 Jan 2025 14:44:25 +0800
Message-ID: <20250116064425.53551-1-henryl@nvidia.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-NVConfidentiality: public
X-NV-OnPremToCloud: AnonymousSubmission
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PEPF00000147:EE_|DS7PR12MB5863:EE_
X-MS-Office365-Filtering-Correlation-Id: d956eb09-fab4-4946-9338-08dd35f96edb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700013|82310400026|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?pvr3uk/dZoHWWMANpbrXr+lHojch6h0Kaj119DsQW6qsEjnh/XKx4sDb9Uuc?=
 =?us-ascii?Q?oeMBCbThZd6aJCZwGHwaiK6auW0n2+Pl07r+5PFE0vcyKZ8+PnO32igayYBN?=
 =?us-ascii?Q?Mv9N4k5DNp6zdU9YKTKtDvKfe5mj+H5MFqCSLqrMONBPozhxnFWXmW8xdMw2?=
 =?us-ascii?Q?LwKhbke9OHK9JGa6bVv5+gAUxc7plwt+Gnf/mQrAgVLXTmWM6K+TIgMrXjiS?=
 =?us-ascii?Q?WFIuFlruZFwK0Happpdc9bU2XYe0xry0v/JLsFQNi+PNh2MKYiIS2RybALsc?=
 =?us-ascii?Q?0JqQyGMwnz+rxHdBYgE+cqqkmp7hVQ2CJVfVzosGyTr43xyQWR1YlC/kyY6T?=
 =?us-ascii?Q?uU7YfloUXtY6VRWF9ywyZH2aDVaHKrRstn/kmrI6at4tD/RS0UPOWBZfi2bp?=
 =?us-ascii?Q?sASv2OTS/NthqkWI5RUhrwtCfHNqYWubTtLJCx6RQjAzWYoP/D5ChFncHLow?=
 =?us-ascii?Q?NgajonMB61CrtK01gaE8/dc6oqikDWf1rYWpH+5wcO+4bDXcwIWfZ/a+MthX?=
 =?us-ascii?Q?dYOsgGJxdKNf4LGidaB1g9GE3df6TCQCqfAWx75Vy9MZW9WP9SoNmLxT39VW?=
 =?us-ascii?Q?YgOJHyQlI6Iu5IT7Lepm3frpO5saRVZTYLQn5SGj8fGaPTLGHNSx5Z3XuSFW?=
 =?us-ascii?Q?6kh/hCKZQjwcNpMFbbD2ohoMyVNUTU47PmOEnNCiqQNM0VSiRguK6ycZr4cx?=
 =?us-ascii?Q?r5NejD/OP7Lu037z2DHLPB3lhA0fZP8WO/tPIwareM+ARhd6vWMGG9Enwr2c?=
 =?us-ascii?Q?FM2OUPyXYvOk3/fvSMhhFCHf0d9LqI3uUbG/D8EO9J6IMImZZc4Hdp2F4pCI?=
 =?us-ascii?Q?SBjljcDP+jPRrZkKQeQvwSstw6XcwVXonKml7pjcCtlUV6iaQyjlYIRR92lA?=
 =?us-ascii?Q?lGs7/O1g8jDdR6Gk6zczff6LRVlnx3tmrjgGb3z0lszEs0Utbw6xaBvfTzjo?=
 =?us-ascii?Q?X1ZpT5HDpdXQNxKKenjZk0NoDaBVHxgeO7C/ilOfPqobt10a4Wluv+f1H3tX?=
 =?us-ascii?Q?Qhi2vugWcTBV9dXR5tM1Vhx7/SKq9VhCJzZ2ZlfI+aa7Awtktii5QBpAsjxf?=
 =?us-ascii?Q?AA1Ug3oiXzwrGbA6JzRLFB8dj6tdJpVG1fsaAAyF+cIPBPZYV8jDgGUALTeG?=
 =?us-ascii?Q?i7oSJDld7bsdYbpImHOjrUrfgjKRMcAHD5Bm3YmXlfjd1dYqIJi1/DKql9LA?=
 =?us-ascii?Q?ICYKmN0xTd1khJXUIPkPP48mUSz9Jlvr/q63RyGxNHEIX5OAblxDVFVScoJ2?=
 =?us-ascii?Q?ETOzeQb3AVmbHhw9zXKj2gyDn1zuXFodTd6qnSM5ianm+oG5EbN3Fd35nX8d?=
 =?us-ascii?Q?WanLkCe3kft0c6KW3sqpHsnREMEy4L+kWmVIZHkB3Zi1oJei4k80wbcnIENZ?=
 =?us-ascii?Q?nHE911SKkE68Vgoa2N6pJrBS1NPPxn15MvLf/4C5RD+5DO4Qc5oFyvRXFXZV?=
 =?us-ascii?Q?mGJvLI2oGPlREs9SsTf+5PjzDnu19pzW3trKQcOSRiMv3yZJYO/rxpiYG5UD?=
 =?us-ascii?Q?lVsLP5mT9FLzjIQ=3D?=
X-Forefront-Antispam-Report: CIP:216.228.117.160;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge1.nvidia.com;CAT:NONE;SFS:(13230040)(36860700013)(82310400026)(1800799024)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2025 06:45:57.7772
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d956eb09-fab4-4946-9338-08dd35f96edb
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.160];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CH2PEPF00000147.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB5863
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_224602_708313_8F4ED4EA 
X-CRM114-Status: GOOD (  11.76  )
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

From: BH Hsieh <bhsieh@nvidia.com>

Observed VBUS_OVERRIDE & ID_OVERRIDE might be programmed
with unexpected value prior to XUSB PADCTL driver, this
could also occur in virtualization scenario.

For example, UEFI firmware programs ID_OVERRIDE=GROUNDED to set
a type-c port to host mode and keeps the value to kernel.
If the type-c port is connected a usb host, below errors can be
observed right after USB host mode driver gets probed. The errors
would keep until usb role class driver detects the type-c port
as device mode and notifies usb device mode driver to set both
ID_OVERRIDE and VBUS_OVERRIDE to correct value by XUSB PADCTL
driver.

[  173.765814] usb usb3-port2: Cannot enable. Maybe the USB cable is bad?
[  173.765837] usb usb3-port2: config error

Taking virtualization into account, asserting XUSB PADCTL
reset would break XUSB functions used by other guest OS,
hence only reset VBUS & ID OVERRIDE of the port in
utmi_phy_init.

Fixes: bbf711682cd5 ("phy: tegra: xusb: Add Tegra186 support")
Cc: stable@vger.kernel.org
Signed-off-by: BH Hsieh <bhsieh@nvidia.com>
Signed-off-by: Henry Lin <henryl@nvidia.com>
---
 drivers/phy/tegra/xusb-tegra186.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
index 0f60d5d1c167..34c6d424a3e8 100644
--- a/drivers/phy/tegra/xusb-tegra186.c
+++ b/drivers/phy/tegra/xusb-tegra186.c
@@ -928,6 +928,7 @@ static int tegra186_utmi_phy_init(struct phy *phy)
 	unsigned int index = lane->index;
 	struct device *dev = padctl->dev;
 	int err;
+	u32 reg;
 
 	port = tegra_xusb_find_usb2_port(padctl, index);
 	if (!port) {
@@ -935,6 +936,13 @@ static int tegra186_utmi_phy_init(struct phy *phy)
 		return -ENODEV;
 	}
 
+	/* reset VBUS&ID OVERRIDE */
+	reg = padctl_readl(padctl, USB2_VBUS_ID);
+	reg &= ~VBUS_OVERRIDE;
+	reg &= ~ID_OVERRIDE(~0);
+	reg |= ID_OVERRIDE_FLOATING;
+	padctl_writel(padctl, reg, USB2_VBUS_ID);
+
 	if (port->supply && port->mode == USB_DR_MODE_HOST) {
 		err = regulator_enable(port->supply);
 		if (err) {
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
