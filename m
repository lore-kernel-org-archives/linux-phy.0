Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 147EDC43602
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 09:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NRXIRlFVgRdpEik6w4W9/zAsdJJ7m9vEnGBrG60Ptdc=; b=kHSnX67CIjn78q
	DsOrdV5r5CyfH2iHXcPcAHrWtbTviWJrXi2Bmhf0HFtreIP2Q3XRuoBtiTspLy5I9kHKThetWmEJ/
	hUW3Hosavxoter2qVvNe7HEDenD5p1yJBZJmvNxQvvpTJY2tvv79CaQQYKDmqiYEnB/2+N3oqGTTh
	MwPlMtUvqTX89Fyi9mtP+JKIm4ZBsJUW+GlcRvz28zC0Upr5n2gUZqArlA0moQpEbCw9qVyrr/7Mx
	jo2bLHNm216MhrmXinWeRlF7P/C/mBO7riFFkC2ZAVPLik35OHk8hgxYvclKPyj5yER0+9c6Jg7Vi
	KBL3ppbXhhZ1IuJ35Jdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8OG-0000000EBCM-3Ut6;
	Mon, 29 Jun 2026 09:34:56 +0000
Received: from mail-westcentralusazon11010033.outbound.protection.outlook.com ([40.93.198.33] helo=CY7PR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8OE-0000000EBB4-2JJm
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 09:34:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HzGsdDJ2xtSu80t8+UsVvxHKI9AloEArYrsnasmNeM/bFMt2tYt3Ajih7B9VSrY0Ke/6uzBz5gu6IYXHUol10X9L72f1clQyP6dJ4599igPdNlgGL2sphghAjDj+jzeD7BIM/Fr8ZjLeXqWz/5grCrlsAw415HAyxCCzBL5UJ6Bj0JrxGNK0FWlE/kqo4aRMVjkBCldG/cu5Qog9TYU13TIQK4sAFnMbltSu/W6fHEEz1dV6vHp/gzRU3/l4jcrl0hoTpl2GTI+MoL+ZOllYZ2S1KT4HUH7tntsSDVJauzX6sSy3lgxhxObr0kuN/KdM4iI471VJwdy8pwrLKrVylw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W18+wqjLwRpBsSqR7tLr4jwt1B5he6Vn+LT7+I64JrI=;
 b=a0fKjM/EyAe1p/jyw+7pWVvL80eYmTGW4/h53jR3M1iCShnotghOnm4B0XnmdEv4T96A/heZtGlhxtRYALMY97xxT1kHXwYer2aWc+Z6LnLI5aCqhEpiuK9gbZf9iit2DrzEvbRKbC6vet1kdoPq8n1+DtnJgNea+iPypUbWDiYoD3FMMyTslMzjvJc8HVxTnX/3/SHEuMQ7a9qu4EedfxxhrnjMmpdSMB8oTLf/nQHQLE7FK5p5rXwx750X7LXPGfHJ10qoizVnwt9gUa2zsnn49Jv6tr7YoJMt7SA21Yu9Rmfo8kvV8dE3aHvqRXFh131vJVUQ8KDLYWGu9COINA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.232) smtp.rcpttodomain=intel.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W18+wqjLwRpBsSqR7tLr4jwt1B5he6Vn+LT7+I64JrI=;
 b=paR3U+yS658/Jy2S4B/e771AMqesCA4nR6/n1jx5v03Tr4jRTys/3BDdmVLE8vQ5yBatAXXUoVxGz6M7D/p6HmiqSqMKeUh6S83p+0lOJ9lAEJXIO6Sc/hS5PCr4p8dOqCTPXpXDorFGgSESfMRoxfRDDhAyRXSOpYG/ZoRvfC4esB70ZcxtOUKnavrF17CpCS0RPfs5DDjOwQDltY0ltDf4xprUn0AUzUmJwNMSHMXLGLc32Qfl/Nzm5AFiDPJX9icmm89tKwqpiMSE7WC8WWpw0NnbrlQVhjK2EqxquARl6WsISTXZNiSKHk+Bx6oeAAFmIXFAUIxqYuYQPDOtjQ==
Received: from IA4P220CA0007.NAMP220.PROD.OUTLOOK.COM (2603:10b6:208:558::16)
 by MN0PR12MB5979.namprd12.prod.outlook.com (2603:10b6:208:37e::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Mon, 29 Jun
 2026 09:34:47 +0000
Received: from BL02EPF0001A0FA.namprd03.prod.outlook.com
 (2603:10b6:208:558:cafe::1e) by IA4P220CA0007.outlook.office365.com
 (2603:10b6:208:558::16) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.159.19 via Frontend Transport; Mon,
 29 Jun 2026 09:34:47 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.232)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.232 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.232; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.232) by
 BL02EPF0001A0FA.mail.protection.outlook.com (10.167.242.101) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Mon, 29 Jun 2026 09:34:47 +0000
Received: from drhqmail201.nvidia.com (10.126.190.180) by mail.nvidia.com
 (10.127.129.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.43; Mon, 29 Jun
 2026 02:34:37 -0700
Received: from drhqmail201.nvidia.com (10.126.190.180) by
 drhqmail201.nvidia.com (10.126.190.180) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.20; Mon, 29 Jun 2026 02:34:37 -0700
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.126.190.180) with Microsoft SMTP Server id 15.2.2562.20
 via Frontend Transport; Mon, 29 Jun 2026 02:34:34 -0700
From: Wayne Chang <waynec@nvidia.com>
To: <mathias.nyman@intel.com>, <vkoul@kernel.org>,
	<neil.armstrong@linaro.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <gregkh@linuxfoundation.org>,
	<thierry.reding@gmail.com>, <jonathanh@nvidia.com>
