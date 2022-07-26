Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1EF3C43334
	for <linux-phy@archiver.kernel.org>; Tue, 26 Jul 2022 11:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s5J8g/9Nyz83fJexErAR18177bitF/gm6T+GdITkc2I=; b=fvVKt/QAkH+855
	TcVQcd2qs7b7qWZtmTITaLarMX/cUS2k34QhfyTBy6T+AGZtliqYDfg3y+hvJbjTR8wkBhNDhJXGE
	OwnGD5GPlnmANgxnWKa0OQv9nKUW32mwFaWgSpZTcxvrmx6kGxdflZEpweSM8HR37lpZQSGXb5R3M
	eZEaQGhBnA8EObOk9/Oid+h+JDDH2J7WDZyhc+vXLPt/XNBwcy3QQyDlJU4bpE+xcR/03l8gJCO71
	DNBahpqw91reXJK9g7z5xoJ3a3/oYsQ9fqLDzzi2WLxx8J2ZuaMXV7GLa8XNBWsZiOEcdGlwS2w4M
	4H+0L3uAzxz/hXBRNlgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGIqq-00G3AI-5i; Tue, 26 Jul 2022 11:35:48 +0000
Received: from mail-eopbgr70072.outbound.protection.outlook.com ([40.107.7.72] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGIqQ-00G2TZ-17; Tue, 26 Jul 2022 11:35:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OKHEzbJCKtSYF+UTz6klob/DG1hHpARYyCaX8GbLFCun5gJ5zTSLnTrrp88S8AM+4+GtNSasxjFseiV2XQhjTADhEtoUiBDa5A0BKSYtnNbZp3bmGg/puQ4U6jn9YRz9+VMjDe7vQCy2UTJ7VXPqIEHv0UoaoOxy3B2kJYx/XuAnsOgiV7JqN70mKIKqZ4bN0Wqrxr91+6duyQFeLIPi3XniEU2XU+zPIsVLwkwPqtEroWnB5Z/1dMJFIqFC2cPvwKehP8TWNzg1myThAG8MVAYsmVVOnFNlM53xupfXxqoQV4CqxhQQKJKaT8qeDsFi901AVhg4Zbj1jJ6wAjAQ+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4lBEG5sYCbS2frSVb4cGP2Je4HDPhHz193HwzeAP8e8=;
 b=Bm60Ej/blgV8+UaR6gNdm+Umb6ocn47eIdBaEHm96thBzeBFsG1uvh0fkn97JK1d3m7gn2zDvwfBh6lJnmTyeVkZ+G8ZT+jLnAc3kOKh84UIvj/mF1ZBwFotuS4QNthYYTI/ub9lYFuRNW9VgrPpLBa8RPpXw7RTZCusAkovWIzjqgMsh6KkBskvd10bSNqivKfZg8e+2rv9edQ768xG+rI051GKF6af1QYF5glyRzEzXmTJjU4GxiHSheMj6KiwKc0bRR/fwMq4rVuhU90+d/kHJroiTZxEKwuyrVHblBO3yt+2wEe3aukG68NYht3l/LNeCrUVnRf1+MkgEBkGQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4lBEG5sYCbS2frSVb4cGP2Je4HDPhHz193HwzeAP8e8=;
 b=EabqHpdu3yAJ3tKBTnPllkxAX17+8WDcQ9vAN8itl4HO6lGxlY5a+TF/5HmC5c5RI42xAV4A1djmqOElEMzEIM2m4bApv0Of1UuNODx2BaSxSzkE2Iw75ZHFPHDnBSOmsERaUJ56n6+w44p6ZEJNHicjauTCeyZ6nxZF/RWOcFs=
Received: from VI1PR04MB5807.eurprd04.prod.outlook.com (2603:10a6:803:ec::21)
 by DB7PR04MB5420.eurprd04.prod.outlook.com (2603:10a6:10:8e::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.24; Tue, 26 Jul
 2022 11:35:15 +0000
Received: from VI1PR04MB5807.eurprd04.prod.outlook.com
 ([fe80::1df3:3463:6004:6e27]) by VI1PR04MB5807.eurprd04.prod.outlook.com
 ([fe80::1df3:3463:6004:6e27%4]) with mapi id 15.20.5458.024; Tue, 26 Jul 2022
 11:35:14 +0000
From: Camelia Alexandra Groza <camelia.groza@nxp.com>
To: Sean Anderson <sean.anderson@seco.com>, "David S . Miller"
	<davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Madalin Bucur
	<madalin.bucur@nxp.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: Paolo Abeni <pabeni@redhat.com>, Eric Dumazet <edumazet@google.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, Russell King <linux@armlinux.org.uk>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Kishon Vijay
 Abraham I <kishon@ti.com>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Leo Li <leoyang.li@nxp.com>, Rob Herring
	<robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Vinod Koul
	<vkoul@kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>
Subject: RE: [PATCH net-next v3 46/47] arm64: dts: ls1046ardb: Add serdes
 bindings
Thread-Topic: [PATCH net-next v3 46/47] arm64: dts: ls1046ardb: Add serdes
 bindings
Thread-Index: AQHYmJdO9OJQL8uRzkOwnuesK8wAT62I4DBggAAfFwCAAV64UIAFM66AgAEDxaA=
Date: Tue, 26 Jul 2022 11:35:14 +0000
Message-ID:  <VI1PR04MB58071BADCCD64FB726D34DD5F2949@VI1PR04MB5807.eurprd04.prod.outlook.com>
References: <20220715215954.1449214-1-sean.anderson@seco.com>
 <20220715215954.1449214-47-sean.anderson@seco.com>
 <VI1PR04MB58077A401571734F967FAF12F2919@VI1PR04MB5807.eurprd04.prod.outlook.com>
 <5f32679a-3af3-f3ba-d780-5472c4d08a81@seco.com>
 <VI1PR04MB58076F8E57D04F5F438385DCF2909@VI1PR04MB5807.eurprd04.prod.outlook.com>
 <787a4a58-2900-9f06-bb41-2ae96f70b025@seco.com>
In-Reply-To: <787a4a58-2900-9f06-bb41-2ae96f70b025@seco.com>
Accept-Language: en-GB, ro-RO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8c490b8a-eca7-4112-b904-08da6efae88a
x-ms-traffictypediagnostic: DB7PR04MB5420:EE_
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  uzBBrViGZa/uNKPyqiGyqYqo9+Wia8FdwPi7632JBAGmBwRRGcSExAi1T0ojSHo4FC4c1cmbr3r+/WXkq3zMC1czmCNc4JmuuinTzXt9HyuOTLn1nXIcj3gUcpGk/O0FJ/ghzucArnoIQOoMtksYgwCeRjXQpp6nXi8yGUVbVAOngTD11CFZuYod2Pp0fZRn4r1H4FvbJISjjG1ljGPyNm+yVVRc6GDKSMty5uh2FzP6Le3QkbdHPXPJFnkqOUjPbKGbC+TJyNLfD1vhoZr8MlQ36PUsqkqVopXC9579uRIgk4QKGGSPV68fbqdNPlCGcJXVoKJ55gY+OA5jupmddxjU/i/opGofH5MF/EAG2mp/3Io2JVaUDltaGsklrPub8gcRQNMhd4VjiiyjU/ZqpHCjCp00YAiqebl6BdM/39+3jqcfR/R6qPqwwbC6ddBvDYXOHmdvfgWLUhs+slFV5LQpyYQAp7PnBr9l9aW3cPcgYfsKiKToB+pc7Ei+tuHu/8m27Ckf5LID5DZn/DgqAd37fgX6tDNK1aKnoRVhvrTUXtWYCeEmRCpFTPbqXoootXJWE2K/gwYzd1/IeaKoMmXH3PHcTHv7lyAEM2pDuLCo7prDo3p1xuiKPE69ij0l4q0iZkno5UhiRDSI1ZS3JVnAAj2YwAqzyneT/6jyZXLL9pus8Be1NHPd0DERKFj6Hjvfdd90rbvexY9UHPSpvTMU5JWW0MrSvAUY25Eu2UphmfeD6lOzgISJvQ0XLHEYqn6yHK7Q/HGEEqXpOrnn5x72l9ZR2rwP4YlNq7wD6G9GeFBqax+cT1wN2T1WIDvU
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5807.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(376002)(366004)(396003)(346002)(39860400002)(136003)(55016003)(83380400001)(5660300002)(38070700005)(7416002)(8936002)(52536014)(38100700002)(2906002)(54906003)(110136005)(478600001)(66446008)(66556008)(66946007)(4326008)(8676002)(76116006)(122000001)(316002)(41300700001)(66476007)(6506007)(9686003)(53546011)(7696005)(86362001)(26005)(71200400001)(33656002)(186003)(64756008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?aURwNjhFOHl2Y2ljZm40U3VmSTdUMHhNaFgwVHIzL0FYVXBPejdpbWZadFMz?=
 =?utf-8?B?UFlLdmpndTB3UDlUa1FBYmVuQW83aFkzamU3QnlsdjNjV3ZLYUM0aENTWXNR?=
 =?utf-8?B?bm5aQUl0WmpkRmRGZThDNnFBQnpIRVVOU2xyZ0daWm9vOUJNTGVScEczcEF3?=
 =?utf-8?B?dU9kdE11K28yNEpMejlIRzlYN0ZXWURnRVd1OVd6Nmg0WHNuWEQxbDE1M1pZ?=
 =?utf-8?B?aUhJNlZLN1VNQlc0M0pSVXNiNHJFVTYyNXRNYWFJQi80dzdBd1FGU3lFOXMy?=
 =?utf-8?B?TU41TXZjaitJTkFmTmluY2NaUkpGUXJFcWJ2ZWdZR0txRFpKS1d1S2UyaHY0?=
 =?utf-8?B?M1NvdFJaZnBjeGE2M012bXhsY3Mvb2lwYkpna3RrRXRhZnJoeXFuVFI5amtW?=
 =?utf-8?B?VTBZNmVoMkdvVGtBYTYyWHIxTjQzcVpVL1J2UlB5ZjVneVcrSG91bTgxZUtn?=
 =?utf-8?B?MHYvWElmWENtbWY5Zm95VkFiczY4Q0V5Zy90Z2lxVnZSY3MxMjJDWWF5SThY?=
 =?utf-8?B?enBseFFSdGFRZVpQTS9oWjJlRzFPSTdZNkY0UmFlU2VPRmxWVmx0bzlSaWxw?=
 =?utf-8?B?cURHNHlWeUpJN2k2SUtRc3BqS0NLNEF0dHkyWFh1S3FBOFJ0M2JtR2pjSnNS?=
 =?utf-8?B?VnpId2JtWUw4VGtETFJkamR5TFFqNEw3SElHYm5XUGdvVUpYcGROSU55MUJQ?=
 =?utf-8?B?d0VGRmRmYTA1bU5JU0JVRXlqdmljalNTRUJaYm96WXN6RkdrZHNXUkVwMHBy?=
 =?utf-8?B?OVBXd1dMcVJNbGxnSXU4ancxTC9JZ0d6QUt2WHVvMkhHL0s5Y09tNDc0aTRm?=
 =?utf-8?B?cno2bERESWhjc3A5aUVnYUIrWEFIUFFpNHRkbkszcHVwNjZacWczUkszUERJ?=
 =?utf-8?B?eXd1dkxPYlFJdVR0eWF4K2h1NHZKRlFubEk5ZCt1NTR2Z1pjVENpSkFJVXo0?=
 =?utf-8?B?MDUzN0hFVUxnR01QbTJTb2daVndvSS92T1RkUzZwcU5NUUZZbzhQZ3BmcDNq?=
 =?utf-8?B?T3RRK2FvRmk0QlovVUgyb2pIRmd1dGZLdzNEaXBSaHA3dXdvWmpCTTdUcldU?=
 =?utf-8?B?YzFUN1RHbWRhSW5sRFNkL0pDUDhodFRETVFZTnVyYXJKK2Z0S2tQcHRWWmpo?=
 =?utf-8?B?ZzB5TTI4UHhPZ0xuWlRyRnJrUjUva2V5RjlBVE1yRW12MVVjUDlVTFFUWEFw?=
 =?utf-8?B?R2wwK3dtOWZWWGxXb1VRSkhQaURRRG5ScXVuaXh6SzFkU0tud0RjRjhPS1FZ?=
 =?utf-8?B?dGhjbEg0NmtVS3JxaEtueC8zSDJmZHIrQ3FySVROV2tSSUZYUmVQZk5KVUFt?=
 =?utf-8?B?QVFRZDdQMkxYazdCUlhsamE2UHFjZnJhOCsrOGRGaDBoZHJTUGVqYTRSZDFO?=
 =?utf-8?B?WXhQcTduOStLS3dlNHE0L25hS3pVeloyMWtVdVU2VlY4am9NZ3NNTGY4UzBk?=
 =?utf-8?B?TzBMeHQ1bnRWY1BPSXVxNXdZM3dya0hvSjh2aUFRWUgxNzczdUhWUDFYTExT?=
 =?utf-8?B?bjE1SlFIWHRoaFBWckFqeTJ3T2JsUmZUQUl5ZTRTNjhzQUJIQTlEM01la1Rr?=
 =?utf-8?B?eXFUQ2lCSWc1Q3gvdU0vM1BTRjNjTmlqSEhOU1cyaHNZcGRMQ25JdmdWayt3?=
 =?utf-8?B?b09OTUQ2SDRFWDJyNmJibW1PVysxTVF6Rk9RaWhDWVdhdGpyKy9qYTNjVVZw?=
 =?utf-8?B?cWtFOWxjdWkwZzAweGZ4UUZKVzJ4SGRKR3NxdFdOQjRlNzBuY1ZtNDNLZ0Fw?=
 =?utf-8?B?RWRtaTRpbzdGMkNyWVRRdndNWDM3SFBuQUlRUlM3UVdUYUd4bmJmYXM3RWZN?=
 =?utf-8?B?ZFIxNnNFTUZYMVFNMjh0L1R6eTNzQkVUdkI2UFZDWTd6eGU3TUJTVnhDdFdv?=
 =?utf-8?B?SGw3YzdGOEhTUSszZjcveS9Ybk5lMUVTT1hMamVYMDdwNDlKYUdlMlovRzZh?=
 =?utf-8?B?ZFhDNlVSbFAvK1hDN29vUHNjbmN1aTRwd2QxV0FJYklXclp6R211VW1BVFJT?=
 =?utf-8?B?VktQS0l1VWxXYVozYTYvYlBvdzFUa2pOR0wvRW92NnlZd0dEWW10MldTZWs2?=
 =?utf-8?B?bVU3ZTl2YnVZNzY0T3d3MmtaM21Cb2N6Z2VvbmQxYlFVaUZpR1ZGaUtHS25E?=
 =?utf-8?Q?lwU1nlq8jm+LJjOGeX+I8zGtd?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5807.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c490b8a-eca7-4112-b904-08da6efae88a
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2022 11:35:14.8162
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WQhRVyOO4o6CKUK/zK6qebHcb+RJmGYODkPYgAyWfZqPhR4+1JMC8U9l75Nlt/Su3LB/BJTGsgKng28NIpj/nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5420
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220726_043522_285250_18193BB1 
X-CRM114-Status: GOOD (  28.46  )
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

> -----Original Message-----
> From: Sean Anderson <sean.anderson@seco.com>
> Sent: Monday, July 25, 2022 23:02
> To: Camelia Alexandra Groza <camelia.groza@nxp.com>; David S . Miller
> <davem@davemloft.net>; Jakub Kicinski <kuba@kernel.org>; Madalin Bucur
> <madalin.bucur@nxp.com>; netdev@vger.kernel.org
> Cc: Paolo Abeni <pabeni@redhat.com>; Eric Dumazet
> <edumazet@google.com>; linux-arm-kernel@lists.infradead.org; Russell
> King <linux@armlinux.org.uk>; linux-kernel@vger.kernel.org; Kishon Vijay
> Abraham I <kishon@ti.com>; Krzysztof Kozlowski
> <krzysztof.kozlowski+dt@linaro.org>; Leo Li <leoyang.li@nxp.com>; Rob
> Herring <robh+dt@kernel.org>; Shawn Guo <shawnguo@kernel.org>; Vinod
> Koul <vkoul@kernel.org>; devicetree@vger.kernel.org; linux-
> phy@lists.infradead.org
> Subject: Re: [PATCH net-next v3 46/47] arm64: dts: ls1046ardb: Add serdes
> bindings
> 
> 
> 
> On 7/22/22 8:41 AM, Camelia Alexandra Groza wrote:
> >> -----Original Message-----
> >> From: Sean Anderson <sean.anderson@seco.com>
> >> Sent: Thursday, July 21, 2022 18:41
> >> To: Camelia Alexandra Groza <camelia.groza@nxp.com>; David S . Miller
> >> <davem@davemloft.net>; Jakub Kicinski <kuba@kernel.org>; Madalin
> Bucur
> >> <madalin.bucur@nxp.com>; netdev@vger.kernel.org
> >> Cc: Paolo Abeni <pabeni@redhat.com>; Eric Dumazet
> >> <edumazet@google.com>; linux-arm-kernel@lists.infradead.org; Russell
> >> King <linux@armlinux.org.uk>; linux-kernel@vger.kernel.org; Kishon Vijay
> >> Abraham I <kishon@ti.com>; Krzysztof Kozlowski
> >> <krzysztof.kozlowski+dt@linaro.org>; Leo Li <leoyang.li@nxp.com>; Rob
> >> Herring <robh+dt@kernel.org>; Shawn Guo <shawnguo@kernel.org>;
> Vinod
> >> Koul <vkoul@kernel.org>; devicetree@vger.kernel.org; linux-
> >> phy@lists.infradead.org
> >> Subject: Re: [PATCH net-next v3 46/47] arm64: dts: ls1046ardb: Add
> serdes
> >> bindings
> >>
> >>
> >>
> >> On 7/21/22 10:20 AM, Camelia Alexandra Groza wrote:
> >> >> -----Original Message-----
> >> >> From: Sean Anderson <sean.anderson@seco.com>
> >> >> Sent: Saturday, July 16, 2022 1:00
> >> >> To: David S . Miller <davem@davemloft.net>; Jakub Kicinski
> >> >> <kuba@kernel.org>; Madalin Bucur <madalin.bucur@nxp.com>;
> >> >> netdev@vger.kernel.org
> >> >> Cc: Paolo Abeni <pabeni@redhat.com>; Eric Dumazet
> >> >> <edumazet@google.com>; linux-arm-kernel@lists.infradead.org;
> Russell
> >> >> King <linux@armlinux.org.uk>; linux-kernel@vger.kernel.org; Sean
> >> Anderson
> >> >> <sean.anderson@seco.com>; Kishon Vijay Abraham I
> <kishon@ti.com>;
> >> >> Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>; Leo Li
> >> >> <leoyang.li@nxp.com>; Rob Herring <robh+dt@kernel.org>; Shawn
> Guo
> >> >> <shawnguo@kernel.org>; Vinod Koul <vkoul@kernel.org>;
> >> >> devicetree@vger.kernel.org; linux-phy@lists.infradead.org
> >> >> Subject: [PATCH net-next v3 46/47] arm64: dts: ls1046ardb: Add serdes
> >> >> bindings
> >> >>
> >> >> This adds appropriate bindings for the macs which use the SerDes. The
> >> >> 156.25MHz fixed clock is a crystal. The 100MHz clocks (there are
> >> >> actually 3) come from a Renesas 6V49205B at address 69 on i2c0. There
> is
> >> >> no driver for this device (and as far as I know all you can do with the
> >> >> 100MHz clocks is gate them), so I have chosen to model it as a single
> >> >> fixed clock.
> >> >>
> >> >> Note: the SerDes1 lane numbering for the LS1046A is *reversed*.
> >> >> This means that Lane A (what the driver thinks is lane 0) uses pins
> >> >> SD1_TX3_P/N.
> >> >>
> >> >> Because this will break ethernet if the serdes is not enabled, enable
> >> >> the serdes driver by default on Layerscape.
> >> >>
> >> >> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> >> >> ---
> >> >> Please let me know if there is a better/more specific config I can use
> >> >> here.
> >> >>
> >> >> (no changes since v1)
> >> >
> >> > My LS1046ARDB hangs at boot with this patch right after the second
> SerDes
> >> is probed,
> >> > right before the point where the PCI host bridge is registered. I can get
> >> around this
> >> > either by disabling the second SerDes node from the device tree, or
> >> disabling
> >> > CONFIG_PCI_LAYERSCAPE at build.
> >> >
> >> > I haven't debugged it more but there seems to be an issue here.
> >>
> >> Hm. Do you have anything plugged into the PCIe/SATA slots? I haven't
> been
> >> testing with
> >> anything there. For now, it may be better to just leave it disabled.
> >>
> >> --Sean
> >
> > Yes, I have an Intel e1000 card plugged in.
> >
> > Camelia
> >
> 
> Can you try the following patch? I was able to boot with PCI with it applied.

Works for me as well. The board boots fine and the PCI card is functional. Thanks. 

> From 71f4136f1bdda89009936a9c24561b60e0554859 Mon Sep 17 00:00:00
> 2001
> From: Sean Anderson <sean.anderson@seco.com>
> Date: Mon, 25 Jul 2022 16:01:16 -0400
> Subject: [PATCH] arm64: dts: ls1046a: Fix missing PCIe lane
> 
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
> b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
> index 0b3765cad383..3841ba274782 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
> @@ -532,7 +532,7 @@ pcie-0 {
>  					/* PCIe.1 x1 */
>  					cfg-1 {
>  						fsl,cfg = <0x1>;
> -						fsl,first-lane = <1>;
> +						fsl,first-lane = <0>;
>  					};
> 
>  					/* PCIe.1 x4 */
> @@ -543,6 +543,14 @@ cfg-3 {
>  					};
>  				};
> 
> +				/* PCIe.2 x1 */
> +				pcie-1 {
> +					fsl,index = <1>;
> +					fsl,proto = "pcie";
> +					fsl,cfg = <0x1>;
> +					fsl,first-lane = <1>;
> +				};
> +
>  				pcie-2 {
>  					fsl,index = <2>;
>  					fsl,proto = "pcie";
> --
> 2.35.1.1320.gc452695387.dirty
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
