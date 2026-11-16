Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98E6E606A31C
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 02:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dg00DQCT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=9WB9EzoGp5l7ch290rlE2ZDShf+4l7qxHqW/cUNZ9j0=; b=dg00DQCTWjxBwENf3REBq/NLbD
	pFMhYaplHLQZ+t8gNTdwevxq0CcUglUiFmU1vJcwFFOkc9PZL+Ivd5sGsh58etPixPF/DcJYiHNXA
	z0jXJgRJSHF8oUS3WsjloXm04uTL2q7Zlm9filw6ZOmUg95mQGLUud5E6DPamlXji+qgCyBQKs/yY
	V9wv3gX4RsFiV1dM9JpV4Byc6bVzCiG9yujGLjPb7rUhLcZDwwrGJupnpCmzklFAtjsbdKfNarxeO
	80ZksngCZBB2h9HgRzz0R3I2ZCrQGDcTEpdrUZJU612GCHGrWSNX8r/NX2KkBWJ2tzwTRqbpm3dq7
	NpUYWuwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSmep-00000000xkd-1Vku;
	Mon, 16 Nov 2026 02:41:23 +0000
Received: from mail-japaneastazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c405::7] helo=TYDPR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSmel-00000000xk3-3lJQ
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 02:41:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gIIP/4JYk0KoDKWtEsuwVWa4miXiKxoLVQ4kprJWSGUed1gEaZgPEkBD3X4I2hG2q4YVeXOV/znR5EUkgwHPX8wnsryIuYiX4FwfegL+HYsslI3fvUoNJeO1y2+YoWm1xroS6NjclLOW0v2bsebHZoKMjEt/TEOKYD9UaljcqYIsxXinxR7KdznJeB88yI69h4IY0xIOw8RnNnMKADrz9cn7Kn2t+N8x/LIGXh4moOFyjAFcuNheixpm/CE2KsM5WWdbTy38yOtFWx102yFXZso431/GecuJ9IcQO+0woFl9JT10ykGphQj6KRWwwkHvRyGWfsW0wHdjludHuM+wkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VuBW8AV6qXq23dTDizM9mqL0xW6iXiH3PHy7gSGzP5g=;
 b=FEVEj+lAS/qO6e4iqpkNYpEWpDiOFj9fCE4i4ZpbMeXN6+fV0iwlJNNDScYW3txgdzk4pUQ6FwokQZf90JoTzx4uOgjxc1fRKNhnZ2shZbgFX3ytms5E6dZ9jJFYoOPxXGc2J3kpIhGPKmn4Uc/o074W7WThORuPXjlJjz7jSckFoygDbQSgXj+AKS7BemTDIIGkdVY8xmci9V7eqSm+uGWCqANx1C2+qyKN4XhIUznw4neSl4LO786uENXK/rf7trOQn/xZORiHzqOVxR0oLU5mtn+CQ8L5wOuOY+YR1rTKLJE7dhj7oPSVbVkJUM+6I+VzM634juPlM0xKZMqThw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cixtech.com; dmarc=pass action=none header.from=cixtech.com;
 dkim=pass header.d=cixtech.com; arc=none
