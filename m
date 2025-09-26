Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4A8CCCA46F
	for <linux-phy@archiver.kernel.org>; Fri, 26 Sep 2025 18:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J6Wvev92yNaRrSHTrirpZr/xAcaO0Kq5JVgbopBpvPI=; b=MZIdyq2ooqNwTk
	mFU4dgeDiKvH5Y+U5NDAwjYKmyYAyi088qGsMY4o74f32cmr4ShPHVK84JvqJUyUb3svF9okmC6Q9
	ZCZEQJTRCVyoR4+zjdtCzrI6QIa7Lw52mGF5uANxZDjz2uUHhrXIAZ8Bq9gUSVJ7rWOQtiedX9GwU
	J17Xpo14b1EB1c4FHyGKEhURUQRYFVC8PIZaiu2PFve7guFKPpGdyi/9VlJAnWYrK4CedMDVG03Ai
	0mdD/J/5nmtPjTZIaM5dfHOk7yAQR1Z4+pKqRixXhUpcpa9NVsmL7A/5K0LmFj4XRbHMgg3yzXSHL
	YTvimWjfPFQFip/u1jaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2CpI-00000003S2T-2hKF;
	Fri, 26 Sep 2025 18:05:48 +0000
Received: from mail-francesouthazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c207::3] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2CpE-00000003Rhi-06Dv
	for linux-phy@lists.infradead.org;
	Fri, 26 Sep 2025 18:05:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z9kzF4RN6x6a2LlbUz/EaGPfTYIxKvCMaVR9e9XzZ8HHhpn/uCdmE0/9WKnI7tKeTDiHLyz5NmJ9e5EbNXdwJiewTLqqMHaW2yf0jNy0qHdTg3vcaIBkzs6D5fBCkugqIZfWHh+JbphNNmUN9+VtjCefWqwAfJdg9l2Y7TUK/pZBAp8pIGOD5akvNzS4FCTI96RuoBM95kJcc1X/yjpeErwUvSuBrw1TvDgJ7FIBHwacySV8m5eY72nylAJqh9ycd1xc4rc3IDSlpsGDh1BDtefRSEvHCITwlNDLQ4Ejt2CtkxxemSbtrlUUTe1FqFgKTOlY6hggwcqGTkPwrFOeEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UBDQhiBOD7UunZlOMKY1wZoKSTYFN9s2zvHk+GvVEM0=;
 b=YInDJwUjmjOahWSs1OUTReKyCqC4/ZLJHK5JDaJhJEwL9XtoR0kOAGvgZXmx3e5MY+bzFpeM8Foc2ffu1BIviBhkzcIk3FfA+JnRgmQ3lzwwiS4ZjGS1fPvQV/p82m9R6AHgOvZ8ca91aZKuUNnXpX5ehOYbPb8Te7znQSAYE43KjiI3tBiLeIvEOtSJdLM0vlcqPP3Zt9E3loplxtDI5L2olyyIGW0xr9Q7rUlzALUlhKlLIpJ+xm9pr3diLN4Sc9AK5BUPwBq2cLzcCzNealUofPvoGD1r8UPpud/hCYCNuD7+InRakVe8/Y2wfZ+UBE4udDU+vj00DZvqmXL3/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UBDQhiBOD7UunZlOMKY1wZoKSTYFN9s2zvHk+GvVEM0=;
 b=gkwbDIQwfkXO6Qbdm18dbH59zmSoWDnnUhT13Siih5L0XSc0sFEqNBNS1k8Kqk87BigzpBpBoyzrp7s/weq4lOsOIqr4Fa7v2d+vIwg+tWQNBpyXDnp8AJ+GZewfhDnMLJqjjoCkM4X1MMNqg7fDQdn1MTxJ6Km6JwtzTSTirtyJ03Iw5g6aGOIcNVrc3i2z+M1rjEIVJB/ZbkSE43dfxtmZFByjJ5AqW62Me+vS+ZUyYMlyWb5cPPGmv1cUaW3H+i9t0+t4YFerUCvVRgR8ZaZ2zx0a6vRZqAjsb73Gf3mAvS9U4FAlMlaqJmcVSBaGzwnQxNNo9BunUbdQ/Y3LFQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by AS8PR04MB7878.eurprd04.prod.outlook.com (2603:10a6:20b:2af::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Fri, 26 Sep
 2025 18:05:32 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93%5]) with mapi id 15.20.9160.010; Fri, 26 Sep 2025
 18:05:32 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v3 phy 12/17] dt-bindings: phy: lynx-28g: add compatible strings per SerDes and instantiation
