Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFD3FCAC5B2
	for <linux-phy@archiver.kernel.org>; Tue, 23 Sep 2025 19:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DfmbRVjdAseCxd+qbcn392PX6NyUxOprVCbxMbTEPqE=; b=oMHcXvs6Bk9t+V
	Pwv1GVXi4VofOqNVa/Z8w7CJwhtTRtvmlyh7N3eBklSKQaX4AiiuWCPmXDuCcWS3Yk8ElZCS38hGV
	OjYFzyrRCkFhJ2fjaZklYcmqgkB+OUtyuGEmTHyxyTa9pBh7ZYCvCYyCGlfMEWgabIrJv9mxa1ctM
	fwfTN+da1LnPaEeq5oElk0L7hvjZhe6EpQcRdo5Jz0Vqbo9/R0PthNTKp/Qzmxn62pK0z3NK5emiq
	Va/e/rtWcNJ36KaYcjhg8wKnkNgLFeB3Z2R93Mu2uZD22G+g/f/qHXgxvoleqo3copo8A2sehuIFk
	4rYCnJ5vbgywQoSSW01w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v18xE-0000000EhCk-2Ztx;
	Tue, 23 Sep 2025 19:45:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v18xC-0000000EhAt-1nMA
	for linux-phy@bombadil.infradead.org;
	Tue, 23 Sep 2025 19:45:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Type:
	Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Sender:Reply-To:Content-ID:Content-Description;
	bh=f2WblIxx5K94JinXfhboAO6ZelWiVHzUxvJ+UGsuoLU=; b=pMIPE3npi3BmpRdp+7mHR97ky8
	IUDmmy/bmHqFO682FHnH6vZvByytTlr+bM1Nx0/3b4gZtaKvLe87uBk+gntr0mOmmrXADrtZ405wt
	IOE8p9ge64rOC8gpR9DO/j11WTvhJ6YCd58BZRLBf8WgvD3sBNp+A7ucQMse6/lDtki/fE1v3d5fF
	IkE7YVkXvNV98dDeWpcJyZKnnJDeZWlJJWlHnursQgI9xhZoxztN0BiAAjiQ2TKMjyW9qw+7fCjLo
	J2uiMKULewCo0Q4jaVwW8gmHyknLahcTyvwxWbtYgGnee8UdL6u41sj5PuKVE+v4LS7FrHv6SWS/E
	cwaXdBhg==;
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v18x4-00000008ZLD-0MU2
	for linux-phy@lists.infradead.org;
	Tue, 23 Sep 2025 19:45:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vn+xOUPzi50p+nYBCDtl2h0X11disSDzFc6Pdf1+hVJniVctl5n1Yj0TS6y0SmE/iSKCuDTXKtTqdQJ5yrChVztEgzruImpFTjIeomWovxYaeZuZZh8WKg+yeSMi6J3ntQy5h95Lq4iGsVYq5rci15RGpWy9/L41sUQP0ExQ5oqrkgToLFoDZ85wJ7dgmGsRtcX0HsE0gr5NVPA3FldrAoFk4JIwiPLCWQUFOvuyp8QuJGg+qkYDAzTCBpRVpe6sgICy+Tv7LsnyJKwBLG02lULQpyiACQjD1QHY2jOqnL1EH289m6SpC/AZkAPUju5lF20LAdE/oj6z2QXPbVDsvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f2WblIxx5K94JinXfhboAO6ZelWiVHzUxvJ+UGsuoLU=;
 b=hRNsbBWUjRRv8l5BslBsLtmGB4l5LMCL6GuuVCl1D6OJ26a965/Rjl36xo1Kpg59QZQOgIg/u3pHiUQL+sGI3OJAZaUKoPNd2wtf0HAuDJ4TWI9y66qwTuvzqXI1Mbgj0b3B9Cbb2ou6hwdJWyl7xm7Ts4/IKqICvx3C6sUmF3/j2hvq0wDbGwkHTKSNOR7ow3z+psmlRyR5X4urSXjH+ADRn8yoBU3wnXBYkrvpK2NnZaiqqKn/wUPF8kJfdyU3Gex5jXuUWz0np72NlSZnKEIAwMJhuuMEep8+xx4B0iTDmJ0xntd3QSwr8iqLGrAtVN/cS/hm8l5mZNsSiB6lqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f2WblIxx5K94JinXfhboAO6ZelWiVHzUxvJ+UGsuoLU=;
 b=NMmXqOklZLOHwiCiotL8sl9BDJV0+dp6gHYUkDk2+qtVo/LPvR8t043X44PQh0AZRqnapBPKz3s3dklp3x2B/zaxj66j6d2x1GDIQZ0vXtNZc8oyZLEVrW7QjstKDe7vSDYzCkyMXZ9PRkwRUbtTc8NSDoNN8feUe1/CAb7uIBT6Vgh5QHZfNVNjZDb+MYjl3ruBnUqq4yKdDc7rG8bNdLjAe4PdRTqbnKPJkBzovjevQvGxBQDLqO5Wx9bFdiHQw3KDeBuhkd/6LbFg/lqkZzLqqnkxBOmOgNmoGeQyryQKM3pB9jhodx4ZB6VKcmSoquugRozYpARGwRM7B0GRxA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by DBAPR04MB7352.eurprd04.prod.outlook.com (2603:10a6:10:1a8::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.8; Tue, 23 Sep
 2025 19:45:13 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93%5]) with mapi id 15.20.9160.008; Tue, 23 Sep 2025
 19:45:13 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 phy 03/16] phy: lynx-28g: use FIELD_GET() and FIELD_PREP()
