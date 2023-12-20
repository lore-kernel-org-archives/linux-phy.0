Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D100C41535
	for <linux-phy@archiver.kernel.org>; Wed, 20 Dec 2023 02:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ybPCy0qmqBMNmUwpzExZ9aX/MTIUWo2DQu15aFZUXKI=; b=WCqR6EYSDrrSDP
	V27X5DkLWdKA6Nz9sbw0pLtA0g4+rhl2s8xkvhGyvcTSp418LQt5qCCo113sctirooMV3TgscT2Zw
	MOkg/fW/uUq4iZfqgcRihIFSPVIMRlJ1R/V0suj5SgHnxpC8ASNsysrnOn9i+AAFwVs/t56UH3ouA
	nLlUqUcMtJop3YT6wQN86xFRwC8rnputYvCMFlqegsG/UiwbPdWo2ckWXX+mAmBVeLqS0uB9xRBv8
	hXn89GMEAkCJHU2ov5dfMEKSAEqa//nYHtlQeuxsjVvoeM8ljtX8D6SAQbqfd1QNleMy7yKwGf7M5
	OjtQUZFGmmWAr8Y4HChA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFmIt-00FyOl-2W;
	Wed, 20 Dec 2023 02:27:23 +0000
Received: from mail-vi1eur04on0612.outbound.protection.outlook.com ([2a01:111:f400:fe0e::612] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFmIr-00FyON-1r;
	Wed, 20 Dec 2023 02:27:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UorIduE3eyDALReHibdwuHRvOh3lqC8nQs06R8vuvGOk8u0fPNwhjCCo5xWekF3WIMMjZgYwOXQyeJ8Wrt3dWjY4Ozy3pMs7l+59srWV4+hY9dt2J5Xpl+r8qdhgxLo1nw/8jAgLFTfwd7AZ3RZ8Plw/Vje8q76CAVG9YsH9vgrv92RowLHdTKAT4/2HHXSwL3+7DNfx4+pjkMwF28fnuyVe7eTShcq2Gv6qRy5pDgnXhrrN8Nni/NUDpHRAhNwuf/uGr9cYiOu4QzTCcfBHpK+DEyCBIwcyJF8pu28Ih0vPD+bn4uabXhMXFKh9RVUEXYuGtQdn5r0PW+y1/Mflpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pK3Enwy9PqzdhNmCaF9ucko2r31u90F/XHqRh0Pym8U=;
 b=gxXFFinYoW2n7/XZPq+3T4I71Tiw3dyZoRdKjGpsDefgZmCgp6NkRQfPpTNk1rdOpgU6RIFx3q824ISnjZDA4Gk+IcJK+aSWNL9Eam7Os4a7dPXDL6p8uJe0XQRSSnQnzqIFpBmOQko+RqTUfx2TDiAJK5Vyg/DqewvmXoIHu287L5zPZlJ0WQTUg+mhpuE/eZn617lJTIaxQ99GOg08HOIypcGvMTyRXK0e3MOZrlnmIHXEATJ+2QVyu0oxrJFHIZrjMFn1XCfKzsQMA2NfhAW34pMp2KJSnytT9Rb3hNwsZS6bJHJnpghy3OlgHmvbM8zZQ2QZX6UnVTXo4Z5anA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pK3Enwy9PqzdhNmCaF9ucko2r31u90F/XHqRh0Pym8U=;
 b=XPf77KA37y2SGrme5mdvT6Zyh7gYjC/ng5tao6bPpm5CMEFrY2zXuisIvPJ5SLmnuo5tAMD4PQZhbakAZcKurwJClExk2AhCp2q3B/Kp47mgPiDMtiKf2ZxZHRFp3v/jT4RU6QQeaDVS9oaQrtfot1DjplCFBbr+n9Z5Vu+V6II=
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by PAXPR04MB9472.eurprd04.prod.outlook.com (2603:10a6:102:2b1::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.18; Wed, 20 Dec
 2023 02:27:13 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::d99:f43f:65a3:9bf]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::d99:f43f:65a3:9bf%7]) with mapi id 15.20.7113.016; Wed, 20 Dec 2023
 02:27:13 +0000
From: Ying Liu <victor.liu@nxp.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>, Vinod Koul
	<vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Shawn Guo
	<shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam
	<festevam@gmail.com>
