Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 963C0CE7A89
	for <linux-phy@archiver.kernel.org>; Sat, 23 Sep 2023 13:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bR58pL/k4+/KQmXHfUGPrP9QdMAS+/cw8D5qLZym66I=; b=yXLrOzfOUwlqcu
	LibxkGVREIkrftKjzbUxgyIrNyiyPOVHIgcSnMAgPmAUmjxrk23MR0NRwqo4UJKI7Gu4iTjzgEnjQ
	qBE6qO3DDJrT4Umn7Re5Rj05z+AhcnHFkpWgEVjY75DTtu6WJBShbnIkzy2xTkmtNjAjOcCsIX/as
	pw0qRhyXzU5nuhFDrYJl2bM7x2VqChyy9Rdf+9sGunWBGfL+hOSHHT9Eu3BGkZZHDhBjQ5A/JPJl7
	Spe/MB8Fmm8PyFUTW1RNolF0CWhJTLV5PWxhXRfNJO4sz5sNd5VfiWIKjM7QFHfgbFnRrhIeEMXsn
	oUZjWvzLyCVheu191wUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qk313-00B3E7-0i;
	Sat, 23 Sep 2023 13:49:49 +0000
Received: from mail-vi1eur05on2061d.outbound.protection.outlook.com ([2a01:111:f400:7d00::61d] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qk30y-00B33X-2i
	for linux-phy@lists.infradead.org;
	Sat, 23 Sep 2023 13:49:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U4slrmptnyOpoMjQzXDldX/4MMGFXuJ0WsuyUM637HiTtK6LHKP1cA3tG6etXzYKodmOZLuiVMt8jZu3TJNAq/PtG8p2h7N88KHKf8HupNxe7CzkvAWk/9xWUcw9QG5kJFamZ/WNpFiEfK83IA0PUII4nudodCJBMKHj2qT+TtdwXJs2btJqCIcv4m/0UTSQz8W2JhiuFBBAKSLpSn/0W9bSFbs9xfhovta2MQPARWvEg5IgvJqBHZcb7PpO/WSlS/DBb5jJTugMAp5cPYQZrNsJrERTHfhmPVjrkQtYL02Y6wFV8SDxBDXuXb2mCwElB0P0CKPEhs50p9/wxZo8nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jKuluqSsGlv2qiqVeGNa2wDmuMo83UB53CrdOlVVZ3c=;
 b=E10VyLE10ViBLiMcCSYuqjHFzMlro03t1Xwl2RhgmMLbDFYhqtfnkpgTWCH9YwhpcyeBStTG6jFbrnlDHVUgqNYQ6bNa2U6KDKOzDKWHC5zsl9lUJy3ce0VbkpxXVlH7z61x1WzmPr82XpSHczhIbVPqb6e3JePV4hFdY29zcEjSfY33tUCL+5BI5jfWP8k4c0Hr+VZ39fmbChQ92OHDiXzQaFf7zunG/Pdo7iHxyBnlPu+egeavgi7Dpn0eRSg23Bf+ynYEvc4l+j04/TT7WTLBzI/tdDTrBtsF2fYPvb2945pl2q2ZuApn1c1BVDnImPvOWNmC6MQakgjYkjCC8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jKuluqSsGlv2qiqVeGNa2wDmuMo83UB53CrdOlVVZ3c=;
 b=GmHZ9ZhKYQzYIm/DwMf5hK11Zbh/1ju0uPuMcjkDz3rr9pyniJgudIpbVlE//BZFtiRMtfuLPKUXZJpY7xekco1SSKXeIhn/HPxC/u6aMh5VUXaKUpf/OG3zy8+NXNxKYfaWHgnJbo850J4+5DAOYIli4nY+QbijhfGa8H/64Cg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AS1PR04MB9454.eurprd04.prod.outlook.com (2603:10a6:20b:4d9::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.21; Sat, 23 Sep
 2023 13:49:38 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::568a:57ee:35b5:e454]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::568a:57ee:35b5:e454%3]) with mapi id 15.20.6813.024; Sat, 23 Sep 2023
 13:49:37 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Madalin Bucur <madalin.bucur@nxp.com>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Camelia Groza <camelia.groza@nxp.com>,
	Li Yang <leoyang.li@nxp.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor@kernel.org>,
	Sean Anderson <sean.anderson@seco.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Subject: [RFC PATCH v2 net-next 13/15] dt-bindings: lynx-pcs: add properties for backplane mode