Date: Tue, 23 Sep 2025 22:44:32 +0300
Message-Id: <20250923194445.454442-4-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250923194445.454442-1-vladimir.oltean@nxp.com>
References: <20250923194445.454442-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM8P189CA0028.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:218::33) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|DBAPR04MB7352:EE_
X-MS-Office365-Filtering-Correlation-Id: 80b3378a-f58a-4baf-214c-08ddfad9b4a3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|19092799006|52116014|376014|366016|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?OSMJY1JzA/FgvigR3eQOee70vuzIaJSr9nWCn8EdMsmVPgeKP2vTB/mWZuk4?=
 =?us-ascii?Q?oZMpyX8InVjAJiQoAB40jUAhEavDS6RBGBzwRMXPBcNkyPn9kM5OXb6deW9E?=
 =?us-ascii?Q?4N7nI3EHpuhgVbp1e0G/Q5wKRxq5g13MQLwBPhDWVusHHgX4i3xGz1wW9kyk?=
 =?us-ascii?Q?Cm71cz/2vAhwQhWrXtI5C5ZR5oV9YE/3Uv9O6lS8M6qiSzkRx7dmS/uLP8mg?=
 =?us-ascii?Q?bHkcA66+OgT8Swhet2uffg1dOFebPHMrSi04qkwIT6+njkbSNUdpXCZo+iNK?=
 =?us-ascii?Q?MqW/ezBrX2ystJ/4/YAJI9cJKqxOtaE9Oendx0tI738JPkknlqkoUIo5yZbm?=
 =?us-ascii?Q?370CYBFftHVikxOb0n3YJhUOoqrtqfrkKk1T2aZGOVWVTOTJIC3Vb2oHOGEm?=
 =?us-ascii?Q?BYK9yo9wlnVewuu+dSlTFWcFftN1nruFzMHnYdXIj4sKoaiCa48k5cHNzIdS?=
 =?us-ascii?Q?OVQ8EmKJcKm0ipPcc0/6bvONpKZX6aYNnXEQzcG/O1DBFT/DFY+tln+JXDGV?=
 =?us-ascii?Q?pin2uRf6aZTkiI1qO6qHMlsmehHQCszi334cefMWL6DC8V3FSUPKYwoIxCkI?=
 =?us-ascii?Q?aaDV3/fLYgCqjvyakT6M7qSLaKJyRHhmBi8tSbdGuUGIuh95TbmY0npvdN6A?=
 =?us-ascii?Q?VJGvNpnY/UwsxmeYeDHfUETee+8H9aL5n6ypRy7mGn8KqUALF/ZWsUj6ukT4?=
 =?us-ascii?Q?IKhlcD3bETMDUGnb2GMRkForEPd66qCqFKLPcMNA3PPCn+GnHNvYJkq/cjWt?=
 =?us-ascii?Q?ZTGr1EDN+/iCOWFIvcpWMXrmWP81lNRM3nbsNQ+sHLcQChCd4Ov1SAT8Sy8X?=
 =?us-ascii?Q?iA008xvwAgnMEpN0Cx6bCIk/esmolkDKI9qlKfm/GzeSCvOxgCbCTBLxc5TT?=
 =?us-ascii?Q?U2MwIWvzzo573dWQEZPxK0Ls1xr77ODISSqb/Wkj9RGWO/FgYli29FCJY9xW?=
 =?us-ascii?Q?sjx0+qm7QvFdoPYuz9eVEixkBnm1YlB2zwrW+3SFatIbOJK8QNnGNa4pMdat?=
 =?us-ascii?Q?z6qWPJecTLK3vaN85fV9e7a3m/eHFEzw4+QDvEk5c+c5O32TM8E12CT03lvk?=
 =?us-ascii?Q?11Q4pqLMDFP9FgJxRaNMxaI1ry7Cmp/cqVExL6kxetnih7i6bkf/xGEPi1Bx?=
 =?us-ascii?Q?w5uK9ml8HxvEb4tn7FodW6KSe5fWmL98YSEzX6er74FdgsAFyhHwF6Mo8lCi?=
 =?us-ascii?Q?GN6mK2Bf5/8M30F9VpDtEcCsmJob9I7sjR+Ph79BlgMOxw/lLZ8vrvO0ey7T?=
 =?us-ascii?Q?w7RyeU3i2NS4GS4krUcUFp0szkVcAqwCHuClNbr80q4qEUnhmT32j8iqcfLp?=
 =?us-ascii?Q?dmNVb8DS2qUsVlqHv6HxfqOdcAgdX7dF9cb1sZIINo7KsH+mkmM1bJokKIzW?=
 =?us-ascii?Q?6JiWHwTcWezsIfN0Z1sRSsDpTIuahCPtpbbSHv/Bc8fWHRcEjbyW+9tfZMzW?=
 =?us-ascii?Q?Umee7YlG9ax/gxYXb+XzEqMG8CDIlgwigLeafVGf28D79QrmeQdfAg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR04MB7779.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(19092799006)(52116014)(376014)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2EJEDAz43Mo5+gtrjOl9xzjPlDoOGy+KrKd0FJe5Fi173kKQDq6mj23uuXnc?=
 =?us-ascii?Q?gDbrhcGWaBcHjGXgIz1n+kVm+atO2PYsdPNmbooBEF3LvLT4LZRGv8x0hzYr?=
 =?us-ascii?Q?xTxAHVYDy7E0yzugUzajRDyUsx8l9Ppd2RX+r3dDw4l2NZEWwZxn4+hXpIP/?=
 =?us-ascii?Q?0S3laulpKulwm/rmvRoF6vfnJYH06/IKAtLu1ykgePatoFVWZTmhjVprWac7?=
 =?us-ascii?Q?GdiF0GqsVYFJuS71V4HDGJyuVEexiNR5H+wspREAjOKRCgYgw5H6TRV/b4CB?=
 =?us-ascii?Q?NjBRQHGcWWzACs0+ZA7If2ehjcbJTZs9kTvK/DsCeRaNwYsbDv7e8PxwblOM?=
 =?us-ascii?Q?q7ETzcBkxg1jhLxyOMi9i5aKyWIPMxae5iFhd0FUjYn6BFwejV/TOI4BHPZ+?=
 =?us-ascii?Q?PCj/MSqB8AB9gEy1U3UFpArB6+tr8Q3XUErPoFJsWW55OjHYEqwe6CA7KYIL?=
 =?us-ascii?Q?8/ApYjIRVeWcE8c9osCTnxaypD5r2hLjDneIgFKxxXI6nYfmFCv1pQlNx4st?=
 =?us-ascii?Q?FxwF8VKlYcHFtzb37PaNt0nhflgPDKUahk2O0Qkirk4ENtNpv3nS9pVVNZNc?=
 =?us-ascii?Q?Pgo8I8qPQCkyFqTJzWn5FWs1mosWrS8RWmJp/KztOo0ZY+ObK9JY2lcdDf6O?=
 =?us-ascii?Q?P3WSluwW5/eYhfTKWZWCWpRH2QOPUBVtCWh5jG9D5ZuVtct45I1Z5j6MbYyS?=
 =?us-ascii?Q?c2dz3Om/IaNYqGg7/wTJlzsvJtMgnHaTOZX6OVAsxfBzz+wNlj4uHZ0wYFio?=
 =?us-ascii?Q?3hW+86HIBj0lfUXFHH6hg0C7j1Nb9rRytOi7BCHF0Z7SiP4mLSdH7IFo1cKs?=
 =?us-ascii?Q?rGdiGbIUp/ofjJTPARpEceL/tV+NRc1xssEH7lqQHrbsIQj3mHLtjlZ+IP6p?=
 =?us-ascii?Q?Ecd+OazBGP7Pn8cxhspTAreZSjWMSOmEw67+oO6k4PZdx3X8/s5zR7eMTYYn?=
 =?us-ascii?Q?S+gAMIBCM3jVhv2dVmqmpXT+OI7K+l6pFI9C3cKgq4wLtauzrizTkmmRjK/2?=
 =?us-ascii?Q?jmFzffDlJUocCSP6aSOXOEn3NC6IZ6JfJEoP7Oc/g09dnB5mxghDFpIX0u1L?=
 =?us-ascii?Q?UMrSeQMkwRjqpRRaYRExEOH3CB+GnyWJ/FrPWFEh8d2+v0K3XFVoRYkWKSY4?=
 =?us-ascii?Q?8ZNbkFBxXHz1YcMRh3O1sGa6wCiHd2/xFy/b68FdzZHFI2SJk/zjV6hX5NOZ?=
 =?us-ascii?Q?xM4Ovx+GgxKuewC3TSb2Up6skKNzwcaKV5U/0c6YLOro4/QvZO4a5lGRE7W7?=
 =?us-ascii?Q?4AmGkdmAlN5U1EjP95paSqFSgjbSGPA0I17f9XH4hVebkZpac9kXSiENvYgT?=
 =?us-ascii?Q?YsqEgvhmcrOPakZUpNxwSBchS6J40sF/H8aCP0O3qgwOc+mUpLzal1go/uMw?=
 =?us-ascii?Q?/FhGLBOOMRoIboYSWALcExEuLwHgN4/rLBD9YqC1ftE/SSUQugufbJHzhoiq?=
 =?us-ascii?Q?gkzckMXXWmaFtxrodphMOLJ8HxXKDxdpiHiVBdtU9tFddUNOwKfb1dBldPCc?=
 =?us-ascii?Q?aIMT4vkyyfgdewIJNJcmagNTTpKa99wxnJO1KN1yU1MJTS+iFue7dgHu7iIB?=
 =?us-ascii?Q?iB3FV9xyVQp5/RAP7ubgkYL7WaFrSz0Sy6CgTAjXbXOMl3/MnQtQssxqBUL4?=
 =?us-ascii?Q?sg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80b3378a-f58a-4baf-214c-08ddfad9b4a3
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2025 19:45:10.3287
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q/n5iq6V4LVQnAZBgva3p6ONzU2sDmFnL0sWj0V6wHq6L+Sj1e8Zuwl1dxmkog8W3btkOBcgmDpf5nA/P/PWXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR04MB7352
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_204528_863414_FC40AC20 
X-CRM114-Status: GOOD (  12.73  )
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

