Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57F9DC433EF
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 16:22:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+kTJah0kzf1uWh5RxtFM+Cib+xhpgQhB8YFC58QrE8s=; b=MW2wqAiVxILLM3
	htMoNQkJiCGuRi3JUUheibREZK/G9wHGrIcT7Xfn8uYaf/e6Ttv6bl9Np6MmxMcYhNWFV4lCZoyjQ
	8Kz5skgX4cYvnPT8FZRTbeD6tS2Ikd3/7MFjgPt4ZMo6CMkFTiGSTUuuvLcu4liss8ZcJ+L71wyQO
	zPZ+SvTLv4vIKRhhiUbEJ1gstxNsixUyKWrfA5vvmfHL8/B2xuu9c8FXJDFerVZ3lrxg1VmPdxCAu
	2QKycc5uzlbf7fBh4mwpYCyOmrd75Yowj6G1AHEGsL/i8Q9iXungEOyyfn3raQB37ufogH08RGvux
	U4X02D4R3xlKPeI0+EfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGNpR-006p3q-Ny; Sat, 05 Feb 2022 16:22:25 +0000
Received: from mail-mw2nam12on2068.outbound.protection.outlook.com
 ([40.107.244.68] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGNpP-006p1b-4t
 for linux-phy@lists.infradead.org; Sat, 05 Feb 2022 16:22:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N50QU9zDVgeuH2wru2LFpNYin/teFbvnSEKNbCLARrUn57lUyGgvm2WCcuHlCfPzi8p98JhXd1huTyZ1POH6qA+OBhy8Nh0I60oOpEAcNp7Q+hC4ed7WlzgA+tTCGaNiBURnC+HcuKFPlOZpC9YHvmCDENkM0TdCXpEGBhrOPZuU8DtHtwifqkdxE9oSJn6d2cZhfNNgqNNEwmULElzTTkmZeblL696UsDXXDcIzK1VwOuVEjZNpNoRJne1tkyPtcx3gzjiXwbYTkic86ke9NN4lfX2d3UtVF05tedW4GA8YxeLVUgtFBsEvixBWaIW0TSHdO8WJYOd1FyU/fSWJQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cVhiA2JTZeXJEUSCVp4sJ7QXEUYNl8VIpLEi6lzLnAQ=;
 b=m5qF3IIep74/hFjC7TYFSLU1nWZpfPrDhJC85r2T9PIXxEsGq6ypio6RCPTbgaGF1XFA72YvBiXeFgE2Na2TCDCve/dGu6I4igp9G9jg5iViEfv7elJPcFElniaAxaA7g6+MoOt3iiBcT9PfA2og0FHtNBPB+U3pZzJc7zIanbffaluFtfVvw1u34dS7GTQKscLbS4b8NzvtV9KNSPFZchllm4YS8zYrMq011LPJ3lBjBk8Tj8lgfHBOCSdvvUgW7leyYPObw1cFDS0XwoDGc2mBDiNym5IpV3xKtGxbPaZzbRNcniAm9gNucjyKIhdMj+b2JCRO6YNpXKVobqhYNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 12.22.5.234) smtp.rcpttodomain=ti.com smtp.mailfrom=nvidia.com; dmarc=pass
 (p=reject sp=reject pct=100) action=none header.from=nvidia.com; dkim=none
 (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cVhiA2JTZeXJEUSCVp4sJ7QXEUYNl8VIpLEi6lzLnAQ=;
 b=tFzHqaQ8bmM+04/UDegj7q/iZID8viYUpCldGs2Z+neVfhpZ7ORK2OmCQaPMIw1QnNIwvYSbfdmVEDD/rvQCi1TTM2z0iz0af/soMUEauSwtz5xL0Stss6FtnT482NfON5jWZm40q4CCj1ACMJMnxXldZbsjLm3We7y5eYlP9TSY8N5cO8HFMaE1JGsBA3s8UcufBXSe+ijv/UEuywdAmq03fBzAVr8vP2wA4C6zHQxNwvpUZxvAHQhfLe/43CHZAv0IRmaSX6LflY9wubr2w7lHR19ObI4Q8gCAJ1jUw/g+fZ++MYxsXcxrTQ6b5ScYVGY8u+E0qh6IXlZ3Eisrqw==
Received: from BN6PR16CA0048.namprd16.prod.outlook.com (2603:10b6:405:14::34)
 by BY5PR12MB3922.namprd12.prod.outlook.com (2603:10b6:a03:195::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.11; Sat, 5 Feb
 2022 16:22:11 +0000
Received: from BN8NAM11FT021.eop-nam11.prod.protection.outlook.com
 (2603:10b6:405:14:cafe::b8) by BN6PR16CA0048.outlook.office365.com
 (2603:10b6:405:14::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.18 via Frontend
 Transport; Sat, 5 Feb 2022 16:22:10 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 12.22.5.234)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 12.22.5.234 as permitted sender) receiver=protection.outlook.com;
 client-ip=12.22.5.234; helo=mail.nvidia.com;
Received: from mail.nvidia.com (12.22.5.234) by
 BN8NAM11FT021.mail.protection.outlook.com (10.13.177.114) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4951.12 via Frontend Transport; Sat, 5 Feb 2022 16:22:10 +0000
Received: from rnnvmail205.nvidia.com (10.129.68.10) by DRHQMAIL101.nvidia.com
 (10.27.9.10) with Microsoft SMTP Server (TLS) id 15.0.1497.18;
 Sat, 5 Feb 2022 16:22:08 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by rnnvmail205.nvidia.com
 (10.129.68.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.9; Sat, 5 Feb 2022
 08:22:07 -0800
Received: from vidyas-desktop.nvidia.com (10.127.8.9) by mail.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server id 15.2.986.9 via Frontend
 Transport; Sat, 5 Feb 2022 08:22:02 -0800
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
Subject: [PATCH V1 02/10] dt-bindings: power: Add Tegra234 PCIe power domains
Date: Sat, 5 Feb 2022 21:51:36 +0530
Message-ID: <20220205162144.30240-3-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220205162144.30240-1-vidyas@nvidia.com>
References: <20220205162144.30240-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f9f1ecdd-13da-49bb-e278-08d9e8c3a92c
X-MS-TrafficTypeDiagnostic: BY5PR12MB3922:EE_
X-Microsoft-Antispam-PRVS: <BY5PR12MB39229AFDF270998D449FB3F0B82A9@BY5PR12MB3922.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2733;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PfXaPpQ25gmCPWpYPpj9MLQATEMs2lGB16w6OZHjXUYJ7AD9oep2oqhySMpjtlSDjSypBbHBgztWTl4Z1fhih0S72C8dvlx9EmmvHRLkVfW4Zs/lURo6cqSR1ZyfalltxjmQ9UevrYpQW0A3TboEbicvVoWNGCw3pOa4rSQDCuflTVqG7DXfa9Q95BE33K0i1+STvdJF1A2eLp5MnSihXaDvhP5ThX7peBV31hvtI9wHtct4Fe6YhHvIMfLM7+XnOyyjIx68OI04iEIotb2Fy0BMbtKUMq89KmHGDaMtTH/qYVN1bBsxscBn7cbOGzlwIQSRjDnokQIy49bVNFo6aSj4Z002QApah0K++mC8MOvNl5/ZqWJNaQLh07ZpFBHOZAPmiRUQLhSSdngbpT4479zmxRhJaYNh3ZfqPGfJ9z9OTTxRTvLP8GWmFNd1lS4WcKvpe+BrRNHQ3hdYYiVR8KIE+nOErJLksMq6zuhESyZykvKEVMEnT2EOST2sfMKiE98GMsC8jHyeew8DPO82kEWAlV3vxe18k9bXCRHI9uhF9bSGyepEhK222zKwHto18KipsGF1cuHrha3rTGY4tCwprCT6/brXK25Vcdk2PM1TFUDUsoC6CajqViltWEMEQnlkAqwXPTwmGUKRARGvc/Uqy+H0ye5XzyjLc7sKFwIS/UlhaL6uhvfalykGYsI5QB8MQlYYOzm+gtuAvPpt0w==
X-Forefront-Antispam-Report: CIP:12.22.5.234; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:mail.nvidia.com; PTR:InfoNoRecords; CAT:NONE;
 SFS:(13230001)(4636009)(46966006)(36840700001)(40470700004)(6636002)(316002)(110136005)(54906003)(4326008)(356005)(70586007)(70206006)(508600001)(8676002)(8936002)(81166007)(86362001)(47076005)(82310400004)(36756003)(7416002)(336012)(40460700003)(26005)(2906002)(186003)(426003)(1076003)(2616005)(36860700001)(6666004)(5660300002)(7696005)(36900700001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2022 16:22:10.2475 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f9f1ecdd-13da-49bb-e278-08d9e8c3a92c
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[12.22.5.234];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM11FT021.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB3922
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_082223_201411_21B908AB 
X-CRM114-Status: UNSURE (   7.49  )
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

Add power domain IDs for the four PCIe power partitions found on
Tegra234.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
 .../dt-bindings/power/tegra234-powergate.h    | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 include/dt-bindings/power/tegra234-powergate.h

diff --git a/include/dt-bindings/power/tegra234-powergate.h b/include/dt-bindings/power/tegra234-powergate.h
new file mode 100644
index 000000000000..e989f84b24f6
--- /dev/null
+++ b/include/dt-bindings/power/tegra234-powergate.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2022, NVIDIA CORPORATION.  All rights reserved. */
+
+#ifndef __ABI_MACH_T234_POWERGATE_T234_H_
+#define __ABI_MACH_T234_POWERGATE_T234_H_
+
+#define TEGRA234_POWER_DOMAIN_PCIEX8A	5U
+#define TEGRA234_POWER_DOMAIN_PCIEX4A	6U
+#define TEGRA234_POWER_DOMAIN_PCIEX4BA	7U
+#define TEGRA234_POWER_DOMAIN_PCIEX4BB	8U
+#define TEGRA234_POWER_DOMAIN_PCIEX1A	9U
+#define TEGRA234_POWER_DOMAIN_PCIEX4CA	13U
+#define TEGRA234_POWER_DOMAIN_PCIEX4CB	14U
+#define TEGRA234_POWER_DOMAIN_PCIEX4CC	15U
+#define TEGRA234_POWER_DOMAIN_PCIEX8B	16U
+#define TEGRA234_POWER_DOMAIN_MGBEA	17U
+#define TEGRA234_POWER_DOMAIN_MGBEB	18U
+#define TEGRA234_POWER_DOMAIN_MGBEC	19U
+
+#endif
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