Date: Fri, 26 Sep 2025 21:05:00 +0300
Message-Id: <20250926180505.760089-13-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250926180505.760089-1-vladimir.oltean@nxp.com>
References: <20250926180505.760089-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P250CA0008.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:20b:5df::9) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|AS8PR04MB7878:EE_
X-MS-Office365-Filtering-Correlation-Id: c5716d2c-bd75-4c40-6234-08ddfd274879
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|1800799024|52116014|376014|366016|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?R/1M3e2GjI+vA8DQrw4WeOwt6i0dsvhCPnfVsfkpAgAUNGOmSrSoPqJKidIp?=
 =?us-ascii?Q?NxsI2D4D6yFpngHaw1plIHjKr6PUEZuBJRWwaQx8JODnTrbMekoNx7qxg473?=
 =?us-ascii?Q?TLpvGq55wXe7Uw1zUZbyYYI0XdyXZOtvQTeTpMqsubToTkLjepAp520zWTB5?=
 =?us-ascii?Q?3/62q2doUIKSThenFumoBY1AkI+1jomqPo0FeS3xsAtwCFomfZZNxFt7HQaK?=
 =?us-ascii?Q?r7SFcqCuP/pxFrYq71D7uGbz+mo81MHrfQa67i1lm+D+YKwnRD/dnc4fT/iV?=
 =?us-ascii?Q?PVa3xjLncBy72YcBX2hWHfQ/idHnTgdeGYvGjgGUcRyh4FPgbGYCvKGH/a6r?=
 =?us-ascii?Q?S59Zaku5IXZCkYiEqRfGFxRWZEP/cxAppjuTmIHU3tNkop2V3XDYY4nafRYN?=
 =?us-ascii?Q?lzwkblU5H4Ao0JF2ojgoFeoLfJ28HYRGGNHzj2hMleEqI34vxCg8YEadnBXk?=
 =?us-ascii?Q?nYj+1jaH0E5Mh3xZueLCdoSOcyRImFyp+9xKvUWhE4sDLd9lnxLrB3gbh0Mb?=
 =?us-ascii?Q?eiFtG+2agrobHimq8fdrUdwVWqXTA/Rf8IR3fGlCag5DfAm3T2fw1UruYkZh?=
 =?us-ascii?Q?7XzPs+0eMh+GrJ0FGFy059DAGLKvS1qlpRRIcKuKg/4crsqAzW11ZNcgw6mq?=
 =?us-ascii?Q?ymsedoAj/9cuFlzQLBYQsq/CdU4bvwoNv4w2vPJj2sMBOYZaEQeG19o7/23U?=
 =?us-ascii?Q?1E3sVI/5kRzQgUQSqEFRVSvfhdUIfy3kAz+9bygRlkF6hvGyFQonw1Co56g1?=
 =?us-ascii?Q?pLh90BHI3M96t04BStN9Fvjgj4kvKuQPV8m1hoKlvCg9IpQ9+wYy0RfBiRpG?=
 =?us-ascii?Q?ouHshRKYtbIegcCEITxeJqL7HiVpTRgGdcj24DXO3XKypypyeCAaI1P9ozC6?=
 =?us-ascii?Q?hadrNFiy7thQXk3UvhlheH4IjFMFHEdwAdGztb73LdlmdbCQWXwzC5vhVsOX?=
 =?us-ascii?Q?6pTqyPQjiYwAD6uWTSOWY+lL4JRE82EyRLZ2Xs9Yirun7meshWtE02PCgA46?=
 =?us-ascii?Q?BhSUnmrBIgZo0yebD8kl6D0KJLhOO5cG+d1gTGyBa86l/SbzDu76h2/Pf4by?=
 =?us-ascii?Q?EwawWP87tZeW2y8oNFGojsdnxvI8N14Vg0eTUUD3gWM71dLCACayUrodYF4N?=
 =?us-ascii?Q?pGRi5mBIjw5y1ufRjv9vwA33gNCdq1tmp2mG3rJcILYLmiBcu7zpDp8d/XHO?=
 =?us-ascii?Q?eVBf+tT208KVl7+rLu3xpyKp3xlqjyqKJnVdo+pw9ydSu6R0GVJlcJcmD5OT?=
 =?us-ascii?Q?8Z3vwjaDnbf1xMPSZs86Fek/2jbhAKqIBcfhssJf9VvgdTm+eEnzGWRRGqQ5?=
 =?us-ascii?Q?1CLp6pDiH//3p2PFTXX10FLmPqDVuW2OvQoVoSWtBZV/7eHIqAeYfzaNoicb?=
 =?us-ascii?Q?09hdYO6VAp8lTRF56vMyZidE7UtMCi7M/xLYTcoQDY/IPBK7iFSYpRU5aTY1?=
 =?us-ascii?Q?p8nQPl1fncgpSNgLlGSBcd7hmoIUZ/g5XbUPFRFuysYr2eQozu2pSA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR04MB7779.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(1800799024)(52116014)(376014)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Z0TV6e3csnXBJlVYJIWkBt/YwmfH0bfmUzA6Hpqo7fSwbMkZBx09IIVvowqT?=
 =?us-ascii?Q?UYlh7kCAlNlFM0TRTytqQmXl6XIBkBcQByA3UieJNw/A7mFSbgCHOUZk+0PH?=
 =?us-ascii?Q?yAXqoNwKUv2FZWQhrxfUqbPQ0uoOYzQ2SGsJLXqeDkAWZAcwapcdyDMCoslE?=
 =?us-ascii?Q?fTKJyTwTAY0cO+r0iRS/oADWhg6G9kubFs4WuKjbGdeTHZaj2Km/Xq5Gz8+j?=
 =?us-ascii?Q?qoNYWzhT6tyvuqlbiGz8ZeeiK4PlEetZPmmlJngD4N0e+xPXgFenk+u3/Com?=
 =?us-ascii?Q?Dx6fGHWGwnDvClgfMpuTw8OOVpZeI/Ksu8btMU/cY9qbC4lLUVDVDHP6b88o?=
 =?us-ascii?Q?xZ8L+HAVC7ukkq/fTQBMS7H/Dra+TDZ5QiSk5j3E8oznfRMGtenii2ZCt0LP?=
 =?us-ascii?Q?cZ0W0XFe9SaNaO+lVC+6fxLBG8lfnoXwg5u5hLjVoFMyYuFWu1+XMxhGbT9/?=
 =?us-ascii?Q?36nUozxUQ21OW8dW09fbW45OhkbvZNDz8uvytUEsXhc4IPCqoIjNHsajibcE?=
 =?us-ascii?Q?2OJ2Luuy+o/mwUDku7OA/oT5/cYuWrG9DTUtRVPcvypglOBwXJ0QD+5CW3XO?=
 =?us-ascii?Q?zLqawmsAbLsac02kAIBDULZhSSq1LttzCmxM51CWtUcv2Uypa5ETFllVsIrS?=
 =?us-ascii?Q?ZBt9S1mURp0mWWYOX2uHzZs0Q50wCqvq0FnaT1lYT6LByxMlaJcUZOf0aNry?=
 =?us-ascii?Q?SYnzGbU0pvaPdmsUgyhBcXBp428xkYtd5OYp1r3fHIP6j7M6RXnTorqu+twp?=
 =?us-ascii?Q?t3pLNCQIcI5NZZwdClQuWT0iyUWIkP75hs+xs47oDDYM9tbGogJNtIWUvp32?=
 =?us-ascii?Q?6N7/M7QC0KZbbkUX3P/qFCOpx2R+y4kdENXz6yMj0WiOcdIURa7As51g4TG4?=
 =?us-ascii?Q?ZhX8ysvl/jN11Xl7wxOeTts9CQIh1jJQWBlD34i/i5uIgTiw5CPeJsqJEjan?=
 =?us-ascii?Q?CI3jGiwbifkFwm2E4xpbdXiUAPnF6YqXOBlL19KHYQnfe1ITnp/Rrg8UveDi?=
 =?us-ascii?Q?ek7Aqvuy0D2vCbuY2C2L9bp/wO7KFvKO6cUhz16c1rxRPNhlFVFyNLNngZR4?=
 =?us-ascii?Q?UES2N1gUcBKma7kW6khiMz0LnZC9HV4D6kEVjNYv2hbZd3v/h05BuJH/8EUr?=
 =?us-ascii?Q?PEDhs0dF+D+hmiJiM0mcduQ5soECVJOTKmR2UH/A2XV7h0wwr4mq2LYn9nyj?=
 =?us-ascii?Q?iM1kHM3v+1Vs/UDwZvOcAu5qxDj5+7qMOJHyDq4QaGDSDgGT1Bx0Xuay8+Rr?=
 =?us-ascii?Q?ST9jW3D654R/K/9jDQDy17MYUQUam0AT6Skj+X0hrcIMp4saMo2MAY2JlBcq?=
 =?us-ascii?Q?eIy9vE3vDgPt0kqGdlX0/vDKLd/1IsWeVOBpcvozzRHsJyz5MY6sdV2K9+bV?=
 =?us-ascii?Q?eVF1aHLTfXZ2TPTQyawgcn7goxPHi4pZ3EV3KXA+1CmK9GWhrydmdOfUhqea?=
 =?us-ascii?Q?FwWsOxH9fL8ZNj99a2Og4g7OptkY7c/BtYrRLoMPyjpgMZvlS3gR7UE+JysJ?=
 =?us-ascii?Q?YhMPO7wO6OfaEKNl62UwdXhGGLt2GUQ7lU4c1YIW7TDerUlHcaIsTs8NpLMH?=
 =?us-ascii?Q?Pdf35Aot0i/uJFyrumxY+BnZ28HhRLqqMUr7466rPuBWJ4UfGPMfBVozRW4R?=
 =?us-ascii?Q?Mw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c5716d2c-bd75-4c40-6234-08ddfd274879
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2025 18:05:32.0147
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3PduPJ2VTL3tGV6cePQDzTjl2Cychr0d6HUEXMpLGw8M+p64njXqNrEJRgJzTxqvnPeGVPkpZ3Qp4cXJ91DaCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7878
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_110544_242955_E306BB3F 
X-CRM114-Status: GOOD (  17.49  )
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

