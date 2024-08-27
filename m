Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43E9BC52D6F
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 08:15:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=N/Fi0VHRhLr6DbUdwEnzqdHARqPWYFFspXd4XVSff+g=; b=gwDY94tGqOlZp+rqqQq/7q9OLg
	42fVPaeYSfl0Bc9yoLhWRghAbgqYC6gQhziIcFgxSkkzIv5AUedghbWAqM7mp3NVEZYmCzEdgfY1v
	V00dcLtAx+pFaDaIkxxTdt92x7PYhqUBVJkbYdvoxtG1yNegdQW5hDbGWXXBB/67xMt9sQkqKrW/f
	2c7Hvk+yMYuk0V7cCCEhrgyln2dAsoGYslOp8wVpzcf+6VBFVKHeEvtRzYzw2aL8THidwJ0QIKsuc
	3ZVin26WequysJ4M6EGxM2KwU0HpxscoEPl4tzVRWrvWmLDqZIBDb/bqP1GhWlRKHMRzAySjzDFTW
	Ewd3xREQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sirMN-0000000AMmx-3vo6;
	Tue, 27 Aug 2024 08:15:27 +0000
Received: from mail-vi1eur02on20727.outbound.protection.outlook.com ([2a01:111:f403:2607::727] helo=EUR02-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siqC2-0000000A8AC-49ZQ;
	Tue, 27 Aug 2024 07:00:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KgDTSvfTcZutYIhvODLY6lgIfge2EEJ+KDHb5/CoJhQ1ZktbfQr5NB6qIgcQAq4fDONEaClSQo3a5j0COQ69+iUpqKLAGQR+E87DkMO7S3hKoAH484elAVdeKteC8Ic7g88+aORSGyBH7oMAD2AICtt7pTXdZ+SKmE0USwSWiGIUGNhBaxMweqoc9VOjVqbn0si/9q9X0gpRwtr4GNMXfNGDUBXMNei4OhmocdraGgEFU/Wdtx1JJKOLoYe1v7lU3YS5BKu+xcFjgmfBc8pR9qQ12ex1F3siEcZYw0jrLhShESbAEROPAyRkC2FeR425w8zEEzIOxospRU9eXjIAeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hgmTmg7NN+I9otYHtMXChTaXwrLBIbNMXWwdovqVp4Q=;
 b=j1qhzOtWAPYg79yAKUp8ZRRjYJpGPsRCLvaAgd7TTng21tTXvXDya0ZIc0bOfl8NldU5YkCEQGbRQpgdv8sQwT/poRFGZRWm/gpjjgDmjfzxaqfnP/Q9Q1KFPBTU98kaQ+nNGymrV51H6r6kc2BBkk2TrscorI9zVsq/kz/bj2Nod0yNY3b04un3qzquhH+93BOGE+JIVD5FwK412hNx/LCpOWPZ1nJ1aFAtWl/4N9kncEZdNouhnhdvILG+0nW4F08n2B1tyPjHwmZhcbdfWAqrraeLnjE9OHmu8mokzBWs831MyXeJC0rsHYnYKEEstoTLxm97WTLXkDR3Nt6jzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hgmTmg7NN+I9otYHtMXChTaXwrLBIbNMXWwdovqVp4Q=;
 b=Qb/oW4iiZ+6/KR2RJMRcpikZgLTVtYT9Nc1SEqVnJBomn32fBlP5glFr1yd/SyKZLJ9xxsyECcYXNQUayC710KcS/3gB98e+BJKGDbbNhLHsd38HIFs3I6b7dSxHzlKRqgCc06G43WZxHEfBLI4K1AQedEj46FR5zmR6YrthEkc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kontron.de;
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:263::10)
 by PA1PR10MB8871.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:451::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.24; Tue, 27 Aug
 2024 07:00:37 +0000
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::b854:7611:1533:2a19]) by PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::b854:7611:1533:2a19%7]) with mapi id 15.20.7897.021; Tue, 27 Aug 2024
 07:00:36 +0000
Message-ID: <2d877963-e2be-4090-a86f-aadccf8f5e69@kontron.de>
Date: Tue, 27 Aug 2024 09:00:34 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: drm/bridge/imx8mp-hdmi-tx: Allow inexact pixel clock frequencies
 (Was: [PATCH V8 10/12] drm/bridge: imx: add bridge wrapper driver for i.MX8MP
 DWC HDMI)
To: Adam Ford <aford173@gmail.com>,
 Dominique MARTINET <dominique.martinet@atmark-techno.com>
Cc: Lucas Stach <l.stach@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, marex@denx.de,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Liu Ying <victor.liu@nxp.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 Makoto Sato <makoto.sato@atmark-techno.com>
References: <20240203165307.7806-1-aford173@gmail.com>
 <20240203165307.7806-11-aford173@gmail.com>
 <Zm_UzO4Jmm7Aykcm@atmark-techno.com>
 <22a3f5266260dd3915269ae3eec7724f7537eb55.camel@pengutronix.de>
 <cd03ecb1-100e-4699-95ed-d837a2802dc7@kontron.de>
 <CAHCN7x+bh_ka250hOCenO3Et6re4EJ=5TG8=kpG1hs-PV0dQxQ@mail.gmail.com>
 <ZsVluV50NvuGGHFX@atmark-techno.com>
 <CAHCN7xJnjfjr7HfKF+4pwbENP+p2=vvMXWW1AQShNy87vfQ=-A@mail.gmail.com>
 <CAHCN7xKgpqfRf_2p1z5NyKiOYubbcDA7YE5ML8G56pVmcV+1xA@mail.gmail.com>
 <CAHCN7x+HgasGG_v-PdtmRszhJn5odHzfV6ddeeT10_1yCOS+DQ@mail.gmail.com>
