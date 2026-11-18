Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B40606A337
	for <linux-phy@archiver.kernel.org>; Wed, 18 Nov 2026 16:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=T1gk35zj;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256 header.s=selector1 header.b=Fa4S0Zam
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=APJmG+OVeqPUO7LraLmsSVvO1MHjhKhDbKeq9hTbJgs=; b=T1gk35zj/s9d4JkDy2ZM8c1Aau
	ZIRzt/bJSW4JxDjbG0/KM6X3UZVig8XTrl3Toi/Wdabr0QqbpokOcK4yT/loKBDt9arH5j0cP8m9s
	mGcjXSMYFEV9nkpQW+TJ6oUn5uL7Ygo+cQlNLSjk3vKfeKcTRZdoJdIXvL014BQ2iz1Rotmj9m30s
	MrViogrHFUQLhKYZyCc9PSlFEXW99/pYdv1J6J7e68k/w93RaAVPOXZ6eQQb4D4Jp/0pwSvjhmRLg
	/lB+03ooFAR6Dsq31pyfVU7q6ltNy8gYKTnLPnWQa9pUB3OnWACTY8nTII1n2L5c8cK6QIUaCI9q+
	nOs/xT3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTibH-00000009XU9-0bHO;
	Wed, 18 Nov 2026 16:33:35 +0000
