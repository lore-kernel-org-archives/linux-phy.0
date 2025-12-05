Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29BF7D2F7EE
	for <linux-phy@archiver.kernel.org>; Fri,  5 Dec 2025 12:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1BLcpNqB11hwdBm+wjr1uixKU59Xz3/VeW1Ey70bppo=; b=xTjWTPRebHEICN
	cqfiuKbqpNI4GD7jdH69qLHk80hfSkGnvnBrSVtWIKmGPRdE3UToMMEsWBgyqfqmUZ+9ZStMh7QUc
	Q9mcQdTxdVcSnn2tzMkFEx1SFCuLm2ysJoH3UT4QxN9xK5bHW8189/zD0lNncK6UxfGjo4joiSPrG
	cA5WLDphxb0qUC0ujaK9pYnXzgg4AY9sr31jlUydUuW3sB08DZtf710bm8ePX/7+67j3XKnQ7tsgn
	4yufwUfLrrCep+lmIWrfoLDmNQXKSRG8Hdygbq5vT5LXLrC3X5JDFMyWGpEpUa98QilEC07o+mOJ2
	//IQnnBjPr/r8UmoGylw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRVAo-00000009Ue5-2is7;
	Fri, 05 Dec 2025 12:44:34 +0000
Received: from mail-westeuropeazon11011016.outbound.protection.outlook.com ([52.101.70.16] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRVAl-00000009UdX-3rCZ
	for linux-phy@lists.infradead.org;
	Fri, 05 Dec 2025 12:44:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=blH8jaPoI1eiBPvYeM4uKw9Sfrp87v7L+HOjvRIE7AJJhxAj2PzxpY8fnoPc9wsUdkxXzkmzmFL36uq6k4RcLgRI5AmZIWRnK3WuFe4jAWQ/wyIlZonI2lsMi/lElKVO0UrZ+9wNZu5VH1M9Jy/v2TPJZKQAzfkFhgJSgkfjAs+Qv+jv/IBvbH2pQKd9NTEqlroSZLVZh1cTW1c4fn1lra9+W3Y9M9DHCfHliCDkpGtYKftKj0pe2JtHKjxMlfmkhuWyZVZcT8m+c3eI/mYj7XhZsI+xCKV7ETf+G3Jqk43rFDJOrOneF6ws7oIyacPZe2mQJw+WrAfDAuyAVNkWPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X8EldjAyNzNeoY0zWisVKjnZ0WiSRb0UzRe1FBW4dZA=;
 b=sJVS/cW/TYncWU/hc/LbxH5r2jWfV7MHbiqBpu/e7XvTGr/WjWZa1+fh9QH/VEshFcBpjTIv6Z9NfyFqGCIsW5ZuRVAYaklJ/XOQRnl6sbv3nDRcTEdDt07FDFoBURTFkHlKh8y2oFcxe08uazuQ/F5oJrU0Fn/EzDpWm+TFE6JPxh9lZdrvOpdrDl+1N0uIeZAoV1El5BlTIPQCVAyMZTqHNQuH4SmTmnOohsIc8rkm84PzNVGojm4xvOKh4hiVyoMKPUiTatA0g4/DF1hVrZLQhDtPvtXLV0iUW0HPaDazUhN5NH/TZXugWg2ngUknTN4kq9Sb0LRSDCxqTeFxbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X8EldjAyNzNeoY0zWisVKjnZ0WiSRb0UzRe1FBW4dZA=;
 b=PSunOcX6TGfEo5EW8GxSGShwBgA77ZOiDsXd5OGFg5FcRics7FlEpaXX9YM4CGyj0R2p3rLVscdml35ZJJF0mK3SGOe1J0b7yppZ6eGT6UfrMYEggR+DrlcOiwJmthOmv3DCbQ0kP+OoQLcLgH2mXsNIXVLm3hmRe7DwGEKnphDIOsnxjXnWSexS1UQg8bcDer8UjHpST09XDR1FW7GZsauZ0778roMKfr0E7rL8vko/M5NihIAW+FfcOv+SUmIbaWdG+yq9Y8wPQoaHlpdmuYbvmif/ySVnS1PseBQ+T0XHmpfQMH+qfLKviEdBxmsp1TUwFV2M7mv4N7mpPTmvnw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by DU4PR04MB12026.eurprd04.prod.outlook.com (2603:10a6:10:643::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Fri, 5 Dec
 2025 12:44:25 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab%5]) with mapi id 15.20.9388.009; Fri, 5 Dec 2025
 12:44:25 +0000
