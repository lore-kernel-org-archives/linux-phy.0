Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F9D4C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 21 Nov 2022 07:27:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ez5vX+7EdO36YSSM3D4u3qHKGg8KO4RyhF8B0byBXsY=; b=NPbbkCVLsLuw5b
	eopAC5EdVTQ0c0TPlCfRsna8N9ZdRHHZqdcWdEK1xFlTjl+3S6zUWTfuMitrONDlVQRPAhx8lc2Od
	CYk0Dszdb1Xsn+TLA1yoHfhtcAS4qYO/BkurQ1ip0G+DcRtiYOWNlbxCd88eDgt5MFjVNgfnWqsS5
	vh+h47CgropPMIUV77GG1R+B9YGeMxdwayaRgzhPz0RvfRSpRh4uAqb1YlHHQlTNJmL7/EMX9r9ws
	4M2NSlwAoYafguaUllF6YoZvXAem5UG/t5O1A/bBHjnWC4jJxWau0YTSSJcivsjLUZbMuh22Y7+9t
	WmB5FrQLznwolri3orvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox1Cs-00ALAh-Ho; Mon, 21 Nov 2022 07:27:06 +0000
Received: from mail-he1eur01on0601.outbound.protection.outlook.com ([2a01:111:f400:fe1e::601] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox1Cp-00AL4z-DL; Mon, 21 Nov 2022 07:27:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q4e4yGJVjSr1nvJfA+JzzFjDPlukivDUK9QvS86KRg57yYUQNSsxBGB20V0Q7w6cLzZfdP/5lUdfiUnrPrQTGg4ykbNJ8eaHAZJ7mqnQCRSvfgjzvPThzhNpVCmUHXOykXGhyWn2ihINcXqT4recAZRRu1PCeASUZAVl+3napE5cQYVVkys/wq9aovf6rV1w62YZDW3WsxGckOj/OqZbRUCa3WzfumqTo0sZuoViYduvPXIAwf+oOtRaJ2b05pQ7XmlVIy9ZE05xBNRm0eOtDaXXg2LbsMX7ffRKsrbflIPMMZDfyY0h/JQe7Ao/3ns1X1a/EaSWrjBlbg8YmrFkOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ax+iSoDRovbihzbLJHubNFTn6Y7J//DxyIVd5oM7vuY=;
 b=kY2Dpi1TSyH9OlU0dDqleKj4ONgqhPnfIlWu+qAPjlyM+QTA8sChl7t/8eYdFOx6p+gCHEP93IHa3mi+eLawC9igxrsTj98HXGyOBhZNsrqD8kex4kGW6YEuBDPANVfh5TRBTxP0B2L1gZ4O+x8mG1ZEMhOLOqWjI9cWNToaZGISDV2TU2oR6TwVuqZHEPwUlTKn/2R4oummB7BHeZeQGOsxcucHV9f7LfKdClsIi1IRhr5NoJy9AcOMRFYXxQ8ERCPDbpz6NaXB/fiiB9twsScRPimKgQjMuGFw9KtbE5mdZ/gZ0TiBr5CluHfD9GV1SKlzQ2tbT2221lyQtKfWjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ax+iSoDRovbihzbLJHubNFTn6Y7J//DxyIVd5oM7vuY=;
 b=HNMN58aMofF08DfIJbP+v0GSlO966b671OduZd2JLXXbgOT2DrIfv0i9NvZ9O4GRB7mqf1ke2pucij7RH1V4DXDeRB8UPcqd7fDD9cQwGKHs3caxXGl55/4Y7q9PkaY/kSVziI5evPmDIm2Kj+pQy0yD1oSqWltsOUytmntT3rQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com (2603:10a6:102:2b1::21)
 by DBBPR04MB7769.eurprd04.prod.outlook.com (2603:10a6:10:1e0::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.9; Mon, 21 Nov
 2022 07:26:53 +0000
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::60b2:4bec:7707:e196]) by PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::60b2:4bec:7707:e196%5]) with mapi id 15.20.5834.015; Mon, 21 Nov 2022
 07:26:53 +0000
From: Sandor Yu <Sandor.yu@nxp.com>
To: andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	robert.foss@linaro.org,
	Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	airlied@gmail.com,
	daniel@ffwll.ch,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	festevam@gmail.com,
	kishon@ti.com,
	vkoul@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	alexander.stein@ew.tq-group.com
Cc: kernel@pengutronix.de,
	linux-imx@nxp.com,
	Sandor.yu@nxp.com,
	oliver.brown@nxp.com
