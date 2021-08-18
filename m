Return-Path: <SRS0=m+Tr=NJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B1EC4338F
	for <linux-phy@archiver.kernel.org>; Wed, 18 Aug 2021 08:43:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 580B76109E
	for <linux-phy@archiver.kernel.org>; Wed, 18 Aug 2021 08:43:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 580B76109E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=xilinx.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G+U0hpCiDSxpX8d6xKaCnL2nGPiXObPveJKXcYvNsWc=; b=ev2ouwi6YSj8fV
	mFZUGjoXPNfeR7SAtq2alps3HxcoKWWBzTrI+bLCbPyZWxnO0sFjcji+zJcktB4pR8n/8+LySkanQ
	k22wd26/Vq8KNliLj0h2OhFVhQ2ekMBuTqzh0UMklIQGM91PLkAFkLFwyY5XRu+Th1uwB5B/erntn
	NGttkuNCBnpOYBP7+waWSUhnyt2VlAhKvQyN1RdvrdbU1Un8PSVZJvJlgu9Kj7qqmCKHhaIyph9pD
	b+KZH5uvi29euPeCdpiofhZueG/wRzHSIIcZ26SIVFXHdK8RvqgU9HewXGKi1lu1z72UGSq3mEoXM
	BBR7Sh5H32BwMrBMwqvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGHAj-004hM8-QL; Wed, 18 Aug 2021 08:43:41 +0000
Received: from mail-dm6nam08on2066.outbound.protection.outlook.com
 ([40.107.102.66] helo=NAM04-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGHAh-004hKz-Al; Wed, 18 Aug 2021 08:43:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PDuJ1m4RSIV1EdfRPJYTFCM7dtsdSkDooGPzRaFTxrfUCq0E+exOVZHVPwCgdeug+Hizuri12e0fAMfhCux51424DLQKAyXsDplFgJE1bdDAS10a7bfCLJ2Z63m9RauQ7P6IDm+cg3/ZAZueAwYhtlYWc/OKQHbaosYOV7KZ5htfwODwn2a0xbJTLcn5s1DP1Vasp7MfKvD9Ds2HXTJukmWJqHn0HFQ+xS2SQPuK10E+aJL0Fx+Do8qkBxHWOTCZHlBpu21qRc9R9OZCSjoVVOJBnwGUae16mEB6tpctQoqFqKrGXWVeX3OZ5jUGmfuWEsGCP4V6NG/kb6PbEC1akg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6rqpoCVu7vTEVVyKTmDOXpEkAhsZHB96jwiimFKe/Ns=;
 b=LpX7RR7cawADWVpMZX/SbLk8dZNVgQAAjknueokIjR189MOkbfLcQaGGAN2ZUTsSYTqYYG20N1Ru4BU+WGRWTk1j6Y208UUzAtq3mqh5/AhJueEnUmEk2H44OsqtpHbtqjVro9q5pTFXkNL3PXeYWgedS18V2RHuwrJQ3ZSKHRQRfCxB7bxICLWvXh2bklPkqSTLgFT2J153gFlXspMeVs7HWaM9VRQQcNSIHQHj9NTG8VuKSdeNu5mykhnPgBc6esYoYTH6IRFKZ5GPzscjstaD4fWwffQi3yOWeDwzbZu92seeQBu5tO3XvbSa81pb+7qgimTeI0mHAYc59Ex6Fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.62.198) smtp.rcpttodomain=ideasonboard.com smtp.mailfrom=xilinx.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=xilinx.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6rqpoCVu7vTEVVyKTmDOXpEkAhsZHB96jwiimFKe/Ns=;
 b=rGB5R379nnk7m42EuH9jWCByWpc2MzfvVfvV/JT/CnsUgc5eVxzEbS3NBCRiqNaLhK2Yc3bi+nr0ga/5fTZgNdQQRKmN+nFO7auB7r1qOUcbvEE6/ZFfdopO/t9fkQugFlZbTbd7YTGMKioDmCHmXI5TgcHMD6gawNZgb3IbAXk=
