Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76BECC982F7
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 12:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o3P/ysJU+dNkGxUSwuaiDhnrMvmhLR7Waj/mnr0BtTg=; b=uwgS1aDn4ZDNg0
	+ozPoWXt90ruAKP86kPaewWJlk42jLNchn/37R55vQ+AhaISOpNHu8JJhAuTLGM9lQkFjdjNiGS4N
	fzCMVkC5ZK4Y31jLZSMKjJ7IA6UawAfhA1MO5BYaPVuXGnOb8l3Gnb7pojW2KF3/3xGjRZasV0xtY
	8xuQOaCchaw4n3ARBWH8/81R5y5uKu248eHmO0nLi9lzlV+v7VshqqTH2rvV5gl9LIAtkWTXyNjli
	x3iN15GkmLveJTZnVc90ocydow301io1ALjqyO6sprYLUUX0xWVXpqB++XUi5goRI00NRezuJHIEO
	9dTUINf6CVB7VW3qnqMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8cvl-000000021uz-0cdW;
	Mon, 21 Sep 2026 12:15:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8cvj-000000021uC-3Bax
	for linux-phy@bombadil.infradead.org;
	Mon, 21 Sep 2026 12:15:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=CC:To:In-Reply-To:References:
	Message-ID:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=EYCLWs8LkIMBji3cQ3cZGDN9o1yltNscYnExx92tCrM=; b=NPIbH/u0XXYMuo4QMifBrjcOZH
	tVCgCiQftNCrWztZE/XXyVWxyRMOgnk2ZgrPjziQDml0AAhfnU0ujdjwo581Zydgvjuv7sXEA6yif
	IoXSY7SVu3BsI4ZE4LhjTZxwHRunJMvYvvC14mFd44paYpuYkUYdfNshUaWYKAw0JmjiKUo2lQiXG
	Sws6bnBc/9TirvAb+fGs9X1xThZD5NsUzZeoTgypZS3pTKIHoYixsK9jvUuDPjYXNKNsnMvoAG4Ix
	I5WE/DtiwEoYQORAZ8KvHMKfcJz0Grb7nAOqp8TSTKq6/WakoL2vkCL1WTUe8p8+AM87tSE2OTeux
	xrd3W62g==;
Received: from mail-eastus2azlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c110::1] helo=BN1PR04CU002.outbound.protection.outlook.com)
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8cvg-0000000CGLO-1VJz
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 12:15:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cNrKE3nIxjYoMSmV+r8SDhlYK4nrMOQcgTECT6nUFXdd+Jvh5k83scboOFGzAFsrkelrGdXUKEXuEjbOFOsgKZKPBluFlldRGrZTw4fXxl/r8AFA0QT94MedLgrd9mA+0mS6o2NnbipI8b4jLZIHwI2NNw+XeRxDABtYG/x4//9ORqZTr3iL1HzLXDN26eXZwejvZ0zv30RfmjqTOBlL7TcGq4GM8P0F8hFY3K0rrmupqPZLY4AHyN1BuI+GaRc3q7Vcgun5sEYY/B1E10ftLReaLv1PAyvhrEzV6S8smsEDO93bhfqz3juuSKpPIP8pKQCoOuI1MFEHsNBjpdVgdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EYCLWs8LkIMBji3cQ3cZGDN9o1yltNscYnExx92tCrM=;
 b=CILvEWwJ5WWJyh/O4aEzY0IB3Zy3r9sCa0zhUvcXPsk8SkyA78VsbQyOyHLvisrbzn5IgkvglJtMZXfo3WAiSSmuvusFGhHngXCjuUZ6wNTdpiGRdJRcZYzIq58jHLPBLXHyB9VSkf7l+EF1x+Q5Ei/sxTVi2/vjeNZAGyNOk+gNz806AWCpy/RjabDxvoXJjU6P6YVRfGsxlHW+O3TEWTi8YifJx62/5fBmnFxQECNGPJA85AyuYwuF9eya1blk1Ulalxu8wRRWquI/i2/7g4hvLhJupt3wGSGzwyIqIYAwu1/CLXZRGoKXF7l20icxUs0jB42mtWc09Nli1k5rVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EYCLWs8LkIMBji3cQ3cZGDN9o1yltNscYnExx92tCrM=;
 b=pddEBUNQ3F8AGq1t965r3ozl/hM2FwPWFdun93zg9rAwo2UuqByeWw4mRRIEzJmQFBg7pPWI2ZSfOa3k/2xbIGLOZS2AWE5EbrriAaBXAYRwRniWYZVRm6k2QG3TcEwX/mmEAsj+GPiRUB2NKk8DV9+jbnuDyLHdJoYW2Kv3e1K5ORlX+5AB0soWY9E9C6Mnw31Jc50LAH5wlYF4kf8d8goYn9N0QSmJQVqZDNJcmGGGLKbzD5QojU3TPMRKMBBY8LRBGGlN2FZ5k93U5UML8r8SRKxgPCx+MW0JKJcp8h6cx9sg0tjuqDO+qYIMCwPtf0gNyysRC4CbknQpuIqtHA==
