Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B3A5C7EE43
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jun 2023 03:34:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=skPYLqNHKhQtMCtz6l+PEtFpa4Sc4TYy7dU/KIj0Em0=; b=akuqjXK8vXx6fF
	OYYRW6vFNkeIMtI3MoRNvmxDyc8xh0YGBfAWY1Vr2wpMB9fuczVHkwbzo8vNUtZdv62B/gwz7AqKR
	nO18AFTkthHEKm9qR0arnVt+I3mEQ3UvZHFERCsJ/2UyatFhUKr08UV1Alq9vlUYCc+Oii8vX4Uoi
	WN352+39mD7R3gWAhhPazyCCLuQUJHWC5HQSRlU1fIcZKEbzDkLEwuFvW10cH3Sq8vjz1Wdu74juV
	apnuBQYOcdgbJ29+iuoBq4hPvD9XOcYQ5sks6ypcMoYe3lQ+LvIuLbtheLBVxI0KbqAUG5Y8j3CH4
	zEQJ5sg/EPn0IeW3eyqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q76Pe-007wOD-33;
	Thu, 08 Jun 2023 03:34:14 +0000
Received: from mail-db3eur04on0608.outbound.protection.outlook.com ([2a01:111:f400:fe0c::608] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q76Pc-007wMV-0W;
	Thu, 08 Jun 2023 03:34:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S6eKLrRzV17qtg+YXzMZCNAlLzUxoprQCbReyKdn4m0L0Vw8h3WXebinM3gvWtLep0EoWx8vbnKHZb5+UqsfZFm1ocZA3tjCSthd6ou6VsbqKiuMKVoQcocpi+vJSByLn8SYuULNm4XsEx3RBq7+6RezIT99uiMpSHiThiVGSEQz0SODzFtoseb1gUbc8RqNWUr4sUiEAV74rm9chamXV2iyZrJrpYifpcYnSGBZzcxtGcPMkASp30rmQ0gp3OInm3RIlfi9u/9Ks0iwadQN4z7HyuODzvCOYEgOwTTj6Y1cK/QDHk+1/0dLiHf+tXiomdDyZyiMQ2cACVYJI0xp0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KF/yjzMVaLiZ4K9MO8MZQVYenyag3rx/mif5K43S7QU=;
 b=JepCvCfkD1Jw6+ZHCKBDsdVLiEWqQ7SWUFJG5Gg1YOyApyay/vJuB1Ajn1UHWirD4NXZOCeDzwd24BTCyrRoenqSot4y5q4+J2sfXmZ0BykIrrl628JyARxkK/eMWrHRusdwjTJj9H27nY0HyAqS8iTbXF65Cy7fHILnBldv+M3teR5tvp0M3HgMxCXx1Rt8Z1w5NmWht8q/W9Uq94OkAVujbFo080imMtEhwi9UzE9MKVMi+fMvBfTxm0sXkJG6wWnP2iaYWecWHFRXLdTOrBfVP0VK6Gv7Ht2iUJtS2bXASfSrFakezLWiRb3ob8ga0OptayvDr4p64LiklHjSvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KF/yjzMVaLiZ4K9MO8MZQVYenyag3rx/mif5K43S7QU=;
 b=VQlFbgYQVNpQs/aOPzXqcmzcC701tIkuoq0jpMGItZcvsumwYw7e90n8k3BTUAhhUiuQE1PKJehjGLOrmSvIlxlLdr8jwl11QShPP/+yQX4isTf/gABdAppzX+q3J60O0aO5kyUzvPNjUbKw9KWe8aQqnQNjtocYf8D/rRRlbhU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com (2603:10a6:5:39::26) by
 AS8PR04MB8344.eurprd04.prod.outlook.com (2603:10a6:20b:3b3::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.19; Thu, 8 Jun
 2023 03:34:07 +0000
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::f9b0:8c34:e57:92a4]) by DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::f9b0:8c34:e57:92a4%7]) with mapi id 15.20.6455.030; Thu, 8 Jun 2023
 03:34:07 +0000
From: Xu Yang <xu.yang_2@nxp.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-usb@vger.kernel.org,
	jun.li@nxp.com,
	xu.yang_2@nxp.com