Content-Language: en-US, de-DE
From: Frieder Schrempf <frieder.schrempf@kontron.de>
In-Reply-To: <CAHCN7x+HgasGG_v-PdtmRszhJn5odHzfV6ddeeT10_1yCOS+DQ@mail.gmail.com>
X-ClientProxiedBy: FR4P281CA0226.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e9::14) To PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:102:263::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR10MB5681:EE_|PA1PR10MB8871:EE_
X-MS-Office365-Filtering-Correlation-Id: a9fa67e9-f408-4abf-6a40-08dcc665f3de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MUtnWmlqQnQwNWNGa3QzNDgrcW11S3VpWWxpMEhNTUtReDI0cmthSEw4bXoy?=
 =?utf-8?B?RkpUUzQwS0xzekd6M1ZQOGNEN2dOSjBsTlVYd1g4Tk53OUtCbWsydnFZMVZr?=
 =?utf-8?B?Ry8yU010UTk4bkVQQmExSmc4dWx3REptM1dkQlV2VkJhSjlObkhHckhURnFi?=
 =?utf-8?B?V2pMY1lCbEZiVjFWWWhKS1NmcGpiT2NDalNrTXdhaDNsenNHOWlvdU91STJs?=
 =?utf-8?B?S2lRZHp3aVpGV01uVXdKT1Z4K0ttbmIrU1dBNWxibmZ2QjlOT09SRDFVTG1Z?=
 =?utf-8?B?b0ZTN0ZSN3FNc0lJVG15WW9Qc3IyNmpSYzJsV2pwRVhQMGo5bGJTN0JHMG5S?=
 =?utf-8?B?V3JpeDlnZ1Jma2tpQjVhWlR0cVRsWnErQ0s5YkhTUjVkK0F6TVJBV0FSaGhW?=
 =?utf-8?B?dHVnVE81SUZiSlovL2NlSmo3dUc4WDFjTEJQaHB5WXNXTUNUWEV5Zzh2SFFV?=
 =?utf-8?B?V0VVVTFVcVJ4N21aV1k1eTlVMUM1dW5qT3JhWWZJV2NkV0xwZElxTytYYzFX?=
 =?utf-8?B?S3BEZUpEMGR6MlVHUVBLWHJHK294T3pMdCtpeDhXV1NCZnU5bFFwNTByWkth?=
 =?utf-8?B?NFVPL2c1a1hXa2thUVpKaVZKdE9tZ1ZCNGVQeGxsdkxBTlhIQlVVNEJkMUlt?=
 =?utf-8?B?WG0zbGN4eUo3eDVYS1pvRlhXZ0FyRE5TYzNjeHJZd3ZNRFU1VUJQb0pXVnZ1?=
 =?utf-8?B?VzVaQVBqR25NQnRNSVNXU0pUeFEyZTRQSjBFeVFrVjd6Q3Q5YXFCcmt6NW0z?=
 =?utf-8?B?SUdBbHZWVUpxQmY3U20zdnNpbXVYR0xwRWIzQ2J0Wko0NW9tWHNoU1JDdVM0?=
 =?utf-8?B?WCt1T3JkdThLUnNXenU2Z1NzcHhTVDFlcFQyVE5qcFdkbWFjVDBkSXFMUXo0?=
 =?utf-8?B?dnVJWU9hNzRhM3lTWCs1WmszWVVqWEQvYXVMUFNEOWFMV0NSMitWMEpxcUFK?=
 =?utf-8?B?V1FnazhjZ0E3U21lOCtsdE9sWmZJaXJUcElWcUJOU3p5MGIyQWcvRXNTa29C?=
 =?utf-8?B?TGFPREk0SUFoNDVWMjVFK3MxV1Q1ZE1jbEFHQUVGOWhtMENsMzB4djl2eVp2?=
 =?utf-8?B?NzhhNE9BbFI1eXVkV29VR3h3MEF2S2E3clBKNkgrdUxLcER6aW1hQi9FS1ZV?=
 =?utf-8?B?YWZNSnNEOFg5RGthSEZoVzhxOFJQNzFlMU9RcDVFU09PaHFlQjdMMW1KU0Q2?=
 =?utf-8?B?ZlBCUWpiQitYVXBJeDA3QldRTWYwalpWOFR4TEJwZ0c3cHZLOTRteVd5ZHd2?=
 =?utf-8?B?bnFKcVFoUGdCV2dQMlpXM2ZYQUZJRzRpTzRlakJ0dGYwVFJaNVBISXlpWW1u?=
 =?utf-8?B?NDZGQmVLblRaS1B6NUpnWmdNZXk1Y29GWUU2eHJRTDVIN2ZzMDQ5RU5IQ2lB?=
 =?utf-8?B?Z2k3QUx0WmE2MmlyQXJlNC9sd3pteWlOamQzeVd2YTNZNEtwYTRTRkNGaFR2?=
 =?utf-8?B?NzlXSUgwNFcwbkxmZWVKbktxUjhIVTkvc2VLcHI4bG0wblh6N2FSL1NabElr?=
 =?utf-8?B?VzRSWDFOMW16Qy8vS1RMYXVLNWh4blcyelFSYkRCTkpVRVdSbGJoME5KZUYw?=
 =?utf-8?B?dEp2MjBxeWlzNXpIeTVIU293Tm1uaUZmdUtsQlVXa2J3WDhsTG9oYjMxNzU2?=
 =?utf-8?B?NU1mQW84ZSszaWpCQ2VvNVRFR3dXaHhZalBTWHIzbUZsYlk4bEU2TkhITnlH?=
 =?utf-8?B?eFE4Q1k0RUE2cHZDdmV4N3k4akU3NWJyLys1VGVxN09UWFlweHRXUDRlK2ZT?=
 =?utf-8?B?UFY0eDM4T2pMUjVsaU9IUVVpS0pGUElXYUdqazZ2eUJ2OTBLaElkR0l2MzJy?=
 =?utf-8?B?Q0dHdXZHeDJSaTYxcTFmUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dGQvdnJ1b09pNyt2Mkc1TmJzUktacDlxaGxveExYYzM0UHFPSllHbXp6WEJW?=
 =?utf-8?B?WWdFbEFEMlNXY05ZRFFmbWxOMFVJQ0lzemdySWQ0ZDMySXFMNDlGcDYybzJr?=
 =?utf-8?B?eEVmSm1mbzRHSGljODVIZHE0c2V3RExNUEhPSzdqOGs0TmNia1ptT1dudXVW?=
 =?utf-8?B?R2tsNFE3bUNJa2Rwa2hnN1kralExTituRzBqRXBGR3VKdTFndVNtK2Z5V0ZM?=
 =?utf-8?B?TEc2KzJURzhyMUV5RUpIU1FYTktJc3pPRURhQnNXbWNQd0FhUUp6T2E0UnZx?=
 =?utf-8?B?dnY0Ymo0NjRxd0pOY3pQbUNYWHBLaUNmV3hZNEVBNnZuOU5oRUJOYU91bmZX?=
 =?utf-8?B?WktyeDdpSGt4ZWQ2Ym0xUlJ0WnNqQ3laamVYblNQQmxOeFJycm5SZFduZ21K?=
 =?utf-8?B?a0NTaU03OGtyZ0hTUVB1MGJoSW9hN1diUko0c281ZlRaSmpSTGJUSHpJMU1a?=
 =?utf-8?B?V2xDT0Z0NkFaNGlRd1c3RTYzeXMwZE1LT3gvY3YwOUN0VVFQS3ZWVmorODM0?=
 =?utf-8?B?K2hGRTlZUkp1T2ZHcDNBMXFPRjBCNHNJOVVPWU9Scy9xclQ5Z3JkYnhCSzJZ?=
 =?utf-8?B?dlVEZWF5SExlOU95L2NPRk5zT29ZeGszTUIxN2FkTlN2TjZtT2d5bU8yYnJV?=
 =?utf-8?B?TmhOTllhU29FdjNjaENMWWZpYnBkLzdaZkVWQXdzUXJZdkEzZTFhb3hrY0Vz?=
 =?utf-8?B?QS9QbEREcVhUdWdBcEcwejBUL0MrT0RIazVNZDU2eld1U2JjNFo1TFlPVFBU?=
 =?utf-8?B?YjBCQVBNUi9IWXJFYjJVK3lHS2NLbzF5NzJtU2VxTWVBNUl5aVlLVHJxaVVG?=
 =?utf-8?B?a3V5ZHovWUdaOWxLSjlneWxLTmRaTEp0SjI4b3hvazZxbGw1UUtxSk9iZVJY?=
 =?utf-8?B?bWNSOGhJc0tzbDluQ0pkbndQT05mZm1SNitPWG1Kc2pTQTZGeCtCNGprWHMr?=
 =?utf-8?B?ZGJ6WVpxSVJTeU9kck1zeWFiTHk3MWhEY3BEVU4rVUhOT2J6SmFveUFSMzdJ?=
 =?utf-8?B?WmcvMkQ3NjYvWjcwcG9VT1NpQlZlL0kzTjJ1M0xHVzQweDNzbFV2WUsyR2xx?=
 =?utf-8?B?V1FKa0tySUc4eFl0ejlyYnZnaHJmWTZiK1AwdW5jT2dvWlk5cVRmSzE4ajFh?=
 =?utf-8?B?d2RJbTJwYlk5Zm9zanlHZGNCKzZTZDBTMDhmc05zalBMcE9DaXkvQVdwN0h0?=
 =?utf-8?B?MWpmdzdoeER1N3U5MXFpS2gvbWo3ekg0NzJwRGIvOEYydEt6WVlaWlYzc1pB?=
 =?utf-8?B?TllsTUhFQmJXNUZ0dytKZUUrOW1KcnEzUFhrTEFNTmMrMGhMdjRUWTZBcndC?=
 =?utf-8?B?MU1zV3M4Qy94YjdWcDdBVEZCZ09tS2h1Mm5WdS9sdVAvZDVOL0lvdkY0NS8v?=
 =?utf-8?B?MEs0OW54SW1aRkdaUmlEcGFpZDBCNDJqUGx0Tm9mMlFGMXZZN3B2alpyblZJ?=
 =?utf-8?B?Z1k1UWNYNFpEMzRaWG9LQTdtYURMdVZHbXdCSFhqSER5dE1UUVoxUmxuT3Vx?=
 =?utf-8?B?NTZZTDlwbGtibzVMQXpVdXF4Wlh2VHJuZWE5WENpT3F4MVhXT2FGL2JQQzlz?=
 =?utf-8?B?YjdLU2xXVjh3UmZTenZ1WUFSdjlqaFpudXZDYXdhalRvN0QyenRzSjJMZWhW?=
 =?utf-8?B?WXluQXV2RXVweXlpSTF2SXJGMGJ5QkIyTFZja1l4S1FLOFRVcEwwcWR5a2Z5?=
 =?utf-8?B?aXJZS1Z5ZkljS1krYW9qZGZSVTZJWGlRb3o3dEloNktrNm5VcnF3VTRNK1F3?=
 =?utf-8?B?NExrczBXN25PVjVrK3pvdjNYOFpKTTdhekhBS2oxdWFPdEV2U3llNjVVRGFV?=
 =?utf-8?B?ZVB6bzF3Zi9sSU9jR3FIcXhXVmx4aFRjaUpBSlhZWUxJdFhjZnlUTXBiQkZu?=
 =?utf-8?B?cll5MmkybDJPOTFXYTU5RVlSWHV1WHlkMkJvSEIrSnhncFhJc0l6NG5GQkJ4?=
 =?utf-8?B?dXdZZEZmVy82Uy9JZGJQQlh5ZkdaeHJlS1Y0bkcyQkFPQkJPc2laTFAyMjFU?=
 =?utf-8?B?cE05bE1adTB4dlRwUzZXaXkrQlpVclNFWXNFRFlDblBoQSs0UEt4K3BveUNx?=
 =?utf-8?B?QW8zSWRQVGRsSlc0VHRNcWxOMU9EUkduS0RnVnZFQjg1MG1BWThXTU1hV0R3?=
 =?utf-8?B?TUdDNWMxQWx0R05acDlJK1pCYmhIb0Myc01ucHNRQ1Ayck9ObVdvUHNpNEp3?=
 =?utf-8?B?cEE9PQ==?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: a9fa67e9-f408-4abf-6a40-08dcc665f3de
