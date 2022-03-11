Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2CBEC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 11 Mar 2022 21:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tepc78kAvqy2rm3wKfMvXQwurx6BjqR9bHi8LUuRdL8=; b=SN8RIQxVPrn9pj
	3pmzCheiCE+vhkarM4xSrsRj61FB3Hcw50IPldfkSGxO+WCseWKF2guWyyEbOEVv3kQtTIEn6PJrG
	mytZ1H3bHjyrOLL+CdKpsWInZo8K7NnQIGuyNwrntfP7uGc3f/40JC68h63R1hpGn/NKAY6I/+a/A
	I2n/GwK6o2ui7bbkob/e4Mpm56sJETXxZ+1NQvzkseiZR+jioVubO/6P3MrsdyUz83xOXiXlxcvjL
	Hx/bVl7tgFre3VgFBmcFvHrKMKoZuYMdwvtLHUId1TNsVKLReJFasPx4dLXnD7YUbjy0KmnyDhJC4
	CON+sQ+7VpwMHf4kFW3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSmzB-000ME8-Br; Fri, 11 Mar 2022 21:39:45 +0000
Received: from mail-ve1eur01on061e.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::61e]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSmz8-000MDF-Ee
 for linux-phy@lists.infradead.org; Fri, 11 Mar 2022 21:39:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PwkT4dfbG4DVNHzC2NkkHjP6Q+aLLpEorMXilnHhe7CCtgrmnRLJQe9yHPY0Ups7ALe36tiAsGpWb4XttHrKfuA7PdAyUrO0CY+MJQTuuVZWFWLNdxSoYFFRZVtpb0Qzv8lwkId1pPSrSZWVlIeZvWVrr30DxUS70h5n+tGd0ES/9HxRUhdiHL5f8aVqzTODXuA3xj6urb8ZV1aclS9EmAnHH6RT+jwLV9vdlWMo8qsfReSEuj/WVl2hBRviD/DR7/mWsHVDZLX43dg5naZz+gm6ZLLc3JJG1ol8VWVbUMQM+7lwHx3pnbH/udDuYkT5nmJXlnY2+mBBAU6AP7Ku8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bhK+Xd0wME4HqTXCdHrgXAb6Bo2Kjp/LIca9Qgnhcdw=;
 b=HIRNEZroNZc+FuamKjz6aOOnXrwjXiWr8H7eitlvghZKU9Lv9IG1/vyATpcWxPh0QB3ipCCVMvsN7SpoG94IoHlCylbF2QoYMSuerWXxhRh/Q/FRET7fdtY4Rh068KcWJdVCHoHpZGeBcdrz3O8X8H89CYyr/XCTmvgnuwGDnb7St2BTH7TAg5BPKZPzZloFIXA7sdF8oZ4K6V53yv2YzmU08HAdWSvi3UTZAc+CHSB3nn2KvoZP3oXq15WaRSB/P4XuzjGwsY0OAyBnkmqcZmQ7/rctXkGxj0xFZyE+lJU7fQ0O3iaXE85bkAlllK0uBGJkR6PMApnmNaXZ0F2rAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bhK+Xd0wME4HqTXCdHrgXAb6Bo2Kjp/LIca9Qgnhcdw=;
 b=KTO4qcDRSZYHv/GE46erRvw0xlrJS+rNR2JgOXLQi0oJ+SpGQkH2DqE9r4l7jPh3sN4g16W6EFtHN46h/U1fLNIcB9D5J6mvs3h0QK5wkc+cn5KUWbB8+uZJDCTTwXeEBc2Lw1yFoIAucndwqUwjFM0AkhopozVJiCfGjZClONo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8555.eurprd04.prod.outlook.com (2603:10a6:20b:436::16)
 by PAXPR04MB8845.eurprd04.prod.outlook.com (2603:10a6:102:20c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.25; Fri, 11 Mar
 2022 21:23:33 +0000
Received: from AM9PR04MB8555.eurprd04.prod.outlook.com
 ([fe80::c58c:4cac:5bf9:5579]) by AM9PR04MB8555.eurprd04.prod.outlook.com
 ([fe80::c58c:4cac:5bf9:5579%8]) with mapi id 15.20.5061.025; Fri, 11 Mar 2022
 21:23:33 +0000
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: davem@davemloft.net,
	kuba@kernel.org,
	netdev@vger.kernel.org
Cc: kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org, leoyang.li@nxp.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux@armlinux.org.uk, shawnguo@kernel.org, hongxing.zhu@nxp.com,
 Ioana Ciornei <ioana.ciornei@nxp.com>
Subject: [PATCH net-next v5 3/8] dpaa2-mac: add the MC API for retrieving the
 version
Date: Fri, 11 Mar 2022 23:22:23 +0200
Message-Id: <20220311212228.3918494-4-ioana.ciornei@nxp.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220311212228.3918494-1-ioana.ciornei@nxp.com>
References: <20220311212228.3918494-1-ioana.ciornei@nxp.com>
X-ClientProxiedBy: AM6P194CA0057.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:209:84::34) To AM9PR04MB8555.eurprd04.prod.outlook.com
 (2603:10a6:20b:436::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8e0cbcc6-0948-45c7-39fa-08da03a5652a
X-MS-TrafficTypeDiagnostic: PAXPR04MB8845:EE_
X-Microsoft-Antispam-PRVS: <PAXPR04MB8845704D8B62A02AD4B9DC3FE00C9@PAXPR04MB8845.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y97siVqkwJniZeKPAYwHjjcMf7VWHXBtaUtMyOz+Jy72g0tOJm3lDAW5bTGiWrfk/n+SIkuz25Xn4Q7rGfSQOtb3VMjxlmvhN1jU6B6v6k+ghrC/ZxztGWZcROABfRetEh2IrBSccQhZPHTDHKzAyv+82vEVTMX1inleBuFbhLELLIk2AF4I6sczdeOoF4P1LZhTnrDfUNvSRF81bhjK+nyYFL7mn3sXU8ELFiK1Pfd3gJzNwdadaWYVY1PHg7DN9VNlZWAkAxlgMxutI/vzdzz5SvApfMePHq3tMQikbg+i63aFEhKBi8B0Jn2mexUU+91go/E0XlscOdQj0wqV0GU5fVh8ExAiZPZbSYDA1eWp3tLiXPg+UbCLeVaI6pJVyYdYmhys/3xamMeCaPG/PTH6Q+VEeZNXYwLJpkX6wAHlHlowx67mihpgVvDDENc9GCA5zxW5usG8I+qIx04Jyqisr9rIJNwSBL0yQb13qsHMA/jJsMIwQgb+4v0463CzTHeFncZeQmEDOfsutsYR+AG8CxkSRJFPTDkgkMZCgdU5XCr4QYOapamVKiQs1PzsxGgNEhmoYU53+UTA+KUfvsJTv1a4jxYuz1y8lzi+8qCFz7WW+x4g16TUyU4/4xz5WSR5iaR6KERkILJx+Nfz6wQbIavx7v7DLP1ZN1gCqvZuXgJjioB8EEKeuF9VRhS0BewJNMjWyY6wDwbQCjptD/I9T/91ybNatnHHpf1xPvf5HAx8vMe6xTOt/BA2zXWI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM9PR04MB8555.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(66476007)(4326008)(66556008)(8676002)(66946007)(36756003)(316002)(38350700002)(38100700002)(6666004)(6512007)(83380400001)(8936002)(26005)(186003)(508600001)(5660300002)(1076003)(7416002)(2616005)(6486002)(44832011)(2906002)(52116002)(86362001)(6506007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oieTuoh2YUxdPBtQ3QCqz6ljsvuRzcQ19DAiY/TrQ9ba9rBrgyPjbOmtf+SG?=
 =?us-ascii?Q?0y6BqXh+0HzSNXO9yjHV12rmegBdVDfhKKTcAyjK1WZzU06mNJ9V4DdCLiNu?=
 =?us-ascii?Q?tAWL33QbjIRf2/VNsP+YcCnGwR4UC5UbShD9wAuc7lWFWy/MwOX3/2FVxNDn?=
 =?us-ascii?Q?va85zrWc9vb0IZwTZNc0KdH6UBZrJ4IoEO2P6NF+G/5e0Zq9mxQ4y6VUzaAE?=
 =?us-ascii?Q?k5Vr5v2rIufVr9p17R9h/oZH8Q8C8480avA5/Rn9fHouyON2+64rtWHh5k+W?=
 =?us-ascii?Q?WNOfndWgIzBiyhpGk7KXSSi0DFjX9nwaQZhiIp4vr1KBcYbzcLnaWQJGZBYV?=
 =?us-ascii?Q?EnDMqZlsNMEjP92N+OabQ+VQG5JjhdFgAWnC9ekFVkR2GrhwoLLw94z8UJze?=
 =?us-ascii?Q?DbzzyMai3kSxYN8RJ2bdOOQE2wP9B+ADeBZzbuOEbegqZOzIxmn2hI80IdCq?=
 =?us-ascii?Q?Lk330QGR4OfUFvbZQoTuJdGEX+Y7Myy7BkB9KXFDMKJ6712CZCuOYbb0FWEA?=
 =?us-ascii?Q?gFd92hfvjzk1sAMiyntj4tzrbDzgXet3rYLXj4nQ+lxLMOy1nuFa4/IZMOtC?=
 =?us-ascii?Q?aCYgVhwE9sEdCu592TxWmfyXPLOsBnYKw+jmOcnMlSeOBf9q/B2mHeawZybu?=
 =?us-ascii?Q?u4QOHAm3uWBLfhb8Aq4lsO4Zk2vnZnj47OQRIJIwD5CJa0irUk9wy7UUe2yv?=
 =?us-ascii?Q?QKX/7Smxd/UfgIDchySNhYgfCe2+75k72Qzhztk5g6o0ANO/lGOWIQs6x8tk?=
 =?us-ascii?Q?xwjc2ViFmftdkQnk8L7uUU4imFZJrqrooQPZM8Up48IY11tBkAQw7emjwxhF?=
 =?us-ascii?Q?kD8HrE0V8u+O/YijzszvhDI4knbe5XvSdz/nYeyCGyKTHyERWJhVu5O9Zqj6?=
 =?us-ascii?Q?s25xEIxFTSg4y6a1hxf9pWp8WPoWq6WQ0UHhwqgQo2ChMQ7YOY5kaJz6PFrT?=
 =?us-ascii?Q?h6vnCWvdlUaNPWbWbUeIieMyaZczEGk4bOhZhiJ/mAyrgn+h697+/Xw5dIrl?=
 =?us-ascii?Q?4t+KA00owSI/vQA4QzhRVtd/ZxWal2+M4+ri367LK9bZ/atv2VAPGoRRJ785?=
 =?us-ascii?Q?bLx1UKUFx8k1ngPkmkmpvGTvBogTRRQ3L5CYQJSSBe3xtOkEzsDHw6DJZSop?=
 =?us-ascii?Q?dAGLUbkvn+Z6kHsTKXoWQoNTneLlpZzaOE1gd95Exc9zD3Y1mhSGCBJFg22D?=
 =?us-ascii?Q?cche8/dCJyuwrIM/JtIo+pjbFQVKI1IqWaB5zbwfxl0yagfwUflGr8uzs7TF?=
 =?us-ascii?Q?RMoZRtKY74qBYg32hxrxlFcFNc0wACAvXOTK1XJipUYULidK1j+OQviT2LG+?=
 =?us-ascii?Q?F1BNJ3D/nbNnSCQIeotih9uocECFmkYNrnSG93+P47wlWXml0G0yDPLMJaN/?=
 =?us-ascii?Q?Ylj/kIeJ4PWDx5dd9x+OiavPvDZ/kMbGDZooTCvcYaqVdi+aEF6vOe8p9h/j?=
 =?us-ascii?Q?7EOniyDY/piZDYDJu6TK4jDbbwXauBU1d9a/aVgVzzrcziNSHd6XdQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e0cbcc6-0948-45c7-39fa-08da03a5652a
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8555.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2022 21:23:32.9505 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: efTXkEVFe6eG+8g3ljz2dzcczyH3sQfSAqy6wZdiejrvB9fGs5cNnhU+OzdpAPWR2V6VLQPHrviA2JmDocTU5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8845
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220311_133942_512167_090893B4 
X-CRM114-Status: GOOD (  13.98  )
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

The dpmac_get_api_version command will be used in the next patches to
determine if the current firmware is capable or not to change the
Ethernet protocol running on the MAC.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
Changes in v2:
	- none
Changes in v3:
	- none
Changes in v4:
	- none
Changes in v5:
	- none

 .../net/ethernet/freescale/dpaa2/dpmac-cmd.h  |  7 +++++
 drivers/net/ethernet/freescale/dpaa2/dpmac.c  | 31 +++++++++++++++++++
 drivers/net/ethernet/freescale/dpaa2/dpmac.h  |  2 ++
 3 files changed, 40 insertions(+)

diff --git a/drivers/net/ethernet/freescale/dpaa2/dpmac-cmd.h b/drivers/net/ethernet/freescale/dpaa2/dpmac-cmd.h
index a24b20f76938..e1e06b21110d 100644
--- a/drivers/net/ethernet/freescale/dpaa2/dpmac-cmd.h
+++ b/drivers/net/ethernet/freescale/dpaa2/dpmac-cmd.h
@@ -19,6 +19,8 @@
 #define DPMAC_CMDID_CLOSE		DPMAC_CMD(0x800)
 #define DPMAC_CMDID_OPEN		DPMAC_CMD(0x80c)
 
+#define DPMAC_CMDID_GET_API_VERSION	DPMAC_CMD(0xa0c)
+
 #define DPMAC_CMDID_GET_ATTR		DPMAC_CMD(0x004)
 #define DPMAC_CMDID_SET_LINK_STATE	DPMAC_CMD_V2(0x0c3)
 
@@ -70,4 +72,9 @@ struct dpmac_rsp_get_counter {
 	__le64 counter;
 };
 
+struct dpmac_rsp_get_api_version {
+	__le16 major;
+	__le16 minor;
+};
+
 #endif /* _FSL_DPMAC_CMD_H */
diff --git a/drivers/net/ethernet/freescale/dpaa2/dpmac.c b/drivers/net/ethernet/freescale/dpaa2/dpmac.c
index d5997b654562..d348a7567d87 100644
--- a/drivers/net/ethernet/freescale/dpaa2/dpmac.c
+++ b/drivers/net/ethernet/freescale/dpaa2/dpmac.c
@@ -181,3 +181,34 @@ int dpmac_get_counter(struct fsl_mc_io *mc_io, u32 cmd_flags, u16 token,
 
 	return 0;
 }
+
+/**
+ * dpmac_get_api_version() - Get Data Path MAC version
+ * @mc_io:	Pointer to MC portal's I/O object
+ * @cmd_flags:	Command flags; one or more of 'MC_CMD_FLAG_'
+ * @major_ver:	Major version of data path mac API
+ * @minor_ver:	Minor version of data path mac API
+ *
+ * Return:  '0' on Success; Error code otherwise.
+ */
+int dpmac_get_api_version(struct fsl_mc_io *mc_io, u32 cmd_flags,
+			  u16 *major_ver, u16 *minor_ver)
+{
+	struct dpmac_rsp_get_api_version *rsp_params;
+	struct fsl_mc_command cmd = { 0 };
+	int err;
+
+	cmd.header = mc_encode_cmd_header(DPMAC_CMDID_GET_API_VERSION,
+					  cmd_flags,
+					  0);
+
+	err = mc_send_command(mc_io, &cmd);
+	if (err)
+		return err;
+
+	rsp_params = (struct dpmac_rsp_get_api_version *)cmd.params;
+	*major_ver = le16_to_cpu(rsp_params->major);
+	*minor_ver = le16_to_cpu(rsp_params->minor);
+
+	return 0;
+}
diff --git a/drivers/net/ethernet/freescale/dpaa2/dpmac.h b/drivers/net/ethernet/freescale/dpaa2/dpmac.h
index 8f7ceb731282..b580fb4164b5 100644
--- a/drivers/net/ethernet/freescale/dpaa2/dpmac.h
+++ b/drivers/net/ethernet/freescale/dpaa2/dpmac.h
@@ -205,4 +205,6 @@ enum dpmac_counter_id {
 int dpmac_get_counter(struct fsl_mc_io *mc_io, u32 cmd_flags, u16 token,
 		      enum dpmac_counter_id id, u64 *value);
 
+int dpmac_get_api_version(struct fsl_mc_io *mc_io, u32 cmd_flags,
+			  u16 *major_ver, u16 *minor_ver);
 #endif /* __FSL_DPMAC_H */
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
