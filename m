Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 146B7C2BB41
	for <linux-phy@archiver.kernel.org>; Tue, 16 Aug 2022 08:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VoCo9FH5zrOurDB+F13Glcpk6xs1qmPVT+8EbN0o7XE=; b=OO9PobcH2GsgP+
	jMB28Clnn52NonnqVXTj6WN9dfmqmgeYQuOnmamiSY4BNMKjijpfAxqx/Le/Pud4FTaxb4K5CjYDU
	vvs/SjtJ171inY5eQ5VZYeZwy5/nK9nCy9fYwRuVfvuv8b3dDKh1yMB48dXEc69OL1/F0FTXPUWaf
	X6m+9to7T8Fgq3XkMV3Y7c8MJ03L3AkmKZ4aL8KpEESTuVlONeqVxV7GmxPaRNAEh6nkhqfNiDUcV
	wq6TBvLMLioQ708OZrKW9db8WO3MbUgNhpk6PTgkzWuX1dl2yCLBDkzJsZ5ktnoyur7lYNtYlsXTC
	tA7i+vzSj5yJrzlQ5J4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNrs7-00GZrL-GS; Tue, 16 Aug 2022 08:24:23 +0000
Received: from mail-mw2nam10on2049.outbound.protection.outlook.com ([40.107.94.49] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNrrt-00GZfo-GP
	for linux-phy@lists.infradead.org; Tue, 16 Aug 2022 08:24:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Txyqpm1/LH9zUljRJh67kCYH4GdVwpWbEDUj4EvvtHaBAzCaVxOyC/3PUbImaprszeC7eJzaa+eApr7ukE/flgFsCYd5hBOa/qnAvnbl0kLV62YupFeFgVGiqZTQZYb7xgwGwPmSNlhOHZywJgN6Cz94COPkh44tQevWz35MaWEyhpt3LN6330GsbCC8AoLXJi9GXWN5WZDLqevQss48cHgKr3lD1/rIA5qJ9o4S2vHZ3F9W9p7URbNK8v3a4/Vqx97L6BEQzIcK1uAqzhbQ1iOVttnBwH0kCWhDNc2IPHPnHWtv2yit19TTgAJNL79Y+AlSHAT+f+ZICYO2PU2iyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zw7NSr8L0kLuo5Fy+J+L/vnl1tjW8t/tRgaG3ksVrHY=;
 b=AdIDMPz0RbGHsMHRdNKk+NpU0RA/K5eabOTvc2jltm6GPaA2BrRZaCAY0eWD4t0fI9fw9J72Ty5+UnrkZgPJ9BXDZCaUwvrR827pyLnio1/IJpQhBKOm2SXluiKGY01ahIjx8y0KXHavu2+PcsEnYxboBKFB+x6Xu9oSyH4OhR/DWT4qPpEJdbAfcivMkSqt13T67BNYCQ1azQy4CHmpA+3YCr3D5djd51rjR79HWjLiyVKcDRnoIGvTs+1y2aaAAMzs+wXVB8mlB0LlUF5QEGzcBgnoai5c2F3cDHS5KTU24F1uzpcz2tI/m1x3GHST6shoCTXF2EAlS7oiJh5a+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 12.22.5.236) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zw7NSr8L0kLuo5Fy+J+L/vnl1tjW8t/tRgaG3ksVrHY=;
 b=QlygyKvgf7pBok9GEtKWFV1D+p7VQ6UUKz1fG7ovxCUNse2Pjx34gHbwMk7drbZ1HTCYi11ZwnUNvyVgjRnS9TZtq5KBWsep2yn4lTjN2+h01sdbnn9YK0XB2XzfNM7QZtyh4yxQucvwlS9FM8F2n2+99P3qktPxC0ZzccX76tOX682PSF3nrbHiJA4KqslcbV7RAxEI2DT6lxFeu5mwP3geTziWVgYqgoVhzSjg4ThmtCE7kpkRxN/4LRTb4cN3srgEF+/ae+73CiilH2DWYS6CZubnwjzcCbyMkHBYb1D1t/5FKnk+lKfNceKF5m/vbaezK70L/MIOgdMJKHa5mw==