Received: from mail-westeuropeazlp170130006.outbound.protection.outlook.com ([2a01:111:f403:c201::6] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTiar-00000009XGP-2LcY
	for linux-phy@lists.infradead.org;
	Wed, 18 Nov 2026 16:33:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QLW/u29fneJmoDRIIfUlvxN1+PW2XgAbR/T84CcpllF5LHKWdIINKyY2McxwrNywqrFcM19+LJHe9YkvtI/z6AwOGasOVoYeL1Tkw7CvEnO5oOvUf9PfkyQdGGY0cRIlfFsyRYubIiQwvAoi/SM8TdrkjY+HWLVxEdbbEsGRldhqPE4a2M2pFi71Txp7lZpR5XAMy8Gaj18J9R+jP0jbakobhrP+5uP7IY0JEly4Ijm4BIzl/VAQbtbRMnxJNfY7JOEfbykD+pYzi/4YKBSpr2YJm+s4NprhXA17QNBxkebieT2JXOswuTnTTB+mH4BOFQjQkRlJrfv3h1gXNFytlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KGsoR0+/dZKHBKztLEgphJwuncEeIn5dCIUrzvsn0nU=;
 b=cfQ5uEiwNkiq01lzzl/2opI7/anPDsRLtQrUVqZkHMALgtR/+Rx2bUx7iwXaGqbG7QjifwgyNSfDpxkcW7C2fp8yFWMZWCkQ8IyQ2f9+xUVSGWCB7l7MHGl21RKIfjXICGsfO3PqwDjhZiMal3VCNH1HAgAn6b1AYjz8O3lUVjSRBCDdfylLh3p7FPKZEVew7fYxJbzzuKI9gnNS6xot5bnnuwjMs356ITpDPvrsDiijfAOtGXikrGhNLR6HN2ERN0shDEtxr6D1FX0VV5q22vFzs3GIujmtM4s+NiyneuVTeyoIXgIV/tGeuFoCnng6bPyS6zMPR4jFDZsZSMMgSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KGsoR0+/dZKHBKztLEgphJwuncEeIn5dCIUrzvsn0nU=;
 b=Fa4S0ZamK5xJERNN0e20IxV1X9P7Es7YUEeWmh/VDrIzeo10Grvo0G9JsGRMBrozSKvVQb1cwSo7emG5Ns7G6VZGKB3nirLbSCmjASkAKT2wnmrJ8UhAbHo6ZTQ/y+s+YtzkgzUI24N6yi9VhN4wrC5dUddpbXLdItt9OL43dyW2E+i1FO1uf00jQqEnJl53LVjZ5VMtNuijEQlOzEy46+onE+Z1ZDOAZSGNRuW8icB1gJLml7PdFSYfnVgs65vgPVb7ae8zoBMSahrsaSbD4PFAP4UKDRETdYTLDqebc13lhYUBn0Dho4X2Z4yCs8GgnQf14hNeYXFZ5QYlPYJY6w==
Authentication-Results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from MI9PR04MB019273.eurprd04.prod.outlook.com
 (2603:10a6:290:d3::17) by DU2PR04MB8999.eurprd04.prod.outlook.com
 (2603:10a6:10:2e2::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.615.14; Wed, 18 Nov
 2026 16:33:00 +0000
Received: from MI9PR04MB019273.eurprd04.prod.outlook.com
 ([fe80::263c:943a:dcb0:29d8]) by MI9PR04MB019273.eurprd04.prod.outlook.com
 ([fe80::263c:943a:dcb0:29d8%5]) with mapi id 15.21.0615.013; Wed, 18 Nov 2026
 16:33:00 +0000
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	netdev@vger.kernel.org,
	Vladimir Oltean <vladimir.oltean@nxp.com>
Subject: [PATCH 1/3] dt-bindings: phy: lynx: allow downstream phys on the lane nodes
Date: Wed, 18 Nov 2026 18:31:32 +0200
Message-Id: <20261118163134.2149894-2-ioana.ciornei@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261118163134.2149894-1-ioana.ciornei@nxp.com>
References: <20261118163134.2149894-1-ioana.ciornei@nxp.com>
X-ClientProxiedBy: AM9P250CA0022.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:20b:21c::27) To MI9PR04MB019273.eurprd04.prod.outlook.com
 (2603:10a6:290:d3::17)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MI9PR04MB019273:EE_|DU2PR04MB8999:EE_
X-MS-Office365-Filtering-Correlation-Id: 422bc3cd-6488-4139-0065-08df45919c73
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|23010399003|19092799006|366016|1800799024|376014|22082099003|18002099003|11063799006|56012099006|261026121527099003|261021121427099003|261021123027099003|10067099003|261102123227099003|261009223027099003;
X-Microsoft-Antispam-Message-Info: qIiZAkyTNC5+lCWn3C3YVHZQd0TKh93d++MPZ2QGpjBKkhFswOlaqmZxiLKKoLzchaG65BwA3VXlg5AOnNAX583W/UB1N6gsmNpevje6jbyg6aXDnJ1YJ4S+EG8hwC+vQ3/JxBQ5CJDGDf8eDDcY+8qo48sDE85ntvOhg5V/FuJarkTOG+n2FjthW0XDmLyujgyP8mWvQN5OjMM5RbQ31Q1UHnOnNLzPhHpFQmqxu5cw/pNJ5qacDUqyN6PNsGlgM95BnharmlAH/kUlWN5Fm1MLE3DZ1HrG2FnMil4k811ksNJ2F9vBlU/+DtLhp0M0ia/l01kFDHiNuSd3ynVegcxOih+MpfkbjsJ1qwDFKan5kghq6DbOamZn9HFZOyo+KvCX5AmVv/zoDGKvQ8aMmRTbbQwDPxrIPoFytfC/sHtEKcexq82m2dVTgszvCTXmgkqXL7awjyHqgPwyys7PBzXigOWUzunCJshbm3i1jMfs4orRENY7gfytIa9l9qwaRhpiZD5IGF00sQQEqrII1rB7huh/rCWbgPxQXisRk/1VdELC51gRftjEMrkg6hf969NHC4Fvm4HXIs5FYr+StoStnYiNskpWLXozq0fUK2pTcsU5UhuhI14v0/6yEXKjBenEXL+pN/TdhmhLbNAsv9zHxqDaZ809XQicxt8E3hs=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MI9PR04MB019273.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(19092799006)(366016)(1800799024)(376014)(22082099003)(18002099003)(11063799006)(56012099006)(261026121527099003)(261021121427099003)(261021123027099003)(10067099003)(261102123227099003)(261009223027099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ulwocwaVf/HaweCjfyC8uOVnFYJtEUL3o0AS4A/J/b3946BfFk/7j3sa/Ap+?=
 =?us-ascii?Q?uPJAGPlPegYBqyD1tJ1TWrE6l/lwB7kcvEZO6J2W6sAhb/j5Y/dOi47KTPTR?=
 =?us-ascii?Q?QNO5vQJR/a+0IJDt9Iy5nYKyxL+/6yZZkoWPzQ0ElbKL2j64RqeOb2r1BxyJ?=
 =?us-ascii?Q?uHXJ32fq3ELKpU2X98MOh4cG/xPvGQNPjDLTFiAp9+J1M97H2fbozfE2lKsV?=
 =?us-ascii?Q?ZH+TN3YcxnCB0/6RYTN3MJuPwF8uu2M0phL1m//wFi9Dgyrc8PQ+h1G8ZyI1?=
 =?us-ascii?Q?jPAVJkABdHljiwfa6B5yCqZKCVl7ADVRHpLOXzK7rLD7rt/U/NqW7z437cGw?=
 =?us-ascii?Q?2EQiqntxuyilHS7v0v42y+thMQiliIAVMlEJKZCsA8BTfc3dmL09E+/bzs9n?=
 =?us-ascii?Q?gismra/ohfovUmtqEGSE+PnVIiKh9bQqNJOXQFdqGi2UZ5ZXc1hLU0UIokbH?=
 =?us-ascii?Q?J/46f2oDsnEcUpHyeAIwjMLsrQ4s6VdHQ8BFrKOuKByFcie6HPX5YQ5g8/RH?=
 =?us-ascii?Q?e+2grzHrb14EoP9285X1K9t3tA026f2f5PA+MEb2zbkqn4XM/Q51T3iHFXbG?=
 =?us-ascii?Q?2x3ktCV/1sdMbIj5m8S6RJYsMdZq5HY7wmEZk3WlINefwMaIUP7N6VNv/r1q?=
 =?us-ascii?Q?zHLbkowcpIO4AfAk1XisiHFdYO97Q5WX+iyYORCFnj9zVSMiNKo8Sg8gqjAo?=
 =?us-ascii?Q?DOiS5gK0pXdHuWCdWtoEkLYZvax7v4balDNOFoNu/KxHcT3A+7hjKtDtfxL1?=
 =?us-ascii?Q?R+b1/N72m7WoHZyudG/m3NWiQDe1OYpcwjxblsNA2PMAYqy3wmRWBgg4tpER?=
 =?us-ascii?Q?FomRt1oI0rbwZZquV+Ip0YQ6WLn5byNd+IozBVj4t9cM9AT+0HfDkSzbwdXm?=
 =?us-ascii?Q?byIMHaTUN7sR1jPj3F1oc49iKuW9+E67tgkOlXrhG7W0P83W2DojSQLPZS8H?=
 =?us-ascii?Q?oii1nIZUyYg9tQ9/glefXGiN15sXcAMWkfK/+tmDldPCv9eQ+a8XrBeQ1txp?=
 =?us-ascii?Q?8PfVT8rPl4z/zJFKI4/VSBCHiCmd6p6ekmPgg4tetEMH/h3ntLd44fjuGkdQ?=
 =?us-ascii?Q?xnGEhPPz/0koDrF1V5MG0TUn9eM4zZMKyMUQ0fOAD48VqHGXVveJuH2srgWU?=
 =?us-ascii?Q?4HQDfDUbUvtx+MOtTTtPIfdaKz3KilsbuxuZ5pgAg0mPcH+ULQvLmDW40NtQ?=
 =?us-ascii?Q?anKaCFnnjH3IQZ9M4wwfvU0xwNCuRfYAlH5KQgsc84/0SbAq1eiQbWHWpEgO?=
 =?us-ascii?Q?bPSg9pYl9cobXSQX+ILoGECMBl0j+Nk3lTBrIfkubwUkyI1B9f086quPz/+9?=
 =?us-ascii?Q?KN6Hpgqux5k0lqzlVtcKukuRlH0iOtM3eY7UZQMPeWwaBpCL2qBknHRynn9+?=
 =?us-ascii?Q?wLiBQ+SKYsmKkuOaRiBC5EAMVyovtET0ZTpcjExc3y6EhutqAIIcySz513wq?=
 =?us-ascii?Q?MKpqU5fN/QMM4t00ejMq0drzP/RoAOkwH4wgQ+5viouJX3jZ66PvZ0itrsK8?=
 =?us-ascii?Q?SHGRy9asDs+zJGItkKhGOa4lTgX+0PkVP25RgxuhH8fFDR+sRVKS+NxEt37V?=
 =?us-ascii?Q?A92UVxNcHYK5K1dHBLN5H4WEsartQHeeKzfsOYMdSXB6e5OHz+lbrF05R1kV?=
 =?us-ascii?Q?/APW3Q3iQfwygsorwIUBk3xNRz9Tmsv08Zk4xYSZ08O6AjfTMmU+BboOT1Ig?=
 =?us-ascii?Q?Vff1S1vaIgDXBJRr0H5G/Vwtu+CiXZUU5itHblgAkSab9cw5wsFUgZmGO6Gz?=
 =?us-ascii?Q?+zJX37nmjQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 422bc3cd-6488-4139-0065-08df45919c73
X-MS-Exchange-CrossTenant-AuthSource: MI9PR04MB019273.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2026 16:33:00.7767
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1Cjyy8M9/A4UfT7QXIIPqvEuHbHW5mt6AmLLiH6YHMGqOIg9IsWOamt9MvvoNLe1VwyGxFdCfhR35P6hpdtHqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8999
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_083309_623852_095D95FC 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -1.1 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

A SerDes lane can be connected to the connector through other PHYs. For
example, the DS125DF111 retimer on the LS1088ARDB has one channel per
direction, each channel being modeled with its own PHY device, so the
lane is connected to two of its channels.

Allow a "phys" property in the lane sub-nodes of both the Lynx 10G and
the Lynx 28G bindings.

Also allow an optional "phy-names", with one name per entry of "phys",
so that a board can name the channels, for example "tx" and "rx". The
names are only descriptive: the entries are used by index, and no
particular names are required.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
 .../devicetree/bindings/phy/fsl,lynx-10g.yaml | 27 +++++++++++++++++++
 .../devicetree/bindings/phy/fsl,lynx-28g.yaml | 27 +++++++++++++++++++
 2 files changed, 54 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml b/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
index 2e7d0abfa71a..a4592e02f972 100644
--- a/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
+++ b/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
@@ -57,10 +57,24 @@ patternProperties:
       "#phy-cells":
         const: 0
 
+      phys:
+        description:
+          PHYs on the signal path between the lane and the connector, such as a
+          signal retimer. A retimer can be modeled with a PHY device per
+          channel / direction.
+
+      phy-names:
+        description:
+          Optional names for the entries of "phys", for example to tell the
+          channels of a retimer apart.
+
     required:
       - reg
       - "#phy-cells"
 
+    dependencies:
+      phy-names: [ phys ]
+
     additionalProperties: false
 
 required:
@@ -119,6 +133,8 @@ examples:
         phy@0 {
           reg = <0>;
           #phy-cells = <0>;
+          phys = <&retimer 0>, <&retimer 1>;
+          phy-names = "tx", "rx";
         };
 
         phy@1 {
@@ -137,3 +153,14 @@ examples:
         };
       };
     };
+
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      retimer: retimer@18 {
+        compatible = "ti,ds125df111";
+        reg = <0x18>;
+        #phy-cells = <1>;
+      };
+    };
diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml b/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
index d73591315d4b..5d2505fe2fcc 100644
--- a/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
+++ b/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
@@ -67,10 +67,24 @@ patternProperties:
       "#phy-cells":
         const: 0
 
+      phys:
+        description:
+          PHYs on the signal path between the lane and the connector, such as a
+          signal retimer. A retimer can be modeled with a PHY device per
+          channel / direction.
+
+      phy-names:
+        description:
+          Optional names for the entries of "phys", for example to tell the
+          channels of a retimer apart.
+
     required:
       - reg
       - "#phy-cells"
 
+    dependencies:
+      phy-names: [ phys ]
+
     additionalProperties: false
 
 required:
@@ -111,6 +125,8 @@ examples:
         phy@0 {
           reg = <0>;
           #phy-cells = <0>;
+          phys = <&retimer 0>, <&retimer 1>;
+          phy-names = "tx", "rx";
         };
 
         phy@1 {
@@ -149,3 +165,14 @@ examples:
         };
       };
     };
+
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      retimer: retimer@18 {
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
