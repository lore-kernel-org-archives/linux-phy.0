Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 675B9C3DA49
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jul 2024 11:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lDX1Z7zzqusF21v2ueeI6M3Sj9eIY0C5PD60jPs+lCk=; b=YfOq9WB5oIsqJy
	fcXo+JK2VwxE3TzT2xYw9sBhIezYcSiUGYBQl04FisjLne7BpfBHyKMBcyvkx3am8sQdRsvFxk5fD
	Yg7cj2DKV/NW5cLn/nf5OBkSIQDQXyfD+ciLdz445f8z+SFPHb2cc3GSx1FU2jrvIZff3IBlNHzie
	0WVn5KUG+REj/LggvXNCLIQErR5NMngD0VA4p8+MAhI8D/oW7OOzP44SD6q4J2eXe4HMJ5aqh7wGL
	dQlYxoYF2ArV1/kW6bDN0wpw+Zs14Pd0OtLRQG1DMgJIPz5w2NuSim+ylW91meEoc1JFIg8nK1tN2
	cLP7x56+q5B/DnYK7iMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXJBz-00000003jdf-0Vdt;
	Fri, 26 Jul 2024 11:32:59 +0000
Received: from mail-northeuropeazlp170120003.outbound.protection.outlook.com ([2a01:111:f403:c200::3] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXJB7-00000003jOR-0AgL;
	Fri, 26 Jul 2024 11:32:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dNDSUSJdH3Q3uzZSlSI9leNGXfN4Wrvtp/5kgEsX6yc6oSCbo2LsY8Dw6C+f9FWcVnMgjzxs4amgeO/92fXvb/C1meQDnDz03D4OSiAPYBiFmcAYfJbGNlpkUZjyMD/ODGE/nOuqWH06nD+9PclR0MGBtEgoVSgTUpqCz/ypI+FPXEiNguHKUk7JiI5O7YGebeA4F+7e7b7L8vwn3GkvmsxCECuIQjP+JdoAUDrPd7NPH5W3e5FWny/rMKHRpcpJXT27fCv7XM2BRy9W645AF1rhUVk5Jt5ecNPedUKVxkB3EjUhpEEy+wvAjV3UJk4DtGr33Wt9siGp+RWrsUs7dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rra4s39gFb+VkIVbwXvzqYFhpwsivmGX0yiyvL8M4EE=;
 b=o+NGc6GPPqPR9Ikh2XWl1zM6jFYTkIsjdcOWqNFxnQjRXKXY+/1HhOLMD6qPcMMHbWGz7UsnKYLVpuC11fLjPqiI84OJ38wVqxlRpd7gRyvkr8O43LFNaR8OyqJv1k5pdXRFBE60caVpXnmyGKjxzXYtrvNUeKp9mFs/hII6iKJIctcgEtyq5+zl7eQR0zSzIkk0bzacFqj7RfsJPJXGVtuhJCBeV9QN3HK/Z0bU/H7RnBs50Zy/0TH19/paTKOmwNnRz4NQbP5I4d42CQj+ZDw08HFwToPG9YYHNSV5z1NskGJMuL5gbDkFkXM1lye0bPzvj4un05J7n2cAmMGRmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rra4s39gFb+VkIVbwXvzqYFhpwsivmGX0yiyvL8M4EE=;
 b=nFA5z6m5h2V3Npd036rrSWXWJT/v4Yeq+ynl0wBlkHL/wMClyWGaGgUsYZs4b/Lwyia8fU1J8orC44ZMnJYDVJLeglJcbLCinljWM/oDKYjMD1XxBT6s5jhE3E1NSLQSJNKJfX5LfHMvT5tr+BwYFLiJ4REwV/zel8QdfJlG/CCxw+6st6yTMWD4ekF3dJ/UNmdJK3a+vawTowU5acodtJwvKBrN8Hrrkb3fdDcX/YIEKA1AHGrLeK4iB17DFC8aJP4BtzpEa7GRdPpMfVVmltF00IVvtVRmHFXqEf+J+96mij7HhksdmexCYHmIx7IFNw/Nlcpopdl0JPIobapiyw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com (2603:10a6:10:2e1::11)
 by AM8PR04MB7875.eurprd04.prod.outlook.com (2603:10a6:20b:236::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.29; Fri, 26 Jul
 2024 11:32:02 +0000
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::4e24:c2c7:bd58:c5c7]) by DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::4e24:c2c7:bd58:c5c7%5]) with mapi id 15.20.7784.016; Fri, 26 Jul 2024
 11:32:02 +0000
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
	gregkh@linuxfoundation.org,
	peter.chen@kernel.org,
	herve.codina@bootlin.com
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-usb@vger.kernel.org,
	jun.li@nxp.com
