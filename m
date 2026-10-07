Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2064ECA5FFC
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 14:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Se9hOgl9RNgM+pGK2TREBIAhghhePmkcJJkyitc1nEk=; b=zEMMqgCriULLPf
	zmywZg1SsbxLsq2eT8Mg7Qndc3EdmnoSkTpDi8YSqnStYmrQRnCmukprXVUPBZAQbgZZkqygaepAH
	YdpKIqESab/DGztVS7TARGX2GVCcApNiLTLz9fQtLjVggok1uQ+Rrn7o/qI8yXuW/kJBaQfp0GO8E
	NYW0G6mgMyMtivk92mD/Dtc4V96QCMzsN/qTglkxkBevrNPvnZxWgIeWvgFCn3AKDM/FXURl125E4
	SRYREDxMea5CMLOky5AtmAbTulb++HwuucuQ1lfQT02Zar9RjSOSxED6fnarNE3camXmySlZXN7/Y
	/lC8CQTwHAxsAQh3sZDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xESvO-00000002eHI-3U3Y;
	Wed, 07 Oct 2026 14:47:18 +0000
Received: from mail-centralusazlp170100005.outbound.protection.outlook.com ([2a01:111:f403:c111::5] helo=DM1PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xESvK-00000002eEx-0vIo
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 14:47:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z+/lZvfF3G1oQIMakNrb7pPnpdGgooUo/oY6sUrqLJQwEPpoK/33YztG5SR+Hsd0ADv4X2rXHYk8O4ulHvwPeC7PpOcBjEHuJiY0dtdOVKcIkATMowVsUssXcYe5NHnsaVkJqqfgIPurH8toPdS2CBBIZww3RSGu6A3zFHCOayIRARflbiE3Fg2/qtDRAQuTvhghGtw5bkgwnTiIMkgjnkjsgJc5+Ccj5OS2s8+27TqtiPzIH8I5rzilpVEDuy+nA5qnN+xd0e381oV1A45qcUCehjfN2KSVzjc7hQfMbloXXYPetF0v9YhuoYC9YFu7okAxzlU//CeI6uj9XriJaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cYhTESspRvobFlbQ+ypzW69ono8EdSVOs1R4onVRNsI=;
 b=Poi0yrziWiFkUx96nBY25eDWVqT9QtgYUDwMnNPvlsYsSOm3UuFJBg3r8YDAiTQa9a8wwOHTY7cxi4ffpq5aRhkPZuBP8otiUo4xaruYbFD9M2vC5qGIFTyvOgSvI80kNZRUkJlWrmjQSV5sD9mES5zg4Mdr563t5p/lS+BbjZ6orkmYqcIl2R1F2S6TRLy8ntLsuu/otS3ux2gpoy2xNsQObCTKXKgIVjvdIPjHmryNFaNP2ANzJACa6J4CTGb0vMbyERWp2FRM75yeKvg3eQSQPVR7JHtlb6Z456HHDznUPAk085ZQwyfKJxxOq3STGkZ0Whpz5CQnS6A+TsAxJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cYhTESspRvobFlbQ+ypzW69ono8EdSVOs1R4onVRNsI=;
 b=Ek6YtS7yndZf79aJSqNQGCU/fWqpksP5LU8zJTQXRBXMJd/YBOVailC0ki168JzWW9MgxAA7BWcuK2M/rF5AHnoC5FZ+5sWq3mj8qGD2tjW6Fpx2rFRatnwQoIfOQ2Orlvh0rOggt6mzy+dsirc0vByLkPaE160FRyFhpOjiGTLiRdWLpQXE50tMNK4q6bD2VvM7dgRX/6QgqL8vvf+iUAx4fbChIcMg9TOtRIWWlVN/smIZU/Jr2JSRfvq/hrWxU2/k30OwiWGpMJ9khwGc5ZEq7LbQwnl9n6rEO7zKHdyUgxFMceHKKmviWiH0bnbI/quFor1V1vbYFbaYNDNEeQ==
Received: from BL1P222CA0007.NAMP222.PROD.OUTLOOK.COM (2603:10b6:208:2c7::12)
 by BN3PR12MB9595.namprd12.prod.outlook.com (2603:10b6:408:2cb::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.496.15; Wed, 7 Oct
 2026 14:45:38 +0000
Received: from IA0PEPF0000003F.namprd04.prod.outlook.com
 (2603:10b6:208:2c7:cafe::63) by BL1P222CA0007.outlook.office365.com
 (2603:10b6:208:2c7::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.496.5 via Frontend Transport; Wed, 7
 Oct 2026 14:45:38 +0000
X-MS-Exchange-Authentication-Results: mx.microsoft.com 1; spf=pass (sender IP
 is 216.228.117.160) smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 IA0PEPF0000003F.mail.protection.outlook.com (10.167.249.166) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.496.14 via Frontend Transport; Wed, 7 Oct 2026 14:45:38 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.49; Wed, 7 Oct
 2026 07:45:07 -0700
Received: from [127.0.1.1] (10.126.230.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.49; Wed, 7 Oct
 2026 07:45:03 -0700
From: Jon Hunter <jonathanh@nvidia.com>
Date: Wed, 7 Oct 2026 15:44:42 +0100
Subject: [PATCH v3 2/3] phy: tegra: xusb: Use dev_err_probe()
MIME-Version: 1.0
Message-ID: <20261007-tegra-phy-v3-2-d501de414710@nvidia.com>
References: <20261007-tegra-phy-v3-0-d501de414710@nvidia.com>
In-Reply-To: <20261007-tegra-phy-v3-0-d501de414710@nvidia.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@kernel.org>, JC Kuo <jckuo@nvidia.com>
CC: Thierry Reding <thierry.reding@gmail.com>, Wayne Chang
	<waynec@nvidia.com>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-tegra@vger.kernel.org>, Jon Hunter
	<jonathanh@nvidia.com>
X-Mailer: b4 0.16.1-dev
X-Originating-IP: [10.126.230.37]
X-ClientProxiedBy: rnnvmail201.nvidia.com (10.129.68.8) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PEPF0000003F:EE_|BN3PR12MB9595:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b35e00a-9c55-45f6-dcb3-08df2481a726
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|23010399003|7416014|1800799024|82310400026|36860700016|10067099003|56012099006|11063799006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: sLqjeLaNxI6hj6G8GtO55AsTy6B2da0Fe3Liw14ga63uLt1WRGsMdPsHgge7vUyxjtNPVDAHv+KLpURBiTQKzEE8IzUT+r7NEM+rQ7E60maxlUrOi4l6/9h9RATzMKpJI+uGVxyjhAu1eB6pdeVLU/80l5zvhzl9xRIvaPEc+fM08NUofJVyGycV+IlSOgwpaYceaN/lTPkKTG2QKjisR3iLzzFw7o5fT5Ood9BNRwF79+EKwNzUHYLA7kxkQfYRXiusEkGFEg1KHj7dzYFTdSuayb5ZA0ikWb0cJ/tIwhAPrNr9zXrs8FP2TCDnGqQBH2mSeAR0LnrSyLfczNECiZtc7kd1yJ2iUr01MRYDZcQ6D60h5LQEF6N8dR/mwe6ulvVXTDViguSjdXtB5sNKj7KTkNFGORziZxBYP2KL/iCYTcRLzmZX+3Go7KtlhP62aOw94qUjnHBNulWUb5HPkVFM1O954tzVsvtkFRu+iqM9svf6dhbvZoFNN214cRDS1shrjvWwon201IyVDVsQhgqg/oktfqlRBSIMIAU0Tn06RLDjPzQ6TuF0x/UfgmJ7dPrgCmpl5CrNx25ygXyWMK/D7XotH/YE0KSQ4gnLe9Sc958lEPn+R93nYDCRqOTOqIhDW3opjsJMiYvBn79T8Y3q9rSemg4VTAjsAsba0HHgfGNgQ3cz/cdOPO6FEG3DSa5wpndm7RBWgQzTWqRjng==
X-Forefront-Antispam-Report: CIP:216.228.117.160;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge1.nvidia.com;CAT:NONE;SFS:(13230040)(376014)(23010399003)(7416014)(1800799024)(82310400026)(36860700016)(10067099003)(56012099006)(11063799006)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: N/EFNocgpJCzjN3nu3mxjpjQ5lU0gULaPxva7ULGGtYqMsYmZ15zJ5qyVF5nxa5VJ7Y4mNhHUrES2InfdFtMVBnZKYSP5QGE/eOg8z8L8wemYkstPn4LjGXjZ2TBb/O2zlb59LKvucb99VLd3vTzXTx1BjdGu/QNRG7HHCM5AkPCCZ/LR5X4VP1ie5RVU9ZMoD1/OICQXjYmVZ79foEW6Jtpz5HMdoWPBseKfyJ4AQWv6cy0Ab/nkkjKr94S5P3bItRZRfUewlTmgA9wEpDXaOjHld+4gIOSlY0ZR6OSV0Ny6QeMgS7k4GAyiW5Jm2wPgVisDUuJqfAHWneUD83u4+/bEU18jbIcWllyTuck49JR8TNbXU5+E1lFn1YLLBMmIf9qPwjYAPnFlTZ95FhTelDb1FCnoHOOxXjbG57oF6B4zYz+udRDKwEaGEOUSG3q
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2026 14:45:38.1731
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b35e00a-9c55-45f6-dcb3-08df2481a726
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.160];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: IA0PEPF0000003F.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR12MB9595
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_074715_695747_AC6F60C9 
X-CRM114-Status: GOOD (  10.68  )
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
 drivers/phy/tegra/xusb.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index d0d0b252a205..0635f0d82c96 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -1257,13 +1257,7 @@ static int tegra_xusb_padctl_probe(struct platform_device *pdev)
 
 	err = tegra_xusb_setup_ports(padctl);
 	if (err) {
-		const char *level = KERN_ERR;
-
-		if (err == -EPROBE_DEFER)
-			level = KERN_DEBUG;
-
-		dev_printk(level, &pdev->dev,
-			   dev_fmt("failed to setup XUSB ports: %d\n"), err);
+		dev_err_probe(&pdev->dev, err, "failed to setup XUSB ports\n");
 		goto remove_pads;
 	}
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
