Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FBF8C54E4A
	for <linux-phy@archiver.kernel.org>; Thu,  7 Mar 2024 03:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4N2qnkxd8niuB5sQp/tcgvt4RUnXH0bJeV6vmZujuPM=; b=aRO3Y0sOQu6pLp
	3xhWBTaVR7UUeejiCKyFUrrRPcjg9N1vhW3iUwHfUx//x9b1oFNBo6HTExqB/TPZP01A0vyHX8zSO
	07AMAiIVQsQbKuNSsXiIqrjal1PwNuch2XcFivDDF5AZVF20+WPtWBtme8L/TMJuCEncLeLsDRC8j
	hAZH9pAuh8be0lT6h6U1Yc3yw0UqNs/6zq3WUMW0RhtgkQs414TQ//3WQmGKd4RAA8nNcGGnKPhYy
	zqib4vJnSKEdI7idOy1I54XO+ddC0LuoKvBfF2Y20gjn5QvyHIn25FKfOAoL1gi/cm32FXWq9y3lc
	OS32WedqfbW61b1ngRUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ri435-00000002lSo-32eu;
	Thu, 07 Mar 2024 03:03:59 +0000
Received: from mail-dm6nam12on20600.outbound.protection.outlook.com ([2a01:111:f403:2417::600] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ri433-00000002lR8-0wPv
	for linux-phy@lists.infradead.org;
	Thu, 07 Mar 2024 03:03:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pg+hBz20SsmMRPOnOsLLecFMoRgLhA1D84AmuiXB8EqGvzCbS9IJkYBuBGzvrnzFgZnfq3/KDhf5kmE7GRGZMKlIcglQouzw/gdJfDaIT+V1IImnaANJEJOWL552HGsqr9QPl0Ju+XTKjPwPKQQlLHxJnoOm0fr78SQO5Bi1P1x7dg/c1BKy+EvPl9OAd8pwH3GVajCVvoYZ3kTwey20Bs62/2LHYhZQmlSHksCt6mKwNKWZBvuSvCGHRpp4i174uCa32K+GuYvl9siPwZV1B60VIFMb8ldXrPqEXQBe4FIvLeq1PilRvCONz5meFPXJ52fhV5CWgoCB2d9HeStoxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eqT6OVr3rf/KIUEPDk87qjqO3uja75xloQCTYQDw7BY=;
 b=gASwEeJ2N253jwEQtQPB9V7HzSaPXW09K7j6Jyjlj983biH2IT/Ix/BbDYhgfUF3TVmAgXehgxwSfQB4wvUxgkQzWPqTp54weYLiJtfRXkkeVMXmFwy1zEOe1AFReFKwfKHSWlPoOALoSxq/nP32cSANVt9ZhZ845rumI3mMwoIfzTCIy1CCH/tdYi5KF4CwZX7dKfZGbpXtZ4wEvZE6jIjDpSu4zNKz8JsXTcKn4WuQl0+MOQFKUmusWvb3QyuvkKxY7jEYehhF7rixDc6q8/zo4ozwOc4omG9gL3W/ESjXYYZEgFVdEjZeW9w8vepK+HyXqVmuF7/WkP5Gtym/gA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=gmail.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eqT6OVr3rf/KIUEPDk87qjqO3uja75xloQCTYQDw7BY=;
 b=n/gZzU+8/x+arKpkfOxlJxTV8c7RIWxgm4NQ5xQ49jLIsGQGGoyFxNxjVLfIyfrl9YURbp4JSqBpxZlrnHYtpeB7dFEtljDxd9BNGGhsnfDtHrvgk6vCyUVYaqRZ1wrG0tCUmfiroy007khzU+CFnWEzNurlZ26h24xcmYpcjin37oKIn27IktfSmE+8VdWfMJ7oLSU3AjXQLfwU8yZ+kPbMmpJdzQQkr9IZsYgLi2PsbWj4AvR7DKMVmmARO6Hn8UzzrAMKI/ryzq4sR3OFcoee/RV88Kl5bZp1BKUfgQGAQad+KGbMqsAnukSPQ1dKPzxYas8cJo0RjRXXPXF1XQ==
Received: from MW4P220CA0005.NAMP220.PROD.OUTLOOK.COM (2603:10b6:303:115::10)
 by CH3PR12MB7666.namprd12.prod.outlook.com (2603:10b6:610:152::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.38; Thu, 7 Mar
 2024 03:03:50 +0000
Received: from CO1PEPF000042A8.namprd03.prod.outlook.com
 (2603:10b6:303:115:cafe::5e) by MW4P220CA0005.outlook.office365.com
 (2603:10b6:303:115::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.26 via Frontend
 Transport; Thu, 7 Mar 2024 03:03:50 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 CO1PEPF000042A8.mail.protection.outlook.com (10.167.243.37) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7362.11 via Frontend Transport; Thu, 7 Mar 2024 03:03:50 +0000
Received: from rnnvmail204.nvidia.com (10.129.68.6) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Wed, 6 Mar 2024
 19:03:38 -0800
Received: from rnnvmail203.nvidia.com (10.129.68.9) by rnnvmail204.nvidia.com
 (10.129.68.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1258.12; Wed, 6 Mar
 2024 19:03:38 -0800
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.129.68.9) with Microsoft SMTP Server id 15.2.1258.12 via
 Frontend Transport; Wed, 6 Mar 2024 19:03:35 -0800
From: Wayne Chang <waynec@nvidia.com>
To: <waynec@nvidia.com>, <jonathanh@nvidia.com>, <thierry.reding@gmail.com>,
	<jckuo@nvidia.com>, <vkoul@kernel.org>, <kishon@kernel.org>,
	<gregkh@linuxfoundation.org>
CC: <linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
	<stable@vger.kernel.org>
Subject: [PATCH v2 2/2] usb: gadget: tegra-xudc: Fix USB3 PHY retrieval logic
Date: Thu, 7 Mar 2024 11:03:28 +0800
Message-ID: <20240307030328.1487748-3-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240307030328.1487748-1-waynec@nvidia.com>
References: <20240307030328.1487748-1-waynec@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-NV-OnPremToCloud: ExternallySecured
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF000042A8:EE_|CH3PR12MB7666:EE_
X-MS-Office365-Filtering-Correlation-Id: 689066f5-5ca2-44cf-a26c-08dc3e5336ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KoGLjQSJiH5KCXSZQbcW53pfnFP8sg+p26eWZqBCvEw4PiUFjSMSyKvdfQvwj6qZsrkAhKJMS3tGQnXyxtGTFk6/F0hgypmA8/HGpgQLxV/ibHw+s1X2zqQAIRSSuOn0kb67vj6bv/QVUtkrr5ukR5/5MkiDzLo6XIgOFlLVE4ZbxrYeh9YqPtJsEASXKoGItottR9Sl5DBAYAOzMLorgFj2Tb0GFjK172j3lnZQ+RlA9me2o36Ah9HB/cxWFhM/04diVmjKTYWoYFHuxQggu+U0TrnCMU14XCR959FaPZvGiUy7gCafOQ27yj7tAfM4HiQc2wqk1W3T6gGhymkikCkb/N6XJOHgNjWGRTPmTRCAcy6kkIQZQh6t9zuFaHFXJrRMZRg8umKgD+uj/eAOxyxF6FthrmmyC5l6k9CEzkKYfyoTvF0yk6LwEMeNF+6+2in468qsYdowD1AsIk58MQsn3VSJc/DoOYUqLkpmN1Ads44PpYDavhKF1FeSVD+/EdSubKhOTOzTRdFCryb1IfrKks0Fdvhl01OBOquoCUjqfFrVi0qEATJYXaQ9cslK0DpKyu39pJ152xy0crcI+/Kz33Mf8ddVTUYsuWs5yBWl5KG0tfMxV+umjzri20qgDs8ijxvTeuXuaZtPFFDZ/7109Dh6WS0VHutWi7rJh7EIoBG0it8dz/XpCCEpmP0pApMh61hIC3vmEp7BuyC0gBjVHg/cqdz+j8Vc0i7fy7P4PSuMk2oAcZl5vAq3fhAk
X-Forefront-Antispam-Report: CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230031)(36860700004)(376005)(82310400014);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2024 03:03:50.3671
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 689066f5-5ca2-44cf-a26c-08dc3e5336ec
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1PEPF000042A8.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB7666
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240306_190357_295213_B58C44C7 
X-CRM114-Status: GOOD (  14.87  )
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

This commit resolves an issue in the tegra-xudc USB gadget driver that
incorrectly fetched USB3 PHY instances. The problem stemmed from the
assumption of a one-to-one correspondence between USB2 and USB3 PHY
names and their association with physical USB ports in the device tree.

Previously, the driver associated USB3 PHY names directly with the USB3
instance number, leading to mismatches when mapping the physical USB
ports. For instance, if using USB3-1 PHY, the driver expect the
corresponding PHY name as 'usb3-1'. However, the physical USB ports in
the device tree were designated as USB2-0 and USB3-0 as we only have
one device controller, causing a misalignment.

This commit rectifies the issue by adjusting the PHY naming logic.
Now, the driver correctly correlates the USB2 and USB3 PHY instances,
allowing the USB2-0 and USB3-1 PHYs to form a physical USB port pair
while accurately reflecting their configuration in the device tree by
naming them USB2-0 and USB3-0, respectively.

The change ensures that the PHY and PHY names align appropriately,
resolving the mismatch between physical USB ports and their associated
names in the device tree.

Fixes: b4e19931c98a ("usb: gadget: tegra-xudc: Support multiple device modes")
Cc: stable@vger.kernel.org
Signed-off-by: Wayne Chang <waynec@nvidia.com>
---
V1 -> V2:no change
 drivers/usb/gadget/udc/tegra-xudc.c | 39 ++++++++++++++++++-----------
 1 file changed, 25 insertions(+), 14 deletions(-)

diff --git a/drivers/usb/gadget/udc/tegra-xudc.c b/drivers/usb/gadget/udc/tegra-xudc.c
index cb85168fd00c..7aa46d426f31 100644
--- a/drivers/usb/gadget/udc/tegra-xudc.c
+++ b/drivers/usb/gadget/udc/tegra-xudc.c
@@ -3491,8 +3491,8 @@ static void tegra_xudc_device_params_init(struct tegra_xudc *xudc)
 
 static int tegra_xudc_phy_get(struct tegra_xudc *xudc)
 {
-	int err = 0, usb3;
-	unsigned int i;
+	int err = 0, usb3_companion_port;
+	unsigned int i, j;
 
 	xudc->utmi_phy = devm_kcalloc(xudc->dev, xudc->soc->num_phys,
 					   sizeof(*xudc->utmi_phy), GFP_KERNEL);
@@ -3520,7 +3520,7 @@ static int tegra_xudc_phy_get(struct tegra_xudc *xudc)
 		if (IS_ERR(xudc->utmi_phy[i])) {
 			err = PTR_ERR(xudc->utmi_phy[i]);
 			dev_err_probe(xudc->dev, err,
-				      "failed to get usb2-%d PHY\n", i);
+				"failed to get PHY for phy-name usb2-%d\n", i);
 			goto clean_up;
 		} else if (xudc->utmi_phy[i]) {
 			/* Get usb-phy, if utmi phy is available */
@@ -3539,19 +3539,30 @@ static int tegra_xudc_phy_get(struct tegra_xudc *xudc)
 		}
 
 		/* Get USB3 phy */
-		usb3 = tegra_xusb_padctl_get_usb3_companion(xudc->padctl, i);
-		if (usb3 < 0)
+		usb3_companion_port = tegra_xusb_padctl_get_usb3_companion(xudc->padctl, i);
+		if (usb3_companion_port < 0)
 			continue;
 
-		snprintf(phy_name, sizeof(phy_name), "usb3-%d", usb3);
-		xudc->usb3_phy[i] = devm_phy_optional_get(xudc->dev, phy_name);
-		if (IS_ERR(xudc->usb3_phy[i])) {
-			err = PTR_ERR(xudc->usb3_phy[i]);
-			dev_err_probe(xudc->dev, err,
-				      "failed to get usb3-%d PHY\n", usb3);
-			goto clean_up;
-		} else if (xudc->usb3_phy[i])
-			dev_dbg(xudc->dev, "usb3-%d PHY registered", usb3);
+		for (j = 0; j < xudc->soc->num_phys; j++) {
+			snprintf(phy_name, sizeof(phy_name), "usb3-%d", j);
+			xudc->usb3_phy[i] = devm_phy_optional_get(xudc->dev, phy_name);
+			if (IS_ERR(xudc->usb3_phy[i])) {
+				err = PTR_ERR(xudc->usb3_phy[i]);
+				dev_err_probe(xudc->dev, err,
+					"failed to get PHY for phy-name usb3-%d\n", j);
+				goto clean_up;
+			} else if (xudc->usb3_phy[i]) {
+				int usb2_port =
+					tegra_xusb_padctl_get_port_number(xudc->utmi_phy[i]);
+				int usb3_port =
+					tegra_xusb_padctl_get_port_number(xudc->usb3_phy[i]);
+				if (usb3_port == usb3_companion_port) {
+					dev_dbg(xudc->dev, "USB2 port %d is paired with USB3 port %d for device mode port %d\n",
+					 usb2_port, usb3_port, i);
+					break;
+				}
+			}
+		}
 	}
 
 	return err;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
