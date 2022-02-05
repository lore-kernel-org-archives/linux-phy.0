Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38A9CC433F5
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 16:22:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S02EXVeK+bBWLc+Z81SIG4yDjIbC9gl35Uzr/0pm1dI=; b=0aScx/G0eGy2Gf
	6uQfofROwZdiO/R5CyTJMWII3lCB4Ou73UW4eXurUJi6mcsiOutmvDEMDyNr38BD62A/MPoeP+XDg
	lnIBRaRDv11csXHXehOEU5ok3zKelAWSEOXG8JapZEoaohQTkMBPUQ+UuTFT+0N1m7ImLQvNVdEks
	VZFT0Tv/b5+uDTDfQEFuaDGFOmrdYhoBQKk2Koh2dlHXrtxX6Jw+G15flV7D1woWxx2dH9KWjHPw4
	OO/0QFmVLsdn+e8L2IPy63aBWFVt5zQcRoCYaOFZZuDOn8ZK3JO/CJ4BANkOap/gUKy1VJBmN5Z7j
	NQ9VOXYNpIw6GxPe4iwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGNpQ-006p3I-Le; Sat, 05 Feb 2022 16:22:24 +0000
Received: from mail-mw2nam12on2046.outbound.protection.outlook.com
 ([40.107.244.46] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGNpO-006p20-QS
 for linux-phy@lists.infradead.org; Sat, 05 Feb 2022 16:22:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QEneVrmCOwii2+2/24RP2QZO7Xd9Ro8P9LubqW6z/XcRN40LL7AM8/RFZo3iZF2m+imxUDYOp4KOwUPiAhDZNYm8ZIJpMEp6oyt7UcvbeKjF/wJP6dEcMhu7UT7r2MKmFpvEeEjZzx31Ax3eYft3Ax2pUlwVvCVqCBi7/P4okc/V0zl9uIxQ4wsTJpaBtMEX0z3KOSp0blOVBCNmnv5BHRqMI3ciTniB5/6qLbM76H3MjP2rsUrT0teeKXBUbVqh13t/xmhE1xzIDqdqlWZYKZiVAloj2GviacOTX68hG0LXKPlJqi6ZupS8Ov8WwEESEIV9VQS7DcFBOBoVbfb+FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m7lb7COvhzZqx2/lWUjfSqtWqh5mHgkmC8zDWX/fvSs=;
 b=agR0PrOkpRryewb9PfP333yMK1AqB+sv5YSjKzmSO2SHWnMxiTfLSzpctW6JkbplCMOeVPIpeooMhDgvDrCX/6ceeHl78nzTzvzd8oJOAC9/P1TrNnrijH+O4P9tq6lZq0cCRjKq1amYrVl2rX4V6ABySKpyotuFhp0qza2a+pRB1QrSCXqupRAk42dhdW+mSpMbT/kKhQItqogKduiHsyS67q3rZddHY9gyLixjkm6ozRS/JO2GNDyLxYWT0q6cT+VWifcUc4JzWIaf+Am3ENSQsSIOTA9ItYNIZQwNhK5W5I77i2FsY6pfdBucoiUZTqSjE1fXVDNSX/+RBefmBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 12.22.5.235) smtp.rcpttodomain=ti.com smtp.mailfrom=nvidia.com; dmarc=pass
 (p=reject sp=reject pct=100) action=none header.from=nvidia.com; dkim=none
 (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m7lb7COvhzZqx2/lWUjfSqtWqh5mHgkmC8zDWX/fvSs=;
 b=RsgVXOvcSDvSdlnYW/wUmu+jzqYxbSxRVAlssBAxZW8GvMvDs0xmK3k9OS+JnQT7Q1CTYIXs2Xnnv10GHp74uFijY8GV+O9kMe9caDqhBV/85EFFjq1pl4xryj4PCWBnhiStcHNLfvYpCJwfSpNJCNLXmlkpHo8QpEimtgcq3zsSgWC91XK+u7B5yc+MDonVMIaWo6/106aEFLYvEYC0pGy13bZnJzs14ioGcd/l7n70nLRkr+hUemQLSP551u0OpZmSLeY2ziz9EA0aH/AN6W84Ip+yHt+Y7PVgSvscFtc52OQWi3cmMDkSKS2pdcxYBTTkqv4flcjBbDCz8Tvr3w==
Received: from CO2PR07CA0046.namprd07.prod.outlook.com (2603:10b6:100::14) by
 DM5PR1201MB0169.namprd12.prod.outlook.com (2603:10b6:4:55::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4951.12; Sat, 5 Feb 2022 16:22:18 +0000
Received: from CO1NAM11FT030.eop-nam11.prod.protection.outlook.com
 (2603:10b6:100:0:cafe::d2) by CO2PR07CA0046.outlook.office365.com
 (2603:10b6:100::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.11 via Frontend
 Transport; Sat, 5 Feb 2022 16:22:18 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 12.22.5.235)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 12.22.5.235 as permitted sender) receiver=protection.outlook.com;
 client-ip=12.22.5.235; helo=mail.nvidia.com;
Received: from mail.nvidia.com (12.22.5.235) by
 CO1NAM11FT030.mail.protection.outlook.com (10.13.174.125) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4951.12 via Frontend Transport; Sat, 5 Feb 2022 16:22:18 +0000
Received: from rnnvmail202.nvidia.com (10.129.68.7) by DRHQMAIL107.nvidia.com
 (10.27.9.16) with Microsoft SMTP Server (TLS) id 15.0.1497.18;
 Sat, 5 Feb 2022 16:22:17 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by rnnvmail202.nvidia.com
 (10.129.68.7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.9; Sat, 5 Feb 2022
 08:22:17 -0800
Received: from vidyas-desktop.nvidia.com (10.127.8.9) by mail.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server id 15.2.986.9 via Frontend
 Transport; Sat, 5 Feb 2022 08:22:12 -0800
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
Subject: [PATCH V1 03/10] dt-bindings: memory: Add Tegra234 PCIe memory
Date: Sat, 5 Feb 2022 21:51:37 +0530
Message-ID: <20220205162144.30240-4-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220205162144.30240-1-vidyas@nvidia.com>
References: <20220205162144.30240-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ddbe44b8-e78e-43a1-3017-08d9e8c3ade9
X-MS-TrafficTypeDiagnostic: DM5PR1201MB0169:EE_
X-Microsoft-Antispam-PRVS: <DM5PR1201MB01695D95E1E4D88F05A52BD7B82A9@DM5PR1201MB0169.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qi4Hq/m04nKuY7bsaurgq2nyvEC17ds0n4dr3IfJoiTfnOo0lhfLElXJXYF5FywH2rFxdkPMUWtN5HpOdAfS8xNW9MHyCXQk4gDfTZt+CAE74wjMZmQ1018+o88nHmxx1v5G3Hy0h9YecCKyKIKNbnJo9wLaz1+3EimxJqtJ5vvLzOUFiFy24zvYmx17/8O3ZCGnr8W/KtaLT8wMsf/Qkx9NLVpfVyGwkIAjKRGmvBJLIRuZl10NbIRHW02yZbkpTjx31NXaqN+qQiNPlk0blnAQTFphmdvjZmgbqdj0q390We96QVkCpU6JdwZ578ROg7eQNn0vQ/lePfy03dp/KYj2J1P47yLr41BGdH/oONdjwbkgBRRsQzAY5qwpFiCguOIh/XUrzvSuGorm6lTLUKNp1q/E4aH0ooKgnk2WI79RNC7QCy3+bEVJ5dSunQWPsQLMTnNnlYK/WTeEW0cGOrRZCbg5m5+N7OfTWfqQn6+M9foh8AOQBltpfyPk6x/DGZFuYDTGYxwl0MCb+PvpX7hEY5qv+aX892CsWy+WV4zZyoyJ1bV6vxpaYVR7aan3B4T9J76549A6aQhN+HEq0mA7IkjxXFtqrIY4OfV01i15wONtpNyGWjgoEmUvR3MkPkS0k9FPqztwXzfOxH6/LKgFz73iH5K/KeWLoqUkIzi9UgO5h7/SfcP9RrpNorCFqZZXrd0uGH3/SaYJiDTTBA==
X-Forefront-Antispam-Report: CIP:12.22.5.235; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:mail.nvidia.com; PTR:InfoNoRecords; CAT:NONE;
 SFS:(13230001)(4636009)(36840700001)(46966006)(40470700004)(36860700001)(36756003)(54906003)(6636002)(316002)(110136005)(1076003)(186003)(26005)(336012)(426003)(47076005)(2616005)(7416002)(2906002)(86362001)(82310400004)(8676002)(8936002)(40460700003)(5660300002)(508600001)(81166007)(356005)(6666004)(4326008)(7696005)(70586007)(70206006)(36900700001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2022 16:22:18.2549 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ddbe44b8-e78e-43a1-3017-08d9e8c3ade9
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[12.22.5.235];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT030.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1201MB0169
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_082222_885889_F83E8FDE 
X-CRM114-Status: UNSURE (   5.34  )
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

Add the memory client and stream ID definitions for the PCIe hardware
found on Tegra234 SoCs.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
 include/dt-bindings/memory/tegra234-mc.h | 64 ++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/include/dt-bindings/memory/tegra234-mc.h b/include/dt-bindings/memory/tegra234-mc.h
index 2662f70c15c6..60017684858a 100644
--- a/include/dt-bindings/memory/tegra234-mc.h
+++ b/include/dt-bindings/memory/tegra234-mc.h
@@ -7,15 +7,53 @@
 #define TEGRA234_SID_INVALID		0x00
 #define TEGRA234_SID_PASSTHROUGH	0x7f
 
+/* NISO0 stream IDs */
+#define TEGRA234_SID_PCIE0	0x12U
+#define TEGRA234_SID_PCIE4	0x13U
+#define TEGRA234_SID_PCIE5	0x14U
+#define TEGRA234_SID_PCIE6	0x15U
+#define TEGRA234_SID_PCIE9	0x1FU
 
 /* NISO1 stream IDs */
 #define TEGRA234_SID_SDMMC4	0x02
+#define TEGRA234_SID_PCIE1	0x5U
+#define TEGRA234_SID_PCIE2	0x6U
+#define TEGRA234_SID_PCIE3	0x7U
+#define TEGRA234_SID_PCIE7	0x8U
+#define TEGRA234_SID_PCIE8	0x9U
+#define TEGRA234_SID_PCIE10	0xBU
 #define TEGRA234_SID_BPMP	0x10
 
 /*
  * memory client IDs
  */
 
+/* PCIE6 read clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE6AR 0x28
+/* PCIE6 write clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE6AW 0x29
+/* PCIE7 read clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE7AR 0x2a
+/* PCIE7 write clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE7AW 0x30
+/* PCIE8 read clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE8AR 0x32
+/* PCIE8 write clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE8AW 0x3b
+/* PCIE9 read clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE9AR 0x3c
+/* PCIE6r1 read clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE6AR1 0x3d
+/* PCIE9 write clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE9AW 0x3e
+/* PCIE10 read clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE10AR 0x3f
+/* PCIE10 write clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE10AW 0x40
+/* PCIE10r1 read clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE10AR1 0x48
+/* PCIE7r1 read clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE7AR1 0x49
 /* sdmmcd memory read client */
 #define TEGRA234_MEMORY_CLIENT_SDMMCRAB 0x63
 /* sdmmcd memory write client */
@@ -28,5 +66,31 @@
 #define TEGRA234_MEMORY_CLIENT_BPMPDMAR 0x95
 /* BPMPDMA write client */
 #define TEGRA234_MEMORY_CLIENT_BPMPDMAW 0x96
+/* PCIE0 read clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE0R 0xd8
+/* PCIE0 write clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE0W 0xd9
+/* PCIE1 read clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE1R 0xda
+/* PCIE1 write clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE1W 0xdb
+/* PCIE2 read clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE2AR 0xdc
+/* PCIE2 write clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE2AW 0xdd
+/* PCIE3 read clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE3R 0xde
+/* PCIE3 write clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE3W 0xdf
+/* PCIE4 read clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE4R 0xe0
+/* PCIE4 write clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE4W 0xe1
+/* PCIE5 read clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE5R 0xe2
+/* PCIE5 write clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE5W 0xe3
+/* PCIE5r1 read clients */
+#define TEGRA234_MEMORY_CLIENT_PCIE5R1 0xef
 
 #endif
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
