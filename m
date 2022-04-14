Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA1C6C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 14 Apr 2022 06:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ufGXV+DYl0mnuYSAfseutTlMK4/qcHHEZsUKOOVsjWU=; b=WfE7afunLz6ZBO
	ulaPSHV4bx6PwE/n8vUghu7q9LMlwu7fhhXyrcQJqUPnfwIyBSku2USWa2VFg+xCNGKUdFayZZcKa
	q/6dRNHDf1iclowgJnwMykTG5PWk9p0K+8Rj4sswnVhY09cThNeOmwaprS+BBmUEfbx3AeVm0ZyAo
	/qCbjQe3zrS/GbYUVtADmG+KmllYWFElQ5gbRC2w9Cofir4BbCqAuQ90lGWcWBh2yMiUlHUXMouh8
	miDDgza9L2mjNPF5HFMuoXZaFYZGF4irPnRJhQivMhPsS1PeoJtGdcTTyBwn5wsDWe5dZ+g+AeUvg
	DHVjeva2siM1z40/X4Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1netHM-004Ayv-58; Thu, 14 Apr 2022 06:48:32 +0000
Received: from mail-am5eur03on0605.outbound.protection.outlook.com
 ([2a01:111:f400:fe08::605]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1netGd-004Abr-PO; Thu, 14 Apr 2022 06:47:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U5K9i2OmlZJqsqQQKFBWNLQf0/sPIg2RxE6T0/xv/lgOTkjPrnLUTABsapcob7bi7iNbyiW3P3WWBJEVhDYd6G957BTseP2nzKC8GnUHxzyPmNIzdXEWDF+ABmV6H/mBcSAM/h5g5ioqJpfJU7mOzqilbiFuOZBJcr71MGercmDjN2D8zWb4hpE2P7jUkHVzc0xLYi1ISEG+NJ9H0tM4ElL+Kj++L2UDLHqy1hGklfHj5sbOqpLfxb5QVSBTdjtk4exAp2Pt+VXFZgS9DRTprYRmmsYf4qc3RdbWxeId/c/wRhmS+1DQ9kEHDaITCrvyR/hCNuQjxFBJu3u+/Ro+4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D1NQuLWQmGo8PY4g1WlzZd8VjCk1WnNjcOgPsLF3YTU=;
 b=Eoe6nkA3U8wA3xp8o1W+yLFbk0eseZGACqp5CIaPVDw2yMeHSAY/J/XhF5eRFWtrO02ra5+CGmb6cIN3C1qNzzwwuYxdl4W2UPTLwM99hT81drPs3DOvrSDHP63W/BJ1//fiiUfSJUmJLENZym7o/Q5UnPo3oCmJWIHVzxBeeijX05oJzv0XOywP7Eew5N64DEIifbYWkdFGf2Po30VuDZcVKSAwIhRe/aOoz0x5bZb6wv9gsLdjOJ/Ldj3OWti0SZRB4oRl04EA2pNEMBt/GVFJhVOB+fGfu2oRDtoO05jjlF3+jzvjz1h4zvrRph9/jI+CqSjGIJiu4fgC/vzuSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D1NQuLWQmGo8PY4g1WlzZd8VjCk1WnNjcOgPsLF3YTU=;
 b=R5mGTerrcBOZsPccJ1KKlvIGHtTD70yl0hqqTFmECkydbJhM6J/nhh9S3W90LMz/VAiktb/fRZ+uCAxB6aLF1GMMebn/J1Q07qvoCZOX7UpisBQhyPxUkgU/q7RtdhFVCKkHWUd/PGstf8yFDp7ybCREdYYp4ZOwjUoLq6QBauE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by AM6PR04MB4744.eurprd04.prod.outlook.com (2603:10a6:20b:5::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.30; Thu, 14 Apr
 2022 06:47:43 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::b09c:8ffe:8e02:7387]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::b09c:8ffe:8e02:7387%9]) with mapi id 15.20.5164.018; Thu, 14 Apr 2022
 06:47:43 +0000
