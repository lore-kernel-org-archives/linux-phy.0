Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAD9ACA1016
	for <linux-phy@archiver.kernel.org>; Mon,  8 Sep 2025 18:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QpUd9KyzNS+ju/F25jfV/t/ybOya08wvdOtPdhn/QD4=; b=c55JGCKdR3abix
	2goQeUULIYT0J5ZepPiUu3IHri7gId4K9Z70OTJGgE7wD9mqkp6uwk2aY6zwpzEKbp/hxJueZrXB0
	ZhTW0eBfIWQk5+oZ+NgiNG3fPG8vYvnwy87JXwyRHo5dAvaGF3TFgOiKpTrSzKE64khAh59spBY9U
	/KfI2Wim6W2YaeXxwyVFWLXXDssz42S17cGMjU1nouPUHX0f8tE2yMOZ/qMtH6a2HM6Uc0IGRyj/M
	J3aQoQZAmaXRbveW1pXPKzc4xBEtIvr0/vM8JR4xeXL5Nlzp67419RrpprZO/pzkW4uuSVD2GnNq0
	w8mXWSyKSnPK6kfdiR1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvgzb-00000001hZq-1YHd;
	Mon, 08 Sep 2025 18:53:31 +0000
Received: from mail-westeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c201::1] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvdwS-00000000U4L-1MMm
	for linux-phy@lists.infradead.org;
	Mon, 08 Sep 2025 15:38:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GfYbqEJptbk/8LzxTS6LqoA/WnGREotvwLKg/6A+7n5s381tx9sk6fYbCb/bdykGgTh9nYJf8FQ32disCdyxF9LkYGixv74/xSi0Tif08KhXgWu3BPGIGUfdD25w4Fb9xgt48+JDfvl41mU68hhkji1cnWtyoK+ZX2VIHrkZGCy2yH48Znah+m2KmuGggMnjsakLLIW1+u3OgDL8LJW1uVpAywBwxHvdk6tuqo/SQW8Ac6u8W7DIwRsP0LdpiJpCL1JtOU4ihPEhpdZ1fQwgaQmx06giAzPGR9RklOgan4WTBChJ7tHrIPwkUhOiFBCNBcuPv9jP4LFBpmszELIbkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QgV2KTL00PFv4pJb1IvUiHzhkPrW9KMtQoa6zYDOyf0=;
 b=bXtRYFcTRP3eJxwayZXIlUVpbm9WxaoMu6lPJrXWvW+GnRCyR9XVJ7OADfrRygjG32pHQX8qjHhq/PrvPe5DfJqyA3WbdLcQ3+g5QbKT7NJIuChyjuwvk8doKplQsBmmI99QhA2qIxwbz0WAcTqJFCrWT8P7mRUS+73qWZsWElzfYdd9tS69D/v/wCEe5mZRxouw4VZD+G93xCkgTSVHhtawkfhGPaAoPEGiPLo6rVY4gbGaI41HBnHjtwvONBoIp5+7RgihBWpPyCm8UNWbq5RkwQYLQ7OvMuo1ckpjq1TBXU2KMAPLnjJw53v3Avan1Zj1t+EVStZwVvvRWlJacw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QgV2KTL00PFv4pJb1IvUiHzhkPrW9KMtQoa6zYDOyf0=;
 b=lx0L3oolLYVaoK55kI/GH9ZdVnrDW0cvJGTNDuH5tyCySfZLTo0TsZFoOICxwKwvZOdCYfnK42KAtHs4aLb0hGld6XVN20B8A/jw84w6vsaOTfzmMqPUwgWJbw7sBOuXUuyd4hGKwTr565ogDZEEarH5jEZNEO9rRKDfN+kU/yMRevnjGJQ6s1TWhVWlvW1lVOgIdWngDdujrZAQKM55Q78jVQiwrxUhtwg98lviGu1qn3xZSeUJ2gr00HItPT08wAi3PL5vSMpMWocHt4VYnADES6fHmVgGWdXRvPkujiUcyWmqKhqXk5OslZU75dkawZRixV6BtL2NEtuSbgnEDQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB7790.eurprd04.prod.outlook.com (2603:10a6:102:cc::8)
 by AS1PR04MB9407.eurprd04.prod.outlook.com (2603:10a6:20b:4d9::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.12; Mon, 8 Sep
 2025 15:37:50 +0000
Received: from PA4PR04MB7790.eurprd04.prod.outlook.com
 ([fe80::6861:40f7:98b3:c2bc]) by PA4PR04MB7790.eurprd04.prod.outlook.com
 ([fe80::6861:40f7:98b3:c2bc%4]) with mapi id 15.20.9115.010; Mon, 8 Sep 2025
 15:37:49 +0000
Date: Mon, 8 Sep 2025 18:37:46 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Josua Mayer <josua@solid-run.com>
Cc: Conor Dooley <conor@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH phy 13/14] dt-bindings: phy: lynx-28g: add compatible
 strings per SerDes and instantiation
