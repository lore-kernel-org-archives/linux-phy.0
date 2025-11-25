Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82D4AD0E6C7
	for <linux-phy@archiver.kernel.org>; Tue, 25 Nov 2025 11:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mhVdi3Vx1kYObQ2fMQTjPZpgw1wnlZUzC2HrkuG2nwU=; b=b9I7rjb9JuO7DP
	K/pEHJx8IaSyjDbUC5ePaGskHCe/APEP2lTUQouF9lwkQynDOiG00ux5aPw3CYp1mz7Id58JAHTNn
	C717v0Hcg0j4Cf535LKMyV0S/YuRp8Bb8q1QZaWuhQbGmIci8z+BiO60tI9JokZy2QlClY/TeZ7zw
	1pK1aOouzIYPYp7Ril/y0RwcLF2hnY5yq8R8C9jjRRX+vQKqpKHmrNP0H4N4JJlV+kFUUPWtS7Eby
	TNh29rMUyhG/AlcewOOUA7uOlgQlH0xpz20ey6fkNeR87W4j/M809XoSU9cTaYAEk2MCc7V0++MQb
	Nxw6om5SZRyQli43mP6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYM-0000000DF79-0Y0r;
	Tue, 25 Nov 2025 11:49:50 +0000
Received: from mail-francecentralazon11013008.outbound.protection.outlook.com ([40.107.162.8] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYI-0000000DF3I-1K8H
	for linux-phy@lists.infradead.org;
	Tue, 25 Nov 2025 11:49:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eVpwZV20ZcE/SNL5NruLlU32BNWppOL1VjGuxuZbFbD74Ok+r9f+71j9bgMwLPgOhcspF0LD1eAP35LznD0ytm76tpj2lz3NE2W7geiPXsyoDOtqGv1ggNz+GowWNmfysWqk5ed1ADgEm3oVvpp7LdgF8zASoCMgPJsZmKsyOxbzeSscBctqXV9gTTXiv6S0+fHFgE1CycZ/qA1BUQ87OTnXVt+kobwIYTFcT52sqX213gpfWg+L+lmSaYzdEYv/A+TrQw6MTxOkEpNkBBn/Mzo4ME5KyFgF4mBiWbCqihVCKhC5WLgJ4c5rholgUWjH8bFXx7HVwil1oxx4cAscSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eZqyDNRPvijF29ZQ0LWT7+z8xM+8ybBsSxSZwzKlCrc=;
 b=i+F8tT3xTsksXfeZ0lHJ2b41CGLf2dN/srnvericZnCdJKSN5XEA0Ee0Vqa8cuW9ADthrZDj2awbTDKWKYz+3L3464mb2cDnWLVZ3kf8TSvaM2iwh4r4bf9PJc7BLgh6yfSYp38RptEngKfxnkSqR5nasKiKfOPXPmw/hYq/bP/8EL/52yLPKcTA9x84eKe9CdEVyyWAKBuQzMo23BbvQ+8GK//bgwlkFMU/yq+/C0uqZUJGiNgMV+K9jxCud/G6VqmtCDiALnuk3bOyPLjXQ2bLmhEkdO0iR8GY3hpwp5oNHFTo7ad09BxNE5/TUyBb93H+lEaAQfIIIO5OelKypg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eZqyDNRPvijF29ZQ0LWT7+z8xM+8ybBsSxSZwzKlCrc=;
 b=UFUw4RXUnN/fzCRNlSDCisw12EPdaIHlR3Cn5AGEiVgUPwPchzviBcaBUoer/NQvkFFWkcwPBfu2Qpg2gaIXz9cdWsIW29Tr7yJHuVAjOzTJCbEet/QvFS/54mxuwxEnpm3GUD+6tX/Gm0Wa/iChGTxi44aNwZvaEB9yOWZzdtRclYOU/L1QgJFYA9hPB13hiJHOkNxmvzb6zxnMzywcsT3v7nMu/guw4gKGt6lcCKmdLzUV96JWPiMr5/hryNgiLOZXNT83/Ki8rZv9tVChJUF3qQmFyJX7KJUhxAg5BeDXC/4CBYgdvSUhBH+N8/G6TJV9IeVwtbEPU0LuyQ9Qfg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by PAXPR04MB8271.eurprd04.prod.outlook.com (2603:10a6:102:1ca::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Tue, 25 Nov
 2025 11:49:37 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab%5]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 11:49:37 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v5 phy 01/15] dt-bindings: phy: lynx-28g: permit lane OF PHY providers