From: Liu Ying <victor.liu@nxp.com>
To: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Cc: kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
 andrzej.hajda@intel.com, narmstrong@baylibre.com, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, agx@sigxcpu.org,
 robert.chiras@nxp.com, martin.kepplinger@puri.sm,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v7 3/5] dt-bindings: phy: Convert mixel,
 mipi-dsi-phy to json-schema
Date: Thu, 14 Apr 2022 14:48:56 +0800
Message-Id: <20220414064858.405096-4-victor.liu@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220414064858.405096-1-victor.liu@nxp.com>
References: <20220414064858.405096-1-victor.liu@nxp.com>
X-ClientProxiedBy: SI2PR06CA0005.apcprd06.prod.outlook.com
 (2603:1096:4:186::12) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bb1a901b-4c27-45fe-f14d-08da1de2ace7
X-MS-TrafficTypeDiagnostic: AM6PR04MB4744:EE_
X-Microsoft-Antispam-PRVS: <AM6PR04MB47440E3DA0ED60B99D8B235998EF9@AM6PR04MB4744.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3OjWEkhC/qyPAwg1Jhm3gHT4niLiXVkxAYgE5NT1nA/iR6L7qkNbsIjqdxci0qP82d4L/WmbeLfj/oQqzrtlskFW1WQUYXk62kvL0myi3f8987bMIrc1Lslgcpck6M2OiFoAoDFVMNGPDGQ2PKWdCB0kimeioynQo9eBLO3jszTPmizqsCkSPzte8D1YCczRsEPFJKH8SgwiS5qg8LylaloOH6JjorZ/58lPhn+JIBkWtITRRY1So4n/djC10YX5sIOte4AWrOMpXBAm82YwCHU+nZ3b9zEhp9gnwh5GhHSfOpBKuLjLjQVStaT2aCgQLbwpapkZOqPtlFbixGxtv5JawPdwXNlBcri9qxdHFOi6uFJ1Due7PyIau+KCV96olRqrzotK2REM00lTi+xkw+IKN2OEe0e/AFM9p8Q7g+/MVrwF/wNWY/68rBHFc8petcwzDFsyHtdf/ma13dHJfd7iYJi0UdTk1Y2aekiZlOWriuMqAY/8cskKbgjomgTay/Tr4CTnG4u4Qf+6EUXpShsr5893sBNN9pET7wZBSBsMi4DRV/WZETMG2m/dPZO3Cj8stDM/CHTVRIBr2C4UG8OubINXQzzkIQR4CByXHPmQPTS5sX9CQatFhvgyHPUXJoHKYb+oQM4sNvBcj/mn6qfjOEaRl+KsF0Qj3qFGBv/dh/+VbfYBlXmpCVYkuyNp+UMXmvjyChUUIk6WF1M03iCB0SrDpKEK/FPKs1V9+ySwF9MaavFDGUJpkX/So5pEhx+GQnD3OTUdQneWz+LDfTglk7eBT3+TvCsi0av9MnLQW/jdmBQ+3uruKqbvW+o6Tl6PewxfiMbkfPJKdC7aNg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB7046.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(316002)(7416002)(36756003)(38350700002)(8676002)(5660300002)(6512007)(83380400001)(66946007)(1076003)(66556008)(66476007)(66574015)(186003)(2616005)(6506007)(86362001)(4326008)(26005)(2906002)(966005)(6486002)(8936002)(38100700002)(6666004)(508600001)(52116002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OWwwYlN0NmZxdW5jeXpUMmY3THpxS0gxcnZUYlRWUVIya3VraGxsWnI1WEJz?=
 =?utf-8?B?TzBvczR0NlhrV1NNY2NlTlRmNTNqRGxMRC8yOEZjOCtkRVNWb05nMEd5cTFB?=
 =?utf-8?B?em5Wa3YyTXMwK3NZL2lzTHVQd3ArWW83QlliRXdVdGNXNzE4YWN4VW9IVlVo?=
 =?utf-8?B?bnQ4SVNFTFhSMnNGbHNIa3dRYlU4bGw1Y1lsY3hlamlnQkhDYWxiTUZGL2Iv?=
 =?utf-8?B?Y2dKeDBqbkNvMkpuQXM1Uk9CRkpZUlAvS2F6ekRLR2YzbDkrcml6STFwaXRv?=
 =?utf-8?B?aHlmbWJpd2pLRDN4TWRBeDA3UmQxRG1MWFR4U0RWeEowSHlhcmlSSVM5NDk1?=
 =?utf-8?B?eEw0QW1EZXhDR2JNR0tON1ptdnN3UEc0a3ZJTExYWC9ER0xmSFhBNDlaZXVG?=
 =?utf-8?B?VWNHcDNnZWJ5d1FBS1hIbEpQWlVLNURMSTZyanR0bkVJaTJyMGt4VVh1cnFV?=
 =?utf-8?B?aWdBSEpoZ0F0WUR0dlEyazM1VHJMTHdsMkZ5Q2I2V3BqK0l2THNZTWk3bVp0?=
 =?utf-8?B?SDdGWU5OdTA4eE5UbE1WRVpYcFptMHJzWUlMbmVnRWw2STNhYXFRa3NEaHg5?=
 =?utf-8?B?eVNpWHM1N1gwME9JN2FZNDRDU25YWEFHbGNMTlJkR3BrTnRWRmo0bnlIc1Fj?=
 =?utf-8?B?eFVnZnN6UkZXejFXeDhwUDlTRXd6dHczS3h1eEZrSEQyZE9lcjQ3YlRoZFVz?=
 =?utf-8?B?TDFTSWJYWG5tL3BUekx6cGNESE9MVFB6OG5OVXZpQlRGd0VtMVJoZmY1VjlG?=
 =?utf-8?B?ZWdrcFJ2bm82ZENoYldzcTZXcERmaGFVOWpvN0ZTTTAzR2xhaUVVeHo1L0Zy?=
 =?utf-8?B?VGpndjdEMHh6ZVRNMVdOTmJjNXFyOU00SjNaNWZJNlZaVkdtQ0VadFZSdHdy?=
 =?utf-8?B?RlY0ekphQVRYazFEb2luQUNVLzhvYi9LaStIZm9nODVZNStIYVFIOVcyR2E1?=
 =?utf-8?B?RlhLYURjTWJSYWo2aEJDWjRpa0RscmdWN2pLWnpxRWRicDdFNUxPV3dpWVFn?=
 =?utf-8?B?SWdiKzM0QkFROE5Tb014SGErVWJLWmtzOThGbTZnNUpPR2RpcE1ncEl2VGUx?=
 =?utf-8?B?RUExTksvNGhESjdCRnNCVVlXSkdNdDFORXB5Q1Y0Q0h4R1lCbnk1bWpQZ0Yy?=
 =?utf-8?B?T0tmb3J4anFSNlduNGl3ZSs5MjZUbEU5cC9EY3daUEErR1daNUN0Q2FES2t1?=
 =?utf-8?B?eXBtMCtxT3ZWb3JOaDJCS1ZOdUVLWkRmT21DdHpuMXk1TmJxK29ER0NnSzI0?=
 =?utf-8?B?Ry9jTG9lQXhHUWg3ditLNEoySk5BV010TE45SXZmRGQ0RjZLZ3JvUkRBWmRh?=
 =?utf-8?B?R0xocTdJNW1tbExLMVlYNzZvOGJodnhzMldGbWFOYU1idTBMQnYwRXY0Q3d5?=
 =?utf-8?B?OGxqelV4Ny81a2hKWXVsWXJtY29yY3NSWFNLVzNsZ2tuSGUvcFpQV3hpUDNH?=
 =?utf-8?B?U2E0NTd1dUxEU3ozTTdxQnhLaCtQS1lQZ0ZCNUFyK2dqekJDS28vNTZvYVc2?=
 =?utf-8?B?WG5Cb1cyUFAyVkZ0UnZzN3dCUDN1cE5kUUdIakg3TzR3eDE5TFhnZ0diRnRB?=
 =?utf-8?B?S2ZEdHYvdDlqYkU0bTFOZXFUVWdNSHJxbDNnQThXaFJXbzJTVldZZm12REF3?=
 =?utf-8?B?elRXSGF5QVNjZmlkUnFHRUYxTFFtb2tyb25zckplb1RjNTZXVXBvaktLOHVK?=
 =?utf-8?B?aWpKc3pRSVhxNnRkb2NQcWhNcVVDR1RPTlhIL0x2dzhnOWR2bVpPQ1FmRnV5?=
 =?utf-8?B?Unk2TFptSksyb2pEcm5ETnJtYS9YbG14ckJPdGtRSXZDWW5nQWZlY29Ud2xi?=
 =?utf-8?B?Sm8wZkZZY08wNTNnNldFSENvMS9aQ1dsd0ZLbnVOZys3MzlIRndJWHBIMXM2?=
 =?utf-8?B?OERJSS9WakVhdWU0eFl6WDRlbnlQT3ZENXNSTDBJOVU0YmluZUw0RHIvcGdT?=
 =?utf-8?B?ZDJKZzdlQkFTenlnVnkxL3FMa2JHekhHcWQwT3RqaUFCUlZveGNGQ1hnRnZY?=
 =?utf-8?B?LzNRT1lXdUFmSGRTcGp2Nm5DZ1ZZTVdqeWpJaG9Rb3U0TVJqY2hQNmxsRjlI?=
 =?utf-8?B?M1I2cCt5aEkxOUZkTkh0L1BwM1cwMnJ4UTF1S1YxcnpoenNGV1g4WG1PYndu?=
 =?utf-8?B?SWk4TDN4RHpsNU5BN0xtVkcwOGo3MFNrSW1VSXRoeEl3dGt4eWRHL2ZUM2ZO?=
 =?utf-8?B?RVY4dWoya2FZVG1IMzh4elZWRGduU2p5eExRYWtjbU1oWFJDTk53djhvay84?=
 =?utf-8?B?L2haY3hQRS83Y09YSjR6MzVyK01YSUxtampRQWdqRitJS1RVTG5yTHNZWlY3?=
 =?utf-8?B?dURPTCtLeW5lQnIrSGNsSmF3dy9xdVpPQkJTanl3elpDMmxSbkJ5dz09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb1a901b-4c27-45fe-f14d-08da1de2ace7
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2022 06:47:42.9385 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t+2K5ux2CfGwFxZTJGCfi3krU73bsw85h/ik1OZwbzvAst6ChUgRxrzAicmVcwwovjde4fX/JZWNJlujPF+ASA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4744
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_234747_908305_55F252F7 
X-CRM114-Status: GOOD (  16.77  )
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

VGhpcyBwYXRjaCBjb252ZXJ0cyB0aGUgbWl4ZWwsbWlwaS1kc2ktcGh5IGJpbmRpbmcgdG8KRFQg
c2NoZW1hIGZvcm1hdCB1c2luZyBqc29uLXNjaGVtYS4KCkNvbXBhcmluZyB0byB0aGUgcGxhaW4g
dGV4dCB2ZXJzaW9uLCB0aGUgbmV3IGJpbmRpbmcgYWRkcwp0aGUgJ2Fzc2lnbmVkLWNsb2Nrcycs
ICdhc3NpZ25lZC1jbG9jay1wYXJlbnRzJyBhbmQKJ2Fzc2lnbmVkLWNsb2NrLXJhdGVzJyBwcm9w
ZXJpdGVzLCBvdGhlcndpc2UgJ21ha2UgZHRic19jaGVjaycKd291bGQgY29tcGxhaW4gdGhhdCB0
aGVyZSBhcmUgbWlzLW1hdGNoZXMuICBBbHNvLCB0aGUgbmV3CmJpbmRpbmcgcmVxdWlyZXMgdGhl
ICdwb3dlci1kb21haW5zJyBwcm9wZXJ0eSBzaW5jZSBhbGwgcG90ZW50aWFsClNvQ3MgdGhhdCBl
bWJlZCB0aGlzIFBIWSB3b3VsZCBwcm92aWRlIGEgcG93ZXIgZG9tYWluIGZvciBpdC4KVGhlIGV4
YW1wbGUgb2YgdGhlIG5ldyBiaW5kaW5nIHRha2VzIHJlZmVyZW5jZSB0byB0aGUgbGF0ZXN0CmRw
aHkgbm9kZSBpbiBpbXg4bXEuZHRzaS4KCkNjOiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUu
b3JnPgpDYzogS2lzaG9uIFZpamF5IEFicmFoYW0gSSA8a2lzaG9uQHRpLmNvbT4KQ2M6IFZpbm9k
IEtvdWwgPHZrb3VsQGtlcm5lbC5vcmc+CkNjOiBSb2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwu
b3JnPgpDYzogTlhQIExpbnV4IFRlYW0gPGxpbnV4LWlteEBueHAuY29tPgpSZXZpZXdlZC1ieTog
Um9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KUmV2aWV3ZWQtYnk6IEd1aWRvIEfDvG50aGVy
IDxhZ3hAc2lneGNwdS5vcmc+ClNpZ25lZC1vZmYtYnk6IExpdSBZaW5nIDx2aWN0b3IubGl1QG54
cC5jb20+Ci0tLQp2Ni0+djc6CiogTm8gY2hhbmdlLgoKdjUtPnY2OgoqIE5vIGNoYW5nZS4KCnY0
LT52NToKKiBObyBjaGFuZ2UuCgp2My0+djQ6CiogQWRkIFJvYidzIGFuZCBHdWlkbydzIFItYiB0
YWdzLgoKdjItPnYzOgoqIEltcHJvdmUgdGhlICdjbG9jay1uYW1lcycgcHJvcGVydHkgYnkgZHJv
cHBpbmcgJ2l0ZW1zOicuCgp2MS0+djI6CiogTmV3bHkgaW50cm9kdWNlZCBpbiB2Mi4gIChHdWlk
bykKCiAuLi4vYmluZGluZ3MvcGh5L21peGVsLG1pcGktZHNpLXBoeS50eHQgICAgICAgfCAyOSAt
LS0tLS0tLQogLi4uL2JpbmRpbmdzL3BoeS9taXhlbCxtaXBpLWRzaS1waHkueWFtbCAgICAgIHwg
NzIgKysrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA3MiBpbnNlcnRpb25zKCsp
LCAyOSBkZWxldGlvbnMoLSkKIGRlbGV0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGh5L21peGVsLG1pcGktZHNpLXBoeS50eHQKIGNyZWF0ZSBtb2RlIDEw
MDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21peGVsLG1pcGktZHNp
LXBoeS55YW1sCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3BoeS9taXhlbCxtaXBpLWRzaS1waHkudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BoeS9taXhlbCxtaXBpLWRzaS1waHkudHh0CmRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0
NAppbmRleCA5YjIzNDA3MjMzYzAuLjAwMDAwMDAwMDAwMAotLS0gYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L21peGVsLG1pcGktZHNpLXBoeS50eHQKKysrIC9kZXYvbnVs
bApAQCAtMSwyOSArMCwwIEBACi1NaXhlbCBEU0kgUEhZIGZvciBpLk1YOAotCi1UaGUgTWl4ZWwg
TUlQSS1EU0kgUEhZIElQIGJsb2NrIGlzIGUuZy4gZm91bmQgb24gaS5NWDggcGxhdGZvcm1zIChh
bG9uZyB0aGUKLU1JUEktRFNJIElQIGZyb20gTm9ydGh3ZXN0IExvZ2ljKS4gSXQgcmVwcmVzZW50
cyB0aGUgcGh5c2ljYWwgbGF5ZXIgZm9yIHRoZQotZWxlY3RyaWNhbCBzaWduYWxzIGZvciBEU0ku
Ci0KLVJlcXVpcmVkIHByb3BlcnRpZXM6Ci0tIGNvbXBhdGlibGU6IE11c3QgYmU6Ci0gIC0gImZz
bCxpbXg4bXEtbWlwaS1kcGh5IgotLSBjbG9ja3M6IE11c3QgY29udGFpbiBhbiBlbnRyeSBmb3Ig
ZWFjaCBlbnRyeSBpbiBjbG9jay1uYW1lcy4KLS0gY2xvY2stbmFtZXM6IE11c3QgY29udGFpbiB0
aGUgZm9sbG93aW5nIGVudHJpZXM6Ci0gIC0gInBoeV9yZWYiOiBwaGFuZGxlIGFuZCBzcGVjaWZp
ZXIgcmVmZXJyaW5nIHRvIHRoZSBEUEhZIHJlZiBjbG9jawotLSByZWc6IHRoZSByZWdpc3RlciBy
YW5nZSBvZiB0aGUgUEhZIGNvbnRyb2xsZXIKLS0gI3BoeS1jZWxsczogbnVtYmVyIG9mIGNlbGxz
IGluIFBIWSwgYXMgZGVmaW5lZCBpbgotICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGh5L3BoeS1iaW5kaW5ncy50eHQKLSAgdGhpcyBtdXN0IGJlIDwwPgotCi1PcHRpb25hbCBw
cm9wZXJ0aWVzOgotLSBwb3dlci1kb21haW5zOiBwaGFuZGxlIHRvIHBvd2VyIGRvbWFpbgotCi1F
eGFtcGxlOgotCWRwaHk6IGRwaHlAMzBhMDAzMCB7Ci0JCWNvbXBhdGlibGUgPSAiZnNsLGlteDht
cS1taXBpLWRwaHkiOwotCQljbG9ja3MgPSA8JmNsayBJTVg4TVFfQ0xLX0RTSV9QSFlfUkVGPjsK
LQkJY2xvY2stbmFtZXMgPSAicGh5X3JlZiI7Ci0JCXJlZyA9IDwweDMwYTAwMzAwIDB4MTAwPjsK
LQkJcG93ZXItZG9tYWlucyA9IDwmcGRfbWlwaTA+OwotCQkjcGh5LWNlbGxzID0gPDA+OwotICAg
ICAgICB9OwpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bo
eS9taXhlbCxtaXBpLWRzaS1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9waHkvbWl4ZWwsbWlwaS1kc2ktcGh5LnlhbWwKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5k
ZXggMDAwMDAwMDAwMDAwLi5jMzRmMmU2ZDZiZDUKLS0tIC9kZXYvbnVsbAorKysgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21peGVsLG1pcGktZHNpLXBoeS55YW1sCkBA
IC0wLDAgKzEsNzIgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkg
T1IgQlNELTItQ2xhdXNlKQorJVlBTUwgMS4yCistLS0KKyRpZDogaHR0cDovL2RldmljZXRyZWUu
b3JnL3NjaGVtYXMvcGh5L21peGVsLG1pcGktZHNpLXBoeS55YW1sIworJHNjaGVtYTogaHR0cDov
L2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCisKK3RpdGxlOiBNaXhlbCBE
U0kgUEhZIGZvciBpLk1YOAorCittYWludGFpbmVyczoKKyAgLSBHdWlkbyBHw7xudGhlciA8YWd4
QHNpZ3hjcHUub3JnPgorCitkZXNjcmlwdGlvbjogfAorICBUaGUgTWl4ZWwgTUlQSS1EU0kgUEhZ
IElQIGJsb2NrIGlzIGUuZy4gZm91bmQgb24gaS5NWDggcGxhdGZvcm1zIChhbG9uZyB0aGUKKyAg
TUlQSS1EU0kgSVAgZnJvbSBOb3J0aHdlc3QgTG9naWMpLiBJdCByZXByZXNlbnRzIHRoZSBwaHlz
aWNhbCBsYXllciBmb3IgdGhlCisgIGVsZWN0cmljYWwgc2lnbmFscyBmb3IgRFNJLgorCitwcm9w
ZXJ0aWVzOgorICBjb21wYXRpYmxlOgorICAgIGVudW06CisgICAgICAtIGZzbCxpbXg4bXEtbWlw
aS1kcGh5CisKKyAgcmVnOgorICAgIG1heEl0ZW1zOiAxCisKKyAgY2xvY2tzOgorICAgIG1heEl0
ZW1zOiAxCisKKyAgY2xvY2stbmFtZXM6CisgICAgY29uc3Q6IHBoeV9yZWYKKworICBhc3NpZ25l
ZC1jbG9ja3M6CisgICAgbWF4SXRlbXM6IDEKKworICBhc3NpZ25lZC1jbG9jay1wYXJlbnRzOgor
ICAgIG1heEl0ZW1zOiAxCisKKyAgYXNzaWduZWQtY2xvY2stcmF0ZXM6CisgICAgbWF4SXRlbXM6
IDEKKworICAiI3BoeS1jZWxscyI6CisgICAgY29uc3Q6IDAKKworICBwb3dlci1kb21haW5zOgor
ICAgIG1heEl0ZW1zOiAxCisKK3JlcXVpcmVkOgorICAtIGNvbXBhdGlibGUKKyAgLSByZWcKKyAg
LSBjbG9ja3MKKyAgLSBjbG9jay1uYW1lcworICAtIGFzc2lnbmVkLWNsb2NrcworICAtIGFzc2ln
bmVkLWNsb2NrLXBhcmVudHMKKyAgLSBhc3NpZ25lZC1jbG9jay1yYXRlcworICAtICIjcGh5LWNl
bGxzIgorICAtIHBvd2VyLWRvbWFpbnMKKworYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCisK
K2V4YW1wbGVzOgorICAtIHwKKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svaW14OG1x
LWNsb2NrLmg+CisgICAgZHBoeTogZHBoeUAzMGEwMDMwIHsKKyAgICAgICAgY29tcGF0aWJsZSA9
ICJmc2wsaW14OG1xLW1pcGktZHBoeSI7CisgICAgICAgIHJlZyA9IDwweDMwYTAwMzAwIDB4MTAw
PjsKKyAgICAgICAgY2xvY2tzID0gPCZjbGsgSU1YOE1RX0NMS19EU0lfUEhZX1JFRj47CisgICAg
ICAgIGNsb2NrLW5hbWVzID0gInBoeV9yZWYiOworICAgICAgICBhc3NpZ25lZC1jbG9ja3MgPSA8
JmNsayBJTVg4TVFfQ0xLX0RTSV9QSFlfUkVGPjsKKyAgICAgICAgYXNzaWduZWQtY2xvY2stcGFy
ZW50cyA9IDwmY2xrIElNWDhNUV9WSURFT19QTEwxX09VVD47CisgICAgICAgIGFzc2lnbmVkLWNs
b2NrLXJhdGVzID0gPDI0MDAwMDAwPjsKKyAgICAgICAgI3BoeS1jZWxscyA9IDwwPjsKKyAgICAg
ICAgcG93ZXItZG9tYWlucyA9IDwmcGdjX21pcGk+OworICAgIH07Ci0tIAoyLjI1LjEKCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
