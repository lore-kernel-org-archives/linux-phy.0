Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCB6BCD342E
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 07:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VkZJEAhbNPOfxIbp+vTWndOEFZYfgPtQ7XDUOxwX0+w=; b=ZRQTx4NLNcFxUW
	+oRTq9Qq8m2eRYB0GviaGgwrv+I5jEjSGMRO8yB/R6Vjefk6XgnYtljJXkZqYKCJt90c54lhM/L0A
	NyYJpjOaC6+i1g1y1f+zXGc6/nRe/IRpfAULZOpi6D53u6Uo5qg9Z83sdrDNYt90DI8H4m5WbS1Dc
	NZFHtPfklHM0fdy3QFqt/9nqLAnG+GjTfTCeSL74ZZcg0ivNYfkbw53TLbJPCAwGIDHaR4tsjF9hM
	h79L/KFfby7nHaIC0SyhDhEo2T7pfmLCV/1K2sIsoNmHLa7Init8tsWcGB4m1u2iU37ScmIUonKkP
	zUgEAYJMZr+BaSrBcOng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slOQP-0000000GnGD-1kIf;
	Tue, 03 Sep 2024 07:58:05 +0000
Received: from mail-dbaeur03on20623.outbound.protection.outlook.com ([2a01:111:f403:260d::623] helo=EUR03-DBA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slOQ8-0000000GnAl-3m3U;
	Tue, 03 Sep 2024 07:57:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hPPFtQbSX2oT3CrNxQaDw6CRD2fCh4D2iFBgIt/eVQTNwmN5QpfABVLZuebMOapy2KnI5v963s/Z9Ng9C5ZBmyGroG0uR4wRMekoHdYeuDsF1cHMolgfb3ndfq9kKj5CfOjDKLHUFs++sOL1E/rIMCwK4pxRrtgPJVhiUJMA9JGe69oKRQ6bTF7LbQn7H398Ne+pCBV7MzfAxGu0PqzNvlsEs3ALS5A3yl6NgjPeN8TNwkCp+Y2TXozfuYk9Btby1WlA0RSyxEtDqRqn15333OJMxccaJeTuhHpqtREiUScnBD0KrDKvNbkHvHI9mlVg42A2O9/zBOa7/DFwWaRf7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9+sfnXDxeTAM0npGO+NqyKIzNQbMJ6avO6b4ZGmBVQU=;
 b=PFFnBV7FPdM6jB7kn7CFJVC4BdVyundIPQZXJToT9urAiqQ5lTQbUw8Nu24hlXyvcHb4Yv5LCXJz1OdEtnb5AhflGKZm1pt+62tLpO4jeakExK72hNmUJzRO1Wmz4qwnzQsLPbOas2DWQ3iNOWpY7ZQDUjbhVhku3E4Zj8yR+2X43ahuxoazT8vw2tLzdyrYK1pL0C9IYX0w1I2G5cexiYFJgkO68SJjXF3T/DJQ5+6fvR6e109WtWkUjHMRN/WJuX0grRMnAiTct8GMuEhxIqsdATgt7SJwR22I5GRBZm7x06Ek78O8nOCjWxV2S4uyYO9Gannmtwj1tz61wH54vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9+sfnXDxeTAM0npGO+NqyKIzNQbMJ6avO6b4ZGmBVQU=;
 b=F8HRI7Ioq9vsJq2vPC0TIgKqWtHPZELMfys5reGjMC4dvNl0pYbc0Rpm93OV4n6Tpocmrtm48TKG3DaodjfXZaVmFRhO2dtOzKf9fCMOtOQZVnYA84eTaledrP1cvprFOYnLzNxUpn+LD3hmuBIGhM99VNXjiuJsjyYO8aVuybpFzS9I51Ve5oYfCyRPUcvgKcUeITsqOm6ZEYF06o9aDil939sR5cgIIWzSW6FPMxvOU5F9Emg2qxEZX+2kZkItPEqLk5dN3CPD4jYEnXpdPmiyxkgIoEacwPYr52NCwm9v5ni6VgTpnGB58bln7GoVPE0dwUgLQ3fQka2qgb01vw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com (2603:10a6:10:2e1::11)
 by PA1PR04MB10652.eurprd04.prod.outlook.com (2603:10a6:102:491::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Tue, 3 Sep
 2024 07:57:43 +0000
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::4e24:c2c7:bd58:c5c7]) by DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::4e24:c2c7:bd58:c5c7%4]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 07:57:43 +0000
From: Xu Yang <xu.yang_2@nxp.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	gregkh@linuxfoundation.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-usb@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: phy: mxs-usb-phy: add nxp,sim property
Date: Tue,  3 Sep 2024 15:58:09 +0800
Message-Id: <20240903075810.1196928-1-xu.yang_2@nxp.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: SG2PR06CA0195.apcprd06.prod.outlook.com (2603:1096:4:1::27)
 To DU2PR04MB8822.eurprd04.prod.outlook.com (2603:10a6:10:2e1::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8822:EE_|PA1PR04MB10652:EE_
X-MS-Office365-Filtering-Correlation-Id: 28b5753a-39a1-4e30-5495-08dccbee1765
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|52116014|1800799024|921020|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?AnJPa7V/AlZUPabvHo4IsyAWEyiFIki989niP0Vbtjasihue8pzFLpEJcfy7?=
 =?us-ascii?Q?dyR7HDd1roLEoTJe5cKw1HySrd01A6Aihml4q4t1oMtvjPbOFx0uc1RahTJG?=
 =?us-ascii?Q?3gn0e01a6Mxq8rAz5pcTZ5Kvcv3GtVYfMoFGugRbtjj27iBa4xF76yW+aaR0?=
 =?us-ascii?Q?ZD0tC7hFp7EJGYHTduwxc1qofbs4C7OpSBieFDISt+HSyeXKyWsisrs2fDc/?=
 =?us-ascii?Q?UznRddrrvdlYjrQfXyClQf4uWNx8CbcyoxZnvRGCpZvoxP/ZVtiH6zFNpQTp?=
 =?us-ascii?Q?NMUDjvP1QBOl8nwA2V02+1w6XCF/jD7vnfrXMCC0Edg+lAmXQw6AJ48076zU?=
 =?us-ascii?Q?cwwSKBDpfj9XlcOQcIJ9sNsY+cnTwyMqkKUBumWtz4FD6ecVtjnEV3MbKDan?=
 =?us-ascii?Q?4ok8PfupIMWwxHsCAt0H+rhTeToHXrdVX597305SReAKf+mvfTSU0KbBjecx?=
 =?us-ascii?Q?3hFCrLsFdPQDW8jDIb/SUiS9cJOduI/IWSj/YGj8KiI40JN47I0jdEAefUPn?=
 =?us-ascii?Q?dTGqbNv2reQ5/vr/u89HBxhMX4LbQJ6RjZzIRQK6W63xT1nTFAya3c9kl82N?=
 =?us-ascii?Q?wABzl4fkATdWC3nNzuuRFP7mLB6HxSpJmEZZRKOlwSCw1ia6hvdFmqFeNx3R?=
 =?us-ascii?Q?Ae+M21LlQHjLC3z7A3FbSAt4FRxM3BcWpagocpzprPpOOVbXLRxmpUoA2WAP?=
 =?us-ascii?Q?NW4SLHyAq/VEO/1xBJrALny7sbR7V4CoV2+7PBYiTzzgSxEnMxoW2Pg8RCpn?=
 =?us-ascii?Q?X5GC9lSEhXWOZME1BRslAeLljI0fDupTkD8ks5GAkdYaGg9PFDVQ9HuwoDou?=
 =?us-ascii?Q?3VTwolxSjMdVHwWQTImsnDorZzUgDu/JQCP1ZoxwrjsAIMwpZzLl3MPun5f6?=
 =?us-ascii?Q?5NgMUen2zvbxFjfP0MXH9QAgZp1O/l/6Cgh/7HDG81BwK972L2+aKSm5TM1z?=
 =?us-ascii?Q?UXj6bHIpwsn1aTM6cXDmB0IsiNkzDzw3XXbn2ROSEGaHOaeWbnbZg3Lr44Wk?=
 =?us-ascii?Q?z0DHdbwCUeuYUXEg/rzzFYEg8at22nDqW/vLjJh/o0/h7jPgTiJHO9OyJ0MJ?=
 =?us-ascii?Q?+3C5KWC4oH1vkLnLNVYrXsvBygfNlFVeB9H1HLrakyoJL8ZTDuYPJsAFI31N?=
 =?us-ascii?Q?E1ueywowiXT7BRA1H0bQXQpWVGXrnvnxAWhwotTTyLUVDmNzIs5fDXz7mQZw?=
 =?us-ascii?Q?Hmhob6tF9KVt0DmHSbwoe4LSK3NCrKY6SV9M7YKXHLpJFu36LEs8B2bIx2Lf?=
 =?us-ascii?Q?I/9ofgTRAXrdd35VNRkhGeIpO5XJOG0muYznjbaVoVUH8HhYzjrz4erwKB2r?=
 =?us-ascii?Q?ZUboGZ5AIC5mcPL7M+OHHjQlE6/FhgIFh4yZ49Qj2rYr8oQs13c21wRTiXkW?=
 =?us-ascii?Q?+/S6qjhUaWE2jnNQ169HFI6fXcxJvJ55R0v3AsZe2klbOrtnZKDer34785pN?=
 =?us-ascii?Q?/hdp/Vj2HtY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8822.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(52116014)(1800799024)(921020)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xRiWytgKMMocO3BX2Od6cPuDP6tDL84xpnU5M0HmjJKY6veESOA/ZgAH7KkA?=
 =?us-ascii?Q?5BQUmmuVwThkQB4168lgMy+3ec4ctkzGF2iuZZMdNSvdG7enNpKZuYuh9wH3?=
 =?us-ascii?Q?AcuX85Zt3PWc2S0yyxW1GYpWQKXaUB2rrYUITU1/Wj1xpyPA6/d/b9Hlrjus?=
 =?us-ascii?Q?MzRF8oALkLknwkiW393ekAu6KcAhVZAqT07mGZ7sUiH/o9v5W6fBV8A1mKTv?=
 =?us-ascii?Q?BcBnCNjiMK4eOqx+wuI+AB6xiUU3olg1zHHDcPpMTzlLYS9SCE9YAuHQrLZW?=
 =?us-ascii?Q?TOdViv3Uz6oJnJHkU8eOmA3J12lpJ8taHOT8hhv9djDhQqiBqHUlbOxFZmqS?=
 =?us-ascii?Q?Qe2ZU2ccrbpyGe0TxkSbrp5f7BGTOjRvBhXqFM2k9el1nyzE1Ga5bch11Gk+?=
 =?us-ascii?Q?CEBXK3uTfZBoyy9Q0OIR3+8j/IrjeuB1Sf4rKn3Y0LAmXqouPIrK1HpRUqo0?=
 =?us-ascii?Q?k/m/dy02pzWHFNRYdpCyR5O/a0NTNeo4sEU9QFcy/cFvIsrnaZsyXroJJO7v?=
 =?us-ascii?Q?jr8vrnVdjtVlzbp7FLUe6kEyxZXvaVvURQk8+P6svWG1Q7H4dM0RmiHJwQb3?=
 =?us-ascii?Q?7UQoF8fWB9VY0YEvroijz9WWsdJARhpku4m8zQOxNva3sg07D/v1k4t0UGld?=
 =?us-ascii?Q?nojQNWpRtm4atDrmpzF7uceA2P2+Not97rBYfyEVovDh43Hf3J6P/kZcMCc/?=
 =?us-ascii?Q?4CZ2hyRzq6666kvVPgEOLqFcgsIhXm68CqZhTCna+K/UzHrpPIluy1FCeeg+?=
 =?us-ascii?Q?mLRq+vGs1CqgkcsQmCWJlB1zj1XYYXF3WQEgm6qsFLmoEhvEjgCGpz4e9Br9?=
 =?us-ascii?Q?egKHgWyqXVLhWPAF5ZUFuzy6xLyDrIYE2F6Q77Pc8Jn+UPkBpjk0qaiDNgH2?=
 =?us-ascii?Q?DbSmT8EVHfa03VzxBuKIS5j8B9q3la0KWkEOh4NytXvQzBdp8HzLNee+pWcD?=
 =?us-ascii?Q?1ZLPW314sEokvzbHOqEroPBirKYMGsJRT5uV2pyRKOurp6mKetU1QcynBrPv?=
 =?us-ascii?Q?8PeJ1DA2ehwEcX1PUmt8cpEwhWFd0gup+a7jIzVmj7rc4+hmMBrkDZR3KoAH?=
 =?us-ascii?Q?iZckI0sskCIiFLzFSHJn/SioKzuhP0PNd06y8Yjh7Tm7K73WAcqrcCZh5gS9?=
 =?us-ascii?Q?ajK7xHjH5wDKvzLFyBmdUy1J1lxl3VVYOWRX+3JQb0F8N4aWTQ7jC7Akpg/7?=
 =?us-ascii?Q?/9WCYWhAdPCApWf6i/QMOvr+XkzF8oV4hWF0aOHoO4HLNJbhia/LxYxgLaL0?=
 =?us-ascii?Q?8mvod4FygM64qQlMnl2nkaYlpObrOMnc8IYsPS2Mm7r8t1xOFvznpwFfQ92v?=
 =?us-ascii?Q?QLvQjnIxOOPzq0dlwxE5i7nvkyzKC0xIQqWQNj4yQ+FizwqkL59Y/i8Xnhxn?=
 =?us-ascii?Q?wierUunmwUDSY6scqAVRLJoUONcwUu5YUtxR6EjBFBd0G1MRqr662UDR6wAT?=
 =?us-ascii?Q?RjQkPx1a4ymZJYyjBgcvEHZRirn24p38v9R21Mjd9krlTCVXMUpYQHD2+8V0?=
 =?us-ascii?Q?xyUh5mXbjIP3G0SdQOmpiXvkPKrsA2vUB9PH4nG6B2mnmomtoQck+fmqtGQ6?=
 =?us-ascii?Q?m74xipZOZlHR6DNi4Am/3IKcKYPnOcWDNGDfG+f4?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28b5753a-39a1-4e30-5495-08dccbee1765
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8822.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2024 07:57:43.7760
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HjuOHQ1CQ+JLoW8cUYYYvjIamR16uM5G9OqrNJ0Hv+3JjBoAdh3OLzVy+aydb4R76Ru4xxWYkUeYixRN2WxTow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR04MB10652
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_005748_966345_D23726D8 
X-CRM114-Status: UNSURE (   8.36  )
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

i.MX7ULP need properly set System Integration Module(SIM) module to make
usb wakeup work well. This will add a "nxp,sim" property.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

---
Changes in v2:
 - add else branch suggested by Rob
Changes in v3:
 - add Rb tag
---
 .../devicetree/bindings/phy/fsl,mxs-usbphy.yaml | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
index f4b1ca2fb562..ce665a2779b7 100644
--- a/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
+++ b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
@@ -87,6 +87,12 @@ properties:
     maximum: 119
     default: 100
 
+  nxp,sim:
+    description:
+      The system integration module (SIM) provides system control and chip
+      configuration registers.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
 required:
   - compatible
   - reg
@@ -110,6 +116,17 @@ allOf:
       required:
         - fsl,anatop
 
+  - if:
+      properties:
+        compatible:
+          const: fsl,imx7ulp-usbphy
+    then:
+      required:
+        - nxp,sim
+    else:
+      properties:
+        nxp,sim: false
+
 additionalProperties: false
 
 examples:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