Date: Fri, 5 Dec 2025 14:44:23 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Tanjeff Moos <Tanjeff.Moos@westermo.com>
Cc: Sean Anderson <sean.anderson@seco.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Subject: Re: Lynx 10G SerDes Driver on my kernel
Message-ID: <20251205124423.gddjli3jtqlvkrkv@skbuf>
References: <a95dcad3-c684-4c2d-834c-07e92132eb85@westermo.com>
 <20251202162919.ow53dn7c3x2lguqr@skbuf>
 <a1dc8a14-56f2-4082-8081-0e29e2dbe35c@westermo.com>
 <20251203122601.72cwwpsp6loqpkpj@skbuf>
 <4287097e-a906-438f-b3a1-33e374477367@westermo.com>
 <20251203180022.adhggfqgfj4wsoqi@skbuf>
 <2f74aaae-1dc1-4657-9436-1f445d28ad66@westermo.com>
 <20251204193415.d5zymxgziweiepgy@skbuf>
 <72afdc4f-3f6d-4f2e-b054-ff3f2f8d5851@westermo.com>
Content-Disposition: inline
In-Reply-To: <72afdc4f-3f6d-4f2e-b054-ff3f2f8d5851@westermo.com>
X-ClientProxiedBy: VI1P194CA0032.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::21) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|DU4PR04MB12026:EE_
X-MS-Office365-Filtering-Correlation-Id: 75d5b89f-ed93-4e43-6458-08de33fc05c9
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|10070799003|19092799006|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?VpBcG6loKy64vFk/pxjvWUYr5844M4cbCM+pdGPywfYUTj/de2T1H424c24b?=
 =?us-ascii?Q?WMOXFJdLQza2dj9x+r+XczatEZn7GnNVO4MH0Hz/yvVSaIftfCd5aYzUAJJU?=
 =?us-ascii?Q?rYR+aeo6mdmOuwflyA2drrYTZQpYLa+aeQN9xDzRf1zl4Efa5z9P+g64FXKE?=
 =?us-ascii?Q?ryPCpIyd1/i4dGWBH4m8fqV9C8ZrT5vfqzZL74ftsSt+a2unMQU50csKZZTl?=
 =?us-ascii?Q?dvQbuHIo4QagXX3Vp3hM68cbBKLdFKT1Dq+GRFhRKh0WmXl4yxJ0c0wzaHtp?=
 =?us-ascii?Q?Lmz09CaJ6XV4bDqTR2jB1teOhNgDVXPLlRnUzQ6fmYZQMvIJH8rsZWxupkds?=
 =?us-ascii?Q?28T8M+HZJkzGPffGTSmSNiI25rnwqZzcfyJTO3IFEIN4n7aIDLzpcpXAZICR?=
 =?us-ascii?Q?5fyXMx9AoBK7xXbQthHxaGBqNXXM2dv2A/UoQwte+qotqY9avNULEIw151Kz?=
 =?us-ascii?Q?GiwhPIlhl9HmiGuirP3y51GlrL33JUeJpRz1vHU1kzHutdPv3rj2wEbMCVpr?=
 =?us-ascii?Q?Acq6U9i31ZwDeF5X0l37gUclyUEO1kqGA00FkfzSrWPygYznTXD0Vybc1SMs?=
 =?us-ascii?Q?gpTlPwCezEmgVU9Rdjgcg6AtX+ebxiQUrC0sLZX7h9GG1eMhr0wIgvyy+FN6?=
 =?us-ascii?Q?cxOC8rAAZ9tb18LJtQ4LvsNrXBH1V8QODyKYNdkNBFU7XpbYo8r3ClVbJI7S?=
 =?us-ascii?Q?OW5/Iw5M5MLHfnJVED3BaxsFphUX4Sf5Q+MqbVyez53usXzhC8/b1FQM2hRp?=
 =?us-ascii?Q?zDbKdXbW2oCyz4QMAAMSBQNEX0vLDRGhFju1tvpVJ091gVByIy3yDYvsLS/u?=
 =?us-ascii?Q?IHCBKW7JIEUFYhnN52UxQX8FoYrRO8kqM52Bt7wwO24uBkom94F4rN90DOq+?=
 =?us-ascii?Q?2mBXBYrCeMs1zKczfAoIkFZJ46wnxUWSFyfYf08dKBfyOLuQTxgioEVxahqx?=
 =?us-ascii?Q?gwG8jXpeMr8TkOPQCn9oLC5i6114+rRq9b+tEosOih6SOBAg9XpBHOOg+rSY?=
 =?us-ascii?Q?oVIc0t2b5olE2rl7Oj6parNS5z8MuMxEUATx1AcvB9b2yd6+IY4MAalmEo0W?=
 =?us-ascii?Q?5OvolRwVftx0vb6m6xCaeJyEWWDccUxhAZpZCJBVpm478gUBLSPTSLE5xJq8?=
 =?us-ascii?Q?fILeoxulluqWzB2A3AM43XQ8uGB8KJl0u/hCEBsOkQkvXXQG4eN7TfaUfZQR?=
 =?us-ascii?Q?nPHEQXrmKhT+JpcAtJOfuvkAFFcDWKZ3r4cYObv/1mJJzfBUVv9IhlOZx1xu?=
 =?us-ascii?Q?/Xmn2mvvaFZRa0JxGoD90Y9WQBYZBV0fOupGeUgrdcPCTgEJ98JQhz2mpYXk?=
 =?us-ascii?Q?/7OaVHW42qoP33HgXi3VA0yWtvTyYUVYy0pYR0g1ZitAkfsHi40ryQblYdG0?=
 =?us-ascii?Q?tknPVoJiFB8mNnxj1w+VHp9M2M6FqgzOf4dNxLj/LrXXt3ZgRfzS8rRYkgmK?=
 =?us-ascii?Q?bBcdSU1BvDqFP8a/YQsq2NhLxBAP68Dk4QcY70B4b6tdbHNtmQIQdg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(19092799006)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+dwNiJ3l3q9ceGE4zVODOCh/ckIAfN1pEZ0XDONh30nZ7sVeto/YHp4TzgbH?=
 =?us-ascii?Q?wS2bkub7x7Ft7zS3ciFUfqfr0SYYtFDUCUJ1p2NL5QYBL7gto0aBfw7keHlg?=
 =?us-ascii?Q?6xJ2QqiNuAyUuw4yHEQk2OwLtF05xKBLJhrdEVdLXi6LcGhXAK22ze53Z55y?=
 =?us-ascii?Q?z5zBYBXGmXVklP99JBbA+UkUBX1X14tSInRvP3YIxv0hQ10yJVcvGaF5JB/m?=
 =?us-ascii?Q?YCjzZN8gp2Iyj+y5PK6D1NPDjhAiIt9RmaPn8fGY/ImhHMtsxNBaiCN9fREy?=
 =?us-ascii?Q?9jQF4oX8xN7oQszR1UXWECQVGKAVeChaP2MK19Rc8+rjt5Ax232mWCMYGlt7?=
 =?us-ascii?Q?ipCfeDKVwPQ779etN0nsI/T5rtjD1sY5fCS+5YSMf4C8Vr0rowsrklZvcJpU?=
 =?us-ascii?Q?L9KVyllz+QengqiP+A4lrayJnLbrgjoXXr0Wo56dCyoZ2ivZj7sqrsCQIf96?=
 =?us-ascii?Q?PimCybY8jjkDk8CExbv0Z3B5MMjULxDoDsRySrucsuyW87Tjt2IBbItgoO80?=
 =?us-ascii?Q?zVj0pQlZuK5dhqFL/6aCrolnf1qVQha0YFiUDVMPFpoeY9fku23y8X2OQxHq?=
 =?us-ascii?Q?A8B/xRpbEnIARVDi2DByAlD/As3ikjUyEFZa5oqKHeM7ln/r2IGd6FmeUZG1?=
 =?us-ascii?Q?nPYtfglRcVtinNRsDcR0ZXNBOFd+8/vltmbCa3BRkGnsvA3gAXhze3QIBuWr?=
 =?us-ascii?Q?6Ln8oc1eCHcF2wqD3ZoyJWGdyZIKVMSu5P89ESXilU5X88Himg1/rNuwLrGy?=
 =?us-ascii?Q?n5uFnMseMYCjbojCCRkP9cFBMtGsmc0sdtprWw/nZ71gr+vU4dMHUTf9UsWE?=
 =?us-ascii?Q?+453XH59atXl+hFcfGrfahfkml+PFxu3Dvq7BsY3U2P1XMySURQDB20pSHqe?=
 =?us-ascii?Q?JX1CV5UUm4raoRSQbiyoelODeSUdj0RvCM4ge9G+cNT1kkngC4YXQtCQAHK+?=
 =?us-ascii?Q?KeyOhbpMSu0rDu/eQEOI8Scf2S83PkBvnOVSNaIp/6oFFLTruVbcUvk++pj8?=
 =?us-ascii?Q?uh+M6futF25vG26NCAXzlOfstRtXOB1oabXk0p0sB4NTrvIovoDVplx0edIy?=
 =?us-ascii?Q?028pR0CnjDymX4x5pnT57GGFkIngGp08BQHyjCABSVdK7eaMyulbiOeTZe6N?=
 =?us-ascii?Q?JL6Zs7Gxa+ARtraXotGPTdYObUegaIXwPMlQezCCn93OYu3Ctb4wgKIdPu9r?=
 =?us-ascii?Q?rUBHzDb2bUI+8tnTQvhnlZqKjtfHLiXFuseCGykfEaJO49xeyFuDoC99o+3h?=
 =?us-ascii?Q?PkXUqCudfBmPP+qq63tGwKm4601/riinI0FGLLPorVbuLbtTzX3SmPNLHOyx?=
 =?us-ascii?Q?byfxoeov8wZHtCfh+bQKuTfWSCmSo2JXajOb8pFzf5SGL+lWOTaT+ienIjSf?=
 =?us-ascii?Q?TqwJY/O9ox6NsGp4OGgjqwMc5qe1F3DS3Lc2PIdTx4uDtcbVbSRcPBEntVlg?=
 =?us-ascii?Q?f6zBPatpZLT8J0tTQ6YPQYksiRxqVR0iMu6vzbk+A7TCeDh9DHD4InbT6xSK?=
 =?us-ascii?Q?f6oNyPXNFlsSBqiTcExYn8iQ/xpdmyWVjJBCKbAhoNA/l0Dks62TmGyfDNFW?=
 =?us-ascii?Q?33yCoHOXsTHbAzqQvYZCS/dKNgdOvXV5Bu4A5jNxkFEhokWiWnWYVjWPV+gg?=
 =?us-ascii?Q?Mvf8zfuMwOZAbb93x3WRo5UXiRz1ceeYOx56x3VPrd7/DzQ0XzjnhvjdPlt1?=
 =?us-ascii?Q?Y0b4TQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75d5b89f-ed93-4e43-6458-08de33fc05c9
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2025 12:44:25.8217
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kHrnJ20a5rJDx4oHcMt6DgtuOaH55pbJ2us9B6mGyhL1NATt+U+IYPkaryZjH1wjyc40TsdPA77Ep7aZ7Alorg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU4PR04MB12026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_044431_963829_B3E95C0B 
X-CRM114-Status: GOOD (  20.04  )
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

