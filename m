Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F768606D802
	for <linux-phy@archiver.kernel.org>; Thu,  5 Nov 2026 01:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wK8JCKQG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=3vkBp+qfDyUfsI/qk+MeAVpjk29xKvok7TIHt31ycwI=; b=wK8JCKQGykWAkXB6Bgb/51IbO+
	+hU59n6EGZ06Efw3xE4Mb90JiAoq4AguyibfVEtnUMjtUprUKCVlxvY0UTwM0hdEXlBZCYA59qRu8
	0v+kPQ4O6IN55iQE2hp50qCnCQyKCyNPwNoCNSQedE5DLp9SGlO7fq/FNhJU7AnnMbDpB/9bl8gb3
	MCkqlLkRwHWum237iTOqXis0G70WBVRTqf8Xn9M9gOEOyHVzxEC19R+qUlQ1SrefiLjvDyZSbpnxH
	uXfsubz/klotphhoEo16uUNTbojfREg4+L4XWK55VD8cHdQGn7oDEL0Jz6pZDsrGaXWyL7MNil0jR
	lm93PT6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOm7Z-00000007Rtb-3Yu9;
	Thu, 05 Nov 2026 01:18:29 +0000
Received: from mail-japaneastazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c405::7] helo=TYDPR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOm7T-00000007RqI-161Y;
	Thu, 05 Nov 2026 01:18:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bAAXcd3mhWdUqGxuqGOaNnmGbT0Eb5TwFrR1NHrlCuXfYTqp5Iu1WlMFJidBfKrF2FcGLCECJroTTxIZfTrrYsKm+CFX2Ve3JQE3TN0jGHByC85SX46Fe7kB/EK3aNdqbrJw/mKXBkci9qU9ZOhS7/RYhSF0ru3O/WqPKCuquNoenM6L4L7S1FCMmIYXwCOWQZP4GXfj49VhKvNy3kTKYn1IY8pf5fyBaRx3Yf5+0fpHZJ4VjbugZj5JeklbBmc8k8dk+KUkepLspmA9xQxtpsKIVvD1tE6NV+qjUv9j2rXABNQXyZMu0i/Kgg65Kd86jCTvpjZM7qrYfI4ejM0tAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qkqlTjihXf/e22k/dpShJLtr2mLQpi/eANZ+msrqkSE=;
 b=a0l28/OO+71XR3sXTZh3uXF6pMddf5Qq7WODJbWplLg05yQs7ulItODRwavhbbCBtpNW0Ozgh23CmGtDcHfYDw5dLHHNaFLpI14mQyAFenYhNBluXwSbfFHlxZm/p2mrECwk54XvTG87xxIH/rCBwjz8STbnrrVt7Lqg0TQut5zCdUYpMohfwZkb7ZITBfrKSvAthHneLR8ToxODNAIzVzcN6a1XLZWXWW7NVk/MkPhkBMcpvz89ITEJHqJZuf+rdAtVJ1v4bdfV7GGMfDij2yQd2x/pqw3GRCVahZS8C7je93E6inbK68A23DgKkk1cgwCgE14cyvqmFjbYfZvk9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cixtech.com; dmarc=pass action=none header.from=cixtech.com;
 dkim=pass header.d=cixtech.com; arc=none