Subject: [PATCH v2 2/2] dt-bindings: phy: mxs-usb-phy: add imx8ulp and imx8qm compatible
Date: Thu,  8 Jun 2023 11:36:42 +0800
Message-Id: <20230608033642.4097956-2-xu.yang_2@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230608033642.4097956-1-xu.yang_2@nxp.com>
References: <20230608033642.4097956-1-xu.yang_2@nxp.com>
X-ClientProxiedBy: SI1PR02CA0018.apcprd02.prod.outlook.com
 (2603:1096:4:1f4::7) To DB7PR04MB4505.eurprd04.prod.outlook.com
 (2603:10a6:5:39::26)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4505:EE_|AS8PR04MB8344:EE_
X-MS-Office365-Filtering-Correlation-Id: cc06941f-e5d8-44be-bd4f-08db67d13729
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NiSxKMHpDE2Jn3XCOC7A5fV0e7qls/4OKvBc+PMxd1X+zC1bDIfiP83n4Sz83PV5/nyeeRGB9zNF/bSWOhCa+4NctFz3NHpt0MLBCPqjhl4skn/4Hs+evyvZ/8yAJnAfOMvK/nKEhHzsVSuuvdaJyfJyctQmzlpR12sq11UckY6HPe4wqztPW7pgBr0MwLw+Iim/wvrg5KXoIVQGwG1OLxcxvJfWE6vE6BGLAnLJVEoIS3LtZRkKE4iA5U8rXyFsoZ9Gz/r7Zd9rqEIJCR/rtV3ipACMDkCq04PhfavrNz7bAQJC/5oCoCfQN9PD1RUo77qVUQm2dsrrbQfIAnRo2vExgQpaCQ2+ISvFfKk44B/afw2GKai62g+eriAj1UU5FKuFlQmIIetdbz25N6cqnMADsSdrXt1laFe+2SRvyRCyGKzdtfgCQznM8YUtPtz54RHNwgyc5R1CzBDXoDnwr3miBWdmshBXT4j/1lLIcry/oP2RhKlnLYb9p9hyOgPYrj4G/DUDs7KfuRJPb7C93FaWPfYqMKU2Bs5SvCj7DDcyQVgsb7XwMKHlq+pgZDvL1ZEjyI6kbKHbk6ziTvPZzDyePD9kHEooaQCflbhSjJ53RIrnD+wFRcWvI3TukAZ5a1R4o1IZ22ucFBOlbMoEUg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4505.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(396003)(376002)(366004)(346002)(39860400002)(451199021)(36756003)(1076003)(26005)(41300700001)(186003)(6512007)(5660300002)(6506007)(2616005)(83380400001)(8676002)(8936002)(478600001)(66556008)(4326008)(66946007)(6666004)(66476007)(6486002)(316002)(52116002)(38350700002)(38100700002)(2906002)(86362001)(4744005)(7416002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BO2jzlmG9xxPXZk6SYK29pq502UuYxSOfmeldivSb51PaxWclIYKS9ysiBmj?=
 =?us-ascii?Q?8jb3K1QEijGwxzS3BmtXzI8wxDitQOveOqM9xPSOnSiHLokInHNcl/uhu1WN?=
 =?us-ascii?Q?CTmXOIg+9iDAfQ4Eo9YiqZgLcGjCxpIRqM799cqfdj1sIy+nuaakwiALq12W?=
 =?us-ascii?Q?nElZ/k45WmtAJ50DNQfpPWY/PsbEAFHgUXxWVv1KC32Q6wIZzRXx3WwFlstu?=
 =?us-ascii?Q?4OE0F4I8z2iwHbkU826yZnwAq5mtVPGj5GL3rADES063KLzTwiV0l07yD7/Z?=
 =?us-ascii?Q?m7Cghz5EJaxQMwL31MtQzezx3FooFttcUj6sM8nCo14MiJnf5tyiLdQqdue9?=
 =?us-ascii?Q?RTaOfjs5BzN8wKKh7YYmxVq94MlSfQKf15+837C42jaWE/TIhL095wns8pHM?=
 =?us-ascii?Q?Shk127F/NjlWOkY+lxulmNPXonm2kPLBkWQsiPnRXOgrJK+MZqQYy0+sfylj?=
 =?us-ascii?Q?Xx3b8EyshPEwXCJNqGa+cmEyufC92XEZ1Ykvh/DTXubV5ze+ru4I1ac5lfXj?=
 =?us-ascii?Q?rauNOnprk+onaPJ8efMs1nPUAys3LEonPYkp1xSdW92hv1mtH56I7l73Nvia?=
 =?us-ascii?Q?myAj3PlG7qA6+y8HPdVnX77U5qbJCZHqG+YhlGPlQcwehvBTqOhkJig9DVj4?=
 =?us-ascii?Q?Sk+yGvXpXybnO8aTKDbrkvTg5D4SHPNNtVOpdnR+oPCs9/oIHFG7QrvrqFS9?=
 =?us-ascii?Q?5SNPv8PNdVwzHM0BbhwT4X1RR2+GPWumEFfaXmlmhyYKRh5kRHn16HjeyxIK?=
 =?us-ascii?Q?Szmt0EqYRipMHm9sfl0jlC0F33i+68JoeQlPqxNXMbehm9T9OcIW4dpvxpg7?=
 =?us-ascii?Q?5iLVzrrg7MQhDaTezI5h02XDX5aDLGwBP50roo3RFcH6xa+Xf8wFXhJJQrZF?=
 =?us-ascii?Q?2TRD2LbRk+71T0d1FrJwYohjJ7U8iilzZa3fIvAM2MecSxnFiG40Kwl5A29E?=
 =?us-ascii?Q?zmezBMpFQDwr8dlweWsFnZffmk+yRQCtUAWytXKttwQOHiCl9PaCVxZbmtEy?=
 =?us-ascii?Q?Zhq4MnJ5Aygx5gHiVGixzASnvXwDxt/pV/gGWusThNcClU9GVVp6f05YPGwT?=
 =?us-ascii?Q?8Ea3I9dg9P5BVZepp5Rpggmpw+CdTmECTlmZUgaHJ/x93VMfD8d/0dzEi09V?=
 =?us-ascii?Q?mS3nLqPsKr5XZmNwUwK+HLJ2pa/ZehJsP6KklR1I9itbfARbulIhA4pcvphI?=
 =?us-ascii?Q?Xuff0aJOxnQaX3qZTMvwLVNwMjB15cv27Okf7w3DdgY/Bo9p8oeG+X1EuHgw?=
 =?us-ascii?Q?zcLaLI9vSkx09BQDHrIqHyXh5Le4SDVBSMpD95kaiCbWSWWWTsBUFjszKMfX?=
 =?us-ascii?Q?sfVMY2neNvX7D1OvT3KwCqgUU2NvsoSMcOMfU/WNhR2AKq9A5IrZyJ0CIPA6?=
 =?us-ascii?Q?AwZkvywjYx0HmRe+5MVOgI45diEn0yjIGVicG8qr0iQSOH69i6mN33KRSr2t?=
 =?us-ascii?Q?GWUoKfVq12VVt1cxompyp5AC886Hrls4od80Xcl+mxoCYwUcBo2l/ORbS/4+?=
 =?us-ascii?Q?zU1H6n9e1NKwLDW2fqKeZU8sndTLPP985JzN/inG6IHWPS+xC+3N9o9nzZIX?=
 =?us-ascii?Q?DTVCO+IpCBSDV1huvQxga8uO2dZtt9VUkkDISBwu?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc06941f-e5d8-44be-bd4f-08db67d13729
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4505.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2023 03:34:07.7447
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9Dc7Yi2C4CPRdXTgdkAJuQDtMkuX2qGQoRtpUUegMG6JRNwIEyV+dYbrRQgTlxGLWTCvp3dbeCB+xTDwJOH3mQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8344
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_203412_203303_0CA55A90 
X-CRM114-Status: GOOD (  10.11  )
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

The imx8ulp and imx8qm are compatible with imx8dxl. This will add such
compatible.

Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

---
Changes in v2:
 - no change
---
 Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
index 1b6b19fdf491..1395a982c387 100644
--- a/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
+++ b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
@@ -32,7 +32,10 @@ properties:
           - const: fsl,imx7ulp-usbphy
           - const: fsl,imx6ul-usbphy
       - items:
-          - const: fsl,imx8dxl-usbphy
+          - enum:
+              - fsl,imx8ulp-usbphy
+              - fsl,imx8dxl-usbphy
+              - fsl,imx8qm-usbphy
           - const: fsl,imx7ulp-usbphy
 
   reg:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