Received: from DS7PR07CA0022.namprd07.prod.outlook.com (2603:10b6:5:3af::24)
 by BYAPR12MB3223.namprd12.prod.outlook.com (2603:10b6:a03:138::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.11; Tue, 16 Aug
 2022 08:24:06 +0000
Received: from DM6NAM11FT030.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:3af:cafe::ae) by DS7PR07CA0022.outlook.office365.com
 (2603:10b6:5:3af::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.10 via Frontend
 Transport; Tue, 16 Aug 2022 08:24:05 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 12.22.5.236)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 12.22.5.236 as permitted sender) receiver=protection.outlook.com;
 client-ip=12.22.5.236; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (12.22.5.236) by
 DM6NAM11FT030.mail.protection.outlook.com (10.13.172.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.5525.11 via Frontend Transport; Tue, 16 Aug 2022 08:24:05 +0000
Received: from rnnvmail204.nvidia.com (10.129.68.6) by DRHQMAIL109.nvidia.com
 (10.27.9.19) with Microsoft SMTP Server (TLS) id 15.0.1497.38; Tue, 16 Aug
 2022 08:24:05 +0000
Received: from rnnvmail203.nvidia.com (10.129.68.9) by rnnvmail204.nvidia.com
 (10.129.68.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.29; Tue, 16 Aug
 2022 01:24:04 -0700
Received: from jilin-desktop.nvidia.com (10.127.8.12) by mail.nvidia.com
 (10.129.68.9) with Microsoft SMTP Server id 15.2.986.29 via Frontend
 Transport; Tue, 16 Aug 2022 01:24:01 -0700
From: Jim Lin <jilin@nvidia.com>
To: <jckuo@nvidia.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>
CC: <vkoul@kernel.org>, <balbi@kernel.org>, <gregkh@linuxfoundation.org>,
	<jilin@nvidia.com>, <bhsieh@nvidia.com>, <linux-phy@lists.infradead.org>,
	<linux-tegra@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-usb@vger.kernel.org>
Subject: [PATCH v2 2/2] usb: gadget: tegra: Reduce pad power
Date: Tue, 16 Aug 2022 16:23:53 +0800
Message-ID: <20220816082353.13390-3-jilin@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220816082353.13390-1-jilin@nvidia.com>
References: <20220816082353.13390-1-jilin@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: eafd2aac-8c8a-499f-6a0c-08da7f60af36
X-MS-TrafficTypeDiagnostic: BYAPR12MB3223:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	9K6djmczq3d6vVQDmcul1Sj3Q+4fhHmO+YjbAkQ1ddIEnlw6hePUYVPUOhPyqEQ8ue0nIoDyWtZIRNHa0aw+GEdFeo28/LCgmFGe56ZtsVZvUq0dTwZoZBPG9tE9Jtr/bUbCLXhOnNvJLllQKtS8UXHVAniKxWCiegcsKX6lv1ZkqksNwmlkHZlCnqsfG4M1GX0lQ4pX+WSQGVnGPAtmbcZ2uYU1ajUIzhRRFRbApKqjHPNhdtlKvxJKjUXA/sNziqPIbtsDgeoslQomiyNyopb8p4VOcydAOvSsYpV8lBEKKq2SEoi6/6WBSrHYkSOv2/wwkRRfydMI4gUTOVjlpM10WHEkP3sjqfyyCyS2/uk6OrFh73CyjhkOQrrBUgVYVcFkSuRIrBuYsQnR7fTiaTiRJQKB5g7kvTFHL6mUnF7hNEiH3Y9LNI37HEh+BqKd6WXzvVLNLOJ7CBhOb38s06lMxiwxgVtUz6QKBdF6e7CQ+16fBW9SWzRIygbVrYqoODZnidRUuASzld6xJ7WhygKEbfOuDhZLCPflYLLUi6y5hkLPcmJifB0EftKku1bhpQp8yjSyo6+BRGqIN+/TfNfJI5FXC/b2/gNIgyTEhLU1V7LXqvwuB1Ls9B108tHKfLruXYWEIO+Kpuc/wNQnB5xK+YbnrdNXjflDuiz9Jf7OwsMt4L6PSo4D466+QkP6HdreZx+dd6Z1A1+H7MnX85ktqaxScFm327XXGnd2jNxSNJRdzsajvgaF0ppd1NAKZ8tpqtLCENjsW+mWdeEiE1DBtUhZnHAQhhPKyOfEfT3zpeg+8e9ufN4rUx1kFAOXU3+WYe0B2s2SSNxpWcVVxA==
X-Forefront-Antispam-Report: 	CIP:12.22.5.236;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:InfoNoRecords;CAT:NONE;SFS:(13230016)(4636009)(376002)(136003)(346002)(39860400002)(396003)(36840700001)(46966006)(40470700004)(4326008)(2906002)(26005)(2616005)(82310400005)(7696005)(6636002)(40480700001)(36860700001)(8936002)(40460700003)(6666004)(86362001)(110136005)(41300700001)(54906003)(36756003)(478600001)(81166007)(82740400003)(356005)(336012)(47076005)(83380400001)(426003)(1076003)(186003)(8676002)(316002)(5660300002)(70206006)(70586007)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2022 08:24:05.8263
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: eafd2aac-8c8a-499f-6a0c-08da7f60af36
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[12.22.5.236];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	DM6NAM11FT030.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3223
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_012409_565550_F10857CF 
X-CRM114-Status: UNSURE (   8.08  )
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

Program USB2 UTMI pad PD controls during port connect/disconnect.
Power down pad after disconnected to save power.

Signed-off-by: Jim Lin <jilin@nvidia.com>
---
v2: update copyright year

 drivers/usb/gadget/udc/tegra-xudc.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/udc/tegra-xudc.c b/drivers/usb/gadget/udc/tegra-xudc.c
index 43f1b0d461c1..e59f19be6327 100644
--- a/drivers/usb/gadget/udc/tegra-xudc.c
+++ b/drivers/usb/gadget/udc/tegra-xudc.c
@@ -2,7 +2,7 @@
 /*
  * NVIDIA Tegra XUSB device mode controller
  *
- * Copyright (c) 2013-2019, NVIDIA CORPORATION.  All rights reserved.
+ * Copyright (c) 2013-2022, NVIDIA CORPORATION.  All rights reserved.
  * Copyright (c) 2015, Google Inc.
  */
 
@@ -703,6 +703,8 @@ static void tegra_xudc_device_mode_on(struct tegra_xudc *xudc)
 
 	pm_runtime_get_sync(xudc->dev);
 
+	tegra_phy_xusb_utmi_pad_power_on(xudc->curr_utmi_phy);
+
 	err = phy_power_on(xudc->curr_utmi_phy);
 	if (err < 0)
 		dev_err(xudc->dev, "UTMI power on failed: %d\n", err);
@@ -757,6 +759,8 @@ static void tegra_xudc_device_mode_off(struct tegra_xudc *xudc)
 	/* Make sure interrupt handler has completed before powergating. */
 	synchronize_irq(xudc->irq);
 
+	tegra_phy_xusb_utmi_pad_power_down(xudc->curr_utmi_phy);
+
 	err = phy_power_off(xudc->curr_utmi_phy);
 	if (err < 0)
 		dev_err(xudc->dev, "UTMI PHY power off failed: %d\n", err);
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