Received: from PSAPR06MB4439.apcprd06.prod.outlook.com (2603:1096:301:80::7)
 by TYSPR06MB6921.apcprd06.prod.outlook.com (2603:1096:400:468::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.592.8; Thu, 5 Nov 2026
 01:17:59 +0000
Received: from PSAPR06MB4439.apcprd06.prod.outlook.com
 ([fe80::c772:e1f:2c48:f9ac]) by PSAPR06MB4439.apcprd06.prod.outlook.com
 ([fe80::c772:e1f:2c48:f9ac%3]) with mapi id 15.21.0592.007; Thu, 5 Nov 2026
 01:17:59 +0000
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
Subject: [PATCH v6 1/3] dt-bindings: phy: Add CIX Sky1 USB3 PHY
Thread-Topic: [PATCH v6 1/3] dt-bindings: phy: Add CIX Sky1 USB3 PHY
Thread-Index: AQHdbMN+lCsfGNUR+kSEZ14HaRPuNg==
Date: Thu, 5 Nov 2026 01:17:59 +0000
Message-ID: <20261105011751.4058411-2-hongliang.yang@cixtech.com>
References: <20261105011751.4058411-1-hongliang.yang@cixtech.com>
In-Reply-To: <20261105011751.4058411-1-hongliang.yang@cixtech.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cixtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PSAPR06MB4439:EE_|TYSPR06MB6921:EE_
x-ms-office365-filtering-correlation-id: 6ea715a1-8507-4570-02f5-08df3adaa134
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|23010399003|366016|3023799007|6133799003|10067099003|18002099003|261102123227099003|22082099003|56012099006|38070700021|261021121427099003|261026121527099003|261026140227099003|261009223027099003|261028144727099003|261022105027099003;
x-microsoft-antispam-message-info: czvueykrUXGB8NMk+XMz1x4gFiSvYXml1kKKP0M3JCC4FOR90+XnYzn+WVdJwrgo8CfuHsJavKdO3TBi2kuxnLuAF/7fPf3PHTYU3vbtSJUgXzUPlhLkdXp3i0P5dEKEOS4ywofzGN28KxP86tlM6tlq17ggzzPham6BPeTpINqHC97QKzxYDEEdTp/czEVt3uWBVIvUQe2wyOKZMSsl+ESFwVT++LlCdIsNnF5jVO6ex3V4yHKkE+PdK8iah+1E2NJaZtd9HNur5a9L/AsyA0uuLofQRUKqT2WvOn0hc42wjSJ4wTLgNRBwwIyTClcfxwWXQ/NhgxGelalBYYjdp8hiocJU0R4fQfhS5xCvM2v4lL9VyxBnUm1GsioX3eg9M7em7Mg93fj5pvBq/pHavu1+JSxbHMGu6N9tJczdgwjiKys6NcPyGCStv234FFfU7SEb5Df2PZXEeI4JWzQYEk2hU6gW7BxORBDQtbD6LfUF0uPidu1GTvjJ/s3CHHQt5lZgxCZaHpw0Gax4c9lKonVCtfQ4v0vSnKUPsoWndO4aBZ2/AUoXeHUJbQ4sdmdgQmiIlN/WrcllB0m9fuu6Sfi0h5nzHz9JmzADqtw89McRSuaYvQXFHy17YVxlw8XYF/saRSJRF7t+grs7xl1fyR/Br+SNfMUZ1ozBjtATt2s=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PSAPR06MB4439.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(23010399003)(366016)(3023799007)(6133799003)(10067099003)(18002099003)(261102123227099003)(22082099003)(56012099006)(38070700021)(261021121427099003)(261026121527099003)(261026140227099003)(261009223027099003)(261028144727099003)(261022105027099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dXJlNEs3MXlFUERvclFHS1loY2RNaDExM0xMSDBxVCszQzQ2NW83azFEVzRT?=
 =?utf-8?B?YjJtaW1UQ0R5M3V1SVpVNmVGTFBwdHErTG1ZdVpEeThadjNUazZ2cm53dDRL?=
 =?utf-8?B?aHpGWUVtdzNmRHRkbDFubktaNWczeVMyVUJMVTFyNDhRcFBQdkdxL1hackFy?=
 =?utf-8?B?Vlhtb2hrN2NFUjRvbGtlamxVSy9TS0doVXBuWHZvNlRjUEhzZlhHT1JwUjND?=
 =?utf-8?B?K0tZWVhFQjJrekt2RVU1UGtlYnlhZWVRWklIOTdtR29qdFd3WUFDQ3IxSVlF?=
 =?utf-8?B?N1RDUE82c1dqN3YyUTN3UlR0RFg3c21uSFVBT0MyQ3c3VWxCTlNEbytFNEps?=
 =?utf-8?B?OWxJTXdET2FWWnVnMitLNTF5SnhKeXQ1NVVSaUk1TW83RjBrSXNNNHBtVFhw?=
 =?utf-8?B?Y2lFUjNzS1dLOHgyd0hVencrWklHbWdkTElVUWpkWkJzTEJWMW82ZFBJVDdL?=
 =?utf-8?B?eitkSHlyT2FBZy8vZjBCc0JpcDJrZ25RU3pBcEtqYm1jK05WZmFFYUg1OEZ2?=
 =?utf-8?B?ZjJXM2dHNDNXMTg5Y2FIeWhLdXFZaXNkSEdNcHc0aUJEbU41cHdtN3hrbmYr?=
 =?utf-8?B?UnBLRVh0dWUwWkRmcVFFWXhQT3BlbHdhWkdMR3FkNzd0SE1scDZnaEQ2QW94?=
 =?utf-8?B?YjFFVGQ4eVNkaFoycW9iZDVDUHBXT0dRRHVFNmlJSmlKRTF5QlYrYVptYUUy?=
 =?utf-8?B?VDkzTFdlSnV6emRBNE5DcGMwMHJmemRUZ3V2WkdnWjlma0czVlRadm1HbUZ3?=
 =?utf-8?B?c3JTVWU3UU4zM3VzSUhNZTZhYk1IUW5PTU04S1ViYzQrSWdITzJNdDVSMWc1?=
 =?utf-8?B?ajhkdU5LT1NjaElsZVBha2ZrZnEzL2FyMVdPa3hMSDlTTnhkWGRGb1dFT1Mv?=
 =?utf-8?B?MFhoM3ZxNlBXOUc5SEFwaTNLVlAwVnBJNWhiWXlhSjFvWVJCUllSTWVYV05u?=
 =?utf-8?B?aFJYS3RyT2NRWURaeGxoVzl5SkUrTXpkWjNtUnVTY0NiK2IzdWE4SXhoSUpq?=
 =?utf-8?B?RE5idXd4eEVTeGdrNjZ3b21uR1JDMWkvZGRzYkR5eU01SW8xMVlEekxIclIv?=
 =?utf-8?B?NkV6OG9jVi8vc1VkengwcDB2cWYvWU9KSi9vTGxocmZ3SzVRYmc5d3VseFk5?=
 =?utf-8?B?a2dka0ZqYkdWdFpZeTZkSkt2MEVhSTR1Q0IxcFU3MTRmYUhBUExZd04zejZl?=
 =?utf-8?B?aGJZYStTWktlTFNoc0NKbW45RmZsOHR1Tmg4dTVmdk94UnpXbXlvK2YxVFVI?=
 =?utf-8?B?cWtRUjdabDM2S045ODlyR3VoMlpOemNBUng1bE9jZlZNaFZDRmdaRHAzeE5a?=
 =?utf-8?B?Wk1EaDRNd2dvcndyeVdvak8wUXdOQ3g1ckFWZTFLZ1RMajJnbkRNUzBOYjI1?=
 =?utf-8?B?WmNoY2pCWnMzY1ZHbVhubVRhdll1OUp5SkVOSnhIdHBMdmdWeUhsNzZOaWJB?=
 =?utf-8?B?enVDdmYwamVSajdqSS84NnVRU0VOZENMVnVnSFMyajJ3NkdRMnliWXlvZHVp?=
 =?utf-8?B?amZ5SDEvNEp4cmtIamJ5YTNvMHlWME5ob1htdVBVSGZ3bmxJT3o5cjBKeGlx?=
 =?utf-8?B?L3NWNGNBYnZvK2tNKzgxanBGaFZUek1zbGlXbzJwWTVwemVkVkdPWkI5T3Nz?=
 =?utf-8?B?aHM4S293L3JYK1R2T04xaTg1VUE4RjBiQm1CYnBUWEswNGpSNFN4RDdXU2dm?=
 =?utf-8?B?ZjdvTlkzUCtDN1NNcEFlZXBqdDlTNjVDNFhGU1RXWWJpS0tuNk15dGk2Q1pV?=
 =?utf-8?B?SnBFWW9zalhFSlJTdVRJYjgzbEk5K0grU1pDSWlVZXhSamlTVHc2WENuWHAr?=
 =?utf-8?B?aEhhcTQyZHZadE9RYTBQdjcxemtlNXA4UU1XaXFNdE1SS3Z1SzdwNTdldXFX?=
 =?utf-8?B?VlB1UG5sR0I1MzBvaUNGZ0hLNThzazFmeHVTdDNJWnZ5NHhVbmtla29leHRB?=
 =?utf-8?B?SjdEb3hhdDBKbDdBeWh4ZUFOaFdIMmczbGYydVkwczFIOENsQ2tSTmVINWo4?=
 =?utf-8?B?VmNJQTdqNEpqdmZnbTFNdC96cVN2a1Q2QTM0bm1BTVZpWENiYjNweTZJSGc5?=
 =?utf-8?B?L3ExRk5oSWV3S0U5M3pQdjM4NUc0M2M0VkNYSXdPRWdNZHZoc0xwSThreGZS?=
 =?utf-8?B?M1VNSGFFanFtRXpYckR1QTdjdlBpbEtOd281MG1LOFo4NWpUcitkRGdnaytj?=
 =?utf-8?B?SnRHeHRzaXppV2lURGt3YlBzZXBjcXJSSFZ6Wk5kd3FGY2RJaUhrUERtNUlw?=
 =?utf-8?B?bndaTzFBbWlCTXR3QlRlSGJOZTh4cGxZZkdabHhEWHdjNGtwUEk4c3lRblBq?=
 =?utf-8?B?ZHppZmlaaHZBeGxWY0VXWWFRN2NuOFBNQkZqcUl0bURlaDFmK3MyZ2hoL0Ft?=
 =?utf-8?Q?E0yvJaE6X1uzEwKM=3D?=
Content-ID: <7FD2F1B720632940A9B581E086191B84@apcprd06.prod.outlook.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PSAPR06MB4439.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ea715a1-8507-4570-02f5-08df3adaa134
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2026 01:17:59.1654
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fxKARU/Y9ywEcKMv7WGxw81anh8kpJYhUOD98BHF8E5KTeiQSjadLESEtiS02RYM3EgN3kH1XSjs4S/gNHO8u6MuTNzaxqRK5zNvc6IjysY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYSPR06MB6921
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_171823_334959_85064745 
X-CRM114-Status: GOOD (  14.74  )
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
SuperSpeedPlus PHY supporting up to two USB3 lanes. The PHY block
drives both lanes and all consumers share the same initialization
sequence, so the PHY provider node itself is referenced with a
single #phy-cells = <0> specifier.

Signed-off-by: Hongliang Yang <hongliang.yang@cixtech.com>
---
Changes in v6:
- Drop the per-port child nodes. The parent node is the PHY provider
  with #phy-cells = <0>, as the block drives both lanes and the ports
  share the initialization sequence.
---
 .../bindings/phy/cix,sky1-usb3-phy.yaml       | 73 +++++++++++++++++++
 MAINTAINERS                                   |  2 +
 2 files changed, 75 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/cix,sky1-usb3-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/cix,sky1-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/cix,sky1-usb3-phy.yaml
new file mode 100644
index 000000000000..dc471b387339
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/cix,sky1-usb3-phy.yaml
@@ -0,0 +1,73 @@
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
+  supports up to two USB3 lanes. The block drives both lanes and all
+  consumers share the same initialization sequence.
+
+properties:
+  compatible:
+    const: cix,sky1-usb3-phy
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
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
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
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
+        #phy-cells = <0>;
+        clocks = <&scmi_clk CLK_TREE_USB3A_PHY3_GATE>,
+                 <&scmi_clk CLK_TREE_USB3A_PHY_x2_REF>;
+        clock-names = "apb", "ref";
+        resets = <&s5_syscon SKY1_USBPHY_SS_RST_N>,
+                 <&s5_syscon SKY1_USBPHY_SS_PST_N>;
+        reset-names = "core", "apb";
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