Reduce the number of bit field definitions required in this driver (in
the worst case, a read form and a write form), by defining just the
mask, and using the FIELD_GET() and FIELD_PREP() API from
<linux/bitfield.h> with that.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v2: none

 drivers/phy/freescale/phy-fsl-lynx-28g.c | 107 ++++++++++++-----------
 1 file changed, 57 insertions(+), 50 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 732ba65950f3..414d9a4bcbb7 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0+
 /* Copyright (c) 2021-2022 NXP. */
 
+#include <linux/bitfield.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/phy.h>
@@ -29,26 +30,26 @@
 #define PLLnRSTCTL_LOCK(rstctl)			(((rstctl) & BIT(23)) >> 23)
 
 #define PLLnCR0(pll)				(0x400 + (pll) * 0x100 + 0x4)
-#define PLLnCR0_REFCLK_SEL(cr0)			(((cr0) & GENMASK(20, 16)))
+#define PLLnCR0_REFCLK_SEL			GENMASK(20, 16)
 #define PLLnCR0_REFCLK_SEL_100MHZ		0x0
-#define PLLnCR0_REFCLK_SEL_125MHZ		0x10000
-#define PLLnCR0_REFCLK_SEL_156MHZ		0x20000
-#define PLLnCR0_REFCLK_SEL_150MHZ		0x30000
-#define PLLnCR0_REFCLK_SEL_161MHZ		0x40000
+#define PLLnCR0_REFCLK_SEL_125MHZ		0x1
+#define PLLnCR0_REFCLK_SEL_156MHZ		0x2
+#define PLLnCR0_REFCLK_SEL_150MHZ		0x3
+#define PLLnCR0_REFCLK_SEL_161MHZ		0x4
 
 #define PLLnCR1(pll)				(0x400 + (pll) * 0x100 + 0x8)