Subject: [PATCH v2 3/6] dt-bindings: phy: mxs-usb-phy: add nxp,sim property
Date: Fri, 26 Jul 2024 19:32:04 +0800
Message-Id: <20240726113207.3393247-3-xu.yang_2@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240726113207.3393247-1-xu.yang_2@nxp.com>
References: <20240726113207.3393247-1-xu.yang_2@nxp.com>
X-ClientProxiedBy: SI1PR02CA0047.apcprd02.prod.outlook.com
 (2603:1096:4:1f5::15) To DU2PR04MB8822.eurprd04.prod.outlook.com
 (2603:10a6:10:2e1::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8822:EE_|AM8PR04MB7875:EE_
X-MS-Office365-Filtering-Correlation-Id: bcf93a57-6e31-410f-2aa6-08dcad66917e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|52116014|366016|7416014|376014|921020|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?8Q8dHGO86jHdDUIQTjN2si9n69ME3CvgPZ/3LVcqmrRgN5lMPbkGa2Np53SI?=
 =?us-ascii?Q?+yfiw0kXuFsWhLr+Kcb0QjAycOfdvgiTfODE2VbW2dHlz9RNIB5DO2SiSCYB?=
 =?us-ascii?Q?/Fqq0AIcFCV6X086dxfcmjNPJ/6db6xyCo7sqK0WZoMxH+rcqFZ8auUKuMyX?=
 =?us-ascii?Q?nRJlEpe4WD2ZeRnoS4EdE0f6qtxR9C/kwCoupaHUOO/qpGS9Xpceh64hbYHx?=
 =?us-ascii?Q?JzuB918SgGDzAGHnpAlc2GJBpBMlZoyat/DrjQKWerT9i4lxM4KkRVVCrcBb?=
 =?us-ascii?Q?R0P00YhJmLYFTM7qf/BysAaYFkUmQg+khrpcyN+ROeDmGe5yqdyRqS7TZXNg?=
 =?us-ascii?Q?tdizYIwT5tM5UWzRWt3/WB0qVLIYCPGGFdFVBDoHShA7JitQPtJV28zIXGU5?=
 =?us-ascii?Q?+eD+Sq2VH6TDVUkwsjAbmv2x/ajevEtFOnxGaptQAF/TnowOlgrYwsW83t63?=
 =?us-ascii?Q?f+YunL0jPslv784q0xXGdH0fgrQ+oOaf/apJ+QZ5soK3e1gKcdYMNN1yi8c4?=
 =?us-ascii?Q?/2SMpzVKJuqGGcjAE3lGGn1l1jV5AbIn1KDXbXLaNwCSOGaPbcaaHtAtZVr4?=
 =?us-ascii?Q?bhiXodKpdSnqey1F72EBMD0MbtfFPLJvpycVgj2EESCUj75PVKgwDbknu8gu?=
 =?us-ascii?Q?GL8u4Moy71t1PbDCGQUgg/qwinY/iWAI4e8/0014hyt0Umi4e6gI7ae4J6qA?=
 =?us-ascii?Q?MAxfsDT0T1zC5JgnTgiyAEGg+Y8MbBiXVtcPb6QQUPOWIUrFCr4/Gffib60k?=
 =?us-ascii?Q?mTB2x1NdS3RTH5ShaEn22i66AUZdn6oJJi6MF7eaRx1RMVWPSkHWryjLRWqN?=
 =?us-ascii?Q?TelXcTHMbDOnpnFjNMLJtI6Bbt19rj2aNS5wdW/OsSUeR6LV/mqNFo0ldz99?=
 =?us-ascii?Q?1rriyPpfz5wOGAl4peaniQRWUhzrSZfoFr09i5Fkwy5cb7Lq8puqJdriMxly?=
 =?us-ascii?Q?ojgPJMt1FLJnjzmkx0jhCkyq2/9DmvAPsGozkhknOmA8jukfyn2F4NVEB8kO?=
 =?us-ascii?Q?TC4RUbrf0SXy0F+ETV66D60PztQugy8Gq7kG/FJW5Xk0tVmg2ut6GBc6OecB?=
 =?us-ascii?Q?M+l9Qs4+JgBrREUVJSrEe12+zvBdrVqFS16iqFggkfBFzbG4T7zNFojYCFSt?=
 =?us-ascii?Q?flJf6fr9vgPiqPht1PyvClQPEL0ndzBqOPL8D4Eq+4Kyn+J7nIhcAXUaGKSs?=
 =?us-ascii?Q?y9cGUcjq1kM4zSbBQEEHNWMQ2sFn1I7zfLY6OhmEltFpKw3ayUm+bPSRY8PH?=
 =?us-ascii?Q?bPfk8XBQ9h4LAEPDVKhY6Vy7hPbFKuBYIcS2cyua6fy+luYb+DOdT9XZVDHt?=
 =?us-ascii?Q?n+f+MkLKiKk02vSIEtFts9MDGc3I5dBYSFT1FYoUJxZJeXJdePFDmrIpSrjT?=
 =?us-ascii?Q?3/LmLa8I1frGvho9aS2I4Pr0vIrX6CPCmzZECys2oCSdakxtkL1iQkVL/1c9?=
 =?us-ascii?Q?0QuTwjXXz5w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8822.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(366016)(7416014)(376014)(921020)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?H1g7bSBuWxSUWC+05s+O3XggpPKaRKAeEJPFBmUcxYNioTRhCNF4fVIbGyey?=
 =?us-ascii?Q?qwxC1jX2fqJTsjbIrIKWlfP85EjftvsUbxUwn8TGU5d2LIiXoh7gMqy7R09w?=
 =?us-ascii?Q?ka/tSSWylEKWf5uKuTkUEqzrlgkF9G/NbxPR0ZX0KAJ606D+YJ/BePPOjxEG?=
 =?us-ascii?Q?a2ICr0rEPHxj2lueY5K2dpL5hAyv7XiLZpzY4mLxS7m+o9ei6fDXpl9i0ns3?=
 =?us-ascii?Q?ydPsq9MwHpzsUrWJiVkRAESMMNkhmGdlz9zu6SvNUB0B328e5LnQVYwOAmAG?=
 =?us-ascii?Q?apbLXxlGOj1dn0lL7UQNRQPrtZaCl/2HB6CsSNuWEOpnvG7oqt4wv7H3dRT3?=
 =?us-ascii?Q?HyDUD/V3JR+VTP0c++lYwpVA5Vl8lJZ1rLz4GCA5WDxWqvtR1p2DIxaH6Qce?=
 =?us-ascii?Q?yZA72+p/tfk5Nc8QhODU2UjrP5cdH1X2/TAUe1Pnpp9oN/9MMzU5Kdq5V73d?=
 =?us-ascii?Q?maarVy/MREhtOnGYt7ldCoz7Jdx083c5OnOZtN9RZM10x6rzFSU2J1WkKdu4?=
 =?us-ascii?Q?mrPYg2mtgzRjf0ZHC1VMYVnZdUPWW4DuWpzaLw6/SQ8ePD8+GGKPsFBI/rN7?=
 =?us-ascii?Q?jGrTkzxDtHtHjdyfGVaoboWbJTd0IXashpyLeQTbiocRA7uehH+frR+sscLp?=
 =?us-ascii?Q?dYMkigFcnOu0MlAsCwmAvQXmua6F588csGwucpFv0u7ks6KjOlZ867Nf6gbl?=
 =?us-ascii?Q?usJegl1cDJlUAanACLtW5ceeaWoWyxREFwxk/BxomWZod3hlWIFKBjWYjGcV?=
 =?us-ascii?Q?gwpv9B9AWAYiHq1feqnX4R2dJORbCTE71Cqr3/kqaI3UnL9OGq/JvCI23Djt?=
 =?us-ascii?Q?BfO/EnbWRVicAMtBS7/Pti3/f6ERT7lXQqshFfcUEzfpwiok0f4c3jxGnDdr?=
 =?us-ascii?Q?4N00e+rSbZ2rm0j4wI+ccE9F/B1SaMRQaZPTMD/19sDXJiKPCeG0TR41m7nK?=
 =?us-ascii?Q?1FX0NcLRrQWXnKOKKlhZdXqOP/DStA6tSGJ/9bmHZqvaxyVgT8dnuwTd0gxU?=
 =?us-ascii?Q?Z9LczdOfAq/4gpDQjLuJKk97jYKIdlW1SCPf6E14m5ZZ2QEI7XndYsaMJXXX?=
 =?us-ascii?Q?2aUWwjOIt9Hvw1yMQGASoG5UW+sodNUGEeSnHX9CP/s/b45JFMh2i8rCmrlg?=
 =?us-ascii?Q?fUzG1XxgreV+La91P9lLfKdNvie/cIMPDzGFosEuzUNuSiU0H+78+fPmgx8E?=
 =?us-ascii?Q?tbJMmI5lc/i6MuOGKJo874oxa6uQ3zjEhwSNvZJRXkS8CZ9tQMCqFeFshKlp?=
 =?us-ascii?Q?e+f3kZPIhAoO4AorevTtBjbMnEUEN/A+lUrlbl4b88tY720aBTq5klPYE/GH?=
 =?us-ascii?Q?/90LJNIX7RmDgTaEIAggLNQrqbJxt6S4Zkb59wef0UHOWtRIqotb2ELoLJpQ?=
 =?us-ascii?Q?XvURm11Pd5sh1fiTzgLEyTIHJ3KUBduzsImHD27ZLvs05TLk9UHZVxJ81+Bl?=
 =?us-ascii?Q?WJnJJ5pZJG04l0Vtqp9qX/WorHL9YgrLJ4dG6IBKy2es4DK5IS5PEPnpOjuJ?=
 =?us-ascii?Q?er/DaG96YfXI3gUfNdVb/vMNLUNA5mNkB2jZ9+d5cXJKOQWLGOtlnaGPYnXC?=
 =?us-ascii?Q?OXWvfPr60SCVa+Et4eJQR6jRwrEC6PUcMZ8LFgvT?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcf93a57-6e31-410f-2aa6-08dcad66917e
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8822.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2024 11:32:02.2066
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3A1k+FbGtGuQNUunMt+oqT1S6GRWkUUBxb3Z0bcQ7czN6vvEOcDaabtCC6sch5UjW3DpFYSuRJ6N44piTL0GGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7875
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_043205_374733_B6BE4B38 
X-CRM114-Status: UNSURE (   8.06  )
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

Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

---
Changes in v2:
 - add else branch suggested by Rob
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
