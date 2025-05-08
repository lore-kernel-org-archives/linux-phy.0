Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1C16C3ABBE
	for <linux-phy@archiver.kernel.org>; Thu,  8 May 2025 05:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xiPr8YWe9b9eVWHDqnujul2aGu3xP/A+/GUyyiqQ+Ec=; b=MFVYp9xpCUbNwt
	eh8kEoKcRFNullzldwX5gVsseClKPNGj84KpEUq7rTkI6bnECEoZNFWGvPN85lcoPD6FUKCAUldgC
	qw/ih+cXW2T8l9MjiQAg5UE8UqhD6Xbb8BpkFlUB7yGmO6Sj2ttWy6N/YQNS6dQGeuCO/JOjdxXOz
	tivfHYyuiDAd0gDQ71MSstsmKwm/SB+SbCL73j7q17/biwgvLqPtpdM0AjnDYEIiKKyuQfJafZNuu
	i35M9FLEvk6yR9KEuDZNGvmOcCpzMuLC/ngeYaRhzj/bpj/zYmSJr6GHBbbXeKPw+XbL9Vvuw63Y3
	JGMKCvh7cj9AcMZWdPhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCthw-0000000HMWL-0xBc;
	Thu, 08 May 2025 05:22:08 +0000
Received: from mail-bn7nam10on20603.outbound.protection.outlook.com ([2a01:111:f403:2009::603] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCths-0000000HMVN-1FwH
	for linux-phy@lists.infradead.org;
	Thu, 08 May 2025 05:22:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X+tmyNegDTua+3cH0Xmb+06PR48JcDTuCYbHFHPy/diDQMc004XJUBo0XnZMpIsCseTa0kwaFm2yTgBri2HQ6qLazmm/YYoijROYduTriobVGIuBb5YVVpKeI2ikpVuB5DUY3G2558Mdiv0g8FNxgH4rLGU4nMz/NNn/3DznhAbsBhLLgLwzFHQLk8N+9fa4s9kFVVQ2GsSLCGfPWY1GKLKZ4v5Y7hS0PNChqcpit8C1zOujgaVBy96mR9Q4Risw6fV5mnvSwR21itwbozEdCrSywtdsLyY69J9AlDddDXWSSWz9j4AsSWIJ3bJ3ZhbJTPX7SKRRjfW/XC3jzcfqCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kl8qhaeJcbN0vfWlG8x4Tu9q4XPwL4+80ywNtEV2amo=;
 b=wfwfGzmGES9mVYj1nRBMwDzNzyaSDzouVMW1Z8gZTjDxa+MTeE6ajeW1qXpn/OuUNvzLjtD7pVUJM82GxLUR64RymAIqALGD2EauvgeEB8JVKxEvX1rOwdgmP1mi8OUFJKl5ruv0Fz7JdLS2a1CkJxY/9HUnIlj+g/kgO4pkLuVYV1MhF1chIPPXxY09raaMT8ivpk7L/Ir15G1blc7/Tgr0jH6ku11OiZtbikzRHOfeCDpo0It0XQeul+E9ci8KOtQoMF1GsqJb701vDZv3jtK1DiJCa/DaYmYIhz/qyDtq5ZipEsd5NDQDc1KsjHWR2knXvf/jaj3FL1OnPFvAQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kl8qhaeJcbN0vfWlG8x4Tu9q4XPwL4+80ywNtEV2amo=;
 b=srHv2X82jNAEGl8yJ0F0r+g3RXnXBO/IfAs5/1BqaVZcFqIRhpK45hcQzCC88IljfltyVXlZJNzJl21GzTaKv7CZfUoIBAxjjBIVnoVkooszVkJSO6WpHTYiOWwY90C+K4BCwYYHb1z1NsaqmjQ/1nq2C2Ck7yyw4Kc/+JN7nANA27FX90mTq14i8IQWOrhnbxlQuFYaYQc+AxESkL76q84AqcyVjPyy6LxzZova20ymUyr4FYfjPTZ8RrYxVVWzuDtlTMln/AKMVNEpohEDUKuhgUTzYYO9yiuieNBx56gVjZ39QA0A2Kdift5R8L2g75BMM8x8pJcLKLUF37+N9A==
Received: from SJ0PR03CA0185.namprd03.prod.outlook.com (2603:10b6:a03:2ef::10)
 by IA1PR12MB8360.namprd12.prod.outlook.com (2603:10b6:208:3d8::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.21; Thu, 8 May
 2025 05:21:51 +0000
Received: from MWH0EPF000989EB.namprd02.prod.outlook.com
 (2603:10b6:a03:2ef:cafe::ba) by SJ0PR03CA0185.outlook.office365.com
 (2603:10b6:a03:2ef::10) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8699.31 via Frontend Transport; Thu,
 8 May 2025 05:21:51 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 MWH0EPF000989EB.mail.protection.outlook.com (10.167.241.138) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8722.18 via Frontend Transport; Thu, 8 May 2025 05:21:50 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Wed, 7 May 2025
 22:21:42 -0700
Received: from vidyas-server.nvidia.com (10.126.230.35) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 7 May 2025 22:21:30 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>,
	<manivannan.sadhasivam@linaro.org>, <bhelgaas@google.com>,
	<cassel@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <treding@nvidia.com>, <jonathanh@nvidia.com>,
	<kthota@nvidia.com>, <mmaddireddy@nvidia.com>, <vidyas@nvidia.com>,
	<sagar.tv@gmail.com>
Subject: [PATCH V4] phy: tegra: p2u: Broaden architecture dependency
Date: Thu, 8 May 2025 10:50:21 +0530
Message-ID: <20250508052021.4135874-1-vidyas@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250417074607.2281010-1-vidyas@nvidia.com>
References: <20250417074607.2281010-1-vidyas@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-Originating-IP: [10.126.230.35]
X-ClientProxiedBy: rnnvmail201.nvidia.com (10.129.68.8) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWH0EPF000989EB:EE_|IA1PR12MB8360:EE_
X-MS-Office365-Filtering-Correlation-Id: 96b6c15f-e548-40d3-e7f6-08dd8df03cdf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|36860700013|82310400026|13003099007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?qp24ajjJWSUiMqiCoAwIaRvGvuDX6V4fejeJpI7yeY41ZRdZ/9lu4STvevIE?=
 =?us-ascii?Q?Opjlq4KiK7KcDDjyy8U4PE8RO76WCNBVYbynIe1Wkr0WEfqje7T3s1cW6Bos?=
 =?us-ascii?Q?HxPOuIO7OjU9+ZdCUMavyZ3qZI9bY1HkBVLd6Vsqn4reVcxIHX7NZ1XE3+Js?=
 =?us-ascii?Q?9k5IRNCZzibzSrwl1JiOpVHupJwvYo2FVXje1JqgHhj1PwcMJcXZKDlBcewQ?=
 =?us-ascii?Q?S//YPrNdpLkyG/5357oR6t4rh3VxnI1W4xD/so3ZD35PJTOM6slM6Pj/N/th?=
 =?us-ascii?Q?aGo+rbSoIq6L8mziSJeQKzixcFMEJInk9zIBERftLyswHhGfW7m8s+nasAIW?=
 =?us-ascii?Q?p4RfnND0R5tfA+nwWefHt3Bhv/IWDKlOT42BRrVYRuE57dsNg96GkO04rw0R?=
 =?us-ascii?Q?oC93084O15ABvLj5QnoMric3b3sVF8TCFw50KVsLuh3fC2GXZb5mMmyrTI3c?=
 =?us-ascii?Q?RFaxmQpBPCPjQ5GRrauqQPqDoehCsqc5gsRFGXvva+iGi4SthDo9x1hNOSGu?=
 =?us-ascii?Q?1+UKCGRr/TxQOl05KEVHIY7yXx/2hJyE0m3RNOl9LOqkfpnbh9yQuGWGU8JY?=
 =?us-ascii?Q?xmR+TgJOl8lu8i78i/9Sajp9VyJRk+rHM5/3jRdHqOeZwKtURKj9Wd+AzHZn?=
 =?us-ascii?Q?WEU5wWIo8AtIxLE41eIJm0KUkyWHH4UPShCLD7hg78yU1ForNSVodIYMxG+6?=
 =?us-ascii?Q?D2RNojv2L8Y3/pIMZbbgKmTe5oy3hKS7grMmadtSYouuM0wObeBWdor6QLHx?=
 =?us-ascii?Q?7mi8Fo5zd4AJW7Pn6HKKs8+6ShkqvLvIvsKJstvbdF/yvDVENyg2bhReAVGg?=
 =?us-ascii?Q?ZdvhAlJDWdet1wEMfes8uI/M+Pr2DqXIEipuqbv/9KHqJ3bw/Khww0Crdd26?=
 =?us-ascii?Q?8r8y1muFljZRwI7l5JMxX1pqLrKzOl+vab7wO56VJpJdhyC537/Pqi4qTne9?=
 =?us-ascii?Q?jhtReiDxNZi79B4fjviiNM/EY3sk+hujk9SXlANQiIQpOLeFvWJAuo9vCRb3?=
 =?us-ascii?Q?W1s+E5WEJ/WnFKHYP8+EH4O4MRgdG+V6DOVahcujoUKVX9SlGTs6+OqubIvQ?=
 =?us-ascii?Q?a8P8YQrFvI+TrHS4D8HbzWCzPEemHWesoymEdr8HePh45qkwqfxdMcxq6NJj?=
 =?us-ascii?Q?MAt+CpJJ1GwVvdL3XojJUTl5mUD9ZVcfVazUctRdI9C966yO7BiSrmV7IaxL?=
 =?us-ascii?Q?yv2qoa+B69L9fYMGoNs5aMx8CyySxWXuX/YDTTwR48J2SRvYrfS0uo7OOd7h?=
 =?us-ascii?Q?bpYuwmmi9K7yyafEI+8Ka+iTQCmAOgZUULbgEHwyzoiOfoS2xcbie5eeCYRS?=
 =?us-ascii?Q?2ObfUdrrZlFSWqAgSXCO+lDfTzcxLyWJX2hJUX0hxVwnv24Jqy7vswKOkDXZ?=
 =?us-ascii?Q?NC8ikPVbdFFnEI6pdJ0oP4uvcSivKak2ELGBjIkxOo4hRfeCnJkC8DmpVMSD?=
 =?us-ascii?Q?vy9+aR5kZZTCHs7g34aoThA1ad0JqoG5PzjnYJF5La5dNDkhU5eHhsnYqQRI?=
 =?us-ascii?Q?f2HIQHvZHMEvJNxaXww+PE1PmEEXl/p6PcN5jouBYJNa0rYXjGKhWt/CkA?=
 =?us-ascii?Q?=3D=3D?=
X-Forefront-Antispam-Report: CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230040)(376014)(1800799024)(36860700013)(82310400026)(13003099007);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2025 05:21:50.7912
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 96b6c15f-e548-40d3-e7f6-08dd8df03cdf
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: MWH0EPF000989EB.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB8360
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_222204_338397_CC9B237B 
X-CRM114-Status: GOOD (  11.05  )
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

Replace the ARCH_TEGRA_194_SOC || ARCH_TEGRA_234_SOC dependency with a 
more generic ARCH_TEGRA check for the Tegra194 PIPE2UPHY PHY driver.
This allows the PHY driver to be built on all Tegra platforms instead
of being limited to specific SoCs.

Link: https://patchwork.kernel.org/project/linux-pci/patch/20250128044244.2766334-1-vidyas@nvidia.com/
Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
v4:
* Split the Tegra194 driver and phy driver changes

v3:
* Addressed warning from kernel test robot

v2:
* Addressed review comments from Niklas Cassel and Manivannan Sadhasivam

 drivers/phy/tegra/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/tegra/Kconfig b/drivers/phy/tegra/Kconfig
index f30cfb42b210..342fb736da4b 100644
--- a/drivers/phy/tegra/Kconfig
+++ b/drivers/phy/tegra/Kconfig
@@ -13,7 +13,7 @@ config PHY_TEGRA_XUSB
 
 config PHY_TEGRA194_P2U
 	tristate "NVIDIA Tegra194 PIPE2UPHY PHY driver"
-	depends on ARCH_TEGRA_194_SOC || ARCH_TEGRA_234_SOC || COMPILE_TEST
+	depends on ARCH_TEGRA || COMPILE_TEST
 	select GENERIC_PHY
 	help
 	  Enable this to support the P2U (PIPE to UPHY) that is part of Tegra 19x
-- 
2.25.1 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
