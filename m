Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF5E9CD343F
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 11:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y+sLaYJw4f/93ucfz27qOGCxFpkl8hYk773AIPYrltw=; b=NExIgZDbgKNyTh
	HjEpyfX3hmhmDfD2M2wkdMmko1iat4HMOp7K7dj1X3CBhvl+GPIVUcw/CPHsEm6VgoJRAJGJI/y+C
	7p9Tug/aJq+6WKOaXhazr0q/X1zpC0XxbCuBpjcTvUnfxVRx24mjLwjRV/BMezEk5VMFSJN9ojdgB
	Sz2o/cDs9a04A2WVXt4xRCsb+yk/oNboYPRSh2+JsulecWRhtt3xJfFykIH73qgM6FTKF++7xooJt
	8Nqb7tBTdzlASCDMernF8e1+9BDGfhO5CKky2Ejr9F0CqKFqCdyurlMTR9Wn8RECu7MWwJSaFGr4O
	cJewNpg/XuQMbD6R8tdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNqIt-000000087fk-32jF;
	Fri, 15 May 2026 11:02:03 +0000
Received: from mail-westeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c201::1] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNqIr-000000087dq-0wwh
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 11:02:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CFKXoXCT6enNnpuURMWUAzMzjbR+alpSva0ALVocmhpLT/t2DTxUdV28A2BrEPu0eLOs5au4wJ7AMMFvp3pGKSIWIPATWR1deo+E+DPa8dOW1XWs5WlZTBDrd0ZftLN88bRUOxPVkWStQ2z9A4s0JR1/llmhB09cBposzKZX82xo92DN86DqLh7SMuRIY/CbplTzABNk7kApbgkw1HXbF7EDJT2hObedQ6YgVrCiAsp5MXr99FkKwJ5ywP6UrDSiZDfYlLFFw7+5DVglSH1N8+sZnY9ZJmXPb5h4pNsRWvrVnjRCvvrbQmpxYrjY1Y/k0jmnAhWxBod3XRoRCtC9Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HYOVRIfFE2iqZAWuahNrUhwoQCgaoLPPr3Qlxv8ZSNM=;
 b=t5PNDpN4vKvB0CEwllBCAZ5mYVytF2YSC8EmLsr8d8tShv5zF6vXj5jm7IOGq62x+D8umRvq+utSZ7/n8uUXlWJKlIPgXUFTNLWZB9TP3a9uNEEx9SJNZsGyZwSNo+nYJVAWY2TsdBhCBzhwCRIjn2jFN8nAblLVUUDBxsWMdfOFKRDWMeo5ePvdOPSsgsV+s3S0Yd2PxD8s+aYruVZT1nJmGfWpDIJAi6Tp6Txlb0Qxgl5a6MipbYhmGuEhDIx13w+l/RaaddgNWts7gIFfdfOkzzrjuLHM4y41TkSgPtWCDflX3BxelD5fmMKTujk4AjCSSfuo70qbrEBts9Wheg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HYOVRIfFE2iqZAWuahNrUhwoQCgaoLPPr3Qlxv8ZSNM=;
 b=OooeX0Cm4G4Z/VYzU00dEBKlP0KlggjZRr1FNKXkfcjCmsrdstJGIlxhww3P7Ev+G7epuRlSocgLzpDtvHWQDbGwVaB9uQ8UKDGfBuAhaeKFNdBQ4y7kkvgW4jqjIuRBBBTmt2Pyj+X37UM37VytnaslDuuxu5DSxu24XccEuY3obwc+BXPAU1rh8b+mcCxFDszoKGP3+ovw7yxPsnqCbCvZamhoeXT0n/bwZplxqH+HZ1hxEKNY0ewGZbjLFhKlwawWhC8Wd0+7YMF5XVTAIARGJI0MvIxb1Oz3uWsbTQ1oJ57qJEDbBDMOdXucQJC3UsIlqZgmn3qOt7/EAzrUsg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PR3PR04MB7402.eurprd04.prod.outlook.com (2603:10a6:102:89::16)
 by PAWPR04MB9806.eurprd04.prod.outlook.com (2603:10a6:102:389::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Fri, 15 May
 2026 11:01:56 +0000
Received: from PR3PR04MB7402.eurprd04.prod.outlook.com
 ([fe80::4129:7aed:b5cb:b13d]) by PR3PR04MB7402.eurprd04.prod.outlook.com
 ([fe80::4129:7aed:b5cb:b13d%5]) with mapi id 15.20.9913.009; Fri, 15 May 2026
 11:01:56 +0000
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	johan@kernel.org,
	linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 phy-next 1/2] dt-bindings: phy: add PHY bindings for the TI DS125DF111 Retimer PHY
