Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8428BC6FD1C
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 12:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ziayh9CVAqDSRwinz3tZp5U+39+B6lCeACQjbVmSmQc=; b=wD+/2Rf/sFPLSA
	74Sf9p47GOvljDUWfRqIcIQMoZNfwbdhs5/rIzo5pRFj4ONdUC56hIBuOJYWJY/46Ues2qKTWilLH
	WrAbzOn26vKV4DiSJlNXM/snHo6p6/ac6hJXe7mYmVZwo6pb3Sfch0AhB+a1V7paaLsSOXYOO/KnB
	RsaS4Q8pS2Yimrk/zZ1/J9+LIBb5+O8fs+Ob4tSXkQUP9qVv4wsUoLsWUFvKOuVFgG6OvGkf9sZub
	/F3LXaMYbZCcsS2y6u/g1r+A64twwmxC5fteIj5H9YLfdaOW5U72c72bRmj8nsvp6DzuvRepL9UKA
	1DGUlE0I7+t0bLpecyaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfgTX-004Lf1-0c;
	Fri, 24 Mar 2023 12:24:55 +0000
Received: from mail-mw2nam04on2060f.outbound.protection.outlook.com ([2a01:111:f400:7e8c::60f] helo=NAM04-MW2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfgTT-004LdM-2i;
	Fri, 24 Mar 2023 12:24:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BIW2NyLUGjIQMhVe/jlHjrax1frP9fwhSFHmvjX56TfJNCVJim2/p3Kcbk86H6m/sCvtrrm3aZ0w+meEWas3EQGDl1qUWO6eNCf8pjRtaIOu/e7H/JaZ18F0ptODIr/hV8c8nzRaiwirYUEn5ZA4xuW//uzmEz9Mhdiw7x343U/Yy2Wa1cbG0wFusM61aezUoL6YO8S5BKqGs8BKkJcbHOc4HIWPgVVhC6gzfjQLd38cLYWmE4QK/qALuT/ctJ/PW1dvGZSPVZfcBzGelt+ZcdMTDzUuAUk0qaEWvpm2s2F4BD7Q7uBmM2oJh1gsyCM7ri+Hdlxb94LxTRwOPyPyRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zrklw00+Zs69l5D6Gy/mRxDKEUobNt1PSN+cbHQIb68=;
 b=N0U6ExXETOwGEJ7pR450KxDR1Lq4+SBEnPweXFK/y35hQuDHA5HkBTwtFCsHACoEGCjSNuz69MP3qUqCJyI2apyDdf5y6kgQ0KzsVpRrvzqv0WLmNB3wjTBfa9iVq30ukpMYwu9iIIs55NJCLVEGvRUUiXa0uPFGGRUK9BB18GunceruwO2h74WonwcEPkZt8mARtKfaYqyrqH2r1ArcRNTjhhxffLJAOAAVai6QbozA/vVAPQ6pmKZDe8Fa1fLlQGrTp7NZVhk2JDA+FB56DaaudaLxdrzlXKEnegjI8veobMn9l9F4SMzSi9BW2An0aywJHwsVS8n3sdYiX0nR6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.62.198) smtp.rcpttodomain=amd.com smtp.mailfrom=xilinx.com;
 dmarc=fail (p=quarantine sp=quarantine pct=100) action=quarantine
 header.from=amd.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zrklw00+Zs69l5D6Gy/mRxDKEUobNt1PSN+cbHQIb68=;
 b=Ka0+UUreaojAbM8xdyPpR5Wj5wWMMYp8bhmgKFZ27BO/PLYUngPzPMXshXYBJCytYbwXdF6yvcbGkoDUSLmuneUnJ8Q04qyhdSjW9u9HU4NMoJXt1tansU7j8+lSsG63fTzvLEr7iEarBIdIewLOiZmA+3b1yAJtKcFGohp+PnE=
