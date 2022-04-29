Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3747C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 29 Apr 2022 12:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QuEFlR39aJ4T3PkIPEa0F5n/6YCsmEKr4mktGX646Zg=; b=OSHcAq2MGE7SGg
	W943SHR0Wl3Vz9eQXgGlVaBteLo/88vDT1md8kf5B31Kd9cbExuvWD2z3dzBvKShzfdW8CbKjqcLG
	ytzussmZKlc7YARj+seqUE/5W/1z12DuEAoN87973ixO1yHSO/EiIBi8wJ2oQyVzkxnO0M5k4cwQ+
	3943FAli4YsltrlKw0xYHqIbjpu9FfWqv6lKgdkyOEXAoWMNXcNhE5bkXBFmWqfZ2QxAsDcbDZ9g7
	eXXs19DzBxGp5j5rF/LiQfZSJjVxYHo/Qk5CGv7z1oIIWqQTj2t49f8ftcMZEV2mhWYL7BJlDokCE
	UH/zZs4x1Bv0yK+PkxwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkPm9-00B8O0-VB; Fri, 29 Apr 2022 12:31:10 +0000
Received: from mail-db8eur05on20631.outbound.protection.outlook.com
 ([2a01:111:f400:7e1a::631]
 helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkPm4-00B8KY-01; Fri, 29 Apr 2022 12:31:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BRQ0BlPTFaFe26JO7vhTmTBfETKlJlwDFke2Rz76LMOPb7o+lmkOgDZg0OWsQFUzHV+DqwczPOWWju4awgKfV6UMTVECCOODREf2v2tGGufaO+xlJhqmF6pwlyMrceJsdlgQMXVjQQ6PjLbGsJaO4F0Ww+oTsZdP2zfMsFRbxjmUYpvE9HNaekyAzJ+QhVwFyY0opQPq6ld8CVuuUGuS9t+zmVMGHNDzacK0xOwpm1sWHAFLQO+heyh7jeg6YZjBYsvJhgPZisUnbQYOMs3gy6gv/mJOh5ZkV/nTobmwwmWciiIKh9xA+rLyDDw1zZE6sKQ4pdFiRC5wLlHL0X7ADQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i1AvEDK5QlOiiZbusUC4RoQIN3aACsTkdbKESwe66TQ=;
 b=WpmRWcrMtULVeobhuuOSCZybYz0Dmh2pRDq4mfzn2bpmaxGnU/twUNAdknwYqtYWF1kz5bg64N3K4ebSpwIeDwD6de/ybddMjhZohKqDJKQNzHeM2yCZZTi9VU0aaCtV0qxrQWT16ouzeITxORcqVx9tFE66ODPIiDMIrgwgKuFbxUkgV4suNqdWiaprMnUPnSmjgSpZHk2/Xuz0f2/ciduUv2VuGkB94q+nJ6MTRzaLhj5XHzZf5QIoSegoPbTz3YtZ0orp9MGfV1fhLD5QeDkpV+wn7QJCMr1uEu8RTRtJH5YrPbzW0O4Ed5h6CQaSPrt8moO5PLz740LDD6ECCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i1AvEDK5QlOiiZbusUC4RoQIN3aACsTkdbKESwe66TQ=;
 b=F4aNZkJtKNXMhg8I22XqHg9cTLWx5P6JZfID+Bo8ohIVy907ROvqgdm9VWbBS5gngnECFvASzfsg5fNgqlZOEs6cE/GoUweMaoMnMgpSy1WI4bjGOxkWuqQ+lhfWbxf9rDt6eUHi7i2S6ZN1wbUbaURvJLTvnemTmO0tNQTrlK4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by PA4PR04MB7646.eurprd04.prod.outlook.com (2603:10a6:102:f3::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.14; Fri, 29 Apr
 2022 12:30:57 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::f5d8:2b7b:6f48:51f8]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::f5d8:2b7b:6f48:51f8%4]) with mapi id 15.20.5206.013; Fri, 29 Apr 2022
 12:30:57 +0000
Message-ID: <538339829534d8ef10c68198016d198a9ec037fc.camel@nxp.com>
Subject: Re: [PATCH resend v8 1/5] drm/bridge: nwl-dsi: Set PHY mode in
 nwl_dsi_mode_set()
