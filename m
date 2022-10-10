Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6D02C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 10 Oct 2022 13:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CYasB3sk7fxFtRa+lJ3liv4daqKilaBNhdxmxVOAWBw=; b=erFVv4pz3WYPD3
	dpa8298YwFziweXK1Ox40+Ohu6XAMk0fsUZd9rkrj7wSoOe3doDhC8AiB4tu3FR7U4+HF/2TlVPT4
	b5XlAMIRdSoKz4yVQH08olNrZ3pDznP6hS0X+zYf0YVtKsH37xngRi6wUakkSk0KxS5XJhomNFzE0
	R6OfnFdbXNjuOsAT7/bYc9jGpE9gUAUcdahp5IYrxG33pCIQ6NO8/saBK5o6I/DwXoLpjL1d+zPf/
	LA1xBxnrI2hf8wbJcAiNidJKnFhdqmOW046kyvWa9ay519jnwDPRYCBnzW37enwlapYV46VQy5vZT
	bztK36JNIuZbfeHWwW3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohtCC-001609-54; Mon, 10 Oct 2022 13:51:52 +0000
Received: from mail-dm6nam12on2082.outbound.protection.outlook.com ([40.107.243.82] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohtC9-0015yr-6G
	for linux-phy@lists.infradead.org; Mon, 10 Oct 2022 13:51:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hnaBrzU4iASuiaKzoKALOFvln3SUj8c/+vpMSiR2ZDaSYfIXobTxEY0+BaBcNm6LPUU4w4NuzD+gizCMJECjJJZRNJZis7eY1LK0wANcpiwFzIdBUPQ5li20buwkP32co4WiP4cxhWApzy1AQIpSC3JP6OZStyDBCzJx2R6vPdniLPluD3O8YXd62zc4kpfC/hv9LuwiKHZwbMJvRas02L57HT7XtkwkNnWtJ7wu7GITVr1+C6rl747wOpLHlQtS581pfNA108g7aRBGzp0Y5yATRDbsTRaARDwCZIml2dZddX21l3gZu1yM6CcIvtgjjFPJXMIIIRU7zOsjm0FkNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=twytVrO3GlJ1UFKtuJo526kGbKOSMfmoLjErMTfKZ38=;
 b=P2dMt4GV/FRraUGwTtF9RxEaxkOVOeJB8G6ZI1v9Ju1VidrzHuS3lCmR79tfKRiFlh8A3JpMQgfi0E2R1McPWbpWvbpVgowEYHu0QiQ6JcLa/TPbwwpYq/kp4P3NClzA/YbZYVx3Cn709Gi6ny4NfVc2dwA9k6FC/SI8yg3KRd8/KB2Ti9Clxm2eYLves4sppl78QYY9XsXYusXJOQ9BW/+6o8e9NuRSHYCU+M7JjHHvHlnbyjEI+02EUa0XTuzrB7Pyvm0AjbenuFkjn7KOdVXWw6rj7VpSRgl7tjwHcHsLCpeYeUkEyzmkdcIEQBJKzNMK59wa1vmxyw3n2sB8rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=ti.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=twytVrO3GlJ1UFKtuJo526kGbKOSMfmoLjErMTfKZ38=;
 b=KpAq4F7bDIxrNs6+PgSHX3ZU+k+QCKMXbCcnNjealhlWP95E1ICOwKpn4trjxEiD91FSjWI45IyogyOiukn9vWKHiSMmvSipE2SWttbwuxjQmqlFHwHeBiaJklra7cwipoqulWTH2OwBMlHqq4AImbGrSSasn05O5i5VQq+cP0+PdTjzi92m3kVK3NkKyUVlOJWwIOnqa1EyE3crf3HFWKfFoZZ8N6yJcmTHioNJ+6LQByd6OgwL/b/VotC6/9WnD2LpyVpkJzelurf3PJsvDGsFM9gtSO9VkXs31bgYQxL8m+EpU2fWknZd+5xpWCiNcyvLXDtn5dc8JASBHL0SGw==
Received: from DS7PR06CA0052.namprd06.prod.outlook.com (2603:10b6:8:54::30) by
 MN2PR12MB4111.namprd12.prod.outlook.com (2603:10b6:208:1de::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.15; Mon, 10 Oct
 2022 13:51:44 +0000
Received: from DM6NAM11FT105.eop-nam11.prod.protection.outlook.com
 (2603:10b6:8:54:cafe::74) by DS7PR06CA0052.outlook.office365.com
 (2603:10b6:8:54::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.15 via Frontend
 Transport; Mon, 10 Oct 2022 13:51:44 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 DM6NAM11FT105.mail.protection.outlook.com (10.13.173.164) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5709.10 via Frontend Transport; Mon, 10 Oct 2022 13:51:44 +0000
Received: from rnnvmail202.nvidia.com (10.129.68.7) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Mon, 10 Oct
 2022 06:51:36 -0700
Received: from rnnvmail204.nvidia.com (10.129.68.6) by rnnvmail202.nvidia.com
 (10.129.68.7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.29; Mon, 10 Oct
 2022 06:51:35 -0700
Received: from moonraker.nvidia.com (10.127.8.14) by mail.nvidia.com
 (10.129.68.6) with Microsoft SMTP Server id 15.2.986.29 via Frontend
 Transport; Mon, 10 Oct 2022 06:51:33 -0700
From: Jon Hunter <jonathanh@nvidia.com>
To: JC Kuo <jckuo@nvidia.com>, Kishon Vijay Abraham I <kishon@ti.com>, "Vinod
 Koul" <vkoul@kernel.org>, Thierry Reding <thierry.reding@gmail.com>
CC: <linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>, Jim Lin
	<jilin@nvidia.com>, Jon Hunter <jonathanh@nvidia.com>
Subject: [PATCH] phy: tegra: xusb: Fix crash during pad power on/down
Date: Mon, 10 Oct 2022 14:51:32 +0100
Message-ID: <20221010135132.30809-1-jonathanh@nvidia.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-NVConfidentiality: public
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT105:EE_|MN2PR12MB4111:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ade8a64-8c9a-4770-d8bd-08daaac6913a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	2Lx4u+blEJIq2b0BAQ6VSMyMtdLvkN5dfrvaQy2TvubKykh20geBRX5l8dKtFop/lj1W4AdHDSqDjSg1+5dybpu6v0606SWo7fnPWZS7GEZsYVhDFSGWNpjhjNENaKUWB/lJ7zUeBHc3pYx91Ot/kRcpWAOntY5iOJU5E2Z0kxLp6mZTEcyyFVFkB378X5VCQ1Sy4cV7y82iXG8XFx1jOBap5ufrMYp2iqQmpbQrFD7o6LCvKOGX4cgMI5HnoI4FManfcoPlSbWHb4yOdF5moLqCPX0o/+YjVfnbRDU/R8BrcqNI6jtowaaLKPWf8IqmUc2wZnoC7S6FnbGnahhptayQpOPRXbdDFm3tVUs7MbStgp+MRcZUkoDLPyfadOlnNxsnfdZErwhz1ADicpg3yQftyi6PR5WlwUopQL2lEcasX7XVdaICexOgVY/ZYLZ0T4seuuBFlOfQXQWzqc2kGwF4Vb03LMC0nWeUeweou1Jx7p+I2j2zdrOSO4uC8pf7WSmtKGtRu8nqjnlwXsUQPCDis40WYIdDNCh+PyIzLv99+kXEg6SVLKfeyZB1AF8r3HYYGj1sW1hkvh+3t1fy4DFbVjC4q95Kbposbq/lXZ7mUgpxD2TwEhFoDvc26r6ZLuyWeN7Akh/ESyrIdP5Si4CkxPYAgX5C4/jzokj27Hv9BgN40t6xxvtJyw8sChmxCP8mHvrhyGU83cQkPgXDEjVFRM8ZT4hd1J0LNUiUQOOhPQM3mzSb7xf+qFrojQJQX6LMjS0E827ADRL2UrYrFg==
X-Forefront-Antispam-Report: 	CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(396003)(39860400002)(136003)(346002)(376002)(451199015)(40470700004)(36840700001)(46966006)(40460700003)(40480700001)(36860700001)(8936002)(26005)(110136005)(7696005)(86362001)(5660300002)(54906003)(82310400005)(478600001)(107886003)(8676002)(70206006)(70586007)(4326008)(83380400001)(36756003)(41300700001)(316002)(1076003)(186003)(426003)(47076005)(336012)(2616005)(7636003)(356005)(2906002)(82740400003);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2022 13:51:44.1271
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ade8a64-8c9a-4770-d8bd-08daaac6913a
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	DM6NAM11FT105.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221010_065149_450408_BFD19F1C 
X-CRM114-Status: GOOD (  12.44  )
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

Commit a88520bfc0ec ("usb: gadget: tegra: Reduce pad power") added calls
to tegra_phy_xusb_utmi_pad_power_on/down in the Tegra XUDC driver to
control the pad power. This change is causing a kernel panic when
powering down the pads on entering suspend with the Jetson TX2 platform.
The panic occurs because the 'xudc->curr_utmi_phy' is not configured on
this platform and we do not check to see if the pointer is valid before
attempting to deference the pointer. Fix this by checking to see if the
'phy' pointer passed to tegra_phy_xusb_utmi_pad_power_on/down is valid.

Fixes: a88520bfc0ec ("usb: gadget: tegra: Reduce pad power")
Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
---
 drivers/phy/tegra/xusb.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index 95091876c422..dce45fbbd699 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -1461,8 +1461,14 @@ EXPORT_SYMBOL_GPL(tegra_phy_xusb_utmi_port_reset);
 
 void tegra_phy_xusb_utmi_pad_power_on(struct phy *phy)
 {
-	struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
-	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
+	struct tegra_xusb_lane *lane;
+	struct tegra_xusb_padctl *padctl;
+
+	if (!phy)
+		return;
+
+	lane = phy_get_drvdata(phy);
+	padctl = lane->pad->padctl;
 
 	if (padctl->soc->ops->utmi_pad_power_on)
 		padctl->soc->ops->utmi_pad_power_on(phy);
@@ -1471,8 +1477,14 @@ EXPORT_SYMBOL_GPL(tegra_phy_xusb_utmi_pad_power_on);
 
 void tegra_phy_xusb_utmi_pad_power_down(struct phy *phy)
 {
-	struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
-	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
+	struct tegra_xusb_lane *lane;
+	struct tegra_xusb_padctl *padctl;
+
+	if (!phy)
+		return;
+
+	lane = phy_get_drvdata(phy);
+	padctl = lane->pad->padctl;
 
 	if (padctl->soc->ops->utmi_pad_power_down)
 		padctl->soc->ops->utmi_pad_power_down(phy);
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
