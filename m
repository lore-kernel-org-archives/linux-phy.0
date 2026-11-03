Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B508606A335
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 07:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=mwgqrvFm
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ShADU1/RCtbBfgePOsVuTVIo0s73gO/3we7f6yebW5k=; b=mwgqrvFmMcOOPO7Rjtl7EsgLkZ
	Dpq34W+yNs3tFe97GwdNtkwsTbtN6Nzoe9/18WQu/rqZU24jaRE0xaFanpD89XUkzddBbFKWlhdYV
	xZKzgtBzfFd7J3pRL3Yg9l3inRkEpJB4G3L50HDal693BdF25uNZMdgxao6imvgU8kPKjr4N9Ckrl
	x42OsbTfmswYhPY5BZkNKeHudnRoUWq7X2WFXxqI0qMSU/VdDMJJ8jODPzgSAwiU6PtHsC3iLhkGY
	YIg11PwIyPuNAKeA1bWV8oFVP40sqq9oJkBnpQCCRAzd+1RnoR4GtnsQjZdqMwC46zVmjGEXgghkJ
	wVCca96Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO9Gu-00000001R20-08GK;
	Tue, 03 Nov 2026 07:49:32 +0000
Received: from mail-japaneastazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c405::5] helo=TYPPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO9Gp-00000001R0z-1aDW;
	Tue, 03 Nov 2026 07:49:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KYcTivij9n2Xquh1XnLb5AzyW5h0ItqIneIRlR0yE7MaHuaOW42LEKmjdZ9k/Fi8t9cXMyZauMuY1zcHTH2WSHjacE1gsbgSV0whVuFFtVJ/38WPeru4NI6qNcl/LXkbA0e62IDo6c9ztS581knzhZj9qpuKy/VwZZVWraztfGAwwJERAuDtI7gbCtYMqNY76Ro3F0z1KTD5i2LMzc3BdWEP06VtXljzHT72uWaEXtGQeZDrPuWoaRKqNgTS+FNaGeRz/7MlJyIdIbKuL081wBcOL5IhmeAwe4CZ/351ry8z2Ifzm28SC5Af9ej/XXlnlbz/TW0ff45bcnGWKene2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0E2Ohx2G5VmfYwMHqm7Hfqq8NfH2LC1irryr5yrxACE=;
 b=XjqLlaUbQsV2iAlkEyFC2N7KN/xyoXUjH2dWMUzzWvgCzDrKQCw7qRni2rQGnYBGsHEqiDaM6PVgBalRsrRoJ8TRTLtKFpid/K11cedYABBoTbtlFYCl7u10u8U0foXMDuxxFTSsoUlhSl4lZ5MEIxTg8ucTt0HnYRE6ygn9CbV1gZvERRt54tPWiC1t7d+wrKQlLCryd8K4waRW0eq8xGTO1fNVfJ+V0mlr9ppKnEaJuyo/b5QeR1/0S6V5VK4NT8l1vtOp/bwlNgbC7Tmcyamij63+6IsaAjjJPpIPTJOh6BC9QVxrcCp2DpNj+yFp0bziI237gqouEzIMBhsRXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cixtech.com; dmarc=pass action=none header.from=cixtech.com;
 dkim=pass header.d=cixtech.com; arc=none