-#define PLLnCR1_FRATE_SEL(cr1)			(((cr1) & GENMASK(28, 24)))
+#define PLLnCR1_FRATE_SEL			GENMASK(28, 24)
 #define PLLnCR1_FRATE_5G_10GVCO			0x0
-#define PLLnCR1_FRATE_5G_25GVCO			0x10000000
-#define PLLnCR1_FRATE_10G_20GVCO		0x6000000
+#define PLLnCR1_FRATE_5G_25GVCO			0x10
+#define PLLnCR1_FRATE_10G_20GVCO		0x6
 
 /* Per SerDes lane registers */
 /* Lane a General Control Register */
 #define LNaGCR0(lane)				(0x800 + (lane) * 0x100 + 0x0)
-#define LNaGCR0_PROTO_SEL_MSK			GENMASK(7, 3)
-#define LNaGCR0_PROTO_SEL_SGMII			0x8
-#define LNaGCR0_PROTO_SEL_XFI			0x50
-#define LNaGCR0_IF_WIDTH_MSK			GENMASK(2, 0)
+#define LNaGCR0_PROTO_SEL			GENMASK(7, 3)
+#define LNaGCR0_PROTO_SEL_SGMII			0x1
+#define LNaGCR0_PROTO_SEL_XFI			0xa
+#define LNaGCR0_IF_WIDTH			GENMASK(2, 0)
 #define LNaGCR0_IF_WIDTH_10_BIT			0x0
 #define LNaGCR0_IF_WIDTH_20_BIT			0x2
 