Received: from JH0SPRMB0074.apcprd06.prod.outlook.com (2603:1096:990:63::5) by
 TYUPR06MB6097.apcprd06.prod.outlook.com (2603:1096:400:355::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.639.4; Mon, 16 Nov
 2026 02:41:09 +0000
Received: from JH0SPRMB0074.apcprd06.prod.outlook.com
 ([fe80::d5a:16db:d97c:df7a]) by JH0SPRMB0074.apcprd06.prod.outlook.com
 ([fe80::d5a:16db:d97c:df7a%5]) with mapi id 15.21.0592.009; Mon, 16 Nov 2026
 02:41:09 +0000
From: Luo Liu <Luo.Liu@cixtech.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	"sashiko-reviews@lists.linux.dev" <sashiko-reviews@lists.linux.dev>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "robh@kernel.org"
	<robh@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>, "neil.armstrong@linaro.org"
	<neil.armstrong@linaro.org>, "olteanv@gmail.com" <olteanv@gmail.com>
Subject: =?gb2312?B?u9i4tDogW1BBVENIIHY0IDIvM10gcGh5OiBjaXg6IEFkZCBTa3kxIERQIFBI?=
 =?gb2312?Q?Y_driver?=
Thread-Topic: [PATCH v4 2/3] phy: cix: Add Sky1 DP PHY driver
Thread-Index: AQHdanbgq1pNi9XhWU29I66qIYDBHrcaHhYAgBWFf4CAAG65wA==
Date: Mon, 16 Nov 2026 02:41:08 +0000
Message-ID: <JH0SPRMB0074B8E39350D231926ECEF5F57C2@JH0SPRMB0074.apcprd06.prod.outlook.com>
References: <20261102030425.1957585-1-Luo.Liu@cixtech.com>
 <20261102030425.1957585-3-Luo.Liu@cixtech.com>
 <sashiko-outbox-192860@kernel.org>
 <179477295532.135135.3835475209766065939.b4-reply@b4>
In-Reply-To: <179477295532.135135.3835475209766065939.b4-reply@b4>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cixtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: JH0SPRMB0074:EE_|TYUPR06MB6097:EE_
x-ms-office365-filtering-correlation-id: 8b2d4bfb-1471-4aa8-db0f-08df438b11ee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|23010399003|42112799006|38070700021|10067099003|4143699003|56012099006|261026140227099003|261028144727099003|261022105027099003|261009223027099003|18002099003|22082099003;
x-microsoft-antispam-message-info: to5umtdKugYsWRLWUvBf5muBLwwwg+Nb3j2o/Y5yKfhHxwvEoBMzmep/OlnY/RLJwobBDEU9MUmR2DLAAc8uYwJm4VIDVRXDqYPAcz0pbLM3bl8Wq3JMShkmNTFhG23cJoPzx6RCIGL02Xrz5JC5KbOHO4u5PmuwSwPnpj+FuUjfpKvbakPSC7/430GCdTfX/weYVIwPexst1I0vf0gkp1IWUsEbLaOCgZWa/Ih6KVjpqt6sWOVtHbrBTDJ+VFgOkNS5KkpngzDadW3aQeEDsw1zVULEGaEw8kUnqHnDudyjrHGmnzgrgf6v2kPrizg9pMk//BKkBHSnX9YCDtePGQj3nZp/jn0xa4zRY7TaFyiTWokxi3ArsUftqkx9OUFjCQr4o7Pj9hEunvQlj/iA1DuF3bQqblFA4y/uVuUvt1gXluforWwActgjwppFLEOabWI3ivm1pzXpOwl5GhJfNywgm0f8GodBl5eOcQwWW2woaExRw5tOh102JygoghKivQnFOTadox56tHaXH7Dtw6b3qXTRhDWR1YNdE/FWW1L81kOUriYVwMmNP+3T4GTk6fUm7/1DllqhurQ0Ecf/CQ0u2225PApOmQfQV7BdVP/SsPgsBSLwn3WIH4VnfuTaWx3WPcOmb6+1n0iFng9kbRBE0hFviIw3GFe7nKDUNQ0P6aEw1GICN7OAj1WeeKGjAXJE6zgR+MuBqX/YRxQXWMFAvhtWjkGUA3G1Vc8sitQ=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:zh-cn;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:JH0SPRMB0074.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(23010399003)(42112799006)(38070700021)(10067099003)(4143699003)(56012099006)(261026140227099003)(261028144727099003)(261022105027099003)(261009223027099003)(18002099003)(22082099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?gb2312?B?UjV6ZmMzc1J0WFNuQzhMbmRZOVZocHdoOEZVbi9TcnVDRFpLbEtqa1pwL2Z1?=
 =?gb2312?B?ZnZmODRZWkNrWkNXdXNKZk1PbkltYlEyQW1Dd1FrQ0crUzVxaFlBZDEzRkU3?=
 =?gb2312?B?N01pa1VySjNHMFBFZDYzQVFsODRDTTBGZUw4eVdnd0JsVVB0akpmN3RlNHlr?=
 =?gb2312?B?TWdqWXJqdExXRktwWXFwMUdhdW1jUTAyaGZ3Z0tMYWpLODNRWnF1YVZmQlZz?=
 =?gb2312?B?WjZ3UGFnZU9IRkpBZXRZTEd0aXdCK2NQUE5NOUpLVmV4MVdqY3FSNkQ0QVQ5?=
 =?gb2312?B?R0hUUHo3M1RWakNLSUtDVW9zbXN5OXhXNEdOT29ZNDhDTEhaMXlLWlpCMFdr?=
 =?gb2312?B?djFTdnpWN0Y3YTNQY25oYlJuWnRkZzE4UFNkSkJmOEdEUjhHSUgwMFB3TXpL?=
 =?gb2312?B?dmJodWlEZzhVT2dUd3p5c0ROdS9qcFZtajdGQTlpcFUxRnhOdXpIYkszcW1K?=
 =?gb2312?B?UTBRWmZyNnBlNVB4R1lHSDVYbWd6cDQweTY1RmQ2bkZxRUdnQUpFdndCL2Rh?=
 =?gb2312?B?YzgrYWxFWGNFbGpBcnlQcnA0YWhuZHc4aGRkRE1TUVhoM3AzYW1OQ0lqbmRH?=
 =?gb2312?B?ZnpTclJKVjY0alZaaExHa1l5bkpuKzFaZTRVODVQZSt5bjZPaEVuTnBvaUJY?=
 =?gb2312?B?bjgySjZkRDlEZEJIWENmdVl5cTl2YVpaQmlaQlF5bWtxZjlDZXcxNWFrQi95?=
 =?gb2312?B?TUdkdkNZQXlLbm9BbzkyaVZGcm5vVEtqNlYvdGxRTnBiRXc2ZmF4cGZzNjRv?=
 =?gb2312?B?SXFKRFU3bWU5azYrZnU4bGJmd2QyOHcrQ05lclBIcnQ3dnlDN0RIRGxIZ25k?=
 =?gb2312?B?a3lLNHZtTEoyQnRSNW0zcU1aN2lseW1EczZ2TS9XSE51cEpoTXZNdVl5clla?=
 =?gb2312?B?cFlBNE1LODgwV29ZNHBzYmt0aWhHa2RKdEhEREFxS3N0NEtoY2VObG84T1U1?=
 =?gb2312?B?dHlJcWFSa2h6UDFsS00rS0F0YWtjYzBNSXB3RXNxUXVvNDMzd2pUNERldXpF?=
 =?gb2312?B?SVJnMmJObUFJQkx4cUYzYU4ySGoyY2dBMGk3S1Jyd2VlKzIzNFh2WWVGcUpW?=
 =?gb2312?B?aHJ5VTZrejR5dG1jT08zYlAxMEd1cEVIZmFhV1lTajM0cFU4YjVhbkkyZmw3?=
 =?gb2312?B?TXBiVmJ4L0ZUQk91K0krOFZDQkhpUTVzcmQycndRQUlYaGprNDdpYUs5NHRt?=
 =?gb2312?B?MjRHTmd1T29kWERVUXQrODRCby9FNXl4MmxHUFRKcjQyeXJsQ2xhMGhGMzBY?=
 =?gb2312?B?OEpFQTRDYk9JSnh6eDFyWW5RRlY3S0VkbG5kUDlSNkovbDk2ZndyR2NNRW9j?=
 =?gb2312?B?alJkWXQ4L0pnRDNOeHBpVzZ5azgvRWhSOGlMUTR6UndCT213NWtVT0IzeUk3?=
 =?gb2312?B?MERWYmdTN3c3dUNUMmUxckhVUGVkMitqYkJTQXYrR3ZkUFIzemxpa0FqRHpr?=
 =?gb2312?B?Nkp1ZVRyVHVVL1BLVnFNeCt6a05ITUJXNXkzcUJOZTVtSkJGbGVEcEVPR3E1?=
 =?gb2312?B?Y1BGekVtY0hsd3VsQnkxUkZMdkhnQ1VFY0U5c1RFUGhvUGlSNFhxY2hUaDcw?=
 =?gb2312?B?Mnc1QzRDeVdGc3FhRmxaaFVUaUV6QmhPTyt3ejBwZnpkU3R0bXAxUTFMTlFR?=
 =?gb2312?B?Rmk0R2dzSC8vYnZ5MmE3alEwbmgwTjU0bDdjbWpaY29zb1lBMG1aQ0dPVlNq?=
 =?gb2312?B?aklaSVZYTlJCUVZSUk9NREM2SHNvR0dTYUZHWW5SNEc1cmZsN3MwZFp6bHYy?=
 =?gb2312?B?UWYwa1FKR2MrOU9WblR6MDBqZjZCeUk0QkhhY1htUFpoQ2NneXgvcTVDeS9L?=
 =?gb2312?B?N0V2R3NhK3dJYnQzWmFTbXlQazRRejhYbXlPVVRpVlJBWEY3U1dtdlJoZzY0?=
 =?gb2312?B?RFNpeG1DajlURmVENEZrMk5Da1pCT3VaNWlMcHlNRDByd3hqWXlsS1JFSlMr?=
 =?gb2312?B?K0tqdDNrSC9SRkRTUnQ0VHcxbHJHYmFvM09jSi90MUQ0MjhVYzJTNEhqNWdG?=
 =?gb2312?B?eUNWcjZDaUg4bGNVZWcycU5YdWFDcmxZbHZ0R2FralRXTWpHL2NYVVBuYitJ?=
 =?gb2312?B?VzI5NW5pTTlKeFB4cEE3YmlpUzZJNVlDeUVBYTZYalovNCs5eVdIMXhMenJp?=
 =?gb2312?B?MTVHM3hSYlM1dWNkUjI2VTJoSzRxTXJxMS9iMW84aGdObnhFc3NIeEswOHpQ?=
 =?gb2312?B?L2RoU016TzZBQm5Jb2pabTFPeUIrMzliYkhnMWRFQTZYNXFaSW45ZDdjd0xw?=
 =?gb2312?B?SUM1aEtMc1ltV1NtbDJla3Q1dTR1MlYyc0gzb2xUTGdROFFOcjFMRi9QUDFD?=
 =?gb2312?Q?d7eyCYbVQ2dm8R29xt?=
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: JH0SPRMB0074.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b2d4bfb-1471-4aa8-db0f-08df438b11ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2026 02:41:08.9525
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7uSxRC1E/WKC39juQCDByoFptBunz/jQFu1xCMFYuT+3+2kqtNZnKbsTMvKCf7nLYrtCF98N7zehpQztR+o6FA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYUPR06MB6097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261115_184119_940747_9D101B5F 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgTWFuaaOsIA0KCVRoYW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIHlvdXIgcmVwbHkgYW5kIHN1Z2dl
c3Rpb25zLg0KDQo+IC0tLS0t08q8/tStvP4tLS0tLQ0KPiC3orz+yMs6IE1hbml2YW5uYW4gU2Fk
aGFzaXZhbQ0KPiA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+DQo+ILei
y83KsbzkOiAyMDI2xOoxMdTCMTbI1SA0OjAzDQo+IMrVvP7Iyzogc2FzaGlrby1yZXZpZXdzQGxp
c3RzLmxpbnV4LmRldg0KPiCzrcvNOiBMdW8gTGl1IDxMdW8uTGl1QGNpeHRlY2guY29tPjsgbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmc7DQo+IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3Jn
OyByb2JoQGtlcm5lbC5vcmc7IGNvbm9yK2R0QGtlcm5lbC5vcmc7DQo+IHZrb3VsQGtlcm5lbC5v
cmc7IG5laWwuYXJtc3Ryb25nQGxpbmFyby5vcmc7IG9sdGVhbnZAZ21haWwuY29tDQo+INb3zOI6
IFJlOiBbUEFUQ0ggdjQgMi8zXSBwaHk6IGNpeDogQWRkIFNreTEgRFAgUEhZIGRyaXZlcg0KPiAN
Cj4gW8Tjzaizo7K7u+HK1bW9wLTX1CBtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21t
LmNvbSC1xLXn19MNCj4g08q8/qGjx+u3w87KIGh0dHBzOi8vYWthLm1zL0xlYXJuQWJvdXRTZW5k
ZXJJZGVudGlmaWNhdGlvbqOs0tTBy73i1eLSu7XjDQo+IM6qyrLDtLrc1tjSql0NCj4gDQo+IEVY
VEVSTkFMIEVNQUlMDQo+IA0KPiBPbiAyMDI2LTExLTAyIDAzOjIzICswMDAwLCBzYXNoaWtvLWJv
dEBrZXJuZWwub3JnIHdyb3RlOg0KPiA+IFRoYW5rIHlvdSBmb3IgeW91ciBjb250cmlidXRpb24h
IFNhc2hpa28gQUkgcmV2aWV3IGZvdW5kIDEgcG90ZW50aWFsIGlzc3VlKHMpIHRvDQo+IGNvbnNp
ZGVyOg0KPiA+IC0gW0hpZ2hdIHBoeTogY2l4OiBpbmNvbXBsZXRlIGhhcmR3YXJlIHJlc2V0IGFu
ZCBzdGF0ZSBkZXN5bmMgaW4gY2l4X2RwX3Jlc2V0KCkNCj4gDQo+IExvb2tzIHZhbGlkLg0KPiAN
Cg0KSSB3aWxsIGZpeCBpdCBhdCBuZXh0IHZlcnNpb24NCg0KQmVzdCByZWdhcmRzLA0KDQpMdW8N
Cg0KDQo+IC0gTWFuaQ0KDQotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