Going by the generic "fsl,lynx-28g" compatible string and expecting all
SerDes instantiations on all SoCs to use it was a mistake.

They all share the same register map, sure, but the number of protocol
converters and lanes which are instantiated differs in a way that isn't
detectable by the programming interface.

Using a separate compatible string per SerDes instantiation is
sufficient for any device driver to distinguish these features and/or
any instance-specific quirk. It also reflects how the SoC reference
manual provides different tables with protocol combinations for each
SerDes. NXP clearly documents these as not identical, and refers to them
as such (SerDes 1, 2, etc).

The other sufficient approach for Lynx 28G would be to list in the
device tree all protocols supported by each lane. That would be
insufficient for the very similar Lynx 10G SerDes however, for which
there exists a higher degree of variability in the PCCR register values
that need to be written per protocol. This attempt can be seen in this
unmerged patch set for Lynx 10G:
https://lore.kernel.org/linux-phy/20230413160607.4128315-3-sean.anderson@seco.com/

but that approach is more drawn-out and more prone to errors, whereas
this one is more succinct and obviously correct.

One aspect which is different with the per-SoC compatible strings is
that they have one PHY provider for each lane (and #phy-cells = <0> in
lane sub-nodes), rather than "fsl,lynx-28g" which has a single PHY
provider for all lanes (and #phy-cells = <1> in the top-level node).

This is done to fulfill Josua Mayer's request:
https://lore.kernel.org/lkml/02270f62-9334-400c-b7b9-7e6a44dbbfc9@solid-run.com/
to have OF nodes for each lane, so that we can further apply schemas
such as Documentation/devicetree/bindings/phy/transmit-amplitude.yaml
individually.

This is the easiest and most intuitive way to describe that. The above
is not the only electrical tuning that needs to be done, but rather the
only one currently standardized in a schema. TX equalization parameters
are TBD, but we need to not limit ourselves to just what currently exists.

Luckily, we can overlap the modern binding format over the legacy one
and they can coexist without interfering. Old kernels use compatible =
"fsl,lynx-28g" and the top-level PHY provider, whereas new kernels probe
on e.g. compatible = "fsl,lx2160a-serdes1" and use the per-lane PHY
providers.

Overlaying modern on top of legacy is only necessary for SerDes 1 and 2.
LX2160A SerDes #3 (a non-networking SerDes) is not yet present in any
device trees in circulation, and will only have the device-specific
compatible (even though it shares the Lynx 28G programming model,
specifying the "fsl,lynx-28g" compatible string for it provides no
benefit that I can see).

Change the expected name of the top-level node to "serdes", and update
the example too.

Cc: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v2->v3:
- re-add "fsl,lynx-28g" as fallback compatible, and #phy-cells = <1> in
  top-level "serdes" node
- drop useless description texts
- fix text formatting
- schema is more lax to allow overlaying old and new required properties
v1->v2:
- drop the usage of "fsl,lynx-28g" as a fallback compatible
- mark "fsl,lynx-28g" as deprecated
- implement Josua's request for per-lane OF nodes for the new compatible
  strings

 .../devicetree/bindings/phy/fsl,lynx-28g.yaml | 159 +++++++++++++++++-
 1 file changed, 152 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml b/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
index ff9f9ca0f19c..e8b3a48b9515 100644
--- a/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
+++ b/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
@@ -9,21 +9,123 @@ title: Freescale Lynx 28G SerDes PHY
 maintainers:
   - Ioana Ciornei <ioana.ciornei@nxp.com>
 
+description:
+  The Lynx 28G is a multi-lane, multi-protocol SerDes (PCIe, SATA, Ethernet)
+  present in multiple instances on NXP LX2160A and LX2162A SoCs. All instances
+  share a common register map and programming model, however they differ in
+  supported protocols per lane in a way that is not detectable by said
+  programming model without prior knowledge. The distinction is made through
+  the compatible string.
+
 properties:
   compatible:
-    enum:
-      - fsl,lynx-28g
+    oneOf:
+      - const: fsl,lynx-28g
+        deprecated: true
+        description:
+          Legacy compatibility string for Lynx 28G SerDes. Any assumption
+          regarding whether a certain lane supports a certain protocol may
+          be incorrect. Deprecated except when used as a fallback. Use
+          device-specific strings instead.
+      - items:
+          - const: fsl,lx2160a-serdes1
+          - const: fsl,lynx-28g
+      - items:
+          - const: fsl,lx2160a-serdes2
+          - const: fsl,lynx-28g
+      - items:
+          - const: fsl,lx2162a-serdes1
+          - const: fsl,lynx-28g
+      - items:
+          - const: fsl,lx2162a-serdes2
+          - const: fsl,lynx-28g
+      - const: fsl,lx2160a-serdes3
 
   reg:
     maxItems: 1
 
-  "#phy-cells":
-    const: 1
+  "#address-cells": true
+
+  "#size-cells": true
+
+  "#phy-cells": true
+
+patternProperties:
+  "^phy@[0-9a-f]+$":
+    type: object
+    description: Individual SerDes lane acting as PHY provider
+
+    properties:
+      reg:
+        description: Lane index as seen in register map
+        maxItems: 1
+
+      "#phy-cells":
+        const: 0
+
+    required:
+      - reg
+      - "#phy-cells"
+
+    additionalProperties: false
 
 required:
   - compatible
   - reg
-  - "#phy-cells"
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: fsl,lynx-28g
+    then:
+      # Legacy case: parent is the PHY provider, cell encodes lane index
+      properties:
+        "#phy-cells":
+          const: 1
+      required:
+        - "#phy-cells"
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - fsl,lx2160a-serdes1
+              - fsl,lx2160a-serdes2
+              - fsl,lx2160a-serdes3
+              - fsl,lx2162a-serdes1
+              - fsl,lx2162a-serdes2
+    then:
+      # Modern binding: lanes must have their own nodes
+      properties:
+        "#address-cells":
+          const: 1
+        "#size-cells":
+          const: 0
+      required:
+        - "#address-cells"
+        - "#size-cells"
+
+  # LX2162A SerDes 1 has fewer lanes than the others
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: fsl,lx2162a-serdes1
+    then:
+      patternProperties:
+        "^phy@[0-9a-f]+$":
+          properties:
+            reg:
+              enum: [4, 5, 6, 7]
+    else:
+      patternProperties:
+        "^phy@[0-9a-f]+$":
+          properties:
+            reg:
+              enum: [0, 1, 2, 3, 4, 5, 6, 7]
 
 additionalProperties: false
 
@@ -32,9 +134,52 @@ examples:
     soc {
       #address-cells = <2>;
       #size-cells = <2>;
-      serdes_1: phy@1ea0000 {
-        compatible = "fsl,lynx-28g";
+
+      serdes_1: serdes@1ea0000 {
+        compatible = "fsl,lx2160a-serdes1", "fsl,lynx-28g";
         reg = <0x0 0x1ea0000 0x0 0x1e30>;
+        #address-cells = <1>;
+        #size-cells = <0>;
         #phy-cells = <1>;
+
+        phy@0 {
+          reg = <0>;
+          #phy-cells = <0>;
+        };
+
+        phy@1 {
+          reg = <1>;
+          #phy-cells = <0>;
+        };
+
+        phy@2 {
+          reg = <2>;
+          #phy-cells = <0>;
+        };
+
+        phy@3 {
+          reg = <3>;
+          #phy-cells = <0>;
+        };
+
+        phy@4 {
+          reg = <4>;
+          #phy-cells = <0>;
+        };
+
+        phy@5 {
+          reg = <5>;
+          #phy-cells = <0>;
+        };
+
+        phy@6 {
+          reg = <6>;
+          #phy-cells = <0>;
+        };
+
+        phy@7 {
+          reg = <7>;
+          #phy-cells = <0>;
+        };
       };
     };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
