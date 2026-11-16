Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E2C606A323
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 14:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=U4OgbMYq;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256 header.s=selector2 header.b=HTJtP7Sj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:MIME-Version:Message-ID:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=XPGFrdTmCfwFcrbOWRWEjAi+fvX0z0qYH8C0tQT4SWE=; b=U4OgbMYq1ZkBkSkgi6WJdUkJA7
	bDlJkyzMgbOrKj2Kjmd08iRrLJQID4E+BI/LolFO3koNMeBT9ZSL7jQzpZn0F/Vle1aqU32X/+Jfv
	UMcIAfNyT80q0uX9Ns+SE5Ulj4UkS3lrfobELw12hOyvpYHTnApbbH5e5AaX/fiMmIuWcmnJg3REF
	g/osg++kZMVi9IFkJLEfzgWNgQW5og+0Tor9sw8SA4e0gJlFO53KXiIFGbDusng+IfBeRLJB9om0C
	WsonoQ+Of6EfIpnFJKrebgBHfcKzBEFoe2ZverHhE9EDiBSsi2VgWjRHXhV1Z1ztoDnlJFTy+0S68
	Opo2nPNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSy3y-00000002wJS-2KIz;
	Mon, 16 Nov 2026 14:52:06 +0000
Received: from mail-northcentralusazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c105::7] helo=CH4PR04CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSy3v-00000002wIg-4714
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 14:52:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pJFkJWXlXPCJz24d1Xmy67iHevwekf1myKpleseRtg2K/LSZo5L3z1g3SqLUyk+Rmp9qQucOY+CxXOR20K5F7T5EE5bWzF1ZqQ3LUyAvXuIllUbFOr4EIkPqqJNnMZ6rAD0SyQvtAivP/VP3K3/4xTeYpKps35GuCGh/M10/I9Znb70NAZBSDBMXG4am0909Jkcjn9aHSBFWA/v1apeRlva3WQvD5QLzOezOAeykn0IHk+y2wAwMmlhBa1IxChlChjInAbpYCG5B40r+z7dz2H7odPuL/cx7abDtXBuDs5VDP+nVYX2n/hpHsy1mWX5ONhRCF5oAOB2zCEz23zrFGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KRrh5C+ZhWN5a4+Bqdlnx8pU3BCL5x2ITxz4paJSZ+w=;
 b=W4WCfztpnF9L8H41MTFLQtH1e06jnq087HmZTZUAX695mIvpAQuq8JL6k/Js9zxF6SeuBn6JqAJO5hh1mzyDMVYo4/JTT4EWJQSeW0xSEUcDDbB7tzACMwOeq+Tvhnz442XgZtQ558lywmKsxJfJmR0q0F9mq5NHHsgOHT6wH0MDQ6BjKNfPZEDXDMCgLanw+7FUjU5mJgieLdoft9X/2vxj65vLEzAz1tpsNo8AyfiWHYhhMQBfO1SUWst6a9eR+yshaCBxlAGvQbAUIA9p3dqiYL19qnSqQB7en79Cp7fqC5XQ2Whd3nlI+S+BzzFY3G5SzQT9IeBXb7hBVo36Cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KRrh5C+ZhWN5a4+Bqdlnx8pU3BCL5x2ITxz4paJSZ+w=;
 b=HTJtP7SjkDNv3EEV0U99nTOiHb1SaUE4I/VKFWisyR8+sea7Qzh8dVSYiICFMGH8FZYznMq+Yaw1t9QUTgMiF5ASJMddgzbJuREIqoVixrumV7wtY789cXnsGgSYFXP95yvYUBOJLinsh4To4gPN7CE+3ZY5Ouakrd/QsWMi0vAGxAcV123HaZVbbuLnyuux5eHSJaphmuntWymSEI76al2LzvRJyDStrwLdokTlZpYvTGk/tUGfgZpZDwIrtZJA/siuDThScJSh+/VzvKANsQjESbD4u7GHrcswrW4O+NAmYB5LrIr4KU2Ec1jUpz+rH4iLyAsz41u8zEhznR41NA==
