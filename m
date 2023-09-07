Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95ECFEE14A9
	for <linux-phy@archiver.kernel.org>; Thu,  7 Sep 2023 01:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LXYZkiT+PKX1blvmpjdJijtEQz9djQX9ZMZukAdh608=; b=NS6i0O/wvMJEH7
	pvBKa6L+j+n0qy4fV912kC6UJW+/aFZzXORmCMBH7cBgQx1O3Y8cubSOr5Em6DmCnhweUCCgUFIUA
	BNIRG1EngXhjgr0VndvFOYXNjrAfsFbDk+MQNky3T33JI8iwtefPcwz69xMRTaEGH04hY9PRDlR3D
	GK9oehnfeC7J2fPbUBUtx5VLJQ1zG853SHGb+TybLsT+7QnJXP9C8gqGswc/wNK2/G/8L5EPQYk5I
	dpF6i9xtnn7LPjWa3HTZ1N4NNY5G0HqOK5xAiZ/MVcnLpjkEPN8+PDvjPweK0TLeM5QXvkw7hWuju
	AX2pO9TVOgoPhDT6E2Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qe3ic-00B8DN-0S;
	Thu, 07 Sep 2023 01:22:02 +0000
Received: from mail-dbaeur03on2062f.outbound.protection.outlook.com ([2a01:111:f400:fe1a::62f] helo=EUR03-DBA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qe3iZ-00B8CI-2o;
	Thu, 07 Sep 2023 01:22:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CaZeLjOETa+5itb0pZhQLDycISPF4Xg7AYKy9l92VgNG/VKKB5FJHvn5TJis4j0r0PQdxBtR4Y793TKLhJmPEAaz65te0wDeSz7ARnljUpWwdUTnjwuaXOzWnyhfV+wNbbi4IHbocydQoEJouw/ZiS/WJsOhazkBG4JpS0gkfThphyylt1H38rwl+BaGlJsf0KFh1kYamTROhhRip2n4VdiRtb9bbpT0hZQrsca0O8Ne5StJrOeQs3vkx6sYYln3yNMLdzIajSJgqRQsTrOMWhZj+f7Gwq5bF3ExN5FMmFuwEGEMGgdZx+po1iOgYjMYszl48LAjU4SzrMwhjASHlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t7yt4tIqHRnYQsaQLC4K5Q1ygFBRFKKMW2c2+Jqh8yw=;
 b=Gtkwido+fbyrylx51Wf3RW7fIXbNYQOd7yg8P3f3Pt+vd897qid66NL6tJORxFesIlXa/zyHNlwGmONjg6KDa5DqQcbX3VPxK3UwZ+Yf19xNjygOqkQhN7aJPY7oaKEzhlzsfvjXe7CUtZvxmMwrm9GDLFjtPfkKibN5tUE83NuhQ5dYJ45o65aZfnzYFLVomrZN2xJVt5raPCkp+6fxhiPQFrcQHU9wTAyoUwRwG9Y1y93u/mHHpl+frNJXgAtsHVSv49YO7BYsnJ/E7HhRSaxxZ2Lfa8R7cJOB7dEKvJanS14kR3BcfLas4qe8GDnwhwB4YPazNsEOYje3oOqCHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t7yt4tIqHRnYQsaQLC4K5Q1ygFBRFKKMW2c2+Jqh8yw=;
 b=nGmmEAjUHYwILhGSliLwYmi70pdOI/RklW6ajE/FOzeWpm57qyROdXzRwZ1jiCH1ydcBAinmvONZJL7xkuB/SLaErNZiU90x8kuAeHF1x6AfauX+XPtU2aNrTXaKANdIbT2SOzTm/+VsKWYnGQmH+k9qTvyp6aIEPyzsN65py3Y=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com (2603:10a6:102:2b1::21)
 by AM0PR04MB6802.eurprd04.prod.outlook.com (2603:10a6:208:184::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.30; Thu, 7 Sep
 2023 01:06:59 +0000
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::3505:c499:96d4:1429]) by PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::3505:c499:96d4:1429%4]) with mapi id 15.20.6745.034; Thu, 7 Sep 2023
 01:06:59 +0000
From: Sandor Yu <Sandor.yu@nxp.com>
To: andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
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
	vkoul@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: kernel@pengutronix.de,
	linux-imx@nxp.com,
	Sandor.yu@nxp.com,
	oliver.brown@nxp.com,
	alexander.stein@ew.tq-group.com,
	sam@ravnborg.org,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v9 5/7] dt-bindings: phy: Add Freescale iMX8MQ DP and HDMI PHY
