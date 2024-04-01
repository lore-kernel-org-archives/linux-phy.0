Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42DF9CD128A
	for <linux-phy@archiver.kernel.org>; Mon,  1 Apr 2024 02:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hYlufvQbEkTG/79UP1ehV3TGJFZcZrrDbq89McVibAM=; b=ReJO2pC45tORnf
	WJdFn3zs4UwJQiEGL3r0wJUMn+BeNJw3MkAuFmiQKzk3ugaZ//KINGwr8bYWhvyS4hgFP2nQ6JZIs
	T0bgOSb2JY6qy3orVRsoIPZ6y62lVj0AX5TNUYNuS6NRMfH6yv/U2AZZryA3z/V+p/7BGGV+cd5xi
	RQlbGsp4NUM/1cIVf78pOyHQFQser4QUqqt2VlQ2e6WxJP719bJpWf0ABkkmLmgYbB9xwevcoKFbc
	xLbgJuYWNbvMFqPn0S7RPqKYal1avFmu3CSRJQdSZi48Lve38SBmvEU1Y3tZSgaJbANRq79U6YJlw
	zoA1J9Vk8sCsIXbiRYIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rr7AI-00000006fKO-2Hok;
	Mon, 01 Apr 2024 02:12:50 +0000
Received: from mail-ve1eur01on071c.outbound.protection.outlook.com ([2a01:111:f400:fe1f::71c] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rr7AF-00000006fIP-0SUE;
	Mon, 01 Apr 2024 02:12:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XJr6061d9EhBrullFQnrlmfXXJSaNPciLOiKcRoV/iMzr3G4IyOKZ85tfuQefqtSv4gQE+jb0cWhEKMcDK7yWNGFupL4tThM6LpM4+ay50lZgLZ1BJfF7FBuY97hTPFFq3CbEfyYBbSlziFr7R3tUr4x7kxosYfuCRE1PIyIwSCq6LUkQZZ0Or8XHoCTfFbsYLGHdbQAebIz/PfjvbA5Jch79Km+GnNkVPLrx1EJnNnFBL2Xx6enliC9sML3NSFY9yN1boXqy4DUpwIIWUcBvWSm70Jbukfjoty9h/DTtD998n7/H9FV/w4qKXeMcfHdmXrrTXoTMJhZF8YlkZc83g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tBZidNL6DY4EM+D9DDAnU8rjy0h0OonJ3Na1FZDMZp0=;
 b=n7VlzYUT7N8Ls6/OIFJmom7rs9eT2EZvu77zBQqackHxG2Oyj/YSsngoF9Z+0oZHcgVjsYctOWXahH3wwgHicKWjZCwgS4B1XL6nDajk919pAypBk58Lz7/Q7XMqwTP2UmqwzyADpvDdzU1p3OLQBV1l6v5VNjf2EtqN0Ln617rDIR3lsm6w7zTug+AqcjwHeY6IWXelhxbBWF1J39BlfEQMNUStON760qj0CU/uJfbYOwKt2uQ8gPi9Sdwl7/puJjqwSd+22O4GNUxoMj1EOFY32c08sfbMS3UZ5bbCdmCzX5gbFRu7RZlWpDK2z7uk2teZ3dncFvQOjU4V0RSeNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tBZidNL6DY4EM+D9DDAnU8rjy0h0OonJ3Na1FZDMZp0=;
 b=HMeMcpZ1ucEBjU4ayAQb9gIwZ/sv21ulzjBqkMg/QqVUwbj509099ND+F6LQQjXoNWTvMINDMRvZe/nNv64cpV/aQOJzLSA6NWvTzkC+mNrQ/jfLuus8NL7DvuQvMsIKkbrwqc3gm2X1bfvCgjEw1XePYKq87bhV6k3Z2YNfKZg=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by DBAPR04MB7414.eurprd04.prod.outlook.com (2603:10a6:10:1a0::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Mon, 1 Apr
 2024 02:12:33 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::5dad:f991:ed59:3123]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::5dad:f991:ed59:3123%5]) with mapi id 15.20.7409.042; Mon, 1 Apr 2024
 02:12:33 +0000
From: Hongxing Zhu <hongxing.zhu@nxp.com>
To: Frank Li <frank.li@nxp.com>
CC: "vkoul@kernel.org" <vkoul@kernel.org>, "kishon@kernel.org"
	<kishon@kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "kernel@pengutronix.de"
	<kernel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [v1 0/3] Add i.MX8Q HSIO PHY driver support