@@ -60,13 +61,13 @@
 
 /* Lane a Tx General Control Register */
 #define LNaTGCR0(lane)				(0x800 + (lane) * 0x100 + 0x24)
+#define LNaTGCR0_USE_PLL			BIT(28)
 #define LNaTGCR0_USE_PLLF			0x0
-#define LNaTGCR0_USE_PLLS			BIT(28)
-#define LNaTGCR0_USE_PLL_MSK			BIT(28)
+#define LNaTGCR0_USE_PLLS			0x1
+#define LNaTGCR0_N_RATE				GENMASK(26, 24)
 #define LNaTGCR0_N_RATE_FULL			0x0
-#define LNaTGCR0_N_RATE_HALF			0x1000000
-#define LNaTGCR0_N_RATE_QUARTER			0x2000000
-#define LNaTGCR0_N_RATE_MSK			GENMASK(26, 24)
+#define LNaTGCR0_N_RATE_HALF			0x1
+#define LNaTGCR0_N_RATE_QUARTER			0x2
 
 #define LNaTECR0(lane)				(0x800 + (lane) * 0x100 + 0x30)
 
@@ -79,14 +80,13 @@
 
 /* Lane a Rx General Control Register */
 #define LNaRGCR0(lane)				(0x800 + (lane) * 0x100 + 0x44)