Date: Sat, 23 Sep 2023 16:49:02 +0300
Message-Id: <20230923134904.3627402-14-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230923134904.3627402-1-vladimir.oltean@nxp.com>
References: <20230923134904.3627402-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: FR3P281CA0165.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a2::10) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AS1PR04MB9454:EE_
X-MS-Office365-Filtering-Correlation-Id: e134f390-c707-42cc-1f27-08dbbc3bed8f
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SSS2CIchjtTc4bsEg9hPBu+j6DMWxXSgDfV1/HCVWzC9bV67lMlzC5FloBcHxF2CO4Ybtz0j3YxSOJfMhVwvoOZCsxU2X/P626fJp9Nx7Ef3LUDD/4bcb4p3d3tO7lZu8j/d0LdCiiP9oOqnMkzvJQOQbnq0khtM8P844/6SOb12aEJbx815p0cHwRBEB+/vQofy8n3/YCpl2JzYoIVcz1T21Kdh+rffb1hiLvX0ggPoDa1yOthA53XT9rQg25X7WnD8zVNMA/V3ZH3zWuJWYSYtfAiRGnsDNP9koV+PHV3i4yF4RbHUf24UgKF4G5GOc0rZK7Ib+tKHfmNjQMjKCclyH1/xSnc8S/ERjAxFhkQVapua/4xU8rD276ubO+KFFpKujUzATdWSezH83TjMgYV8XolcHdEGPn9G8CUQbohwAtgNc2Waof/N/okkLyBFPwXSgHZ8CIlqzQmqlFZFjGpNWlaDRGuVlB5pz4iKMGztHmcJRcT2BHPmsJZotrDXtXTeJRxZ3dxsac7kZLmiTshJn7DniixyU14n1NendBMlRZQxJ2MpWecHKoojeQENebQcUvvjhJdb/V28wQ7pjKXEr9/1V0FeIIXFX9DYocRtW7XwdnCLNAOrN7FoZKA0
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6452.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(346002)(39860400002)(136003)(396003)(376002)(230922051799003)(1800799009)(451199024)(186009)(66556008)(52116002)(2616005)(6506007)(6512007)(316002)(5660300002)(66946007)(38350700002)(6666004)(478600001)(1076003)(66476007)(26005)(44832011)(2906002)(4326008)(36756003)(41300700001)(7416002)(54906003)(38100700002)(6486002)(8936002)(86362001)(8676002)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?n3i9mO7TWwLSbaP7T64TxWT/uNIVNDHyIrJvU2/lEzGJBRgbWlE2BNN+nQyy?=
 =?us-ascii?Q?8dgIb6jgk6nLSpr/McQx8SWYYE3jtJNAQNKJy/buMLTTaN1TuVuSMJJY2FPX?=
 =?us-ascii?Q?bGAiXLgn3GSB0O5aGL3SOcjaQJAGU4lzyokqqfMToUk1iSbtXfnSdCcdgmUu?=
 =?us-ascii?Q?cLF+3z5bWel0I+B3KZDmRZ4Ajrv9nZfDg0wWwqQ40gmi1uEHGpjNVcfQbVfo?=
 =?us-ascii?Q?FftUpmhY+kKGcgZBHe/eQU1KdC5uaX/HTud02I1zcRAbvo6T9vo72bdBth7P?=
 =?us-ascii?Q?AmkrieEK4P3BQeA0/vX9kk8kv4RFeqwFCjDgC+uSXJLMhfkoOML5XZrwg7VY?=
 =?us-ascii?Q?ba2sgrt/rFwVwyc9+7fiqz3hpkBVPqWdHQHr5FntsbzWDHYhpqOVp2iT1c6j?=
 =?us-ascii?Q?u4CDk75EO/PmvgyFROtYeu35tlay6fyMy+04toFABU96J/xXlpgD//z/KToT?=
 =?us-ascii?Q?kDcOlD1yumEoR9c3I0Bax0cc5bijF40ln5Pq/1zT/udtMistTdO9mSui/P6e?=
 =?us-ascii?Q?DKNRne6+IoSLJAoHdZoVbrMQwKbFUtw2OXtRYZjKxInbuJdI0JQVAIjAPUw3?=
 =?us-ascii?Q?d6+oXxDlwAVJ2SRf4OAm3D8RvAP0sLW+iH1GZUEvWlxf9xpf4Ja6URhXiD8X?=
 =?us-ascii?Q?wEGOM/oADksdK1FxgYuqtan+U+zYANDRiTmPh8aaZP6sbgJUzmMtkO2eQu81?=
 =?us-ascii?Q?BrQiiMAQLqT8xI/qPd063/BU/xHGULp/LYDkBpA7rbbNXeGLgNT5NRjivdSR?=
 =?us-ascii?Q?oWzxbAX27YOZlu9I7I6AHlqkDBvRAvYPnMc+Izsry5mzkBnt9Kzj5DiqEEkG?=
 =?us-ascii?Q?pnB6qhv1UdynyJkwsho8/sElWaRVEodGuLN+MIJVuuJiTkSI9yCd89e37108?=
 =?us-ascii?Q?946xU5qSFu/8plGndTqBNKRllNB/1DuKsatRQjSYxGczPwiTizgqbTAOPlPl?=
 =?us-ascii?Q?Z3CgXj3MFBvg5ehBp8iGedO40zai7E8KfzcMG6ltRKBa2cDHbq141YD0Sj1n?=
 =?us-ascii?Q?rCB2dvMEk1nElu5e8iXtflZJ/rQ9NkI1IsabI25xE5XTeEAuQx+YPAl8oomu?=
 =?us-ascii?Q?ags3d8RtY5gt7w5jH4vHQ5K3IZyiEfToylgxFFsdFa+HStjy0zz3MXGE7rpR?=
 =?us-ascii?Q?sdUcdvlwvbTJVMSxMCnrd1BaV33w+PHL9nDjI3j7h09AxRQjHeXbIVgCLW1r?=
 =?us-ascii?Q?CH0cHXtBfdCKt4dbD1AKSmBns3PZ2IRJvvchmX+0wB1qq/3rEOSP7gMJiPWb?=
 =?us-ascii?Q?Tg2K0KeCJYCMI68z170zycBgemkzoumNbh43bVl2Bpt8tUEFfpcZq+dQzNQZ?=
 =?us-ascii?Q?+n41c3BNKYfrlYZ22NC0Fkjywdj5FJb/XbqwlcaD6hRZ4m9DXDqgp+jxpSj6?=
 =?us-ascii?Q?oydglYLE9msXaiGJb3XO22G81WOj7JDfZqLcx70X0EJOcO9NIO5Xf91lMy7I?=
 =?us-ascii?Q?aS3q4JYKQeUeHfzF0KFsgCM82QMw66ox9ku5mtCDwkCHP08SSKXnoX1qsXq+?=
 =?us-ascii?Q?QGwIRkmFZnKTdRDk3ReEv7zgtLeOhEAg8QCC22gc5jkHKKMxGJ9UQfUwlR/n?=
 =?us-ascii?Q?Cxc0pyROUhvNqfzbe+zJ65pGydq433HcZWWrr1NNyJn/kkmTRmNxoUPqqLkg?=
 =?us-ascii?Q?XQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e134f390-c707-42cc-1f27-08dbbc3bed8f
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2023 13:49:37.9078
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UxaszYWSVU2ol8Cq02t1IM8sNXAt1sDO2MlaFIRxgkB44K0kwVGaFs/zy6psE+U1d4er/GUWwpD1K3XRVbS2jQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR04MB9454
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230923_064944_893307_AECCE75A 
X-CRM114-Status: GOOD (  12.22  )
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

