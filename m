Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4145E7DEF2
	for <linux-phy@archiver.kernel.org>; Mon,  2 Feb 2026 15:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5+7WyeEN5ByH2AUEQ3+NKeJ39ySybPdyzgalb1kRIrs=; b=i6AeawcIx28TJX
	PPLahoOc5RFB6xU4jrF9+2cXv4oamgVukjsfEGl2tWkacVMkvx0lFJO0GdsUhxeWj+azhZ9BXZuYR
	6JkFcgPRDJnNTFKZB3G1Ssi/cH430Z0GhuAjwjPJMQXZPz40wq8bAAbAW6BszPvqzPKL7cTP1OcLM
	bKk9eEBhimRfh8GPsZVs6hncHbsAovYncz51BVZUrfUULEQlzXrPDHc6qwYF4mrLtynxu8s4kKbiL
	kkxUbgR4zgKH8TGSP7vhSdKncCKnA91UOMvndHu329ODUQa0MQC4w3IajcJBlcEk9nmKBZ5ogFyTg
	oDy3AmWE56dGdV8H/6og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmvvs-00000005C8a-1KQs;
	Mon, 02 Feb 2026 15:33:44 +0000
Received: from mail-eastus2azon11010010.outbound.protection.outlook.com ([52.101.56.10] helo=BN1PR04CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmvvq-00000005C8G-3exd
	for linux-phy@lists.infradead.org;
	Mon, 02 Feb 2026 15:33:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HCtg+Yxj37kIsCeQnB7fyw3x7veEDekT2Wqhh89KhJtXlLQk5daOJu+faRL3xGzbdwlV17k4tzimMDUuD24kCuDEB7VfyBsZTudFDmsubVbO9fHVWqYArnS+xEBCOJE3tu+daCJX4UDIQMIyKnUahZaeTGD/YQGxdzL/xymTk6vVHVlbJDXN1RtZZgjDqVEt+GOlBHlfa4AbYWBFhbmYPCGHTa/ujM2b1Y3qcQRlbioXogs3uNwmbF+TWD74Xd3LpxX0F0o8P7zxgXrnz25I7MFJDl2mMOp30niPdiyCSDcvLNmETiwWFbhMACXgnj+w0A1S+A06xcDHGeBQD//PgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uqemFiGxZQNOhLeyJIQRIbZOeCsOwfkl72CdmunK7tA=;
 b=P32+60JaggZTvH2BZ/iw3RpdbQoI7s6WPe7yGn+6JNxn2tE8VBbyqnt5i9D1bdiiJE3hG6nNutix/bahOVbPYRGHZVGsL5u/AJMO0CrAne01SDYOPROfk7xrptQpKuJdo4gHRM1RykiDuhKg1WHoRKBsKGefZrePl8p7rOcQqyfRoP59X6OVaUfKRVmUx5BPbd5DBZFYuomnu9mSmOrTSf8LFvxs/iS8iBuwLana1YC8q0NZjoJdH/FkiOmaA3x7t1FZFTLFlaiMOY/gXmjB5aC0GaI0A7siWQg7PJvuIiaXeHyZ2AUe3baTn+w0FsX21hteqDOOs42QDwdTyCFdUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.233) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uqemFiGxZQNOhLeyJIQRIbZOeCsOwfkl72CdmunK7tA=;
 b=r1wedTbwS+9bUM03Jick64eXJMD/4pe0rY5Y+rQwzbUXSKKAxRWv/xV3fz3069+hdok/RpXXjjQbKTqyRcIw93GYcTUdkj+mfyEmCaTCIiotymrbmGkECmIImbmsF+crk4jj3wrwndvfifQPJQxbJkxLCRPmSFXOZBWyBMUpdMqmI55oJ+j8k34SRU55byTa4CVvfuqGOJdnokVWRO8ktWhjqcNrgr1AakhrAcZIy2AZK1kXQZb8fEYWMRQscGbwmOILk4tlBIAeW3E7BTfzwltL0xP96DsqzX4DoOa0QyXMe8cQAuMq0kslJfRpik1PaCESHGHWz2HAiFGGEd37gA==
Received: from BL1P221CA0042.NAMP221.PROD.OUTLOOK.COM (2603:10b6:208:5b5::7)
 by BY5PR12MB4066.namprd12.prod.outlook.com (2603:10b6:a03:207::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 15:33:37 +0000
Received: from BL6PEPF00022574.namprd02.prod.outlook.com
 (2603:10b6:208:5b5:cafe::10) by BL1P221CA0042.outlook.office365.com
 (2603:10b6:208:5b5::7) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.11 via Frontend Transport; Mon,
 2 Feb 2026 15:34:00 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.233)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.233 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.233; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.233) by
 BL6PEPF00022574.mail.protection.outlook.com (10.167.249.42) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Mon, 2 Feb 2026 15:33:36 +0000
