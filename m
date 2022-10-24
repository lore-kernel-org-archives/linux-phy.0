Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D4EAC38A2D
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 07:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/yjnI6iy4eZh39J7WifkKsUe7Llb48n8BZENRUVrTpY=; b=t7ToEDktZiuxsk
	+RK3q6MKRsMo06uH8qR2By5H/vXEHdm4DxP4VpDxi2kJslJEEEV83FHZOsBBZkO/x82PGGTZ7pKDi
	z7F3BHIiH9uoSBGs/VYYfSAduiBcw7jcrCRjBNLf/eJVZBkFZO0QcpXPuSNAU6/feG2tviNKbM5Qm
	ZpIlJ7aO7z9fj6vTGiHpdE3siDWU5PbuD8GwAbH7ZQrIr8uELRRN4zRPaDXg3TOAtxy6D5ziTgQrR
	WpIwjvWvC5aKABP3r3dqpIyXo0JHjpbgrc/TvJU90U/dn7+vWphn/yj++JTj07KKkHGrGulqhsxWf
	OSkJ4Ef/b5pCs9RrKKtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oms6I-00HWUd-LF; Mon, 24 Oct 2022 07:42:22 +0000
Received: from mail-dm6nam12on2083.outbound.protection.outlook.com ([40.107.243.83] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oms6E-00HWSJ-Kx
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 07:42:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SV7Om4jbultOKD7fEKquOjJi3ae5XF9KHS6rLnavHHZAITfzZQJ05B5iP7jbQcooQ9oVDZVVLnIihgPbq/WcWcWfgqfPoU0CumOHOau2K1j7EmgtZi+CgmHjSBEqiTg/HLyPt83Xm6wrTBciWQYgqXWfFTrP4OmEpXfLQ50ZaE+lGv+Iot8Ap3p4tauRAMbsaxGkfUD3TpaIIlEwxJY7TLVAvdTxFXn7Ic8W5gg94BHrWvr9hBEoP10zYqEF7rZtSa/VgnNgtj/mQAMPE0pNDXb/uhCWF+PYUBQJznNbAanWvYSlZDFYTvsjB0OJ0sk5H04Kg1lmbC8MYmEfo35iWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+rwtb7/RpN/I5cxrexV0M2/iXpnfSaH0+kSxcLazcdY=;
 b=hmtxNecDrb3zIQLJWwTQVq894KfEtRkr9GnS4Eo0yLO4/vFNjhc+p6nzWz3txLUGhBeqrI8x0lbarqClgV7IEKLHTWlLQXIUYJOTUGpxsygMfPRRBPKjgUyi73Wwaw95wY57Pv/cl1e/QDwUn86WkLoCvmmml873PYdIjx3qLBr7+5M0P5a8JC/ZaMFMwud0I8u5C/WWtM8yLineqP+JdIkl4ST99BRbogPYqJ0lMmDrttW7Hc+xPl1oRY/1MjzUUn5wrOxcOutleWl2rSPSf35iJRLwTx8A48+2CpvQlPpLS/arvGkrmxPz/Z3tHNl3xPGjtCdqhXQogyYvT3npgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.233) smtp.rcpttodomain=linuxfoundation.org
 smtp.mailfrom=nvidia.com; dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+rwtb7/RpN/I5cxrexV0M2/iXpnfSaH0+kSxcLazcdY=;
 b=ExOFtQoWPFlBhIViIavReGQpDn77vXSIMvYDLCPsXJDERC2A6fXcrHYaO8LeEdReN6Rx1KyDwLl0NLZDe7U7b7vgqpKGbTS4joBJPCiVqqi5YFP62BP0VpTqgvdcAE/LqZp5Z+/iowbxNR8UyE+H4E2wY4uteca0FfaiigUEwZMx43fwK+6LTq0UMGu0ildEaBLJjOytp+vvmDk8gbPA2DJLau+tthmnWp5YO/KUqHknSYvGpIawWRH1wjFj1MrA7rm8KTPbM5g6pmL6xGkMM0K+Eo5Hv3HWyLzgSmM/uaH/AkaTVwYrcmC4lSSWlWdCyU4S8BK/Vum9lVzdfs17vw==
Received: from DS7PR05CA0021.namprd05.prod.outlook.com (2603:10b6:5:3b9::26)
 by SN7PR12MB6863.namprd12.prod.outlook.com (2603:10b6:806:264::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.30; Mon, 24 Oct
 2022 07:42:08 +0000
Received: from DM6NAM11FT041.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:3b9:cafe::ef) by DS7PR05CA0021.outlook.office365.com
 (2603:10b6:5:3b9::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.8 via Frontend
 Transport; Mon, 24 Oct 2022 07:42:08 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.233)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.233 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.233; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.233) by
 DM6NAM11FT041.mail.protection.outlook.com (10.13.172.98) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5746.16 via Frontend Transport; Mon, 24 Oct 2022 07:42:08 +0000
