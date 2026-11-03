Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E82BD606A331
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 07:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bJrEPEoL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=2HOGtGCyze3T+0GyzY2xZTopHEQR1Ogc2wBndVSfG4w=; b=bJrEPEoLp3I1TECZdaRoto8mlc
	Pze+Fr0L798nGKjv/fy8ztgGuqFcKKA6inMQvtBsFmqRUT/n3Vd2uho+Ycsy178jPQHgma3vD4Vsp
	y+YAP7gn8rkNaiijgRFeV2cNB1KLsGj+PvDI0kBKBUksD+S1MqMB6cxDiEgvtCeUQL3Z9L0XJrAmi
	hnUdFLJTkxZlvGulBNN06UD8ADgbJaiW4WCY11HrHQQZApjw+jHoNcW0yqh+oRZyBi7hks9O1Zv0G
	og/KHa0CqN1tQKPHZblHfO8hl5RRMLtzu45dMYEi9vHmzMfdx0S1cm3a0jiQoop3IM65NRdeHDODY
	jAqimJqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO9Gz-00000001R6A-2j2c;
	Tue, 03 Nov 2026 07:49:37 +0000
Received: from mail-japanwestazlp170120003.outbound.protection.outlook.com ([2a01:111:f403:c406::3] helo=OS8PR02CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO9Gu-00000001R1s-0slk;
	Tue, 03 Nov 2026 07:49:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oUhWKkbEcv3a59i4Y+SCRHAgNV587KPl0ClvcF5jXIv/3BNrdUCXVVXTo+xPQR0BD6HJLpjOIor56flDplbCalhyHow2hAJG2BG+SieD2D4oIBnxjUH2usOntDkv2358ov4xQGux20LygFMm3dEOGuFvG11OeTgrYETVp61LogWx5klVUhaux2W/KiKJsVkySFExiWWx/n6Gpqkbrhd35qcvmxcljR52F6K94p3pIeKMrPIvroqQZmIM35q7bl2PQj53TYX2MpTQdcK3xhzbdYTXxFJRH7Vq5eRykeotyCUzjYJQ27I1qyUggvOAdzvgLKZWyrkfJkgkYn0ctti4EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=euR2H+kOrAuRLrNu8Mj5tzhav5en6KxWqqG7ibKT3DA=;
 b=cuVBnsLBsaIIk6pXI+GYCd7QuzAfyWeFurY6TSWZ0qF2wC2lTfHJSAJ5P/D/7tI7hnoS/7oWhq7RksIIr/ghfUdJDcb14mXcz3hQd6lPHmATIZlC2goygc/4oTQiXB6z/NVOeLQDtXV2BVso8tyczCFzxDId/Ky/2ZVz5QHv90arJjma9GHEYWct95EoSBAVN7Bqb0fpiYyrtvSGrt/0GFJeGFm8s0MmDtPQ17xf38ftei7f1udEg+64YEn9eg/tJutkaWIScX+JT5fkCv5r5Aq0JrEwZeC3hz9VQ5zIsURytrQqTpjRl8OENwmtOsb/5U/G82cRksr86JBUzXj/cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cixtech.com; dmarc=pass action=none header.from=cixtech.com;
 dkim=pass header.d=cixtech.com; arc=none
Received: from PSAPR06MB4439.apcprd06.prod.outlook.com (2603:1096:301:80::7)
 by SI3PR06MB8753.apcprd06.prod.outlook.com (2603:1096:4:2a5::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.592.8; Tue, 3 Nov 2026
 07:49:25 +0000
Received: from PSAPR06MB4439.apcprd06.prod.outlook.com
 ([fe80::c772:e1f:2c48:f9ac]) by PSAPR06MB4439.apcprd06.prod.outlook.com
 ([fe80::c772:e1f:2c48:f9ac%3]) with mapi id 15.21.0592.007; Tue, 3 Nov 2026
 07:49:24 +0000
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
Subject: [PATCH v5 3/3] arm64: dts: cix: Add USB3 PHY nodes for Sky1
Thread-Topic: [PATCH v5 3/3] arm64: dts: cix: Add USB3 PHY nodes for Sky1
Thread-Index: AQHda2fY2kTh5bnrokaSWOj4MPzCqQ==
Date: Tue, 3 Nov 2026 07:49:24 +0000
Message-ID: <20261103074913.1971025-4-hongliang.yang@cixtech.com>
References: <20261103074913.1971025-1-hongliang.yang@cixtech.com>
In-Reply-To: <20261103074913.1971025-1-hongliang.yang@cixtech.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cixtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PSAPR06MB4439:EE_|SI3PR06MB8753:EE_
x-ms-office365-filtering-correlation-id: cebd3565-0adc-4f53-855b-08df397efab7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|23010399003|7416014|376014|38070700021|56012099006|261009223027099003|261028144727099003|261022075727099003|261022105027099003|261026140227099003|261021121427099003|10067099003|22082099003|18002099003|261102123227099003|3023799007;
x-microsoft-antispam-message-info: rVt2msMe1k2GTm2++S0o+kp4wQm6eWdsT/4wjsCoW76fgzzAHDzBu87e76bHbTnThXRiW/M/QzILEdZsGyoBsTAgFvItBGYkivz+vLgjhdGvlcj8n6kS+PI8Eysy7elWrufA7nb6T6svb1zxLylgaQkf57pHqWJ3tw/EcW9p8wnZeXNROsSl2EpM9djr+D8Z+YIKEP18KkH0aBHNRtPTQ1q50O0ncG0zze515VXT6XJ45OU5YbgImDRCfKpI0uT7VOjBv952Da8CapadE6WLDgFWI3806n/lMbJlKquicjg8w9sIGVbk8evi/Iw17OFweXtAQ6UnBiioaRMx28ht2bO5bfatee8t5Mu5qmyNBhtl0WcfBkZkqF8C/K2L7F6TY3vufjmfJuIbzmPs6aUHxSkchq8oNC3nDmyCADgNO6nvxoroeC7407XB6RNh5t1Ohvj1Vu7P5R9QG88gLaPeyzpPaOw70k5n64oWDV5ag02su507wLDT6+t9o8zsShc61LcES81KkQWaezDSpT386wIqsJrTZrq1IZ9xBGkj7k17mPk1HGbNn/4uZbzOUcIntFWzPFRr+xciG+k5p29uNeh6N7jdYfupMwuiArVSFJbpApO4VOAhWZ7To3ETqhFV5oBVO5vyInNcVXynpJZ7hX3R6WaUJEEnkiKKpyKWKhZvUga6pCERGeIi4RnCPj+o01KXYj8iFLs9Tf/C43Fp3A==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PSAPR06MB4439.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(23010399003)(7416014)(376014)(38070700021)(56012099006)(261009223027099003)(261028144727099003)(261022075727099003)(261022105027099003)(261026140227099003)(261021121427099003)(10067099003)(22082099003)(18002099003)(261102123227099003)(3023799007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NldkbGo1TWtHY253b3lKRWZXUy81LzBWbThUR2dtVXIrOEhCV1NYUVpDOUJi?=
 =?utf-8?B?S0t2U2VaWSttK3pNdmhGbTVUYm1HTjBickpFMzZDSWVjZkM3TmNibDlTVlQ2?=
 =?utf-8?B?MEQwWGY4N25aQjJML2Z4SDFCaE1BWWROZVRrcUpJcTlNVVVreEhsUWxBQ0M5?=
 =?utf-8?B?SXNpSzZnQWRWMUx3QnI3bHZSaWRDdWpxeHVQb2NQZ3JqdEFyQytZUEJKWEFW?=
 =?utf-8?B?aXI5TTUxaHZsMkV6b0QxTXBGeXYzc3lNVnh4QzMzd2JzYVJFNjkwTGFnUGNv?=
 =?utf-8?B?ZVZlTkVzbVVDUHVjdGRBekM0WHhENm1mVUJDN0svQTRIaGY5VVJIOXJXQW1M?=
 =?utf-8?B?T2VLampZV0hiSXlUcm9velYvZ293VHdqb3Uwbm1XMGRIcFVRZHpGK3ZsNUJD?=
 =?utf-8?B?U0srLzVEenJlL0d6OHNmZE9vdTVDamxnZDJteDB0cElWQXgzeU9ieXJwQm55?=
 =?utf-8?B?ZWNOUE0rV1RhYUhCdVNMS3VDWWFFTnJBT1lXZkZxN2VGZXJxZExtdWdJbXll?=
 =?utf-8?B?NC9jcmVhR3FwcE92ZVVKV3dGZGF5QnZZWmVYVnBjQklvbUVSa3NDdzBjcUJ0?=
 =?utf-8?B?Y0VmaU5aZFdTTit0WVVxckpIZGIxM3FISHpicmFTN2xWWTNnM2QrOGhVOVBO?=
 =?utf-8?B?eGxGOVhSU3l0NHJGYmlnditPZ29vT0Nqd1BUU1Y3LzJMWmE4WjBMakc3TXA1?=
 =?utf-8?B?K0ZYejJUbnZrVlMrMy9jYUQ5WjYwbFBzbE1XaG80NmZzdU5FSmR2VTlnVzVE?=
 =?utf-8?B?NjlOUmJsdmZwc1lnblJGdXlBU245SlM3R0piSHVFSHFZSFNpRjI2VXFMZGhk?=
 =?utf-8?B?QmxnUXVzSTNIT2M0WFE1TTFnU2F1QXlsVU9MSFkzdnd0bnRPVlZoVFF0cVRX?=
 =?utf-8?B?ajBBQzlLa2ptZ0RjeUhmUGRnSXcwanpITzlQUGNDZktnSll1UUR1alJVMEdB?=
 =?utf-8?B?YU9ScXlIVUxTVzdYWjhlOHdYekNXMTJNUkUvODRFV0hxenlqOHdOV1pxK0NG?=
 =?utf-8?B?MUVBYnk3UGF3ZVErOEFnaWdGVlQyYTBrMzZpdUxUczUwNi8wbU12MVJqaDhH?=
 =?utf-8?B?WW1RN2F1VXZnWWtncitRZ0twdmdyUVRJM1lwS2JXMGFRT0NLT0luaDBtbW1Z?=
 =?utf-8?B?Sk1OcWFtTG9WbTU0bDFPT09pNTRzV2k1aUYybTVSeWYrUS94eEhLM0Q1MmtI?=
 =?utf-8?B?NThzK2JhSHhJSllKZGVsT2hCOTl0WjF6WTBSMytQeFVVbGo4aGdLUEpDMmZH?=
 =?utf-8?B?VDRXeVF0RW5TNE5vVXRjTk1TYnNEZ0FmbXJFcGdCbnRYY29xVXVzK3lWYkhy?=
 =?utf-8?B?akVZK3hhakhKTDlpY0RHZ0FqOHQyZDl2bjRzTDhvS2w3T3JJNjRKVFpKLzIv?=
 =?utf-8?B?Vk50VDkrR1hFRXE2dXBUUHBJTGhmVnlQY0JRUTRuclJ5WCsyaTlEeVhtblg4?=
 =?utf-8?B?UDN4RUp5NXZjbmlVWmg1MmlBQ0pHNGViTkNQMG51WjIyUTdxZW1zbnZsNzd4?=
 =?utf-8?B?SGpwa3lyeUs4dS9jczFqOGZaYTlxTW1rN3ozM3M1Rm5vdzZMMzhRL2k5QTZJ?=
 =?utf-8?B?L1hjd0U1Ny9oRElkUnBZNC91VzBQN1NWSEUwTzVHL2c0em5ZMnorRzJDcnk1?=
 =?utf-8?B?QUtLZUxWNCtsdjRwZm9sWU9rZnpTaHNRU1J1R0JIYXZ3cmJLUTQ5THBwUjNW?=
 =?utf-8?B?REluSFYwZVJyU0xNWkRDVVVUMDVHMnpFaDNwdEpoNnVqSVhyZ0FaOEM5azZt?=
 =?utf-8?B?UW1uSmREZ2NrcUVsNkdGc3hONmZFYVlocU5jMFZrK3g0NWF3TUVtRi9EMkNt?=
 =?utf-8?B?ZlRBSExpd2xnK3p5YjNxaTR6QXU5TVVmYnVVekxyNFFpMGtKMkJWSmFvS1Uv?=
 =?utf-8?B?b0pDWXR3YlpvckpybjVrLzAzWERoVVBQQU5rQ0U2Wmk5NkdPYTh2YjBQNXJO?=
 =?utf-8?B?OVV6M0tvVEN0Y0xPMEpNWU9tcHhFNitFS2cxQUMzNVZBbmRCa3h0NzFMN1Nx?=
 =?utf-8?B?dW5tZ2JtT0NOYURLTXJQT3lmT3NZaDZIMlZ3NlhsQmxWU1Vmdk5jY09lbUZN?=
 =?utf-8?B?emthblJMZ3VNZExSYkdlb3JZM3ZjRXllWTdWNUJJbWtFSVFBMFNEbTVRMll4?=
 =?utf-8?B?V3c2bU85a3M3QWcxNjZPQkE2UHBrQUQvbHhNUWFWYkZMcHUxaW9ldEVNSW1U?=
 =?utf-8?B?STB1RTk2UUh0QVIwTzZ5K1RBRTR2MThoZE9vS21jU05pc0tQYXR1VXZlWjRx?=
 =?utf-8?B?N0xZMEZadkZVU0htVWxXVGw2WEsyYWpUWXBLcUswa0hVd25hUFpHK0xXSE50?=
 =?utf-8?B?bU5mRzNNWXdJL1R2YUhydUxQNlNLNUFLbFUyZzhlb3NrRkxONzQyM29nSWhU?=
 =?utf-8?Q?LvjTS/IDEDeCfOZs=3D?=
Content-ID: <5032A639E4383740BF617D1E93213984@apcprd06.prod.outlook.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PSAPR06MB4439.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cebd3565-0adc-4f53-855b-08df397efab7
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2026 07:49:24.4855
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KIuVD91PD3pXC6gnYryit1FG9RhExL+z1sJSeiPelGiIm0q0PRxWAqwMN4vrkkuSyHpCq3GlAnUcIQmnsbP970ar+P4zXG/snY14/Ct9SIk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI3PR06MB8753
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_234932_787943_4BC69806 
X-CRM114-Status: GOOD (  10.76  )
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add the USB3 PHY node for the CIX Sky1 SoC and enable both PHY ports
on the Radxa Orion O6 board.

Signed-off-by: Hongliang Yang <hongliang.yang@cixtech.com>
---
v4 -> v5:
- Fixed the #size-cells property order in the PHY node.
- Removed the unused phy.h include.
- Dropped the redundant status properties of the PHY port nodes and
  the corresponding board overrides.
 arch/arm64/boot/dts/cix/sky1-orion-o6.dts |  4 ++++
 arch/arm64/boot/dts/cix/sky1.dtsi         | 25 +++++++++++++++++++++++
 2 files changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/cix/sky1-orion-o6.dts b/arch/arm64/boot/dts/cix/sky1-orion-o6.dts
index e39c87774c12..5d57dd9ea299 100644
--- a/arch/arm64/boot/dts/cix/sky1-orion-o6.dts
+++ b/arch/arm64/boot/dts/cix/sky1-orion-o6.dts
@@ -117,3 +117,7 @@ &s5_gpio2 {
 &uart2 {
 	status = "okay";
 };
+
+&usb3_phy4 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/cix/sky1.dtsi b/arch/arm64/boot/dts/cix/sky1.dtsi
index 0a820f45feb9..06a311ee14ef 100644
--- a/arch/arm64/boot/dts/cix/sky1.dtsi
+++ b/arch/arm64/boot/dts/cix/sky1.dtsi
@@ -606,6 +606,31 @@ mbox_ap2sfh: mailbox@80a0000 {
 			cix,mbox-dir = "tx";
 		};
 
+		usb3_phy4: usb-phy@9210000 {
+			compatible = "cix,sky1-usb3-phy";
+			reg = <0x00 0x09210000 0x00 0x40000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			clocks = <&scmi_clk CLK_TREE_USB3A_PHY3_GATE>,
+				<&scmi_clk CLK_TREE_USB3A_PHY_x2_REF>;
+			clock-names = "apb", "ref";
+			resets = <&s5_syscon SKY1_USBPHY_SS_RST_N>,
+				<&s5_syscon SKY1_USBPHY_SS_PST_N>;
+			reset-names = "core", "apb";
+
+			status = "disabled";
+
+			usb3_phy4_0: usb-port@0 {
+				reg = <0>;
+				#phy-cells = <0>;
+			};
+
+			usb3_phy4_1: usb-port@1 {
+				reg = <1>;
+				#phy-cells = <0>;
+			};
+		};
+
 		pcie_x8_rc: pcie@a010000 {
 			compatible = "cix,sky1-pcie-host";
 			reg = <0x00 0x0a010000 0x00 0x10000>,
-- 
2.54.0
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