Received: from SA9P221CA0026.NAMP221.PROD.OUTLOOK.COM (2603:10b6:806:25::31)
 by DM6PR02MB4873.namprd02.prod.outlook.com (2603:10b6:5:fb::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.17; Wed, 18 Aug
 2021 08:43:35 +0000
Received: from SN1NAM02FT0035.eop-nam02.prod.protection.outlook.com
 (2603:10b6:806:25:cafe::55) by SA9P221CA0026.outlook.office365.com
 (2603:10b6:806:25::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend
 Transport; Wed, 18 Aug 2021 08:43:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.62.198)
 smtp.mailfrom=xilinx.com; ideasonboard.com; dkim=none (message not signed)
 header.d=none;ideasonboard.com; dmarc=pass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.62.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.62.198; helo=xsj-pvapexch02.xlnx.xilinx.com;
Received: from xsj-pvapexch02.xlnx.xilinx.com (149.199.62.198) by
 SN1NAM02FT0035.mail.protection.outlook.com (10.97.4.137) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.4436.19 via Frontend Transport; Wed, 18 Aug 2021 08:43:33 +0000
Received: from xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Wed, 18 Aug 2021 01:43:31 -0700
Received: from smtp.xilinx.com (172.19.127.95) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Wed, 18 Aug 2021 01:43:31 -0700
Received: from [10.140.6.35] (port=57526 helo=xhdsaipava40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <piyush.mehta@xilinx.com>)
 id 1mGHAX-0006Sn-Cs; Wed, 18 Aug 2021 01:43:29 -0700
From: Piyush Mehta <piyush.mehta@xilinx.com>
To: <laurent.pinchart@ideasonboard.com>, <kishon@ti.com>, <vkoul@kernel.org>, 
 <michal.simek@xilinx.com>, <linux-phy@lists.infradead.org>
CC: <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <git@xilinx.com>, <sgoud@xilinx.com>, Piyush Mehta <piyush.mehta@xilinx.com>
Subject: [PATCH] phy: xilinx: zynqmp: skip PHY initialization and PLL lock for
 USB
Date: Wed, 18 Aug 2021 14:13:11 +0530
Message-ID: <20210818084311.2643986-1-piyush.mehta@xilinx.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 73be2b6f-6071-424d-8313-08d9622442f2
X-MS-TrafficTypeDiagnostic: DM6PR02MB4873:
X-Microsoft-Antispam-PRVS: <DM6PR02MB48733FB998CE18F18097F634D4FF9@DM6PR02MB4873.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: p/gof0wvTC67L4wcYliyh1j4LwlfhnEJtt0PZlU7OS8vwQLCzwke/WZyy1CvNhnQvY+mBnme9BiAMllvf/iX1gNxmS+MR/Ba1fRh/AAgeU8VWAlmr168un8NNqTIJM2I3PBzdTsr16F012z2iblnainh6fSCx3HhU7O1x2msiaCSkvk9wOsfBSkcIWKYS+7RQX9OdS6EzYM/AK/fYuiyxekv5ya72VsqqGsfMp9XREtDuXYR/WuWJ6mghk4xl41+oXR3eBVs5WKocSdgiL1rU0oXeKgTDAcNeNzf6f1sRL2qVMK47SK2ThUyYIpfwgxOpeZXu3iuN7edpG28OqtnCwkq6iaxeZA2Ey6/F7D2B80oFUCnM4bEPukabf2ubaaUrSHA7udwEVkmJIP2zoriwn+EGhBg8qlp8gJm0fM1863JknvYU9o1/264SmsYpD+m4FycS/bijlufZpqaZ1dSkh2ztz433P0FJDMPxJtVTbRb6sr+fbEiEMhi6TbhmZf0CxMB7Se6XaPyIayJxaze1MMT9RTRGqsFOsT0mJsh2XQKVrJW8SzRkot7hv+GsJQdlNz/rY99q3rq4upjfUrEcCbWwOPQ3PKPYiS7aAXccjUEu+QhkhVUkqIw22+kiLzUcy1Q01YengcA6qnaXsJqZ+5wDDZufzuSCLrm9vrnY4fEoBb5SLf/Cj3ACg4LkJAfsy4MdKCko9J84JX980wgOgO4XKaUMxQR8iMAvHC7Glw=
X-Forefront-Antispam-Report: CIP:149.199.62.198; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapexch02.xlnx.xilinx.com;
 PTR:unknown-62-198.xilinx.com; CAT:NONE;
 SFS:(4636009)(136003)(39860400002)(396003)(346002)(376002)(36840700001)(46966006)(82310400003)(44832011)(83380400001)(82740400003)(110136005)(356005)(9786002)(2616005)(70206006)(1076003)(2906002)(6666004)(8936002)(4744005)(5660300002)(7636003)(70586007)(8676002)(478600001)(426003)(107886003)(4326008)(336012)(316002)(26005)(36756003)(36906005)(186003)(54906003)(7696005)(47076005)(36860700001)(102446001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2021 08:43:33.0360 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 73be2b6f-6071-424d-8313-08d9622442f2
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.62.198];
 Helo=[xsj-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-AuthSource: SN1NAM02FT0035.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4873
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_014339_427578_6303B13C 
X-CRM114-Status: GOOD (  10.84  )
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

PHY initialization for USB is required on linux boot or when
gt lane is changed from the current one and it is applicable
on PLL lock too.

Signed-off-by: Piyush Mehta <piyush.mehta@xilinx.com>
---
 drivers/phy/xilinx/phy-zynqmp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-zynqmp.c
index 35652152ce5d..f478d8a17115 100644
--- a/drivers/phy/xilinx/phy-zynqmp.c
+++ b/drivers/phy/xilinx/phy-zynqmp.c
@@ -626,6 +626,9 @@ static int xpsgtr_phy_power_on(struct phy *phy)
 	struct xpsgtr_phy *gtr_phy = phy_get_drvdata(phy);
 	int ret = 0;
 
+	/* Skip initialization if not required. */
+	if (!xpsgtr_phy_init_required(gtr_phy))
+		return ret;
 	/*
 	 * Wait for the PLL to lock. For DP, only wait on DP0 to avoid
 	 * cumulating waits for both lanes. The user is expected to initialize
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