Message-ID: <20250908153746.7mfobudenttdi4qd@skbuf>
References: <20250904154402.300032-1-vladimir.oltean@nxp.com>
 <20250904154402.300032-14-vladimir.oltean@nxp.com>
 <20250905-bulky-umber-jaguarundi-1bf81c@kuoka>
 <20250905154150.4tocaiqyumbiyxbh@skbuf>
 <20250905-pamperer-segment-ab89f0e9cdf8@spud>
 <20250908093709.owcha6ypm5lqqdwz@skbuf>
 <2b1f112e-d533-46ae-a9a0-e5874c35c1fc@solid-run.com>
Content-Disposition: inline
In-Reply-To: <2b1f112e-d533-46ae-a9a0-e5874c35c1fc@solid-run.com>
X-ClientProxiedBy: VI1PR04CA0105.eurprd04.prod.outlook.com
 (2603:10a6:803:64::40) To PA4PR04MB7790.eurprd04.prod.outlook.com
 (2603:10a6:102:cc::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB7790:EE_|AS1PR04MB9407:EE_
X-MS-Office365-Filtering-Correlation-Id: 3fed2ac2-41f6-4de4-fe0b-08ddeeedaac5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|1800799024|366016|376014|7416014|10070799003;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?PbqWN7rIpM3Lbtw9gO/8kmEgMr0sthWHi1BjURVavJcshqOK1RtBm8Tca+?=
 =?iso-8859-1?Q?RkCh5X9X7r+jIuN9u3/Ti0DkX/tZN5uDV1Vq+7vrtPh0ibnfYx9Ie1gm+q?=
 =?iso-8859-1?Q?Sd8rcX4txfXf+cVfALE8oMxPJ8eSHsUAKo2SWr5ca3FTZfq/jBLU38vg4+?=
 =?iso-8859-1?Q?Az6X+zChNWjzTXetzYRab6afOS/SwJtAovJVYfSlPQ6rc0U5ExlPtrthCZ?=
 =?iso-8859-1?Q?jyYUxIccol7LXvo5EdGcgQE7Sx0EsvxyHCTixFLK471IYCfCwkF6Zf/U+r?=
 =?iso-8859-1?Q?9UW0VeFnD7hFrKUhdQgzTAvho+LrEf0GXcwtfSH3pvz96dpIIkBFCW6qSQ?=
 =?iso-8859-1?Q?hVJIzGcG55/ZQ7aeOPSvmHqnPnd7xb7If9DrCyMQSQPG+7X3gz6MATpgOC?=
 =?iso-8859-1?Q?tECunZL9X8PrSgQtlkLqJcYFgU74TUX+IIk+l+PRyYVeZx02oIDqG0dgld?=
 =?iso-8859-1?Q?mJtWffbKb/h7amxp/H0GoM42nvze1XxGFiu2sjpKltelg+BlS6EkT4WLZk?=
 =?iso-8859-1?Q?3Noep8ekRmV6HA69rVJzv70cz32LxCuQ/lqaNXfDb2Fr+u5RgBTbd7FS0F?=
 =?iso-8859-1?Q?OZQLLUf+Xk+jS5AREj7gemjyCLnU0uMWdFVGKeTXwQQUFR/1UP/L8uFUjo?=
 =?iso-8859-1?Q?hbrKxRQ5aOpyJ46+nI2g3Ycz/Vq/XbtJPpYQle1IkMfDgp8QMELfbVZ/Dc?=
 =?iso-8859-1?Q?476oZ9Mcl5XdP5clYajThq2hHB46pOnbs57B72B2Jshf11raV6a9HUSWT2?=
 =?iso-8859-1?Q?pBYsoYY6jAG9MZNqPpcuN4FqxqzlV40oApOAsPYG7AXSxI5YXnKq+gVxaI?=
 =?iso-8859-1?Q?ZK8+J0oF6ObbPgY/rvd2w7W30G7fKkSfxyYj2aLpqhZp7kDeKhvJsH6BAu?=
 =?iso-8859-1?Q?i0h8EsNINR47nNEWTrYRxLuoOxGjMmRGA29HTqsy4Ec+x/j3NecrTB6TJ1?=
 =?iso-8859-1?Q?6UshcVfSae0eGklqzjKlEJi6FJMfyB7HGs8lZw0t0cDUrCNDwU64OIfZSi?=
 =?iso-8859-1?Q?6+noZpbn2yD6yZdy2BAqI3dWSW6ueNuYiNxZFNCIq8NEab9yDs0E9rbC3O?=
 =?iso-8859-1?Q?6zrXVDBc36J4KUNL/q4PpdYQrD5Zg16kJFL2fbnxOjgqp+wIWk5HQhwXZB?=
 =?iso-8859-1?Q?wwXRdvgkzTth9PdiICqFt73XZ8/XoetaBrXkzEh1VKALPJGgWNVBkPqqxF?=
 =?iso-8859-1?Q?Hf+yqFkLk6N8f5gyV4p4QUQns17trp4QH0juMgBzJDJuLdEslyfagtyI4A?=
 =?iso-8859-1?Q?3gWzBxbQteULfo2lOx01Gtf8u1cPhpfQxNWA6q46rEDdCp7Cz7Pg2ASLxG?=
 =?iso-8859-1?Q?J9ilif6zDnFi5USUzB1ijI3x1WIuOrfLOXOQN6n4MAdt3VaWeVKSZNmQ+r?=
 =?iso-8859-1?Q?ZcsajfgOAjOlUJ6Zg91FTLx2EUdXkJK2n+S/CFPB+nKVZ8rTJUPSk+bx9y?=
 =?iso-8859-1?Q?UyZKzNXAR2c++mVFU/A+tfqAsLa3z3F1jnEF0ra+Ke9I0NCMNq322AP+Lc?=
 =?iso-8859-1?Q?Y=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB7790.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(1800799024)(366016)(376014)(7416014)(10070799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?yvNrTxLPLI2Aal1+Uf12g4JTauukk0Cgm4voK/9QKqU4IEadTKZM1kzdTS?=
 =?iso-8859-1?Q?gWKRr3aM4mHZLwezJqpgvi6cpnH6nrwivbyEnK5YKFr6EFVQXTs7IEJwlU?=
 =?iso-8859-1?Q?X8576htc/Pp38YdcQklYDbT7QN+D98eU2ugq4Wnaotkv/Cgjtg/5KxY553?=
 =?iso-8859-1?Q?EK3MlL4/80vG/CZkq/KOKmEMeLM0SRTj51nQxXSERYSXi/KmSB7r/bD7B3?=
 =?iso-8859-1?Q?TPLhwMkli9U5nzr0rTsaICXiL0WftyWpEZ60MfR81nrBOCYqErzgSiJWV3?=
 =?iso-8859-1?Q?nw68ywMLim8HHp2/F3vdFtDbq+qE7JQSJtF9odg0SHU7oFomMsOpepk31D?=
 =?iso-8859-1?Q?sTLF/R0iskQ+FGBpxQG1+kMZ3k0Gtjg9MfzlkUYXIkl+Y2i20MyoPRYRQd?=
 =?iso-8859-1?Q?0Tj0284PAoO0FX+3/qB/KBylSpFYeygzEmp3rGXR2NilkVDKNFiMaSgiBH?=
 =?iso-8859-1?Q?9MQBDtdYZEaDvIQcSNe5myzPs5cW+hlPMCMFl0DMRXttY8kPP2YAGHEAF7?=
 =?iso-8859-1?Q?gfFbj2SlaX0UX6N4RHwB6sOHBrrLtYmAtouAOvpJt8AKXaNtgGMAhKuH4C?=
 =?iso-8859-1?Q?i4R9nIxxUxk0a3c1jOcye7gvXIX0P3ckTEfM93kJP1nlz6olz7iXjhCxn7?=
 =?iso-8859-1?Q?W2G1O9YNbBXOla/NRqeTsknEfFGI2ad9he6J8TTErlSsRgglz79gyP0Cdp?=
 =?iso-8859-1?Q?hh7Kl58quyGK1lKEvciAVndnT/yeRKMqasMnuFYKEAusVxUaoM7LxP2sd6?=
 =?iso-8859-1?Q?70knnKwkUxK0J9fl8IhVV1pL/jvLKNyxEENNxZVGKUb5dSv2wA4q1jdo/Y?=
 =?iso-8859-1?Q?2Yg0xmomImeD9R+KZXHG++zYrNg+MvWHpOFXDC53LbILFXbfnPtrke9cAf?=
 =?iso-8859-1?Q?/ORwD42RpVjia6Fy3KEikURFFUDn0D8q8iA+A9o4L0IqR0Y1eVBm/6qo+5?=
 =?iso-8859-1?Q?Lcsb8GWmGopC9Xe6/ezRJMGJUvI8YcQpXZV23gkHDdtegkOgTwm3QqPSMD?=
 =?iso-8859-1?Q?SaDNOsQjWZfCekKT9YQR7XvdBVriFEsKCfodXewOft9RxzJcdaWBs/3kMb?=
 =?iso-8859-1?Q?1yp6+2hMX6QTXWVR/+1OgpxzXeqHhw8fvRp5mMR7P+18nA2ryUhOgF3ZXH?=
 =?iso-8859-1?Q?VDqhEXyTXCeUP8leDMcCyLsyMOWTxzc0i/SAHOpVTIsNczQYq0ax4fPI+2?=
 =?iso-8859-1?Q?DZxJ3at4DUZ2Y1PHIK5VwlS3mp69K3DvktW2Wfu19Qlfz8o4tMRZGFjmYU?=
 =?iso-8859-1?Q?gWfNewc1I1cfXHCF0Mn1MZp+4Prs0MKk6j4M48wASUIPZnZR1RDrE9M/iB?=
 =?iso-8859-1?Q?Sz00i6AyT8jXc9Q8PY2fiP6UQp3g98J4riv+aY2Xe4KyyOW6qNVmKmF6ge?=
 =?iso-8859-1?Q?bmMgqN8NvM1q8ngCHylSmrSADVZXnC/JuGUK5cqvbBaMDYyzlg5rWRY+Jn?=
 =?iso-8859-1?Q?HpeBHVJCklF+42LJNe4mAUPgYAH00XE91cvU1PBnWy9Wble+8pZxCZZGcM?=
 =?iso-8859-1?Q?eVs6sN3qV0x15Fv4jpo9KPta8ruGXGXrrlU8i2pdxrVEpPK56fEcSX6Q0D?=
 =?iso-8859-1?Q?9966LOcWjnU3OqSl4yFluyFGQLMFHxr/3xBMPnIz5TJCmvlIIwFpezROwV?=
 =?iso-8859-1?Q?r+OMdrB1fGW7ikMJimyA8aQ2UBHq6FbREVR8VzXancJ03KFOZX1wN/5bLk?=
 =?iso-8859-1?Q?SaUpCPBisz66twJFuyB8bcO7vfIl7Cgt81R3rXNSftPQE4H2qdOAjlNN8m?=
 =?iso-8859-1?Q?znYQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fed2ac2-41f6-4de4-fe0b-08ddeeedaac5
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB7790.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2025 15:37:49.8785
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qvRcxIihim5POsVDZ8xbNIMZqageX8R7K9dqV4QablWZ89m2P+2zCuqKax4Qrg9EbP7NWVeNAm+to/7RXNS+eg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR04MB9407
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_083804_519067_47C6DE8D 
X-CRM114-Status: GOOD (  26.71  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Mon, Sep 08, 2025 at 02:02:35PM +0000, Josua Mayer wrote:
> > My updated plan is to describe the schema rules for the compatible as
> > follows. Is that ok with everyone?
> >
> > properties:
> >   compatible:
> >     oneOf:
> >       - const: fsl,lynx-28g
> >         deprecated: true
> >       - items:
> >           - const: fsl,lx2160a-serdes1
> >           - const: fsl,lynx-28g
> >       - enum:
> >           - fsl,lx2160a-serdes2
> >           - fsl,lx2160a-serdes3
> >           - fsl,lx2162a-serdes1
> >           - fsl,lx2162a-serdes2
> Weak objection, I think this is more complex than it should be.
> Perhaps it was discussed before to keep two compatible strings ...:
> =

> properties:
> =A0 compatible:
> =A0 =A0 items:
> =A0 =A0 =A0 - enum:
> =A0 =A0 =A0 =A0 =A0 - fsl,lx2160a-serdes2
> =A0 =A0 =A0 =A0 =A0 - fsl,lx2160a-serdes3
> =A0 =A0 =A0 =A0 =A0 - fsl,lx2162a-serdes1
> =A0 =A0 =A0 =A0 =A0 - fsl,lx2162a-serdes2
> =A0 =A0 =A0 - const: fsl,lynx-28g
> =

> This will cause the dtbs_check to complain about anyone in the future
> using it wrong.

So just that we stay on track, this is what the submitted patch
originally proposed:

properties:
  compatible:
    oneOf:
      - items:
          - const: fsl,lynx-28g
      - items:
          - enum:
              - fsl,lx2160a-serdes1
              - fsl,lx2160a-serdes2
              - fsl,lx2160a-serdes3
              - fsl,lx2162a-serdes1
              - fsl,lx2162a-serdes2
          - const: fsl,lynx-28g

Your proposal is different in the following ways:
- Just compatible =3D "fsl,lynx-28g" will produce a schema validation error=
, BUT
- There is no compatible =3D "fsl,lx2160a-serdes1". I don't understand how
  you propose to describe that SerDes.

I realize I've CCed you late on the patches. They are here:
https://lore.kernel.org/lkml/20250904154402.300032-1-vladimir.oltean@nxp.co=
m/

One of Conor's objections was that keeping "fsl,lynx-28g" as a fallback
compatible string may not make sense, and indeed I tried to highlight in
my previous reply that it can lead to incorrect behaviour if SerDes #2
is described in this way.

Further trying to argue that SerDes #2 should have "fsl,lynx-28g" as a
fallback without directly addressing the fact it results in incorrect
behaviour is... strange.

Also, SerDes #3 is not described at all, it's not necessary to introduce
a fallback when it can be described precisely from the start.

> The driver can still probe on fsl,lynx-28g alone for backwards compatibil=
ity,
> and you can limit the feature-set as you see fit in such case.
> =

> Main argument for always specifying lynx-28g is that the serdes blocks
> do share a common programming model and register definitions.

I think this is the sticking point. The blocks do share a common
programming model, but that model does not give us a way to identify the
supported protocols. You can try to enable a protocol converter that
doesn't exist, and read back the enablement status, and you'll find the
hardware reports it to be enabled (for example PCCC[SXGMIIA_CFG]).

The snippet below is something you can try out and see for yourself (it
will need adaptation depending on kernel revision).

static void lynx_28g_lane_probe_supported(struct lynx_28g_lane *lane)
{
	enum lynx_lane_mode lane_mode;
	unsigned long supported =3D 0;
	int err;

	for (lane_mode =3D LANE_MODE_UNKNOWN + 1; lane_mode < LANE_MODE_MAX; lane_=
mode++) {
		u32 orig_val, val;

		err =3D lynx_pccr_read(lane, lane_mode, &orig_val);
		if (err)
			continue;

		val =3D orig_val;

		switch (lane_mode) {
		case LANE_MODE_1000BASEKX:
			val |=3D PCC8_SGMIIa_KX;
			fallthrough;
		case LANE_MODE_1000BASEX_SGMII:
			val |=3D PCC8_SGMIIa_CFG;
			break;
		case LANE_MODE_10GBASER:
		case LANE_MODE_10GBASEKR:
			val |=3D PCCC_SXGMIIn_XFI;
			fallthrough;
		case LANE_MODE_USXGMII:
			val |=3D PCCC_SXGMIIn_CFG;
			break;
		case LANE_MODE_25GBASER:
		case LANE_MODE_25GBASEKR:
			val |=3D PCCD_E25Gn_CFG;
			break;
		case LANE_MODE_40GBASER_XLAUI:
		case LANE_MODE_40GBASEKR4:
			val |=3D PCCE_E40Gn_CFG;
			break;
		default:
			break;
		}

		err =3D lynx_pccr_write(lane, lane_mode, val);
		if (err)
			continue;

		err =3D lynx_pccr_read(lane, lane_mode, &val);
		if (err)
			continue;

		dev_info(&lane->phy->dev, "Protocol %d: PCCR was 0x%x, is 0x%x\n",
			 lane_mode, orig_val, val);

		switch (lane_mode) {
		case LANE_MODE_1000BASEKX:
			if (val & PCC8_SGMIIa_KX)
				supported |=3D BIT(lane_mode);
			fallthrough;
		case LANE_MODE_1000BASEX_SGMII:
			if (val & PCC8_SGMIIa_CFG)
				supported |=3D BIT(lane_mode);
			break;
		case LANE_MODE_10GBASER:
		case LANE_MODE_10GBASEKR:
			if (val & PCCC_SXGMIIn_XFI)
				supported |=3D BIT(lane_mode);
			fallthrough;
		case LANE_MODE_USXGMII:
			if (val & PCCC_SXGMIIn_CFG)
				supported |=3D BIT(lane_mode);
			break;
		case LANE_MODE_25GBASER:
		case LANE_MODE_25GBASEKR:
			if (val & PCCD_E25Gn_CFG)
				supported |=3D BIT(lane_mode);
			break;
		case LANE_MODE_40GBASER_XLAUI:
		case LANE_MODE_40GBASEKR4:
			if (val & PCCE_E40Gn_CFG)
				supported |=3D BIT(lane_mode);
			break;
		default:
			break;
		}

		WARN_ON(lynx_pccr_write(lane, lane_mode, orig_val));
	}

	dev_info(&lane->phy->dev, "Lane supported modes: 0x%lx\n", supported);
}

The fact that SerDes #2 works on the fsl-lx2162a-clearfog.dts is
accidental and doesn't change the fact that describing it as
"fsl,lynx-28g" is wrong. (of course, I stand corrected if someone finds
a way to determine that 10GbE is unsupported on some lanes based on just
the programming model, but I doubt it.)

The only 3 ways to find the list of supported protocols, that are known
to me to work, are:
#1: list them all in the device tree (talking about tens, and the list
    is ever-expanding as the driver gets more development). This is by
    far the most complex and difficult to maintain solution and my least
    preferred.
#2: hardcode them in the driver, based on SerDes compatible string (the
    current patch, or variations). This is my preferred variant for
    keeping the dt-bindings simple and the
#3: like #2, but distinguish between two "fsl,lynx-28g" instances based
    on the "reg" value. This should work fine, as every SerDes block
    index is instatiated at a fixed physical address in every SoC (block
    #1: 0x1ea0000, #2: 0x1eb0000, #3: 0x1ec0000). It should directly
    address your objection, but:
    - it also requires dt-bindings maintainers buy-in.
    - this method can distinguish features of SerDes i from j, but not
      from SoC A vs B. There is an upcoming Lynx 10G driver where we
      need the per-SoC capabilities as well, and it would be good to
      have the same overall driver and dt-binding structure for both.

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