Received: from PSAPR06MB4439.apcprd06.prod.outlook.com (2603:1096:301:80::7)
 by KL1PR06MB6396.apcprd06.prod.outlook.com (2603:1096:820:e1::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.592.8; Tue, 3 Nov 2026
 07:49:21 +0000
Received: from PSAPR06MB4439.apcprd06.prod.outlook.com
 ([fe80::c772:e1f:2c48:f9ac]) by PSAPR06MB4439.apcprd06.prod.outlook.com
 ([fe80::c772:e1f:2c48:f9ac%3]) with mapi id 15.21.0592.007; Tue, 3 Nov 2026
 07:49:20 +0000
From: =?utf-8?B?SG9uZ2xpYW5nIFlhbmcgKOadqOWuj+S6rik=?=
	<hongliang.yang@cixtech.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	=?utf-8?B?R2FyeSBZYW5nICjmnajmlrDkvJ8p?= <Gary.Yang@cixtech.com>,
	=?utf-8?B?RnVnYW5nIER1YW4gKOauteWvjOWImik=?= <fugang.duan@cixtech.com>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, cix-kernel-upstream
	<cix-kernel-upstream@cixtech.com>,
	=?utf-8?B?SG9uZ2xpYW5nIFlhbmcgKOadqOWuj+S6rik=?= <hongliang.yang@cixtech.com>
Subject: [PATCH v5 1/3] dt-bindings: phy: Add CIX Sky1 USB3 PHY
Thread-Topic: [PATCH v5 1/3] dt-bindings: phy: Add CIX Sky1 USB3 PHY
Thread-Index: AQHda2fVjAFAnVdLW0KPatOpefM98g==
Date: Tue, 3 Nov 2026 07:49:20 +0000
Message-ID: <20261103074913.1971025-2-hongliang.yang@cixtech.com>
References: <20261103074913.1971025-1-hongliang.yang@cixtech.com>
In-Reply-To: <20261103074913.1971025-1-hongliang.yang@cixtech.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cixtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PSAPR06MB4439:EE_|KL1PR06MB6396:EE_
x-ms-office365-filtering-correlation-id: 620c2a22-ae66-472a-49ae-08df397ef816
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|23010399003|1800799024|7416014|376014|38070700021|56012099006|261009223027099003|261028144727099003|261026121527099003|261021121427099003|261026140227099003|261022105027099003|10067099003|18002099003|22082099003|261102123227099003|3023799007;
x-microsoft-antispam-message-info: yd0yloTCcDDosRr4L0wh0AxOyc8VLgwePb3kiEvW6O0exp16uaWAcmMNISP3vWUVSofFTYdfCKAL3cAucLCphsDnppM/DbD/axadwagoDxGwLQIn71uRxuFmX5g1d3+cAuiDN7oByR2wqgNca4fES7qqt15yIsggw8jNdZd9NROjppgKjIaSLH8ebinVhZekoixWqW/ZFjVzdfSv7+WY1hfKlZvauFOdo2yif2uFCYU5ujFmL/3u5w5jZWoou6MTcFtHLQ05vn9snmDXyLw3QK6qxEkP1GnnKfzlRcoprhmtLgmEjINEyv23Ps32wah/TbZwv1HS07zUgAjm2o3TbF2MU4vpBJFK1Hzoegg1ATVt1GxLAcoT57P4t5CqDfhpyqpy0eOIAZsHvf2IBelSBLGSHzEOrXxUfl12wt3+M+zBLd5aERBO7k7uBui9m5DeT6i2qLr+ZWBopa61M8Y5nYL9HPdTthSc82Owyn47jV07mTkqqGex+9oENYEJ14zYm1v5jSv3hDwWggSEVCsJFvzj6a5o+gKDAl+1BwYR0u5UmKfpxEiIVB0lKcdAzWdKYWaFXraW93kCzBSAETUe20/8XHc0oJmQLgKUNbaZcGMWYcnAt2JpHfbZYTQpxZUF/T6ptXIyIsSLjhRd04qljWL+Ii58Veg0tnDYafrGV+A=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PSAPR06MB4439.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(23010399003)(1800799024)(7416014)(376014)(38070700021)(56012099006)(261009223027099003)(261028144727099003)(261026121527099003)(261021121427099003)(261026140227099003)(261022105027099003)(10067099003)(18002099003)(22082099003)(261102123227099003)(3023799007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RHVlY1d3VXk0TXV2Y0NkR21hRmpwa0ZjUjM0MVN1MktMVEwyWDRQZmdXeG83?=
 =?utf-8?B?M1drYXU4YlFaSnZlajhCM0I3aWl2ckk2Vko2R1VYd05PZEFmdU16d3JjdVdR?=
 =?utf-8?B?L290WEtnNFhZU2MyOGpoOUtBNjhFRzJidnJnLytIaGVUZVVDbEdzRkNDNWhP?=
 =?utf-8?B?dE9OekV0SHZlYmV1Qmpud2VyZWxCQzBuaDNqOHRNRUVja1lVOEtoaGk2dE4y?=
 =?utf-8?B?aE5KbG5LUTlkQW1WdDNjOXU1M3V6SnRUejdzZ0hhcVo1TXk1eWtNb29meHpR?=
 =?utf-8?B?YnBCQTAyUGVXZnZQbU1iTDNBcnkrTlFQY1NyVmFkRGQrdGlVaUpEVXJiSVRW?=
 =?utf-8?B?dzloWGlqY2F4aVlDanRVSEtodjlwRE1IS3JRcG9kZ3FaQ3VVZGh4d1FmWlc5?=
 =?utf-8?B?VWtIbVRIUGNHL2dJWExiRkxsK1lBUzJReC9EZm9VS3VCc0pvNjZwNjIySmY2?=
 =?utf-8?B?VFlJQzhXaStVL3hKNlJCMndvYUUyN0gvRWlPeDBWT29OVnNFRWFnbDhzMGNw?=
 =?utf-8?B?RHVvckZWRUNTMm1USUdrbTUzaEZQVGhlY2phN01qdEZlR3NMWlZCZ3BzOTJN?=
 =?utf-8?B?QU1CMHZjaGFybkZxYU8wNG1XaFNkbjR5Nld6MzJMMnQvdmdLcWdXK1E2RTRF?=
 =?utf-8?B?bGUraUxnclZ2Y2Qwd2p1NHlITHdSZkd4NjB3aFFOa2Z1VlFJY21NTGN0WGtx?=
 =?utf-8?B?RzBpaG5DT1dseUhkc05yWDIyWnkzV3RDMExLT2pxaEtqKzFRVDFHUHNuZjQz?=
 =?utf-8?B?UTVKYUtsQ2pid25pRm12UXJxQ0RnWUVjRVpoWWNXQ0NoOEtneTJ5UkVBR3Ba?=
 =?utf-8?B?M0dZbDh3emIyVllxNkt3UWQwR1JLd2QwS2ZXMmJGcU0rOTgwYTJ3VTFKL3Vv?=
 =?utf-8?B?NmZUNEZiQ3FCQnVvVWV0MW5aU3NZeU9QWXNNa2xjQkxlREgzcERtcFZRZHRq?=
 =?utf-8?B?N2dpblFERHhaR2ErSjZidGhrK1BRYnlQZlhyUHAvYklhNjZja1Jva0daTCtk?=
 =?utf-8?B?d3NENXVDVytGekRraC8vQ1Bqbmk3U0FEZDFIbnpWa2hWMlI4RGdHQlNUYlRt?=
 =?utf-8?B?L3JwMTE5NXBkcHR5eFNVcnpGbWpsZWY1NjVCTldKQjRkR0sxTjU3ZmZFVnFi?=
 =?utf-8?B?S25penBxbmJnSkNYZ1hJamxDWTFmV1d1a0ZZMldBTTFSV1BDTlNsb3dCWUt2?=
 =?utf-8?B?OU5LNm9odjI1NnBYdWFsOWdGejRDR3owckVUWDBwMmJ1VUdyZU9JbHpGWk5Q?=
 =?utf-8?B?WWdKYmlXSTJGYlBoUG15R1pRYnhCYi92UngxWXNmMWMzcVpyRyswNllLUC9q?=
 =?utf-8?B?b3hhdjQ4RWhKT1dyUWQ5TmQyRlFlY0dNSlhtRkZ3TjNDcjhyRkp3ZStSb1Vn?=
 =?utf-8?B?eHJTOWo0b0pkTHZPRnZ2TTAzb0g0RWd0ekNMYkNmcDI3Y0Y2eEEyRUEvZm16?=
 =?utf-8?B?OGhMZlhpcEJTQXVCV1lyVGc0Y1pJYk9IQ3BXVkg3bHdreFhWNmxibnplL3pr?=
 =?utf-8?B?cFpRVGk2bk9WS1Q5c0Jta3VxNitkVVp6dDI0L3lXeERKV3FpK1lkUEVDMG1V?=
 =?utf-8?B?eHhqOFRrRGwrait5Ry83a25JTkZpTU1qQ3JqZjdwQ01ZcVNsc0ZaSXlicGdZ?=
 =?utf-8?B?OHFJSDFVa0xBVXJTMVhtN1N3N2hRdUxpR3Fncm5tSStCRjRvMVZVTm52RWdE?=
 =?utf-8?B?bEluQnY1Sm9NUFJRQU1tSWpBMXd0S3RYTW1vZSswZUtqL3NuREhSMENxQmlL?=
 =?utf-8?B?aDhXUVh2QTg2bzBLdVIrTFk1OVhiN1h1WWZDVXRlc1d2aDNYaEQrcU5GcnhW?=
 =?utf-8?B?cmZyTm44T3pCa3RJajRZWXF3YWVCdnlvS2g1dnZaQUpEdFVrcFhRWkVRTUc1?=
 =?utf-8?B?OXhjWkFLNGtRY093WDU1NzBFQ3dMMEZBNWNnMVdVellqQnlVczAzZmtyWjRu?=
 =?utf-8?B?NFRSK3ZOTGx3VWNjRUw0aGFZU0tNYWY1VkJNbHhMZDFtV3RJUlFlUGNmK0dR?=
 =?utf-8?B?b29pdkV6UHpMajRUN1ZMbnBoNWJMTlBkRG9EcTRRdmhsUCt6R0pBKzEwRENq?=
 =?utf-8?B?Vis0TW9xTmJCOEh1QWxjL05qNVZXNmVFUDFTUVQ0MnZPd2lnQ1pyeVRzTVlO?=
 =?utf-8?B?aXh3U0dZclJGR1M0OCtwOWszeGNLeUxYdWo1SjBrWW55MktxUWF2YzB4Nkl2?=
 =?utf-8?B?QlNON25GOTRZcVJsZUl4cUhZcy9DTHRlMnh4UUNOQk01YVZ5OU9iNlIwZjRh?=
 =?utf-8?B?WXBnM1hWRlN5ZXovR0VWQ0d6ejdjQ1Rremwzdmd5ZVdNeXdqMHNEeFlZVmlK?=
 =?utf-8?B?c0NUczVTbHR2VitMQVl5SXRCUDNZN3FEbEZWc2l2MzczS2ZUOG95Ym5sWHVP?=
 =?utf-8?Q?pv1JtarVPz+Ly2Fo=3D?=
Content-ID: <FDA799047D7D484A86B0C506F6E73D57@apcprd06.prod.outlook.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PSAPR06MB4439.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 620c2a22-ae66-472a-49ae-08df397ef816
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2026 07:49:20.0480
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V7uFly6604C1KcogZBs+gdMpk4aAUKD7VB2l9YPNv81R7xiKpa++4paFDjnJ1X+BNqC4BpB26cIB1xM8zOMuz2+zEHv+4/NEj5+LRmPwnlc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR06MB6396
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_234927_439771_1ABE48DE 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -1.9 (-)
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
X-Spam-Status: No, score=-18.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add device tree binding for the CIX Sky1 USB3 PHY, a multi-port
SuperSpeedPlus PHY supporting up to two USB3 lanes.

Signed-off-by: Hongliang Yang <hongliang.yang@cixtech.com>
---
v4 -> v5:
- Added the MAINTAINERS entries for the binding and the driver
  directory.
 .../bindings/phy/cix,sky1-usb3-phy.yaml       | 107 ++++++++++++++++++
 MAINTAINERS                                   |   2 +
 2 files changed, 109 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/cix,sky1-usb3-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/cix,sky1-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/cix,sky1-usb3-phy.yaml
new file mode 100644
index 000000000000..5b025a48c844
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/cix,sky1-usb3-phy.yaml
@@ -0,0 +1,107 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/cix,sky1-usb3-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: CIX Sky1 USB3 PHY
+
+maintainers:
+  - Hongliang Yang <hongliang.yang@cixtech.com>
+
+description:
+  The CIX Sky1 USB3 PHY is a multi-port SuperSpeedPlus PHY that
+  supports up to two USB3 lanes. Each port is represented as a
+  child node of the PHY controller.
+
+properties:
+  compatible:
+    const: cix,sky1-usb3-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: APB register interface clock
+      - description: PHY reference clock
+
+  clock-names:
+    items:
+      - const: apb
+      - const: ref
+
+  resets:
+    items:
+      - description: PHY reset
+      - description: PHY APB preset
+
+  reset-names:
+    items:
+      - const: core
+      - const: apb
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+patternProperties:
+  "^usb-port@[0-9a-f]+$":
+    type: object
+    description:
+      A single USB3 PHY port/lane.
+
+    properties:
+      reg:
+        maxItems: 1
+
+      "#phy-cells":
+        const: 0
+
+    required:
+      - reg
+      - "#phy-cells"
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - "#address-cells"
+  - "#size-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/cix,sky1.h>
+    #include <dt-bindings/reset/cix,sky1-s5-system-control.h>
+
+    usb-phy@9210000 {
+        compatible = "cix,sky1-usb3-phy";
+        reg = <0x9210000 0x40000>;
+        #address-cells = <1>;
+        clocks = <&scmi_clk CLK_TREE_USB3A_PHY3_GATE>,
+                 <&scmi_clk CLK_TREE_USB3A_PHY_x2_REF>;
+        clock-names = "apb", "ref";
+        resets = <&s5_syscon SKY1_USBPHY_SS_RST_N>,
+                 <&s5_syscon SKY1_USBPHY_SS_PST_N>;
+        reset-names = "core", "apb";
+        #size-cells = <0>;
+
+        usb-port@0 {
+            reg = <0>;
+            #phy-cells = <0>;
+        };
+
+        usb-port@1 {
+            reg = <1>;
+            #phy-cells = <0>;
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 93abbb315065..b857e529e5e2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2903,8 +2903,10 @@ S:	Maintained
 T:	git https://github.com/cixtech/linux-mainline.git
 F:	Documentation/devicetree/bindings/arm/cix.yaml
 F:	Documentation/devicetree/bindings/mailbox/cix,sky1-mbox.yaml
+F:	Documentation/devicetree/bindings/phy/cix,sky1-usb3-phy.yaml
 F:	arch/arm64/boot/dts/cix/
 F:	drivers/mailbox/cix-mailbox.c
+F:	drivers/phy/cix/
 K:	\bcix\b
 
 ARM/CLKDEV SUPPORT
-- 
2.54.0
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
