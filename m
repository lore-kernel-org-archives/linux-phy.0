Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 431C8CC6B03
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 05:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=em/TltpAFA/TtZ0csVdWetL8vfwtbNdOnqiWn/3w98k=; b=hgbOqtet08pEdu
	SExdl7Z4dr1fvBX12dGZPnN8hUhM5y17mTruzMYnnhi/ypu8F/BGs4RwMyT7DxUdNUZya5fha2go9
	KdxBYtSMMekvTVDnSSGSO4Nf1jClNUhnwBn2ZGi8LNLDyJUVM+hzQwJBKto7LFitECegW6AVUQe/1
	ftkZJGqArLSOe6HZtO4YZ2ptL40Rdd7GPgKyZpnKF13ay2HmErqiUq+Bfd5CvHMp+Efc3Y4KJWBv/
	nBLwXZFMc6YMHHKNR9oiF61QhaYbqxuB0BLC1uFukJkS+Jj0RHo3MFBOIK66HUscisJfVhhAuvjMq
	3QtjySo8l/81y1jeVkNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGVGk-0000000C1vF-3976;
	Tue, 13 Oct 2026 05:41:46 +0000
Received: from mail-japaneastazon11023073.outbound.protection.outlook.com ([52.101.127.73] helo=TYDPR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGVGh-0000000C1ui-3N8H;
	Tue, 13 Oct 2026 05:41:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UMb88YukLfZgBr1z62o6MsE31kDWxWkzm2EzrIKktjHLHUTleSm5nA2L1ZrtHROAiQvZCncLeG6tHSonQ306/Hlr4KAdwYokMnvkFctZlx/ROd4LLaf0tulblgepm/yuzO65Ss27WagSAbH3YKY3MJhLGM/8rzRA1PRrNRDYGiHZkJOXzXnksPBAWu+8VJUyXjm1Sc6Llb9G6bxeTD71unPiICibCt7JJ2Yvlf5qhLTMuPZmzA4SR4Ogdd0URW+wL4/gvJlePZB3WNX73urDKh4yT871qXybF/tSajBzcsql3oWpK9S1FVknaNCq8r6y4v5PS5BubcwQKVxHuf5C+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OBqtsOD/U1e8cyhUvi77N5hPulnFawbPvImTaDpU8u8=;
 b=AB0Sa5fxOBi+cnoFhCwpWtM1QXBYGDBiH8VqXjZ8MSPGg6I+UCrO7FUnVm735AcVspyCXKleYCVRusaO76tO2NFUVOfH1OIBb3nbztFutZaMGEnE//FqinYE/B9ZR+DroQNPmIOPK/YWXnDdCcUvzMj7nCEEG40lypzf0dj121oFto6Ji1ZCaENev0wZVFJKJT06K/fVYzkRbCI8GoDkYgE+aLiT+YrWgT8YdeC1Hp8ZZ8XeHOG7/jrQFuY2JrThgdO/Hzqa0lVrViupVi1du9fRP46/tlOtinunIRMupUW0Re7DPxGPg97paDLNHxn6byqNb+3s0eLzozUHUgXQtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OBqtsOD/U1e8cyhUvi77N5hPulnFawbPvImTaDpU8u8=;
 b=WVZl2RUohghkzVtLi9LiID7kooVxUCYqdqPKaMlpRfW9tnU7NDIECtENJgYI4HN2+qoOX8HYcfiTGZpQd7bolwmeWsETnkjky3nrN18qUFePRHOuDljbB/JWxUQr0I3DIm9sLZMG7Ylt2FvLSISNlV/JeigVB73rZme8MV2X+D+N1LHOoBjNfHedc8NJdHSzrezseZiHSJAa+0OFdejlc1ANYX91wOUQ/lwVeZWyvTqWvBBL86W5AktZUgRWvrzkcUMK9nlBue4gyaHrFya9ggIHhk0+U74+USMidvd6JWN3yJnYkBCekhvWzfAfmvq05roKHTA0zrKYbGFSY76WDA==
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com (2603:1096:101:5a::12)
 by TYNPR06MB8426.apcprd06.prod.outlook.com (2603:1096:405:3b2::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.496.23; Tue, 13 Oct
 2026 05:41:34 +0000
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::f53d:547a:8c11:fc6c]) by SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::f53d:547a:8c11:fc6c%3]) with mapi id 15.21.0496.021; Tue, 13 Oct 2026
 05:41:33 +0000
