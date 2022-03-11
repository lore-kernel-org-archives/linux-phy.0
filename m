Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB43AC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 11 Mar 2022 13:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xywMh8aa0fol3QGHogPiA6dWPUtkknDVsl5jlM03uOg=; b=uFhSDTbSNjcUuR
	aOEeFdUrtRYXiagPkSUMgrCTbkA1fYLw8HHe91+r25wt49OItI6bW4/Jmt1kwtiyxnRx+rl6fqPIX
	UqV9v6TTRNuZxix9oMsZEDZcbMY1iFKJSljEqwh0bG4gfNzgDu3VBhV3wuh6d4l0IySsD8qvzxB62
	qfqcvXMGTQDipbawlQuto7k9/Ol12xEMW1PwmY8DPzakbCchS0NOxQ90vVdhBCVlnAAMSiB/APFim
	+b0lJSZ3hWUfOjWBLOfxp7TWBMzlTOG2aoJazO3SQzBEotxQGu+VuKVWg8wTVFteYs2QiXmhrbq+Q
	/ZM+E+g+Z5XnH+cyYmgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSf2r-00GScs-7f; Fri, 11 Mar 2022 13:11:01 +0000
Received: from mail-db5eur03on062d.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::62d]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSf2p-00GSbQ-5S
 for linux-phy@lists.infradead.org; Fri, 11 Mar 2022 13:11:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dAKGHHKVFEPoCFBM32QDcSGLfBfBDScDIpY++rMCgLBZ214Dsqyg02FdgYXnAlkIM4iORoHxknEHWhGVKGIoOgsIZnZAwCSn9dAT9/nAqy3FDd6LfU9i6cmHUytDRsfFei3kN3/rbP+U28ezNOiW4qYmZHvLkcI0qBJBeYpDJjA2kLPhsgn766qYNb+6KEuZAjR2A+vo1o3udA8YJfxSkvQMSzq90xpmnekivUqgS1OSiLNg21D88zE1+FXvE32zb8h+LLsf3mZ/7NhGIUx/qT0D8agmMGBG/QNaUxxAIZqZr/y23EYHCv1g6StGrOC4UaaVysYz2YLyLW0zB6AZ9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MPL+8jexV1pYLtA2yqBzEU7IpaEcUNbQ4UJ9sYLB070=;
 b=O1kI2I4k9zEozMZ3xEuceKDmLpHvdXT3Fa12972+v4BnVkh6rbP4SsnL5Rv6I7dO8WtHUiniPDukNRLoAqexriL8B6AEVwQ69FRaIOeL0Mm2U5J7Wu1udyojaEOa8fEoonfy8w/ebU5uCehDEGyptndqFhVrdyzA1q8PZXX6l9/Ky4pG64XWu1ulwvycwJBFuJFH19yofWkMC4Oogk1t8QnjvT4Bc0OPZaee3eBdtMZuM71RJ/ZofNGz1Sunh+rM0xg4cfIYb/3Zq1U6A31QOFfPZAbnvIMFaOaHOhPrOLJUPsxuZ/uGX0K7+wru1vZx5RiPAoUT12EPVooAls3TBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MPL+8jexV1pYLtA2yqBzEU7IpaEcUNbQ4UJ9sYLB070=;
 b=BVjcNBBWx/6PjXur/cNVFCZLPS0dHDT9MoaPLU9O2gXN8rGHM6sq7skyEhW7kcvuBFr4h0dOrV5FB730ThIjtuYcqWcdsc9FBR56DgtVfWbdCZ6RKdRSQ9buR0cchSaa9DHIxGTnzQe1mlS5tge/ivX8zInDM13ETEmLXXwHas8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8555.eurprd04.prod.outlook.com (2603:10a6:20b:436::16)
 by AM6PR0402MB3431.eurprd04.prod.outlook.com (2603:10a6:209:e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.19; Fri, 11 Mar
 2022 12:55:04 +0000
Received: from AM9PR04MB8555.eurprd04.prod.outlook.com
 ([fe80::c58c:4cac:5bf9:5579]) by AM9PR04MB8555.eurprd04.prod.outlook.com
 ([fe80::c58c:4cac:5bf9:5579%7]) with mapi id 15.20.5038.027; Fri, 11 Mar 2022
 12:55:04 +0000
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: davem@davemloft.net,
	kuba@kernel.org,
	netdev@vger.kernel.org
Cc: kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org, leoyang.li@nxp.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux@armlinux.org.uk, shawnguo@kernel.org, hongxing.zhu@nxp.com,
 Ioana Ciornei <ioana.ciornei@nxp.com>
Subject: [PATCH net-next v4 4/8] dpaa2-mac: add the MC API for reconfiguring
 the protocol
Date: Fri, 11 Mar 2022 14:54:33 +0200
Message-Id: <20220311125437.3854483-5-ioana.ciornei@nxp.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220311125437.3854483-1-ioana.ciornei@nxp.com>
References: <20220311125437.3854483-1-ioana.ciornei@nxp.com>
X-ClientProxiedBy: AM5PR0402CA0014.eurprd04.prod.outlook.com
 (2603:10a6:203:90::24) To AM9PR04MB8555.eurprd04.prod.outlook.com
 (2603:10a6:20b:436::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2489734b-ffcb-48de-af6f-08da035e5cdb
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3431:EE_
X-Microsoft-Antispam-PRVS: <AM6PR0402MB3431E567278DFD31E825E256E00C9@AM6PR0402MB3431.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YfiBEdN6vUHjyUl10Il1YoD4lplneYkH440cyQlByaAFerON/3Ey5qx1HclFjKGcLFA5YC3IHXmBJE2/3CEIEYSZGWj7i3sFrmsED9YGfZJctWd1ATfJJwJTtpjFEMZOzmPxfInGFOb9j9jQUerj4mq1h5k0gKl7DWKApp5JSv6gfzbqB4kOZE5L1oyFsiBsbBIUOM0e/3vsYC1Wxzdl5e6e0kQkzQ//AoA6J5JwbVvHgin0A4pK28XLBUk5JqCUy1xcvLFNsMVKF+DPrU/1d4ER8ic0kO3vFOQA2Ysb33N+u5jivAvk5YOOELwCgI9J3/I543X8zSzBv7eC5s7/3qRayyVobmODz0JMAw1UbAcvE15dqLWCasn3jmx4jTIscFR6nhjxPQVi47sXvGHo6cJjqAFyuQ9CRTLu+1xT3C0IYNkszr2zf7S/IlFX9Ga6BJorufNGtK7o19cFjXN7gx0R5gGLG3TbJ3RdNsN6tCRB+Wnfi3whMRIo/7GUwjYzf42CeWossfTpZjYDYIYlRFbTepYXClak4FcFXZdOv+/5KZVhUmR7GOHMfKsQZglpnpFuChVDX7f7DN8kQllcTYWtfF3lF8U0aQqzAfK7adB//j0GM1evX5mV5LdY8DpMwWJRokZg/IiJCTbPAn0TLaNTL4h3PO+Z8zPpe4yrh1jp4vgNlhyOqhDNnvQUHN6J
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM9PR04MB8555.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(8676002)(66946007)(7416002)(5660300002)(6486002)(8936002)(44832011)(508600001)(66476007)(66556008)(316002)(4326008)(83380400001)(1076003)(2616005)(6512007)(52116002)(6666004)(6506007)(2906002)(26005)(186003)(86362001)(36756003)(38350700002)(38100700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?eLaSdkATpQfzjnmlr3KdMma58trDCC9DpOpvBh7/KPscJptXs9DmXXJTDpjx?=
 =?us-ascii?Q?8idMTrJH1uskZuDNwHSq9oWoBW432KwKuBhaOw2fYtOaElh57RHJdFDseUpM?=
 =?us-ascii?Q?7Rfcpset9jCuhjRVafPhcwa7vC4M9r1eSIoi4lcuvXafRzf0VkrcgtzaRXNA?=
 =?us-ascii?Q?2Rjc6zGSnV30IDKzdiYwp58lT7fDy5RPSqXnvgvX+J/AcpJ367hnd/goNJaU?=
 =?us-ascii?Q?e69DYs2TKAWMzb/n5hHKc47lut4W/Vk/NZpGBpNJGyTW9rBjJ8Ge5u3ydOjM?=
 =?us-ascii?Q?r3ZEeHXXr9VqCyqn/ra0fSdrObUeumcqU4FB8ZlUsEZ2LTXd4i7UKwHwDWt7?=
 =?us-ascii?Q?yUvi1rAzdKVolTIJ27NmVK+kjpLsq+bHq4rZwoPjXY0yfHHjLQMLqUdAQeIF?=
 =?us-ascii?Q?QI7bVlyYc7bs3w02dKyVofgR9BKR+hlEIXctQh5UvG656X5PMOiE1yScSxEA?=
 =?us-ascii?Q?GzR6F5yhdVltKRoRn4J1qk9mkBAjUVjlwcsF9hoG3Dy0IhlMnWYrQRJWfHgO?=
 =?us-ascii?Q?9kM8x8o///tSxncWnUeiGlT5hDrrpImeZR6oc4qJ5U8mqODxV2v8cveNssyk?=
 =?us-ascii?Q?M7jr5tHiKMaCZ49jMN5GD1OdZOh96BciF7SOgxWKkojRRVQ9lO771r84Fz12?=
 =?us-ascii?Q?lLGUaRbyQg0yuEB/V86b7WFGf9hAzUCCvWDhgT6B6z3A9f4M8Soz1IFk9t8E?=
 =?us-ascii?Q?13YBW7t3fIbu/C7sOmzmJ2gnY4aTr4J8fXsHlKq9+r6LipsY1rxVl7LzaycL?=
 =?us-ascii?Q?Y0NRqGtbBreBdzs26/ihdBbI8x4+fNaH9KDcya9pel/ejt6RHdNPG8NiKZBQ?=
 =?us-ascii?Q?4MZtfc8hqFw0bZILt4TfFf2kFkNDptMMbCc8pPGhmt2tPKcJIps9K6I8n9a6?=
 =?us-ascii?Q?Uio4u2SddRqprLE+bF2ZHHHw5sy74qZTECWAkIwT1OJHuNV0zAkSWwQ5Djk5?=
 =?us-ascii?Q?MCu6zByx93qAIh3CIXr0vKOWqMdvtYNcfFAKDKFSpGYhNjDXUaLXigC2y6jl?=
 =?us-ascii?Q?UP3DPGks77xzQAJGCweCemwRx4PM80+TiUckfdo/wcOuSF8Fpm2cOEmnV9Pz?=
 =?us-ascii?Q?93rQXLqm3m4ogG70ngP+guxxQFZsaRNrp4JFtHoW61uULjvMHsCWAEmMbT6+?=
 =?us-ascii?Q?Gdv1qfUa1SkAS6PtdV5l0yFIVFjUHbel3qD+ibxZALy84P7/Z9hVYjK/5LnE?=
 =?us-ascii?Q?oTRUHzptT+pi3uysomlDFlY/kb3fVoZfu5/mvqcum9jgOl21/7RiQ4XjYxnc?=
 =?us-ascii?Q?+gvYgFFaY4XXxyXna+H3xtyABl/sZNABMAtV+ReMYNbtvyJ88Ubf2OgWW7So?=
 =?us-ascii?Q?Mga4o+HmcrRKbxgI5w67+3BuYt5s++Tr0HtBlBAahpd5QHXYPiNVh5BkkmeS?=
 =?us-ascii?Q?5Z014LdwMOM4qdRwGQqU/cgNTiFBl6UtyDKzOCeu9/KTvwcLI2jqEu9r2Qyg?=
 =?us-ascii?Q?bGxD4YdTBBo5C9TJ1PSwOWcmKTaxqxPJuJEzA9qR1ToX25tnrF7C0m+cNdHR?=
 =?us-ascii?Q?VY/9uT/cfX8v2lLuB7VjMJh373nLTHy0ZILDJ7bgJIu7n9v05roNFYfcCH7s?=
 =?us-ascii?Q?PB4PLSMSYDnFbvpsB2xHjfN6Vj3EkmGmP1V4/JJdMhI/30jDoGPEk9Z3mVxJ?=
 =?us-ascii?Q?LXnlgKKOKdxGejaaasOSMEA=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2489734b-ffcb-48de-af6f-08da035e5cdb
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8555.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2022 12:55:04.7462 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: djhA9zvToi5XRYRRIne49HYPn+6RWsDWb0F8h/1bQ+KS2yJY1D3g16mOEv9HyvxpWHGCc2BMeOKMgTbGTGMjAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3431
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220311_051059_223101_E80D0B35 
X-CRM114-Status: GOOD (  13.17  )
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

The MC firmware gained recently a new command which can reconfigure the
running protocol on the underlying MAC. Add this new command which will
be used in the next patches in order to do a major reconfig on the
interface.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
Changes in v2:
	- none
Changes in v3:
	- none
Changes in v4:
	- none

 .../net/ethernet/freescale/dpaa2/dpmac-cmd.h  |  5 ++++
 drivers/net/ethernet/freescale/dpaa2/dpmac.c  | 23 +++++++++++++++++++
 drivers/net/ethernet/freescale/dpaa2/dpmac.h  |  3 +++
 3 files changed, 31 insertions(+)

diff --git a/drivers/net/ethernet/freescale/dpaa2/dpmac-cmd.h b/drivers/net/ethernet/freescale/dpaa2/dpmac-cmd.h
index e1e06b21110d..e9ac2ecef3be 100644
--- a/drivers/net/ethernet/freescale/dpaa2/dpmac-cmd.h
+++ b/drivers/net/ethernet/freescale/dpaa2/dpmac-cmd.h
@@ -26,6 +26,8 @@
 
 #define DPMAC_CMDID_GET_COUNTER		DPMAC_CMD(0x0c4)
 
+#define DPMAC_CMDID_SET_PROTOCOL	DPMAC_CMD(0x0c7)
+
 /* Macros for accessing command fields smaller than 1byte */
 #define DPMAC_MASK(field)        \
 	GENMASK(DPMAC_##field##_SHIFT + DPMAC_##field##_SIZE - 1, \
@@ -77,4 +79,7 @@ struct dpmac_rsp_get_api_version {
 	__le16 minor;
 };
 
+struct dpmac_cmd_set_protocol {
+	u8 eth_if;
+};
 #endif /* _FSL_DPMAC_CMD_H */
diff --git a/drivers/net/ethernet/freescale/dpaa2/dpmac.c b/drivers/net/ethernet/freescale/dpaa2/dpmac.c
index d348a7567d87..f440a4c3b70c 100644
--- a/drivers/net/ethernet/freescale/dpaa2/dpmac.c
+++ b/drivers/net/ethernet/freescale/dpaa2/dpmac.c
@@ -212,3 +212,26 @@ int dpmac_get_api_version(struct fsl_mc_io *mc_io, u32 cmd_flags,
 
 	return 0;
 }
+
+/**
+ * dpmac_set_protocol() - Reconfigure the DPMAC protocol
+ * @mc_io:      Pointer to opaque I/O object
+ * @cmd_flags:  Command flags; one or more of 'MC_CMD_FLAG_'
+ * @token:      Token of DPMAC object
+ * @protocol:   New protocol for the DPMAC to be reconfigured in.
+ *
+ * Return:      '0' on Success; Error code otherwise.
+ */
+int dpmac_set_protocol(struct fsl_mc_io *mc_io, u32 cmd_flags, u16 token,
+		       enum dpmac_eth_if protocol)
+{
+	struct dpmac_cmd_set_protocol *cmd_params;
+	struct fsl_mc_command cmd = { 0 };
+
+	cmd.header = mc_encode_cmd_header(DPMAC_CMDID_SET_PROTOCOL,
+					  cmd_flags, token);
+	cmd_params = (struct dpmac_cmd_set_protocol *)cmd.params;
+	cmd_params->eth_if = protocol;
+
+	return mc_send_command(mc_io, &cmd);
+}
diff --git a/drivers/net/ethernet/freescale/dpaa2/dpmac.h b/drivers/net/ethernet/freescale/dpaa2/dpmac.h
index b580fb4164b5..17488819ef68 100644
--- a/drivers/net/ethernet/freescale/dpaa2/dpmac.h
+++ b/drivers/net/ethernet/freescale/dpaa2/dpmac.h
@@ -207,4 +207,7 @@ int dpmac_get_counter(struct fsl_mc_io *mc_io, u32 cmd_flags, u16 token,
 
 int dpmac_get_api_version(struct fsl_mc_io *mc_io, u32 cmd_flags,
 			  u16 *major_ver, u16 *minor_ver);
+
+int dpmac_set_protocol(struct fsl_mc_io *mc_io, u32 cmd_flags, u16 token,
+		       enum dpmac_eth_if protocol);
 #endif /* __FSL_DPMAC_H */
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
