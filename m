Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43FD0C3A59D
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 07:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ht9kOtjPQ8sUDTwQ5DXzbvo8X6BThaSqD73GIYBju2A=; b=AM6dldPnFZpCWR
	KsKWOuPwY+QfQ7A2DmOKYk18IIJmtYj/AJb/tIj2qSnyxmb3/gKazx3IlKD47eJ4y7hhuQe6joVyV
	ZZrBljokiBiSeKSWczdWGzZtvH/3Yh7sFU+lqnyR6qxBhVoT5v38G3rvJXA2HBcS5CUEr7+oNc/1u
	JA6XhZZiRi63o/5HTylbwOO8upf+tRV/ocadnX1ZpuE7T7BAM2GIrUmBx8UVbrg8LuPee+ZggeKC8
	JHARNGTUI0wcJntxnPCudZE7ip1QseqYpox/KO5YZJDa3TXjnmd12RlIjESVplap1cdxqCnwMeVkq
	72yelYuuBl57VdzsgkFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oms6I-00HWUq-Oe; Mon, 24 Oct 2022 07:42:22 +0000
Received: from mail-bn8nam12on2086.outbound.protection.outlook.com ([40.107.237.86] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oms6G-00HWTA-OY
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 07:42:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VXt552mDWxAU7NCkMZyfwVTVFMC7WEIXYK1ImOkdw9u+OSsZdgb6RGek3x0iXn1j60HisMytygPcBQ7+wpL+QHoXwz2tbJbsU/FgNHpeV4xsiahxxHcKTmd5LCfRuxp499+fs+hIUcSJl6zA25WvPtNH0Yh3phb+otYwUzgebjr2Gpc4RAoW0ZiPwwICDysrncNULVp1e2+A3nTB5knfscIeSp0FqO8TOcr/44+Q2bg6CjJK27xif5lc5f2oiO1L0Rjb2DU/FZ96rRI6wDYXzSf1vxaNZ4T6MDUCt81AMNDP7Cu76+eIjeG+n2J9mIKqniSN8l5tVOanf+BonZgBQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TcBLF/mq2RZ/H9uP6zpacL5O9ahpQcoGYxQCfS4Y3W0=;
 b=DjtJ8w9+1Qn6VG/KaOsBYG47PTGxrs/HTJfLBKa+wgcGNH+AqU5/zA8p6nT5/QkVxYDeMLLmylfEzPgElTB75dTurDkNx2jfPAYFElAL5XaosrcR6dUaPInzfKY+A3M/mRVqcyT2oR4Vy7chcXGdSlhkF8b0Bgm5/xscbgVB6SwBPfi6+NYomE+i5wziAKf46YImYe5mFeQNTbHt7ZkyrQfbcgp4DGYi3A0P3jZJ+GkSNF0z8xAOQuG9vT8uR4wiQCbGzhoO/FYwfsh5jRi9PD8RTQnV8+uvJA1/FsIdVlO8AFuZ15NhZgsi5M3hN8GCih4ys2Fp7A1YN9iewNvKpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.233) smtp.rcpttodomain=linuxfoundation.org
 smtp.mailfrom=nvidia.com; dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TcBLF/mq2RZ/H9uP6zpacL5O9ahpQcoGYxQCfS4Y3W0=;
 b=Vuy472l7svX9No3w1Hoj/mPjmwvmFPk994IfQ7cEr5lYr7lAmkfdXBdf2uqom1kUH4s01f0KtF7UB5BOPcLP9vNJyhGj6gw6nAsYRbxSAFA3cPbJF5s2bc/qmMY3T3L1ZI8H2NAdPp3yGG5QMIkxcnDhE1gkZEWXmZdxKdECxHToxVNezUN5ozuWsEXAt1lzFzG5ETXL/O7Eo5V7P/gsh2mIhTVDBmuA8BSp1Iaee6m2J+JM5jG+CqH817pgLvIMmXRlLU5/q3BjmzXp6pxUcK4KZBAisB9WovGg9UGxPiXA8wMICj7IX7If8f4SkcHWz/jaXd3hiRRXRStYghi8ng==