On Fri, Dec 05, 2025 at 12:38:17PM +0100, Tanjeff Moos wrote:
> > As mentioned earlier, lynx-10g is in our upstreaming queue, but it may
> > take a while to reach it. You can get the driver with the RCW override
> > support from Linux Factory, though.
> I'm still unsure how to get it. Probably I'm completely off track...
> 
> I tried flexbuild (https://github.com/nxp/flexbuild) to get sources, but
> didn't find the patches.
> 
> I also tried 
> repo init -u https://github.com/nxp-imx/imx-manifest -b imx-linux-walnascar -m imx-6.12.34-2.1.0.xml
> to get the Yocto repo (LF is yocto-based, right?). The "IMX" looks suspicious,
> since we are talking about qoriq, but I didn't find LF for qoriq.
> 
> The repo https://github.com/nxp-qoriq/linux.git has a branch net/phy which was
> merged with commit 0229b2500383. So I will try to "extract" this branch with 
> "git format-patch" so I can apply its commits to my OpenWRT-Repo.
> 
> BTW, I'm still working on getting my board running again after I upgraded to
> kernel 6.12.34 (by merging the corresponding OpenWRT commit).

To my knowledge, LF is just the kernel component. It is a common
development process between i.MX and Layerscape. You don't need the user
space BSP distribution (Yocto, Flexbuild, whatever).

The nxp-qoriq/linux has tags indicating LF releases. The latest is
lf-6.12.49-2.2.0, which is what you should be looking at. You can first
try to run this kernel directly, and then see using "git log" what you
need to pick up from:
- drivers/net/pcs/pcs-lynx.c
- drivers/net/ethernet/freescale/fman/
- drivers/phy/freescale/phy-fsl-lynx-10g.c
- drivers/soc/fsl/guts.c
- include/linux/phy/phy-fsl-lynx.h
- Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml

The truth is I don't have something ready-made to give you either, and
some assembly will be required. The Linux Factory changes were made in
chronological order, and it took me some time to disentangle the base
SerDes patches from the backplane link training work (which require
their own clause 72/73 API which I also had to introduce), and the
resulting linearized changes are in my personal net-phy-upstreaming
branch. If you want to take a look there, you can, but you are On Your
Own in terms of figuring out what you need and integrating these changes
into OpenWrt sadly.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
