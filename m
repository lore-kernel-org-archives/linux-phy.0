Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 648A3C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 14 Mar 2022 03:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jl/S6HtPegaG4qiv/NK5et2CHVXVR/YhBPt1kUPgKNM=; b=R+LBvBloWgzSn9
	jbENd9dpAtj+6a8LHAzHrA4JHFy9bs86IR3uEAmpDc02nBPUisuC2uvuDLmFkbxWI2sBtIvr/17hb
	hBXR2cU8waLklhZY0ObsSRRd6cYXwVf5FV2QXijDDdLCc2iGr7CELjSomTzVWHjo9gYe3jgO89r5x
	muzdh0+lyimQJs8yqPIf40KerRclK8po+R+PWOKVrxyfZqs8xaZlG4cxxetSajM3e0JozWZk9x4wc
	Wk8ecR0xJfp+8Z41eTLqH1z+Yki/wOx0d3loCP+8q0ZOxjvNMPhF6yAIuVzSUkPDffZJtfkdO+0M5
	2LXRNeoYxM2eST/GgG0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTbOS-003iyn-OD; Mon, 14 Mar 2022 03:29:12 +0000
Received: from mail-db8eur05on20606.outbound.protection.outlook.com
 ([2a01:111:f400:7e1a::606]
 helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTbOP-003iyG-TQ; Mon, 14 Mar 2022 03:29:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WUvsIk8ocILGPbrjYL5nje4NE1WfuCgWLSRtjlOxsGrFHSOTVZL9rcb8BDMkBOJ6N4Nsq/JG0bJe0WxdF6N/WIiR4x2BktCHrRiNSr8a6UwagBSJDUXTs9q1uosNYY6dg79c+aPJkInHL4fLx0YicqszxJ7BvDNElaEXcg5AIE9TiUibXS1FJoba2vtzWhLiE9GTejoPrE1egAJKhRujpxowMCFygP20+X+5ahWXGzHIY+f9gnqWfsQkrcUsKgbU7CzMb2JK9gIsxxb5mJfBjF+2/AhRiVgRLjrFNtquUK4USOPzanPyV3gNyfqBuVKd41NmlVCv+OOSLpDL78Q+Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KtQdg1FS+7xvk3N/hVi1BEqpb7qaHxjS+D9UF65b6AA=;
 b=S/jPftcqWZbhmQlsYHyTbWA79x0XaXJbTAVPBZD5/6bwOmhYGB22ru3ScunCECoix/oZlAx/Q4/EAuV+OB75Znp0y6a26WsIZsQvm0zWTvFnBEvpWZ8aJChxw7RgUy/k23jJW7zNRZBkl8fgG/4i9ugRjBMgohXIKi2TxDBm6jhZLQ0CoDMsr63C9ai7OPS2897E0L7TLPSoh22SXOLjp22srOjWVeyWcS1IpXIO9MoC4JsQa2JjCfYAZxsmxC54c27JnIiuul2c4MHUyVOFt4wd2hfIq5Rx1xlkvufs4madoxG6g0DMpVakc3N3nBt2PY/BqZb3wNqQ11Cb0oS0LQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KtQdg1FS+7xvk3N/hVi1BEqpb7qaHxjS+D9UF65b6AA=;
 b=g5G4I0dtIzBYtzcr/BMR9RLDJ+9NB9HGvlETr7eJA5QU7y45/SNeymtrvEJ/IPkqDt2Gpnc3asFOMe+CTGrU1S5G/Jcr8RtEr/dO+vC6fvsbx0tGEbulq71cNHivJY8oJSm9wOVzrJYtmQAlgC0BsWVpCH9By1tpknHOyC1yvSU=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by AM0PR04MB5139.eurprd04.prod.outlook.com (2603:10a6:208:c4::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.28; Mon, 14 Mar
 2022 03:29:06 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::f4f1:fe49:d19e:4770]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::f4f1:fe49:d19e:4770%9]) with mapi id 15.20.5061.028; Mon, 14 Mar 2022
 03:29:05 +0000
From: Hongxing Zhu <hongxing.zhu@nxp.com>
To: Marek Vasut <marex@denx.de>, "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>
CC: Fabio Estevam <festevam@denx.de>, Kishon Vijay Abraham I <kishon@ti.com>, 
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, dl-linux-imx
 <linux-imx@nxp.com>, Peng Fan <peng.fan@nxp.com>, Shawn Guo
 <shawnguo@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH] phy: freescale: imx8m-pcie: Handle
 IMX8_PCIE_REFCLK_PAD_UNUSED
