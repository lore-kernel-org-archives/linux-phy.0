Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0734ECAC583
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 17:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cQEZvZlnY53IRi3oPvDNpuQeNe4VXgv9BRuK7WBiQJw=; b=ePF6RAra20HtP2
	BJdE+LvAKla7rVFA06/WC3c5D0FYfQLQuNwxS9ivx7tKZ+Bd8ZIYRBoWtV+bOKQng+OpQ2jPaEVeH
	1Bo7wfNrZspvehomPhb4uBOf8RHBhp6ECXDvFgBs7PCdInIsUBZIkZCDxNDqgbRzs8kF08+/LtVRq
	fI2s3AcXuWJjgzfEHTMbOJ8sZaDBvBuC1vs38r2o+Ll1kjl1jriMlCG4Nu8Qq9/WnO+wyloj5XDrC
	axwDgodZ/97hl7X4Dfi+T79SfuzvVPRE36SG/UzPMwxW0KiGkxLLFuxGkCuA0ZctH0Up8yFpBW9iT
	+YXRKbargnbkfoZRXQ9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw1vJ-00000008mu9-2mHE;
	Tue, 09 Sep 2025 17:14:29 +0000
Received: from mail-northeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvwfq-00000006nHM-0LvN
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 11:38:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EUMDJ/iPW0YSWYSGTKw9QK5TWvOtJyZj6GeczIXBhv5pNypNhZZ07jQFQJjhETVRLU28BDKZS4Vknn9zHA9PKaiRPq0qQYKKdoVrX0zn3bZ+LDSG5gKoL+BbJENv3ozeytN2CZXHrhFpZhVLoFkRsqe3etV2l+JZ7gESFefasKQYwaAdTl4wd+T4WGWn2pI/49oHOrVG+CXJTpQYiV0sByxMFQib37i+ze0zZNP4hoiJBERP/oQ0i9T4eoD3+MV4z5KQl45mzppR5K5ViKRPYh+46qVBGwPFqcRjfdEf/vOR/PnxOYnRgwLmPfEPLKEXR6KsdHXc76+Yy/OWl9epig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1ZUzL5igABZFOc1QHUj34o/i+au+zm5QjUlql3qaonc=;
 b=dt2AS0KOpgOY1PoRxkx3kJIn9k8QFEDndaiyqBLS6h76xg6wTWvLaK5HP8x0sD+Y56v2zi6ycsuWtvQCD7amph1XKv89wji8lhgaGgPQl56NKHCqbKndEDfrWc0//AQWMHhwNFQqRC2iI4i78Z1i+aWPz7HCQwhtSFgA0y7WqCSuhoZgMhwyv1e+1I8lAB0GPqUFh8llY6zqa8N02FKjIOVrvysLfihf9Q7+Gbi7dfKuWoXV+KDHXA7eDW0JSaAdME6PAnaOLonlI9NlFHb/OYvlq13e7UI8RIZSmk4QZ+p38sMc++C6tVULE35UJDCwFmYFQNE8MK82Ut58GqbVWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1ZUzL5igABZFOc1QHUj34o/i+au+zm5QjUlql3qaonc=;
 b=duh1/RQIOvNkwFPUQJuiRwXEoNpA1y4sek/BmDW3QC84TyAEwJhtjkUdJClBRXgwIFkRBS+Lk+IDeFyz82W9y3SG3GN0CNXi9kPU3xLrGafs5FtgXgc0YNEagFdGvAEWvx8hwYv3g21TLiXoUUcV/Hhw5el32N9c7GmZ/EgVsrvYXAszjGJroMdMGvw5aSWDeAnFcVfeYTQ6TA5RGcwvesuLwAM+G1hwDOwe5vXBSvqQ1ZtMdTDd/oVDbehvXO22U7uZ6zSFzSr7i+mhD4qoEwcKY67JvC59st4KWGxEcn4B0MvCrmh2QVfvVxLBw3BC34CeAtm9S+BZDViey1vwvQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by AS8PR04MB7510.eurprd04.prod.outlook.com (2603:10a6:20b:294::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.14; Tue, 9 Sep
 2025 11:37:59 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93%5]) with mapi id 15.20.9115.010; Tue, 9 Sep 2025
 11:37:58 +0000