Date: Thu,  7 Sep 2023 09:05:32 +0800
Message-Id: <9930a92bdda717883461ca11e1c7d0040f506982.1694047629.git.Sandor.yu@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1694047629.git.Sandor.yu@nxp.com>
References: <cover.1694047629.git.Sandor.yu@nxp.com>
X-ClientProxiedBy: SG3P274CA0003.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:be::15)
 To PAXPR04MB9448.eurprd04.prod.outlook.com (2603:10a6:102:2b1::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9448:EE_|AM0PR04MB6802:EE_
X-MS-Office365-Filtering-Correlation-Id: 429379f4-40eb-4c85-f6f5-08dbaf3ebc7c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uszqgXKMTgpNlYr5R+VbCEq0GuVVl1vMSrHR1139CwkWx1dtqqhKrVMaCsycx7NImmAbzz/+c8LG9lLdn+T2ls4cfdfUr7fOKngETiVcSsWuzzqZZzEK1gYQttq5H+Qgm7dJhaopr8pAFkFzkrR33FJ/dNKvX3xUCBzuFBl1HlT5jYQrQi6m52fzNh2keESw44M9i2Sz4NSkdlnYG1vRwNdpv4Mu9DkxnLDfut5bvjiIkrLLL+rOWow9/FdhnJqUvO2Ihb42Aow6upBjAVCXOGEmHvVdu4VKeeuykKq68PowMsZSHBFgHat67ahwBLBbEL8Mz9Id5L7otODGVdoFXX4mR1Nx6xEBJ5uRlSgNVBf+MOBWsdFnxUENFK46Zx93JQT6XHwxad1FalTriBthIJ5IxCxJauAKBZ0IA3Rvyg/k5nMzJMbtSJk7HNkMzwg2+5kYLY93L0c71S8eLsxqtPuA1V1zvxOon+M/+RItO0uiBT/B7Co8n1LrkBoYcnLGeixgqktHx2p1DDOPzajVGLMWmF5alyhVB9cRGg83z+EX/M5c62W/5O14ILQJHns+FF15vACAr5nt7kK8saHiLS8+VlS4QzHQ3cZO78AZkbgsK/QH8wjeJCnyiGCe5QjLYHJMJMSUh5wXxaUM7/5bEDn5KAx755LhGhkIMQgrZIB1fRdl/dJJnHJ2iGvKubZx
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9448.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(39860400002)(136003)(376002)(346002)(396003)(1800799009)(186009)(451199024)(921005)(66476007)(6666004)(966005)(66946007)(26005)(66556008)(478600001)(2616005)(6486002)(6512007)(52116002)(8936002)(4326008)(8676002)(316002)(5660300002)(86362001)(83380400001)(38350700002)(38100700002)(7416002)(36756003)(41300700001)(6506007)(2906002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dYBUyE3MhWT9EiMK3bi/qL4KrmZm9wRUBSIEwCyszEt1PcSox4GBTcYPoaUs?=
 =?us-ascii?Q?MaYs24RhX/kQCdhkcUmdW63WZI4jwC20Lk3FosNmnnMJ4/gaFB8fQjkuxLjJ?=
 =?us-ascii?Q?73hQmggQzSdkV1tVJNOQe+Cj00IKOhyWebBPW27/ox5hQVQFsUS+Cowa4uEB?=
 =?us-ascii?Q?dVlmptVt8wuPPBo9QMUpi5WqAr2NbKHW1i3Bugh+fIg0fjLW9SaM/WC3jCtF?=
 =?us-ascii?Q?igpHHbAQWXdQVXBYfQivhcyKLgG4ztEC3C2322rW52DtyNWhHmbTuQBuanLb?=
 =?us-ascii?Q?Wv1M8YhkIVKnqKLRVr9/wB9Rw9SYMbTQNIH0YGI5i2gKkk+LgENKXDuC2epP?=
 =?us-ascii?Q?bpb0/WH+tNMTje7GyMkV+y2h5rB/1AptnDcxY0F68k6ZBc+hs2jiYquF9koX?=
 =?us-ascii?Q?FSP54YwU7UWe6TNQVVBJ3GacZqRCP5Zm1LKOrJmgDtfYP10f43eP4RsuykQ1?=
 =?us-ascii?Q?fhAekE136wjM66sfaGSTrJ5uG04GOcKJEXgHlASwObSKHbbI2gR+obEZxsrZ?=
 =?us-ascii?Q?ZLsys52s8kTqlqoTnO1jepnHcI4xYh3fTDDWf7eb9BdPGaIC5Kmtbp4GFqW7?=
 =?us-ascii?Q?rYNYbgV4/T6IRe6opO4eZytEPc2PwCGDDBRzKyd6ryNGFe8fgnGQYGqjbeaW?=
 =?us-ascii?Q?JCs8YY5nUeO4a4PpaihO8SVl65JCqEMbJpUDoQOyxw/5P1us3511CrIjttj0?=
 =?us-ascii?Q?vdcrHlHBjWbyBeYcrKTflW0RmKbemsclaHu22z2ZQvGJIAgxyBU4Duk+Df7h?=
 =?us-ascii?Q?gCprNQEKIE8763Osnay7yKK/jqUI8EK2yeLB1iNkrmu6c4vGudzn78Hee52/?=
 =?us-ascii?Q?9582Rz/kMoLr4+AR7IwiZdoSXBVrO6BDcibGHVyPXQxOesFPXHUhpqSKb4Ao?=
 =?us-ascii?Q?eX7qxy2BqwKz6asDG7gIzJjrlk+5dX88vrE6VrgSNsbpQ8hI8WVr0TSHEBgl?=
 =?us-ascii?Q?HbG65RNvTfSgH4WnHs7f/7c9AoXJMSznImAzmE+8C69jYxhjtQqPECcQUNAe?=
 =?us-ascii?Q?GNusz7w3HRwWlXIPkG8/AqYVKpBiGdrgEcZfQezP5Mf86UJbocEJWuzzfe3z?=
 =?us-ascii?Q?4QGiePn2JMsy1Wh+B/8F05euXu1X4BJqN8OhBmv7hT3BaqC2sXodPIaUznwe?=
 =?us-ascii?Q?5iOOQrN5MtcN0BAy246X/RTeNKbhOcdSyqFENbFcx7BiJG7Hcjc+8ZQT73sw?=
 =?us-ascii?Q?7jN+i8SpYbkZspGURTAlIrRk0o8/XnekEdEqFpgGQTCRkfh95BWEwanQPGOf?=
 =?us-ascii?Q?wzIPr37aWPn7eQEdD8AFmDGouyzoX4YQh4VnXRltLAUS/oGSjAW8NcQg5aLT?=
 =?us-ascii?Q?VO46cRKheRa23xX1Ozzq6xDm8eWZ0r93Axv0bKTlL6BOrO3kHjFVTaPDCmNj?=
 =?us-ascii?Q?6xvCH1XLKU3myVk6hrOLB28dTyMRmJlqAVYUDzNsIbtlNV02Ppq1GV+e47fW?=
 =?us-ascii?Q?Be0N1OL2BgnEJIyuMBush0GFltgeAtl2TaF3n67G5ugkpwplO5bmXvFaenES?=
 =?us-ascii?Q?gBPFgVs0DcXxShVc8puWRTh9X8O48x+DcUxs1OMPjL+xkpTr8+MFYtuvVuhX?=
 =?us-ascii?Q?1vO9Ejc4g8xuk/eQiNFs3MbHGQfwa6/8mHQLYMCs?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 429379f4-40eb-4c85-f6f5-08dbaf3ebc7c
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9448.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 01:06:59.0584
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lWQgAJ1JUP+DbFt4JR1CY6s/dON/bxu7d9awkO77S5s9s5fmkMEsyjj+I+GXhVcnmsJ8N0heGR2LrVaa4yFM1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6802
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_182159_914880_A52A6B0E 
X-CRM114-Status: GOOD (  11.82  )
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

Add bindings for Freescale iMX8MQ DP and HDMI PHY.

Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml  | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml
new file mode 100644
index 000000000000..917f113503dc
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/fsl,imx8mq-dp-hdmi-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cadence HDP-TX DP/HDMI PHY for Freescale i.MX8MQ SoC
+
+maintainers:
+  - Sandor Yu <sandor.yu@nxp.com>
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx8mq-dp-phy
+      - fsl,imx8mq-hdmi-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: PHY reference clock.
+      - description: APB clock.
+
+  clock-names:
+    items:
+      - const: ref
+      - const: apb
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mq-clock.h>
+    #include <dt-bindings/phy/phy.h>
+    dp_phy: phy@32c00000 {
+        compatible = "fsl,imx8mq-dp-phy";
+        reg = <0x32c00000 0x100000>;
+        #phy-cells = <0>;
+        clocks = <&hdmi_phy_27m>, <&clk IMX8MQ_CLK_DISP_APB_ROOT>;
+        clock-names = "ref", "apb";
+    };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