Received: from drhqmail202.nvidia.com (10.126.190.181) by mail.nvidia.com
 (10.127.129.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Mon, 24 Oct
 2022 00:41:59 -0700
Received: from drhqmail203.nvidia.com (10.126.190.182) by
 drhqmail202.nvidia.com (10.126.190.181) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.29; Mon, 24 Oct 2022 00:41:59 -0700
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.126.190.182) with Microsoft SMTP Server id 15.2.986.29
 via Frontend Transport; Mon, 24 Oct 2022 00:41:56 -0700
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
Subject: [PATCH 06/11] usb: typec: ucsi_ccg: Replace ccgx to well-known regex
Date: Mon, 24 Oct 2022 15:41:23 +0800
Message-ID: <20221024074128.1113554-7-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221024074128.1113554-1-waynec@nvidia.com>
References: <20221024074128.1113554-1-waynec@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT041:EE_|SN7PR12MB6863:EE_
X-MS-Office365-Filtering-Correlation-Id: 02e7cddf-5bf6-4740-c1b5-08dab5934155
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	ShXVEtxBYSmttw8hbFJUDuJ0CMdxyoy5ap+Ctk+ZM+zvj/0zxYEPZBCP9q1l4tJqN/4T9SaJ2W9Au/+5tqcflnJbLi9tJYhk+fEswXL0JwdmBMoJRw3f1o5gsBIrNZfBIJFnM8peJSod55QqGXFp5Fj+ya+iweNTlE9xXOjZkB0cWgHK2atQPvQ4zbiopZ2r/7ZcBKU//sLXidU5XJzmuKOD7ew5fAVPD+8+EYR4Thl6FwWSWLGVPHrtSXYB8p27PmWUj9wcBGErwkwe0fh6HdfpxEas582j4upHZIrYAoM24utkO+obS3P9yk0gIbC3CJS39jmgF6Xl3o4knFISqvsfXrQLul+vOadSYGTv2oiBKKzWFMwNOuED6sql1waBdx4IpghqtHIZpXcepSjzUEGEnwODSincKKyHr6lgIqw070gLsTc7HtHpXrXT9N2ZAEIHshFNX68Z34hu024yqWgh5F9mP7/ZXXxyS3oirMP9f83Ufw0J5pf4oGlBOX4O+ToiXTwqFymX2s2qw/xV1uo6NQEODSrY4f/uR0zUzs4YxNDPL9fpO7U9FgP4CcPA5JPDvspABMvLIjk2aSKczlhz84CUZ7fjkQQ0BSpArInHmcQjpcnUNQUGhSHu9Buegrtl06u+LT1g665dYHkZX5JxeFwHJixew0hXSPqVf+fMADuGfi2Wfb1elkWV4PJylM+lVWNo6zxLQ77MydcWJ4382hqvTyrZ67AIg8v5j2FqCa93xYcgKNAn6GBm0nPoyL5ECiiaiPw4WGDMVk0iwUK/XBknh0uHf0z9ttBjHzE=
X-Forefront-Antispam-Report: 	CIP:216.228.118.233;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge2.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(39860400002)(136003)(346002)(396003)(451199015)(40470700004)(46966006)(36840700001)(7416002)(40460700003)(186003)(7636003)(41300700001)(26005)(4744005)(6666004)(2616005)(47076005)(336012)(82310400005)(86362001)(8936002)(1076003)(2906002)(4326008)(478600001)(5660300002)(40480700001)(316002)(82740400003)(36756003)(54906003)(7696005)(110136005)(36860700001)(426003)(8676002)(70586007)(356005)(83380400001)(6636002)(70206006)(921005);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2022 07:42:08.5118
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 02e7cddf-5bf6-4740-c1b5-08dab5934155
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.233];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	DM6NAM11FT041.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB6863
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_004218_704927_7E827B98 
X-CRM114-Status: UNSURE (   8.39  )
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
 drivers/usb/typec/ucsi/ucsi_ccg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/typec/ucsi/ucsi_ccg.c b/drivers/usb/typec/ucsi/ucsi_ccg.c
index 139707a2f3d6..5d3099e6eb77 100644
--- a/drivers/usb/typec/ucsi/ucsi_ccg.c
+++ b/drivers/usb/typec/ucsi/ucsi_ccg.c
@@ -1358,7 +1358,7 @@ static int ucsi_ccg_probe(struct i2c_client *client,
 	INIT_WORK(&uc->pm_work, ccg_pm_workaround_work);
 
 	/* Only fail FW flashing when FW build information is not provided */
-	status = device_property_read_u16(dev, "ccgx,firmware-build",
+	status = device_property_read_u16(dev, "cypress,firmware-build",
 					  &uc->fw_build);
 	if (status)
 		dev_err(uc->dev, "failed to get FW build information\n");
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