Received: from BN9PR03CA0655.namprd03.prod.outlook.com (2603:10b6:408:13b::30)
 by MW6PR02MB9814.namprd02.prod.outlook.com (2603:10b6:303:240::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Fri, 24 Mar
 2023 12:24:46 +0000
Received: from BN1NAM02FT036.eop-nam02.prod.protection.outlook.com
 (2603:10b6:408:13b:cafe::a1) by BN9PR03CA0655.outlook.office365.com
 (2603:10b6:408:13b::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38 via Frontend
 Transport; Fri, 24 Mar 2023 12:24:46 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.62.198)
 smtp.mailfrom=xilinx.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.62.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.62.198; helo=xsj-pvapexch02.xlnx.xilinx.com; pr=C
Received: from xsj-pvapexch02.xlnx.xilinx.com (149.199.62.198) by
 BN1NAM02FT036.mail.protection.outlook.com (10.13.2.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6222.17 via Frontend Transport; Fri, 24 Mar 2023 12:24:46 +0000
Received: from xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 24 Mar 2023 05:24:44 -0700
Received: from smtp.xilinx.com (172.19.127.96) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server id
 15.1.2507.16 via Frontend Transport; Fri, 24 Mar 2023 05:24:44 -0700
Received: from [172.23.64.2] (port=36899 helo=xhdvnc102.xilinx.com)
	by smtp.xilinx.com with esmtp (Exim 4.90)
	(envelope-from <radhey.shyam.pandey@xilinx.com>)
	id 1pfgTL-000FmK-VF; Fri, 24 Mar 2023 05:24:44 -0700
Received: by xhdvnc102.xilinx.com (Postfix, from userid 13245)
	id 2928F1045C1; Fri, 24 Mar 2023 17:54:43 +0530 (IST)
From: Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
To: <laurent.pinchart@ideasonboard.com>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <michal.simek@xilinx.com>
CC: <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, <git@amd.com>, Radhey Shyam Pandey
	<radhey.shyam.pandey@amd.com>
Subject: [PATCH] phy: xilinx: phy-zynqmp: mention SGMII as supported protocol
Date: Fri, 24 Mar 2023 17:54:39 +0530
Message-ID: <1679660679-10409-1-git-send-email-radhey.shyam.pandey@amd.com>
X-Mailer: git-send-email 2.1.1
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN1NAM02FT036:EE_|MW6PR02MB9814:EE_
X-MS-Office365-Filtering-Correlation-Id: 5fe6467e-6632-4f58-6212-08db2c62c13a
X-MS-Exchange-SenderADCheck: 0
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	eF8RqhONaUZEf2h2PbvjRO6NQib0nuk/7JzWyFbWSlCYmOZs62IaqQi+JL5XAdsTRc/+LNByh6cxtIIEfO47aWsH6TTJeODTMd2Fg1ow/p0NRu4i/SJMtQe73HXN+tcf0020RqF+m7O4o30XD3kLikrJu0m8JHUqx5vC2N6QQitvFxHlhm3nNdZnDNbA/zNBuNb5pAb+HJPt4ZT0s1qDExIktbODuOgoFa5BB8FeRIBcKdHMH1SlWnolCZH4cBRH/e85T57jBXLLVu/w+Ar2jw+meM3qT/WLZEDfTDTQlS6McnN5zI369LyrBWI4JNtd3pLtzvUkPGsuaFQyvuqMwsN194sITKOqoraM7qK+eicXn6VINq0Gx/yZPlCaftfzyBx67LPu2TYafhZGUrmhJszVdnlu9WOW2PQuilYQ5vlBtVeE/uKk+aF09sb/qI9hx6cBpnmvmKWpgzNVWVyJkIRQ0AOhOLt2DO1bVeMdiuz1e9zx1N3MsW1piYquEyK6d/EyFkjYs3pilL63r1rwuv0hdkkFJma8hTysXvdYWq8wQwwKSStxh/JIHERyk2RDPlXAYeBljkGhjdkxtVCoyIRZ86jFTRUqnNZhdYX16XyCypQCknxtk1C5mZI1+ngvA95T212pelr8nPcUqZweTUBv785nYXglc8ukqWiOWsnunV5KPG2x4PX1GMSJuLl4dREG6tIvimDyYMXmQC1XeWqJU8EaDjse8tU0gwpKjYw=
X-Forefront-Antispam-Report: 	CIP:149.199.62.198;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:xsj-pvapexch02.xlnx.xilinx.com;PTR:unknown-62-198.xilinx.com;CAT:NONE;SFS:(13230025)(376002)(136003)(346002)(39860400002)(396003)(451199018)(46966006)(36840700001)(40470700004)(83170400001)(40480700001)(356005)(2906002)(40460700003)(36756003)(83380400001)(2616005)(336012)(186003)(42882007)(6266002)(478600001)(82310400005)(110136005)(36860700001)(70586007)(8676002)(4326008)(4744005)(70206006)(54906003)(47076005)(8936002)(42186006)(6666004)(26005)(316002)(41300700001)(5660300002)(82740400003)(7636003)(102446001);DIR:OUT;SFP:1101;
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2023 12:24:46.1897
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fe6467e-6632-4f58-6212-08db2c62c13a
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;Ip=[149.199.62.198];Helo=[xsj-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-AuthSource: 	BN1NAM02FT036.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR02MB9814
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_052451_882198_91DCF14C 
X-CRM114-Status: UNSURE (   9.02  )
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

SGMII is validated on kria KR260 robotics starter kit. So modify the
comment description to include it in supported controllers list.

Signed-off-by: Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
---
 drivers/phy/xilinx/phy-zynqmp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-zynqmp.c
index 9be9535ad7ab..ebe5ba730234 100644
--- a/drivers/phy/xilinx/phy-zynqmp.c
+++ b/drivers/phy/xilinx/phy-zynqmp.c
@@ -8,9 +8,9 @@
  * Author: Subbaraya Sundeep <sundeep.lkml@gmail.com>
  * Author: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
  *
- * This driver is tested for USB, SATA and Display Port currently.
- * Other controllers PCIe and SGMII should also work but that is
- * experimental as of now.
+ * This driver is tested for USB, SGMII, SATA and Display Port currently.
+ * Other controller i.e PCIe should also work but that is experimental
+ * as of now.
  */
 
 #include <linux/clk.h>
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