Date: Fri, 15 May 2026 14:01:44 +0300
Message-Id: <20260515110145.1925579-2-ioana.ciornei@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260515110145.1925579-1-ioana.ciornei@nxp.com>
References: <20260515110145.1925579-1-ioana.ciornei@nxp.com>
X-ClientProxiedBy: FR4P281CA0212.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e4::11) To PR3PR04MB7402.eurprd04.prod.outlook.com
 (2603:10a6:102:89::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PR3PR04MB7402:EE_|PAWPR04MB9806:EE_
X-MS-Office365-Filtering-Correlation-Id: 0bcccb33-b0ee-4b5a-2013-08deb27160dc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|19092799006|11063799003|3023799003|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: h0SIYzplk+MVTHNu4CjkCL5jkMIVPoy6+4yrKSQ6/Cyt2lhlrNRZTPKv/ew0WubKsA0U0JhFxlI+L+Hn/l7ok/ES51ddW/6Jg3R8aGG9msVyo2KGRH4k+u7m3Jh4Ngl88L6y4LrYxHiqoFso0Ybk64lP3N3iZV28D3q0EjPPpxZsEvCe1bvEcgWvPgj6rv7Nz2HjoGt0HaxFXiPkiX/DmYSer4N0QJoV0Ca2FGkFXmavWCtkGubVnakChAtMZa7Cj0rNWUwoOtYWnjqlIXE5cQs2xFnqSPg/YreI43th95NWqothef+TVkocaj1K5IZBhkTIww056qiCspIOZjPWV5VvQjgNwVJ8yVJDuYc+a9Q0vJ3Xcja20VxFebpEQr1ClInKQSMPDsD1sTpV+lck+zOmJoCUd+7Vw4O0V1fBZ8oM4hV4DS5WjUGFtWdB8NRmH4Qs5eYplr4cMb/KGAzL42GfBN0O7le7k2HOJx/ZRWZV7ChcmHy/qOToqIVTfyj+8IRR4MfR4kSyVTa+t9UqWUT4Ytz4BxVTT70U38y5W64JxaxG3q7DwrbcN9RAQXTgwfukyOeQw2E6QW1AtDrhwMBcLvSWx1Ork501bBdVnYfZcoB3u7DcHoRi0Koevk6U6ApJOoSyTTeP2VPPRqtDzw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3PR04MB7402.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(19092799006)(11063799003)(3023799003)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6Ua2XnM4HenMoTamR3VKxUsIefkMr8GD0YnHABslIiaWha1Nxi5nrYMDmjMX?=
 =?us-ascii?Q?qgSlkZ85mLa8t6ulKgyPozVWAexk4UsMmMv0ILDJk+ALxj52D8IHlpMdsWVR?=
 =?us-ascii?Q?3MPfJrmk1mti71MuOQak83wmriT9lRhPONSIOhNjink8IVtHVxgdI+Q0d1dy?=
 =?us-ascii?Q?1DJnSV1oj16Z/w9WvyOy+1LM0MCrSmZ8TpH6iHJoDDA1jRD/JI58Nz96jAYa?=
 =?us-ascii?Q?X4wiolE20ax8odfWBMG1X+kzyLaBlzQTnNIEtfw7W3i55pr1aETC20mp15RI?=
 =?us-ascii?Q?ASs53E/Xj9utaiZpQmvM/UlkipzxJEHBPaieyhA2/1M14D6vBP/oVbkIqeyc?=
 =?us-ascii?Q?PjuwSjEqaGYyz08+tTZaOWnyYOmzJzeYN4bg7PLDvA2yXSnonB55r2bo3vpe?=
 =?us-ascii?Q?S0mJriHKeQi/Xnzf1a/oSCB2sCF6e8nLuHzelxIM1UaCpKwNuuV7EPgSVSZD?=
 =?us-ascii?Q?BcoHeDSJdXjmSWzdyMz/lP0PK+HDJJ31zu7/dAI/8EkocI6TLgg2YWGixdUy?=
 =?us-ascii?Q?mKlP7DXdUwN5Xo+u5kqqQupDIgLwwenpd5uzWjNM+AjdaF7/ICPX8FDVI0zm?=
 =?us-ascii?Q?YTDHXHk3jdFV8CMcvu6gf+SDWMr04Qb98VTPIZs+jv5kj6pne6HOZ4Nsbe4L?=
 =?us-ascii?Q?OlAn1920c2b2lOijfZxiKpfoabPwZEvTFrSIyQsicMC4lruZIZ6D96V4F0pM?=
 =?us-ascii?Q?Qcac+wr3CInVRqYqZSBzn2eWAoTbUkLOHPIcgY3bFXGGXdp18YqrDhsxG7Ld?=
 =?us-ascii?Q?YFplRLKTKYn32PRexAVfzONJ2pfaK/cKHdNu0240pwdhN7Ku/s0FtFb5YpV5?=
 =?us-ascii?Q?5VNuX0tjgmhiTA40cAZ6rryBZAtyefL49GEw33NiWxjspYA/kufAm88jk1Z6?=
 =?us-ascii?Q?yx7EWtgiOiz5yaY0lV5L8S66ph6MrNP166W7t5KBEOA0IpDpDsW2tHKZZk6l?=
 =?us-ascii?Q?Wfjgo++bUCdBMkwkSFCCzb/zKhG6IE1weh5fYiF1ktWwNzYDhjdJpWKSaipr?=
 =?us-ascii?Q?dOR0ECY+cZBbDoVg9xkWcHfByRhSNVqJz8pPHMDWXGRU0Wn2eE+rUFiB+T/b?=
 =?us-ascii?Q?NleNrJQ3H4TOXt6yNgdyNHNeA9Qa7sxM7mA2yfDW0hPLD5ukXDkzgNhn6nbk?=
 =?us-ascii?Q?2xAG5BPpeYqtPEkpcwwxsYCbl2y51MshkmuR2FhoiCQj2VknqcM43XXXCBtw?=
 =?us-ascii?Q?tH/73PrKsCDL2kq41CLBf5w7DlA6BlNKypPpifaeIIqfcUHFfPp++VItj2Kj?=
 =?us-ascii?Q?Ypv3iLKOQ3YZT5NxAhIdJ+kbHJ59JJLldRm05mJ99cLEl52XxQ8dmFVHikll?=
 =?us-ascii?Q?QvqPTaMdwdQKGqhkgVtOGYGNseNkhTWYfjhIU/RAPKzTNqSAh/bbm2y4plIW?=
 =?us-ascii?Q?IU2FAch81Q+M1acNU5ks9S0L7SRffIoHBT91BF2z+2Pj1rqBLk2mEc6S3nDB?=
 =?us-ascii?Q?7nxu2GPXr+BNYNF7Sfwlgp5Ya38iHggfaTIqW51QPU6BoXOBqV7fSFHe06fc?=
 =?us-ascii?Q?oTk8vKMcQG9Jf8kS15NnsrbwfClLVVTXjNfnNXiz8PvVawhmGhZ0cDXT8xlF?=
 =?us-ascii?Q?byrbKOj/IztJnXWedj+XieHhS0q29hP8o16LLMV2w4H36ZF4WQB5YY+Dy0iJ?=
 =?us-ascii?Q?c+/AW1oAD2QSHQynWqYpRDST/2D+tlW21QwPEL+Zey9J64XTD3te7ZW3+BCl?=
 =?us-ascii?Q?yXl9+5X3aTdaB3vsaCXeYifWnlcSIKERwEhXTCbqs8yih8ZM82yhHjKgybjO?=
 =?us-ascii?Q?24GojBdvKw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bcccb33-b0ee-4b5a-2013-08deb27160dc
X-MS-Exchange-CrossTenant-AuthSource: PR3PR04MB7402.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2026 11:01:56.0003
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jVn7nKL0AsHITUuVhKuiWjTm9lY1CePKgcxCKr3lwdy0JRtoFoJaHK8R19qr9BnyELABgo39uYW6hzvpOtEvYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR04MB9806
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_040201_274375_4FD25969 
X-CRM114-Status: GOOD (  13.84  )
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

Add device tree binding for the TI DS125DF111 Retimer PHY.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes in v2:
- Remove the label from the example
- Rename the node from 'retimer' to 'phy'
---
 .../bindings/phy/ti,ds125df111.yaml           | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/ti,ds125df111.yaml

diff --git a/Documentation/devicetree/bindings/phy/ti,ds125df111.yaml b/Documentation/devicetree/bindings/phy/ti,ds125df111.yaml
new file mode 100644
index 000000000000..ca4605f1d664
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ti,ds125df111.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/ti,ds125df111.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI DS125DF111 Retimer PHY
+
+description:
+  This binding describes the TI DS125DF111 multi-protocol Retimer PHY.
+
+maintainers:
+  - Ioana Ciornei <ioana.ciornei@nxp.com>
+
+properties:
+  compatible:
+    const: ti,ds125df111
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 1
+    description: |
+      The phandle's argument in the PHY specifier selects one of the two
+      channels of the retimer
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      phy@18 {
+        compatible = "ti,ds125df111";
+        reg = <0x18>;
+        #phy-cells = <1>;
+      };
+    };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