When the Lynx PCS is deployed on a copper backplane link, it must be
prepared to handle clause 73 autoneg and clause 72 link training, which
it can do using a dedicated AN/LT block. The latter doesn't need to be
described in the device tree, because it is discoverable from the SerDes
lanes.

The media type that is deployed on the link is not discoverable though,
so the introduction of a fsl,backplane-mode boolean property appears
necessary to determine whether the AN/LT block should be employed, or
left bypassed.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v2: patch is new

 .../devicetree/bindings/net/pcs/fsl,lynx-pcs.yaml | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/pcs/fsl,lynx-pcs.yaml b/Documentation/devicetree/bindings/net/pcs/fsl,lynx-pcs.yaml
index fbedf696c555..40fbcd80ee2a 100644
--- a/Documentation/devicetree/bindings/net/pcs/fsl,lynx-pcs.yaml
+++ b/Documentation/devicetree/bindings/net/pcs/fsl,lynx-pcs.yaml
@@ -16,11 +16,24 @@ description: |
 
 properties:
   compatible:
-    const: fsl,lynx-pcs
+    enum:
+      - fsl,lx2160a-lynx-pcs
+      - fsl,lynx-pcs
 
   reg:
     maxItems: 1
 
+  phys:
+    maxItems: 4
+    description:
+      phandle for the SerDes lanes that act as PMA/PMD layer when the PCS is
+      part of a copper backplane PHY.
+
+  fsl,backplane-mode:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Indicates that the PCS is deployed over a copper backplane link.
+
 required:
   - compatible
   - reg
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