Received: from drhqmail203.nvidia.com (10.126.190.182) by mail.nvidia.com
 (10.127.129.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 2 Feb
 2026 07:33:20 -0800
Received: from drhqmail202.nvidia.com (10.126.190.181) by
 drhqmail203.nvidia.com (10.126.190.182) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.20; Mon, 2 Feb 2026 07:33:20 -0800
Received: from moonraker.nvidia.com (10.127.8.14) by mail.nvidia.com
 (10.126.190.181) with Microsoft SMTP Server id 15.2.2562.20 via Frontend
 Transport; Mon, 2 Feb 2026 07:33:18 -0800
From: Jon Hunter <jonathanh@nvidia.com>
To: JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>, Thierry Reding
	<thierry.reding@gmail.com>
CC: <linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>, Jon Hunter
	<jonathanh@nvidia.com>
Subject: [PATCH] phy: tegra: xusb: Remove unused powered_on variable
Date: Mon, 2 Feb 2026 15:33:14 +0000
Message-ID: <20260202153314.1634145-1-jonathanh@nvidia.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-NVConfidentiality: public
X-NV-OnPremToCloud: ExternallySecured
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL6PEPF00022574:EE_|BY5PR12MB4066:EE_
X-MS-Office365-Filtering-Correlation-Id: c72caf72-dd0d-4ccf-2dcc-08de62706ed4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|82310400026|36860700013;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?uE5hQM+JA901zu2SXSXetai5q0S/YIvu/MFUwZKtE0eTfAntKT01yQeR8S77?=
 =?us-ascii?Q?ph4T0Cu38vgwz5bu9c+N6hMk6xgkaMFQQmcfOzvWJnjmA4HN3DIU9ASbaKam?=
 =?us-ascii?Q?r0/iV7dpScqN2+yQLOgOrOuoaE88yi6cTj8x+cXJg3mXcGspOP0M1r1kVsb4?=
 =?us-ascii?Q?NhnG6lVA8xAJLrINeIHxnGkHRsv22mmkuITOeQCt6rAiHAplrNLNHXLfnP+k?=
 =?us-ascii?Q?W/goIhfjWFiawww6TJm3A+EP0CEkJOUCfCo2oPEfgc6hfStBiGQieXLWPH/p?=
 =?us-ascii?Q?MMhmgCq6Q7VjZW7Glg7hwKDzMSo9LxkU1rYJyCAS2k/JIN4ubtm1IBrkMPq2?=
 =?us-ascii?Q?heTC1t4p3H+RdskL5ejMUsRi81ELnSG4qo+uJQAHSuWfhjQUHVqxU4kFiHPF?=
 =?us-ascii?Q?f/InHtImS8VVNjpZOHJj/IAKiz+sdtUmzqijJnl4hzkwYPxzQ3m5LpoEwU/O?=
 =?us-ascii?Q?I2IzmhodczX591MLLWAEEnsiQIYUFdOiDrpu4uIdRbPMOaxyaRK1OO29L2LX?=
 =?us-ascii?Q?jHX3ess7mSy0hMJPyISNJSnOJviwINkcwaICA6XaraZp50cXFpQrHEcMbzO2?=
 =?us-ascii?Q?wUeW/YvJjwOBLGuDwQWUhmOHxBfVTDATjcJhts9xpSThf7mcEWcMy9jhJmkH?=
 =?us-ascii?Q?BlrQP0atbMYUvnZ33Uh4364eBEUScwY7Fs24/zXQX25Z4YHfVgmrbdDjQb94?=
 =?us-ascii?Q?Wt2za0U8fjKrgLrRn3NUmXfZFw/BijdK1QdbyJNBXe1J40hq01sJUETF0TtB?=
 =?us-ascii?Q?e0hp+/lCGI85QrIRaI9b2Soie9tR6u0+09PIVu0HrVvQholjxlwuWdrohbuG?=
 =?us-ascii?Q?4L5E0uReexbsaLfd1HcGyrPA5jQs6rtdotKFYy6BNNljVqdCAGVNWOqedBdw?=
 =?us-ascii?Q?BG1z+UOkhJBHpWqtgTdeSW0uL8KUDtGTDgTZJDB1HdGEb7ZhKmUskW04CMte?=
 =?us-ascii?Q?3yJcwU8QUq9RzhZX/fIMOe6YoYLlVAzFm1nBDYC4wxOEcHHm1tP8osOs8QoM?=
 =?us-ascii?Q?gisgCZG3suvGw96JeoAyJ51oNLGNH7eXCq+eKtTvAH41cwUHQDUnVH8qTfsz?=
 =?us-ascii?Q?CaqYJ503c3ZPKkcrIEQmjHIgUqcGCPVbeetd2/LvH3LbSyH/049EOA2iqB4M?=
 =?us-ascii?Q?U8nnGozlteTwlsNOI8jOIxU8DSqLC8e6y3Dkmn0Dkk6WupQOThg53wTiejDW?=
 =?us-ascii?Q?HF+3tBEEyJFkrHY3mPHFwYTUqZs2+MTrMbHcbyQcXJiwMVtW6/Qp4KZ5iii2?=
 =?us-ascii?Q?Pjxf8+9HVt52uSsBUSDjnBtVwStHfcOAoKQ1hxOIlGhdUeJF9Jalra/DxHnu?=
 =?us-ascii?Q?pBpAX+Wcy8cnc+kJArRV3ADvUNVgHTYHrwP+NUch6b9gnEKODnLs8in9rT3B?=
 =?us-ascii?Q?2pfyTWNcp+woHrMnMvjo20KOC7ftpjGK2CPEU/hzcwEBV1Aww0636h7kLNyf?=
 =?us-ascii?Q?4g40jBueGRkOaGxV/1R/GAZcCO7PtlWzrtngXhByKBLd3mi4N3b7MBcR90Lg?=
 =?us-ascii?Q?9TTjHi3gPwDpG2qCC2uyQKxhh84tvynMTJCGRNaJLcQBLC5g4jKChWQkR2N6?=
 =?us-ascii?Q?w2js5S+00tyM9Y16IwRxYBQN0U01QJAqQ+lwaUqRWpFeIA94rk+qwsWRpri9?=
 =?us-ascii?Q?K11XmckhGf01AijCbWXtcNuxUT/Gjt1I+YnVH3t98xFo+hpdnid92PlqyOhH?=
 =?us-ascii?Q?0y8/gw=3D=3D?=
X-Forefront-Antispam-Report: CIP:216.228.118.233;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge2.nvidia.com;CAT:NONE;SFS:(13230040)(376014)(1800799024)(82310400026)(36860700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: sL8//hrVCYNVVQGFn4oZwiA68GOxsOAtEEfo6gLZM/xCp/83tMXi7RpCpEYWTNO7R34PfTuOEzlmD9+L3AkcsPq9tRlAEc2LxTKT867dUCGbyvh55Na6BqaXeKqexh+m6zVvzxcr01QSFCl3a2FVYEPzjU3Jv36GnNkwPQo09EPhH7/WXc7aj48xSi0Z3sILuSR0SUHympU4Gtwb03vYbCu9252aiAw2cIIsGJ0ADpptiWVElgWtgb0j14jVi17GWYlu0dNMQN+Pj3XTHrIe6D7/H5DrQPY5A+Kwbq95Z7vsHMT0ekXPITbwSfp/ANaFnUL2ATRBZmYwPJ900vBQ/as2NFHd3g9+C7hCccnq/mDCIA3iEEJwm2QLiCURsXcHaFb+ve+dxQ4xrnNQ/2xUfwqPBYJDVRJQPjOUQu40aKbtPHpPJH2o8FB+FrB+WnE5
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 15:33:36.6589
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c72caf72-dd0d-4ccf-2dcc-08de62706ed4
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.233];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BL6PEPF00022574.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_073342_918505_DFFE29B0 
X-CRM114-Status: UNSURE (   7.71  )
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

Commit bbf711682cd5 ("phy: tegra: xusb: Add Tegra186 support") added the
variable 'powered_on' to the structure 'tegra_xusb_usb2_lane' but it has
never been used. Therefore, remove this unused variable.

Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
---
 drivers/phy/tegra/xusb.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/tegra/xusb.h b/drivers/phy/tegra/xusb.h
index d2b5f9565132..cd277d0ed9e1 100644
--- a/drivers/phy/tegra/xusb.h
+++ b/drivers/phy/tegra/xusb.h
@@ -69,7 +69,6 @@ struct tegra_xusb_usb2_lane {
 	struct tegra_xusb_lane base;
 
 	u32 hs_curr_level_offset;
-	bool powered_on;
 };
 
 static inline struct tegra_xusb_usb2_lane *
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