Date: Tue, 9 Sep 2025 14:37:55 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Josua Mayer <josua@solid-run.com>
Cc: Conor Dooley <conor@kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH phy 13/14] dt-bindings: phy: lynx-28g: add compatible
 strings per SerDes and instantiation
Message-ID: <20250909113755.wjp5xeszjgbffakz@skbuf>
References: <20250904154402.300032-1-vladimir.oltean@nxp.com>
 <20250904154402.300032-14-vladimir.oltean@nxp.com>
 <20250904-molar-prune-4d3420b1bcb4@spud>
 <20250905104921.7grpgloevlifa3kj@skbuf>
 <8bbbf34e-ff9a-481e-a45e-26cde7d8f6bc@solid-run.com>
 <20250905113757.pmumjdnbd52jxw6o@skbuf>
 <02270f62-9334-400c-b7b9-7e6a44dbbfc9@solid-run.com>
 <27f64133-729b-448c-96ce-771716485786@solid-run.com>
 <20250905152950.dvt2jqpgfjuzyh4o@skbuf>
 <5a295e63-f2a2-4aee-9472-389eabfdef41@solid-run.com>
Content-Disposition: inline
In-Reply-To: <5a295e63-f2a2-4aee-9472-389eabfdef41@solid-run.com>
X-ClientProxiedBy: BE1P281CA0242.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:8b::9) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|AS8PR04MB7510:EE_
X-MS-Office365-Filtering-Correlation-Id: 0215f09a-5e41-4d06-f730-08ddef95538b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|10070799003|366016|19092799006|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?T362/yK/IqC42+H9JJf/g0rLhVm4m6HaXuswo5DjmUDT6giT9zNeoWkbGX2R?=
 =?us-ascii?Q?0OnjwhCQSZcEqfcTmERcvuV3SFSg53mgU7Y8D2Zwd0NT4f8XKYdnZ7WMvgU8?=
 =?us-ascii?Q?KzKOz0ojA5eK3e2knjXywOMgsjFeUTz+IkQnzDJ/itKzxgHqQnDe9Z9mDKxV?=
 =?us-ascii?Q?3Q8oFVhj/FtP9XMS5Lz3k+esWLMtPKQSOknrWpQh4ayYAMctJjcoN75vsYgL?=
 =?us-ascii?Q?GXITOh6BBM9JarZq3PBO8gBsBLCyjK3WxremS1nsDlmtuMexYYeNT+J7J7L6?=
 =?us-ascii?Q?LJxQG7qbHjeOLl+DzoRBOWSXlJWD8sT4R9R5Z6UuM0YZrzaBW0zEJI5VYYch?=
 =?us-ascii?Q?TJkSjU0UOIGN3QZc/GjyXJzaR1zYey9hi0fJvJQHctc6SwDLSmGgomTl3tov?=
 =?us-ascii?Q?vHAoG1s7UJb0XPim9TSAFR+MSKAF1CwT00kmkQfWdUS5X3bpNtSP+YO6XXuf?=
 =?us-ascii?Q?aFS1HxM0y+36EeRXMIvG9VUyezbV+W65PW7qXbqnKKaW6evwu6GdRvNmlFWE?=
 =?us-ascii?Q?qsu4QtePlSp8g6yvFXTJuG7YkSqDakw+NnIR8Xppl0DQrhJ9UGEk8a1jihCg?=
 =?us-ascii?Q?s7kcZTWCqxbq5i8dBux1jP4YWRdvWcUH/r+nlTcnLpQ1Sjom17Erz0TLV7uo?=
 =?us-ascii?Q?Itclluo9yHNB1PP/eKcJyo+0m3pq1UBh6bADIFnuy26VBXcMvFHqQJQypm2s?=
 =?us-ascii?Q?2QAJ4rPyQLkZRiy7jhzJo+2mGCaTKdvsu48yl3esCqfVAt0gcKU8wjVL3PUW?=
 =?us-ascii?Q?7rEUXa37qyizN8BHcLHg8FR0ryxEdiFjToXbZzSjkripRPWvx4i5RNOzHnEp?=
 =?us-ascii?Q?ds1WxduKuy4FSgz02kcbg3crzlc3k/vI3a62KBECa31qNzuOKh30+SgAcXgc?=
 =?us-ascii?Q?H1HknvqcOGDrrJOy3Cqr94QaJaSu/a/dHq0y6M1Ntvwotv7/cIJi0zLXGhiJ?=
 =?us-ascii?Q?VCee+H6qyRl6qK1cfsIWTUyXXPG2V1v9RPeg3IRzJq89uA9ctsMQdtexhzOP?=
 =?us-ascii?Q?i77Ln8QEmPv9Adfv69I07pntVrFqm9frJOr+p0L+b7w1CG7azYvoYhVGZmp4?=
 =?us-ascii?Q?i2tGj/CFxX0BhN3X3G1xIZm028HYbe2TTKF/xTKyPnviAhZ5PBEmwEP9q7ne?=
 =?us-ascii?Q?eKKHvPTDEIvPwNKWExSyqaJuf6kHiObyCFRhWxslJCMSoH9slNtPgFSO8blH?=
 =?us-ascii?Q?nr1tlCQYBq0k+XNLNbSKZAffv9rW1xYN21Y78OGL/+LtPAjLbP+PNuUxJyUv?=
 =?us-ascii?Q?cszgPk4hp3QxUrCBSLD5WKDZER3/KsV15YTXxe0mlKCrZnMPTCoMcdIMwgWv?=
 =?us-ascii?Q?fSkiF8+1fShNgd5E6a7/TJgUjZp5VTkPIbfpCWN/QKZqez2hANdn0WuEZ0f6?=
 =?us-ascii?Q?uhH0DbfdKCoSP+NKfeUnZ9Fs+HtdrnbP5vdFIBGPKW1IV5shmil37bNOdAsh?=
 =?us-ascii?Q?3oGYj3/5loE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR04MB7779.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(10070799003)(366016)(19092799006)(376014)(7416014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dq2hQy6eXF58YdW4N0apCOgTMXp++WLIZ0DqI+3+5Kx153B2VFp2VnEc/PZ7?=
 =?us-ascii?Q?eHVkWPox6Y6zLDr7YXwN+Q5t0MjKcEpsh0QhYGB9lhkMfUN8uJiO/HhEIt4+?=
 =?us-ascii?Q?UxUld66n/l1l5xt9YPTVdL9qG8VZ054TgFrJ7Gr45W7Kn5x3dAWt94ng7/NL?=
 =?us-ascii?Q?mb+D5MIFLVCDBnZLDS3YTZ0l4yAera3zQQea64r8V9iSwa2ZKVTjU9bvbDUe?=
 =?us-ascii?Q?Ayx6CA8DrldC3YOAMTVKV1ra9MK4ZW+IVn1zX4XpG6RZgksPeQ1KOEibpsSK?=
 =?us-ascii?Q?TUUYH7C7Of7u/twC0+iGDoWc+FTNwMfy+PRJHseYdmLL4cVK2cdbzGubI7fY?=
 =?us-ascii?Q?etSfV152pxQUTqBBq1bAgyK+kxPdmq8u31Z8K2KT/3M0mVSt+GsuZy4OZlbL?=
 =?us-ascii?Q?0ZC33gimKcA6AKWQRRKPZXlzkgFlaKGuzZzqX79ukBRNVJpqhhjuQ9fBi+bF?=
 =?us-ascii?Q?bCNWA9ypbkDtkAypblVyWHf6XJ3nEyKjzG5QdiBrlZYFYqxgjxDvQvDuuP7M?=
 =?us-ascii?Q?63ruzOfBe740Vazl7ACORPo/srCvqVAX4eEgt4wNCWROItK8r61i2I/t3S6k?=
 =?us-ascii?Q?mL0/I8Nh6dUYfbC8DaUgBcTgOFxPqsA7GIYUbnw6vG2s0PGZV6gLzjZGC9k3?=
 =?us-ascii?Q?EoLzeTd/UJjLvYopCisIMrQj8E72yQiBooSygFUmbX7iEh69630Gf7w1bLzX?=
 =?us-ascii?Q?APf/x7Ph9AcoI1GI3NXowbPqY/jZjlnU0bE0G2sPqaYW4suW9SgL3Ugm9L7d?=
 =?us-ascii?Q?oVLQl5ExygADvZ45kaK4F0uihXSme3u3TsBUu3gzDpGe24fHXw8/oNkO/aOa?=
 =?us-ascii?Q?ip5o+Gsm6YS6qeVIt55rwVQhcexLn+DFLEhie7OzZgVQoA28O4PG/2uAbCAW?=
 =?us-ascii?Q?5bFc9du/ww+i2iIYkawJ+Qfl71Mkm7/x5EEr3kVG/kiR+0QT/cNQYOFYuzDN?=
 =?us-ascii?Q?7E+lmOBZPicz+PbgNklD1yVoVVpmk+MY6dSmc6qVqHElz+vqSl4HhcJc+4Kt?=
 =?us-ascii?Q?cN3x6Jf8YyYadYP+tKc642BO4sMSh3B0RFP9QZZJfBW+Gee+RItkRIQXRZLp?=
 =?us-ascii?Q?50m/6K0sTtReDTmQbP22EYqRaFkkI2IIw19Zi2Tw7/GIzL2h+J71Ocw0iFVH?=
 =?us-ascii?Q?C3IiSGOjoV9V7I2v3vtxIpsw4ntUHaR2jkw6wqQ9N4tfrUI6paHi0Ru8G91K?=
 =?us-ascii?Q?tml3WTG8n1YMy6QxhMrId8O2913qUaHNd/zZIviFDL+Q0Fhro9EG7sk6pqMd?=
 =?us-ascii?Q?2TLnyZ30TlosUPOcGchMeFjTw7DIpp1vRV7ORsix4JJ9jYidPAq09BlZRsdP?=
 =?us-ascii?Q?GRChC0KYTPnYHtlm95klapAebYlJXlW5c20hdf4GSC1yNsT5sJ8s3R1RmJWO?=
 =?us-ascii?Q?eifeh3eq6yYPmN6pf6SdFKfE42y+tYOagjPBFhw/+ydhr6mCpxZHiE98WoA6?=
 =?us-ascii?Q?l4Rh4RjStDrSIpsUe4aEu9WUpizjHX94s0s8jqrbj6G73bZM67KoFgGQKopr?=
 =?us-ascii?Q?/qAH/bGVVnd5q8Sywbd1pOyUqFYGzpDj1GEA3CgaGMlm2rMmMe4VnrpUcjeb?=
 =?us-ascii?Q?FEvlF0PYvebHKHxd9m6Bf2kX6BciWBFHuRgsVvVWavwCBV9w3EIiTPQ4El9/?=
 =?us-ascii?Q?HBZ56xsjTJclhoWnj4ZZpPubJNJRoRNlaY4TT8Epa3LKktw42B85otIX5GZY?=
 =?us-ascii?Q?u3W9hg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0215f09a-5e41-4d06-f730-08ddef95538b
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2025 11:37:58.9006
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2NFB9pdTthbKFrG6zBoaAMF3VEFTYgniWFuf+GvlbIJoxvqAov+8hUyrgV/aZYxUl32BHp4hPWLivPZeQsXi/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7510
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_043810_130131_34F68973 
X-CRM114-Status: UNSURE (   8.84  )
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

On Fri, Sep 05, 2025 at 03:50:52PM +0000, Josua Mayer wrote:
> > Why stop the eq-params reuse at "per lane"? Why not make these global
> > nodes, like SFP cages? It's imaginable your pre-emphasis settings might
> > be the same across the board, for both SerDes #1 and #2 lanes.
> No special reason, I think you got the right idea.

Well, there is a reason why. You wouldn't put "fsl,blabla" vendor device
tree properties in a root device tree node, where it isn't namespaced by
the "fsl,lynx-28g" device. You'd only put them under the root node if
they were vendor-agnostic.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
