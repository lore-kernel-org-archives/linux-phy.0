Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C20FCD98D2
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 11:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7DFmazS6KHX15JTifjgUVZ+FSmiExhKoP4vV+BYG0kI=; b=zhfG4oGLiuyT0y
	n8LTqrFDGS4gKXWpKckTFRxjiHXT1yyhQmUfy+4z3PPqp7Ny9BbB339+YN9kiomKSMaVIaIK9SiZJ
	GlOqS/3U+/4Lg6HHaFhSHJQtLBQtkA4ADH0PJd0cn/BudCYS4AN6I9irAWiwLpfwXTY194Nhoc0yd
	T/TqXRIyyOzhg9buws6NB+UorfbqtFbk4gxl9TCHiGUfXq+aYTUl03tQNxHQPfWWlwR356//e0qRp
	CAIBmIlGpnYwZpWRBaJvV/ZdcMinHrQSbbPOlQAIe9nXUAL/cv/q5x7BmL34ABAH3gvBhnIxIoXcM
	gObhyE/fZjkiH/433VDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdC4-00000009H42-1GrB;
	Thu, 11 Jun 2026 11:03:28 +0000
Received: from mail-francesouthazon11011069.outbound.protection.outlook.com ([40.107.130.69] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdC1-00000009H3e-13zC
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 11:03:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rylu5uBIaD7EAVPd5BPNFRISz0CPVe1a0/BZQmgIgDP+5IfNoNmh7/eLdiaAipWxWPqb1DO/i0Qh6utJkKP1MajpZVIe/4NCREVkjft6mJEan7Ba+6ILOJvlPCEHJ621I9ubxVRjJT9AcqfBQby30h4+I59sP3bG0giIXQllbrsi4ouj9WFY3Y9dxfc9/88m8Lb2uvlAxIkq4HLHIndJeIRfjcT1X552H170i2V5nkU3MJTPep9/6fvYV9yw3AU/gC3/6cZ9MFPkh2+zqKsyY7EgySTzY0pkAvwDgaB24unu7BIng+MNg2d5wetO5e4CAnZ+hSK4kyrByegnP+Q3tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iJsv+e6yjuozRcI1NvTuAtq0laz9e71MZFjK4NP5j+Y=;
 b=SjHmOaAjF86yGGxuVmasslFbX13d38b+KX4UQDOYvdhMtmGJolVtDgAD5qQOZQWZ+Tklux2G6a9BmvHtn4Repix9FB3tLcQUIM/nuTw/BGDdhlBvs7P7u7et0So5ybIY/XeWPiG1vBY1Oqp8rp50/Xh73VS7yjjpLoS0zjjU/XxhoNVjXURmXh9CFprP5LYjvMLuObu/+yDPY+dWXTc1B4x50/QsyOuE7L8McQ+3gelyx0TlqIHSJIhq129YeKPCfCpwg5cVHBWNb4deN0aeneTO1vnYZF3YEYf0XVwqhF62oyjRV4xeptP2ALqYI3JmgxuP8VakicNXUGxT0DMtmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iJsv+e6yjuozRcI1NvTuAtq0laz9e71MZFjK4NP5j+Y=;
 b=hVZ/DvTJV+9yfL64m69/HdJcoCtZiRnSMbc5WSx4C2T83MgQVPuYP2lAJPsplYX/Ep9WxvCuErce+ax0WCbVESU9lEDSxe9KwtZlYQlFArUeRXsTtw1aLuyzhszO5HnQGGMFoT4c1CtP7Mrf3E1WpaAEeF0+3ylRGd2pmi3PSZM47q0o4J8jBylD3WUHgjkRIhwrOz6Z5FAfquIZYV2XfC/XQ7ZZXI9BFLO1HzEH6Ihd3FALBTgdGHVHTJLZRocq2m7i8uKZcbSFCFaq7HDALKzp82kH9dVhTcNzrZli5GX4C6HG71MU//Qs+ON7mc0l4oWGDByh5yRcHl/bv/HkpA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13) by VE1PR04MB7487.eurprd04.prod.outlook.com
 (2603:10a6:800:1a2::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.13; Thu, 11 Jun
 2026 11:03:18 +0000
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd]) by GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd%6]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 11:03:18 +0000
Date: Thu, 11 Jun 2026 14:03:14 +0300
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Tanjeff Moos <tanjeff.moos@westermo.com>, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 phy-next 08/16] phy: lynx-28g: move struct lynx_info
 definitions downwards