Subject: [PATCH v4 00/10] Initial support for Cadence MHDP(HDMI/DP) for i.MX8MQ
Date: Mon, 21 Nov 2022 15:23:50 +0800
Message-Id: <cover.1669013346.git.Sandor.yu@nxp.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: SG2PR06CA0246.apcprd06.prod.outlook.com
 (2603:1096:4:ac::30) To PAXPR04MB9448.eurprd04.prod.outlook.com
 (2603:10a6:102:2b1::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9448:EE_|DBBPR04MB7769:EE_
X-MS-Office365-Filtering-Correlation-Id: 5af55e4f-efd7-4e71-6914-08dacb91c336
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	fDX9GvfojAjE27BjVdFlBdaoRZznmSs8rzXQ5js5WQNVEweVPxIULFistXagVC7WwHNZFRk7EkPZHM8cJKIxurhI4ww1meQqK9dl2CVsEGTizwps/Bs7nJWpKpi6+mqj/FxX0Zbacmr42lLB7Aop1UgxGtopswN5E6URbZ1I1HsYUSG9t+afLWuoJ9eQ5wD3tOuXdqoLueXkuSgZpVPe6qmqvtdaHv0PtV1z7Jt0YaXIy1qc95CZs6utDDOc9aMNpig8eiKaYwe1Cm8PVZHGDhEavzhp21VvlQehZQf5ySZuuFfL04rgXkbY/v7Emgo+0dY3E8Pijc/iwORykhfmeneyctyf5+Bc9rH2TOoGdlc/xYZVwACSvKH2Qs2uHfVcjNFcRJfEjHRqX7X+h8MFRS2DE9lABruhRGnZDoi5JBvcJspIlOXcch19kNQAd8Yj9EC5PoSZMhvGGlFDY2lpgQTtxpXhcqZnoJxAs0z1/hWtjVsPIMf0PB7SBpSVh/NNwpY4hDUoV6yfRbTqyHhCRYs/+Msrlh/NzxZCfX0BC2I3v5DIVxUGxc1duve119as337S9XlCvqt9xNsJrLATgE9z5EAv2DEFbv8Wsb+MvXmqIRzisuyNa+bzDLfWjcds/xE9HcmF5kC9KulSmr+ax6ijan525Q5T1pYcwsLwTY0BJk30t7UK1brWSYMz/iTf4ysrCM3PMLPJcTkp1UwwtjAFxVC6URs7OEFYKAalnvedz9OdE8c66QPAxsXncphx
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9448.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(366004)(39860400002)(136003)(376002)(346002)(451199015)(86362001)(36756003)(8936002)(5660300002)(7416002)(2616005)(2906002)(186003)(316002)(52116002)(4326008)(6506007)(66476007)(66946007)(8676002)(66556008)(6512007)(478600001)(38350700002)(38100700002)(26005)(921005)(41300700001)(83380400001)(6486002)(966005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?j4sHi9Nz7aM7+cpsSYss+3G4oO/5ZxDecCzC86n5jWDIw1E9WiKzbE/9brBB?=
 =?us-ascii?Q?mjA76v6uVGOMzc/NPtRUV0ii6xKcIaEG4IPbAunFYvUPxQB/O0RuVNv7/1Ht?=
 =?us-ascii?Q?eXXxuZGDBIA4gCkB8wizxhWCpdZTJT0HCv7KZANCAR8ZiDDWpq66FOhGQmKS?=
 =?us-ascii?Q?03Gt6zNiiocMoswQ2OOiI/ktNszc8BLIOCUf7d2uDWFj15k6dwtVcE4B++qn?=
 =?us-ascii?Q?PAttDQ8GUpzziyaLsdZWN83HUzwZZR9mgb6xjy0orQjb/d7kTK8gKYcvQQBF?=
 =?us-ascii?Q?YLo57i/y7lIFYrP0K/Pkc2hjwT04UdEcGGwXtn3UXfHk+tMDEodyPNIjF8VE?=
 =?us-ascii?Q?4X6W6EX5VGXCmD93prNApBOHbmZPw/mQUIBFkkaQuQTmCg6gaP8UoLLe4s96?=
 =?us-ascii?Q?KZjyy6ccix21E5sW757XJCtHbQ/62g7ENhdCwbokP1fPyp4BPLeF+y0ye1AF?=
 =?us-ascii?Q?ryuRmZE2THLMJ5IdfsGtmkXrl3S/9kKikSsJDD8SJpgmGHiOzEYcfTH0vLwJ?=
 =?us-ascii?Q?WW9xy+NO1eXw3f9dm4zcSR0ZxxPGDxQT611Z9la6/t8AioX4ZYhS/5hlsdaL?=
 =?us-ascii?Q?c2Ayh8eFg2LKQzCJP7wu6agyFxupEnBppbbxJgpwG5yN5m+zyS0ZLyBTPEFO?=
 =?us-ascii?Q?/8iYJdecP2gwV/in4/hVSUREGY+7AOOAbKktIbUg/bDhdOCvN98/5YO3vDYa?=
 =?us-ascii?Q?kmkiw0sbHFuQ8xyTdfi9SofLuABsZOsF07bllW6eKL8jzwXUFzUpgPjjNHcu?=
 =?us-ascii?Q?IGpBfGG8FdeUShTMRThb8Jz2qyxCQ2WRFyfwQQE58+LnLbkU3zfAiOlletGy?=
 =?us-ascii?Q?zX5hJwyoT62gIx3VHJg8wGz/gs7bqor4jOoQCQD4rvrS8ASQbLnM5yo0LDsi?=
 =?us-ascii?Q?murgbnQstS8LAwr/6upiaHi1Zl0f9/SySXRzw1jAgwNO12h41K6dpKB79hiF?=
 =?us-ascii?Q?+mQFGZcF6vl45BjbcibG4ZLhyoqRkUS+JeXRdZbZh0ixjKsm3F3js5Oy4PWu?=
 =?us-ascii?Q?qH+/yGAYCQgA5zTQh2gVKfJ9hhUUW0g+wWOu/9RL+iA0Gf90S6N2sCR9IuEC?=
 =?us-ascii?Q?t3BzrjJDD1EUtGt/9zdR1hB1FbK6kDZrZfLsTtsE1ebIuXzomD3zdcseB10Y?=
 =?us-ascii?Q?TbyVBgD5rGTEn6HwtTYcPP6nbiV1pAbkZQrTJLYEHHW14S3VT8arMHnEvqlg?=
 =?us-ascii?Q?yJJE3JgI/PljFqU+LzLACOdsBrN/RYorJl15LfU7OeGxeCYe+WXP5OOT6ege?=
 =?us-ascii?Q?TPKtgfd1Ch0bb0GA4D0CnjB4RWM8+Yh2cOYBgN4gGOO1MXjxn47ymEHMsXLC?=
 =?us-ascii?Q?z+1n8b2QePgqIocJKeFp+Zj4O8aUeQWvvk+B+Fh+AGaNl1aig4Rb9+pBzdlD?=
 =?us-ascii?Q?HRZRMFAD+TwuJAYG4rsTNXWFLu6u3W8HPlm5+3Ei32Ie+YjYKGw8/CSXL5y7?=
 =?us-ascii?Q?/R6Wm4A6x3k3Ekt9qtQ/JbxeWGFCTIYW7HsURqEel6P0EX9S8ipaSrsBZR0s?=
 =?us-ascii?Q?LqUWdM7bvdmgOB+jNBSkzYsSwzeOZ2HJtcqCmP7S2AK6myJt+/RL1xnZIREL?=
 =?us-ascii?Q?N2rXhKDcNuRXD0s2XDrKOUwApaVmsMIbybm3jqro?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5af55e4f-efd7-4e71-6914-08dacb91c336
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9448.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2022 07:26:53.4196
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7+nRnhwwOvudyu47Smxrrj45S/OEIWaD0edhqVYLwAAZORnti9urEQvlXoyQX7p6MFMtvdNomB4Yy5zLllwRBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7769
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221120_232703_483357_CEC02963 
X-CRM114-Status: GOOD (  15.42  )
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

The patch set initial support for Cadence MHDP(HDMI/DP) DRM bridge
drivers and Cadence HDP-TX PHY(HDMI/DP) drivers for iMX8MQ.

The patch set compose of DRM bridge drivers and PHY drivers.
Both of them need the followed two patches to pass build.
  drm: bridge: cadence: convert mailbox functions to macro functions
  phy: Add HDMI configuration options

DRM bridges driver patches:
  dts-bingings: display: bridge: Add MHDP HDMI bindings for i.MX8MQ
  drm: bridge: cadence: Add MHDP DP driver for i.MX8MQ
  dts-bindings: display: bridge: Add MHDP DP bindings for i.MX8MQ
  drm: bridge: cadence: Add MHDP HDMI driver for i.MX8MQ

PHY driver patches:
  dts-bindings: phy: Add Cadence HDP-TX DP PHY bindings
  phy: cadence: Add driver for HDP-TX DisplyPort PHY
  dts-bindings: phy: Add Cadence HDP-TX HDMI PHY bindings
  phy: cadence: Add driver for HDP-TX HDMI PHY

v3->v4:
dt-bindings:
- Correct dt-bindings coding style and address review comments.
- Add apb_clk description.
- Add output port for HDMI/DP connector
PHY:
- Alphabetically sorted in Kconfig and Makefile for DP and HDMI PHY
- Remove unused registers define from HDMI and DP PHY drivers.
- More description in phy_hdmi.h.
- Add apb_clk to HDMI and DP phy driver.
HDMI/DP:
- Use get_unaligned_le32() to replace hardcode type conversion
  in HDMI AVI infoframe data fill function.
- Add mailbox mutex lock in HDMI/DP driver for phy functions
  to reslove race conditions between HDMI/DP and PHY drivers.
- Add apb_clk to both HDMI and DP driver.
- Rename some function names and add prefix with "cdns_hdmi/cdns_dp".
- Remove bpc 12 and 16 optional that not supported.

v2->v3:
Address comments for dt-bindings files.
- Correct dts-bindings file names 
  Rename phy-cadence-hdptx-dp.yaml to cdns,mhdp-imx8mq-dp.yaml
  Rename phy-cadence-hdptx-hdmi.yaml to cdns,mhdp-imx8mq-hdmi.yaml
- Drop redundant words and descriptions.
- Correct hdmi/dp node name.

v2 is a completely different version compared to v1.
Previous v1 can be available here [1].

v1->v2:
- Reuse Cadence mailbox access functions from mhdp8546 instead of
  rockchip DP.
- Mailbox access functions be convert to marco functions
  that will be referenced by HDP-TX PHY(HDMI/DP) driver too.
- Plain bridge instead of component driver.
- Standalone Cadence HDP-TX PHY(HDMI/DP) driver.
- Audio driver are removed from the patch set, it will be add in another
  patch set later.

[1] https://patchwork.kernel.org/project/linux-rockchip/cover/cover.1590982881.git.Sandor.yu@nxp.com/

Sandor Yu (10):
  drm: bridge: cadence: convert mailbox functions to macro functions
  dt-bindings: display: bridge: Add MHDP DP for i.MX8MQ
  drm: bridge: cadence: Add MHDP DP driver for i.MX8MQ
  phy: Add HDMI configuration options
  dt-bindings: display: bridge: Add MHDP HDMI for i.MX8MQ
  drm: bridge: cadence: Add MHDP HDMI driver for i.MX8MQ
  dt-bindings: phy: Add Cadence HDP-TX DP PHY
  phy: cadence: Add driver for HDP-TX DisplyPort PHY
  dt-bindings: phy: Add Cadence HDP-TX HDMI PHY
  phy: cadence: Add driver for HDP-TX HDMI PHY

 .../display/bridge/cdns,mhdp-imx8mq-dp.yaml   |   93 ++
 .../display/bridge/cdns,mhdp-imx8mq-hdmi.yaml |   93 ++
 .../bindings/phy/cdns,hdptx-dp-phy.yaml       |   68 ++
 .../bindings/phy/cdns,hdptx-hdmi-phy.yaml     |   52 +
 drivers/gpu/drm/bridge/cadence/Kconfig        |   25 +
 drivers/gpu/drm/bridge/cadence/Makefile       |    3 +
 drivers/gpu/drm/bridge/cadence/cdns-dp-core.c | 1071 +++++++++++++++++
 .../gpu/drm/bridge/cadence/cdns-hdmi-core.c   | 1018 ++++++++++++++++
 .../gpu/drm/bridge/cadence/cdns-mhdp-common.h |  400 ++++++
 .../drm/bridge/cadence/cdns-mhdp8546-core.c   |  197 +--
 .../drm/bridge/cadence/cdns-mhdp8546-core.h   |    1 -
 drivers/phy/cadence/Kconfig                   |   16 +
 drivers/phy/cadence/Makefile                  |    2 +
 drivers/phy/cadence/phy-cadence-hdptx-dp.c    |  737 ++++++++++++
 drivers/phy/cadence/phy-cadence-hdptx-hdmi.c  |  891 ++++++++++++++
 include/drm/bridge/cdns-mhdp-mailbox.h        |  240 ++++
 include/linux/phy/phy-hdmi.h                  |   38 +
 include/linux/phy/phy.h                       |    7 +-
 18 files changed, 4755 insertions(+), 197 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml
 create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-hdmi.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/cdns,hdptx-dp-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/cdns,hdptx-hdmi-phy.yaml
 create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-dp-core.c
 create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-hdmi-core.c
 create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp-common.h
 create mode 100644 drivers/phy/cadence/phy-cadence-hdptx-dp.c
 create mode 100644 drivers/phy/cadence/phy-cadence-hdptx-hdmi.c
 create mode 100644 include/drm/bridge/cdns-mhdp-mailbox.h
 create mode 100644 include/linux/phy/phy-hdmi.h

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