Received: from DS7PR03CA0163.namprd03.prod.outlook.com (2603:10b6:5:3b2::18)
 by CH2PR12MB4199.namprd12.prod.outlook.com (2603:10b6:610:a7::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.28; Mon, 24 Oct
 2022 07:42:10 +0000
Received: from DM6NAM11FT087.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:3b2:cafe::50) by DS7PR03CA0163.outlook.office365.com
 (2603:10b6:5:3b2::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.26 via Frontend
 Transport; Mon, 24 Oct 2022 07:42:10 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.233)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.233 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.233; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.233) by
 DM6NAM11FT087.mail.protection.outlook.com (10.13.172.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5746.16 via Frontend Transport; Mon, 24 Oct 2022 07:42:10 +0000
Received: from drhqmail203.nvidia.com (10.126.190.182) by mail.nvidia.com
 (10.127.129.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Mon, 24 Oct
 2022 00:42:03 -0700
Received: from drhqmail203.nvidia.com (10.126.190.182) by
 drhqmail203.nvidia.com (10.126.190.182) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.29; Mon, 24 Oct 2022 00:42:02 -0700
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.126.190.182) with Microsoft SMTP Server id 15.2.986.29
 via Frontend Transport; Mon, 24 Oct 2022 00:41:59 -0700
From: Wayne Chang <waynec@nvidia.com>
To: <gregkh@linuxfoundation.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <treding@nvidia.com>,
	<jonathanh@nvidia.com>, <thierry.reding@gmail.com>,
	<heikki.krogerus@linux.intel.com>, <ajayg@nvidia.com>, <kishon@ti.com>,
	<vkoul@kernel.org>, <p.zabel@pengutronix.de>, <balbi@kernel.org>,
	<mathias.nyman@intel.com>, <jckuo@nvidia.com>
CC: <waynec@nvidia.com>, <linux-usb@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<singhanc@nvidia.com>, <linux-i2c@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>
Subject: [PATCH 07/11] i2c: nvidia-gpu: Replace ccgx to well-known regex
Date: Mon, 24 Oct 2022 15:41:24 +0800
Message-ID: <20221024074128.1113554-8-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221024074128.1113554-1-waynec@nvidia.com>
References: <20221024074128.1113554-1-waynec@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT087:EE_|CH2PR12MB4199:EE_
X-MS-Office365-Filtering-Correlation-Id: 821a76a5-297f-4167-afd3-08dab593422d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	awsvsxhX3GX0baoJMZfFpPwrQe0P3DTdUEESirzhPYV8PnxkUoSIVEWT6a+3eEYXQ7YU6KpWbOAcFI/Yog0mLJ2QmulK6GFjjXRdO6/YWkABf57DlnPC4rv7h0p0dxQF20y6tU4Clvyd3BPCQXRd5Tuyei+jY6iXyZuhoswwzpkvHaYQUdfrLrT/m3OnKA05/nwU5njEErPzkRfRIJhLvZBABUutkbbcYvLzbDt5H19NhXXUp14qkuemgWo2z9gzffjekMkBTsqEGUI2jovG480Mp5cHBOxnSHolyyFA+8QOZnRv1QcOjjnQ+pAJJhsg53gbqvGQc0K0lQnlHAeRygwHTP0ydNJWPxrbHqbSm10Gj0aq6TWDy3XpB1dj/nO2qTHiDswz/dN0hFreyGojRZQ9P1ttLuFsN6YAEgraEwKHZ92RmEisI6lUqb6UM9MxDEXoyfRj9TG3SLO+tgRSkXugjKlGDasPssuuFRs04oiHLpiKCLDjWbYJkTTUy/hKi/HCEqsj/33/+nnBod5UDwR0C59rcBEXPUNCNlWeWgW5olBoqpy7rN+B4xpI8hk1Ea0GtfFQZCZ8mKNaWoir3RRLzO2SIukWzQ+OJiMq3kDAD52VcCImVwwXrXHItwKq7xTzfqAFw7Os6riEKRXIs8tRMmSEFEKqSRNhmwTaGNKLyfyJ9qNYTt+LItHm15EpUTXzfMRLUA8usR1mxdI+lxQ/fnL3IaT10nLtJzMwaObOAeqJ+b9Kqe54VFyZ8PVfALpKhPPb0yUkhoslvfn8qYoQAbChKee+n9odnx1fTok=
X-Forefront-Antispam-Report: 	CIP:216.228.118.233;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge2.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(346002)(136003)(376002)(396003)(39860400002)(451199015)(46966006)(36840700001)(40470700004)(6666004)(2616005)(26005)(7696005)(1076003)(36860700001)(426003)(47076005)(336012)(186003)(83380400001)(4744005)(2906002)(7416002)(40480700001)(40460700003)(82310400005)(6636002)(54906003)(110136005)(316002)(478600001)(41300700001)(5660300002)(8936002)(70206006)(70586007)(4326008)(8676002)(86362001)(36756003)(82740400003)(921005)(7636003)(356005);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2022 07:42:10.0050
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 821a76a5-297f-4167-afd3-08dab593422d
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.233];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	DM6NAM11FT087.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4199
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_004220_819024_7ECD3182 
X-CRM114-Status: UNSURE (   8.65  )
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

ccgx is refer to the cypress cypd4226 typec controller.
Replace ccgx to well-known regex "cypress".

Signed-off-by: Wayne Chang <waynec@nvidia.com>
---
 drivers/i2c/busses/i2c-nvidia-gpu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-nvidia-gpu.c b/drivers/i2c/busses/i2c-nvidia-gpu.c
index 12e330cd7635..0934f8ad7f49 100644
--- a/drivers/i2c/busses/i2c-nvidia-gpu.c
+++ b/drivers/i2c/busses/i2c-nvidia-gpu.c
@@ -260,7 +260,7 @@ MODULE_DEVICE_TABLE(pci, gpu_i2c_ids);
 
 static const struct property_entry ccgx_props[] = {
 	/* Use FW built for NVIDIA (nv) only */
-	PROPERTY_ENTRY_U16("ccgx,firmware-build", ('n' << 8) | 'v'),
+	PROPERTY_ENTRY_U16("cypress,firmware-build", ('n' << 8) | 'v'),
 	{ }
 };
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