Thread-Topic: [v1 0/3] Add i.MX8Q HSIO PHY driver support
Thread-Index: AQHagbLY3navoPljxESuLsicYqwT8LFOw5AAgAPguBA=
Date: Mon, 1 Apr 2024 02:12:33 +0000
Message-ID: <AS8PR04MB8676E0F9E660A0740759B6688C3F2@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <1711699790-16494-1-git-send-email-hongxing.zhu@nxp.com>
 <ZgbM4hpFhYW0QCHm@lizhi-Precision-Tower-5810>
In-Reply-To: <ZgbM4hpFhYW0QCHm@lizhi-Precision-Tower-5810>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR04MB8676:EE_|DBAPR04MB7414:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QY8eiUgtjx6HCXpCJYpkAtKzPPdwZteiajRbDZd2vPmQmmtoBOHHAO/Oo+6KBd9WLOfAiVD7KCnsk460LtTOKJte7jaNKPDzvVj2dbzIaGVZp1RTF22CM55Ex0GHe8HcclBxePU/rh5cU2imb6HMod5ne/37cDNrsjLzMyEPQeFL88KAS6qfosZEzTToqCQy2Tq6VYNaFRXEPRRRVsPsihmWe9ZDLlvOJjZeGj3OVi2G2znSge3gvCx3cntrRyV3LwAmVCbVXTLAzfYWCWRz84IOd/UgJIE8yskkxS1fSakuq3qyt0LYCjiyHBVQQUa1/F7r0P0fqF9uA2QKyLBG1AYN78Bx3cHTGPmWYgCyDEXjcSIiX74e9MlWuMjiFhIjyRMKhBnPECJAJ6CI6PTG8WokJDY9Mi47iSXBZ+61GfsQUMd7Iv5SSiGZPD5M/xFEzhYC21lmKpSXYzjqlsNaJc1TLVSZ8XB+wPnprpN9HSi+t5VZAqRAPOdrmeGpunNQ474rHSniwy6QQf55wk8OwP2wG8psCxQ2r44V/RBeKGsRv7hPG66Oh1777Xqu4MRJh7iLSCyqsWylaIxjoiuOcx5JgeHtRrCvbx/qh62s9g4jLnaXvfwjXrfaGzd1rLGEv7x6tElGGGqnTZoadvCZ3jQTyOhuZ9AnM+S0Powbvto=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:zh-cn;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8676.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(7416005)(376005)(1800799015);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?gb2312?B?VWlHNXJ3MkpUVk5lNk5hZkdCY3Z2SFRQbmlXSVdKM1JYTThmYmxFUzNHMDg0?=
 =?gb2312?B?emp3T3Q1OHdmS0VQbkcwUElRMnA5SXI5bCsxTENUU0JON1NseVF5MVI3cVNv?=
 =?gb2312?B?Y1FFbWlCa04zRlVVWjlJOVhtei9MZWNtSzIwMzhUUDZBRmNNdEQ5QXhIMVRP?=
 =?gb2312?B?WFhwNWE1UVNsbHhBc2VmSjZIUEFiSERGTVhvcUd3WXcvOXMvZXloTkp0VnhQ?=
 =?gb2312?B?S2JiZ2c0UXY2ZlZzbDRTRnlnMjdUbVVtVjJlVlduaEVPbWk1VTE0bk53MFp2?=
 =?gb2312?B?RnF3TUJRdmJwUWtQTnJDeElRUUxScHZJYTBPUThhY0FuVjkrZFk3Q3VsMTNZ?=
 =?gb2312?B?ZjZtQ09NUHVmM1ZXTTBLSDBEY1h4dktFZlBWYU1qdGwzYUFoZURjYTV1UVo3?=
 =?gb2312?B?cWQxcnd5VzUwT0NWa3IxOHpSL2Rtb1M1dVZtK0QvQ1JHcnFTNzhaTmhxTjdD?=
 =?gb2312?B?NVBUaTNLWkdRNmgxckpYRlpWbzdhMVFIL3dWUlI1dUd5MEZXM3RSQ1RISWM4?=
 =?gb2312?B?eDN2QjBOb1U3UXJ1L0NXQmxqeGNXTFc4NjN6SFNzOGdZUTlMYkphcjZHM09Z?=
 =?gb2312?B?OVJQRGNuelBRQTJRcW15YXY2Tm1ESFQrL2lWemlZSnEzNGlFSm1DckZmK3Vh?=
 =?gb2312?B?MEIwWjF0YjB2ZS9EMXJDc2MxVE1mMkRvMVdyeDlFQlJoSUVIYk1Lc1FkUDhL?=
 =?gb2312?B?N3BaMkpwT0RyL2paOWJXVFd5dlFsV0hORjVPdXJ3VTdybGNTdVB2Ujc0Rmk4?=
 =?gb2312?B?cTVqbCtKU1Vpelk4a09mNnJqMUN5VEtYL2ZuR2dmY3NCa3BENk5GUzhyU3k2?=
 =?gb2312?B?ZWFrU1EwZ0VrTjlOTy8wVGxkWmVha0NmUUNpZUs2bWlCSDYzVUhPNWQ5Y0d2?=
 =?gb2312?B?M1dmcnRudzJyeitjRStpUmRBMHZpV1VQV1ZNaXBMZnJ1bUEyMzdXWkVURCt6?=
 =?gb2312?B?UTJYZDgzQnFQYlhmamp3ejBuNFg1VTBMNjBoRWNGOGlobE9sWmpTd2dzZ0NT?=
 =?gb2312?B?ZGI5K3puSHk0YUdMazJsZjlCSVV2eFRwanUxZEhCT2VROWhsSzJkbDNhaGF6?=
 =?gb2312?B?UEQ3WUk5UzNwY2taNHZoT0h3QXJDbU1vdkRxZHhhWm5TNXFncXVNZjhuSjJV?=
 =?gb2312?B?b002ZXdTMDlLdC83dEl5TU1McE9ZaFo2Rk9LekI0SHRNUXFlcXBPbVI4Y0pn?=
 =?gb2312?B?V0pWREwwNVhOdEY1RUVWdVZ1Znpkc1NKWERCTzRkS2xxU2J6c0xobHpBSXRH?=
 =?gb2312?B?Wk9PQjlVU3I5NzdwV2xQajBTaFgvYTV4aVVjQXliVXRLdjBPSjZqbVNkNkhS?=
 =?gb2312?B?T3JDZHk4N2FFUWs5MmNkU0l5VnJsT1pHVFdmc0djKzhKNVJCUGJTVlhrZ1FH?=
 =?gb2312?B?WldjMDBueHlDQ1NRR05hQ3kzV0Fub0RScTh4eUJwUHA4cXpKOTUySkJXZ2RH?=
 =?gb2312?B?cy9oVGd0eUNOc2loTUFGVmpOUnVBVDBvSWl4cUNlMHB5SkpXcTlnTlM5UnZH?=
 =?gb2312?B?b2JCR09rY3RSaVpYU0xITy9IUWU5NFB1NHU3ODVCamE5TGVjeHQveEdaVGxy?=
 =?gb2312?B?Smh0ZXpFQU9NQnBpVkVRYnNpM3l6Y0dpaVZybktpNFdyVmtlY0ZDTDRnc3Yw?=
 =?gb2312?B?Zm1hUHVwb2lZMVJORmpzNXF5YlJDYWhZeTVZL3dEOERVblR1cHlGcHNkOUlo?=
 =?gb2312?B?T2IxYVhOSzJJWEJWZFpUcGtMU1NTRmNRekJOc2V6SU1xTEYxTE5uR0drZmJG?=
 =?gb2312?B?RUxVSUpDK2paRiswcUM2QmVCSTR0VXQ3QW14KzNKWlU3ZlZIZ1FkUGpKWEJJ?=
 =?gb2312?B?K2djVVRuU1FmL2lVTnB0MExqcmlGUEliRlc2d2xMUWxEMVFya210VC9yRUVj?=
 =?gb2312?B?M1RaelRkSUN3a2s2eVdnV3dYUlNHNEtjWml4aUs2SUhOS05tTmVvWHFCa0tT?=
 =?gb2312?B?YXdVMFc5dTZxYURKSTM2QThvZE5jdHdRekhNWWttS0JySUd0UTJTRXJtNUdn?=
 =?gb2312?B?cXo2SkZRV0RzMllqa1FDeS9qY0pEOU8yWHE1SEdjWE1LRlh2UEkreDllWitY?=
 =?gb2312?B?SmM1TFBHYm9ZOVJzaWF6cEwyU0orMVFYZmRNZE0wYlJWOHVFZWRFRkFubkY5?=
 =?gb2312?Q?eLvA+fSeasrFbU/PzXdhFSuYg?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb4c73ea-dc99-4ade-0d95-08dc51f1313f
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 02:12:33.4545
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tsCjIWbR4NyKUHSXtVg+PIfpuaUslc06ciKBN3HJWGLksWC8AeAtahmmT2Jctu7nYcNFxFwD1zNvCJUAUypugA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR04MB7414
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240331_191247_160733_F1B9C163 
X-CRM114-Status: GOOD (  15.43  )
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
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBGcmFuayBMaSA8ZnJhbmsubGlA
bnhwLmNvbT4NCj4gU2VudDogMjAyNMTqM9TCMjnI1SAyMjoxNQ0KPiBUbzogSG9uZ3hpbmcgWmh1
IDxob25neGluZy56aHVAbnhwLmNvbT4NCj4gQ2M6IHZrb3VsQGtlcm5lbC5vcmc7IGtpc2hvbkBr
ZXJuZWwub3JnOyByb2JoK2R0QGtlcm5lbC5vcmc7DQo+IGtyenlzenRvZi5rb3psb3dza2krZHRA
bGluYXJvLm9yZzsgY29ub3IrZHRAa2VybmVsLm9yZzsNCj4gbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmc7IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOw0KPiBsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7DQo+IGtl
cm5lbEBwZW5ndXRyb25peC5kZTsgZGwtbGludXgtaW14IDxsaW51eC1pbXhAbnhwLmNvbT4NCj4g
U3ViamVjdDogUmU6IFt2MSAwLzNdIEFkZCBpLk1YOFEgSFNJTyBQSFkgZHJpdmVyIHN1cHBvcnQN
Cj4gDQo+IE9uIEZyaSwgTWFyIDI5LCAyMDI0IGF0IDA0OjA5OjQ3UE0gKzA4MDAsIFJpY2hhcmQg
Wmh1IHdyb3RlOg0KPiA+IHYxIGNoYW5nZXM6DQo+ID4gLSBSZWJhc2UgdG8gdGhlIDYuOS1yYzEs
IGFuZCBjb25zdGlmeSBvZl9waGFuZGxlX2FyZ3MgaW4geGxhdGUuDQo+ID4gTm8gb3RoZXIgY2hh
bmdlcy4NCj4gDQo+IE5leHQgdGltZSBwbGVhc2Ugc2VuZCB0byBpbXhAbGlzdHMubGludXguZGV2
IGluc3RlYWQgb2YgbGludXgtaW14QG54cC5jb20uDQo+IA0KPiBGcmFuaw0KT2theSwgdGhhbmtz
IGZvciB5b3VyIHJldmlldy4NCg0KQmVzdCBSZWdhcmRzDQpSaWNoYXJkIFpodQ0KPiANCj4gPg0K
PiA+IGkuTVg4USBIU0lPIG1vZHVsZSBoYXMgUEhZIGFuZCBtaXggY29udHJvbCByZWdpb25zLg0K
PiA+IFRoaXMgcGF0Y2gtc2V0IGFkZHMgaS5NWDhRIEhTSU8gUEhZIGRyaXZlciBzdXBwb3J0LCBh
bmQgcHJvdmlkZXMNCj4gPiBzdGFuZGFyZCBQSFkgcGhhbmRsZXMgdGhhdCBjYW4gYmUgdXNlZCBi
eSBpLk1YOFEgUENJZSBvciBTQVRBIGRyaXZlcg0KPiA+IGxhdGVyLg0KPiA+DQo+ID4gW1BBVENI
IHYxIDEvM10gZHQtYmluZGluZ3M6IHBoeTogQWRkIGkuTVg4USBIU0lPIFNlckRlcyBQSFkgYmlu
ZGluZw0KPiA+IFtQQVRDSCB2MSAyLzNdIGR0LWJpbmRpbmdzOiBwaHk6IHBoeS1pbXg4LXBjaWU6
IEFkZCBiaW5kaW5nIGZvciBbUEFUQ0gNCj4gPiB2MSAzLzNdIHBoeTogZnJlZXNjYWxlOiBpbXg4
cS1oc2lvOiBBZGQgaS5NWDhRIEhTSU8gUEhZIGRyaXZlcg0KPiA+DQo+ID4gRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9mc2wsaW14OHEtaHNpby55YW1sIHwgMTQzDQo+ICsr
KysrKysrKysrKysrKysrKysrKysrKw0KPiA+IGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9LY29uZmln
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgOCArKw0KPiA+IGRyaXZlcnMvcGh5L2Zy
ZWVzY2FsZS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMSArDQo+ID4g
ZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OHEtaHNpby5jICAgICAgICAgICAgICAg
IHwgNTE4DQo+ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysNCj4gKysrKysrKysrKysrKysrKysrKysrKysrDQo+ID4gaW5jbHVkZS9k
dC1iaW5kaW5ncy9waHkvcGh5LWlteDgtcGNpZS5oICAgICAgICAgICAgICAgICAgIHwgIDI2ICsr
KysrDQo+ID4gNSBmaWxlcyBjaGFuZ2VkLCA2OTYgaW5zZXJ0aW9ucygrKQ0KLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