Thread-Topic: [PATCH] phy: freescale: imx8m-pcie: Handle
 IMX8_PCIE_REFCLK_PAD_UNUSED
Thread-Index: AQHYNbHivMio6URy9EinOynKWYH9Pqy+E49AgAAd0wCAAAmQ0A==
Date: Mon, 14 Mar 2022 03:29:05 +0000
Message-ID: <AS8PR04MB86760D239565D852334A95F28C0F9@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <20220312013812.169671-1-marex@denx.de>
 <AS8PR04MB86766F6033FF0FDAB1E0693B8C0F9@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <7ebd66d1-0b16-9b6b-ff0a-4901f054217a@denx.de>
In-Reply-To: <7ebd66d1-0b16-9b6b-ff0a-4901f054217a@denx.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d6eae7db-b8b7-4ba3-e332-08da056acb22
x-ms-traffictypediagnostic: AM0PR04MB5139:EE_
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AM0PR04MB51395CC8C4BB3FE7730CB97D8C0F9@AM0PR04MB5139.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5ORDscs6vp6n2iDfneG419xu5n63ke/UedUPGa6SnWsRyMnBv9ttamtTzu+w+/R6GxJHSx8JnBoUgMCgipQC0thE9Z3fIIb81cBO+OeVmNz6gKYl5e+jaurbirRDGGiEqijYZcwsPje1pjxJbmpxI+oGtVMvtavMCewarL/KD/3Vby9hRVspyTo+NWXtjRO/3klM36sMjukVbqNuR1DYy+M9NbYdtAPiRJ1RhLc6NpI1egTjlQHpaq+8nFI2N470u8IXWd1XBJlW7ENxEmmdKFg6xWVXM4QWPIUqQ8MwB3UygOl2cwu6yY6aLn/0d0wkxNyOi1n/oHew1LRxwBpLG0Zac8I4ZDflXTcDjGXobwYR15Yha/FnMnrRmuyHIiKPllf3Z3Bap1RP4szZSXrVO1RR81hiJRirzabCNllpq9YVStSnBelv0Vnj4sXIgeco4KkTLZpmddjZjcoIvEXIuT/3wKMinzRCvDPJcBefjtlif5UcZshW4/QNh0Iv/4xogc2HWLd6NkL6FlQnl1DKxsixjnqfR4HP7+AOIjW0PCOzOuG9NI6fyjm/uWSUPY1J5EL2BC4AF2/Ua2M78nGCPpKEOm4/L1N8lfWCwSH+IfqHuQ/Dnj4lrbaQ+U0+HWEqQ5Pd73Sx6T/SCfxwhb/loITAQ5XsQp18pUbsLsOMOXd5RBbdqZtYj1OEoBb4VXbZcndIQqQyowBrh1zyMDduL9IbMXhQekYUxUXUPfbpayM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR04MB8676.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(8676002)(54906003)(4326008)(53546011)(110136005)(2906002)(6506007)(9686003)(7696005)(316002)(33656002)(186003)(26005)(52536014)(44832011)(508600001)(55016003)(8936002)(38070700005)(86362001)(122000001)(5660300002)(66946007)(64756008)(83380400001)(66476007)(66556008)(66446008)(71200400001)(38100700002)(76116006)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dko3N3hoN0dKcGM5OWFqcVZMYVE4WEFOTnhSNUFuTERGN2l3UFVXcWdHQ1Bo?=
 =?utf-8?B?NHpaL1VkRWZwbW9wdnhvU01NWE1LcGpQTW9OVyttV0Fmb0lEcmpoWXMrTTZo?=
 =?utf-8?B?bm96aXdzMkJWYVkzdHJ5cVJseUk0dFZTMlR5OUVJMUtKM3ZkVzNLREh3Z0gy?=
 =?utf-8?B?RmdvNGUxeW9naU9FT21XV3VRd2lNd1pnWXN1aUp3OFB4YjQ3M1RnWmtpWXRJ?=
 =?utf-8?B?QXBLNFRoNit3Yk1EZS9YTEMyME9pMnFEOHZiMWxidHNsVlo5NW9MSllkL1Fi?=
 =?utf-8?B?Z1lvTUNvRWxhN3phQ2RhczZndlBQSEw0T2g5MUpsbjhRRStmWStKL29GRkJr?=
 =?utf-8?B?SmdGWFdQTlpocGtORVNoaW43c2pLczRaQ0p0VVl0QzJZWXhBQzcvVEQ5eU1q?=
 =?utf-8?B?anRNdFpQNHN2aWJUZG9vVGFYRHc0VXdpMk0wVkVhRzBrcnhjQVJ3a0c2UEgy?=
 =?utf-8?B?ajJiUG1tMUhUbzVkakVhUU9ZNGVlVnkybkFOeDJxUU0zK2F0SXdHMW04bStr?=
 =?utf-8?B?V0V5UTA3ekFXWjhEZ0d0TUFUSGR5R3JxR3Zwc0lDUXRBRHhacjE2YmxsMTRK?=
 =?utf-8?B?Y3V3Uk11M1VSUkM0UnNORkVrKzZtb2MrSWpTMDFWcHZyVkJPWXdhLzBUM1ly?=
 =?utf-8?B?MXErK01DUWVvZTFjcFQyVy9ERytteG84dUhYUC9POXNtTVU4MlRONmtuYmlx?=
 =?utf-8?B?aXJtdnhDNnZGaFpqM05PdkRjZzM2QnBYbmhNU2xkSTNsUW5jVzZXRlRxZFZn?=
 =?utf-8?B?dER3cUNyaU1VOWhmQlJTY3ZoUmlhM24weHlEam9QbFBkVVA4MGErNFVScVI5?=
 =?utf-8?B?L1I0NUZqbWFDQkNVdU5ndHNuZkJnSTBORTE5enMyUWU3bnJkaWpZZ0RLTmQ1?=
 =?utf-8?B?aHE1ZjJ5eHpCdEs2M0hScHk0Z1lpYmkvNE12cnBiTE5aZ3NvTDJzVjFiK0I1?=
 =?utf-8?B?VmtIR1FGUDU3aWtLV0tpZlVLUW0xaU9UVWlvdy93VCtRQzNTejgxQnczSUZ0?=
 =?utf-8?B?QWJmWDg0WllnMmhpWnp3YVcvQWVpQllMWTFLSGFtOWM1dUwyZkZONzIxVk9J?=
 =?utf-8?B?N3dEL24rVVVYclFjM3dYUTlWV2xXOVV3R2Z5WlJFRDA5aEJYTFYrQmRyRXRO?=
 =?utf-8?B?eUtXN3NuNnE5UkNSKzEvek5VMFNNNWY2c3ZzS3gyeWNaYU9xeXJMRGY1TmpD?=
 =?utf-8?B?T2twNzZJekk5TjhkRlJDZ0RLK0Fta25Gc0dUYTFxQlVlaWFDa3hFZzM1WGg4?=
 =?utf-8?B?YWpJRUdhMUwvUnB5czdXUnVxY044d04wRy8ya2xSL3pWc0RUM3UxOVVzais5?=
 =?utf-8?B?dEdHcFQzSSt2REZXVVFZQW5iSVhnRHRCRURHYkNMRWVxZ3ZzMHpGUXYyYTJY?=
 =?utf-8?B?aFcwR1R5NnI1OUVHQVpydFNONUxUUlZjYnJJVXdCNzhnNWVPTExTUk1nVmIy?=
 =?utf-8?B?c01HY0dlWkpaWGgzMnBwdVBQWVFsaitSV1pSUFFvRkdNb0lvUFgvdG5YQUZI?=
 =?utf-8?B?Z0VVY2VLKzB6bllNVE1wRVdBZzVoUWw4VUdmMFZIc3J2UHN2Mlg3M2o1N1Y2?=
 =?utf-8?B?WFZpSllZbENsNUF4enN4Q095NkRvZHZVQ1lXVS9veTZxQjlxb1BINWpFU2FX?=
 =?utf-8?B?YUk2cjVGcWxoTWU3VW1oMnpaOFN0NHZ6MXhod1NXTEs0cVBFUFc2TWdJeUpm?=
 =?utf-8?B?dkp5Qk5xRlpmVVZUU200QzV2YnJWUENrZlVqWThQejJ5eitWVE1seFR1MTJh?=
 =?utf-8?B?R3ZnaHdrOFd4MXpJd2dycWgvVXR4dTFsWUpCenJjM0FxNk9mZEtNeW5jazVq?=
 =?utf-8?B?dzBzdGE4M2JablF3Nmw3U0VyQ25lQm9yQTczbTNlc1ZqSXFBQVJLVDRBSEx4?=
 =?utf-8?B?RXRkR3haNWFNNUlQMEpabkZ0QzZHMmp6bXZFclpESU5tQkNFSXJZWkJLNVpt?=
 =?utf-8?Q?5v9khcT0WA1isXYKqZiBWUpIlqBKsWCC?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6eae7db-b8b7-4ba3-e332-08da056acb22
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2022 03:29:05.8455 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lQc8DCO+OUGTORnHlf1by6608m0r7dVX1EuWS0VYXf4g6Q9Q5JdkJ9ov2XyKDGP/5TCgrtYjETIpNOjUS7Ygvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220313_202910_069319_281240E3 
X-CRM114-Status: GOOD (  23.66  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBNYXJlayBWYXN1dCA8bWFyZXhA
ZGVueC5kZT4NCj4gU2VudDogMjAyMuW5tDPmnIgxNOaXpSAxMDo1MQ0KPiBUbzogSG9uZ3hpbmcg
Wmh1IDxob25neGluZy56aHVAbnhwLmNvbT47IGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
DQo+IENjOiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBkZW54LmRlPjsgS2lzaG9uIFZpamF5IEFi
cmFoYW0gSQ0KPiA8a2lzaG9uQHRpLmNvbT47IE1hcmNlbCBaaXN3aWxlciA8bWFyY2VsLnppc3dp
bGVyQHRvcmFkZXguY29tPjsNCj4gZGwtbGludXgtaW14IDxsaW51eC1pbXhAbnhwLmNvbT47IFBl
bmcgRmFuIDxwZW5nLmZhbkBueHAuY29tPjsgU2hhd24NCj4gR3VvIDxzaGF3bmd1b0BrZXJuZWwu
b3JnPjsgVmlub2QgS291bCA8dmtvdWxAa2VybmVsLm9yZz47DQo+IGxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIXSBwaHk6IGZyZWVzY2Fs
ZTogaW14OG0tcGNpZTogSGFuZGxlDQo+IElNWDhfUENJRV9SRUZDTEtfUEFEX1VOVVNFRA0KPiAN
Cj4gT24gMy8xNC8yMiAwMjo1MSwgSG9uZ3hpbmcgWmh1IHdyb3RlOg0KPiA+PiAtLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQ0KPiA+PiBGcm9tOiBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4N
Cj4gPj4gU2VudDogMjAyMuW5tDPmnIgxMuaXpSA5OjM4DQo+ID4+IFRvOiBsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZw0KPiA+PiBDYzogTWFyZWsgVmFzdXQgPG1hcmV4QGRlbnguZGU+OyBG
YWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBkZW54LmRlPjsNCj4gPj4gS2lzaG9uIFZpamF5IEFicmFo
YW0gSSA8a2lzaG9uQHRpLmNvbT47IE1hcmNlbCBaaXN3aWxlcg0KPiA+PiA8bWFyY2VsLnppc3dp
bGVyQHRvcmFkZXguY29tPjsgZGwtbGludXgtaW14IDxsaW51eC1pbXhAbnhwLmNvbT47IFBlbmcN
Cj4gPj4gRmFuIDxwZW5nLmZhbkBueHAuY29tPjsgSG9uZ3hpbmcgWmh1IDxob25neGluZy56aHVA
bnhwLmNvbT47IFNoYXduDQo+ID4+IEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz47IFZpbm9kIEtv
dWwgPHZrb3VsQGtlcm5lbC5vcmc+Ow0KPiA+PiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcNCj4gPj4gU3ViamVjdDogW1BBVENIXSBwaHk6IGZyZWVzY2FsZTogaW14OG0tcGNp
ZTogSGFuZGxlDQo+ID4+IElNWDhfUENJRV9SRUZDTEtfUEFEX1VOVVNFRA0KPiA+Pg0KPiA+PiBU
aGUgJ2ZzbCxyZWZjbGstcGFkLW1vZGUnIERUIHByb3BlcnR5IHVzZWQgdG8gc2VsZWN0IGNsb2Nr
IHNvdXJjZSBmb3INCj4gPj4gUENJZSBQSFkgY2FuIGhhdmUgZWl0aGVyIG9mIHRocmVlIHZhbHVl
cywgSU1YOF9QQ0lFX1JFRkNMS19QQURfSU5QVVQsDQo+ID4+IElNWDhfUENJRV9SRUZDTEtfUEFE
X09VVFBVVCwgSU1YOF9QQ0lFX1JFRkNMS19QQURfVU5VU0VELiBUaGUNCj4gZmlyc3QNCj4gPj4g
dHdvIG9wdGlvbnMgYXJlIGhhbmRsZWQgY29ycmVjdGx5IGJ5IHRoZSBkcml2ZXIsIHRoZSBsYXN0
IG9uZSBpcyBub3QsDQo+ID4+IHRoaXMgcGF0Y2ggaW1wbGVtZW50cyBzdXBwb3J0IGZvciB0aGUg
bGFzdCBvcHRpb24uDQo+ID4+DQo+ID4+IFRoZSBJTVg4X1BDSUVfUkVGQ0xLX1BBRF9JTlBVVCBt
ZWFucyBQQ0lFX1JFU1JFRiBpcyBQSFkgY2xvY2sgaW5wdXQsDQo+ID4+IHRoZSBJTVg4X1BDSUVf
UkVGQ0xLX1BBRF9PVVRQVVQgbWVhbnMgUEhZIGNsb2NrIGFyZSBzb3VyY2VkIGZyb20NCj4gU29D
DQo+ID4+IGludGVybmFsIFBMTCBhbmQgb3V0cHV0IHRvIFBDSUVfUkVTUkVGIGV4dGVybmFsIElP
IHBpbi4gVGhlIGxhc3QNCj4gPj4gSU1YOF9QQ0lFX1JFRkNMS19QQURfVU5VU0VEIGlzIGEgY29t
YmluYXRpb24gb2YgcHJldmlvdXMgdHdvLCBQSFkNCj4gPj4gY2xvY2sgYXJlIHNvdXJjZWQgZnJv
bSBTb0MgaW50ZXJuYWwgUExMIGFuZCBub3Qgb3V0cHV0IGFueXdoZXJlLg0KPiA+Pg0KPiA+PiBT
aWduZWQtb2ZmLWJ5OiBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4NCj4gPiBIaSBNYXJlazoN
Cj4gPiBUaGFua3MgZm9yIHlvdXIgcGF0Y2guDQo+ID4gSSBhc3N1bWUgdGhhdCB5b3UgaGFkIHRl
c3RlZCB0aGlzIElNWDhfUENJRV9SRUZDTEtfUEFEX1VOVVNFRCBvcHRpb24uDQo+IA0KPiBZZXMN
Cj4gDQo+ID4gVGhlIENMS19OL1AgcGFkcyBhcmUgbm90IGNvbm5lY3RlZCBvbiB0aGUgdGVzdGVk
IGJvYXJkLCByaWdodD8NCj4gDQo+IFRoZXkgYXJlIGNvbm5lY3RlZCBmcm9tIE1YOE1QIFNvQyB0
byBNaW5pUENJZSBzbG90Lg0KPiBUaGVyZSBpcyBubyBleHRlcm5hbCBjbG9jayBzb3VyY2UgbGlr
ZSBvbiB0aGUgRVZLLCB0aGUgTVg4TVAgaW50ZXJuYWwgUExMIGlzDQo+IHRoZSBjbG9jayBzb3Vy
Y2UuDQo+DQpHb3QgdGhhdCwgdGhhbmtzLg0KIA0KPiA+IEJUVywgaXQncyBiZXR0ZXIgdG8gYWRk
IHRoZSBGaXhlcyB0YWcgaW50byB0aGUgY29tbWl0IGxvZy4NCj4gDQo+IERvIHlvdSB0aGluayB0
aGlzIHNob3VsZCBiZSBjb25zaWRlcmVkIGEgYnVnZml4ID8NCkVtbS4uLg0KSXQncyByZWFzb25h
YmxlIHRvIGNvbnNpZGVyIGl0IGFzIG5ldyBhZGRlZC4NCk9rYXksIEknbSBmaW5lIHdpdGggaXQu
IFRoYW5rcyBhZ2FpbiBmb3IgeW91ciBwYXRjaC4NCg0KUmV2aWV3ZWQtYnk6IFJpY2hhcmQgWmh1
IDxob25neGluZy56aHVAbnhwLmNvbT4NCg0KQmVzdCBSZWdhcmRzDQpSaWNoYXJkIFpodQ0KDQot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