Date: Tue, 25 Nov 2025 13:48:33 +0200
Message-Id: <20251125114847.804961-2-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251125114847.804961-1-vladimir.oltean@nxp.com>
References: <20251125114847.804961-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P189CA0047.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:659::19) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|PAXPR04MB8271:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d187f85-08cb-4cb7-637d-08de2c18b589
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|52116014|376014|7416014|19092799006|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?HafEjWcGYCXyhIaQlEaqiuHd58Xq2lELu+ccECbKwMtbp0OKMZVsHO06WsAL?=
 =?us-ascii?Q?GuXI3vAqGhtK/F2B2iMboxN64+5zyPSGhw83aB9sLTQksGIkgXnzHhbPvI9r?=
 =?us-ascii?Q?R0guyzOpvGLrGFL5aZsyIIuqEU+6KLzZb8n4rmH0O0ASJGkFFOvuZbpHCZ/M?=
 =?us-ascii?Q?Chnw+4f6HMytp1oAnuis6jfFsBl48xlkLVz6xhZp5vKffMIAxLu/++3tGF8J?=
 =?us-ascii?Q?qpItcBUNGwKxcvZg2UbT5K8w9CKh4gi/cg9wpmOVSE3FVNkOX7rYSk6hCs+d?=
 =?us-ascii?Q?GNGymH8aCdOZb1h3S0alYDljiHJvYowzV+k7vUXaTgxutHzIXoZ3iyrEbRFO?=
 =?us-ascii?Q?bGf4n5KMFxLYMCJ9u9PSTNON0gipxWZshlXXZ1xROHSgNJZDIJjQdMqEQKr5?=
 =?us-ascii?Q?z8TWOluXJS2tw0YnaqtgPmp3NMlTGYQyeZBdHq/QkLtOlffG7FnBMpIfAY/0?=
 =?us-ascii?Q?3IAC9JmWpdH4sqXUVZGRhzAHhWWxVZ8iuTA+1ys0Qa2n/EQSeoXglB/KV5Lf?=
 =?us-ascii?Q?6Fpda5PZZ8abg4Xj2NwnkizrA/HLDYxZ66xg0bUx+XDwnUrWpwY0EBICoDm1?=
 =?us-ascii?Q?/qX1R3NixkUb7jLGZol0+dm0+kMkGQQ8utAIqIICMAYChmOwxEo6THVutHqn?=
 =?us-ascii?Q?TdPq8d5Kiz9D2DWNmBeEQ12Z6wCE4EUJ9uwj5xHw2dwqT+n3ij77xIsgq9YM?=
 =?us-ascii?Q?aidxg5i/VQLcFtikQ1eRL5k/ss/3XrmfUp31jArX+0WvSfaByMKhDEwfW6Gk?=
 =?us-ascii?Q?Js99GRVOPl3SS+2SduOr21QvZqRh1Xbb6MofvHf7olbZTlSVwOvyu6AC3NCD?=
 =?us-ascii?Q?tF1IdKNfCNCtPJpEuwgflfm7XGWeNsZiGRyK9Ox9acxWtRUZViQOHNxd1eOh?=
 =?us-ascii?Q?duLd+LTbk08xjM95UmEMvBXy73ICr2wesY2LKzqpoUxZf0UjCUYG+xA6AC+r?=
 =?us-ascii?Q?wzyZCDTnfnwKnI9TytRM0LWlqGFiNZFv79x29h26y6T+7wHxGceQMtd4JUad?=
 =?us-ascii?Q?EL6HyNSC7OoQVLdo6wncexp5DpF3aFi1P5J/NysGWPKRUFOimxk3AlUKmYS5?=
 =?us-ascii?Q?PB6kcCUpzzzViPyNBhF9p4Xs+244QNpKCKMWBawJVQ9mj+0GhC1j+qG+7xji?=
 =?us-ascii?Q?JuD/fwQgxdygfjhSmniV5B9wd1jO9y7CJlSUWWZ4hWOKXJLofqRE6jRdcBW7?=
 =?us-ascii?Q?qbzXV0AfFZcYWWegndwoHxqge/WgiHB5I1oYCnxtiiiWcAPGCDBCBvMovUiH?=
 =?us-ascii?Q?kjKL/aCNCR32iWytvN+L8b0LXCN13O3CsFmdgG/IiaaW39CYqmlQ7ZB4ad/G?=
 =?us-ascii?Q?ZWVETeJ9MoX1OxEjoD+CmTIqFH40qhYBSvfScnkzWHc6lBJckoaKDsT5tqXK?=
 =?us-ascii?Q?bqPqW9JQ5koKs9ZcVph4sI5+CSAYzA4dT4BR8no2/BK61jLxjrEA0w7Z8Xlq?=
 =?us-ascii?Q?xm9kCJL/qikkT5AYKX95Z/3cxn8Kh0U2?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(376014)(7416014)(19092799006)(10070799003)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Bx6tqDenTx3NT/SDZbFJ94Y7KYQiT6RBGzvE3dlT48NzYyGpEPPGBYLOdvG3?=
 =?us-ascii?Q?Y9cKTMqci8CrQrLnmY2mRJoE41mZJK3aGmNNl5vW9WnFTV1ke1o7c7MUlFY+?=
 =?us-ascii?Q?9jTXHlSqIj95BpCApAcTYfS3nNah9JbmVJkHcmUF2mVaKDjkhZLoPfBikaW4?=
 =?us-ascii?Q?SlsZybryamnCfkYVFUK73Uqmq0DZxG5mam7Q6bAD+np0pLdVm/SUUJXEtLQw?=
 =?us-ascii?Q?dKDikCGueoaMKUUvIIa31UAVfdb2+X6jggZvMfxlJCUlrVYdAe4TtD4TkJKq?=
 =?us-ascii?Q?9Nc2V/n0WBYZsWB0CAQa9KYmjAiUUW7Ifza2BF2Xlq+a3upmLjNlvRMa89MM?=
 =?us-ascii?Q?/nqU6Pc33NNHaZU/0PckWOJa9ID9ZgFP8tjvDoY/WqFi9vBQnDRfj23jQVG/?=
 =?us-ascii?Q?mwZPUvVV6MfhSXE1/9VmEcCfa5rn30xUtCDtAOvZAmaZRhxabiI6QdrGpa/8?=
 =?us-ascii?Q?vpyaAN/IFgdwyrNhyfHQCdYpJn8LsOIa+ta7raXimn9y5/f/YGVz5LfJlfOb?=
 =?us-ascii?Q?pYSN0hnb+vPQkFpL3Kg2cb82zcQlB1VgaJDqMzeUehSMzNUXmKGTn94VdSho?=
 =?us-ascii?Q?ju3NSXaETo52oTpK3MlHLpg/51UZpeN7a+ZryZYzCXsymuFtOy1WS3fm75GA?=
 =?us-ascii?Q?q0UfQCyqCFHb3y61GCDwh6TeLXXFBw2w020XraQcyyjXP8NGv7RlgqHkzPoG?=
 =?us-ascii?Q?ddkKAdV9V3pM4ldX6QNOR8vlUpK6S4Y+AmQGPPXJtpr6nrVn7TwIh2V2Ff6x?=
 =?us-ascii?Q?U8ojRG6X1cwb+qzf7ElkMmaOw4J+ce+4m2fuPkFz3ikIHUPGjraJQ1iIl10s?=
 =?us-ascii?Q?EfrQ2H0kszMTvw4lIamfhoraIcMal44BVvQOqPucK0j72tSnxCSP0fNGDfVv?=
 =?us-ascii?Q?oM7be/vDYJk4FryXtswUNKY4XtzOu6MOk4XDkQu3TCkb8zWu5W9gsbIYJxN8?=
 =?us-ascii?Q?LF87uuSm3hpidCyvaEi55hiTLrtCAGQ9YXCRqqnQXjd3uhFU5AufLA3ibjyG?=
 =?us-ascii?Q?qpohWdvh28T1gU/8Pf8r6bhqwnQJZ3vpDtjLECkdYPOrDdH4Sgv08nJpFaPT?=
 =?us-ascii?Q?TfacI2k6b1JqtaQid4c6W9BTD3SsrFCMiIAGIAlCMjnq3iWLiDe4TqNtiV0Y?=
 =?us-ascii?Q?52LcvT/njT50+rB4l7HB1+hhrc4eGpNP4YhJVLfW/3mOwG5QpbwuJlOA3Bs6?=
 =?us-ascii?Q?rRRm0NVcqygAbC+6CGaMrfEwbtfrlW4t5TT0WXziad8QDwbO8Upy/6sMxix9?=
 =?us-ascii?Q?dw/E7VWOhDBcTNrKZy1dh3vHL3bs5sz3/cBRsr+lHasXXSqeHJ/jPvcHoW3n?=
 =?us-ascii?Q?aLjf/1ZVpQZ+ze4XxN0jdIfo1+gQDfMQkD9k7zkJVIoVeLLZsDXfxEN2JieW?=
 =?us-ascii?Q?c0BjiHJE428ROqvX9WaKnyLNlqBdAG33bGnrF2NzWG20umKSVFqdbBXgE3yz?=
 =?us-ascii?Q?EDrfgrEQz8d/SYVHDSO6SU0KTLYLxtqIvUTTJSBVkwRWWw4B8RbVouFs77dz?=
 =?us-ascii?Q?X2831MXQwug85LAN2zcs6PogD0c73daJjygAt0qcs0IdLfMvYFg3cC614NKu?=
 =?us-ascii?Q?IJbhlQK+FsZNatsk3OEDfVPFXTDhn2ZZAvmCxhNMmPwpJsUV1ZQQmvQQRdGB?=
 =?us-ascii?Q?BVB4N51eKSSCCqJh6uZri6o=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d187f85-08cb-4cb7-637d-08de2c18b589
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 11:49:37.1900
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WNCPU9cXnZoGiSwg7CTPcVFu+B/6HkP8IiHbb8U62H9NwdCg2zq/mgWwM7IuCw/YMdWs4tIr0woFqa/lYUTrRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8271
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_034946_361348_98AA5328 
X-CRM114-Status: GOOD (  17.55  )
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