Received: from PH0PR07CA0040.namprd07.prod.outlook.com (2603:10b6:510:e::15)
 by PH8PR12MB7160.namprd12.prod.outlook.com (2603:10b6:510:228::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.615.13; Mon, 16 Nov
 2026 14:51:52 +0000
Received: from SJ1PEPF000037A2.namprd04.prod.outlook.com
 (2603:10b6:510:e:cafe::75) by PH0PR07CA0040.outlook.office365.com
 (2603:10b6:510:e::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.615.13 via Frontend Transport; Mon,
 16 Nov 2026 14:51:51 +0000
X-MS-Exchange-Authentication-Results: mx.microsoft.com 1; spf=pass (sender IP
 is 216.228.117.161) smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 SJ1PEPF000037A2.mail.protection.outlook.com (10.167.244.134) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.615.4 via Frontend Transport; Mon, 16 Nov 2026 14:51:51 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.56; Mon, 16 Nov
 2026 06:51:27 -0800
Received: from [127.0.1.1] (10.126.230.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.56; Mon, 16 Nov
 2026 06:51:24 -0800
From: Jon Hunter <jonathanh@nvidia.com>
Subject: [PATCH 0/2] Update USB PHY fuse calibration for Tegra264
Date: Mon, 16 Nov 2026 14:51:14 +0000
Message-ID: <20261116-tegra-phy-tegra264-v1-0-a82b8e10a553@nvidia.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAGIY+2oC/yXMwQ5AMBCE4VeRPWtiG2nEq4iD6mAdkBYh4t0Vt
 /kO818U4AWByuQij12CzFMEpwm1QzP1UOKiSWfaMLNRK3rfqGU4/6VNrrSFs4Vj5EVH8bh4dHJ
 80ar+HTY7ol3fEt33A3vS4jt2AAAA
X-Change-ID: 20261116-tegra-phy-tegra264-2bedb8d1e48f
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
X-MS-TrafficTypeDiagnostic: SJ1PEPF000037A2:EE_|PH8PR12MB7160:EE_
X-MS-Office365-Filtering-Correlation-Id: 9fc9512a-aef2-4dba-2888-08df43f12609
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|23010399003|36860700016|82310400026|376014|1800799024|18002099003|261009223027099003|11063799006|56012099006|261102123227099003|261021121427099003|10067099003;
X-Microsoft-Antispam-Message-Info: 8K25NhGELzuVy5paABFBcEHB56ylhR+0jKwk5nqkaiAP7mjgVhwJTvG3cHYh6nm8XV83HCUmAN3KFF4wt8RgpgfT7TqpPEXpXxHDk/DK1UpcXM+UXPgcD1QqCbxJQva72it+QXTvWx3e8hkW617izWdIniAhRNrInc+xQ/R/SBAUDQDUhYgtPX1R72PQudrTDDxyBETrXhF/DqznnoYnx77erNaygQyVAfeUxsMmZ8eVD/QovOYanQEo7lTIzNYkeu4ur4crBOJY3JqhJG52zvMQkXts+LPQPZab7c1+wIMm35NLRZzYa2s9s7+MyJsIS1+GmPTDiEaPTMDYMVi9IDzwDtaosa8SdT0f3OqiWZyL8pWg99yWSlnevx9yZeSjO3fnMUffibCRPax8F9upLKfyvDOlu4+1WF7QrcWcTdb9BpKBzMBTZhh0lMbF4gyxLOmDp2xbVzAENHJBXq1TnjXkZxaruqT/ow1tcoooGPbPtzPd4whsf2ES9d1KmSevd7Tv2UmB5utJ7Xa05sN+oB0bIip24j9668B1H0Lxd/1OAdj7eC8jivUnCBeMVzf7yvtzR1LkotF2mTIqrB800jm/BLCsMAO/ohbM8MGtuJKni5vl3jnLnuudldaQ/zM4nGLPliTcWtmTxwq6WWPGYLu1ZUNRyqka/U02iya09xX6iNFR4xQ6tFra2O2eIxAa6PrHVxZqjDJvWrpFlYLiPA==
X-Forefront-Antispam-Report: CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230040)(23010399003)(36860700016)(82310400026)(376014)(1800799024)(18002099003)(261009223027099003)(11063799006)(56012099006)(261102123227099003)(261021121427099003)(10067099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: fRMI7xJnniwKsHe+btGU3m+tPzbokKRBqYx2zUetfLMwGo+h6Bh8nhVGLVY2xwT5errkxKkQi7mWrp+VGQVPhm5nppj49ObO0lqXnPj9wDWwpsc2tyojHEsjJTyis+13rSeuuPAsVJnGL4qOh97D8kE+zPSpVtsnttjMIfPB+xovzjWib0OF6P4q6p647DF1adHEg/1wEkzO58sT0GwGAkSj3/mfIV9dbUBoUFCkR0kzAf7xjOhDyXXl/qVvVxuW8nW/mat09S2l4UU//kMKpQm/nTAnv4t0my2fCmtpq1htGUVxkKLYtubX0+bmGRGf8LSZKIeZb9pVLRf3bKcI1jsD6RwHOQhez+iM/gpK6RH+quYC18UkeYyAuFaoQg5JuRtN1N1rt7vdRO98q02+YWTue3lVq+eFXdDcwyqHS9AMvLF1cu3l8sryihcXSGSO
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Nov 2026 14:51:51.3904
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fc9512a-aef2-4dba-2888-08df43f12609
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: SJ1PEPF000037A2.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB7160
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_065204_025738_04706DFE 
X-CRM114-Status: UNSURE (   7.21  )
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

This series adds additional fuse calibration for the USB PHY on
Tegra264. The first patch simply adds the definitions for the
additional fuse registers and the second patch updates the Tegra USB PHY
driver to use these registers. Given that the first patch is trivial and
there are multiple subsystems touched by this series, it is probably
simpler to merge both via the PHY subsystem with Thierry's ACK.

Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
---
Wayne Chang (2):
      soc/tegra: fuse: Add USB fuse calibration registers for Tegra264
      phy: tegra: xusb-tegra186: Extend Tegra264 fuse calibration

 drivers/phy/tegra/xusb-tegra186.c | 57 +++++++++++++++++++++++++++++++++++++++
 drivers/phy/tegra/xusb.h          |  1 +
 include/soc/tegra/fuse.h          |  2 ++
 3 files changed, 60 insertions(+)
---
base-commit: 84abb955b1015477aa11a96e2f3ac1b938b77f48
change-id: 20261116-tegra-phy-tegra264-2bedb8d1e48f

Best regards,
--  
Jon Hunter <jonathanh@nvidia.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
