Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C21AC5475B
	for <linux-phy@archiver.kernel.org>; Thu,  7 Mar 2024 03:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SzLOXXTZR3b72tzsE/yZMw4+RuEJikhbh1CZNsGBxLY=; b=DgMKq91RthLLBa
	ZFUY4DjdokXjJ/1RYUcyji+JkJ8kCGV3uymgik8YWmybMk0C8hOYggI+2HxfE4jHLHD13cumMXa/V
	ra0Op/wyGroECFNWUglvnLsUHJ72EctV19FB6muAFByKGf7QSALwbN3AKrN5a1psDAUpseyp2kjzx
	Im2JtIE3AcURfWM6ZUkALKj+dGkY383VFXagZNNYKU442PCnswAjM/KTfY2O0V11ik9v5J2gg7bIQ
	uhz7hwpbMG3J0VJAOGD8ZTZhEsTD1gwJqePA18iiMAD117/IQ1gHoaT8ANrHlABtLtDuj19s7J+EW
	Zr1CY5TE8GnxaZ3kSYfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ri434-00000002lRl-1Izl;
	Thu, 07 Mar 2024 03:03:58 +0000
Received: from mail-mw2nam10on20600.outbound.protection.outlook.com ([2a01:111:f403:2412::600] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ri430-00000002lQc-2tlW
	for linux-phy@lists.infradead.org;
	Thu, 07 Mar 2024 03:03:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dXOzTeKzQVcWlQdUgq424T0oafjbFgqMl9lBO68OUHxf1YlgRUeU+uS0ORZzIqI8FOgvhQSZ1ZUwdHQwt40vMzDEEj3rwONnv9uYgtz35WHYJnviiZKx8YDiPro+ODRR57EiLUeRAhM/2d6cDJ88Dv8jPI26NDOLbFMaHG8f4OmQfany00tclH+LM+EbVnoOQDLPLXWU0K3hMu/gCJcojle63EFR8F3GTz4tc8XyMD/8FjTScDVyEHoRUQLT4V42NZsZJ+E4LFZSXrrRQUDMD8AbbJ/7Gpmn1wmNk8/LN4Oqyfp8VcMiRfy+W9/8B+DtKJdnCsMCcSc/6zwh9Uyk4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SO45lOFvJcLZT+DGum/ICeQlwjklBsjkwhTc+DYnH1I=;
 b=BIv1Kw8DZcf0NtFt/2PSQxrHpy8aZNxxaHjY5RDmIVvFsXP+eRQu3mAkToVMhDOqxdhbVzGILf6m5bo3kwU/hGZht5om0uhM8EXxXdSPq1Q2mDd1VLk5S1lnmFPEZvDyjtJbD34Ea1wv+1NEQhKN8j0+CmWPDs4XIbm91jQ3l3FOp9/JEx9++FGJwrHy1OAIDbvo13RwnK9T5KTiUIPW1DOVtQh1aXvMK0c7MCvH05dxHWkPiB0FpihTVNQx6CRjav470lG6TEMTuc2uVKsxLJjH/PPw+IG+jr8+fGERm07DNn2d36F31WQlmQeAADAAAnwyxL/66ZKfVQN7FK4XBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=gmail.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SO45lOFvJcLZT+DGum/ICeQlwjklBsjkwhTc+DYnH1I=;
 b=IjrPf94Hmc/BU3SOjdjrHX/vdO1eHEAdN1QvgDpR6Y2ImQBBVvp/u8xHEHsr5xE8oyc4+s1IHq84uroHyp0xW+I9mMUwrJnSrhGhg0SZgVmZEdKYWsrrUQDkU7qvWRHxvKeCP1BLumtUzugZRnMnUQm+TLWaszqLFjgP9Wb8TSE0TWbaTpcqkPI2p2VKKyS8xi3d+p2/6tkJi+cse2fEhe+6kuAfmUce5E1IObr35sbZAfZff3ToH8Ns9oKVvGaTaKwV6ebXYmiuzrOwc2WzXNeUsgovF7vb0kyHQh1G3erYp8nGK7BwGP9Zq1mCZus5fzXTbPGA/seLzIHehgtI9A==
Received: from BN9PR03CA0285.namprd03.prod.outlook.com (2603:10b6:408:f5::20)
 by CH3PR12MB7739.namprd12.prod.outlook.com (2603:10b6:610:151::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.39; Thu, 7 Mar
 2024 03:03:46 +0000
Received: from BN1PEPF00004688.namprd05.prod.outlook.com
 (2603:10b6:408:f5:cafe::da) by BN9PR03CA0285.outlook.office365.com
 (2603:10b6:408:f5::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.26 via Frontend
 Transport; Thu, 7 Mar 2024 03:03:46 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 BN1PEPF00004688.mail.protection.outlook.com (10.167.243.133) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7362.11 via Frontend Transport; Thu, 7 Mar 2024 03:03:46 +0000
Received: from rnnvmail204.nvidia.com (10.129.68.6) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Wed, 6 Mar 2024
 19:03:33 -0800
Received: from rnnvmail203.nvidia.com (10.129.68.9) by rnnvmail204.nvidia.com
 (10.129.68.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1258.12; Wed, 6 Mar
 2024 19:03:32 -0800
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.129.68.9) with Microsoft SMTP Server id 15.2.1258.12 via
 Frontend Transport; Wed, 6 Mar 2024 19:03:30 -0800
From: Wayne Chang <waynec@nvidia.com>
To: <waynec@nvidia.com>, <jonathanh@nvidia.com>, <thierry.reding@gmail.com>,
	<jckuo@nvidia.com>, <vkoul@kernel.org>, <kishon@kernel.org>,
	<gregkh@linuxfoundation.org>
CC: <linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>
Subject: [PATCH v2 0/2] Fix incorrect USB3 phy parsing in tegra-xudc
Date: Thu, 7 Mar 2024 11:03:26 +0800
Message-ID: <20240307030328.1487748-1-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-NVConfidentiality: public
X-NV-OnPremToCloud: ExternallySecured
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN1PEPF00004688:EE_|CH3PR12MB7739:EE_
X-MS-Office365-Filtering-Correlation-Id: 3268c1cf-1ae5-465b-61bb-08dc3e5334bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OBpRIP9Q1Y3oOLXlQBRgLkxDcSFec5x3b45pCk3oWhawSnTBajdwCYAaR4O6bNQRdqpWJgT/OKih8RAluys6Sqyd3iaSFhu5K2o19W6xnmjMQb/9I8v4LH36f/w4WiFEn2nZuqzOPRiHrA+pad6+1W0holErXyyW5D0igSLEtgZyuxe084PYlZaCKIfUB5Q+rrtLzXlieZEXUsDM20BCmvsAr5s7/2m1XYujwPX//VF0OO276ETKxzFLt3nGtC+UOPeZ3or0ryt+gfNAUddjewZM/OtXvbcPTtOdpFYAwQk2Dg31TyZBONXkik7oI+EzldVTQh4VC3M8fjswg5jWP9Sek3drTgXLhkbg7MJRWGD2DlOQyUKKQMm+a8ozWQyANyrWaqQOTDQXNZZq3qnECE2GqAjcdtM4xGm7kseKtuiasDGh/Zktz+7a+42M76pYYHXLOVXUeVA8Uc1fq7a0UTHfDAZ4Nk3iwbqiRLvfBdjK44FD97xvyn2IYRkV83H0NlD5chipWLe+kxcngbGYL5HpBINpgsLLAd4khWqETfrCknpRygzhx3ZhgJUZ8dQhun7hm4btKcoWiXmG/OQJ5yAIEO4qJj0ckTZznC6si8YrcUhg6i/uQZxXNjgaErjKMWZ7umJTinxkzncbwUIVO5IzQtZAGJFkDuidFXPlfp+HipPvPR2gG+5h/+3S7I5qmoqFSw6KJ8pJpldHzPXzJZMC+B3jlkKaPTgSDViHM0hoXtzguX2c2c8X9kE1Eqpr
X-Forefront-Antispam-Report: CIP:216.228.117.160;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge1.nvidia.com;CAT:NONE;SFS:(13230031)(82310400014)(36860700004)(376005);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2024 03:03:46.3089
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3268c1cf-1ae5-465b-61bb-08dc3e5334bf
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.160];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BN1PEPF00004688.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB7739
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240306_190354_760789_0D5B01E5 
X-CRM114-Status: UNSURE (   6.55  )
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

The patch series introduces a new API for retrieving the port number of the PHY.
And then utilized this API to address an issue in the USB3 PHY retrieval logic.

Wayne Chang (2):
  phy: tegra: xusb: Add API to retrieve the port number of phy
  usb: gadget: tegra-xudc: Fix USB3 PHY retrieval logic

 drivers/phy/tegra/xusb.c            | 13 ++++++++++
 drivers/usb/gadget/udc/tegra-xudc.c | 39 ++++++++++++++++++-----------
 include/linux/phy/tegra/xusb.h      |  1 +
 3 files changed, 39 insertions(+), 14 deletions(-)


base-commit: 90d35da658da8cff0d4ecbb5113f5fac9d00eb72
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