From: Jacky Chou <jacky_chou@aspeedtech.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, Andrew
 Jeffery <andrew@codeconstruct.com.au>, Manivannan Sadhasivam
	<mani@kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>, Billy Tsai
	<billy_tsai@aspeedtech.com>, "linux-aspeed@lists.ozlabs.org"
	<linux-aspeed@lists.ozlabs.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: =?utf-8?B?5Zue6KaGOiBbUEFUQ0ggMS8zXSBkdC1iaW5kaW5nczogcGh5OiBhc3BlZWQ6?=
 =?utf-8?Q?_Add_ASPEED_PCIe_PHY?=
Thread-Topic: [PATCH 1/3] dt-bindings: phy: aspeed: Add ASPEED PCIe PHY
Thread-Index: AQHdVxgnMBacQKqOkk2CXr486g9T67b1BHoAgAX2BbA=
Date: Tue, 13 Oct 2026 05:41:33 +0000
Message-ID: <SEYPR06MB5134E45E850FF55C1D566D109D9E2@SEYPR06MB5134.apcprd06.prod.outlook.com>
References: <20261008-aspeed_pcie_phy-v1-0-96764937aef0@aspeedtech.com>
 <20261008-aspeed_pcie_phy-v1-1-96764937aef0@aspeedtech.com>
 <20261009-vehement-mature-mackerel-f7bc87@quoll>
