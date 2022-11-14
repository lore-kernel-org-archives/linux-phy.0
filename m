Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E451C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 12:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NKBnrfjEoF4G3X0qFjSZF8GM/J8Dql87ZnnNxKdHtFc=; b=p7d3AeCZ19SQov
	+FcEC2FrnN8KpLjQvn+0o3gRgM53ilTh/2No6gNsb4quH9rRta2CZLnkZxpB+AUR0oK/+ixWYs/Wj
	X55zKPu8fRYwe4S/FBD5fTDNFUAQ/fXmAb6patoJGq1hcMHS3wOYVy4/QrqW0eAnxvflrozqnYXmO
	CsxgGp6FWiR8F1XvodazVXcgSF4WIc68dzDlMJG2JkOBF8f1oSdNni9+KNsyhBvXcquNRkBuvbfiN
	5uFF6/MHNrKOdvpTdezxG2C/4KJQqx7WlD3oq3LPTTOOTEo6zCVhGJJCpLJywAgXNKgGJC1nMUQxw
	Q1GcRTvbCCFMhbdoFg1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouYn7-000rth-W6; Mon, 14 Nov 2022 12:42:22 +0000
Received: from mail-bn7nam10on2060e.outbound.protection.outlook.com ([2a01:111:f400:7e8a::60e] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouYn5-000rrN-SQ
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 12:42:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ClIf+5Jg0zQSDa5VM1T1pzH/KwtlL1zQob4A0IX2CiHK30aJqqVMkQvhbfkB7+aA7cjTtZ20WJgCu8QsMhKgonBxV47ZjnMhIFk2YSAhf7T5gqKkj2zXssmdkziYEY0QQFcjg54h/BKy06IP6Sr3dR7wuWpv6qY+4EdkHOX26V7+BuXhH1OVl0O+M1jMZG/NKKrOgIPLSR9dtS2fYgoqVHkYDIp/EZpJCmMGqp5HTS5EzfrC5qPMfEDlQfIITR5QDZYSGK7JwulH+hgDCKl9LZSOTaN/lPpNYDOfEREZhkoxB36Bfy00aPAdEETGcWfkIMtYepaepLv93jo1OHkG2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=alGllIUxVCAyQT7pMkRn5F0uzSIWAe8dw9UAm+AiqSQ=;
 b=B9LY6y/HT+s4RV0uYXCZTT//5QZcmgIg2P05wK6KGcNh0XcUrt60fHU8ev4uJEHM9bn2vOc1XvGMvWzYVtevrNR7fmRvKORS5TX4BunOx1iL2wsFUlMzMIQLTpZBQ7sbcJJUaY4nyFiE/0R6jC3fDTtT8hKgUbNzoypBeXkjZL2vt8C3an9UW7oyIQyZ3UAJ0kqRAP1Ng/F0NDnpvpFL0zrRK4tE6geDtATABj/P8nT9UrmwQKemLkxTUabZOVg5M5ps44BQR30+B4a33UkOljb/jD+X/ZnbZkvGVKKMujM+t0QYHAzDMRqgkAv1mYkzd97gTNWvYNQegzOVy9gN7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=linuxfoundation.org
 smtp.mailfrom=nvidia.com; dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=alGllIUxVCAyQT7pMkRn5F0uzSIWAe8dw9UAm+AiqSQ=;
 b=PWzdlmcI0mbTF4ZiDkN7k+yjT8Y8oTmORoyWuDUkpRFPZGD0OpF7xYOKg2bbN4FIlWSKOdNjxfNEOJNpLxDVvXaN9h5Mf8yu0UZ3Fnezo5xEn/5GMTnMlubfn2oCoYAaoBe8LSRdD9to2+Sg2C/sDTyVALTBPFrGSDbP3t21LTfaDYqs59qZuoBmMsJAacNLRq8WPwewPFL0WEujK9qdx1oqnLT5z0V6gK+cXn4g9BUc1jbK5JTfvNYjQqzAL6YU/GO/Hay/evC10boVo5EIRhoYy+Uc0RD2MpMSPNKE+/ZJXOxTBwbNZs9d+oKmWBhvB1KeZB+bBRDpAAyIA/U3qw==
Received: from MN2PR11CA0005.namprd11.prod.outlook.com (2603:10b6:208:23b::10)
 by BY5PR12MB4164.namprd12.prod.outlook.com (2603:10b6:a03:207::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Mon, 14 Nov
 2022 12:42:08 +0000
Received: from BL02EPF0000EE3D.namprd05.prod.outlook.com
 (2603:10b6:208:23b:cafe::f6) by MN2PR11CA0005.outlook.office365.com
 (2603:10b6:208:23b::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17 via Frontend
 Transport; Mon, 14 Nov 2022 12:42:08 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 BL02EPF0000EE3D.mail.protection.outlook.com (10.167.241.134) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5813.11 via Frontend Transport; Mon, 14 Nov 2022 12:42:07 +0000
Received: from rnnvmail203.nvidia.com (10.129.68.9) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Mon, 14 Nov
 2022 04:41:52 -0800
Received: from rnnvmail202.nvidia.com (10.129.68.7) by rnnvmail203.nvidia.com
 (10.129.68.9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Mon, 14 Nov
 2022 04:41:52 -0800
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.129.68.7) with Microsoft SMTP Server id 15.2.986.36 via
 Frontend Transport; Mon, 14 Nov 2022 04:41:48 -0800
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
Subject: [PATCH v3 13/13] usb: gadget: tegra-xudc: Add Tegra234 support
Date: Mon, 14 Nov 2022 20:40:53 +0800
Message-ID: <20221114124053.1873316-14-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221114124053.1873316-1-waynec@nvidia.com>
References: <20221114124053.1873316-1-waynec@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF0000EE3D:EE_|BY5PR12MB4164:EE_
X-MS-Office365-Filtering-Correlation-Id: 3853e061-fd6a-46a1-f77a-08dac63da46f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	lmcYhGj63TEWo3DnFEqv90vcVuSx9AGl1WzIVW/9vT6+xjokKX2nkaV1UxOeiNXTIxFO9RHHNqPAIAKjf4WY8E6mDoRqKIUaj/S/Wng7P1sA4cnOF4pT/cFz7mHqqOClKJ6CEgGd94bHmV0QGCitv3LbeyxKjWT49f5FZihqZolE1XxTeCqgZ9c3q4BU5fYz1exWVAxG54xTllnIc9fZNWjRqSsFWci66Fvqp2HTiSMWCzLs15caSpexFBSBRasEKMLH6Wk/TTH3FJjPvV4FwRgSk1SCZWqOZIqO9kb5YvWAfwAla278LSttLHaaUPUfcKDG2mAUsBTUtS8CB1Sk4xelDoXjXB2mq2kZJVk27x2TIsveXcH4TKP85gXK7jnZb/PvDWpvt+s4PZDbOnl21KpaQjr2uFJ4HsXtgOYPlKFpGaoQDgRXSdaitu2Cm7KLD6yXkEm9m0LZ9Hq9g3HKYaPhdIfKVLNcEb5gz0HCw2ANNV+ygIfQXHdqBDaeT05q7zS8fCelg06JT8mvN1vu5F1a+ohvRpMSsX/Isy6XTvLq1/FBGwwHdqpqTv1sdsPCudBawroZKQMMv6bQZgNlZI2DwzbeX0Af8Q+O1Ah4Lz2LnfDN1iJ1leMisrTHCW0fYHGp07c0zn9Rwyba4MQLLBtGSiS7GDZh+wiHLDEHmGHrpmtrzuEN7VLMbKQF5OCt0JwlZ+SCPqMR7o4lz5FYCfpuLRmIBLt0MtqhOFGTuqX06ye6gWpppbD5t5b4YwSwRnI07iX/BGqiQI07BxAw1pqa8wXoSKA0DhbI1QN0mPw=
X-Forefront-Antispam-Report: 	CIP:216.228.117.160;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge1.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(136003)(346002)(39860400002)(396003)(376002)(451199015)(40470700004)(46966006)(36840700001)(40480700001)(36756003)(8936002)(86362001)(7696005)(336012)(921005)(82740400003)(356005)(7636003)(40460700003)(2616005)(7416002)(2906002)(41300700001)(426003)(47076005)(36860700001)(83380400001)(5660300002)(82310400005)(26005)(186003)(1076003)(6666004)(8676002)(54906003)(478600001)(4326008)(70586007)(6636002)(110136005)(316002)(70206006);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2022 12:42:07.8264
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3853e061-fd6a-46a1-f77a-08dac63da46f
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.160];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	BL02EPF0000EE3D.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4164
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_044219_949319_6D238B8B 
X-CRM114-Status: UNSURE (   9.29  )
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

This commit adds support for XUSB device mode controller support on
Tegra234 SoC. This is very similar to the existing Tegra194 XUDC.

Signed-off-by: Sing-Han Chen <singhanc@nvidia.com>
Signed-off-by: Wayne Chang <waynec@nvidia.com>
---
V2 -> V3:nothing has changed
V1 -> V2:nothing has changed
 drivers/usb/gadget/udc/tegra-xudc.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/usb/gadget/udc/tegra-xudc.c b/drivers/usb/gadget/udc/tegra-xudc.c
index 76919d7570d2..ff697190469b 100644
--- a/drivers/usb/gadget/udc/tegra-xudc.c
+++ b/drivers/usb/gadget/udc/tegra-xudc.c
@@ -3660,6 +3660,19 @@ static struct tegra_xudc_soc tegra194_xudc_soc_data = {
 	.has_ipfs = false,
 };
 
+static struct tegra_xudc_soc tegra234_xudc_soc_data = {
+	.clock_names = tegra186_xudc_clock_names,
+	.num_clks = ARRAY_SIZE(tegra186_xudc_clock_names),
+	.num_phys = 4,
+	.u1_enable = true,
+	.u2_enable = true,
+	.lpm_enable = true,
+	.invalid_seq_num = false,
+	.pls_quirk = false,
+	.port_reset_quirk = false,
+	.has_ipfs = false,
+};
+
 static const struct of_device_id tegra_xudc_of_match[] = {
 	{
 		.compatible = "nvidia,tegra210-xudc",
@@ -3673,6 +3686,10 @@ static const struct of_device_id tegra_xudc_of_match[] = {
 		.compatible = "nvidia,tegra194-xudc",
 		.data = &tegra194_xudc_soc_data
 	},
+	{
+		.compatible = "nvidia,tegra234-xudc",
+		.data = &tegra234_xudc_soc_data
+	},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, tegra_xudc_of_match);
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