X-MS-Exchange-CrossTenant-AuthSource: PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2024 07:00:36.6723
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7dN34k0cWSXAy8CiY7CmITylJ6q8mmWP447nbn+fFM9xWx3aq4rjUZDJU0+InY4PkrnvrK8UHcQj6G06c5p3+9CYoaDXisl4QafyWsqXgUw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR10MB8871
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_000043_231505_8E175A05 
X-CRM114-Status: GOOD (  28.08  )
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

SGkgQWRhbSwKCk9uIDI3LjA4LjI0IDI6MjUgQU0sIEFkYW0gRm9yZCB3cm90ZToKPiBPbiBXZWQs
IEF1ZyAyMSwgMjAyNCBhdCA4OjU54oCvUE0gQWRhbSBGb3JkIDxhZm9yZDE3M0BnbWFpbC5jb20+
IHdyb3RlOgo+Pgo+PiBPbiBXZWQsIEF1ZyAyMSwgMjAyNCBhdCA3OjQ14oCvQU0gQWRhbSBGb3Jk
IDxhZm9yZDE3M0BnbWFpbC5jb20+IHdyb3RlOgo+Pj4KPj4+IE9uIFR1ZSwgQXVnIDIwLCAyMDI0
IGF0IDEwOjU44oCvUE0gRG9taW5pcXVlIE1BUlRJTkVUCj4+PiA8ZG9taW5pcXVlLm1hcnRpbmV0
QGF0bWFyay10ZWNobm8uY29tPiB3cm90ZToKPj4+Pgo+Pj4+IEFkYW0gRm9yZCB3cm90ZSBvbiBU
dWUsIEF1ZyAyMCwgMjAyNCBhdCAwOTo0OTowM1BNIC0wNTAwOgo+Pj4+Pj4+IEhvd2V2ZXIsIHRo
aXMgY2hlY2sgaXMgYSBiaXQgb3ZlcmNhdXRpb3VzIGluIHRoYXQgaXQgb25seSBhbGxvd3MgZXhh
Y3QKPj4+Pj4+PiByYXRlIG1hdGNoZXMuIElJUkMgSERNSSBhbGxvd3MgYSByYXRlIG1pc21hdGNo
IG9mICstIDAuNSUsIHNvIHRoaXMKPj4+Pj4+PiBjaGVjayBjb3VsZCBiZSByZWxheGVkIHF1aXRl
IGEgYml0IHRvIGFsbG93IGZvciB0aGF0Lgo+Pj4+Pj4KPj4+Pj4+IEkgY2hlY2tlZCB3aXRoIGEg
MTA4MHAgZGlzcGxheSB0aGF0IHJlcG9ydHMgMjMgcG9zc2libGUgbW9kZXMgdmlhIEVESUQuCj4+
Pj4+PiBPdXQgb2YgdGhlc2UgMTUgYXJlIGFjY2VwdGVkIGJ5IHRoZSBkcml2ZXIgd2l0aCB0aGUg
c3RyaWN0IGNoZWNrLgo+Pj4+Pj4KPj4+Pj4+IFR3byBtb3JlIHdvdWxkIGJlIGFjY2VwdGVkIHdp
dGggYSByZWxheGVkIGNoZWNrIHRoYXQgYWxsb3dzIGEgMC41JSBtYXJnaW4uCj4+Pj4+Pgo+Pj4+
Pj4gRm9yIHRoZSByZW1haW5pbmcgc2l4IG1vZGVzLCB0aGUgcGl4ZWwgY2xvY2sgd291bGQgZGV2
aWF0ZSB1cCB0byB+NSUKPj4+Pj4+IGZyb20gd2hhdCB0aGUgZGlzcGxheSBleHBlY3RzLiBTdGls
bCwgaWYgSSByZW1vdmUgdGhlIGNoZWNrIGFsdG9nZXRoZXIsCj4+Pj4+PiBhbGwgMjMgbW9kZXMg
c2VlbSB0byB3b3JrIGp1c3QgZmluZS4KPj4+Pgo+Pj4+IEkgY2FuIGNvbmZpcm0gdGhlIGRpc3Bs
YXlzIEkgdGVzdGVkIGFsc28gc2VlbSBwcmV0dHkgdG9sZXJhbnQgaW4KPj4+PiBwcmFjdGljZSAo
dXAgdG8gfjMtNCUgYXQgbGVhc3QpLCBidXQgSSBhZ3JlZSB3aXRoIEx1Y2FzIHRoYXQgdGhpcyBp
c24ndAo+Pj4+IHNvbWV0aGluZyB3ZSBjYW4gcmVseSBvbiBmb3IgYSBnZW5lcmFsIHB1cnBvc2Ug
ZHJpdmVyIGFzIGhhdmluZyBleGFtcGxlcwo+Pj4+IG9mIHRoaW5ncyBiZWluZyB0b2xlcmFudCBk
b2Vzbid0IG1lYW4gYWxsIGhhcmR3YXJlIHdpbGwgYmUgYXMgZmxleGlibGUuLgo+Pj4+Cj4+Pj4+
PiBJJ2QgcmVhbGx5IGxpa2UgdG8gYmUgYWJsZSB0byBhZGQgbW9yZSBQSFkgUExMIHNldHBvaW50
cyBmb3IgZGlzcGxheXMKPj4+Pj4+IHRoYXQgdXNlIG5vbi1DRUEtODYxIG1vZGVzLiBVbmZvcnR1
bmF0ZWx5IEkgZGlkbid0IG1hbmFnZSB0byBmaWd1cmUgb3V0Cj4+Pj4+PiB0aGUgZnJhY3Rpb25h
bC1uIFBMTCBwYXJhbWV0ZXIgY2FsY3VsYXRpb24gc28gZmFyLgo+Pj4+Pj4KPj4+Pj4+IFRoZSBp
Lk1YOE1QIFJlZmVyZW5jZSBNYW51YWwgcHJvdmlkZXMgZm9ybXVsYXMgdG8gY2FsY3VsYXRlIHRo
ZQo+Pj4+Pj4gcGFyYW1ldGVycyBiYXNlZCBvbiB0aGUgcmVnaXN0ZXIgdmFsdWVzIGFuZCBJIHRy
aWVkIHRvIG1ha2Ugc2Vuc2Ugb2YgaXQKPj4+Pj4+IHVzaW5nIHRoZSBleGlzdGluZyByZWdpc3Rl
ciB2YWx1ZXMgaW4gdGhlIGRyaXZlci4gQnV0IHNvbWVob3cgaXQgZG9lc24ndAo+Pj4+Pj4gYWRk
IHVwIGZvciBtZS4KPj4+Pj4+Cj4+Pj4+PiBMdWNhcywgZGlkIHlvdSBhbHJlYWR5IHdvcmsgd2l0
aCB0aGUgUExMIHBhcmFtZXRlcnM/IEJ5IGFueSBjaGFuY2UsIGRvCj4+Pj4+PiB5b3Ugbm93IGhv
dyB0aGUgbWF0aCBiZWhpbmQgdGhlbSB3b3Jrcz8KPj4+Pj4KPj4+Pj4gSSBzcGVudCBhIGxpdHRs
ZSB0aW1lIHRyeWluZyB0byB1bmRlcnN0YW5kIGl0IGEgYml0LiAgSSBjcmVhdGVkIGEgUE1TCj4+
Pj4+IGNhbGN1bGF0b3Igc2ltaWxhciB0byB0aGUgb25lIHVzZWQgb24gdGhlIERTSSBjb250cm9s
bGVyLAo+Pj4+Cj4+Pj4gR3JlYXQhIEknbGwgYWRtaXQgdGhpcyBhbHNvIGZsaWVzIG92ZXIgbXkg
aGVhZCBhbmQgSSBkb24ndCBoYXZlIHRoZQo+Pj4+IHRpbWUgdG8gc3R1ZHkgdGhpcywgc28gdGhp
cyBpcyBtdWNoIGFwcHJlY2lhdGVkLgo+Pj4+Cj4+Pj4+IGV4Y2VwdCB0aGF0Cj4+Pj4+IHRoZSBN
IHNlZW1zIHRvIGJlIGZpeGVkIGF0IGEgdmFsdWUgb2YgNjIgcGVyIHRoZSBkYXRhIHNoZWV0LCBz
byBpdCdzCj4+Pj4+IG1vcmUgb2YgYSBQUyBjYWxjdWxhdG9yLgo+Pj4+Cj4+Pj4gSG1tLi4uIFBI
WV9SRUcyIGluIHRoZSBkYXRhc2hlZXQgb25seSBsaXN0cyAnMDAxMV8xMTEwYiAtIDYyJyBhcwo+
Pj4+IGV4YW1wbGUoPykgdmFsdWVzLCBidXQgaXQgZG9lc24ndCBzYXkgb3RoZXIgdmFsdWVzIGFy
ZSByZXNlcnZlZCBlaXRoZXIsCj4+Pj4gSSdtIG5vdCBzdXJlIHdoYXQgdG8gbWFrZSBvZiBpdC4K
Pj4+PiBJbiB0aGUgY3VycmVudCBkcml2ZXIgUEhZX1JFR18wMiAoZHJpdmVyIG1hY3JvKSBpcyBh
c3NpZ25lZCB0aGUgZmlyc3QKPj4+PiBmaWVsZCBvZiAucGxsX2Rpdl9yZWdzLCB3aGljaCBnb2Vz
IGFueXdoZXJlIGZyb20gMHg0YiB0byAweDdiIC0tIHByZXR0eQo+Pj4+IGZhciBmcm9tIDYyKDB4
M2UpLi4uCj4+Pgo+Pj4gT0suICBJIHdpbGwgZXhwZXJpbWVudCB3aXRoIGluY3JlYXNpbmcgdGhl
IHJhbmdlIG9mIE0gZnJvbSBiZWluZyBmaXhlZAo+Pj4gYXQgM2UgdG8gYSByYW5nZSBvZiAzYiB0
byA3YiB0byBzZWUgaWYgbXkgUE1TIGludGVnZXIgY2FsY3VsYXRvciBjYW4KPj4+IGdldCBtb3Jl
IGFjY3VyYXRlLgo+Pj4KPj4+Pgo+Pj4+IFNpbmNlIG90aGVyIGZyZXF1ZW5jaWVzIGhhdmUgYmVl
biBhZGp1c3RpbmcgdGhpcyBtYWluIGRpdmlzZXIgcmF0aW8gd2UKPj4+PiBhY3R1YWxseSB0cmll
ZCBjb3B5aW5nIG5laWdoYm9yaW5nIHZhbHVlcyBhbmQgYWRqdXN0aW5nIG9ubHkgdGhhdCByZWcg
Mgo+Pj4+IChzbyB0aGUgTSBpZiBJIGdldCB0aGlzIHJpZ2h0PyksIGJ1dCB0aGUgZW5kIHJlc3Vs
dCBlbmRlZCB1cCBub3QKPj4+PiBzeW5jaHJvbml6aW5nIHByb3Blcmx5IGV2ZXJ5IHRpbWUuLi4g
V2UgZGlkbid0IGhhdmUgdGltZSB0byBjaGVjayB3aXRoIGEKPj4+PiBzY29wZSBpZiB0aGUgZ2Vu
ZXJhdGVkIHNpZ25hbCB3YXMgdWdseSBvciBpZiBpdCBqdXN0IGRpZG4ndCBsb2NrCj4+Pj4gcHJv
cGVybHksIGJ1dCB0aGUgZGlzcGxheSB3b3JrZWQgd2hlbiB3ZSBqdXN0IHJlLXVzZWQgdGhlIG5l
aWdoYm9yaW5nCj4+Pj4gdmFsdWVzIHdpdGhvdXQgY2hhbmdpbmcgYW55dGhpbmcgZGVzcGl0ZSBi
ZWluZyB+My00JSBvZmYsIHNvIHdlIHRvb2sgdGhlCj4+Pj4gZWFzeSB3YXkgb3V0IGhlcmUgYW5k
IGRpZG4ndCBkaWcgbXVjaCBmdXJ0aGVyLgo+Pj4+Cj4+Pj4+IEFueXdheSwgV2hlbiBJIHJ1biBt
eSBQLVMgY2FsY3VsYXRvciB0byBnZW5lcmF0ZSB0aGUgJ2Jlc3QgcmF0ZScgSSBnZXQKPj4+Pj4g
YSB2YWx1ZSB0aGF0J3MgdXN1YWxseSAwLjIlIHZhcmlhbmNlIGZyb20gbm9taW5hbCwgYnV0IEkg
b25seSB2ZXJpZmllZAo+Pj4+PiBhIGhhbmRmdWwgb2YgdmFsdWVzOgo+Pj4+Pgo+Pj4+PiBTZXZl
cmFsIHdoaWNoIHdlcmUgKzAuMiUKPj4+Pj4gMjk3NjAwMDAwIHZzIDI5NzAwMDAwMCAoNGtAMzAp
Cj4+Pj4+IDE0ODgwMDAwMCB2cyAxNDg1MDAwMDAgKDEwODBwNjApCj4+Pj4+IDc0NDAwIHZzIDc0
MjAwCj4+Pj4+Cj4+Pj4+IE9uZSB2YWx1ZSB3YXMgLTAuMTYlCj4+Pj4+IDI0ODAwMDAwIHZzIDI1
MjAwMDAwCj4+Pj4+Cj4+Pj4+IElmIHRoZSBNIHZhbHVlIHdhcyBhIGJpdCBtb3JlIGZsZXhpYmxl
LCB3ZSBtaWdodCBiZSBhYmxlIHRvIHJlZHVjZQo+Pj4+PiB0aGF0IHZhcmlhbmNlIG1vcmUuCj4+
Pj4KPj4+PiBZZXMsIEkgdGhpbmsgdGhlIE0gdmFsdWUgY291bGQgYmUgbW9yZSBmbGV4aWJsZSwg
YnV0IHRoYXQnZCByZXF1aXJlCj4+Pj4gY2hlY2tpbmcgaWYgaXQgYWN0dWFsbHkgd29ya3MsIHdo
ZXJlYXMgaGF2aW5nIHNsaWdodGx5IG9mZiBmcmVxdWVuY2llcwo+Pj4+IHdpbGwgbW9zdCBsaWtl
bHkgYmUgT0sgc28gSSBkb24ndCB0aGluayBpdCdzIHdvcnRoIHRoZSBlZmZvcnQgLS0gaGFwcHkK
Pj4+PiB0byBzdGljayB0byB3aGF0IHRoZSBkYXRhc2hlZXQgZGVzY3JpYmVzLgo+Pj4+Cj4+Pj4+
IElmIC8gd2hlbiBJIGdldCBzb21lIHRpbWUsIEkgbWlnaHQgcGxheSB3aXRoIHRyeWluZyB0byBk
aXNhYmxlIHRoZQo+Pj4+PiBmcmFjdGlvbmFsIG1vZGUgYW5kIGp1c3QgdXNlIHRoZSBQTVMgY2Fs
Y3VsYXRvciBmb3Igc2ltcGxpY2l0eSBkZXNwaXRlCj4+Pj4+IHRoZSBpbmFjY3VyYWN5LiAgTWF5
YmUgd2UgY291bGQgZmFsbCBiYWNrIHRvIHVzaW5nIHRoZSBQTVMgY2FsY3VsYXRvcgo+Pj4+PiBp
ZiB0aGUgZGVzaXJlZCBmcmVxdWVuY3kgaXNuJ3QgaW4gdGhlIGxvb2stdXAtdGFibGUuCj4+Pj4K
Pj4+PiBUaGF0J2QgYmUgZ3JlYXRseSBhcHByZWNpYXRlZCwgSSBkb24ndCBoYXZlIGFueSBzdHJv
bmcgb3BpbmlvbiBvbgo+Pj4+IHdoZXRoZXIgdGhhdCBzaG91bGQgY29tcGxldGVseSByZXBsYWNl
IHRoZSB0YWJsZSwgb3Igb25seSBiZSB1c2VkIGlmCj4+Pj4gdGhlcmUgaXMgbm8gZXhhY3QgbWF0
Y2ggaW4gdGhlIHRhYmxlIGFzIHRoZXNlIGFyZSB2YWx1ZXMgd2Uga25vdyB3aWxsCj4+Pj4gd29y
azsgYnV0IHdlIGNhbiBkZWZpbml0ZWx5IHRlc3QgYW55IHBhdGNoIHlvdSBjYW4gdGhyb3cgYXQg
dXMgaGVyZS4KPj4+Cj4+PiBJIGNhbid0IHByb21pc2UgaXQnbGwgYmUgcXVpY2suICBJIGFtIG5v
dCBmdWxseSBjZXJ0YWluIEkgdW5kZXJzdGFuZAo+Pj4gaG93IHRoZSB3aG9sZSB0aGluZyB3b3Jr
cywgYnV0IGFzIGEgcnVsZSwgSSBkb24ndCBnZW5lcmFsbHkgbGlrZSBsb29rCj4+PiB1cCB0YWJs
ZXMgaWYgdGhleSBjYW4gYmUgY2FsY3VsYXRlZCBkeW5hbWljYWxseS4KPj4KPj4gSSB1cGRhdGVk
IG15IFBNUyBjYWxjdWxhdG9yLCBhbmQgSSByYW5kb21seSBzZWxlY3RlZCA1IHJlc29sdXRpb25z
IGFuZAo+PiB0aGV5IGFsbCByZXR1cm5lZCBhbiBleGFjdCBjbG9jayBtYXRjaCwgc28gSSdsbCBh
dHRlbXB0IHRvIHVzZSB0aGUgUE1TCj4+IGludGVnZXIgY2xvY2sgaW5zdGVhZCBvZiB0aGUgZnJh
Y3Rpb25hbCBvbmUuCj4+Cj4+IEl0J2xsIGJlIGEgbGl0dGxlIHdoaWxlIGxvbmdlciBiZWZvcmUg
SSBjYW4gZG8gYW55dGhpbmcgd2l0aCBpdC4KPiAKPiBGcmllZGVyLAo+IAo+IFVzaW5nIG15IFBN
UyBjYWxjdWxhdG9yIGFuZCBSZXYgMiBvZiB0aGUgVGVjaCBSZWYgTWFudWFsLCBJIHRoaW5rIEkK
PiBjYW4gZ2VuZXJhdGUgeW91IGEgdGFibGUgZW50cnkgZm9yIDUxLjJNSHouICBJIGRvbid0IGhh
dmUgdGhlIGFiaWxpdHkKPiB0byB0ZXN0IGl0LiAgSSBhbSBzdGlsbCB3b3JraW5nIG9uIGZpZ3Vy
aW5nIG91dCBhbiBhbGdvcml0aG0gdG8KPiBjYWxjdWxhdGUgdGhlIGZyYWN0aW9uYWwgZGl2aWRl
ciwgYnV0IDUxLjJNSHogeCA1IGRvZXMgbm90JyBhcHBlYXIgdG8KPiBuZWVkIHRoZSBmcmFjdGlv
bmFsIGNsb2NrIGRpdmlkZXIsIHNvIEkgdGhpbmsgSSBjYW4ganVzdCBnZXQgYXdheSB3aXRoCj4g
dGhlIHN0YW5kYXJkIFBNUyBjYWxjdWxhdGlvbnMuCgpUaGFua3MgQWRhbSBmb3IgYWxsIHRoZSBl
ZmZvcnRzLiBUaGUgaW5pdGlhbCByZXF1ZXN0IGZvciB0aGUgNTEuMiBNSHoKY2xvY2sgd2FzIGZy
b20gRG9taW5pcXVlLCBub3QgbWUuIEkgd2FzIGp1c3QganVtcGluZyBvbnRvIHRoZSBiYW5kd2Fn
b24Kd2l0aCBteSBvd24gdXNlLWNhc2VzLgoKPiAKPiBNeSBhbGdvcml0aG0gc2hvd2VkOgo+IEhE
TUkgUEhZIEJlc3QgUCA9IDEKPiBIRE1JIFBIWSBCZXN0IE0gPSA2NAo+IEhETUkgUEhZIEJlc3Qg
UyA9IDYKPiBIRE1JIFBIWSBCZXN0IGZyZXEgPSAyNTYwMDAwMDAKPiAKPiBJJ2xsIHRyeSB0byBn
ZW5lcmF0ZSBhIHBhdGNoIHRvIGdldCB0aGVzZSB2YWx1ZXMgaW50byB0aGUgdGFibGUgaWYKPiB5
b3UncmUgd2lsbGluZyB0byB0ZXN0IGl0LgoKQW55IGNoYW5jZSB5b3UgY2FuIHNoYXJlIHlvdXIg
YWxnb3JpdGhtLCBzbyBJIGNhbiB0cnkgdG8gZ2VuZXJhdGUgc29tZQp0YWJsZSBlbnRyaWVzIGZv
ciB0aGUgbWlzc2luZyBmcmVxdWVuY2llcyBJIGVuY291bnRlcj8KCklmIHdlIGNvdWxkIGZpZ3Vy
ZSBvdXQgdGhlIGNhbGN1bGF0aW9uIG9mIHRoZSBmcmFjdGlvbmFsIGRpdmlkZXIsIHdlCmNvdWxk
IGdlbmVyYXRlIHRhYmxlIGVudHJpZXMgZm9yIGFyYml0cmFyeSBmcmVxdWVuY2llcywgd2hpY2gg
d291bGQgYmUKYW4gZWFzeSB3YXkgdG8gYWRkIHN1cHBvcnQgZm9yIGFueSBzdHJhbmdlIGRpc3Bs
YXlzIG91dCB0aGVyZS4KCj4gCj4gQWxsLAo+IAo+IEkgc3RpbGwgdGhpbmsgaXQncyBhIGdvb2Qg
aWRlYSB0byBmYWxsIGJhY2sgdG8gdGhlIFBNUyBjYWxjdWxhdG9yIGlmCj4gdGhlIGZyYWN0aW9u
YWwgc3R1ZmYgaXNuJ3QgZm91bmQuICBXZSBjb3VsZCB0aGVuIGRldGVybWluZSB3aGljaCBjbG9j
awo+IGZyZXF1ZW5jeSBpcyBjbG9zZXIgYmV0d2VlbiB0aGUgbmVhcmVzdCB0YWJsZSBlbnRyeSBv
ciB0aGUgUE1TCj4gY2FsY3VsYXRvciB1bnRpbCBzb21lb25lIGNhbiBjb21lIHVwIHdpdGggYW4g
YWxnb3JpdGhtIGZvciBpdC4KClllcywgSSB0aGluayB0aGF0J3MgYSBnb29kIGlkZWEuCgpUaGFu
a3MKRnJpZWRlcgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
