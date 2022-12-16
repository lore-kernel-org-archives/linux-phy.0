Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E68ACC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 16 Dec 2022 04:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rWp4anUOYygdUvn/jvmTMtZfBgIOblBY3y20Di5MEos=; b=ySPWyMzI+t6WUV
	GPHwFPFd24Mxbk/3imncoxFqq6Nt0eqLdBv9hFEPLtSsIs3B7WLupNkdJ2W4nZe/rtv9nM+j5McAZ
	GzK0+jrlOtyt/49EUBVGebdbqBmdOQdaiIrgzw4406elxCiSmUroulVRXIWwC7KvbkOm1gXKW6MvC
	59OjxtgeKRO9apT2wuuLJSF/JHmzMC+JPYRJysLu7446oFozxbtO/eiHJM56M2Cq2P7Bv8CDNTV8k
	tL5d4jNe86G+NI11SDvTDTt8oUiVJTc0byMoZXOVKyn1AoffCbGiNiaMjaQ3uaEhzDz6ByQJymYmq
	+fdnT6LtZfzn2Lw0pLBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p62FA-00Ckrh-11; Fri, 16 Dec 2022 04:22:44 +0000
Received: from mail-mw2nam04on2069.outbound.protection.outlook.com ([40.107.101.69] helo=NAM04-MW2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p62F7-00Ckr0-8R
	for linux-phy@lists.infradead.org; Fri, 16 Dec 2022 04:22:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sb9TkYDCjF46/jnXv2kk37hFy1taALM5NjqTUcUGBcIBR5OzXFo9jWWTknFuw0xhgNOV30IjLys+wT+s+9oQ9zNo6lGlXymv667OOGIKhncaufoc7Sznypay+KEt5O6N/34YHd97ur+LRk/SPzQHBLc0xKjgmpihkei62VSFtK93mp5fLLmdW8ZXaLwZNtktvXyvrCCneLha+rowlDsEbfCgris+CQxrViK40FIaukIMn3nq3vlfdJyDaPuliOKqiVYJ/Tl6tv2rdBU6uB82jf1HH/Rwb0ftyRj0/4dofvTIyEhJ3b0arTG0W6K6ppweyiIDTlTpNQzyeOIlt+1l4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lbmktsLRLaxVk40ULnxh944f1+6uFDcgKVWoDt1/bGs=;
 b=aG7Fi0tX4xSNCVPAr0NmEnwYf/1DEKXijb/wNlvC5tkBpjmoOsn19bu/WFxHtvh3CXxAN2dUsa/c1p/p5GvmNBAB/jgVGkXc/gktNobDwipzTAF/G9JvBsOKwMLNAA/zx9kzWAM7z6wm27qaQGeXAx5DINzBTEwhEn47sUWNXZ2+a9Dtw6ASpssogr2NxaZQBdarsr4GsfJb3f6VRcjwZt9qzvMtZeyK5xQ53EUwG5TdJT0MI4NfMX0pYbu5G5Gx7vU2Hi9w8X11qg//gwnp1uFkrsBSBwRZrcy6dPYu8TbZu0G/gocqxYmCQipYF8cfQERoAf+T5rSQDCVJp6nHmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lbmktsLRLaxVk40ULnxh944f1+6uFDcgKVWoDt1/bGs=;
 b=tZ3DfB9lNZVp2vUEcRFRLi0SKXB6bn3/3DPUxFGv3Hhxot7mvzQ6qj/KXqCszumUmEW4oeWsVdnerRMlf90RdBJoQf/ac4Z3sb5r/2zi7mpp3OtNT/lzErkb4Q1jx/CVnMVpj8bVnoO+M7DKd3HgaexJiiCSgjZKd87Xhr8i6YIK9lSHtAaI/YwF7eTcbRU9Q3QJ7wjii6Yn6S/ze0flMoMFS2ZkFkm/F5XGOtrBtRgZnXiDMvUXPihxmgDxHRJeE2obPqQOJBfzMK4yNEFeNoS+46ZKRbde+ELq87BedI5c2p/O1LrSY5ayIbm3TKiodzOurlKGemsBCwGowuZEgA==
Received: from BN9PR03CA0073.namprd03.prod.outlook.com (2603:10b6:408:fc::18)
 by DM4PR12MB6613.namprd12.prod.outlook.com (2603:10b6:8:b8::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.12; Fri, 16 Dec
 2022 04:22:34 +0000
Received: from BN8NAM11FT106.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:fc:cafe::90) by BN9PR03CA0073.outlook.office365.com
 (2603:10b6:408:fc::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16 via Frontend
 Transport; Fri, 16 Dec 2022 04:22:34 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 BN8NAM11FT106.mail.protection.outlook.com (10.13.177.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5924.15 via Frontend Transport; Fri, 16 Dec 2022 04:22:33 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Thu, 15 Dec
 2022 20:22:22 -0800
Received: from 74ef364-lcelt.nvidia.com (10.126.231.37) by
 rnnvmail201.nvidia.com (10.129.68.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.36; Thu, 15 Dec 2022 20:22:20 -0800
From: Haotien Hsu <haotienh@nvidia.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
CC: JC Kuo <jckuo@nvidia.com>, Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>, Wayne Chang <waynec@nvidia.com>,
	<linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Haotien Hsu <haotienh@nvidia.com>
Subject: [PATCH] phy: tegra: xusb: Support USB role default mode
Date: Fri, 16 Dec 2022 12:21:46 +0800
Message-ID: <20221216042146.99307-1-haotienh@nvidia.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.126.231.37]
X-ClientProxiedBy: rnnvmail203.nvidia.com (10.129.68.9) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8NAM11FT106:EE_|DM4PR12MB6613:EE_
X-MS-Office365-Filtering-Correlation-Id: c36c373e-ae98-416f-ea1f-08dadf1d27d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	+tgFvyF/XVD+Zpk8uc3kFgoWJJ0clFKpGIdcLkFMk/6XaQ9rJwXnps9g4UdVbXLi9xLa4F9wa+zN3F7gXfW2ZM0YzC8SZVcI9PIiGLyGYo9hNM83wLu7dBeyhKLRFZgXB57a65VpXBlTspM7SSOW6wjpD0h0tcPBj5Z5pKju88f/DGLwiBXbkQTRJXJiDoYO3lbrz1gNnjAVoqGW5yfeX07TDT8pyDOfJP/g2m2sf6JoJmg1wq1bs3IwbHgSdIh7HH2DMYLhl3ULRZG9sysxgi6mhXpVpupaTJ6z8DWX9uryKC9yVEiMpwGgnq702mM9aO9iLzXEoceouZi8BYFcY0qqLRg5U0mlh9chsIGBffXZY5YfS25jUIDziQ36NkauD/HK1vI52t/G3dpnSVTmaEQGwVfV8LkDM/sLl3L8Uf4XfBAL4RauowsZWzBYKUMtZEA26TiXjpC7ZQE9s3ZxL6NYOJAXIqb6ptmpMEDQhNa30SHr6jVhLf5BAn89BlMPL6UGWJOmU3WOB5G2bPUmVw8Lm7sy7oX5zKpsJv9/Zpo5D0y5qf7cmkdQYLuV8PzB53il1vAOp/13z34hET6z9PM/d0PagtntHwBRYvZ6LvkXfPhwX1rv7L7e79E+IufxuA2VcgBZ6oa5fBAbDx4L2Hrbi6uow3SbysOt61s5oCn8vNNXG9lJc4Q9BwF3j0Y45/ZF/SqHfqGEuL9RfBNA7A==
X-Forefront-Antispam-Report: 	CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(136003)(376002)(396003)(39860400002)(346002)(451199015)(46966006)(36840700001)(40470700004)(82310400005)(82740400003)(186003)(7696005)(26005)(2616005)(16526019)(47076005)(336012)(1076003)(36860700001)(478600001)(426003)(6666004)(107886003)(40460700003)(36756003)(8936002)(41300700001)(40480700001)(54906003)(4326008)(316002)(2906002)(86362001)(110136005)(70206006)(70586007)(5660300002)(7636003)(356005)(8676002);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2022 04:22:33.9888
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c36c373e-ae98-416f-ea1f-08dadf1d27d8
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	BN8NAM11FT106.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6613
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_202241_340136_A7304ECD 
X-CRM114-Status: UNSURE (   9.05  )
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

Support role-switch-default-mode property when usb-role-switch is
enabled.

Signed-off-by: Haotien Hsu <haotienh@nvidia.com>
---
 drivers/phy/tegra/xusb.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index 3707a0b5c1ae..78045bd6c214 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -718,6 +718,22 @@ static int tegra_xusb_setup_usb_role_switch(struct tegra_xusb_port *port)
 	return err;
 }
 
+static void tegra_xusb_parse_usb_role_default_mode(struct tegra_xusb_port *port)
+{
+	enum usb_role role = USB_ROLE_NONE;
+	enum usb_dr_mode mode = usb_get_role_switch_default_mode(&port->dev);
+
+	if (mode == USB_DR_MODE_HOST)
+		role = USB_ROLE_HOST;
+	else if (mode == USB_DR_MODE_PERIPHERAL)
+		role = USB_ROLE_DEVICE;
+
+	if (role != USB_ROLE_NONE) {
+		usb_role_switch_set_role(port->usb_role_sw, role);
+		dev_dbg(&port->dev, "usb role default mode is %s", modes[mode]);
+	}
+}
+
 static int tegra_xusb_usb2_port_parse_dt(struct tegra_xusb_usb2_port *usb2)
 {
 	struct tegra_xusb_port *port = &usb2->base;
@@ -747,6 +763,7 @@ static int tegra_xusb_usb2_port_parse_dt(struct tegra_xusb_usb2_port *usb2)
 			err = tegra_xusb_setup_usb_role_switch(port);
 			if (err < 0)
 				return err;
+			tegra_xusb_parse_usb_role_default_mode(port);
 		} else {
 			dev_err(&port->dev, "usb-role-switch not found for %s mode",
 				modes[usb2->mode]);
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
