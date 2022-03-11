Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB11FC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 11 Mar 2022 13:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YpfNJs+/s72U5fKc9HOvDqc5zD6CjtZpVXpL1nTaWo8=; b=ZiQNmmjyf+ItAM
	/BQcu/aL3f+iM1Y2RxmfsfO1KT3cMDm2hEUOcDxIUfAKL+tuHiI6eceKdAJRMnZlNgWIUQuE1so+f
	BYdHtBisIfMcRXfnufNQevpU2nnYH/XGb5f6zliC4uuTdYglHTcEmruWwFYaYQp1aTzXCnHVXOarN
	7XJaTVrK8mXEKhRB7dhuVfZj8leSPFU8fpDyGZcRp5FqyDqol+HJJwiJVtaiMKaORXqpMTo020vQf
	xayqdyd1bKcaC+qun2hLTWRqcstXUUbZsEI9a9yj4PT88FAK4JGj+uGEoKivpuDHlJ9hPVfrAaYwA
	znrampeNcJQZgpUK1mDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSf2i-00GSZZ-44; Fri, 11 Mar 2022 13:10:52 +0000
Received: from mail-db5eur03on062f.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::62f]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSf2g-00GSXe-3s
 for linux-phy@lists.infradead.org; Fri, 11 Mar 2022 13:10:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SYBX7qtMjmxeJbupfsDGjlhyloHUHtQOovomdO1IPPTGWJ9jQt+FYdwj+hhjj8sgDKUk1lzenQ41ABeoe381e7Pw4Cuo/CyFN4KAo0vxnUCQCZ9a+TvJQUmUxhZMh31DCDhVRAX6R5lunaAJ6+PoGLfBKQtJ7MGzCLueAFtd93EdNQVO/JGsMe/hLSiQjgOqETp8/4OP+KASu1ARIZQcdmH+Uq7n7eP67vJSndYqO/o6ULbLw3TsJexFZOP1BNhCwE1Z4P5eUoqYBmeVSrlA+3x9w6zB4Ajj+HiGQmzglQ66pSshV4zHTKflFLlIu1or4qmiXXf9ZqCwrmN7vdR6cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xg9/kRc6yQblEgJP0lfV+NiLb+YjocdxwBrmjK8WHXk=;
 b=KggVwQC11HH7RR+/wcDJgRsj4DLddD2F1TGiCz35E9miQOJauM1F5cXzvwF4/UeYNirFE6JK2b63+5WYl0tXil79UkRvepMPZf0YuuHni/94duMQR1jiRKzKf4JtlueB1lf3oslKmBWyZlkPIOnTO/aC5a2sUZJbdOX9evJsyfkdxyFEOFkqgdcHSvRzSvtLUYelvDjV0D1/8PR6zM2SqDBtAaIoidMwIX+pYyFxXzC8aI9B33f5OD/c7celGW13VxKkhCQW7q7Nls2dim3icN68C9BwDQVj87X0/AWoVL5qEhmobruu/BHUnlKRGoS6dtl3ypmYIX24FPgDYVeNmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xg9/kRc6yQblEgJP0lfV+NiLb+YjocdxwBrmjK8WHXk=;
 b=RcTmmwOppFuQ+oGdjoG4d7UkCSZ1FtREYwq7XfwrMiG5tlPFfsG77uWpsJcucYy5MgNuaSC9pg6w82YI9o89mlaKlR0BKDqBVOJ+CCrXu052bY1SrFzWKnvGTbPuHH2v8Q9OkR1d89j4HX8ecXEkME6zhUoS5sfr+pNwqXR0AF4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8555.eurprd04.prod.outlook.com (2603:10a6:20b:436::16)
 by AM6PR0402MB3431.eurprd04.prod.outlook.com (2603:10a6:209:e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.19; Fri, 11 Mar
 2022 12:54:59 +0000
Received: from AM9PR04MB8555.eurprd04.prod.outlook.com
 ([fe80::c58c:4cac:5bf9:5579]) by AM9PR04MB8555.eurprd04.prod.outlook.com
 ([fe80::c58c:4cac:5bf9:5579%7]) with mapi id 15.20.5038.027; Fri, 11 Mar 2022
 12:54:59 +0000
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: davem@davemloft.net,
	kuba@kernel.org,
	netdev@vger.kernel.org
Cc: kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org, leoyang.li@nxp.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux@armlinux.org.uk, shawnguo@kernel.org, hongxing.zhu@nxp.com,
 Ioana Ciornei <ioana.ciornei@nxp.com>
Subject: [PATCH net-next v4 0/8] dpaa2-mac: add support for changing the
 protocol at runtime
Date: Fri, 11 Mar 2022 14:54:29 +0200
Message-Id: <20220311125437.3854483-1-ioana.ciornei@nxp.com>
X-Mailer: git-send-email 2.33.1
X-ClientProxiedBy: AM5PR0402CA0014.eurprd04.prod.outlook.com
 (2603:10a6:203:90::24) To AM9PR04MB8555.eurprd04.prod.outlook.com
 (2603:10a6:20b:436::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 12e607f9-8934-4b08-7b1e-08da035e59d9
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3431:EE_
X-Microsoft-Antispam-PRVS: <AM6PR0402MB34315AB44E5D5800954379CEE00C9@AM6PR0402MB3431.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sR5L7vDwcnO1C/ORk+lnUyC2N3FL9Osg/bFCarmtgMuhIQ8SbYWkRO3I21R1awUi4h7hDeIyDZWbwWDWKYztURJLAKNh7iWUn2Httx3+QWo+g3eeKbsC6DyLdS/8L1JwCsLGNTuv5UEGbcsxE7yptnBdj02CkGnVnHxMfFUCxL8a5xBUTtNBodXGlujeH9U/wF9CGqQDuBGLx4wywm5o5hAPShIk3dKw+gRwcqFcq7/3jqX62JNeOX0u0HSq5VNE577xAjos/vPpGhtTdKu0L+iLuKFPXAoUuNFWxQjUxAinrPAClW4ruFZZlHKYV4mROI3DNiDlB6YkV+ETpbdsGYPP2SnPxAiI/ab7qYfgV8mPbddT+lCuxr7PDVLzXCw5bsAJF+4PNYf9OXu4uNi4NhtktO/sS+7OZFkrKJwxn4Z9RgJpV2zWHfkYm/6ISV23SBiBZhpJQVgn//G0qUv/+nZEKQQUJ420SpvSwBSfOZWyDyiHy4NbIxakBqdJrebvH4JbIKD87O2iA52JkFqNZwt1ytvjEnWYlUfiTGqfMEaaUIW5ZeOuSddAIOeDUKblf5B1zSX37HwdA8J7KuiXfc4dGtdKyzHqWvRUR7uXT1PClyrJuCXHMbZeOsT0RsO1/9btrb9SZjUzPfjyB9ai4Oc9JOTduX2aXyQnX0G1Unyk94L+cJAf9hmShF5EnR1niEyGOyf2FOiIj5r9FKREeA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM9PR04MB8555.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(8676002)(66946007)(7416002)(5660300002)(6486002)(8936002)(44832011)(508600001)(66476007)(66556008)(316002)(4326008)(83380400001)(1076003)(2616005)(6512007)(52116002)(6666004)(6506007)(2906002)(26005)(186003)(86362001)(36756003)(38350700002)(38100700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?u5+C1n8mG3uCadYHjLJ764XsMGT9fw01Y+Q5bf+GSpUQMwTR/OduN3LGbMk1?=
 =?us-ascii?Q?Alh1cPJS9zKtr8Oltp4bY/8uOSTQDnrSfgOrV5lBswzjMLsMOJuXfuGOVFax?=
 =?us-ascii?Q?XMNF8ZlV5VbXvyt461+QaGtnSpSXXEvpWQeRgztqp+n1EvD1wDxxwpytXY3s?=
 =?us-ascii?Q?Zy1xt74orI5pkefsoH8+xzrOOHMSAPK6pZCghWAkiAAsGpnZRiIb1Kq/Nh9n?=
 =?us-ascii?Q?RTF6BTgRBJsCZc3wcVbU9dbHcJWTK7Yru3uZJWJu6kwz2g4NrN9S+SwsCtgh?=
 =?us-ascii?Q?klJHvGaWWYbHe2Ky7jnUd+n0UujbpLm2a9QV10/NW9OHuhmWHRclwlWkhRzF?=
 =?us-ascii?Q?nxA55IBGBI8KF5eHBu8dEwIriVJTB2qzdb1yMN1jG5RStNHsU66gA00rk4kk?=
 =?us-ascii?Q?Eo+AFqBs5GoX70n1XQRGPcf91ob4Usfozc86gvpB0ZyiGjW0JPcTYCc9jygC?=
 =?us-ascii?Q?r7jL//Cpr+/B4GYGb01XejPRx+kJqn4KOGlo4jbkJrnJMzUCRG9WGjUoGPEE?=
 =?us-ascii?Q?pYMatcqXWwJqHGkuf1RrK3VROXAgZbpkAcZLPCV7vplniNO3QTLTd+niZvt8?=
 =?us-ascii?Q?5y38VoV0bWDiRzSt6M5WVt4s4CdXjxfWLJBp5Znzwjx4DrVKpBc9+1eVaowA?=
 =?us-ascii?Q?LJV0QY1PmL8S+gNCrpzxtApE+uq4T6tCj4qiNQ3k8NNUPedhkne5kt05Utbu?=
 =?us-ascii?Q?kY+SsepqiUEtIkyIKHKAIJbgga/qTtLi1e/IQ2r5laj6WsEL6VBG8txeP3VW?=
 =?us-ascii?Q?ovca7YLMo3TMIURBQRa/V65UhJCtOJIXZ29lIQNSmvWFdkfhti2T5+kvX0Zl?=
 =?us-ascii?Q?qBVPzXZqS1osswCzeMMhaHdS2N+mM+m5Kg/i2oLgLif6yML7pI/obLDm8qht?=
 =?us-ascii?Q?4eHk6SwZseHQhy8yYruBiJCOg5VssOZIZc+wo/1EqH9mm8ydfeKE7zM6xNuR?=
 =?us-ascii?Q?wWJcVBOdL2WPMVo1K2mSeGPldqRxX6CeAcIAqcknWcuQPVVGwypxleXF+tN+?=
 =?us-ascii?Q?oyMVfYeh9zlLs0L2Z+/ei6c+A8bwuYLv2EnPrqsSt6Fbia+HprgHqIk0pcgF?=
 =?us-ascii?Q?FJPnqU8C7gGFzxD+t+g93NLL9c4LhICHgRXbPEdef43wY0Mx389yo7aFPJhM?=
 =?us-ascii?Q?VzffvjH2O6pPt6RDWlBoJovUs5l8H9X7vrWmDbEL0uccV1IbmvI+LTSzmvmo?=
 =?us-ascii?Q?LeBc/8zixTY5x1p5bZWzSnbFOex90xR604nABzEbcncuPGo0nS5xciQXT42t?=
 =?us-ascii?Q?Tu0H3fvr8+0Q/TGbZZvSChjQrbGLfFQ62zzYdpCAzXSlpYVbXZDJyMdsUvcb?=
 =?us-ascii?Q?nWo7a9LEwS1CdMiAl68FGUhejfC5IJAStgl/totsWbgkKI7F8iibjoPVtt7n?=
 =?us-ascii?Q?5f+q9FIjVDphtTibJXZCtT77YQAGNKzx7bpYF0mMb7IlhnPDM3hu6slCkATT?=
 =?us-ascii?Q?x+RfXdm1DcprivuRHT3xT2Hp6NySlrhjYLD0O5FFuJr+rK48KshYGK+Ol6ZW?=
 =?us-ascii?Q?UICJtk/6Qy7D/GCDA5u9jOQOBq/P6G8TqawuFuftfophDD24kTPMwARWSt1x?=
 =?us-ascii?Q?6OYOFfycNaLTLpWvn16IwTq78oCKGEGus7crnHzaStSFtaDKrl2YUnsPmDZn?=
 =?us-ascii?Q?9fzaZnC3YrtJZaBQM1HKyF0=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12e607f9-8934-4b08-7b1e-08da035e59d9
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8555.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2022 12:54:59.7924 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: po1zER91lP9mhSXjOsptuv8TQCGJtb6RYq8VS8FoHHplW7RZP1nqk/cBgXjW2Z0jwIHsb9nxvAv5ayXbEdzb9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3431
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220311_051050_179391_3C56B0D6 
X-CRM114-Status: GOOD (  19.05  )
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

This patch set adds support for changing the Ethernet protocol at
runtime on Layerscape SoCs which have the Lynx 28G SerDes block.

The first two patches add a new generic PHY driver for the Lynx 28G and
the bindings file associated. The driver reads the PLL configuration at
probe time (the frequency provided to the lanes) and determines what
protocols can be supported.
Based on this the driver can deny or approve a request from the
dpaa2-mac to setup a new protocol.

The next 2 patches add some MC APIs for inquiring what is the running
version of firmware and setting up a new protocol on the MAC.

Moving along, we extract the code for setting up the supported
interfaces on a MAC on a different function since in the next patches
will update the logic.

In the next patch, the dpaa2-mac is updated so that it retrieves the
SerDes PHY based on the OF node and in case of a major reconfig, call
the PHY driver to set up the new protocol on the associated lane and the
MC firmware to reconfigure the MAC side of things.

Finally, the LX2160A dtsi is annotated with the SerDes PHY nodes for the
1st SerDes block. Beside this, the LX2160A Clearfog dtsi is annotated
with the 'phys' property for the exposed SFP cages.

Changes in v2:
	- 1/8: add MODULE_LICENSE
Changes in v3:
	- 2/8: fix 'make dt_binding_check' errors
	- 7/8: reverse order of dpaa2_mac_start() and phylink_start()
	- 7/8: treat all RGMII variants in dpmac_eth_if_mode
	- 7/8: remove the .mac_prepare callback
	- 7/8: ignore PHY_INTERFACE_MODE_NA in validate
Changes in v4:
	- 1/8: remove the DT nodes parsing
	- 1/8: add an xlate function
	- 2/8: remove the children phy nodes for each lane
	- 7/8: rework the of_phy_get if statement
	- 8/8: remove the DT nodes for each lane and the lane id in the
	  phys phandle

Ioana Ciornei (8):
  phy: add support for the Layerscape SerDes 28G
  dt-bindings: phy: add the "fsl,lynx-28g" compatible
  dpaa2-mac: add the MC API for retrieving the version
  dpaa2-mac: add the MC API for reconfiguring the protocol
  dpaa2-mac: retrieve API version and detect features
  dpaa2-mac: move setting up supported_interfaces into a function
  dpaa2-mac: configure the SerDes phy on a protocol change
  arch: arm64: dts: lx2160a: describe the SerDes block #1

 .../devicetree/bindings/phy/fsl,lynx-28g.yaml |  40 ++
 MAINTAINERS                                   |   7 +
 .../freescale/fsl-lx2160a-clearfog-itx.dtsi   |   4 +
 .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi |   6 +
 .../net/ethernet/freescale/dpaa2/dpaa2-eth.c  |   5 +-
 .../net/ethernet/freescale/dpaa2/dpaa2-mac.c  | 159 ++++-
 .../net/ethernet/freescale/dpaa2/dpaa2-mac.h  |   8 +
 .../ethernet/freescale/dpaa2/dpaa2-switch.c   |   5 +-
 .../net/ethernet/freescale/dpaa2/dpmac-cmd.h  |  12 +
 drivers/net/ethernet/freescale/dpaa2/dpmac.c  |  54 ++
 drivers/net/ethernet/freescale/dpaa2/dpmac.h  |   5 +
 drivers/phy/freescale/Kconfig                 |  10 +
 drivers/phy/freescale/Makefile                |   1 +
 drivers/phy/freescale/phy-fsl-lynx-28g.c      | 624 ++++++++++++++++++
 14 files changed, 919 insertions(+), 21 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
 create mode 100644 drivers/phy/freescale/phy-fsl-lynx-28g.c

-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