CC: <waynec@nvidia.com>, <linux-usb@vger.kernel.org>,
	<linux-tegra@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>, Sing-Han Chen
	<singhanc@nvidia.com>
Subject: [PATCH 4/8] phy: tegra: xusb: Use devm_clk_get_optional to fetch USB2 tracking clock
Date: Mon, 29 Jun 2026 17:34:02 +0800
Message-ID: <20260629093406.1118594-5-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260629093406.1118594-1-waynec@nvidia.com>
References: <20260629093406.1118594-1-waynec@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-NV-OnPremToCloud: ExternallySecured
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF0001A0FA:EE_|MN0PR12MB5979:EE_
X-MS-Office365-Filtering-Correlation-Id: 5e0c1a78-5b7f-497c-7fb3-08ded5c1a941
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|23010399003|36860700016|7416014|376014|82310400026|1800799024|18002099003|22082099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: ToCQxJktkV59/dpcZKmak+caWU5SACC6jV5SLzdhnLYp+gl59y5WASY8wGmOSVScwTiv+u+X6yui9IKcoe0J1sGnmRqdgX7zn/MgGQeGI78Bm3PPIhYaYkUYRNTrKlXBlQZMhOULQEH3kbeFlPtmr1O18+++/DbTcWLDULPznGYKT1a7jOWnmDkRvJmb2UcG927wdrVfhF6NtyeYx8JIMpIe54NSrAP4sX2vuzlZLbsb3ZtoULtERkXMtRuZWAkNOYZBhL3SzQQvZCtPHE5XTMXeqvp9KvSymzSsOLtyXXL0sJSufdU7qmuKc5m2hgq7ugFyXE+S5+zCFSpEQVhbH5MFNPHuq9NIWB7152vbvCwcB3OQIM+tPbQi/H2MRJLQSITNjNGTH0ZJ57h4TaqLCpAcZJGQKB712Z3NJZnhpgTCkWyIPhfwnV0lDLxzF5Qj11NOmY68vI/eci59GJUMtesBlk2ePIc2LzVKQyIbZmbV5bXAwM7FJDSpnRZD7TrkLbT/84A4gVVih2GhJn9VJLYTW4rWHneUk++1GFamoGDTKWKfCtvh220W+f2EmDY+EKrukFuy7vjtMrrKLlPLGqPtxt2omc/UHwWsZ4sReMQ/DRKE9OICDHFFJh5fOvMbefL5gpClV57nzbx/z604sHGitLqOwpVwB2KVm3t10VmGJMQoK8x+okOy+kUYqTerso6HVaRWX7JFo91DA/VHnQ==
X-Forefront-Antispam-Report: CIP:216.228.118.232;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge1.nvidia.com;CAT:NONE;SFS:(13230040)(23010399003)(36860700016)(7416014)(376014)(82310400026)(1800799024)(18002099003)(22082099003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: YsVXm53fLQF+8jecyL6dAqTL3digi6nQrfxoQN5oYq9sRHhDwkuAI+WhsCv7wI7CYKtI8x4y8YZT/8YtrFbdQtJIep3iAdu50aSoauMJKJAcwzLH48s7Aj3iwVISWQtWsdqKGW4SeqpZBtrfL3PayzPz/tMjwXOPRdcQyo/q7owAH06H7Ya5LDQBfOaWbjMlP/SXJepPQBNXrE2lTQeaSbxewAEF1ZRaT2fxJhEHHQ6tBej0qKXrGjoTp7JRHgpEg5KmJQO/6ptS/l5QP9fuyTLvBOsSpSOmcQ37SO2woleenVRhripsTnFWSGx9z4qlovJLaT9pG1jym/tTp/c9KkSPmMuKauukqKHjCcL+qnv/LknjBMg7QipcjhazObbhieIlKTEomz/mxKLEGHATvVkD4iYGlH8eVIdO8IAIY56DPoUxon2hC5upnl6fFGD/
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2026 09:34:47.6397
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e0c1a78-5b7f-497c-7fb3-08ded5c1a941
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.232];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BL02EPF0001A0FA.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB5979
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_023454_591170_E048D6C5 
X-CRM114-Status: UNSURE (   9.04  )
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

From: Sing-Han Chen <singhanc@nvidia.com>

The USB2 PAD tracking clock is an optional clock so use
devm_clk_get_optional() so a missing clock in devicetree is
represented as NULL and probe can continue. clk_prepare_enable()
and clk_disable_unprepare() already treat a NULL clock as a no-op.

Signed-off-by: Sing-Han Chen <singhanc@nvidia.com>
Signed-off-by: Wayne Chang <waynec@nvidia.com>
---
 drivers/phy/tegra/xusb-tegra186.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
index 60156aea2707..800be0cbb3f9 100644
--- a/drivers/phy/tegra/xusb-tegra186.c
+++ b/drivers/phy/tegra/xusb-tegra186.c
@@ -1045,7 +1045,7 @@ tegra186_usb2_pad_probe(struct tegra_xusb_padctl *padctl,
 		goto out;
 	}
 
-	priv->usb2_trk_clk = devm_clk_get(&pad->dev, "trk");
+	priv->usb2_trk_clk = devm_clk_get_optional(&pad->dev, "trk");
 	if (IS_ERR(priv->usb2_trk_clk)) {
 		err = PTR_ERR(priv->usb2_trk_clk);
 		dev_dbg(&pad->dev, "failed to get usb2 trk clock: %d\n", err);
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
