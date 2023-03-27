Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F3C7C77B60
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yg4jOmmMR4cI7k2T9ZIvT7/bo2783HSlkbMTUPOXxTQ=; b=4RzX05rpJl+7+n
	DTVjU13ncaNMUUi/40uBt/5tW2h09nTFiSMRi3Tms7/Qz4MgJowsjn/wTU+wIA+KoHaS/CrwirHvj
	doGEpQPJdIi21agCzLuQBj2nWCvfdD9EYlqfUUbdNANzRCS+4L+HMl1A67M6ZISFILxCx6+49ZdZq
	JcdtJSDaOWLF/VaQVm8ddZYM1VEgx+SsGNiFkS+RoLQ8ZKlVzD5lOzfIIXoTVMhlor5MqXfUyl8Jv
	DTbCZQ4erdn9rLrCWKBfuFehcizWiMj9moQaKFRGMtkpL1URlSUqfK7AH0uIf879EDJKU5wTVXpTE
	w+vXkupGIklphDaxxP6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgrIz-00C0CV-08;
	Mon, 27 Mar 2023 18:10:53 +0000
Received: from mail-dm6nam11on20620.outbound.protection.outlook.com ([2a01:111:f400:7eaa::620] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgrIv-00C0BI-0r;
	Mon, 27 Mar 2023 18:10:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ka4czxQvRW4d5f1k/yMI2ORVTQ7qDR88OUu2L3UUJgxD6+Zy9H+L3Jsz6f3nH0jmo7t0Y16KJdtxhhoLkb3WvRbsV/7V8Gg6qr9XpfaiG5LlympgFHSh6IM5N6gGoSSf3QAM+GsTHO9j2vwXbJj3VHLct+mupc4XhE6YXJTCKNEjI9BQMBYUkcrsv6panJtrXcHLF6gHlE+NQfH8bvOJLvWDXwhkXHqlsUxArvJfhozZS2Maux3K6RH1BugP+BcVnl7EH7JFJa+mzZIVTmOSdrjI0dJB6ZKO5xM9UIksPmsUcApTIlIy0j4hhsetT7x4Nmbf3X+Ekd/PqtCScj+Xyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/5bgdELRj2yg4bRuH4yg3zhbhm65RxLkRKrWOrIYeyE=;
 b=TFyJIYiCO47E+Vc94DVQvESyd8OIvEuqPDguuG16ud+JhddOfhMbwtxe7+jJblyDnDldaMx50wGU8tAtVC2fJrt8v20OU2Ocr7KKCF1H6PIsXo/c1qG/UErlk5VhOyqSYLACmQ6AYitUUNUBfty+02vr4CuwypnxNZEI1MKVmJWrZC7R6oCGvGyT9AHcGTkZCcwBA7u1J+R3UHRsiYIqmksA7YfyWWP31g101IOwQtgOidG/Q5XPVdrX8hI7WOAC6lmPrIFDxXrv/XET/l+L5eBs1/KrdEq58+hrEQZwEY07Ak74s7RjlylWkXH3KKw9Wmq4aTdhiJsxhq+AW7cB2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.62.198) smtp.rcpttodomain=amd.com smtp.mailfrom=xilinx.com;
 dmarc=fail (p=quarantine sp=quarantine pct=100) action=quarantine
 header.from=amd.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/5bgdELRj2yg4bRuH4yg3zhbhm65RxLkRKrWOrIYeyE=;
 b=HTB9HVoGJjJdlSMWfTM2sWY+sLFaPK0bJO3A3EG6LzMicOPKAnLu8we+0uvkFCkZavALVJi2pcdb9I/qDO1ygFGnNcfprvr7tv89uLc7gRBz8zwi/ZDZoy24Tynp/SbWyiULoUSjnIoz/0JUrKKcTAbZLH0waSczWR6Ta7F0HPo=