From: Liu Ying <victor.liu@nxp.com>
To: Guido =?ISO-8859-1?Q?G=FCnther?= <guido.gunther@puri.sm>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, kishon@ti.com, vkoul@kernel.org, 
 robh+dt@kernel.org, krzk+dt@kernel.org, andrzej.hajda@intel.com, 
 narmstrong@baylibre.com, robert.foss@linaro.org, 
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com,  airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, s.hauer@pengutronix.de,  kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com,  robert.chiras@nxp.com,
 martin.kepplinger@puri.sm
Date: Fri, 29 Apr 2022 20:30:43 +0800
In-Reply-To: <YmLkv4PYsi+XiFr5@qwark.sigxcpu.org>
References: <20220419010852.452169-1-victor.liu@nxp.com>
 <20220419010852.452169-2-victor.liu@nxp.com>
 <YmLkv4PYsi+XiFr5@qwark.sigxcpu.org>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
X-ClientProxiedBy: HK2PR04CA0067.apcprd04.prod.outlook.com
 (2603:1096:202:15::11) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c03723eb-aa99-42d9-6dfc-08da29dc1b88
X-MS-TrafficTypeDiagnostic: PA4PR04MB7646:EE_
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-Microsoft-Antispam-PRVS: <PA4PR04MB764620923CEA9A1EC1BF2E0A98FC9@PA4PR04MB7646.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: veFj4RPSYyG/jFTPxMQ+dQEu6e3Hnrs1lCp56P1p8QJOfPcAG8GhxizQnEmQwVRuxfQKknLvsAxzb0YuJ4kf0TTkI3JeWBnZCDZoOpWhaZcUrIK/VI5+0KSdjxSVcO+Inqovv4gd1uOWCELLg6RriKYbBNsp7qON6GGnkgo/mZ3QjBL5x5y5rfYJQxW48wP+/qI9IM6b65MKSR2PPDD2slLEhRVddHdQ0n48wLY977ve4BUtu1mBvjogEPbZeGmY96zCo64iMw7e8mJ8l/Av2BgJtTET3NoQRgQFs/6603ElU6UFiCkmpKnX6wcJekUtxzqJO6Rz5op6uP9BAFby9KOka7sTANbXnNPN5mwmXDBb4Z/Bcc2BQUyQTRBdphgqQSxUUhmOo+KnpcyYMNTWbcx+iq+LosYKJlAKsEj2peJ+JBMCG1BJDlBuaPifyFjogbKIhKvQ2BYOTbgqoi0ppa2zu65lE5HRlQS0HyRFqut8pbBlWYFrpVX3URe+8A4KXpkkxka/tnTEL6ojakgKd6Qz47wMSSJlqOKUshuwNMVajxWJ3Vp2fenfMwGY9Z7kVf6uB+HfqcMXI1lzPd1fobmYMETLVh6Qc8hL+tWnOz4ulOu9AbK1+ASOiCtVLHm4YvprRXCPhZAH6I4dbvZQdcRZ2xxNys5fTWW4qunD/yqhE3kJqJbhdEXg9cGN1Y5Cp6k4FgzLxXkv8TuxcdxZXUbaw9yEiFb6w+sPoLfMnAc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB7046.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(26005)(6512007)(508600001)(6916009)(316002)(83380400001)(6486002)(4326008)(36756003)(8676002)(66946007)(66556008)(2616005)(66476007)(186003)(38350700002)(8936002)(5660300002)(38100700002)(86362001)(52116002)(6506007)(6666004)(7416002)(2906002)(99106002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WXR0dTVtNVRvL3pjODZlUXAxNHRSRG5oRHl3bzU5TUJkVlZaS0E2dHo0QXJj?=
 =?utf-8?B?U1pUN0czd2YyWXRaZDVKak8zKzdQWkxOWmdEVUlEU0dnNlMrVHlMODV0S3JY?=
 =?utf-8?B?RzBGbXNhOEdPcFYvM0p1bUtmWTBnbFVMSFB5QWpjWWlYYmNoUkszYkF5Mjhz?=
 =?utf-8?B?VXVKZVpLQmlhYWZJVTlYVU8vUzJsS25rNnpVTTVOUXJhc0RuZUhkcURBMytu?=
 =?utf-8?B?Q0xXVzlaK0cySDlkdktLcmJjNlhXU3RIQ3Rid3Bkdzg5aWxOU1dwZlpnL2J2?=
 =?utf-8?B?NWk5V3dtclBhbkZzK1dXOXpHMmlDWVJvQzFpdnMxamxQckdqNldMNGZEZXEr?=
 =?utf-8?B?OWRiRG9NenZQR2tjZEdrZGdhandCZkEzeFRXRVEwWjkvMlJ6R1ZRYmxuRk5O?=
 =?utf-8?B?TUJxVVJFZ2hFdm9KdVR5bUpKdlptNFNLeUxTdEI1UWF5T2NhcmFOaTVXdUY4?=
 =?utf-8?B?MTFUaEd2TlJjT1JaR0xOVzZtTjBHNUZrTSsxZlI1c1BXclNoSzJMT3JSNUJE?=
 =?utf-8?B?RlFCQ2I2WG95WXZDci9uMVpmckNrSjZCNlEyQ1VqaUZDdkNMZTJEc2FYUEJk?=
 =?utf-8?B?ME5NOVZOUVZ3OEMwc0wweDR1bWVOYmx5L1pqVzdRV3dIUEFjRmhqMHNVZmpw?=
 =?utf-8?B?WC9HMVlpb3JTd3dIT3ZvbDN3RlByZUExZzJkRjBiaDdlL0hQd1hYSThGV2c5?=
 =?utf-8?B?WXd2Tmh2ZE5LK3U4K09rUmxZSFR6YkZkM3VZS1RMZUNSeXdBbU51M3FNSjl1?=
 =?utf-8?B?Yk1TNWMxWWNaZVN2UWg5OWQxd0xhQzI2RnFjdDVhaGxJYjhNWE1FRk83b2ha?=
 =?utf-8?B?Vy94dmZ0dm94T0RkNWVHYmtIcnYyOUV4OTVpVS92djRXQzlDd3dndENRZmQw?=
 =?utf-8?B?S0lMN3R5Q0xEYUx5TWYrRWFtMnV2L05zbGtXVUowb1ZzUWw2aWNWd3VsZE5U?=
 =?utf-8?B?bHAva1NwS2RRYkYwMTJNZU1YVHNyRVRmamFDc0xVbEplQ21sSEwrMzdPWUVJ?=
 =?utf-8?B?MjFFU2dwMW1XUEloUUtjZkhNd0FVOVhYVExibmo2UVFRWmxuaVV1OFFmR1lX?=
 =?utf-8?B?cnpIc0FsUDB3TzZZU0p6a2U3RCsvVjU3SXJadks5bDJ0S0t1bHZYV3FlblU3?=
 =?utf-8?B?dVhDRkNUVk8wdzdmM1MzekhKT09hVUJxN3RnbVRES0hnZmZGd3JPNkdYVHlT?=
 =?utf-8?B?cytiVFlqSk5pT0JzNE5CK1FOVjJESVJkeDdxSytKU0tvUGdiKzMzSVZRMlF4?=
 =?utf-8?B?L3hiUyszQlZ0TWxkZnNrYll2VnMzZ2FVT0loVkVPdmloaEcxcUVxN0VMNmVl?=
 =?utf-8?B?U3QraTRVdytPajd5bVY3UVR0REJIZTdXdytHMEtUZzlSSWppTWd5ckxURU5S?=
 =?utf-8?B?T2VQSlorbnVFMFBkMkhyZjBBRnR2RE4wcnZuZklneFZVZEtJOWtkUFhITHhv?=
 =?utf-8?B?L3Buc1IwdzY3c1gyKytUMzNVVW9mOFgwUDM5TnNlNW1KT0F1SzN6Y1RqeUg4?=
 =?utf-8?B?WS81WmhDaUZHMysvcGkyY2FKc3REYk5wRDZkaHVSdjd6ajNaQ1k2Y2o2Tkwx?=
 =?utf-8?B?clBVUlBHOWoyTzYwRitNU1lpNytKR3JST1hxT2srK0xyRXJKT2ZyOW1XOUd0?=
 =?utf-8?B?b2RHVlpPVU5nTDAzb2s0RW5heWdVK0pkK1BKM3dDekNmclpKZ29rNnhrWEdk?=
 =?utf-8?B?Lzl1V0ZpTE1FWHhwSDlJNmtMUEsyTE50eTY2b1RlSFl3K05UbjJCU0RkMVBX?=
 =?utf-8?B?Wm9iYTAyamdOam1YTm1zSExmVldFbkpLN3NnU0c5NldwdTNlcmd5N2NhaU01?=
 =?utf-8?B?NHAzZXBZZmRtNkEzWGJ0NUNXcVNFWm5DUkhnd3N2SC95aVhrWlhic1VkTmE4?=
 =?utf-8?B?bGV0dzdYdjczL2tVVzlETWRTS1l4dVYveWtURS8vZG0yMi9YRVFrSVhYOFhE?=
 =?utf-8?B?SnplSlRXaEViTXczSkZsT3JUZzlySkI5QnpqaWowUTRZOGMrbGNheU4zT3lF?=
 =?utf-8?B?RU9jZWtrN2hqNzlneEtsMkJhd0c1cE9PQWsxV2JYb1oxRjllZVgrWG5zajdq?=
 =?utf-8?B?aFo1RklacVJHZ0k4V1VpUng1ZDZJQVZJTjlZSzBDZFI1bktXNzIyU2JzUDBI?=
 =?utf-8?B?TERKbHlaZnhjMnRnVWNaZExPc3piblI0RWFzbnlIeVNBVUN1amRXNERSYUdS?=
 =?utf-8?B?Vi9rMXNYdzJqTjkxN3Q1WERvRHd4RzA3bTc1b0todXNsSVIybmhzbnZKU2Y4?=
 =?utf-8?B?aTJtNkpvUkFXZ1FIQmI1bGNWWHpucVdwT3ZSN3hIcStVNFFZMFpoNDB1alQx?=
 =?utf-8?B?S0FCQm9aM21aSzRpRDhST3JydktYQks1ZFNOQ1VkZHE3OCtUNmgwQT09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c03723eb-aa99-42d9-6dfc-08da29dc1b88
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2022 12:30:57.2371 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AFD3dnmoY4YQamWOL/SHZSxxf5i6EXvuipOJYkIRU78biPDWntoOzQVBodsx5DnheHrLpZznll9qA+2otlxMOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7646
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_053104_098707_7E454EED 
X-CRM114-Status: GOOD (  23.02  )
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

SGksCgpPbiBGcmksIDIwMjItMDQtMjIgYXQgMTk6MjQgKzAyMDAsIEd1aWRvIEfDvG50aGVyIHdy
b3RlOgo+IEhpLAo+IE9uIFR1ZSwgQXByIDE5LCAyMDIyIGF0IDA5OjA4OjQ4QU0gKzA4MDAsIExp
dSBZaW5nIHdyb3RlOgo+ID4gVGhlIE5vcnRod2VzdCBMb2dpYyBNSVBJIERTSSBob3N0IGNvbnRy
b2xsZXIgZW1iZWRkZWQgaW4gaS5NWDhxeHAKPiA+IHdvcmtzIHdpdGggYSBNaXhlbCBNSVBJIERQ
SFkgKyBMVkRTIFBIWSBjb21ibyB0byBzdXBwb3J0IGVpdGhlcgo+ID4gYSBNSVBJIERTSSBkaXNw
bGF5IG9yIGEgTFZEUyBkaXNwbGF5LiAgU28sIHRoaXMgcGF0Y2ggY2FsbHMKPiA+IHBoeV9zZXRf
bW9kZSgpIGZyb20gbndsX2RzaV9tb2RlX3NldCgpIHRvIHNldCBQSFkgbW9kZSB0byBNSVBJIERQ
SFkKPiA+IGV4cGxpY2l0bHkuCj4gPiAKPiA+IENjOiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hj
cHUub3JnPgo+ID4gQ2M6IFJvYmVydCBDaGlyYXMgPHJvYmVydC5jaGlyYXNAbnhwLmNvbT4KPiA+
IENjOiBNYXJ0aW4gS2VwcGxpbmdlciA8bWFydGluLmtlcHBsaW5nZXJAcHVyaS5zbT4KPiA+IENj
OiBBbmRyemVqIEhhamRhIDxhbmRyemVqLmhhamRhQGludGVsLmNvbT4KPiA+IENjOiBOZWlsIEFy
bXN0cm9uZyA8bmFybXN0cm9uZ0BiYXlsaWJyZS5jb20+Cj4gPiBDYzogTGF1cmVudCBQaW5jaGFy
dCA8TGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPgo+ID4gQ2M6IEpvbmFzIEthcmxt
YW4gPGpvbmFzQGt3aWJvby5zZT4KPiA+IENjOiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFi
ZWNAZ21haWwuY29tPgo+ID4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiA+
IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Cj4gPiBDYzogTlhQIExpbnV4IFRl
YW0gPGxpbnV4LWlteEBueHAuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogTGl1IFlpbmcgPHZpY3Rv
ci5saXVAbnhwLmNvbT4KCkhvcGUgdGhpcyBwYXRjaCB3b24ndCBmYWxsIHRocm91Z2ggdGhlIGNy
YWNrcy4KQ2FuIHNvbWVvbmUgcGxlYXNlIGFwcGx5IGl0IHRvIGRybS1taXNjLW5leHQ/IFJvYmVy
dD8KClRoYW5rcywKTGl1IFlpbmcKCj4gPiAtLS0KPiA+IHY3LT52ODoKPiA+ICogUmVzZW5kIHdp
dGggQW5kcnplaidzIGFuZCBKZXJuZWoncyBtYWlsIGFkZHJlc3NlZCB1cGRhdGVkLgo+ID4gCj4g
PiB2Ni0+djc6Cj4gPiAqIE5vIGNoYW5nZS4KPiA+IAo+ID4gdjUtPnY2Ogo+ID4gKiBSZWJhc2Ug
dGhlIHNlcmllcyB1cG9uIHY1LjE3LXJjMS4KPiA+ICogU2V0IFBIWSBtb2RlIGluIC0+bW9kZV9z
ZXQoKSBpbnN0ZWFkIG9mIC0+cHJlX2VuYWJsZSgpIGluIHRoZQo+ID4gbndsLWRzaQo+ID4gICBi
cmlkZ2UgZHJpdmVyIGR1ZSB0byB0aGUgcmViYXNlLgo+ID4gKiBEcm9wIEd1aWRvJ3MgUi1iIHRh
ZyBkdWUgdG8gdGhlIHJlYmFzZS4KPiA+IAo+ID4gdjQtPnY1Ogo+ID4gKiBObyBjaGFuZ2UuCj4g
PiAKPiA+IHYzLT52NDoKPiA+ICogTm8gY2hhbmdlLgo+ID4gCj4gPiB2Mi0+djM6Cj4gPiAqIE5v
IGNoYW5nZS4KPiA+IAo+ID4gdjEtPnYyOgo+ID4gKiBBZGQgR3VpZG8ncyBSLWIgdGFnLgo+ID4g
Cj4gPiAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9ud2wtZHNpLmMgfCA2ICsrKysrKwo+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9icmlkZ2UvbndsLWRzaS5jCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uv
bndsLWRzaS5jCj4gPiBpbmRleCBkNTk0NTUwMWE1ZWUuLjg1YmFiNzM3MmFmMSAxMDA2NDQKPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvbndsLWRzaS5jCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vYnJpZGdlL253bC1kc2kuYwo+ID4gQEAgLTY2Niw2ICs2NjYsMTIgQEAgc3RhdGlj
IGludCBud2xfZHNpX21vZGVfc2V0KHN0cnVjdCBud2xfZHNpCj4gPiAqZHNpKQo+ID4gIAkJcmV0
dXJuIHJldDsKPiA+ICAJfQo+ID4gIAo+ID4gKwlyZXQgPSBwaHlfc2V0X21vZGUoZHNpLT5waHks
IFBIWV9NT0RFX01JUElfRFBIWSk7Cj4gPiArCWlmIChyZXQgPCAwKSB7Cj4gPiArCQlEUk1fREVW
X0VSUk9SKGRldiwgIkZhaWxlZCB0byBzZXQgRFNJIHBoeSBtb2RlOiAlZFxuIiwKPiA+IHJldCk7
Cj4gPiArCQlnb3RvIHVuaW5pdF9waHk7Cj4gPiArCX0KPiA+ICsKPiA+ICAJcmV0ID0gcGh5X2Nv
bmZpZ3VyZShkc2ktPnBoeSwgcGh5X2NmZyk7Cj4gPiAgCWlmIChyZXQgPCAwKSB7Cj4gPiAgCQlE
Uk1fREVWX0VSUk9SKGRldiwgIkZhaWxlZCB0byBjb25maWd1cmUgRFNJIHBoeTogJWRcbiIsCj4g
PiByZXQpOwo+IAo+IEkgY2FuJ3QgY3VycmVudGx5IHRlc3QgdGhpcyBidXQgaXQgc3RpbGwgbG9v
a3MgZ29vZCBzbwo+IAo+IFJldmlld2VkLWJ5OiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUu
b3JnPgo+IAo+IENoZWVycywKPiAgLS0gR3VpZG8KPiAKPiA+IC0tIAo+ID4gMi4yNS4xCj4gPiAK
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