Josua Mayer requested to have OF nodes for each lane, so that he
(and other board developers) can further describe electrical parameters
individually.

For this use case, we need a container node to apply the already
existing Documentation/devicetree/bindings/phy/transmit-amplitude.yaml,
plus whatever other schemas might get standardized for TX equalization
parameters, polarity inversion etc.

When lane OF nodes exist, these are also PHY providers ("phys" phandles
can point directly to them). Compare that to the existing binding, where
the PHY provider is the top-level SerDes node, and the second cell in
the "phys" phandle specifies the lane index.

The new binding format overlaps over the old one without interfering,
but there is a caveat:

Existing device trees, which already have "phys = <&serdes1 0>" cannot
be converted to "phys = <&serdes_1_lane_a>", because in doing so, we
would break compatibility with old kernels which don't understand how to
translate the latter phandle to a PHY.

The transition to the new phandle format can be performed only after a
reasonable amount of time has elapsed after this schema change and the
corresponding driver change have been backported to stable kernels.

However, the aforementioned transition is not strictly necessary, and
the "hybrid" description (where individual lanes have their own OF node,
but are not pointed to by the "phys" phandle) can remain for an
indefinite amount of time, even if a little inelegant.

For newly introduced device trees, where there are no compatibility
concerns with old kernels to speak of, it is strongly recommended to use
the "phys = <&serdes_1_lane_a>" format. The same holds for phandles
towards lanes of LX2160A SerDes #3, which at the time of writing is not
yet described in fsl-lx2160a.dtsi, so there is no legacy to maintain.

