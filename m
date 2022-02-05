Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49BEAC433F5
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 16:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A8dlrREHBWvHLjHsMPxW5ByDcYU6KiISUkA7QhMrwI0=; b=nVofnCPqfAJQvh
	/hU1m6vUD1jTMa6rQsU+5LDcORyBFYIakfWX2ZUPMaTFuF/QhvMPUELvPv03EZvxCM6wDY7+kiWTL
	dRfydMHGzue8FvB06qRlnyeLmo2Idax3paaefG5VnIG6hvMtQhbi85NIx5VM1GvvDOKhFzhnVZRM0
	JBzncfBfJ3Sc344clEYdThhwuYnAF38r9x49cASvJgURRJKvs14Migi5JGVCSBaY4r7sb7nuHLzAY
	K6Rvvzx/Ty4psJcUWYtupg6GzP4uqZmxRcCYcFHFKTT4JOuPCFclRIltFH+UGdJjWKYkcsiNfWi3Z
	HrAxmug36ubvTD7bMlFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGNpA-006oze-Ir; Sat, 05 Feb 2022 16:22:08 +0000
Received: from mail-mw2nam12on2087.outbound.protection.outlook.com
 ([40.107.244.87] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGNp7-006oyi-7R
 for linux-phy@lists.infradead.org; Sat, 05 Feb 2022 16:22:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UmHiLCvpBbDluUEghZVXd+1XJxBNbfg1+QZX18r1t/jAzz3IvaQ7AbIgQGhhhLh+9MjvU04eVNiFbusyqFYQ/hkohS9FmQtHMeaIxrRZTG/y/PtPzZxQB/Ta8ypQi3vSnzTGNaP+sJgQf2NmQ+znxTYd2ZeYEyxiHNhLhHOOBMP++sL7GxcF7iVtpViH949X5cVBszbJrYoBKodBuartWQ2PW2gQHcZKalnnFSJKCzT1kSRf05KLSvDsXm3RwhYunhyF6Jhy6zMvBLgukqDOp0U6s4SofGZqSVeHRGK8a9uNN55YGqaWPA8evJ+H8ERG33G1EigAtchVs/l/IvlALg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GriVGCblO1jT958pSklAwemp4CnxICEYCX10nbPzFC8=;
 b=IiN2zjCmV0kAT+CUDF+gjojidVpDXkycXblZH6REWqd8NlSzjDzUeYxXxhy1cDUbnOymb/utnjaQG/PMGXQ7q9qeAfkIKqwxGONQ2ikOBDMOhIdkN6W0LTsCeZEwehfMOA7UohVbkux0dfJ1nnc/oDPKNN5TCVazi/jzBtAXFw2PJxGSXY3MsnpHJMr2SWiBoKzGo97YywlRmQ9vtcf/NZO6djJBIBe2HzfHaHvvaGXlEyBKAeiBuXDeCCA1uZDqhbiF6LX4KszHYRUQzWfizNjubf9dbziEmKYNjL56NncZqc74p4N867jg9VOrWee0CnRQL5PoUvWsIMRRwUszrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 12.22.5.238) smtp.rcpttodomain=ti.com smtp.mailfrom=nvidia.com; dmarc=pass
 (p=reject sp=reject pct=100) action=none header.from=nvidia.com; dkim=none
 (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GriVGCblO1jT958pSklAwemp4CnxICEYCX10nbPzFC8=;
 b=U1tO9staSOF0tAzI0fIUwMv+NySbT3S5OBtuyZ+JmiQuokWXNWLH+56J3ohGRGnWfQT0ogihHukUrr195nqQzm6bGhVyhjqgNQugZWwU6xPTYfhsHqb8WETf/3DDysfkyrrUadP7GijvzoHAJpV6jGaRdGmeIwYXKaUfcY1L6bbkXg/u9kduQJQ0rTTzmUBR8MAAkIf1kSagcKCrCIrhVEiIQPMLeb82m5rne3aVsFLtHaPvz/9JF2LsXCazFehP4tHxA3rwkpWtsp5YjFIApQRYMaPfl/5vaJL0+PCS8alaq/P8SHnogISFTXm6dBdNFO4XcnlKjoN9Q2kctaiNqA==
Received: from DM6PR03CA0003.namprd03.prod.outlook.com (2603:10b6:5:40::16) by
 MN2PR12MB3711.namprd12.prod.outlook.com (2603:10b6:208:161::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.14; Sat, 5 Feb
 2022 16:22:01 +0000
Received: from DM6NAM11FT061.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:40:cafe::6f) by DM6PR03CA0003.outlook.office365.com
 (2603:10b6:5:40::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12 via Frontend
 Transport; Sat, 5 Feb 2022 16:22:01 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 12.22.5.238)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 12.22.5.238 as permitted sender) receiver=protection.outlook.com;
 client-ip=12.22.5.238; helo=mail.nvidia.com;