Received: from SA0PR13CA0012.namprd13.prod.outlook.com (2603:10b6:806:130::17)
 by DM8PR02MB7959.namprd02.prod.outlook.com (2603:10b6:8:14::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.41; Mon, 27 Mar
 2023 18:10:45 +0000
Received: from SN1NAM02FT0049.eop-nam02.prod.protection.outlook.com
 (2603:10b6:806:130:cafe::c4) by SA0PR13CA0012.outlook.office365.com
 (2603:10b6:806:130::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.17 via Frontend
 Transport; Mon, 27 Mar 2023 18:10:45 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.62.198)
 smtp.mailfrom=xilinx.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.62.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.62.198; helo=xsj-pvapexch02.xlnx.xilinx.com; pr=C
Received: from xsj-pvapexch02.xlnx.xilinx.com (149.199.62.198) by
 SN1NAM02FT0049.mail.protection.outlook.com (10.97.5.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6254.9 via Frontend Transport; Mon, 27 Mar 2023 18:10:45 +0000
Received: from xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 27 Mar 2023 11:10:42 -0700
Received: from smtp.xilinx.com (172.19.127.95) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server id
 15.1.2507.16 via Frontend Transport; Mon, 27 Mar 2023 11:10:42 -0700
Received: from [172.23.64.2] (port=50154 helo=xhdvnc102.xilinx.com)
	by smtp.xilinx.com with esmtp (Exim 4.90)
	(envelope-from <radhey.shyam.pandey@xilinx.com>)
	id 1pgrFE-0003Bm-8S; Mon, 27 Mar 2023 11:07:00 -0700
Received: by xhdvnc102.xilinx.com (Postfix, from userid 13245)
	id 6F2641045C1; Mon, 27 Mar 2023 23:36:59 +0530 (IST)
From: Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
To: <laurent.pinchart@ideasonboard.com>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <michal.simek@xilinx.com>
CC: <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, <git@amd.com>, Radhey Shyam Pandey
	<radhey.shyam.pandey@amd.com>
Subject: [PATCH v2] phy: xilinx: phy-zynqmp: mention SGMII as supported protocol
Date: Mon, 27 Mar 2023 23:36:47 +0530
Message-ID: <1679940407-13131-1-git-send-email-radhey.shyam.pandey@amd.com>
X-Mailer: git-send-email 2.1.1
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN1NAM02FT0049:EE_|DM8PR02MB7959:EE_
X-MS-Office365-Filtering-Correlation-Id: eeed25a1-5c33-439c-acdf-08db2eee9616
X-MS-Exchange-SenderADCheck: 0
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	OguYnhT1MiwaRftLQMHumOsq8r6z5a+zf1RUz1+b/2CvsSqz2jqFKUcYUExwjWJd+egaPksfoIqnFnoPFCnqswjlU2MNm4ku+hU71jpVQpSB0w2UA3x86uWgM0+O6yN7Hk01ngkPC4bhR3IME7iDAmAP3hd7oqpqq3A40ukHkxAgWoVrqOeotjMyIOfXtfdrBHx8/J3L7IWJ4H3oJe/yE76QoMj1DmY8SBdrojlt1B1kXnpGM43uHW9UvTP/61gp5zzFB8oeWG5VUvTixJe0cJC/EEdEmgi0YlKsPBfZvL9A3tbh1vJPOHhIn6Xw0kx9veVMjWLQEtkFcOoULcIzoGVFU2mqtrGA49+cI6VM2BM5McgNyNJDu12HzSN9X03D9SYixkRBeS/4kK2mN9CWwba0aEjMFMMNnFCUP6OOnfXcAF1P98wBreGVAFvgEDJgfpZsVT0oBt667crVl9dS97COej6hJ92qsMppWnJMLPqdSjrEv9bLM+OAGgQQc+JD5Zh14ES3KvIS7GMN8eUCZCBKEq15wtFCwchhfzIeb4pF7cBvVfySCsjDO8Bwu8JXQhoXyCIf0Nn9C0a9Ni5xSmUmToGvqYuDPSpHg9WbLaIJF+ANxodjfNlNZ4in3Doy06mT6wNTkjeTSUGrnWPF4eCf61Duhvq0mvRftKYUTbKy6ZALlaSfzWSUY2xYeExK4L2zaemJdNgpXWaQwuPN4M8rw3M8S2TMZb5HM+N1E2s=
X-Forefront-Antispam-Report: 	CIP:149.199.62.198;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:xsj-pvapexch02.xlnx.xilinx.com;PTR:unknown-62-198.xilinx.com;CAT:NONE;SFS:(13230028)(39860400002)(396003)(136003)(346002)(376002)(451199021)(46966006)(40470700004)(36840700001)(54906003)(110136005)(42186006)(316002)(478600001)(36756003)(2906002)(40460700003)(70206006)(40480700001)(4326008)(41300700001)(83170400001)(5660300002)(70586007)(8676002)(8936002)(356005)(82740400003)(7636003)(6266002)(186003)(2616005)(82310400005)(26005)(6666004)(36860700001)(83380400001)(336012)(42882007)(47076005)(102446001);DIR:OUT;SFP:1101;
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2023 18:10:45.7438
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: eeed25a1-5c33-439c-acdf-08db2eee9616
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;Ip=[149.199.62.198];Helo=[xsj-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-AuthSource: 	SN1NAM02FT0049.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR02MB7959
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_111049_330755_6085D817 
X-CRM114-Status: UNSURE (   9.04  )
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
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes for v2:
- In documentation remove "Other controller i.e" as now it's only PCIe.
---
 drivers/phy/xilinx/phy-zynqmp.c |    5 ++---
 1 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-zynqmp.c
index 9be9535..8833680 100644
--- a/drivers/phy/xilinx/phy-zynqmp.c
+++ b/drivers/phy/xilinx/phy-zynqmp.c
@@ -8,9 +8,8 @@
  * Author: Subbaraya Sundeep <sundeep.lkml@gmail.com>
  * Author: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
  *
- * This driver is tested for USB, SATA and Display Port currently.
- * Other controllers PCIe and SGMII should also work but that is
- * experimental as of now.
+ * This driver is tested for USB, SGMII, SATA and Display Port currently.
+ * PCIe should also work but that is experimental as of now.
  */
 
 #include <linux/clk.h>
-- 
1.7.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
