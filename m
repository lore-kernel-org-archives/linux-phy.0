Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 216D8C2D0CD
	for <linux-phy@archiver.kernel.org>; Mon, 19 May 2025 09:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C1It0/0utJRIOZP1UJxKGbVbhc/gLsUWURSATFJ+q2k=; b=ILupCDzwKjEbBs
	MZPLuWxw8qol/DBqYwbbWUSO03X36Bhg0B1XONyudNRIw5vvjIUvSGxlXU7qNKDMK5W6EoYmKYI2t
	fi7x5Zlzp/2xaqDoNGmTV6A/8ePImFds0IVfjHT8B1PYv3u2oDSpk065BHivL7IoNHZdtWWHTk7P2
	30I2JJwik5ZFUoKD6niIYkH2+0D03vV/wroxm+7jMupV5LDBODopDL+3FiekpukQxcuM1/1m2LlB/
	m9P8sn+QuDxevtgPtztY9EBv84dMDY3DCe9HsLCTLQ+upI8DPVDRR2mlHE7B41gZV5MX2viGJCOoz
	pv5UlWoXH0WtdjBo+raQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGwWJ-00000008URy-38xn;
	Mon, 19 May 2025 09:10:51 +0000
Received: from mail-mw2nam12on20603.outbound.protection.outlook.com ([2a01:111:f403:200a::603] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGwVT-00000008UEg-1BFw
	for linux-phy@lists.infradead.org;
	Mon, 19 May 2025 09:10:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N7Hg9O1zm1MtoPyg+q1Rzv3RbA0TWRi9DY3wd2eF+1UvP/2ZDY1BcFlLuCGl0SV50B0+7nP5nrYz88oHGqrQ+Gg1O4XmGIX3ekVZ1M9NOgimg896soPKyFtTMtkf/Xbsm5DarVtGdKN359kFG3E9wWx/7BCGDd5jxN64N/BTelL5QGMDM7roKfVIJW9JDAdXU26oyeEcoySceq8/4YUZvBj9C4InZIYn5McxmCzT2JKYitLoB6lp5S6GfTY3d8Yq0/Uqc5ZhisswWB0KaFmTG319cP0BfjwMfCD1HEma3ynEiXRdMtBh6dDPlmslGWzeqeYQxXogYobgW4iFOHdboQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=efi17ZFOWO9yCCA9n/YYT9TjiiEbWdcdPJTvWwTkOUg=;
 b=QdhIL26TAtlTj73kpzTIXQKOMmmzOWPNdI7Hap+Ul2GMfftpH1I8QY9rYvSgeQFBtJDrP2ERxoPBj/db0Luajo5kXVUDsTdQFGx3TvE2UK94lmBanePpbBw7NcTDXH7BLYGZePG/gk1vkIH9h10pNOpJE0LzcjYDczjQoBImMZt29r61OLDlo5pF8XHcYZ+WOShk2J6Iao5ROo17K+Pc4HZMbYk5eL+UIAeqXxBpTcezVOrIiKJyzUV03RYEVBs/MM7aK+oJwlQpErDVQhW44PHR2DlpTNhWw2jQ1xCUz3B17hYyJ5hsoNMgshWpa69eyXx/z+Jkq9urUVEQ0rc/4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=efi17ZFOWO9yCCA9n/YYT9TjiiEbWdcdPJTvWwTkOUg=;
 b=jZjwpQaRKv33oq8Bdn0HtGxcbpCNn4x35sLjYE+d5rHExaj2NbGcDg4jEXbYFrybIIHDseJXwUTn7rfQ/W4EYb6oraw+xSch+vuUtHs6Dab4bjWkyFfQSi3TC8dYjLUTO7/mYs9vHsEaxc0DGscbwp5/JSSdnuL/ue8eikmqVswLdh0myMPQD/Y+8u/xWMXxV9vfHBkJYhXjUW+3NJd5Xp1GMxtuWveNS60MTszfYUvatUha2idXwFRASIA3o7bzJC5nmIZbAcWfckqBTFhlg65ai6iepZpRgbrc5V6JScy4xMyZHlsrHX/sfbqxmeI0Su33VAa3V7gczrWS0cRegw==
Received: from MW4PR04CA0378.namprd04.prod.outlook.com (2603:10b6:303:81::23)
 by IA0PR12MB8896.namprd12.prod.outlook.com (2603:10b6:208:493::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Mon, 19 May
 2025 09:09:52 +0000
Received: from CO1PEPF000042AA.namprd03.prod.outlook.com
 (2603:10b6:303:81:cafe::9b) by MW4PR04CA0378.outlook.office365.com
 (2603:10b6:303:81::23) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8746.29 via Frontend Transport; Mon,
 19 May 2025 09:09:52 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 CO1PEPF000042AA.mail.protection.outlook.com (10.167.243.39) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8769.18 via Frontend Transport; Mon, 19 May 2025 09:09:52 +0000
Received: from rnnvmail203.nvidia.com (10.129.68.9) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Mon, 19 May
 2025 02:09:33 -0700
Received: from rnnvmail203.nvidia.com (10.129.68.9) by rnnvmail203.nvidia.com
 (10.129.68.9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.14; Mon, 19 May
 2025 02:09:33 -0700
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.129.68.9) with Microsoft SMTP Server id 15.2.1544.14 via
 Frontend Transport; Mon, 19 May 2025 02:09:31 -0700
From: Wayne Chang <waynec@nvidia.com>
To: <waynec@nvidia.com>, <jckuo@nvidia.com>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>
CC: <linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
Subject: [PATCH V2 0/2] Disable periodic tracking on Tegra234
Date: Mon, 19 May 2025 17:09:27 +0800
Message-ID: <20250519090929.3132456-1-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-NVConfidentiality: public
X-NV-OnPremToCloud: AnonymousSubmission
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF000042AA:EE_|IA0PR12MB8896:EE_
X-MS-Office365-Filtering-Correlation-Id: e085b13b-d8e8-4cd2-1b03-08dd96b4ea19
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|36860700013|376014|82310400026;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SWJheGFIditTSHVINkdMeGVnNUZ2NWorZFY3TkJ5NmxBcStMbGV3eTNmRWg2?=
 =?utf-8?B?Y00xTmY1b3Jzb0ZYODZtdVJiUFF1TmRPMFF4YXZKZGwwaExTR3N4bUppb0RD?=
 =?utf-8?B?QmJGWXFTK3ViVXJZZStoeUdVa20raE5GVGIzdU9ZY0l5ZWhyd1B2UWRzdGgw?=
 =?utf-8?B?dCs3V3FwaXROdjdIZ094MWNJbzdmZitUTTQ2YzVnNncvNmVwbG9Sa2lLN2VR?=
 =?utf-8?B?Q3ZSckxnZER1R2RlalJOZm4zdlZ5RFdGckYxUGQwQ1RXVGV2WDR0TjhUUzZL?=
 =?utf-8?B?bkZwQWIyL3FMZjJwZFRMM09FZGh2cm9DSUE0ZHpMdXRadzZhWFVaOVlOdXU5?=
 =?utf-8?B?TEhWeW91cXdzUUluLzVHeWRBWGJ5MWFsaFJJYmJIREtmK05aRDQ4S1JiaTlQ?=
 =?utf-8?B?RGhxVWx1aFIxWmRGTWxZQlk1Qm5UVElidEZUSU1iV2JiWEJFeEdNWG9hY2VC?=
 =?utf-8?B?R29KNjNJMyswQVNSQUxkbTgwendzRjhRUUwySXVDcDNFSDZLM3c1WlFZQkp3?=
 =?utf-8?B?bkgwRWU0bTZRcU9LUzFMdnJmT1pMNU9OdjI1RFN3T2lsREs1WXd3YzVxNjV1?=
 =?utf-8?B?bkVmQXdXSHo1WWVLcUpRZFo1WUJPWURCV2ZRVnFRTXBsekR0dWpsVnVpdElz?=
 =?utf-8?B?MVFVRitlVml0bCs0b2Nsc2d4eXpEdjhUVENsTnFzbGE4U2pVT0M0OWVLNHZX?=
 =?utf-8?B?dWtFV2c3bm85anpsN3BMcDV2Qm1IUHJXZElobDkvbS92UmpNZlF3YWV4UDZF?=
 =?utf-8?B?YVJGQ2NrblZNcEJwWG9Gam1scTYzN1BrUUlmSEtVWjc1WEdzRUc3Y1M1ZlpH?=
 =?utf-8?B?ZytNQ3JQK0tnYWI3UVF1aitCSS8vbktTcXJoU2Y0bXIyKzV6SUNyK1BkMmh5?=
 =?utf-8?B?bHJIL2ZTYU9vK1VnQlI2Y2xzUk0xeVNoaGg5aG9rRkFKc1hiM1Z2eEJVeWFj?=
 =?utf-8?B?bGd5UTFOdnRkb1JqTE5iRkhmc3RiKy9TclZHcUxONFR3aTdNVWRKTE54bnZo?=
 =?utf-8?B?d1NkblprMzZqdGlycDhhVm1uOWEzVUdBTGxoYmFMdzRmYy9LcjkvRkVJWTFG?=
 =?utf-8?B?REJjVUJBQjlmYVc5K0x5d3NrT1lHR3BRSU54bTZ2bnM1dkxhb2pjU3dualVE?=
 =?utf-8?B?SnNmeStYTVh5Wld2RkFKZVVLR0ZsMlZ2YmIyVU9MZm1QbWY4c3kxL3JnYkpt?=
 =?utf-8?B?amFJdEFhVloyMnIxeld5MmxwRGEzUzdlb3pIUlA3NWs0VXVUVFNMZS9MOWg0?=
 =?utf-8?B?Ti95ZGhocmZQN2VidWkvZnMveTRDNWJQOFpPWVlwNWZsNHg3VUpCaTNyV0dN?=
 =?utf-8?B?bFE1ZThNTDFzNndLcHFIbXBYNGRJS0Y3WHlDYW9xeWJuWktPRHY4VGRBamZ0?=
 =?utf-8?B?OXE4aE5tTmFIQnlNZEphVFBPWDVabzFRbzF0Q3RmakJoa3RjWkhIR0hGWWQx?=
 =?utf-8?B?dzFGd0MyaEJsZU1lT2dxeDJIYmZLTXFvRTArbFJ3Ny9kU1VZbEYrK1FsTFZj?=
 =?utf-8?B?NzdrWDJ0NmtKbWJKU0Z2cmlPMDJMUVd5QXlxUDhXb0hCcWxRUCsrdWgzZEQ1?=
 =?utf-8?B?cnFXRlZ2Q1NXWjNEU2FyZXFWWmYvSkFhS2hncndzblN4LzVVYUNWMDR6SkVO?=
 =?utf-8?B?aGVpUVNhcTRoL1hiTUhzSHg1S1ZDcGhzQk9WZStRbkdlTHdGdFhkRW1HL2xi?=
 =?utf-8?B?WkU3WSs2aGJxMWw0cDZIVFVhZytjQTBUMjJBcy9tQUpLV0prc1hhQys5eE9u?=
 =?utf-8?B?OFZKZUN1elJubW5QSGYrdU1pMVVPMElqM2R2TG56N2Y4UnRaY24vRXEzSDNJ?=
 =?utf-8?B?MGY0d1h0bVdKT3ZWWjRSczB1ZlRIeVhHS2ZPMGUyV05tWTF5ak44WkMzM3Bt?=
 =?utf-8?B?dXZmcHRGYUhoY3VZTDdrRzJhT1VJTkF5MEZZZTk3ZkRRNUdOWlIxU0paUWhO?=
 =?utf-8?B?N3U5L2ovNHFzQmRwUHkwcWZDVGgvSncvN0VJYWQ4MW1XNmxvcEFHZlpLU3Zr?=
 =?utf-8?B?UmZGcXN0M2pBcXhpNDhTTy9aNS9wU01iODg5aDJxKzZuRWh6Mk9lbXhCZFlQ?=
 =?utf-8?Q?8/cCRG?=
X-Forefront-Antispam-Report: CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230040)(1800799024)(36860700013)(376014)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2025 09:09:52.1320
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e085b13b-d8e8-4cd2-1b03-08dd96b4ea19
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1PEPF000042AA.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB8896
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_020959_318230_1B06ED28 
X-CRM114-Status: UNSURE (   5.48  )
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

Decouple CYA_TRK_CODE_UPDATE_ON_IDLE from trk_hw_mode and disable
periodic tracking on Tegra234

Haotien Hsu (1):
  phy: tegra: xusb: Disable periodic tracking on Tegra234

Wayne Chang (1):
  phy: tegra: xusb: Decouple CYA_TRK_CODE_UPDATE_ON_IDLE from
    trk_hw_mode

 drivers/phy/tegra/xusb-tegra186.c | 16 +++++++++-------
 drivers/phy/tegra/xusb.h          |  1 +
 2 files changed, 10 insertions(+), 7 deletions(-)


base-commit: a5806cd506af5a7c19bcd596e4708b5c464bfd21
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
