Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90560C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 12:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bcAnrTQHscKMI05pyrw0JuAc54awONC3WGfPRINPocM=; b=labJIN0hows77O
	WBlqRYglRa2LroP+hZk1i1xEMdoiIXQNVcS4MYPGK4HTPSHr6tPfwPzc4mboNd9Q+3fqrHm5l97hJ
	j+cD9SAN91Cc2Xw6FH5cO8hfcRs2fY55jTUWLTuVoA8HlE6nmTbo+2yxMeeo8COujau/HSyL3Qi9w
	IDqmbGqTNcJOyYc5cl87ZvbQvgHTwX+NYfmXCMLfZLAOOC0uqHpGeOqhfDUvR1dFrCD7boIVLLpzc
	kssYVKmAM6Q8LYi9kHFUUAiOgMKoD7bDfygICRxGRPWtovdGi6Tcgq20bkGp3VfDvZ9yw62W3fdsl
	y7dMTUdn11XgdxsktdAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouYmj-000rgZ-VJ; Mon, 14 Nov 2022 12:41:57 +0000
Received: from mail-bn7nam10on20609.outbound.protection.outlook.com ([2a01:111:f400:7e8a::609] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouYmi-000rcX-9F
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 12:41:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aWRtIPNYQc3SJZ/9CupoDUW2Kv1d3K48DjwxeLqrxfu8R9a6HQvE/CnfXJO5B/3mUzMHa86rxPYgQErmi7JNx/VKikSLXx47KlyoQRKUpWetLldEWRpSLNRXkRDMkdZdgcIWmLzdagVqwYp13uSmjkSUCDDTGJ4Z1zQwIZvMlo6Qz51qdAEnieEdM0d8wIDXCa7SlZNcdScQlKGJ6/ejT6tnFwyx95sslqOzT9oNlmH66fMPYojCtuXx6UnSDEYC0kJzU6TxXwgVd9vd9OCBonNL5DKqPtgK2xf4DeebRbypAdTxHNNXwQGHISGXUYdt596bzmlr7BRoE4x9w3xn3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mkg31uWIczzVSL0IZ9K9htk3BSJGDLuIyYuIp/rMne8=;
 b=NC8liv9P3fXllsrBLDItGZ6m/TlvhC9wrliXBv/vslMJXvkNNkEFqwLuKTBGMpKwKKaJOWtxSBMw+iuZbm7gmdiYoNdiS3R88rjk9os0q4MaMNorn6mM7i3s8GvttpDCV2mtARFZkRESnj1fA5BRgfUcVZapojBHbr5yEVfJ82K0HpSk4MW3jGEXPrfqlZdLSsoamOqHtck8boacSNBt9FvHuqpvkk3ggVy+EIKDvcBibqYToWBvGBI88amP/MOG/beuoOWNghsV1FzShNs6YOEjHD5JrleYVBM/h8rPd6rwmZW9nyq711IELXKYH1UHsv47+D2i1Y26kN6Nzov4vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=linuxfoundation.org
 smtp.mailfrom=nvidia.com; dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mkg31uWIczzVSL0IZ9K9htk3BSJGDLuIyYuIp/rMne8=;
 b=uom3uuplX3zE0gAX7ZoQVZR4ME4JApRGZufU6qiWNyNzZER7P3BG1RHanOInumVuYo6+/qKPX7IkxOk96jFSINpXo6g5xoOfvXOifHpTJI0JO6tYefXWqlnxHGtL24FqTnNvx3VXMIo2xFTG1PWHCg5H29ecFvg7DGk6JpG1sKZBca+vYmWKhQ+rsEUXyyOykw/0x2hLMklV6p2TbfheRITbHkAPy/Ca6b2hl9Ogt6CoN1tLyovZcsTesAzxqxz0pDaQM3eepMc+pIKuoC+oSxm6mqEQ4LylpIEls7EM64TQLBN6vpV4giDLKnaDlCVN5soSZkw3TRTAuFzPMrkquQ==
Received: from MN2PR11CA0027.namprd11.prod.outlook.com (2603:10b6:208:23b::32)
 by IA1PR12MB6233.namprd12.prod.outlook.com (2603:10b6:208:3e7::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Mon, 14 Nov
 2022 12:41:46 +0000
Received: from BL02EPF0000EE3D.namprd05.prod.outlook.com
 (2603:10b6:208:23b:cafe::c1) by MN2PR11CA0027.outlook.office365.com
 (2603:10b6:208:23b::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17 via Frontend
 Transport; Mon, 14 Nov 2022 12:41:46 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 BL02EPF0000EE3D.mail.protection.outlook.com (10.167.241.134) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5813.11 via Frontend Transport; Mon, 14 Nov 2022 12:41:46 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Mon, 14 Nov
 2022 04:41:32 -0800
Received: from rnnvmail202.nvidia.com (10.129.68.7) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Mon, 14 Nov
 2022 04:41:31 -0800
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.129.68.7) with Microsoft SMTP Server id 15.2.986.36 via
 Frontend Transport; Mon, 14 Nov 2022 04:41:28 -0800
From: Wayne Chang <waynec@nvidia.com>
To: <gregkh@linuxfoundation.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <treding@nvidia.com>,
	<jonathanh@nvidia.com>, <thierry.reding@gmail.com>,
	<heikki.krogerus@linux.intel.com>, <ajayg@nvidia.com>, <vkoul@kernel.org>,
	<p.zabel@pengutronix.de>, <balbi@kernel.org>, <mathias.nyman@intel.com>,
	<jckuo@nvidia.com>
CC: <waynec@nvidia.com>, <linux-usb@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<singhanc@nvidia.com>, <linux-i2c@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>
Subject: [PATCH v3 08/13] usb: typec: ucsi_ccg: Remove ccgx,firmware-build property
Date: Mon, 14 Nov 2022 20:40:48 +0800
Message-ID: <20221114124053.1873316-9-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221114124053.1873316-1-waynec@nvidia.com>
References: <20221114124053.1873316-1-waynec@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF0000EE3D:EE_|IA1PR12MB6233:EE_
X-MS-Office365-Filtering-Correlation-Id: 8cab6a70-c72f-4954-80fe-08dac63d979a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	cxyhOrw8A/c+p+li8J3fdIGKM6AQ+ibhhKIVAQ2pvVpGJad8sgzfRYlKoJ0pSKPXNiEcwqrFx06+S8SKLEOkXs/FR+0rgbJKnfjoB0zStNIVLV6bulBOOPkwz4Cd9jbRwnxLsMgKazxAvs8NAYMsQPv9Q1eHDHwL3oCGAhB2MM23YG3QDWqY9Yz3QlsJRfZca/1DvAu4p1DUjuudyUKO1AFGvFBjxH5owpKQbv0gjN783G1A3ywSS1V0kPvs1bTTD3D5b4u5eK2zwJy7Gln1jdpfVN97RzwbeBXgzJFC4Tc5Bd5pWyOBlun3ZCSaNGZaeT1GYXL2Ylz0jXSbnbrVjRipBoFPELz+CFnE8ityyozsYD9nT5l356+z7t709lKfxFPKuE1Cvwyh47dVwWGM/Zn0wB+kljMhQ1ridW6lrgBYM9fA7usBShJjATiDRpx1taJcKA5yr2NrE7p/bgkwajJWXgRlI9Rx2Lem7tjuUfoMmaPUwAADd6Uqj+I0nYr+D1vPizDv2M9aMVsV4OxbvJ0dlC+2XH0JXjepIPXsuzIL96Cj7lD2dvCCPRgC6Qv0UDzAE7Y/7IxD8Og0pYk4YXaqO7tDzP3GyYby+OLnMiFW0sPmjPcMyiPAi1iittxY5zAUynolArXB1n3oRkHC2ZWkhtfuf2b9GWL0HiUjjZMQfNAACXRHS7bVrV2k/bp5EdyrXBCy4YlUhRqzuf4KYKMJvcwxcWcPqwOVInoiGriUD/PKOmBIOR2i+oR1O6zuec+xY+DJ/bugabPTDtx7aJ0joo2LE9a7dnWP4H1oTlI=
X-Forefront-Antispam-Report: 	CIP:216.228.117.160;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge1.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(396003)(346002)(136003)(376002)(451199015)(36840700001)(40470700004)(46966006)(4744005)(2616005)(356005)(7636003)(8936002)(82310400005)(478600001)(7696005)(6666004)(6636002)(54906003)(110136005)(2906002)(40460700003)(316002)(40480700001)(36756003)(41300700001)(921005)(70206006)(4326008)(70586007)(86362001)(5660300002)(1076003)(186003)(7416002)(8676002)(82740400003)(26005)(83380400001)(336012)(47076005)(36860700001)(426003);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2022 12:41:46.3261
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cab6a70-c72f-4954-80fe-08dac63d979a
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.160];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	BL02EPF0000EE3D.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6233
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_044156_342360_23A68FF5 
X-CRM114-Status: UNSURE (   6.41  )
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

Remove the property ccgx,firmware-build as we have added well-known
regex cypress,firmware-build.

Signed-off-by: Wayne Chang <waynec@nvidia.com>
---
V2 -> V3:nothing has changed
V1 -> V2:nothing has changed
 drivers/usb/typec/ucsi/ucsi_ccg.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/usb/typec/ucsi/ucsi_ccg.c b/drivers/usb/typec/ucsi/ucsi_ccg.c
index e412a457bbfc..eab3012e1b01 100644
--- a/drivers/usb/typec/ucsi/ucsi_ccg.c
+++ b/drivers/usb/typec/ucsi/ucsi_ccg.c
@@ -1359,11 +1359,6 @@ static int ucsi_ccg_probe(struct i2c_client *client,
 	INIT_WORK(&uc->pm_work, ccg_pm_workaround_work);
 
 	/* Only fail FW flashing when FW build information is not provided */
-	status = device_property_read_u16(dev, "ccgx,firmware-build",
-					  &uc->fw_build);
-	if (status)
-		dev_err(uc->dev, "failed to get FW build information\n");
-
 	status = device_property_read_string(dev, "cypress,firmware-build",
 					  &of_fw_build);
 	if (!status) {
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