In-Reply-To: <20261009-vehement-mature-mackerel-f7bc87@quoll>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR06MB5134:EE_|TYNPR06MB8426:EE_
x-ms-office365-filtering-correlation-id: f13b667f-0be0-45bb-8801-08df28eca3c9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|23010399003|1800799024|366016|7416014|376014|10067099003|22082099003|18002099003|38070700021|4143699003|261009223027099003|56012099006;
x-microsoft-antispam-message-info: U3lu3WM8n2ZMf/NQtpJPTBRqplaitXcxcwcVmB1K+A9zYOLNvLVIxo1yn9YHUCZ0+GfLE+y7M56XPI2v8TzbVPf5Y87pDY3UrjlQ/erc5mmoO+5AVra4VWws9QYS/XrnLOrTgHCyOvj/8p1uy33273D12vUCvegvOgg9wL1BGspaWl4Vki8ANt8ircTyzWzSrDxkpZlwJy5BlGyC7P16fxRC0FFgpZudycW2Do+6OXatn8jh0ykDrCn6VasEdr9DlMkmTEVtqYjGZ47Aw/NRQdk4Lsr5mo9uI1cA6PI0rfnxjKzQdEagfaBfw8kT7fvERH7BrU/R6jVMpOXzKfNQMNELuhuaOifvRga9p6dmYgZEAq+nYV/bHMOHZ8Gw0OUxh0g9dny/NcUx2woJochbR9h3zLxXDweYc5Qz4rAxWzaIxOtYf4LoriXDaRocsAJHBxUEpFJQPWlamgZ36xYqLlddoLuX8/15IuJDwY1kr6KC3hFoph+aGTlMBaJUZMPjAIYAqLJFp1FWFmWqP4p2pU5pUyExs/RccPfkQcoKEjvkpa2QFyxK6lR6nHObhaxL2tJKyn1eizN5WJWHrgLcTLVMX5/9/CNel0LFJB6kbeNsveztI6G/eLvLk1ItzdE9FqpydBIqupZe9LJaZJTif0PTD010KpAmZ7R/hhXUZMo=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:zh-tw;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEYPR06MB5134.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(1800799024)(366016)(7416014)(376014)(10067099003)(22082099003)(18002099003)(38070700021)(4143699003)(261009223027099003)(56012099006);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dHNOczJaQjd5TkVRd3hTM2xZTlEzZ3N1WUExVUJyVmQrbDFNRDFhalhjeExm?=
 =?utf-8?B?UjRmRXAxVnNyazMyYnpIN2NWbmUzcjJIQ0FULy8vekdFb2pwVTlEOFlseHg2?=
 =?utf-8?B?SFBVSXZNWHh0c25WWUhDQ1hBemhTSkhtK09tMGROYnJoQituR011Um1YN3pB?=
 =?utf-8?B?MHUxeEJyWENxaW9LUm42Q1NYRFVJS3dyMTlQbWpKbThsdWszSEpoMjhvTTBJ?=
 =?utf-8?B?RUNTQytENmVucHRZVlNGZmdvK0VxbElGYWROeTRmUElGK2p6NTFjQWFoSU1T?=
 =?utf-8?B?OTdndW5PNWNmU2JXNmF0bzQyek1yWTJYYzdDRDBLckpJaFlZRWFSQlJUbnBt?=
 =?utf-8?B?R08rSFdZRThkTzNuZ1NTbFlubWRMQlY5TGdWUkVqelIyUzFXL2s2bG9mS2lX?=
 =?utf-8?B?aUduUlNXYVZYVE9LSFZUZGUxcDlsdWxMbm1YeDg3cHo0bzhjUjZxSHM0N3Ju?=
 =?utf-8?B?WGcyZUphVXpyV2FvcW5oTkk2a0JiRWNJKzNBUXJFd0p2bDZnY0RzblVEaUR5?=
 =?utf-8?B?anJlbExneTI4cCtGelAxZXJNRFJwUFZUanE2L1BSY0djekl3SFkwalRPblFH?=
 =?utf-8?B?TGNnanY4WXJSRTByWm81d3ZDa24zaEorWWxuVlk3QTUyMG1PelQxSCt0Ylp4?=
 =?utf-8?B?MXJYN09Yc0FaYXMvVWdNWjZPY050N0V1eDB4eXNUeHQ3RzdjZFUxRXVVUGln?=
 =?utf-8?B?blBEb0hwTUExNFZXRUZLaEwyRTJLT0NWbVcxSVhYdCtvcUI1SjZ3YUpYSVJq?=
 =?utf-8?B?TGVMTHlHcFVQczNyRzUzSUVzSG9KdmNSS01tRURjL1Y5SGFtdW9BN0I2VFE1?=
 =?utf-8?B?b3M0aFhIMlowbVI5MEs2eGkzL1l6OURvTjYvUkdLQmxsUHhrZk9uUGRDdGhp?=
 =?utf-8?B?S3YxRml4NXBORlNRS0N2ZmsyYldjQU5lTWFRNHYyWklCRVlwYjdhZUs1dmY2?=
 =?utf-8?B?RWx4K3J0Sit3OHFDTU9BalBzS3BYY0dHRE5QS2Z2bkpNcUpqT3BrNDZOY1Bz?=
 =?utf-8?B?TTZ0YVBtR0xJWlJzRnFRVnp0NVB3UXp5TUJnOXBOZWJaZGUzQW1kMFA0akZk?=
 =?utf-8?B?VEFENmZkLzRlQU1wVjFxSGkwckY1cTVZMXdTRVR6ZUIrNkoxbVpYTDNwbXpu?=
 =?utf-8?B?cWRYRG44OEZQVUVvTmg0NDZuTUJRQkQ2dXNhaE1pRGJlRUZnWForSGR0Q0kv?=
 =?utf-8?B?b2h2N0svcVVYYmZISnc2ZldjbDhkN2ZEZUU4YjAzc0oraW01WGJMcTVnOFp5?=
 =?utf-8?B?VUxTUUxpVWdkTWpoai9zN3RTTDMwRWlWNmkyVHV5OGRPSWpRMVQyT0lQSy9r?=
 =?utf-8?B?bktta2h5SXFDUStpZ2pqSmRPdHU1WkNCSFBrcFNTdEx1MzA5ZkxBZFBUMWlO?=
 =?utf-8?B?T2w0eFdqRm9DNHVmYU92QlZ6L2I0T2xHK2Y3NUpyK2RLUnFuYXZhMmliRlIv?=
 =?utf-8?B?anpVMEVjTXZIZko1alVOQUtuR0FCU1ZSM2JhZXBXNEo3Nkw5c1hMRStoTWNq?=
 =?utf-8?B?WUVRNzIxam1KTDRWVzZIS01NQ2J2bUxtWnVBSmZvRXMvdFR5TEN1NkNPcmtN?=
 =?utf-8?B?VmplUmhXeUhKOE9zYkJTNkFCSGYvR2p5K0JmV2lDWTUvei9YZXBoNDRsWEVE?=
 =?utf-8?B?Yy9TK3VnWTZtaUdaVXNMZHRjM2o0WVNOMUVEUDYwL0RRNlpncUNvaTRHWXZk?=
 =?utf-8?B?TEE1VFNrMnA2OEREbXNnL3JNMkZNenVwWkl2QmR5Ti9SL3drTVFzaW9ybE5O?=
 =?utf-8?B?eWUxWDJiQXlkVThLQXo1QVU3Q1o3THFSZXc2M0lUSHdKTnpNbTdKeXdadTAy?=
 =?utf-8?B?eDNGS2ZWU25zOUJzbitHRmhmWERGakZrM3h2aVNEaU1iQVZkZWFqUDdHOXRm?=
 =?utf-8?B?RG9tVDBmL0ExMW5sU0hmdThBdGFCUVlLMGVnbmw1WnpNdzE2cVJHZWYyZ1k4?=
 =?utf-8?B?TFhiQnQzNHpueVRqMFEvVUFHMHMxWUgvcGVNWktFMnFuWk16dG5kK29WY25P?=
 =?utf-8?B?K0trWW44Kzk3L1VQNnRXM3NXV3BlcnExVXNxVkZJeTZXRXBKNjhhU2ovdWpK?=
 =?utf-8?B?R21VR1VNbTF3R3YyZ05GUVM5NHJxZFErZWpZQm9Zc3hFc1JsL1lnS1dVZG5j?=
 =?utf-8?B?emgrMW8zMk9XRjBEL2VBTVNGZUh6YnVyOVlpWndBTktBQ0tCMzVQS1IrTlhX?=
 =?utf-8?B?RU1GeXExZTFkWkdLNnNVK0hZTjFvODRLa1Y4aTdoRVdtU3lCSHZMZ2VTVzZ1?=
 =?utf-8?B?WnozR1AySmF4dEZtejJKbDJmeGhHcWtYdjZFYWozUkpxeXRaM2tJRVFmekFI?=
 =?utf-8?B?b0xpS1NWNTgrL2RxcWI0STRSa3pzOHlDaFlHWDYvNWRENmFxOGs4QT09?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR06MB5134.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f13b667f-0be0-45bb-8801-08df28eca3c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2026 05:41:33.4747
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sQFv96tA0XXzrPjJJzh5bWp5OuatIFzyNo8ArUTEsDjS68weS9N536T8LTsHIMLwtqs0/+QBKDQdJ+8yXRqleRyaENvqp+p4ILIj1QULrhI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYNPR06MB8426
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_224143_846785_6F88B9A6 
X-CRM114-Status: GOOD (  17.70  )
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