+#define LNaRGCR0_USE_PLL			BIT(28)
 #define LNaRGCR0_USE_PLLF			0x0
-#define LNaRGCR0_USE_PLLS			BIT(28)
-#define LNaRGCR0_USE_PLL_MSK			BIT(28)
-#define LNaRGCR0_N_RATE_MSK			GENMASK(26, 24)
+#define LNaRGCR0_USE_PLLS			0x1
+#define LNaRGCR0_N_RATE				GENMASK(26, 24)
 #define LNaRGCR0_N_RATE_FULL			0x0
-#define LNaRGCR0_N_RATE_HALF			0x1000000
-#define LNaRGCR0_N_RATE_QUARTER			0x2000000
-#define LNaRGCR0_N_RATE_MSK			GENMASK(26, 24)
+#define LNaRGCR0_N_RATE_HALF			0x1
+#define LNaRGCR0_N_RATE_QUARTER			0x2
 
 #define LNaRGCR1(lane)				(0x800 + (lane) * 0x100 + 0x48)
 
@@ -97,13 +97,12 @@
 #define LNaRSCCR0(lane)				(0x800 + (lane) * 0x100 + 0x74)
 
 #define LNaPSS(lane)				(0x1000 + (lane) * 0x4)
-#define LNaPSS_TYPE(pss)			(((pss) & GENMASK(30, 24)) >> 24)
+#define LNaPSS_TYPE				GENMASK(30, 24)
 #define LNaPSS_TYPE_SGMII			0x4
 #define LNaPSS_TYPE_XFI				0x28
 
 #define SGMIIaCR1(lane)				(0x1804 + (lane) * 0x10)
 #define SGMIIaCR1_SGPCS_EN			BIT(11)
-#define SGMIIaCR1_SGPCS_MSK			BIT(11)
 
 struct lynx_28g_priv;
 
