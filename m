Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA942C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jun 2022 18:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:References:Cc:To:From:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oVv32dRZQPr+HSbSvQYVZtowW3aF/cVxVZkTk/pu2JE=; b=pEEzdafJJjRMIZ+MY/yBShp2ll
	F5t/d1cN20r4mfB33vFr3QwVX/dzG4vUxmgVGc6Kcwv9nmheOGnDb+eq6KZq0NtdPcNyNQom1z9Hq
	+zWzLNqYEO8SAdhCM8WCN+r++Jl23BwPPHS9Tt+tQXhmwT9x/VWNRndTH6o4U1InVJelF4+wZeqWG
	MCZddePQKH2g1xmMfXZppOnvGvEh/UmZWCKomGMVMlOATMC2qGKW1CI8RImQlhX9HsobPY2aYY1X6
	DNtHf6IWDSYBCcyfSqseDxExht3/DfiG3MmxC/azzxpX6Q9IMCxOlGn/53PuZ8+v6I+3my/bWA//M
	6xkelFIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3MWX-001wfg-92; Mon, 20 Jun 2022 18:53:21 +0000
Received: from mail-vi1eur05on20600.outbound.protection.outlook.com ([2a01:111:f400:7d00::600] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3MWT-001wdk-Uf; Mon, 20 Jun 2022 18:53:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VjlXjTq5KU8gWOdp8cHny4z1JcJHfD7atjQwqcTPtr6iitY8dvDjV8KaFlzxtxtknkIR5Yd3S4Fim0eg8p3cMi1oeD/jnD7fK1Jccp2g54eXAyBrigGSsL3aruJALBUBtHr+/SBC5AGSB2ylgDJro5HCJqsGiJgIzYI8/eo8HEeZ5amNEJGm7Wy8ZeI+/VMuMnwo1RSvGtftDPGfDXv8SPfWb4vtFCfuEnJatacqXze9tVrIVmtml0/uJ35t0CKTpnjCoAnlDstv8hBKIJCZxibBfADzCt0Pul3gEt7noE/x/gD3ZLDtdEgWKR0EPTy6RfF3TerDBKEAm6FjE//D4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8GFSa9zQRzQAuOHvdZF1CA9Egvv4ZbfvbkG5jLqdX+c=;
 b=UnkSV3SUf48KRq1bRjBEXRTuFD55nRW3TGXw/H+RvpPncabZYrO7SPpUiQqXuUG2HAH9Xc4qmMRnC7fxnTw0Yj2zMj3tNSUY5cNFDmcmj0iYED04shXxQ+EpA0URtkkjmOi0VhizvsFKGpiUBariS2bbX9vQPs4g+SSuSaSDJ13qbhpeSRAUKWqy1/M1iSG+r7p9FvxfsVB8SbjeP+YPnAXr5YYJ6apdNz4rBEvowxYgoMfqGY8zJHcMhXC2vjRy90LBdJu8j89SMUfxojX28is6r5iAA2D5zyKv/2EJlyQCZroxxi4PSmXWo8/gli1/v3mxZAo8us3B4YGx9LRHDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seco.com; dmarc=pass action=none header.from=seco.com;
 dkim=pass header.d=seco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8GFSa9zQRzQAuOHvdZF1CA9Egvv4ZbfvbkG5jLqdX+c=;
 b=TJgRrO9xsyrJF2Nb6UBujFxAo+4qiuBDU142NpGuIHJFezM280Wu9IV4yp7+ID3xOE7nJ033hRAUcgEx4n7SAQUihm9obB74S/7UoIB6n+rqev/8l6i+FGQuwGYvTEQxqjCeC1TO6oR9Fo23WMxSB3V6WBC2oiBn7Hwv32o+/3bgcdxku2UFisz/1kCrnc/5yAMht4zTJQlk3U0yShVB5300S1h3KgWRpbxbFjFriQY4jHQlgZ1Dxnkjbsqi0Kg2mTPIAcrQICOx6T45D4i+PORihjNQ13p/kYviAU+QSTZYm6Y4iRd1CtU0RI6RCeWLeXnvajaUkI7SnTmk6z6k9g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seco.com;
Received: from DB7PR03MB4972.eurprd03.prod.outlook.com (2603:10a6:10:7d::22)
 by AM9PR03MB7646.eurprd03.prod.outlook.com (2603:10a6:20b:413::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.22; Mon, 20 Jun
 2022 18:53:13 +0000
Received: from DB7PR03MB4972.eurprd03.prod.outlook.com
 ([fe80::757e:b75f:3449:45b1]) by DB7PR03MB4972.eurprd03.prod.outlook.com
 ([fe80::757e:b75f:3449:45b1%6]) with mapi id 15.20.5353.022; Mon, 20 Jun 2022
 18:53:13 +0000
Subject: Re: [PATCH net-next 03/28] phy: fsl: Add QorIQ SerDes driver
From: Sean Anderson <sean.anderson@seco.com>
To: Ioana Ciornei <ioana.ciornei@nxp.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Madalin Bucur <madalin.bucur@nxp.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Paolo Abeni <pabeni@redhat.com>,
 Russell King <linux@armlinux.org.uk>, Eric Dumazet <edumazet@google.com>,
 Jonathan Corbet <corbet@lwn.net>, Kishon Vijay Abraham I <kishon@ti.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
References: <20220617203312.3799646-1-sean.anderson@seco.com>
 <20220617203312.3799646-4-sean.anderson@seco.com>
 <GV1PR04MB905598703F5E9A0989662EFDE0AE9@GV1PR04MB9055.eurprd04.prod.outlook.com>
 <GV1PR04MB9055F41AD598F85648B54EE2E0AE9@GV1PR04MB9055.eurprd04.prod.outlook.com>
 <df411ea9-b12e-09f2-6f96-0fb4a023cb7d@seco.com>
Message-ID: <0c5f8436-66bf-0ed0-f556-8ff5f59d3139@seco.com>
Date: Mon, 20 Jun 2022 14:53:07 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <df411ea9-b12e-09f2-6f96-0fb4a023cb7d@seco.com>
Content-Language: en-US
X-ClientProxiedBy: MN2PR10CA0023.namprd10.prod.outlook.com
 (2603:10b6:208:120::36) To DB7PR03MB4972.eurprd03.prod.outlook.com
 (2603:10a6:10:7d::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d4043e3a-899c-4cad-f75b-08da52ee20bf
X-MS-TrafficTypeDiagnostic: AM9PR03MB7646:EE_
X-Microsoft-Antispam-PRVS: 	<AM9PR03MB76463A955C729E782248F01196B09@AM9PR03MB7646.eurprd03.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	GsJ36C1gO2gk+k3QJBvj+QWKwMI516mUg9C00W1DTqYV1Ms+t7vEfRKpDo3B9vIWu7uw5IGocr/BI/HO0sDFFyP+ckynyc57/7pz7K8OKCDyBEY1+OXg170PnMj+iSgtqeufN4g1aVSUT3uylDh4MfDq2+lHWVLqRl7jRuaiS/bWrjiF9J7+zIwLXyJw3VxcXxaScCc8PJ9OZa7bYOOkZQn2hsVQjU0nTVh0rU6RmAkRnExZNApVPaQC9FD/SBCtBYuK9jQxtFX8FJjo7rNiMps5YAh4t9FfXlVbW3gk5H+sOp3OQQy/MaebP7sov9xavCPSXE1LMPNyByEBXN7MquGA+Nez3kop5zwkoqRC85Hs0k4d9YMyEj8Jqb7eiErrpXu9tRc+YFkTQQzShyVqO0diDyTi4gk6lQLHkbWjtR0dmEXerajw6BWow/jei3X8NrIj8gayaQfvwPnSv6P3wyJTnrmRCHd3Gm2AFztwqVj0kjeoKlkrCxp+gJ4HdbeJBWvsGLG/Wdtze4BQEmTYNM7V3s4rXMWBy/a9OOyqY6LCk2Ga4sts0CIgT/65sYK10tO0QcUIPXwD+6kj8jPlLbzD+V3PW87gbTgekxB5khag8afl73hBXCr1lQJhAoqkh030P2oAhDhmXKUdN/C7a6pC5l6V5FRKd6VAKAd6Ra72W0JcW+cnE2q3bcEwyoDcKOxBkG/fMgutXSCnKKaPCVzKstI5LpkX5rz/AjyzQaw6EsmO9jctcKLkbqbaXNN4SKhHiMVXdF0rid+rGAHz8w==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR03MB4972.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(376002)(396003)(366004)(136003)(39850400004)(346002)(53546011)(52116002)(6506007)(6666004)(2616005)(41300700001)(186003)(26005)(38100700002)(38350700002)(86362001)(31696002)(6512007)(110136005)(83380400001)(8676002)(44832011)(4326008)(66476007)(36756003)(66556008)(66946007)(6486002)(478600001)(8936002)(31686004)(5660300002)(2906002)(316002)(7416002)(54906003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?NTNERk40MUVIcGVOc2hEV1VnL2haWmdIVHVXa0lSY2Jkc0hzcU41TlJQODlH?=
 =?utf-8?B?akN0RXhmK1MvQVVCczNsNWFGRGxWQW0rSjVsQUJKYjhXYm5kRnIxcW51MWZt?=
 =?utf-8?B?YkJ6R1piRnBJbTFuUjBkRWhNWThpL3FKdWlmbGtqeXFCR0ZwdGh6YWZlVjFz?=
 =?utf-8?B?UmI5RHFQRUkxSmxVYXBPZWtJVEMrYmRpUEMxdnk4TTY2dVBSSTcyQ085Q29I?=
 =?utf-8?B?RzlId0xTSEFGUGYyUVp3cEFNS2Z2Q3J6dlNFbGY0dm9hc21Ca3llZUN5QXhl?=
 =?utf-8?B?Vkt2dlZTSXVFOU1XQ2JZSTVYbWh4ZGtNTFppN0pwNjBxK09scDVHM0lSUFJu?=
 =?utf-8?B?SHl2MmNrRTlZZmhBb1l2eUR6WWFTVlJ3SDJzajZBUURFNTIrUnZQYVFqSHht?=
 =?utf-8?B?SndiRGVicDA5cFBmdlpLY0tPS1RuZUdXa3J6MC9KZXRvaUJJb0J3WDBKbE5G?=
 =?utf-8?B?SDI4MStzaXljUjFxZitLSnhPUlRjSGZWM2tXUk1WaXlKci9STnlaZGE2ZjRF?=
 =?utf-8?B?cU0zM3hlM25XU3hRdG4wY2NYNHJrOWprMVRlQXFPTUVvc3M0RkpmQlZjVlYw?=
 =?utf-8?B?YlE5S2RSSkxOUjRkcnl1czYyS083VlpJTGYraW1vWC9FS1NDZFlLdWxBdldK?=
 =?utf-8?B?bWx1eG4wNlJ0a29YcmxDL0dhZ0NkekZ6UkRPZDVZdUs5WTkwL0JobWRVY25x?=
 =?utf-8?B?TEowc1UvOXRmV0EybGNwZ1FUNGRpTlpiUStCZG9pbXJ0Wlk3b0xtRnY4S09C?=
 =?utf-8?B?SlQvQWZpUUtVM01ZR2x5V2RRWHNLWjNYZzRLa2w3VUR4RU5QK0hGSEVKVStv?=
 =?utf-8?B?UTJzZjlmcysyNE9XbkpHbXVESE1xTFk4dXRTRyszc2M3TG81dWxpRTVxcXB3?=
 =?utf-8?B?U1I0SFhvU0ZxazIyRmR1Z2p4TE9mcWNLeVBjMFphN0RlS0tqWDkyTjFPdlVy?=
 =?utf-8?B?UDcvbGNHYVh6cGlXOTR3RkVNM2xhZ0V6a1dhSW4yR1lRRFdUYzh4cDY3OGpW?=
 =?utf-8?B?ckxDbHNjR0xMMndYVDVKYzBMRkdEWHBsWXErMWZDQ3hnSlJtQ1psN2ZFanRi?=
 =?utf-8?B?aWx1c2RPWkY2YS9JVVhlZFhsVGNIQzZiQjRkdVEzbUJtNGRpWnVhT3loQmMw?=
 =?utf-8?B?RUVjdnFsUzA3alJSdmhCcjhBVXhjZU9PR3JGYW9xN0t5TG0yQllZcWtaQXNK?=
 =?utf-8?B?ZmRsOHc0VmcwMkVrc21DM0hCNHNWS1NMQ1p4NXZSKytGejhyUEgyOXYxSnE4?=
 =?utf-8?B?K3RrdXlkNTBoRjdXVUxMYUpSVmNFVzFjY0FjbThFTnhiNVJrWkVSSTZsaE90?=
 =?utf-8?B?cXVPelFaRHFXZnlSYWt4RDhkY2g3RkdHVlhaVG9BZVdWcWhjaXFrZjNISnFW?=
 =?utf-8?B?UTV3ZHhCTld2WHduZjhrKy9WMWdmQ040eXVYYUdweTlmZ09jUThZeHRFdTU5?=
 =?utf-8?B?Q0dHTGhab1duYWdlLy9uNmZVZEliNnc0WEY5YnI0cUIzWnhtOHlOMi81Uk9z?=
 =?utf-8?B?N3l4SlhpcnFHTDlrZ2FkU2ZDQW10cENESERKYWhNWFdtcGEwNXZjY3ZkQUQr?=
 =?utf-8?B?NUxFZEdnYjBVTUNGa1hITmwrdVBQQ25ROStYdi94QWhGVjM5S2NnaWJqWmxQ?=
 =?utf-8?B?dUFUekVvaVlMOWRFS3l4eG1pYXJoS2NadndhTysxdzVLWmVCZGUxMlVvN0Ny?=
 =?utf-8?B?ZjNWSkJUcHNjZDR2MHkzRUJraFdZb2x4aXA3T1YyaS9FUENpa2g5S0EwbnJ6?=
 =?utf-8?B?UUswZ0paeG1XcGo4Q3psTUhEaHZ1Q1U5YmdST0hOdmlOWis4OGp1dHlMU1RU?=
 =?utf-8?B?ejJ4c0xyY1RYZFJsckt1TFFLT1hLYW1CZlA3RG5wRld1a3ljSEh2WkQ2NGMx?=
 =?utf-8?B?QmtrK0kwMDgvK0l6WGZkRkJFN3FzQkpuRjdyV3RDdkJiNlRaaXJtOWRxTjNY?=
 =?utf-8?B?N2VEWmk2RUwzcVVPbjY2YmJ2TUdSYXB0cmRzOTBSbXZCVXVhRmM3ajFJUkJW?=
 =?utf-8?B?L0FGQ1ZTejM5amtjVTN4UE42d1Rxek82bTZDWldZUmNTQXF3TGJIUHg5cVBK?=
 =?utf-8?B?M3czc1lOWUZpTFI3VG4zTjdWNTNZVlJVK252VnA2a0oyaVA4VG9ISWk3RThS?=
 =?utf-8?B?OHB6S3NTV2dvR2hjTzk3c2ZDelBKNXJwWVhkMzdRWlZFbkdpUFlEVS9BaHNT?=
 =?utf-8?B?VlhCdmtIcmdmUmQ3KzY1K3lpdUV5cjJyVkVpQlhqcyswc015WHFoREZublRM?=
 =?utf-8?B?bVhkc1lHRzJRS0Zpb0RkeFlsa1U3akMwL3ZVRHAzYkRNcEc0OTMvT0pNZFZp?=
 =?utf-8?B?VmpVQ2xQWkIyYlZ2bDROamtrbGRkaGdPODcwelY0cWZTaXVtR2o0aTJYRmds?=
 =?utf-8?Q?VaeeVAlQYKKtm6TQ=3D?=
X-OriginatorOrg: seco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4043e3a-899c-4cad-f75b-08da52ee20bf
X-MS-Exchange-CrossTenant-AuthSource: DB7PR03MB4972.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2022 18:53:13.3210
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bebe97c3-6438-442e-ade3-ff17aa50e733
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RHUZZzb9qytGa7/HrElsUjGU5lFtA42JEnwhCtXDLA3wg2eg3f+57OVEZ4VzqdA7g2UNkmWrmxEpnncRLgGW6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR03MB7646
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_115318_200176_5138672D 
X-CRM114-Status: GOOD (  36.87  )
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

CgpPbiA2LzE4LzIyIDExOjUyIEFNLCBTZWFuIEFuZGVyc29uIHdyb3RlOgo+IEhpIElvYW5hLAo+
IAo+IE9uIDYvMTgvMjIgODozOSBBTSwgSW9hbmEgQ2lvcm5laSB3cm90ZToKPj4+PiBTdWJqZWN0
OiBbUEFUQ0ggbmV0LW5leHQgMDMvMjhdIHBoeTogZnNsOiBBZGQgUW9ySVEgU2VyRGVzIGRyaXZl
cgo+Pj4+Cj4+Cj4+IFNvcnJ5IGZvciB0aGUgcHJldmlvdXMgSFRNTCBmb3JtYXR0ZWQgZW1haWwu
Li4KPj4KPj4+Cj4+PiBIaSBTZWFuLAo+Pj4KPj4+IEkgYW0gdmVyeSBtdWNoIGludGVyZXN0ZWQg
aW4gZ2l2aW5nIHRoaXMgZHJpdmVyIGEgZ28gb24gb3RoZXIgU29DcyBhcyB3ZWxsCj4+PiBidXQg
YXQgdGhlIG1vbWVudCBJIGFtIGluIHZhY2F0aW9uIHVudGlsIG1pZCBuZXh0IHdlZWsuCj4gCj4g
UGxlYXNlIGxldCBtZSBrbm93IHlvdXIgcmVzdWx0cy4gSSBoYXZlIGRvY3VtZW50ZWQgaG93IHRv
IGFkZCBzdXBwb3J0IGZvcgo+IGFkZGl0aW9uYWwgU29Dcywgc28gaG9wZWZ1bGx5IGl0IHNob3Vs
ZCBiZSBmYWlybHkgc3RyYWlnaHRmb3J3YXJkLgo+IAo+Pj4+IFRoaXMgYWRkcyBzdXBwb3J0IGZv
ciB0aGUgIlNlckRlcyIgZGV2aWNlcyBmb3VuZCBvbiB2YXJpb3VzIE5YUCBRb3JJUSBTb0NzLgo+
Pj4+IFRoZXJlIG1heSBiZSB1cCB0byBmb3VyIFNlckRlcyBkZXZpY2VzIG9uIGVhY2ggU29DLCBl
YWNoIHN1cHBvcnRpbmcgdXAgdG8KPj4+PiBlaWdodCBsYW5lcy4gUHJvdG9jb2wgc3VwcG9ydCBm
b3IgZWFjaCBTZXJEZXMgaXMgaGlnaGx5IGhldGVyb2dlbmVvdXMsIHdpdGgKPj4+PiBlYWNoIFNv
QyB0eXBpY2FsbHkgaGF2aW5nIGEgdG90YWxseSBkaWZmZXJlbnQgc2VsZWN0aW9uIG9mIHN1cHBv
cnRlZAo+Pj4+IHByb3RvY29scyBmb3IgZWFjaCBsYW5lLiBBZGRpdGlvbmFsbHksIHRoZSBTZXJE
ZXMgZGV2aWNlcyBvbiBlYWNoIFNvQyBhbHNvCj4+Pj4gaGF2ZSBkaWZmZXJpbmcgc3VwcG9ydC4g
T25lIFNlckRlcyB3aWxsIHR5cGljYWxseSBzdXBwb3J0IEV0aGVybmV0IG9uIG1vc3QKPj4+PiBs
YW5lcywgd2hpbGUgdGhlIG90aGVyIHdpbGwgdHlwaWNhbGx5IHN1cHBvcnQgUENJZSBvbiBtb3N0
IGxhbmVzLgo+Pj4+Cj4+Pj4gVGhlcmUgaXMgd2lkZSBoYXJkd2FyZSBzdXBwb3J0IGZvciB0aGlz
IFNlckRlcy4gSSBoYXZlIG5vdCBkb25lIGV4dGVuc2l2ZQo+Pj4+IGRpZ2dpbmcsIGJ1dCBpdCBz
ZWVtcyB0byBiZSB1c2VkIG9uIGFsbW9zdCBldmVyeSBRb3JJUSBkZXZpY2UsIGluY2x1ZGluZwo+
Pj4+IHRoZSBBTVAgYW5kIExheWVyc2NhcGUgc2VyaWVzLiBCZWNhdXNlIGVhY2ggU29DIHR5cGlj
YWxseSBoYXMgc3BlY2lmaWMKPj4+PiBpbnN0cnVjdGlvbnMgYW5kIGV4Y2VwdGlvbnMgZm9yIGl0
cyBTZXJEZXMsIEkgaGF2ZSBsaW1pdGVkIHRoZSBpbml0aWFsCj4+Pj4gc2NvcGUgb2YgdGhpcyBt
b2R1bGUgdG8ganVzdCB0aGUgTFMxMDQ2QS4gQWRkaXRpb25hbGx5LCBJIGhhdmUgb25seSBhZGRl
ZAo+Pj4+IHN1cHBvcnQgZm9yIEV0aGVybmV0IHByb3RvY29scy4gVGhlcmUgaXMgbm90IGEgZ3Jl
YXQgbmVlZCBmb3IgZHluYW1pYwo+Pj4+IHJlY29uZmlndXJhdGlvbiBmb3Igb3RoZXIgcHJvdG9j
b2xzIChTQVRBIGFuZCBQQ0llIGhhbmRsZSByYXRlIGNoYW5nZXMgaW4KPj4+PiBoYXJkd2FyZSks
IHNvIHN1cHBvcnQgZm9yIHRoZW0gbWF5IG5ldmVyIGJlIGFkZGVkLj4KPj4+PiBOZXZlcnRoZWxl
c3MsIEkgaGF2ZSB0cmllZCB0byBwcm92aWRlIGFuIG9idmlvdXMgcGF0aCBmb3IgYWRkaW5nIHN1
cHBvcnQKPj4+PiBmb3Igb3RoZXIgU29DcyBhcyB3ZWxsIGFzIG90aGVyIHByb3RvY29scy4gU0FU
QSBqdXN0IG5lZWRzIHN1cHBvcnQgZm9yCj4+Pj4gY29uZmlndXJpbmcgTE5tU1NDUjAuIFBDSWUg
bWF5IG5lZWQgdG8gY29uZmlndXJlIHRoZSBlcXVhbGl6YXRpb24KPj4+PiByZWdpc3RlcnMuIEl0
IGFsc28gdXNlcyBtdWx0aXBsZSBsYW5lcy4gSSBoYXZlIHRyaWVkIHRvIHdyaXRlIHRoZSBkcml2
ZXIKPj4+PiB3aXRoIG11bHRpLWxhbmUgc3VwcG9ydCBpbiBtaW5kLCBzbyB0aGVyZSBzaG91bGQg
bm90IG5lZWQgdG8gYmUgYW55IGxhcmdlCj4+Pj4gY2hhbmdlcy4gQWx0aG91Z2ggdGhlcmUgYXJl
IDYgcHJvdG9jb2xzIHN1cHBvcnRlZCwgSSBoYXZlIG9ubHkgdGVzdGVkIFNHTUlJCj4+Pj4gYW5k
IFhGSS4gVGhlIHJlc3QgaGF2ZSBiZWVuIGltcGxlbWVudGVkIGFzIGRlc2NyaWJlZCBpbiB0aGUg
ZGF0YXNoZWV0Lgo+Pj4+Cj4+Pj4gVGhlIFBMTHMgYXJlIG1vZGVsZWQgYXMgY2xvY2tzIHByb3Bl
ci4gVGhpcyBsZXRzIHVzIHRha2UgYWR2YW50YWdlIG9mIHRoZQo+Pj4+IGV4aXN0aW5nIGNsb2Nr
IGluZnJhc3RydWN0dXJlLiBJIGhhdmUgbm90IGdpdmVuIHRoZSBzYW1lIHRyZWF0bWVudCB0byB0
aGUKPj4+PiBsYW5lICJjbG9ja3MiIChkaXZpZGVycykgYmVjYXVzZSB0aGV5IG5lZWQgdG8gYmUg
cHJvZ3JhbW1lZCBpbi1jb25jZXJ0IHdpdGgKPj4+PiB0aGUgcmVzdCBvZiB0aGUgbGFuZSBzZXR0
aW5ncy4gT25lIHRyaWNreSB0aGluZyBpcyB0aGF0IHRoZSBWQ08gKHBsbCkgcmF0ZQo+Pj4+IGV4
Y2VlZHMgMl4zMiAobWF4aW5nIG91dCBhdCBhcm91bmQgNUdIeikuIFRoaXMgd2lsbCBiZSBhIHBy
b2JsZW0gb24gMzItYml0Cj4+Pj4gcGxhdGZvcm1zLCBzaW5jZSBjbG9jayByYXRlcyBhcmUgc3Rv
cmVkIGFzIHVuc2lnbmVkIGxvbmdzLiBUbyB3b3JrIGFyb3VuZAo+Pj4+IHRoaXMsIHRoZSBwbGwg
Y2xvY2sgcmF0ZSBpcyBnZW5lcmFsbHkgdHJlYXRlZCBpbiB1bml0cyBvZiBrSHouPgo+Pj4+IFRo
ZSBQTExzIGFyZSBjb25maWd1cmVkIHJhdGhlciBpbnRlcmVzdGluZ2x5LiBJbnN0ZWFkIG9mIHRo
ZSB1c3VhbCBkaXJlY3QKPj4+PiBwcm9ncmFtbWluZyBvZiB0aGUgYXBwcm9wcmlhdGUgZGl2aXNv
cnMsIHRoZSBpbnB1dCBhbmQgb3V0cHV0IGNsb2NrIHJhdGVzCj4+Pj4gYXJlIHNlbGVjdGVkIGRp
cmVjdGx5LiBHZW5lcmFsbHksIHRoZSBvbmx5IHJlc3RyaWN0aW9uIGlzIHRoYXQgdGhlIGlucHV0
Cj4+Pj4gYW5kIG91dHB1dCBtdXN0IGJlIGludGVnZXIgbXVsdGlwbGVzIG9mIGVhY2ggb3RoZXIu
IFRoaXMgc3VnZ2VzdHMgc29tZSBraW5kCj4+Pj4gb2YgaW50ZXJuYWwgbG9vay11cCB0YWJsZS4g
VGhlIGRhdGFzaGVldHMgZ2VuZXJhbGx5IGxpc3Qgb3V0IHRoZSBzdXBwb3J0ZWQKPj4+PiBjb21i
aW5hdGlvbnMgZXhwbGljaXRseSwgYW5kIG5vdCBhbGwgaW5wdXQvb3V0cHV0IGNvbWJpbmF0aW9u
cyBhcmUKPj4+PiBkb2N1bWVudGVkLiBJJ20gbm90IHN1cmUgaWYgdGhpcyBpcyBkdWUgdG8gbGFj
ayBvZiBzdXBwb3J0LCBvciBkdWUgdG8gYW4KPj4+PiBvdmVyc2lnaHQuIElmIHRoaXMgYmVjb21l
cyBhbiBpc3N1ZSwgdGhlbiBzb21lIGNvbWJpbmF0aW9ucyBjYW4gYmUKPj4+PiBibGFja2xpc3Rl
ZCAob3Igd2hpdGVsaXN0ZWQpLiBUaGlzIG1heSBhbHNvIGJlIG5lY2Vzc2FyeSBmb3Igb3RoZXIg
U29Dcwo+Pj4+IHdoaWNoIGhhdmUgbW9yZSBzdHJpbmdlbnQgY2xvY2sgcmVxdWlyZW1lbnRzLgo+
Pj4KPj4+Cj4+PiBJIGRpZG4ndCBnZXQgYSBjaGFuZ2UgdG8gZ28gdGhyb3VnaCB0aGUgZHJpdmVy
IGxpa2UgSSB3b3VsZCBsaWtlLCBidXQgYXJlIHlvdQo+Pj4gY2hhbmdpbmcgdGhlIFBMTCdzIHJh
dGUgYXQgcnVudGltZT8KPiAKPiBZZXMuCj4gCj4+PiBEbyB5b3UgdGFrZSBpbnRvIGNvbnNpZGVy
YXRpb24gdGhhdCBhIFBMTCBtaWdodCBzdGlsbCBiZSB1c2VkIGJ5IGEgUENJZSBvciBTQVRBCj4+
PiBsYW5lICh3aGljaCBpcyBub3QgZGVzY3JpYmVkIGluIHRoZSBEVFMpIGFuZCBkZW55IGl0cyBy
YXRlIHJlY29uZmlndXJhdGlvbgo+Pj4gaWYgdGhpcyBoYXBwZW5zPwo+IAo+IFllcy4KPiAKPiBX
aGVuIHRoZSBkZXZpY2UgaXMgcHJvYmVkLCB3ZSBnbyB0aHJvdWdoIHRoZSBQQ0NScyBhbmQgcmVz
ZXJ2ZSBhbnkgbGFuZSB3aGljaCBpcyBpbgo+IHVzZSBmb3IgYSBwcm90b2NvbCB3ZSBkb24ndCBz
dXBwb3J0IChQQ0llLCBTQVRBKS4gV2UgYWxzbyBnZXQgYm90aCBQTEwncyByYXRlcwo+IGV4Y2x1
c2l2ZWx5IGFuZCBtYXJrIHRoZW0gYXMgZW5hYmxlZC4KPiAKPj4+IEkgYW0gYXNraW5nIHRoaXMg
YmVjYXVzZSB3aGVuIEkgYWRkZWQgc3VwcG9ydCBmb3IgdGhlIEx5bnggMjhHIFNlckRlcyBibG9j
ayB3aGF0Cj4+PiBJIGRpZCBpbiBvcmRlciB0byBzdXBwb3J0IHJhdGUgY2hhbmdlIGRlcGVuZGlu
ZyBvZiB0aGUgcGx1Z2dlZCBTRlAgbW9kdWxlIHdhcwo+Pj4ganVzdCB0byBjaGFuZ2UgdGhlIFBM
TCB1c2VkIGJ5IHRoZSBsYW5lLCBub3QgdGhlIFBMTCByYXRlIGl0c2VsZi4KPj4+IFRoaXMgaXMg
YmVjYXVzZSBJIHdhcyBhZnJhaWQgb2YgY2F1c2luZyBtb3JlIGhhcm0gdGhlbiBuZWVkZWQgZm9y
IGFsbCB0aGUKPj4+IG5vbi1FdGhlcm5ldCBsYW5lcy4KPiAKPiBZZXMuIFNpbmNlIFRoZXJlIGlz
IG5vdCBtdWNoIG5lZWQgZm9yIGR5bmFtaWMgcmVjb25maWd1cmF0aW9uIGZvciBvdGhlciBwcm90
b2NvbHMsCj4gSSBzdXNwZWN0IHRoYXQgbm9uLWV0aGVybmV0IHN1cHBvcnQgd2lsbCBub3QgYmUg
YWRkZWQgc29vbiAob3IgcGVyaGFwcyBldmVyKS4KPiAKPj4+Pgo+Pj4+IFRoZSBnZW5lcmFsIEFQ
SSBjYWxsIGxpc3QgZm9yIHRoaXMgUEhZIGlzIGRvY3VtZW50ZWQgdW5kZXIgdGhlIGRyaXZlci1h
cGkKPj4+PiBkb2NzLiBJIHRoaW5rIHRoaXMgaXMgcmF0aGVyIHN0YW5kYXJkLCBleGNlcHQgdGhh
dCBtb3N0IGRyaXZlcnRzIGNvbmZpZ3VyZQo+Pj4+IHRoZSBtb2RlIChwcm90b2NvbCkgYXQgeGxh
dGUtdGltZS4gVW5saWtlIHNvbWUgb3RoZXIgcGh5cyB3aGVyZSBlLmcuIFBDSWUKPj4+PiB4NCB3
aWxsIHVzZSA0IHNlcGFyYXRlIHBoeXMgYWxsIGNvbmZpZ3VyZWQgZm9yIFBDSWUsIHRoaXMgZHJp
dmVyIHVzZXMgb25lCj4+Pj4gcGh5IGNvbmZpZ3VyZWQgdG8gdXNlIDQgbGFuZXMuIFRoaXMgaXMg
YmVjYXVzZSB3aGlsZSB0aGUgaW5kaXZpZHVhbCBsYW5lcwo+Pj4+IG1heSBiZSBjb25maWd1cmVk
IGluZGl2aWR1YWxseSwgdGhlIHByb3RvY29sIHNlbGVjdGlvbiBhY3RzIG9uIGFsbCBsYW5lcyBh
dAo+Pj4+IG9uY2UuIEFkZGl0aW9uYWxseSwgdGhlIG9yZGVyIHdoaWNoIGxhbmVzIHNob3VsZCBi
ZSBjb25maWd1cmVkIGluIGlzCj4+Pj4gc3BlY2lmaWVkIGJ5IHRoZSBkYXRhc2hlZXQuIMKgVG8g
Y29vcmRpbmF0ZSB0aGlzLCBsYW5lcyBhcmUgcmVzZXJ2ZWQgaW4KPj4+PiBwaHlfaW5pdCwgYW5k
IHJlbGVhc2VkIGluIHBoeV9leGl0Lgo+Pj4+Cj4+Pj4gV2hlbiBnZXR0aW5nIGEgcGh5LCBpZiBh
IHBoeSBhbHJlYWR5IGV4aXN0cyBmb3IgdGhvc2UgbGFuZXMsIGl0IGlzIHJldXNlZC4KPj4+PiBU
aGlzIGlzIHRvIG1ha2UgdGhpbmdzIGxpa2UgUVNHTUlJIHdvcmsuIEZvdXIgTUFDcyB3aWxsIGFs
bCB3YW50IHRvIGVuc3VyZQo+Pj4+IHRoYXQgdGhlIGxhbmUgaXMgY29uZmlndXJlZCBwcm9wZXJs
eSwgYW5kIHdlIG5lZWQgdG8gZW5zdXJlIHRoZXkgY2FuIGFsbAo+Pj4+IGNhbGwgcGh5X2luaXQs
IGV0Yy4gVGhlcmUgaXMgcmVmY291bnRpbmcgZm9yIHBoeV9pbml0IGFuZCBwaHlfcG93ZXJfb24s
IHNvCj4+Pj4gdGhlIHBoeSB3aWxsIG9ubHkgYmUgcG93ZXJlZCBvbiBvbmNlLiBIb3dldmVyLCB0
aGVyZSBpcyBubyByZWZjb3VudGluZyBmb3IKPj4+PiBwaHlfc2V0X21vZGUuIEEgInJvZ3VlIiBN
QUMgY291bGQgc2V0IHRoZSBtb2RlIHRvIHNvbWV0aGluZyBub24tUVNHTUlJIGFuZAo+Pj4+IGJy
ZWFrIHRoZSBvdGhlciBNQUNzLiBQZXJoYXBzIHRoZXJlIGlzIGFuIG9wcG9ydHVuaXR5IGZvciBm
dXR1cmUKPj4+PiBlbmhhbmNlbWVudCBoZXJlLgo+Pj4+Cj4+Pj4gVGhpcyBkcml2ZXIgd2FzIHdy
aXR0ZW4gd2l0aCByZWZlcmVuY2UgdG8gdGhlIExTMTA0NkEgcmVmZXJlbmNlIG1hbnVhbC4KPj4+
PiBIb3dldmVyLCBpdCB3YXMgaW5mb3JtZWQgYnkgcmVmZXJlbmNlIG1hbnVhbHMgZm9yIGFsbCBw
cm9jZXNzb3JzIHdpdGgKPj4+PiBNRU1BQ3MsIGVzcGVjaWFsbHkgdGhlIFQ0MjQwICh3aGljaCBh
cHBlYXJzIHRvIGhhdmUgYSAibWF4ZWQtb3V0Igo+Pj4+IGNvbmZpZ3VyYXRpb24pLgo+Pj4+Cj4+
Pj4gU2lnbmVkLW9mZi1ieTogU2VhbiBBbmRlcnNvbiA8c2Vhbi5hbmRlcnNvbkBzZWNvLmNvbT4K
Pj4+PiAtLS0KPj4+PiBUaGlzIGFwcGVhcnMgdG8gYmUgdGhlIHNhbWUgdW5kZXJseWluZyBoYXJk
d2FyZSBhcyB0aGUgTHlueCAyOEcgcGh5Cj4+Pj4gYWRkZWQgaW4gOGY3M2IzN2NmM2ZiICgicGh5
OiBhZGQgc3VwcG9ydCBmb3IgdGhlIExheWVyc2NhcGUgU2VyRGVzCj4+Pj4gMjhHIikuCj4+Pgo+
Pj4gVGhlIFNlckRlcyBibG9jayB1c2VkIG9uIEwxMDQ2QSAoYW5kIGEgbG90IG9mIG90aGVyIFNv
Q3MpIGlzIG5vdCB0aGUgc2FtZQo+Pj4gb25lIGFzIHRoZSBMeW54IDI4RyB0aGF0IEkgc3VibWl0
dGVkLiBUaGUgTHlueCAyOEcgYmxvY2sgaXMgb25seSBpbmNsdWRlZAo+Pj4gb24gdGhlIExYMjE2
MEEgU29DIGFuZCBpdHMgdmFyaWFudHMuCj4gCj4gT0suIEkgbG9va2VkIG92ZXIgaXQgcXVpY2ts
eSBhbmQgaXQgc2VlbWVkIHRvIHNoYXJlIG1hbnkgb2YgdGhlIHNhbWUgcmVnaXN0ZXJzLgoKSSBs
b29rZWQgYXQgdGhlIExYMjE2MEFSTSB0b2RheSBhbmQgaXQgc2VlbXMgbGlrZSB0aGUgMjhnIHBo
eSBpcyBtb3N0bHkgYSBzdXBlcnNldApvZiB0aGUgMTBnIHBoeS4gV2l0aCBzb21lIGNhcmVmdWwg
YXR0ZW50aW9uIHRvIGRldGFpbCwgSSB0aGluayB0aGVzZSBkcml2ZXJzIGNvdWxkCmJlIG1lcmdl
ZC4gQXQgdGhlIHZlcnkgbGVhc3QsIEkgdGhpbmsgaXQgc2hvdWxkIGJlIHBvc3NpYmxlIHRvIGNy
ZWF0ZSBzb21lIGhlbHBlcgpmdW5jdGlvbnMgZm9yIHByb2dyYW1taW5nIHRoZSBjb21tb24gcmVn
aXN0ZXJzLgoKLS1TZWFuCgo+Pj4gVGhlIFNlckRlcyBibG9jayB0aGF0IHlvdSBhcmUgYWRkaW5n
IGEgZHJpdmVyIGZvciBpcyB0aGUgTHlueCAxMEcgU2VyRGVzLAo+Pj4gd2hpY2ggaXMgd2h5IEkg
d291bGQgc3VnZ2VzdCByZW5hbWluZyBpdCB0byBwaHktZnNsLWx5bngtMTBnLmMuCj4gCj4gQWgs
IHRoYW5rcy4gSXMgdGhpcyBkb2N1bWVudGVkIGFueXdoZXJlPwo+IAo+IC0tU2Vhbgo+IAoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