Received: from mail.nvidia.com (12.22.5.238) by
 DM6NAM11FT061.mail.protection.outlook.com (10.13.173.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4951.12 via Frontend Transport; Sat, 5 Feb 2022 16:22:01 +0000
Received: from rnnvmail205.nvidia.com (10.129.68.10) by DRHQMAIL105.nvidia.com
 (10.27.9.14) with Microsoft SMTP Server (TLS) id 15.0.1497.18;
 Sat, 5 Feb 2022 16:22:00 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by rnnvmail205.nvidia.com
 (10.129.68.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.9; Sat, 5 Feb 2022
 08:22:00 -0800
Received: from vidyas-desktop.nvidia.com (10.127.8.9) by mail.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server id 15.2.986.9 via Frontend
 Transport; Sat, 5 Feb 2022 08:21:55 -0800
From: Vidya Sagar <vidyas@nvidia.com>
To: <bhelgaas@google.com>, <lorenzo.pieralisi@arm.com>, <robh+dt@kernel.org>, 
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>
CC: <kishon@ti.com>, <vkoul@kernel.org>, <kw@linux.com>,
 <krzysztof.kozlowski@canonical.com>, <p.zabel@pengutronix.de>,
 <mperttunen@nvidia.com>, <linux-pci@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-tegra@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <kthota@nvidia.com>, <mmaddireddy@nvidia.com>, <vidyas@nvidia.com>,
 <sagar.tv@gmail.com>
Subject: [PATCH V1 01/10] dt-bindings: Add Tegra234 PCIe clocks and resets
Date: Sat, 5 Feb 2022 21:51:35 +0530
Message-ID: <20220205162144.30240-2-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220205162144.30240-1-vidyas@nvidia.com>
References: <20220205162144.30240-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 64883fb8-1bd4-4e59-2bf8-08d9e8c3a3ac
X-MS-TrafficTypeDiagnostic: MN2PR12MB3711:EE_
X-Microsoft-Antispam-PRVS: <MN2PR12MB371196D5850020850726D867B82A9@MN2PR12MB3711.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WPokv2sqW3iitun/LGDY7uHTb55UwkYJbCYHHLHuMiWNX3i+nQvXxku0D0bvL4s3Dg5e/EPt+0rvHnV68ktN6tPhuCw51LUZ1JHx1HjICkz6yEqovs6kVi49lccV3+U2y02lYQAxBBsqvVMXdSbIyvIVioqg8Z3WZEg2V6HnYyJNg79VVuVSHnPkhyNnPE5wz8XTwHSyHaBEuB6JT7hkvuAntGyolRZ3O7d0I5xXAEs0+fAN6fun1iCRBvBjnaHu2xB+oOuhn6NVAwR4pW8jIsoMlwFTgwIq/szS6MOMsCj3VB5S8F2/+CTQ+BzQrzYja3xi4usbWbSP7N81/+i5lVI+y0jy9gp6eOcPkYmoL/Gn82jUT9/Oa+AL9TbUTf2MaJKR0wEYr0wHJCa6k0IwiDpriVVDmYV1PlLvyFWs3n6mfPtyNsWFxwOMRxMZ009Dvzf3iphNj8ZZW2tVTNjFhvLWHMH1NXzNE8cp1D0BSJBu2a6dK24xoC206ZsawhoK2oa4Zo5No3QYR5ZHtknLd/XYMlrDWHpS0jD0MbbYQAM7xJuBWo8cdCA8koaGMfh1wdg9cztgz+UzV1GLdzjOcun/MTDsXUPlBaPunEMjpQC3TedYPlU6qhoHHiYz/1+0moykYJMM4XDAZkp7e7cevjOo5TbaduroyQVNf6IWMg6dSUL/wl3F+rbILHrWad+MNlMaCQmwSqDaLSFl9GsJFw==
X-Forefront-Antispam-Report: CIP:12.22.5.238; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:mail.nvidia.com; PTR:InfoNoRecords; CAT:NONE;
 SFS:(13230001)(4636009)(36840700001)(46966006)(40470700004)(54906003)(36756003)(508600001)(110136005)(7696005)(82310400004)(6666004)(2906002)(83380400001)(8676002)(4326008)(8936002)(356005)(86362001)(47076005)(7416002)(81166007)(186003)(2616005)(426003)(336012)(26005)(36860700001)(1076003)(6636002)(316002)(5660300002)(70206006)(70586007)(40460700003)(36900700001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2022 16:22:01.0622 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 64883fb8-1bd4-4e59-2bf8-08d9e8c3a3ac
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[12.22.5.238];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT061.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3711
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_082205_293895_93D0EC45 
X-CRM114-Status: UNSURE (   8.15  )
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

Add the clocks and resets used by the PCIe hardware found on
Tegra234 SoCs.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
 include/dt-bindings/clock/tegra234-clock.h | 25 +++++++++++++++++++-
 include/dt-bindings/reset/tegra234-reset.h | 27 +++++++++++++++++++++-
 2 files changed, 50 insertions(+), 2 deletions(-)

diff --git a/include/dt-bindings/clock/tegra234-clock.h b/include/dt-bindings/clock/tegra234-clock.h
index 8d7e66e1b6ef..106a310a6075 100644
--- a/include/dt-bindings/clock/tegra234-clock.h
+++ b/include/dt-bindings/clock/tegra234-clock.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (c) 2018-2019, NVIDIA CORPORATION. All rights reserved. */
+/* Copyright (c) 2018-2022, NVIDIA CORPORATION. All rights reserved. */
 
 #ifndef DT_BINDINGS_CLOCK_TEGRA234_CLOCK_H
 #define DT_BINDINGS_CLOCK_TEGRA234_CLOCK_H
@@ -24,8 +24,31 @@
 #define TEGRA234_CLK_SDMMC4			123U
 /** @brief output of mux controlled by CLK_RST_CONTROLLER_CLK_SOURCE_UARTA */
 #define TEGRA234_CLK_UARTA			155U
+/** @brief output of gate CLK_ENB_PEX1_CORE_6 */
+#define TEGRA234_CLK_PEX1_C6_CORE		161U
+/** @brief output of gate CLK_ENB_PEX2_CORE_7 */
+#define TEGRA234_CLK_PEX2_C7_CORE		171U
+/** @brief output of gate CLK_ENB_PEX2_CORE_8 */
+#define TEGRA234_CLK_PEX2_C8_CORE		172U
+/** @brief output of gate CLK_ENB_PEX2_CORE_9 */
+#define TEGRA234_CLK_PEX2_C9_CORE		173U
+/** @brief output of gate CLK_ENB_PEX2_CORE_10 */
+#define TEGRA234_CLK_PEX2_C10_CORE		187U
 /** @brief CLK_RST_CONTROLLER_CLK_SOURCE_SDMMC_LEGACY_TM switch divider output */
 #define TEGRA234_CLK_SDMMC_LEGACY_TM		219U
+/** @brief output of gate CLK_ENB_PEX0_CORE_0 */
+#define TEGRA234_CLK_PEX0_C0_CORE		220U
+/** @brief output of gate CLK_ENB_PEX0_CORE_1 */
+#define TEGRA234_CLK_PEX0_C1_CORE		221U
+/** @brief output of gate CLK_ENB_PEX0_CORE_2 */
+#define TEGRA234_CLK_PEX0_C2_CORE		222U
+/** @brief output of gate CLK_ENB_PEX0_CORE_3 */
+#define TEGRA234_CLK_PEX0_C3_CORE		223U
+/** @brief output of gate CLK_ENB_PEX0_CORE_4 */
+#define TEGRA234_CLK_PEX0_C4_CORE		224U
+/** @brief output of gate CLK_ENB_PEX1_CORE_5 */
+#define TEGRA234_CLK_PEX1_C5_CORE		225U
+
 /** @brief PLL controlled by CLK_RST_CONTROLLER_PLLC4_BASE */
 #define TEGRA234_CLK_PLLC4			237U
 /** @brief 32K input clock provided by PMIC */
diff --git a/include/dt-bindings/reset/tegra234-reset.h b/include/dt-bindings/reset/tegra234-reset.h
index 50e13bced642..2a0c5faf0a7e 100644
--- a/include/dt-bindings/reset/tegra234-reset.h
+++ b/include/dt-bindings/reset/tegra234-reset.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright (c) 2018-2020, NVIDIA CORPORATION. All rights reserved. */
+/* Copyright (c) 2018-2022, NVIDIA CORPORATION. All rights reserved. */
 
 #ifndef DT_BINDINGS_RESET_TEGRA234_RESET_H
 #define DT_BINDINGS_RESET_TEGRA234_RESET_H
@@ -10,8 +10,33 @@
  * @brief Identifiers for Resets controllable by firmware
  * @{
  */
+#define TEGRA234_RESET_PEX1_CORE_6		11U
+#define TEGRA234_RESET_PEX1_CORE_6_APB		12U
+#define TEGRA234_RESET_PEX1_COMMON_APB		13U
+#define TEGRA234_RESET_PEX2_CORE_7		14U
+#define TEGRA234_RESET_PEX2_CORE_7_APB		15U
+#define TEGRA234_RESET_PEX2_CORE_8		25U
+#define TEGRA234_RESET_PEX2_CORE_8_APB		26U
+#define TEGRA234_RESET_PEX2_CORE_9		27U
+#define TEGRA234_RESET_PEX2_CORE_9_APB		28U
+#define TEGRA234_RESET_PEX2_CORE_10		56U
+#define TEGRA234_RESET_PEX2_CORE_10_APB		57U
+#define TEGRA234_RESET_PEX2_COMMON_APB		58U
 #define TEGRA234_RESET_SDMMC4			85U
 #define TEGRA234_RESET_UARTA			100U
+#define TEGRA234_RESET_PEX0_CORE_0		116U
+#define TEGRA234_RESET_PEX0_CORE_1		117U
+#define TEGRA234_RESET_PEX0_CORE_2		118U
+#define TEGRA234_RESET_PEX0_CORE_3		119U
+#define TEGRA234_RESET_PEX0_CORE_4		120U
+#define TEGRA234_RESET_PEX0_CORE_0_APB		121U
+#define TEGRA234_RESET_PEX0_CORE_1_APB		122U
+#define TEGRA234_RESET_PEX0_CORE_2_APB		123U
+#define TEGRA234_RESET_PEX0_CORE_3_APB		124U
+#define TEGRA234_RESET_PEX0_CORE_4_APB		125U
+#define TEGRA234_RESET_PEX0_COMMON_APB		126U
+#define TEGRA234_RESET_PEX1_CORE_5		129U
+#define TEGRA234_RESET_PEX1_CORE_5_APB		130U
 
 /** @} */
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