To avoid the strange situation where we have a "phy" (SerDes node) ->
"phy" (lane node) hierarchy, let's rename the expected name of the
top-level node to "serdes", and update the example too. This has a
theoretical chance of causing regressions if bootloaders search for
hardcoded paths rather than using aliases, but to the best of my
knowledge, for LX2160A/LX2162A this is not the case.

Link: https://lore.kernel.org/lkml/02270f62-9334-400c-b7b9-7e6a44dbbfc9@solid-run.com/
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
Cc: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org

v4->v5: none
v3->v4: patch is new (broken out from previous "[PATCH v3 phy 12/17]
        dt-bindings: phy: lynx-28g: add compatible strings per SerDes
        and instantiation") to deal just with the lane OF nodes, in a
        backportable way

 .../devicetree/bindings/phy/fsl,lynx-28g.yaml | 71 ++++++++++++++++++-
 1 file changed, 70 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml b/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
index ff9f9ca0f19c..e96229c2f8fb 100644
--- a/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
+++ b/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
@@ -20,6 +20,32 @@ properties:
   "#phy-cells":
     const: 1
 
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+patternProperties:
+  "^phy@[0-7]$":
+    type: object
+    description: SerDes lane (single RX/TX differential pair)
+
+    properties:
+      reg:
+        minimum: 0
+        maximum: 7
+        description: Lane index as seen in register map
+
+      "#phy-cells":
+        const: 0
+
+    required:
+      - reg
+      - "#phy-cells"
+
+    additionalProperties: false
+
 required:
   - compatible
   - reg
@@ -32,9 +58,52 @@ examples:
     soc {
       #address-cells = <2>;
       #size-cells = <2>;
-      serdes_1: phy@1ea0000 {
+
+      serdes@1ea0000 {
         compatible = "fsl,lynx-28g";
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