CC: Pengutronix Kernel Team <kernel@pengutronix.de>, dl-linux-imx
	<linux-imx@nxp.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH 1/1] phy: freescale: phy-fsl-imx8-mipi-dphy: Fix alias
 name to use dashes
Thread-Topic: [PATCH 1/1] phy: freescale: phy-fsl-imx8-mipi-dphy: Fix alias
 name to use dashes
Thread-Index: AQHaMlon06keOTup3U6uTvH64Kk2q7CxcPsw
Date: Wed, 20 Dec 2023 02:27:13 +0000
Message-ID: <AM7PR04MB70468E3BDB14C528F8F3654C9896A@AM7PR04MB7046.eurprd04.prod.outlook.com>
References: <20231219090248.3317500-1-alexander.stein@ew.tq-group.com>
In-Reply-To: <20231219090248.3317500-1-alexander.stein@ew.tq-group.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM7PR04MB7046:EE_|PAXPR04MB9472:EE_
x-ms-office365-filtering-correlation-id: acd1f487-ca10-42ae-d435-08dc01032d3f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YRvTBY22uR7luJmSqdAueKmZv+q9xcDxW+/yhvmtdVDQh/6tRiMwFbWVYVM2DHfC8KlsJc+i0LNCahwqjvVRw+iY6lDQ18GLhjIlGGc/+2vlkhlYaeUclkcBvpqCPOaCzSI6m+Dj0lnBpwLiHPdf/eFQ194eEfalvcl6o2eLbzTxtOX1WhW0B1+NYAhe2rxcd3T3+PoE+gJRDLBaT6xnR/04AXIVug0LxCzPQlagZYYeTpLqON5DDj7fZdHeP0xlizhNoaorgfRLw7f6m/9nA1dnZ3YVqN212fJyVUBi/AkcbvigjEYL3qKrpXH0FsHehUBQxt7BPEaiSyzbc09rrIuhDo2gFHpDX0d0S+q1BwFRsBxCzPhTwyv/dGyoZsK/o9ASjoaZOnTg5yZlIRybLFqI34oHqsHZMMgPJBgDm9b5QrWVA13EzbuxfcL/BjrylW3vljKfxC391UtCTy1XRKqhTw+seUy1DUeYBnQfizrRlT+7dzEy13lyOXcX/Isk0i4Kwvd8Gm3gSTmZm4bDoE53+0sxmtuIdRVGXCJIXRdI9LiV+AOTDSg8IahrVqAM2QxAD0wWpe3hdBFgYOFJYBXZv48iEZIKZtDW1p8DC68Es5xJnlW8VuEgyMrAggvg
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(366004)(39860400002)(396003)(136003)(346002)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(122000001)(41300700001)(64756008)(54906003)(66446008)(66476007)(66556008)(9686003)(316002)(76116006)(110136005)(66946007)(478600001)(53546011)(7696005)(6506007)(55016003)(33656002)(86362001)(38100700002)(5660300002)(8936002)(8676002)(4326008)(52536014)(4744005)(2906002)(26005)(38070700009)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?M/55spDqjp5Y2NhkGaUpbPEbWfBkGHXIIq2Gsg0pDFn4Uj9QbcKV9TJKbDcv?=
 =?us-ascii?Q?67m/dCA36jYIcMpLu34tZlFeRFVVhh4lDx6+NKz/5u57dw5cPSIBMfhgrcoU?=
 =?us-ascii?Q?Y298xSI5i5PzB+vQTdLhjEIpm2U4X9GhA03gQReFhXX8O3P8xFRThnoDYBcF?=
 =?us-ascii?Q?iOTaLWlXHbhH5XxE64NmxpivaJof6XiYOEf17uDnU+QKi6vEQkWuU3Rcveb+?=
 =?us-ascii?Q?u+29f/xtZptyhYkXRChy1f3MNoX3hTh/Ype10IJRpUgNHBDLQy4NSqBKvNDK?=
 =?us-ascii?Q?DVkPY/o+6xszNRAnxySS2GTA8Dcljcdlp2CFVrXaytrlb30THUgOb9Unszmg?=
 =?us-ascii?Q?l+RG5kWmKdO91sb6rkpyC/krmMQfeDMaMtrdPFWxT6ArMsMmT+nyu83Zwhnp?=
 =?us-ascii?Q?e2S4k2upXPDhdBlU7nA9yox88KaL9LKNFVWVTk1Iu/eEuI5//e0sCVMdXhG8?=
 =?us-ascii?Q?9AoYfSOi9Pnc7iWbw2uoUsBkTFEq9SDDnSgtyCxo+NjnSXYvi8OL9L5V/7xa?=
 =?us-ascii?Q?GMogk3/C2/osP8WJ69B+dkb7+iagb8qOHYEIzq3RLkJjBAS0lotsqsLGFT6+?=
 =?us-ascii?Q?SOIlNmsYz7+DXF8HAU6WDafWWfGbB6WxGKAOFYUpC8ujrjjsdsK7251V+A6c?=
 =?us-ascii?Q?kC0oHyIqA29wiajBjs1SLcTmlF8CGD2CQ6eIafZXVc6z7DmQquLSQjch2yV4?=
 =?us-ascii?Q?Senzh9Emp0Uq2ItmvEyHUX40ah0oMRnqoPWMm8oearLJ567ITibmvIMBxzoV?=
 =?us-ascii?Q?wShglBScDP1bb/dzVHjHFdgVsA/luRSJAi2QsJjKfLWBZ7U3sZAM8aZgxXA7?=
 =?us-ascii?Q?vgbeTNMEjcFB7whb+K0XyLvO5alVorbQFYDXAD1QkWEcmUYNJbUkgE0V49Y4?=
 =?us-ascii?Q?JKJ5SEkNavQvdc9hXueS1ZWQAP0bgs5l5o295m4raWjzl0VUcpgI6J71+/ou?=
 =?us-ascii?Q?omd1oNw3daWktLvYuJ7mP106Gs0bFFf40KM1ukfO2TqYKRKmPz+kLOILODL9?=
 =?us-ascii?Q?rPvfiG4QmUU2RU2TGkmCBSJp/gzZ9MhpJrzDIvCW1Zk7itToK4E8PDusm4i+?=
 =?us-ascii?Q?535f8BUdSyFXsdwLM6H/56AbwbDofMLZ1StwTrxUishMm3CEB8tCnW5tdF9F?=
 =?us-ascii?Q?v8jlYuzwO0q7liI/8cK9gPdD/WoJ+zL98qkZwT2nJelpW3hGsSNsrOXJqMKS?=
 =?us-ascii?Q?BBxeOOJ9ajcJFvyoaykgE6kMCm+VlPHnySryFB5uYJtm5I9Tn26WmKznHZwc?=
 =?us-ascii?Q?Ywdw2MkyiJx8ZsC9c0qpZps8NoVVmKpACNJIfYWu1SfO/A1FIaNSQkjVqsOP?=
 =?us-ascii?Q?GQaE/S++pirdZ/gdWRYTh+pC16RawY3iqKW/L14Vp5W9iYPcpQzZjhllndzG?=
 =?us-ascii?Q?OecnXBvAESLV+LfW3L5fYXqUNvNmQwdzGetDVondZanSKcIlpz8NWvxbUFpV?=
 =?us-ascii?Q?fjABG/6mwJqhCnP2mY5RaHn/EjVqXAJQEVw/f5VNCATTQM7L368ehdgHXlon?=
 =?us-ascii?Q?CzBZ2sNh2yY2jzUcvoMlsxfkEZNTL+TFfNPJ9yBd+g8lV/LfzfyVwu9eeHg2?=
 =?us-ascii?Q?/1wS0r/fgQHnhm9AVAw=3D?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: acd1f487-ca10-42ae-d435-08dc01032d3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2023 02:27:13.4884
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y/VFn6gcWx8I9K9os0zx36+ErZ+3BaBI883ZfiO+DhsN0s+AiIavItdLRzrhuiZAyBHWdfdcgHwI73N+GDZXVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9472
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_182721_634134_AD90FCB5 
X-CRM114-Status: UNSURE (   7.15  )
X-CRM114-Notice: Please train this message.
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

On Tuesday, December 19, 2023 5:03 PM, Alexander Stein <alexander.stein@ew.tq-group.com> wrote: 
> Devicetree spec lists only dashes as valid characters for alias names.

This saying is not accurate because it lists digit, lowercase letter and
dash characters.

> Table 3.2: Valid characters for alias names, Devicee Specification,
> Release v0.4
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

It makes sense to add a Fixes tag:
Fixes: 3fbae284887d ("phy: freescale: phy-fsl-imx8-mipi-dphy: Add i.MX8qxp LVDS PHY mode support")

Regards,
Liu Ying

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