Message-ID: <6zcuopu5s35vvtruib6ufd3edtymylkk2mrbsv2tmksckmdhfu@snsmyylht75k>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
 <20260610151952.2141019-9-vladimir.oltean@nxp.com>
Content-Disposition: inline
In-Reply-To: <20260610151952.2141019-9-vladimir.oltean@nxp.com>
X-ClientProxiedBy: FR4P281CA0372.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f8::18) To GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12290:EE_|VE1PR04MB7487:EE_
X-MS-Office365-Filtering-Correlation-Id: e94357d7-5e7a-433e-4bc9-08dec7a90b27
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|23010399003|19092799006|376014|1800799024|56012099006|11063799006|4143699003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: oOIY7VlQy/9DIW+xKWS7kpFVBh8te4qBXKxWRu/mR9jQ5elqmUT3L71L1Kq2tdn219Ad7VZ+YMQDl9ZPOtjs6zu3PYMhLAtKkCqM2PqfA+qlztOZulQZwB460mTdB6hyA2HSKOsTSSpSlJ4iJitKEkj9zoy5XBZrVP1SwADN/40TDJnf2ynQMAPSOs1TqZcPT+rd2IPbgbWggIAxe5ttPImtvoPUzFmik/kMw9Ce+wQU9lc4DyJ6kuGXthRk9ZzX3DWaCdqCC8EiDYjDFUPkiVwEDxxniMw/egzdy1A7ktMgqzEiMxnppdpbZnIYvygG0QVdqp0IwrVOsSmIrn+k0fARlG6vKiSwgzNkeBduSALWEkr3rGmXoASKeM2Rt2G5TWRnNfJCoNuajEHShxYf+DtmoImjLvaS8abCOAIXtIlZErSZ3LYe0RHUREbGmIZcjR4/yWGtXIbWqD5FIjvhfZgq0cWE5THeY7Cvcej6TOB/VD9M54ABvqIYVe3UP+uEXNGRAYzV/Sq3RGRsiFS9y54hlp+RI9eSYNxgFEjK99xWiXa3ZVmoLmAnv8xqLU99cbNI+AY+jU9YEJMNjoEuoqpGzMIyGvbVNmDK7g4EtPhH6zI9ggZDWaCwQkYloIKhXGqPUXbVwgZ0L7MBBSqfnI2918LoWMIdqpjxLn9un7fv+sAyBip1v9iHtqDBmIRF
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12290.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(23010399003)(19092799006)(376014)(1800799024)(56012099006)(11063799006)(4143699003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UGyVJo5ug5weD1JYiiM40fNdqgPcismtXzUVBlR4BrFif/FT1RxRx8J+JxSY?=
 =?us-ascii?Q?r1cCVKb/nj8KtwxeOrDyYTbEvmV9XFR9uuT8YxnXSBRD6JiLpcgcJSn5VhfF?=
 =?us-ascii?Q?lRrqzIC+w4e7YzGbAzGkIEU6kwjgKMm0bYfTDTPnxf6u0vVHh9CS8Qc5xHwv?=
 =?us-ascii?Q?Fqco+D34UO/5+qZH07AGehcwFZnpJZ9Vc8cE7CYsYMOg3wL44EFuBaJ9kfKo?=
 =?us-ascii?Q?8mLMiBLkfYTjQ0WbPAcDGD/4FleFEwc7lMwIZ/5PFAX0mUUyM15MTUEh6Od8?=
 =?us-ascii?Q?jZmwSY/8IffDDk30ETYO+PFlP4fB4iTV7nNtandLM0Q9KZ8x/SUIVKaBzeUG?=
 =?us-ascii?Q?U9mQgiK3SxX+Aoo9DD/ddDUim+sWZaYb7mO0K1jhHi34M5XvtXMtOHohskjR?=
 =?us-ascii?Q?Ja+2JVJm+h5b14UHpcplyqhoRCbCXKzI94NY7bPdDsWeb5VWBt3ulFe03IGW?=
 =?us-ascii?Q?M91jwoH6EgWaAcVANx3kWO1zM8iK7qrMmxinl8SRHfBXKtz15xPmwgKLGhXo?=
 =?us-ascii?Q?OR6KDMCh/OC7zjnLvJS3JGhjWRytbnC1oJazk2GlGOq6tPU8dLEuipxNCl6R?=
 =?us-ascii?Q?6bAxNjJ0hUCS5sdMp0DQJljaolDVQZ19Y206ZLp9PuCKgZtdbpZ3yQOSV0az?=
 =?us-ascii?Q?MMH0VkmS/zoYG5rIWkn2T5KJX108d/lUI116nkq1o7lmtkEKKHtCdecCNDLl?=
 =?us-ascii?Q?Y9gV62wnlNTl/ShB/bDjx0VqTmK8thAaru06Rb8yDnLoBII4XNN7YhLEZU11?=
 =?us-ascii?Q?fQn5+qnvx1EHsNE5g2s5oStQwkK1iUt2pTc9MgoaOCCjEHrOhc4U+yEbN9XF?=
 =?us-ascii?Q?Leq3+DLLa8tVkFn81kzFk50czv67i9VI3Y3nXprYTgb06CG/EL8P4DiZNB+N?=
 =?us-ascii?Q?LauWw114SJEmjlw3CAYt5T4nPZAUTcYqOhhuVJPGoG7v61JYdQq8UNPsi3KQ?=
 =?us-ascii?Q?uQbZvnV3C++mgAjEcI80Xwa1DDO1FPT5aHQiuxgVK93T15FA3uoLeCcXXAmf?=
 =?us-ascii?Q?f0QtV/7Jk9i/KhTibHLXq0/A9iE3Af9RroWVy6qLITzGpB/Vvv9LvgFSK6Xt?=
 =?us-ascii?Q?BtPi40jilldCh9leOAGjIBc1nXsRkynJakRJ5J2F7J3QL8zPUZLSdbfj1FKX?=
 =?us-ascii?Q?6JNjqLQWpK9r8VG6wqa4YBA33gN/WwQ7VK3ggVRKP8pCru55UsPwIxqQh2IW?=
 =?us-ascii?Q?I5JoRtdDK7+BeOEHyaiyeJuY5xNeeND5/tN2D/Y7Mti3J6abAplL+K2gzE7o?=
 =?us-ascii?Q?2HWjZGlFUt2chyqcNGhv+IGIUrcqKAVAh96SlZIpokGWNL0txgJrPFrre3DN?=
 =?us-ascii?Q?VSEMaO2wSMP0xPasqJwd+wrCKXqBDt7ixJx1URFESdzvl6YDLRsAzEvdRcxF?=
 =?us-ascii?Q?jEvj8gDLZhulbbU1sx0VH9EIaGhtsX54wViMfutZD1bixSe5X5l9GHgDx+u2?=
 =?us-ascii?Q?aP9Y1tXUBpjiEQ0y5UPHa0B1riVQ54kXBsh+kED6BQReMPpjujOarwh62Anp?=
 =?us-ascii?Q?VT9oSDrlf3AEBg8rYDrgAivH/bFF7Ik8Vb3bXJUxVc+O79Og1QrumWMeDM8y?=
 =?us-ascii?Q?pW5w0cAadJX+BbumJIucD03R9YVhnTpt6yV5UKnJlxiBTmtDBB2Q/ISNAM+m?=
 =?us-ascii?Q?uu/ai24hir7eGkFBTVl64FmJjsJJPqSDlAH3xbOAZ+g6Tz/0xJkrpsyz6DEp?=
 =?us-ascii?Q?9ahcPMGLgidrMM+roff9+lLOFTjrieJsWypBcw1pHr0w9BfqE5XsnXRWdE+r?=
 =?us-ascii?Q?mEyEKET4qw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e94357d7-5e7a-433e-4bc9-08dec7a90b27
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12290.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2026 11:03:18.4893
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u6OOVNOUFzhAtHnOwSEvKJ+TGu7ihyI9eFuXpNGMQegOJ/fSbxSz5X+ekbrfhgF3IFtjgWFlN5dDk6H4QJAamg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB7487
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_040325_315629_E097BB26 
X-CRM114-Status: UNSURE (   8.52  )
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

On Wed, Jun 10, 2026 at 06:19:44PM +0300, Vladimir Oltean wrote:
> We need to be able to reference more function pointers in upcoming
> patches. The struct lynx_info definitions are currently placed a bit up
> in lynx-28g.c in order to be able to do that without function prototype
> forward declarations, so move them downward to avoid that situation.
> 
> No functional change intended.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Ioana Ciornei <ioana.ciornei@nxp.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
