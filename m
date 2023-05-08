Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06621C7EE2D
	for <linux-phy@archiver.kernel.org>; Mon,  8 May 2023 10:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P2dNlO3ACNC1JI0yLQcVBRLpFEnz6Pmkuy4aqjOzBEQ=; b=aT+CwlB6MLiAz9
	HqdPS5TyfNefrrRdv1l3syCuO0XgjwsnUMRAQJk1hJTJpbt2t7y2IWkGEskLcDeNxRWvUj85tnb8B
	FEUQEuQ/jnPblbZtO/JcrU9YJNbZ9JQkwdyW3xa2jIJLu3FXR/X3JzLvfjMq5EaQ+2SNacijQY80f
	uVIuFrS6YBd4/2oJP/eSy8ubRjcq7h9DYFXuLU1qjSc0cRaVgTTGyYelPoAmMyie/+9I/KzbLPISc
	UCiVfyIr6OGxrK3E6YFsyPBCGbiNpdfxlO4hz4MVIcqaUCPi9q0lMk/nK0NLmAZH2FrvF1+8VUw45
	dOvBA+11bKbzW6yJab6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvxiq-0008Tv-1N;
	Mon, 08 May 2023 10:04:00 +0000
Received: from mail-dm6nam11on2062b.outbound.protection.outlook.com ([2a01:111:f400:7eaa::62b] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvxin-0008TN-2j
	for linux-phy@lists.infradead.org;
	Mon, 08 May 2023 10:03:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RWIomfRjrUbypvpdiSmYvjivY2tP6InV1j6A65qj9CN/wLx21bxCuxIFKqVe2Xev9Bq8Jpqay/J3LzMJAJjIELtrqS89IgtdiAO7hnFLH0dnpeS/2D2+03S7KfyU8NMV4bFaz/p1Z/Yry90Eo5huOqXOD9iOUfIPvkrIVbvZk0pB9ekyuJ+Y4e0VYbnRc+SMel0Tg8R+Ediu8R6fzczRunJpC8SaCdSSXU92x3N4w/zzPKZlorcPj0dM9R8QvkozTFG20kLqej4RXhJegJxzF5MbJ23sDqsNCpnfYtJVlIlDtgGCpct3IRku6T4uHU55sEGic1q44XSY9xWBQiPADA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RdobmPizjgA8c7qq/OQdJI8VgT79WaSn0xDsWl8x/AU=;
 b=Fce8BSXTmRJq2+3p3QmbufCG98RBz5GP2N3aPGz05xJzN2yJVzFQktSArCsPRs6OjWLLQywhfC9f+XSaJ8YNujn4d3sOrLMDJ1IV0KRuUAKgyYkgxvHW0bRTQArL7XBCEJ2RTXk7GcEHkxrV4vPSeNVLKCV3Vkg0HlME52kmlvMIsVoqMkTsE1YqnWxvILMDq2byPvJYSuCxG3UyRZz0KqPqTv6rfHe2lwdJy6qdBVpQB2JVAKsEcHinISeW3civ5CDJZTKZeYuWiOS7Qc/eo8rwN/iGwXjCaqvT9JRn/rA76MDkGZTzHkT9ODHHpVFqfhroyE3QCrllW5C/REOzMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RdobmPizjgA8c7qq/OQdJI8VgT79WaSn0xDsWl8x/AU=;
 b=hTCVSUR/tGEPCh89Kup1Ut9LGN8Q2j1+cfBCbHVrKpvYJ/pF/hXsUeLgvYkuabl92ZVRG2yX+3x9gegkUuLqbAgoqYS4icjKXWE1BFesOCcn/rzEaoR41u7WEGMr5NoTBKz8tiGb2L/cjNtH+GxgGidoQ7lhSUHnCKXg+dTwwbMPG2w3+ZFLxQpkLGSM5XzN5ySNglZIPIqZyQZDhvjagwBJxbz/ic2hk0IiUlVcGOKx/AZR4K7RX4OZxiN9SoW9fiRaCJQdL6Qg4np5hFlwk6ImS2PJxksEpyPhsL8E2l7loj7eNegJgEUbBPU8GMShi1uveqs1X+zdMTYy1z5o0A==
Received: from MW4P223CA0022.NAMP223.PROD.OUTLOOK.COM (2603:10b6:303:80::27)
 by PH0PR12MB8005.namprd12.prod.outlook.com (2603:10b6:510:26c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.32; Mon, 8 May
 2023 10:03:51 +0000
Received: from CO1NAM11FT095.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:80:cafe::e6) by MW4P223CA0022.outlook.office365.com
 (2603:10b6:303:80::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.32 via Frontend
 Transport; Mon, 8 May 2023 10:03:50 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 CO1NAM11FT095.mail.protection.outlook.com (10.13.174.179) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6363.32 via Frontend Transport; Mon, 8 May 2023 10:03:50 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.5; Mon, 8 May 2023
 03:03:37 -0700
Received: from 0e64808-lcelt.nvidia.com (10.126.230.37) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.37; Mon, 8 May 2023 03:03:32 -0700
From: Haotien Hsu <haotienh@nvidia.com>
To: JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>, "Kishon Vijay
 Abraham I" <kishon@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>, Philipp Zabel
	<p.zabel@pengutronix.de>, <linux-phy@lists.infradead.org>,
	<linux-tegra@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: Wayne Chang <waynec@nvidia.com>, EJ Hsu <ejh@nvidia.com>, Haotien Hsu
	<haotienh@nvidia.com>
Subject: [PATCH v2] phy: tegra: xusb: Fix use-after-free issue
Date: Mon, 8 May 2023 18:03:20 +0800
Message-ID: <20230508100320.345673-1-haotienh@nvidia.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.126.230.37]
X-ClientProxiedBy: rnnvmail201.nvidia.com (10.129.68.8) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1NAM11FT095:EE_|PH0PR12MB8005:EE_
X-MS-Office365-Filtering-Correlation-Id: bf16ac5f-4e6e-4525-30b8-08db4fab85ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	QEkp7hRFmzlhIwup7tFOjO6a25tTVm/kbg0vNcuZgXEN10SAb2XUMOT2SIwhBCO3R71wL1+yFr4SwiImaDj5cfXed1d5WaMRbTx8zMZx9hpm+kQmKwNn2GDPmgq+VxwdCf3g7/s9OEd0GfMS1f84B+5RgHpnY3vSbpPWGW3DkDQ9wb0W2gNI2CtYmZIrSpa5X46shG0re+iyFiKXi7bclmMu5+e1TI3UId5RHprYwF6fOaD4HMppSneUqBw+0/ma/qIQTSjdvxVikSmk3oQyD5LgDx0E63ziDqJmMdUjuWel9rGoIni2WDeoWg8p6nzoZSgU5wsQzk5CPrb+4SWm5F0k3mGSBh37ckE2an2IAnKqIgiiM+rfRnHOgeLyrRJZkUby3DzqGiW9ANQLFN/OW4I7nvuV3GIFEFJU2CZhPP5ewNSnkX91t2OUb/5oSXgj/Ca6TRkYtewsF6boDiDM+jaANACSGrxipv/7s79Zr/LgyhFnVrr7HEFIFhGRxIT9qhVVaSwnkimhjOkAAF3jOuU3ZVCiZqnOmGhAudUnmZjXBuM3oIeCsLjsNcibSLUIisFLCHjWD1gxn8MK3FqPRF6Se78XCZOojBSsg5zTWQvyPtVkZcfWp3z/pci0ApH0ZRRlwv6t0ySPMLp3l2PhL83aVaaakX6uUUs3I0MVBXEp0z8XdLIC7vbhvq1Jg6U7OPXUR3fDtvD5vNCb/U4flA44TeS4jis9taJa3tDdyUg=
X-Forefront-Antispam-Report: 	CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230028)(4636009)(396003)(39860400002)(376002)(346002)(136003)(451199021)(36840700001)(46966006)(40470700004)(1076003)(26005)(107886003)(7696005)(47076005)(336012)(426003)(36860700001)(36756003)(2616005)(40480700001)(7636003)(86362001)(82310400005)(356005)(82740400003)(186003)(40460700003)(16526019)(110136005)(41300700001)(2906002)(54906003)(5660300002)(4326008)(316002)(8936002)(8676002)(478600001)(70586007)(70206006)(6666004)(2101003);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2023 10:03:50.6410
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bf16ac5f-4e6e-4525-30b8-08db4fab85ed
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	CO1NAM11FT095.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB8005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_030357_959941_6ACF315E 
X-CRM114-Status: UNSURE (   9.40  )
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

From: EJ Hsu <ejh@nvidia.com>

For the dual-role port, it will assign the phy dev to usb-phy dev and
use the port dev driver as the dev driver of usb-phy.

When we try to destroy the port dev, it will destroy its dev driver
as well. But we did not remove the reference from usb-phy dev. This
might cause the use-after-free issue in KASAN.

Fixes: e8f7d2f409a1 ("phy: tegra: xusb: Add usb-phy support")
Cc: stable@vger.kernel.org

Signed-off-by: EJ Hsu <ejh@nvidia.com>
Signed-off-by: Haotien Hsu <haotienh@nvidia.com>
---
V1 -> V2: Remove extra movements to clarify the change
---
 drivers/phy/tegra/xusb.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index 78045bd6c214..26b66a668f3b 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -568,6 +568,7 @@ static void tegra_xusb_port_unregister(struct tegra_xusb_port *port)
 		usb_role_switch_unregister(port->usb_role_sw);
 		cancel_work_sync(&port->usb_phy_work);
 		usb_remove_phy(&port->usb_phy);
+		port->usb_phy.dev->driver = NULL;
 	}
 
 	if (port->ops->remove)
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