@@ -197,18 +196,18 @@ static void lynx_28g_lane_set_nrate(struct lynx_28g_lane *lane,
 				    struct lynx_28g_pll *pll,
 				    phy_interface_t intf)
 {
-	switch (PLLnCR1_FRATE_SEL(pll->cr1)) {
+	switch (FIELD_GET(PLLnCR1_FRATE_SEL, pll->cr1)) {
 	case PLLnCR1_FRATE_5G_10GVCO:
 	case PLLnCR1_FRATE_5G_25GVCO:
 		switch (intf) {
 		case PHY_INTERFACE_MODE_SGMII:
 		case PHY_INTERFACE_MODE_1000BASEX:
 			lynx_28g_lane_rmw(lane, LNaTGCR0,
-					  LNaTGCR0_N_RATE_QUARTER,
-					  LNaTGCR0_N_RATE_MSK);
+					  FIELD_PREP(LNaTGCR0_N_RATE, LNaTGCR0_N_RATE_QUARTER),
+					  LNaTGCR0_N_RATE);
 			lynx_28g_lane_rmw(lane, LNaRGCR0,
-					  LNaRGCR0_N_RATE_QUARTER,
-					  LNaRGCR0_N_RATE_MSK);
+					  FIELD_PREP(LNaRGCR0_N_RATE, LNaRGCR0_N_RATE_QUARTER),
+					  LNaRGCR0_N_RATE);
 			break;
 		default:
 			break;
@@ -218,10 +217,12 @@ static void lynx_28g_lane_set_nrate(struct lynx_28g_lane *lane,
 		switch (intf) {
 		case PHY_INTERFACE_MODE_10GBASER:
 		case PHY_INTERFACE_MODE_USXGMII:
-			lynx_28g_lane_rmw(lane, LNaTGCR0, LNaTGCR0_N_RATE_FULL,
-					  LNaTGCR0_N_RATE_MSK);
-			lynx_28g_lane_rmw(lane, LNaRGCR0, LNaRGCR0_N_RATE_FULL,
-					  LNaRGCR0_N_RATE_MSK);
+			lynx_28g_lane_rmw(lane, LNaTGCR0,
+					  FIELD_PREP(LNaTGCR0_N_RATE, LNaTGCR0_N_RATE_FULL),
+					  LNaTGCR0_N_RATE);
+			lynx_28g_lane_rmw(lane, LNaRGCR0,
+					  FIELD_PREP(LNaRGCR0_N_RATE, LNaRGCR0_N_RATE_FULL),
+					  LNaRGCR0_N_RATE);
 			break;
 		default:
 			break;
@@ -236,15 +237,19 @@ static void lynx_28g_lane_set_pll(struct lynx_28g_lane *lane,
 				  struct lynx_28g_pll *pll)
 {
 	if (pll->id == 0) {
-		lynx_28g_lane_rmw(lane, LNaTGCR0, LNaTGCR0_USE_PLLF,
-				  LNaTGCR0_USE_PLL_MSK);
-		lynx_28g_lane_rmw(lane, LNaRGCR0, LNaRGCR0_USE_PLLF,
-				  LNaRGCR0_USE_PLL_MSK);
+		lynx_28g_lane_rmw(lane, LNaTGCR0,
+				  FIELD_PREP(LNaTGCR0_USE_PLL, LNaTGCR0_USE_PLLF),
+				  LNaTGCR0_USE_PLL);
+		lynx_28g_lane_rmw(lane, LNaRGCR0,
+				  FIELD_PREP(LNaRGCR0_USE_PLL, LNaRGCR0_USE_PLLF),
+				  LNaRGCR0_USE_PLL);
 	} else {
-		lynx_28g_lane_rmw(lane, LNaTGCR0, LNaTGCR0_USE_PLLS,
-				  LNaTGCR0_USE_PLL_MSK);
-		lynx_28g_lane_rmw(lane, LNaRGCR0, LNaRGCR0_USE_PLLS,
-				  LNaRGCR0_USE_PLL_MSK);
+		lynx_28g_lane_rmw(lane, LNaTGCR0,
+				  FIELD_PREP(LNaTGCR0_USE_PLL, LNaTGCR0_USE_PLLS),
+				  LNaTGCR0_USE_PLL);
+		lynx_28g_lane_rmw(lane, LNaRGCR0,
+				  FIELD_PREP(LNaRGCR0_USE_PLL, LNaRGCR0_USE_PLLS),
+				  LNaRGCR0_USE_PLL);
 	}
 }
 
@@ -286,8 +291,9 @@ static void lynx_28g_lane_set_sgmii(struct lynx_28g_lane *lane)
 
 	/* Setup the protocol select and SerDes parallel interface width */
 	lynx_28g_lane_rmw(lane, LNaGCR0,
-			  LNaGCR0_PROTO_SEL_SGMII | LNaGCR0_IF_WIDTH_10_BIT,
-			  LNaGCR0_PROTO_SEL_MSK | LNaGCR0_IF_WIDTH_MSK);
+			  FIELD_PREP(LNaGCR0_PROTO_SEL, LNaGCR0_PROTO_SEL_SGMII) |
+			  FIELD_PREP(LNaGCR0_IF_WIDTH, LNaGCR0_IF_WIDTH_10_BIT),
+			  LNaGCR0_PROTO_SEL | LNaGCR0_IF_WIDTH);
 
 	/* Find the PLL that works with this interface type */
 	pll = lynx_28g_pll_get(priv, PHY_INTERFACE_MODE_SGMII);
@@ -302,7 +308,7 @@ static void lynx_28g_lane_set_sgmii(struct lynx_28g_lane *lane)
 
 	/* Enable the SGMII PCS */
 	lynx_28g_lane_rmw(lane, SGMIIaCR1, SGMIIaCR1_SGPCS_EN,
-			  SGMIIaCR1_SGPCS_MSK);
+			  SGMIIaCR1_SGPCS_EN);
 
 	/* Configure the appropriate equalization parameters for the protocol */
 	iowrite32(0x00808006, priv->base + LNaTECR0(lane->id));
@@ -328,8 +334,9 @@ static void lynx_28g_lane_set_10gbaser(struct lynx_28g_lane *lane)
 
 	/* Setup the protocol select and SerDes parallel interface width */
 	lynx_28g_lane_rmw(lane, LNaGCR0,
-			  LNaGCR0_PROTO_SEL_XFI | LNaGCR0_IF_WIDTH_20_BIT,
-			  LNaGCR0_PROTO_SEL_MSK | LNaGCR0_IF_WIDTH_MSK);
+			  FIELD_PREP(LNaGCR0_PROTO_SEL, LNaGCR0_PROTO_SEL_XFI) |
+			  FIELD_PREP(LNaGCR0_IF_WIDTH, LNaGCR0_IF_WIDTH_20_BIT),
+			  LNaGCR0_PROTO_SEL | LNaGCR0_IF_WIDTH);
 
 	/* Find the PLL that works with this interface type */
 	pll = lynx_28g_pll_get(priv, PHY_INTERFACE_MODE_10GBASER);
@@ -343,7 +350,7 @@ static void lynx_28g_lane_set_10gbaser(struct lynx_28g_lane *lane)
 	lynx_28g_lane_set_nrate(lane, pll, PHY_INTERFACE_MODE_10GBASER);
 
 	/* Disable the SGMII PCS */
-	lynx_28g_lane_rmw(lane, SGMIIaCR1, 0, SGMIIaCR1_SGPCS_MSK);
+	lynx_28g_lane_rmw(lane, SGMIIaCR1, 0, SGMIIaCR1_SGPCS_EN);
 
 	/* Configure the appropriate equalization parameters for the protocol */
 	iowrite32(0x10808307, priv->base + LNaTECR0(lane->id));
@@ -513,7 +520,7 @@ static void lynx_28g_pll_read_configuration(struct lynx_28g_priv *priv)
 		if (PLLnRSTCTL_DIS(pll->rstctl))
 			continue;
 
-		switch (PLLnCR1_FRATE_SEL(pll->cr1)) {
+		switch (FIELD_GET(PLLnCR1_FRATE_SEL, pll->cr1)) {
 		case PLLnCR1_FRATE_5G_10GVCO:
 		case PLLnCR1_FRATE_5G_25GVCO:
 			/* 5GHz clock net */
@@ -570,7 +577,7 @@ static void lynx_28g_lane_read_configuration(struct lynx_28g_lane *lane)
 	u32 pss, protocol;
 
 	pss = lynx_28g_lane_read(lane, LNaPSS);
-	protocol = LNaPSS_TYPE(pss);
+	protocol = FIELD_GET(LNaPSS_TYPE, pss);
 	switch (protocol) {
 	case LNaPSS_TYPE_SGMII:
 		lane->interface = PHY_INTERFACE_MODE_SGMII;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