Received: from BY3PR04CA0026.namprd04.prod.outlook.com (2603:10b6:a03:217::31)
 by PH9PR12MB497784.namprd12.prod.outlook.com (2603:10b6:510:411::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.428.16; Mon, 21 Sep
 2026 12:15:18 +0000
Received: from SJ1PEPF000026CA.namprd04.prod.outlook.com
 (2603:10b6:a03:217:cafe::31) by BY3PR04CA0026.outlook.office365.com
 (2603:10b6:a03:217::31) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.428.16 via Frontend Transport; Mon,
 21 Sep 2026 12:15:18 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 SJ1PEPF000026CA.mail.protection.outlook.com (10.167.244.107) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.451.8 via Frontend Transport; Mon, 21 Sep 2026 12:15:18 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.49; Mon, 21 Sep
 2026 05:14:58 -0700
Received: from [127.0.1.1] (10.126.231.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.49; Mon, 21 Sep
 2026 05:14:55 -0700
From: Jon Hunter <jonathanh@nvidia.com>
Date: Mon, 21 Sep 2026 13:14:46 +0100
Subject: [PATCH 2/3] phy: tegra: xusb: Use dev_err_probe()
MIME-Version: 1.0
Message-ID: <20260921-tegra-phy-v1-2-83466bf9a7cd@nvidia.com>
References: <20260921-tegra-phy-v1-0-83466bf9a7cd@nvidia.com>
In-Reply-To: <20260921-tegra-phy-v1-0-83466bf9a7cd@nvidia.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@kernel.org>, JC Kuo <jckuo@nvidia.com>
CC: Thierry Reding <thierry.reding@gmail.com>, Wayne Chang
	<waynec@nvidia.com>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-tegra@vger.kernel.org>, Jon Hunter
	<jonathanh@nvidia.com>
X-Mailer: b4 0.16.1-dev
X-Originating-IP: [10.126.231.37]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF000026CA:EE_|PH9PR12MB497784:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e1dd527-083f-4adb-7708-08df17da0056
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|23010399003|7416014|1800799024|376014|82310400026|36860700016|11063799006|56012099006|10067099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: DPVD06p+pKb7ELqmm5EwyfWBjej0Z5K6hj7VCNr7NiQd9NkZvmS8WAjOyjdzYCWXni59UQGj6jNehYkaKNZ2pQO5Mn9gU2tIVu5xN6z8TltZzIRFuUUxK25Jvp0nEAgVmezGrXXzspR2w9AaXMPqG6t9XzY1FbUVdayc1AHuvHcPs8E5E2xSKmxjESpJhbRAD6OB8TBLjFNpAdYRLzC4wFFF0/gImSrlx/fyJEi6yY6ddb16O2fEvUN+kTtgJMouCHu4N3jiutcEKcTpRhG7rEyBNkKZ4AXdW8H/QYBCioYBDdKO5OKM6f0GXeRocRkKk/hTZjGNMDIIcaa6sWpS7axMm3+4oqePWzrEsOWSu9gna52jFWDkXVZMGY6ru0P9tn/p2u/ZJjOtK1uBD0DtBpylGUWPUPx0JD4IEM9hx/Ce6HFeU/rpSQ32lRzYiPOlWSqy5FOB5+SVYej9zCZdrSiZ0a7KF/x5etRWyEPn6b6ZFCGqYmIIBMtzweHgkEitCQIOjzoOMoEyEE0gnheLPI+SMnlx5RYxpyG7+FgD9AL9Kfz+SgM3oXNo6cRxDmdwlrIxOek+foLcFd4zSymj7vJzsULkOwTEDIXMVmh9sYEVWCgMwAzNppWtSjTdmVpnOWuNirA76DBT77ejaDqmSe2y0X6g7PzdNhQ4UPXtpgMFC3cird3dmavM5naXrCHJcCx9yvpX+WuFbv8TD87WBQ==
X-Forefront-Antispam-Report: CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230040)(23010399003)(7416014)(1800799024)(376014)(82310400026)(36860700016)(11063799006)(56012099006)(10067099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: QfZx80nZyUt51eGmHXPL6VkM+Ji7ZHDApCciY0k5qCpwr9394W00KLKNFs4fk34v60cnUnnYAOkhGz7Z0YdQGlm+V5npSU+fDH35IgLqtJnIkorYnQ+s2RWFeZ2iiCpyrzFPgTNhAIrl/ZC5l2ro1X9MSHEfV9XIy8qTSYlzJtKFe0uRQgL/6X9p0n1ZYfR8uPHhEZXDL7rdDsPKMbzhrbAh8dayxl5MWr0b6NEjXz9MLPX0XMPe8ZDlS1JixGj6dVfB/0nuG31zE4lVFQjbf28oWNqAQ9ZdQSP8/fGGazYwi4FyZ33+m3aPLD0wu1sPcVvCedX2WIO+xaUvtiTr7dKysqHKDi11KquYumrSXUYiq9Tpeh3+CsZgzcgBMCe7JWEuFO9bJ0x1/I/ZkPsLAFpYky8KplTx0g7SeuzoSg9di8sJIcBX+dR7vTZs89A8
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2026 12:15:18.4591
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e1dd527-083f-4adb-7708-08df17da0056
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: SJ1PEPF000026CA.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH9PR12MB497784
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_131528_617919_DC024055 
X-CRM114-Status: GOOD (  10.14  )
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

Use the function dev_err_probe() instead of open coding the same logic.

Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
---
 drivers/phy/tegra/xusb.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index d0d0b252a205..f16c81520a60 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -1257,13 +1257,8 @@ static int tegra_xusb_padctl_probe(struct platform_device *pdev)
 
 	err = tegra_xusb_setup_ports(padctl);
 	if (err) {
-		const char *level = KERN_ERR;
-
-		if (err == -EPROBE_DEFER)
-			level = KERN_DEBUG;
-
-		dev_printk(level, &pdev->dev,
-			   dev_fmt("failed to setup XUSB ports: %d\n"), err);
+		dev_err_probe(&pdev->dev, err, "failed to setup XUSB ports\n",
+			      err);
 		goto remove_pads;
 	}
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