Hi Krzysztof

Thank you for your reply.

> > Introduce device-binding for ASPEED AST2600/2700 PCIe PHY.
> > The PHY provides the physical layer used by the PCIe controller when
> > operating in root complex mode.
> >
> > Describe the compatible strings, register range, clocks and phy-cells
> > value required by the PHY provider.
> >
> > Signed-off-by: Jacky Chou <jacky_chou@aspeedtech.com>
> > ---
> >  .../bindings/phy/aspeed,ast2600-pcie-phy.yaml      | 49
> ++++++++++++++++++++++
> >  1 file changed, 49 insertions(+)
> >
> > diff --git
> > a/Documentation/devicetree/bindings/phy/aspeed,ast2600-pcie-phy.yaml
> > b/Documentation/devicetree/bindings/phy/aspeed,ast2600-pcie-phy.yaml
> > new file mode 100644
> > index 000000000000..686b2e3d9457
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/aspeed,ast2600-pcie-phy.ya
> > +++ ml
> 
> What? v9 here:
> https://lore.kernel.org/all/20260115-upstream_pcie_rc-v9-1-d6c82a1556a7@a
> speedtech.com/
> from the same person, reviewed, but you ask us to do the same work second
> time? Really?
> 

I'm sorry again for the confusion caused by this submission and for asking reviewers 
to review work that had already been reviewed.

I plan to update this YAML binding in v10. Since the previous version received your 
Reviewed-by tag, could you please clarify what kinds of changes would require me to 
drop the tag and request a fresh review?
I'll document any changes to the binding in the cover letter's changelog.

Thanks,
Jacky

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
