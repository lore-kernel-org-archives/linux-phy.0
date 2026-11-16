Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE85F606A329
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 14:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MKh0CLrK;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=ZAmMxplu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=OdGSHq3DK9V1wStML+o/QBaBI5lxyRJQa5LzEx3p4Lk=; b=MKh0CLrKZPvrH5xIDhDvOVXy+R
	kKeZ3zNkmRR60xgakwHqiSkGHrZ9y9rUhITl30QPnPPgmLI+VwpkFGXGRCOzc++mMa0Y+54MdCcCt
	EIi/WsQFdAKGPBfrTSMqsPJSdeLxgfiQVKc+U5D3zilf9R051OZo/6WtBbqzNnvbaANRmr2I3xP6B
	Ou9p8+on16swVPxa6LOmMjWh1i7J6L59nW57dSiX7XBLh8i7MvCiex9jbL6cU258EVJp99reLF+Vr
	3mpWWGq3+kIEK7+Lv/DTQoxCTNFiv+L4ZibAlEEQEeKv1qgEF0mA+l7zNQ9iyDnPgycQRP4QTAwcv
	mAunQgug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSy50-00000002wVv-2GgI;
	Mon, 16 Nov 2026 14:53:10 +0000
Received: from mail-westus2azlp170120002.outbound.protection.outlook.com ([2a01:111:f403:c007::2] helo=MW6PR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSy4v-00000002wTY-3ZX3
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 14:53:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NVtZo3OVTtU94D6GwfsDfHeWizr3hgY4AQrG2YbsamTW7LiRrCqjWe/dhQ9UEPUygCAJxk2wp/BQPUyKB3yKmR9skkOTxJTrnk+lxwOYmMZzgsPi6AznPkw7Hl+M+5LkAU1JVrPJic6Bhh5T12hpW99v9P3ZRuFxcxeQfUhS09u0QOEjk/yIWDTJE2cEuPFnCDrt1b5QPnKOZa2LhHxDI8u+2Dy1R32IE7Z8ob2icYhPXZR3aBWBO6kOxvbxmWfWCmGLZoUlQIFrPBxbKi83n8Hswpe0bwhAx/OvaiBJRDN5xtjRYk3Xek5yOy2gArYrtGWTpkhhDmjWeII0Pkl33Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YrgRtf9nyrljao80bQFSGGyUCylZiug3iZTRXiyiejs=;
 b=efxcLnOT17zYO6ltG5X9IBPis4i/HBQeIP0ShY2h43LsCO6mKVNuJ0Tr1Dk7iJHpY2IGUEl51MxjJb4UOxl8Hz4Pv6MjMeyI2ysmgs/R2SoqkIqBQJswqv0jMzaU9HlOmXa/AAR/wp/UBeS4mKM1ulTULztnDOMdpG9CjfIiaSKNHVK51MHx7pT/EgST2qLUPJ53Eb4L0QQI1VCg/aH8cOMsodztshPSzbgTpmu1O+9U47+3Wc/0hhRZhgE6Bdeyeog7Lqu530UH08wCUzZ/eGeBYzGrjht/wO67CIsCmlt2n/j6gzGufNUm5IT2S4pxj+tOwIaO8DnevtTZVuyDlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YrgRtf9nyrljao80bQFSGGyUCylZiug3iZTRXiyiejs=;
 b=ZAmMxpluPLJFkd5O1GKgre7lnBqVvU556ao6b5OGA6WJ+tAM8MWa6+tsviKMelEAlxIkVF84tExRYTGZ/jC6lnMMp8NxGQtkHW68lQdIekO+op6wyVCoIW6GMu2n/Lb/vtFd1MpJb/f9cDH0AgM7RAdBLy5OJ2p7OVtYLZknCaA6hNNlCJbb1Q3ihLUfhaENVgmmGPI1viK9JT8hKE6neRoktM++YYDwhCQNl451FPEwA0kwOKHGNgfqTLS87CzfXhdfqgozJU2u9u/+GgDi9CLJ5wC7WHklU5uv07O0YKprd9hYAErg9XkpkaQXucxrdm2amdAYkFx7x8PJz8YYjg==
Received: from SJ0P220CA0008.NAMP220.PROD.OUTLOOK.COM (2603:10b6:a03:41b::17)
 by PH7PR12MB5736.namprd12.prod.outlook.com (2603:10b6:510:1e3::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.615.14; Mon, 16 Nov
 2026 14:51:53 +0000
Received: from SJ1PEPF000037A1.namprd04.prod.outlook.com
 (2603:10b6:a03:41b:cafe::8e) by SJ0P220CA0008.outlook.office365.com
 (2603:10b6:a03:41b::17) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.615.13 via Frontend Transport; Mon,
 16 Nov 2026 14:51:53 +0000
X-MS-Exchange-Authentication-Results: mx.microsoft.com 1; spf=pass (sender IP
 is 216.228.117.161) smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 SJ1PEPF000037A1.mail.protection.outlook.com (10.167.244.133) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.615.4 via Frontend Transport; Mon, 16 Nov 2026 14:51:53 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.56; Mon, 16 Nov
 2026 06:51:29 -0800
Received: from [127.0.1.1] (10.126.230.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.56; Mon, 16 Nov
 2026 06:51:27 -0800
From: Jon Hunter <jonathanh@nvidia.com>
Date: Mon, 16 Nov 2026 14:51:15 +0000
Subject: [PATCH 1/2] soc/tegra: fuse: Add USB fuse calibration registers
 for Tegra264
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-ID: <20261116-tegra-phy-tegra264-v1-1-a82b8e10a553@nvidia.com>
References: <20261116-tegra-phy-tegra264-v1-0-a82b8e10a553@nvidia.com>
In-Reply-To: <20261116-tegra-phy-tegra264-v1-0-a82b8e10a553@nvidia.com>
To: Thierry Reding <thierry.reding@kernel.org>, JC Kuo <jckuo@nvidia.com>,
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>
CC: <linux-tegra@vger.kernel.org>, <linux-phy@lists.infradead.org>, Jon Hunter
	<jonathanh@nvidia.com>, Wayne Chang <waynec@nvidia.com>
X-Mailer: b4 0.16.1-dev
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF000037A1:EE_|PH7PR12MB5736:EE_
X-MS-Office365-Filtering-Correlation-Id: 403a1471-d506-4a02-ae1f-08df43f1271b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|1800799024|376014|36860700016|23010399003|18002099003|22082099003|261009223027099003|260925022911599003|260925021911599003|260925021311599003|56012099006|11063799006|261102123227099003|261021121427099003|10067099003;
X-Microsoft-Antispam-Message-Info: CCDZc/aaMK9+tghPZJiR7fyL1gXWNEjwZw39BdWWlcjNaSHe9Ndbu8IYF180VtGxd8p8L3Sje0jJaJrwTrX6qAKGJVo5rU10v5emPU46jVLM2tFG9uvjG6sbUmjcfqoByYd2Sha2hJTyYHuyH0OP+yTpQfBUU/cUW/eyUbooLTHT+ZQEcMJTKV/LD5sVAEWrH8jZtp5KCcN/ZEUA29JXLUN3V8ubPWZm3JuKI8VKxdONMup4zhaJtpy7zxX3Ng8X62F8GBjuv0/QLx/SMbeH0q9kNU3CFYmtrU4zP95Pu8apiywR0k1Gf8qnostqyFMKIMmmIuOyVI/TCnfQgNV3C5YXI/w8sGXKLmpS8EiNkniaRJgD0HEP/o4Fd5IgJp/5Z+6YVvssHGSqE3xHD1wlvSjs0KDrxiTvEkDPDNtb4GYc7Z15Npu4gmdskallqGdKWSFNGNO5C7UjX1H2L7HzjqeyJAPj8qQTtEMKpkWHypGeBthZRKcteqLV8telHzABcTrTgmdAeqKUAslh3e2J9s6rmzISDTw8tgxdjuLMHDhGeL2S1IiGfsXsyJ4cByCOLGaF4oNyrR3BXOmp0wCC4ZJuIcFsV3W74S0FIs+3ar8irY1mCbYU7+pIqY1mTzb6N7dvRyjMx+AOvlyRS/ih26YWrHg3N4baXtTvUfwvVzGr2OuTmP3dJPUea+tSQMTIpb2BpYMTTtKeiEvfqOJ3MQ==
X-Forefront-Antispam-Report: CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(376014)(36860700016)(23010399003)(18002099003)(22082099003)(261009223027099003)(260925022911599003)(260925021911599003)(260925021311599003)(56012099006)(11063799006)(261102123227099003)(261021121427099003)(10067099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 0bLP41l7DZTb6Wu1koyXAUB6st4dmkBb/1LaJ9hPnLmezJkQX6JXG9WH0huJUydRQ/oO0tQZFLVBy6nv4P4s9GnAFPM0k4pgFqE8reN3az/9Pp+G83RazfpPXhZaWGQtv7TR09UVknyRa5FcU0QUPselTfZRvc2Ohos2GmkgNrboNwByoIqW8PtQ1NpKqEakjjBLo/KL/ATZfTWa0eOcjX1hcQt81y0YDF+F6FGZtDiF0lUIkZwGvzVUUbn7AHc0QDwQ2nbYE+y+1q7rNyMnlbU/FYOPbkKx+p3Cwm0y6NzgRdsiZ2c4mJnt/DdmrsmmLnS4VFqkXU6GL4kXZ7EDsX87hI1UzwBaWZHW4HbkXYGRWXBUacCfRhxIzvqa0QG12Ugrbeecw1XPEwrSvrJ77aohDpvvpKLxyu7nblscWqTYxvoy4gyDwoWRkwn3Cq3e
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Nov 2026 14:51:53.1811
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 403a1471-d506-4a02-ae1f-08df43f1271b
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: SJ1PEPF000037A1.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB5736
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_065305_913748_F3061619 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Wayne Chang <waynec@nvidia.com>

Add definitions for the FUSE_USB_CALIB_EXT2 and FUSE_USB_CALIB_EXT3
registers which are used for USB calibration on the Tegra264 device.

Signed-off-by: Wayne Chang <waynec@nvidia.com>
Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
---
 include/soc/tegra/fuse.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/soc/tegra/fuse.h b/include/soc/tegra/fuse.h
index 14822f981fec..5063707839dd 100644
--- a/include/soc/tegra/fuse.h
+++ b/include/soc/tegra/fuse.h
@@ -23,6 +23,8 @@
 #define TEGRA_FUSE_SKU_CALIB_0	0xf0
 #define TEGRA30_FUSE_SATA_CALIB	0x124
 #define TEGRA_FUSE_USB_CALIB_EXT_0 0x250
+#define TEGRA_FUSE_USB_CALIB_EXT2_0 0x2ec
+#define TEGRA_FUSE_USB_CALIB_EXT3_0 0x3bc
 
 #ifndef __ASSEMBLER__
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
