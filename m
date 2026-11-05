Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C22606D81E
	for <linux-phy@archiver.kernel.org>; Thu,  5 Nov 2026 01:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Mb2E3Lp5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=u2OOyHF/ELkU7Z7iFHURfJy9uhmUeE3Dlcoc+PiQ+b8=; b=Mb2E3Lp5ugHraiuAQ0cFvBqG/2
	05erpsZtrYS2zMP12fDILZc/HWHI74AZQaoXABR7yl8Q7YFiaL0Yd5LJjlzl6P+XlcuzqLLJ3pILG
	fRHeHy8DRnJmKX0SwR+kIUsGPZ0t2vjn05H/fZRfguD0m0tu0llUM34kbvE72a9RtIeWD6DttI4rq
	ENwaXEzY+h+He3A1Spa7fSf4b16HQ4YVthI1/1Dpb8DjnbGXScGLEkOOY6zXg54FT6Y3MlAelWLwy
	xxEuejmvqipLkDIvpQyuCAPRxKNQxnWItYK3QKXTfTUYF5DKbqh+NEYV1jRfbmgdvvMOCKeMJNg0W
	cGM5iZUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOm7U-00000007RrV-33Aq;
	Thu, 05 Nov 2026 01:18:24 +0000
Received: from mail-koreacentralazlp170130006.outbound.protection.outlook.com ([2a01:111:f403:c40f::6] helo=SEYPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOm7M-00000007RpZ-0vtu;
	Thu, 05 Nov 2026 01:18:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F/+W1n/FUQdmXhlYVyozXoZYVuppLshiguSBTi2Dj0fRoiGmyOPrabHPqUqiloT2gylaLER8jyyfZAZjfPuCqvhTmxuY6vsJvQPkzyjjBFI0BmKqfAzqS4zwai0CjbDs1hN/OF6ElksylgQsaRQq2k5fFsgQheFteMwNfJM6xL6ILRjiq0rFWTZV+S77kJDf84+IPhJJQo0x49K30pwHka0ilyTZIaeocRP7tJ83atom8DZ7yULh0eWqmH5Wj/G1XxmT53Vc+kdUr2hRJ1rt1XqH5QydFTT8fqnvm3bxaIG+acupA3jtyOvDIHXVvp6ZSogwD3M3bwxrsAVtbg96YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VcnbjJ7PCQI/zx2Xv/viQa9NsVNyNsIC6XML6O7LE4w=;
 b=TvXaHxkYKQpJfBEcWsK0qwmphK8Pl8QTiRY4V7VBhGQIX2pXsJAXnNKxQHtLInjznSp2IbW0fmvv5cx18sPO4yxGFNqFJaYSBIO9r11naF0JWRxlI6kF4tkKs2rx+n6v+NRLd851hzHfIrFV35+AgdRTkkh67x47TsK6lvxQaao+r88ZiJgr9LJu/TTdxxR3dRdDjULdgdr9qHR5Q1CYtlszYtYhEkZgZ9E8gEv9xtHT6DlKHAcfenRI/isWnsgN6P33ItDi6rRtkMR6wxpUdYeWyYmABbmAKiJ8uBZ975ChW9/WqU05jKZ69OwyzRyicv6VfcuUwg70HB5V/7bMeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cixtech.com; dmarc=pass action=none header.from=cixtech.com;
 dkim=pass header.d=cixtech.com; arc=none
Received: from PSAPR06MB4439.apcprd06.prod.outlook.com (2603:1096:301:80::7)
 by TYSPR06MB6921.apcprd06.prod.outlook.com (2603:1096:400:468::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.592.8; Thu, 5 Nov 2026
 01:18:02 +0000
Received: from PSAPR06MB4439.apcprd06.prod.outlook.com
 ([fe80::c772:e1f:2c48:f9ac]) by PSAPR06MB4439.apcprd06.prod.outlook.com
 ([fe80::c772:e1f:2c48:f9ac%3]) with mapi id 15.21.0592.007; Thu, 5 Nov 2026
 01:18:02 +0000
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
Subject: [PATCH v6 3/3] arm64: dts: cix: Add USB3 PHY nodes for Sky1
Thread-Topic: [PATCH v6 3/3] arm64: dts: cix: Add USB3 PHY nodes for Sky1
Thread-Index: AQHdbMOACq8ByRvfqEuXr7a7RIL6oA==
Date: Thu, 5 Nov 2026 01:18:02 +0000
Message-ID: <20261105011751.4058411-4-hongliang.yang@cixtech.com>
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
x-ms-office365-filtering-correlation-id: a54b790e-cc96-469a-d3d2-08df3adaa335
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|23010399003|366016|10067099003|18002099003|261102123227099003|22082099003|56012099006|38070700021|261021121427099003|261026140227099003|261009223027099003|261028144727099003|261022105027099003;
x-microsoft-antispam-message-info: Fw4r6oskQ84c4cmNGUrkWfhNswhyBsrx31TWvXD5NmkITjopYY5lgytq7eQoIZx9FXx+6hhisI+lL3L8ZzYIr2c0o8E0atDXeca/DHaviV2CKGVYaRsLtGi7/hACyK6f7s2oZw+7bzCZfii5bqboNgqjwCQVEaGMLiO5Ka+LE/SYfNniP3CHrZeR+eiZQVreNKli8U1Y8xaD+Co4kxd8QCgicVanA2ain1xZd3m8eMbTR5mk6F8rWsiJHhyaKZuqs5xd0pnPbKUuYQZIXK1hAoccZ1SpKYVEKYEc8SS1jIJ67Mv2UETBZlYXTs8jddgw0EtyylCBXOiYErRS0x7oshWz/T5BgvAwOdmNSpujeA5HTgEUTTZSsLVIaD1ZWg59iYOu4wr4MZM0/fofMAZHR0iVsKSlbZM/ROXgZI7HFDXO+MkbLoBgTbOrLpDAXmp+Rr0+9AIvNCNgXa6AbwHGi07Y1qnye9hzVkwhGiVL+3kb4p9/dnS3e+lfqtaqZO6ALrn0g8hV4MGJNJRRQAGMtMBEYwHPNx9wF5tai8opE/6wEcoF3HvL80j7EXzNks9/LoBBmm51DmnaRPI+2s7351zr3iwGF6qYMGS/RPspMU4w8C+rSxRrOwC0K8nSOl2qwUAaOE+aj++iN0TXjp4KPGpn7bN/js+koPz3z7rM9f/BBd+0UpWV5T2RP/lVVt9XxeH14xbthiTnFkrealuTMajXMEoCsoWYU6ogtUUpzR4=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PSAPR06MB4439.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(23010399003)(366016)(10067099003)(18002099003)(261102123227099003)(22082099003)(56012099006)(38070700021)(261021121427099003)(261026140227099003)(261009223027099003)(261028144727099003)(261022105027099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cTR2dmlEQTJCdTRFVDRYcmZpNGJlbkQ3OUdFaGZJbWppaDBkeVQ5U3lqQ3pS?=
 =?utf-8?B?VXRaaHZiYWVmYTd5WWlyTW5Nc3Z4TEdxd3QxUUhpVTZ6dlVVUm4xTXdUZkhu?=
 =?utf-8?B?TWU4YXUwKzBEbjJ6S2hXYWt6YXNLai85MUVEWS9GakE1Z05LSmxsU1J2WjVL?=
 =?utf-8?B?UzJYMlJsU1RBVFNTSlhBM2lXOTEvVnVSa1B2RXVLb0lweWtTdk5jRWYrMVN6?=
 =?utf-8?B?YXdLOEc3S0NmTDFWTlpCUFU3VDUzMEdZdXB6S25MOW1xQ2FxVEY2blFTeEsw?=
 =?utf-8?B?ZHdoY1plcklEWjV0a09LSlRZUi9CQm9QZU1zMHF1N2ZWbm1SMlluMUxJL1dy?=
 =?utf-8?B?eCtocVlySWlDVFZROGQrRW13U3k0eWRHRTJRWVBFNlNMR1RiaHpIcVk5K21O?=
 =?utf-8?B?VWZweFk2Z3FVTExjbEJXQXpZMG90T1lmbVk3YytZekJzSFZQUjBHM0lTaEpI?=
 =?utf-8?B?NkIzWWV5anBLWkRrRnhVN2xGaEVqdE9ab3kwY1ZoTlFIUEovTFNvaElXUjds?=
 =?utf-8?B?R0pIVU96MlNoREJXbFNiQXFQdGYzTHRlK2lqc2ZYMXQzOTl2czlDL1JnZlNR?=
 =?utf-8?B?QitaVW5TbVJObk1wQ05RQzI3SWVMdUczMUsrdnY1dXpmbktJTkU4Q3p4Rysw?=
 =?utf-8?B?djlJSDdHMjI4dGt0dldvT0pNY0lzWFN1bzZMK0liWTlmenVuem1sODZyeUhl?=
 =?utf-8?B?WXZxQkEyZ1NJQkVmMHlsYUxaaHdzNVN0T0t4bEprQldBQ2M5Zk5vQXBwU1RP?=
 =?utf-8?B?b0tzWEwxUDJMdmI5cjlYSDlxRGNzOGR3dHBxL092S1JFK21qNDd3L3ZKSUh5?=
 =?utf-8?B?OTI2bEVGYzFxZTV6MlJTVlBmTE51RkNram1pdUQ3NitqbWFRSTlWaHdEQUEy?=
 =?utf-8?B?YUFuM0RSOTZmMXl2cFluRHNtWGRLNUt6VEhBNjRSZnhDVzVZbWN1c2oxZ3Vo?=
 =?utf-8?B?RHdRbTIzUnNsNVZneklCYnVCNnBNSzhNbzlTcHB2RkdBR1pJMlo2aWw0b0dQ?=
 =?utf-8?B?TmpWcjNiWFVKTUxZRERPbC83TFVhTnFhZEJtKzVWN1NFNkFkWTdzVE9YK3Zr?=
 =?utf-8?B?YUlFalorcFd6aDB4NUJSbzJKYlBRbzJzQXNxOFU5VlFaRndFdXYzMzUzL1hK?=
 =?utf-8?B?R2UreTZlbENBR1M5L29MNWxTb0ZoTWdRUU9ZMHFaRWd2akNYMWpoK0U5eUVE?=
 =?utf-8?B?UVRDWE82R2tvYXYyeFRTMjM5aGV2OVZRSFNMeVpTcFVNL3JSMWdWemc0aGMx?=
 =?utf-8?B?ZVBaNjBwRVpTbEhtcGJwakptZk0vMGtXcjR4bzZIbitjM2R4OXdiOHlyWXQv?=
 =?utf-8?B?KzN1VjMySElyNXB1N2UxazVoWTdxR01NRXM5S0c2UjNydE1CK2FLaG5Zb04y?=
 =?utf-8?B?eEdlNmUrZi8wbmdPWVRwSnB4cHkzaXRVUmp6SjQrMWxSeXJycHErR1R6VVl0?=
 =?utf-8?B?bFVXQ2RzWi9zM2hxbmNZV3lNYjltYWpJS1RuTDFvc0REUUQ0bTViK2pHMEph?=
 =?utf-8?B?eXRxQnExRk1jaGZhbHQ4bFRDb21IOGJGb01rV2E1dlBFWUJNLzQ2bmpJM3Iv?=
 =?utf-8?B?MzZ6bmxOa3NIWmFBdzJQaVlQakE3SEhqNjRmVWN4OGdtUm84bUZZNHZKTFJX?=
 =?utf-8?B?N2Z0d1pnYzdDUVlOSUkxWDJuMFN6ajRLR1U3QVg5NzU0V29SNzJxbjJQb29s?=
 =?utf-8?B?OWV6K0Z1bGRCRGpKeEl0YTJQYThYZC9Ca0JldnlZeXQ0V0MwdXFGYk0rRTRu?=
 =?utf-8?B?aHlaQVcxZU1nM09uaGtua0lYYVRoNlZmcURsYXVUVStyNVFFZ0hhN0Y0azha?=
 =?utf-8?B?NmU2ZS9zcmUvMXVoVElMNFNEZlJTd2NUdTVRaVltQWZFRGJvTUhGUU53TzE4?=
 =?utf-8?B?VmNoaXdna0lSMTAxbWI0K3JjMmsraTJtTmRFaWw0VXRjUGxOcSt0alVzdmt3?=
 =?utf-8?B?a0NmK0kydDZkTHVtQzJnZ01WOTBWTXpVMGc3MTdrR2lBQUFRTUtuVHFUNDdQ?=
 =?utf-8?B?N1BIU1NQc0V4T2FNMVBUZTBNejlOalQxSmZzSVVFcDczamZ0SFdIWEhSR0JT?=
 =?utf-8?B?aFpmSFlQVW1Jc1BPN1BFSllwZHBBZVpsVmxRdHI2N0JwbUhRMXZxSlNHdFRs?=
 =?utf-8?B?ckZYREIxVktwcE9UYUxEYjB2MzNaTTRBbndGNmhLaWhOajMwWnRyZHIvaHds?=
 =?utf-8?B?dE1BaWVRSlAvNjZjN1loYmExRlZVc1VqYzVaQmJPa0pPeGIxTnBOSUQySEJu?=
 =?utf-8?B?RjA5RmlLOXFNMXMxNTdsQjJCd1Fnb0c4SVM3YVpkQ205b1VtcFgvSUdHc0ll?=
 =?utf-8?B?OVRPQzV0SXJRK2tMYzlCUTVhcml2anFYdE1CYjFwc2RkVDNuZSsvVHE4NXl6?=
 =?utf-8?Q?buVFh+tE0UJD3M3o=3D?=
Content-ID: <E5B90E81F321F0468E43A36AF400A1CE@apcprd06.prod.outlook.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PSAPR06MB4439.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a54b790e-cc96-469a-d3d2-08df3adaa335
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2026 01:18:02.4872
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dKG/MXUbQTbxmETn7ZJZA8xoCWNHtJEQA1e0th4f4WYDNrYnUPnWHm95cmiNu58MKmya7hHeelfifTB9qKmXlAo/VRh5IQUpL+MpCn6Rfc8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYSPR06MB6921
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_171816_267321_620F27E6 
X-CRM114-Status: GOOD (  10.47  )
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

Add the USB3 PHY node for the CIX Sky1 SoC and enable the PHY on the
Radxa Orion O6 board.

Signed-off-by: Hongliang Yang <hongliang.yang@cixtech.com>
---
Changes in v6:
- Describe the PHY as a single provider with #phy-cells = <0> instead
  of one child node per port.
---
 arch/arm64/boot/dts/cix/sky1-orion-o6.dts |  4 ++++
 arch/arm64/boot/dts/cix/sky1.dtsi         | 14 ++++++++++++++
 2 files changed, 18 insertions(+)

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
index 0a820f45feb9..c081b63a9848 100644
--- a/arch/arm64/boot/dts/cix/sky1.dtsi
+++ b/arch/arm64/boot/dts/cix/sky1.dtsi
@@ -606,6 +606,20 @@ mbox_ap2sfh: mailbox@80a0000 {
 			cix,mbox-dir = "tx";
 		};
 
+		usb3_phy4: usb-phy@9210000 {
+			compatible = "cix,sky1-usb3-phy";
+			reg = <0x00 0x09210000 0x00 0x40000>;
+			#phy-cells = <0>;
+			clocks = <&scmi_clk CLK_TREE_USB3A_PHY3_GATE>,
+				<&scmi_clk CLK_TREE_USB3A_PHY_x2_REF>;
+			clock-names = "apb", "ref";
+			resets = <&s5_syscon SKY1_USBPHY_SS_RST_N>,
+				<&s5_syscon SKY1_USBPHY_SS_PST_N>;
+			reset-names = "core", "apb";
+
+			status = "disabled";
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
