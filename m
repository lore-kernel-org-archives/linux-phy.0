Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C018D11707
	for <linux-phy@archiver.kernel.org>; Tue,  2 Dec 2025 16:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mI8O3yJ6e5ycuTFVwLQH8W5gwwarD8jwl2sYwi4DZ1s=; b=jD6DQuaHhS4qQo
	+JybbTK36ko0TAuQ7LgEsov/GaOicq2Q8VFEYz/Lg9JLilUQzkOLTUi3f9tbcb/BwRxSGl1Pf3QWM
	5hSyOc2Aeyadq4VK0SZ5w6X4HW6ocYII4+fQ5bhAGgmBfYj/Qm4ZpX6/lGblAo7JZR2Pr8vnYSsgx
	wnYAO5UyezD9iCnjv4bB4qzK7bUDYgizbDcqNLt6E6+U+a0gC4pu5Qb5V/QitQIkqVKz7CPNDtaJk
	7kM3iq+zd2FmnVW68NOjpEDHMxOnrBkPXJgMvrOUjaidsTyznP+jYXalYaWkriFvQO44qsDJqzFc0
	MKBttsbgcAYsBnYK2qkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQTFt-00000005cZu-1A6G;
	Tue, 02 Dec 2025 16:29:34 +0000
Received: from mail-francecentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20a::7] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQTFq-00000005cZ8-2ZlO
	for linux-phy@lists.infradead.org;
	Tue, 02 Dec 2025 16:29:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gc6mquv4iMFW4TQSRhJJXow6xjycyr30Tt1PFFPBoRNycutV0wNbE2ugU4WLTlYB4nQvxbcyRrXvDWL5sMuGD4/oeTPKN+zDQEduS+h4O7KM2S0oX0ItLuhWAyybmkEMB9mKTIkKkCxT0Kn6YfIr8mHUkZV9aDh3Uo0l8p1Pop73VF0Lr600AIHVpp52d4j4RjE5TVQzTdQPmjwX0KnWpPbUoKTkfa/1ljCHtfvzejen9N86avE+ccbBnscEaWxdTHn5mzZVa5ZGo+VIgd23q8aaOHl+lKYjCRkg3DkbPpm+Smp1ylDIlBgEm2K1/vWgWLspwfkhAxghMPFtJm18pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0T0qc8VDe/md1JSA3CNlRd5ah19e2yXrbkc8+3JYwBY=;
 b=KRQvwkA9HpVugnR9yO/esZrVEiNs3KJnepHuoG632DEnOs59mlbJAaEHSH2iSeYgZLwG+qjs27HrR2yVsi6yTqS5nfX5AYsqyD8kwgII+4JldAhxZbxZ58A+CLaqiR666XdHnjMumr39WLJDWgfWqvc5wmlFpCoD5elPMgH/36faWkJSoiiqK25F6Isk+OMqIz6FRKZcThyFTiFjd25kl9ngAhU9f0ru1O32faUaWZkbp7co1c0KIBdjL+F3ox8d1l0Q3oXv4nMq19+NZLIM1LEIYUP3asUWVaZ4d16xZAoWBg4toc4n1058ZAXl2ZmF3jiNpLRTWxZvqsf38m3SjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0T0qc8VDe/md1JSA3CNlRd5ah19e2yXrbkc8+3JYwBY=;
 b=fd/d3Z3xiWU2SC4IlA7DXULfjc/UZ4LRLNlI5Ud+PTZfFUuIOrXrJ6J8ToYAxMvBuZX90ijTYhU5ffJtxT7fRIUonnOggG9M+jY8qoXNwa9Hkw74tf8OnCcy6i2AXoqDOAmcJN87wBBH+jPcw7DTxUIEgZKy1t+Ptgke0uwRwX+cOg5ZljbajZ/9AZ13zSrpZ/SdbhYeupDhC/U3EIpu5qP1NF3dzUr88a9/VfkjsVuz6bvlRBllvThLloiSBorjjKc7W0GLYEK0eLqBpOX800jumu5GZQ9JO98m1caPEA3E2RGGlhTmJ/pjS7/Vap3USMNYJvHBO6zXdCvAni1QQw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB8590.eurprd04.prod.outlook.com (2603:10a6:102:219::10)
 by AS1PR04MB9582.eurprd04.prod.outlook.com (2603:10a6:20b:471::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Tue, 2 Dec
 2025 16:29:22 +0000
Received: from PAXPR04MB8590.eurprd04.prod.outlook.com
 ([fe80::8cc7:661f:ab20:7d18]) by PAXPR04MB8590.eurprd04.prod.outlook.com
 ([fe80::8cc7:661f:ab20:7d18%2]) with mapi id 15.20.9388.003; Tue, 2 Dec 2025
 16:29:22 +0000
Date: Tue, 2 Dec 2025 18:29:19 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Tanjeff Moos <Tanjeff.Moos@westermo.com>
Cc: Sean Anderson <sean.anderson@seco.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Subject: Re: Lynx 10G SerDes Driver on my kernel
Message-ID: <20251202162919.ow53dn7c3x2lguqr@skbuf>
References: <a95dcad3-c684-4c2d-834c-07e92132eb85@westermo.com>
Content-Disposition: inline
In-Reply-To: <a95dcad3-c684-4c2d-834c-07e92132eb85@westermo.com>
X-ClientProxiedBy: VI1PR07CA0211.eurprd07.prod.outlook.com
 (2603:10a6:802:58::14) To PAXPR04MB8590.eurprd04.prod.outlook.com
 (2603:10a6:102:219::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB8590:EE_|AS1PR04MB9582:EE_
X-MS-Office365-Filtering-Correlation-Id: 936fdc09-91af-424b-4c1d-08de31bff333
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|10070799003|366016|19092799006|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?x6DJQBsulftm0xBb2pnj3c+/D8BKsqb7+a3OStajLPvuEBgtQn9rxqo0Gvd/?=
 =?us-ascii?Q?s6rvo1wyPzJbeSwgR8I4otC+pO8iBj2CKtzjFogSY8NCaiGiJCQZTDx5mnqA?=
 =?us-ascii?Q?ktzv1HToeZaWJHHKU8bEHXl0bbvAmaFtsvN6j4dLmFX8NvUSRQeJGjgAm7Tv?=
 =?us-ascii?Q?/WyfWeQJ0AD+U7nAULvFo0F7Bt7a39w8Sl5x3Bxk6nYRss1xJAmEISkXe3k2?=
 =?us-ascii?Q?veq2QHYIOoe6km/nAmu1jcqIiZgcbzJvBy6O8v/TVdIc2hYQ/JEyTKnrleXm?=
 =?us-ascii?Q?E+xvFKyF3wwfxw0BFQjG1uJaWpvmEy60202Hxj3nH/DHLc+FVLTniCVV7s2V?=
 =?us-ascii?Q?FZxNFWytZxTRamRnVFzA1HNKHCgB8N7+4ZJ4jcqgpdmzh+dvhycFuqibRS4B?=
 =?us-ascii?Q?Yk210hIKz7UvcAXzXF7wkZSdrrN8P6DEBHlok96v29+lc+1fRjFjBsGgVtdi?=
 =?us-ascii?Q?gqVtiwj3s5PGZlQguWi1Ar7FUCV1VGj+uPY4JwJvTZPx0Dx3gOFADdGOFQlM?=
 =?us-ascii?Q?w1+XzUzdZEXdf6nwo5Y+B8OvWX+z6VQyjr76digC9hwAdB7uBmFAzzHv3RF8?=
 =?us-ascii?Q?w9sxycC6l4aoEPG/B07Gmjb9r/LxLEhKRki1x6l/ipGNuL0SMI0FL145oiaK?=
 =?us-ascii?Q?i/CI+eU4jaz3Icz2xjz1EpMgAQfqs/IinOkLO2zelyFn18iDrtyVPpnKRgaN?=
 =?us-ascii?Q?rZ7t98Of4f/PZFQNueeCTI1o5JPn9L4CbGvQTDfnY/em2Ihh3qTjIAj55Vu1?=
 =?us-ascii?Q?4UiICziX9aTS94EQh5Yu85UzQvq6nuq6NF2AGDrF+uYQwO1EcTq4GokCb0WM?=
 =?us-ascii?Q?1f2JMHRsw/bgh41fZ+S9JUgFVmpDT/Esnp0u5JzZQEHr/0VulCV0hJ5JE4cH?=
 =?us-ascii?Q?rwqPe4NFIKZhxNsHA77sJ4ZX2wdWjFSoSo24Ix/6MLDC2P5jRN8ldyhxNN9R?=
 =?us-ascii?Q?qgStR4Zy3F2RbhCaWxN6HNtXJa0hrcrVJaDI7WjZUtf2hvRlkXLfeCCiJg8M?=
 =?us-ascii?Q?viwQ6Y/BJ9e9n7bSof5A5BaH86wlRfB0lK4XmD5C0HbWi4IhsW/ZdsF6kbrS?=
 =?us-ascii?Q?NyJZdIjG7vu4QPJtHRpb402M+0JyQ4fq0Ca+0yJ/Kgiv9YcOFLTzjbuwu+vq?=
 =?us-ascii?Q?RKmeeaj1LYsqP2tjQJylrGyjFXlWyuaXahPZ+gjT8ddWkyEF1RJQpzHVHbi6?=
 =?us-ascii?Q?7PwOT1CYYBhXoAelIZY8VeipuOPmO+u1d+eLRe85SBu1by7sCzqSprYeSVfz?=
 =?us-ascii?Q?Q66VsJ9plvK2qocJBiNvh2U5eS9sMuBKFcQbbxqkEn5d60TA2KcoQkufMzsF?=
 =?us-ascii?Q?7LoX8HLTzBU3w7yNhXNNp+HkYWJrQSGdDWflSv1NQipnF9ojwwR1uaQq0G71?=
 =?us-ascii?Q?bK32dYOCdPqRgRwjuLtkS5RHRhUXs/rg+GNz09LjWR2vdReSC94nh617j6HA?=
 =?us-ascii?Q?GZ5NRqiH5NRRc89VklaxdCTIYBZHCarmanu3KmYPxHFhzAm9B9OAGg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8590.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(366016)(19092799006)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7D+FgdAkATOe+7rnOG3OPITol1w3qyTpRmf3zJa7qGJajMcBGgtEAL9iRO0J?=
 =?us-ascii?Q?+xy+zvdNj4sPdO5ybdo/jJZ6TkkKFfkoxEB6P9fogITsuX/gjAc/baZRUciy?=
 =?us-ascii?Q?SGKJB88FpgtWZi2Q6sCOPAMRw6GlvTkNaJ31q5jRuq5ZSK8+OF4FSlihCd3a?=
 =?us-ascii?Q?ooW0UEAOAm+5ExkHHt/X9Jrqphg9BjFN3HirkZXcEjiKAkxEPTRoA3EeTLy4?=
 =?us-ascii?Q?fXKBMNJDMzCa2iqcaFlXfnGFQLogsOH7Pn6lUb5a6cFBU1UDcnjumNCo6Hph?=
 =?us-ascii?Q?oNRMBYH0LfmOZ3ZSXaw5u/5M+dUBNA5QCrznSMxU4SNywOJCFFi0GSNpB+M9?=
 =?us-ascii?Q?McDs8KsLNAzAxpydBhTv0j2IAPj2y8OHvXB+CLlaLjEsg7HVrtic/pBrONWW?=
 =?us-ascii?Q?AZhttk+BgLIxfRXT/18DjjvSczUCHRm7yLcLFU37ibUtObbBvd+aguXfpPJI?=
 =?us-ascii?Q?K7MpxFhxXjimXgJEdP/zJiZuOOcp1lLId2QtO+tFTDXaoBnb3ik2mfEayqYi?=
 =?us-ascii?Q?A4+lXue0pP0laooHM9dTl+dnqUt9XQzCpQF663noI+h8G3kz6FOIA6M4X0lU?=
 =?us-ascii?Q?IE5YCRDqfDJRndP4nUjBeySKIuly/v/QpEuwkVIcr2kgo4dkKn3xr2rIs2Ma?=
 =?us-ascii?Q?zzXmGV9xOG9PEzP0A4avwSUICDdStkjL7t9fIY/ruDS8bnmbAx1lYg3GETAc?=
 =?us-ascii?Q?nert/Kt0bWkf8N+8ekmAU4z0jKifsQIg4VFxO08o91ELL22mcXuF6FkUeHcu?=
 =?us-ascii?Q?QIbwqUvi3NBXSDcBaj8Hbf8/YzbM92Q02SKo1Szjudov2OL1qB6bWk6ofVwK?=
 =?us-ascii?Q?f8vcTDyPtcWLIhOadOnGkFphy5AyvEJTzILoYOOD6I/j3zxkhRO58Woow1RF?=
 =?us-ascii?Q?OZf6qSxUVgFaEkO8Icm7UOAm9Fd+ETqVm5n31yt1Kuo22cA+edwXoCxlbpB9?=
 =?us-ascii?Q?HOJYJkwxNijEnAM8nTk6oaBfKRzxnzNdUlX0Fl0CG1NniZogB0nLk4tMQGn+?=
 =?us-ascii?Q?vvkqN0272d3BhszRYVol51OBUcMj6mv/5NYpGCnYEJNFX0nCxuGpstY9KOtO?=
 =?us-ascii?Q?qxUP0PJAzljXfR7+SwRY4bKmdYILgvjiE5setDlgoAT5dZl7QDcUTXA4dq1Q?=
 =?us-ascii?Q?xnYh2ll6wtVBEryP+2QqPP/tOyCtN2STSBlhynb8RAgDcdyaHgNiFo+c7GVE?=
 =?us-ascii?Q?HWv5mMDG/d7YDx4td3mzL7+CMkhm39YNuSePA1OwFYbAUWlTvcONbvIfcaSQ?=
 =?us-ascii?Q?vkJs0udRDq6sa11Bia92LEy7ScC4PhDWX5EIgUuewD3wgW/JccOYivVxdPYS?=
 =?us-ascii?Q?Hbopd3i7YmSnT9UFU11d84urIUQXDaCVl96IkVspFKCa/j121C96fVpR9rG0?=
 =?us-ascii?Q?vn8Mg3hUBF6TixMHHkxT9iZDa0XAvdxgIvLNg8OO9UHUnxp9MSESa4A/tZWn?=
 =?us-ascii?Q?OZoxmTYh6bVB9QuoIsIsPNA51NdiAUYZhyMv9tWKtfz/AxGw46Sr1FHobPCR?=
 =?us-ascii?Q?tpNfXIsWvF7m2oMuy6U/JLvorpR/goxRudZg0fEzpvzxDTPjNkFzB3hAgwRi?=
 =?us-ascii?Q?RZCzApb8jlaNzxDRZa9Mlb7qdhty3ODz38gAhAoq8HA6Pbjqd7qvrEyRIAix?=
 =?us-ascii?Q?DFQgLBiWzRLGxLCfQv5luCU5KJ7G2iIkaulhCPLTXd5V+i52JMoO9u/MpW3F?=
 =?us-ascii?Q?G7jhXg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 936fdc09-91af-424b-4c1d-08de31bff333
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8590.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2025 16:29:22.3705
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hUPHzli8SUmvklHqDcxsLce5Z5tOJrpn3H01zoSwR1rkYFIgBiB5zRfZAnK5WJ4Cq5cGIzTLat0zVjWl9ktdpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR04MB9582
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_082930_655497_9722F20E 
X-CRM114-Status: GOOD (  25.41  )
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

Hi Tanjeff,

On Tue, Dec 02, 2025 at 12:12:26PM +0100, Tanjeff Moos wrote:
> Hello Vladimir,
> 
> I want to use your Lynx 10G SerDes driver (plus fman and fsl_guts) on
> our OpenWRT kernel (6.6.110) and don't know how to integrate it properly.
> 
> I only found the driver in the NXP kernel[1]. Did you send patch to a
> linux kernel mailing list that I may apply?
> 
> Kind regards, Tanjeff
> 
> 
> [1] https://github.com/nxp-imx/linux-imx.git
>

(I'm unsure why you CCed linux-phy, but OK)

Picking the right base kernel seems to be of utmost importance. From
what I know, OpenWRT maintain their own kernel version and don't use
vendor kernels (they import patches from vendor kernels as .patch files,
however).

I see this commit in OpenWRT:

commit 6942ca412124a1f322e19e2289a59ed8e27b9c24
Author: Pawel Dembicki <paweldembicki@gmail.com>
Date:   Sat Nov 1 23:36:36 2025 +0100

    layerscape: switch to Linux 6.12

    Linux 6.12 has been validated on Layerscape platforms, including NXP
    reference boards and multiple custom designs. Tests covered system
    boot, networking, storage, and common peripherals, with no regressions
    observed.

    Enable 6.12 as the default to continue broader testing and integration.

    Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>
    Link: https://github.com/openwrt/openwrt/pull/20614
    Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>

To integrate the Lynx 10G driver, you'll need to do that on your own as
patches. The correct git tree used by Layerscape boards in Linux Factory is:
https://github.com/nxp-qoriq/linux/tree/lf-6.12.34-2.1.0

My strong recommendation, assuming you want something stable, is to
integrate the NXP Linux Factory patches, which you'll receive some
official NXP support for.

The rest of the email is just for the sake of full transparency. I will
be talking about my development work, which I strongly recommend that
you do not integrate into OpenWrt at this stage.

The SerDes patches (both for the 10G and the 28G Lynx) are being
constantly reworked in an attempt to get as much upstream as possible.
Since the 10G and the 28G Lynx SerDes blocks are very similar, they
should share a lot of code. For that reason, adding a new driver for the
10G Lynx depends on some changes being made in the 28G Lynx.

I am keeping a personal development branch on top of linux-next here:
https://github.com/vladimiroltean/linux/commits/net-phy-upstreaming
*However* I modify it frequently, *and* I only retest those
modifications rigorously when I need to (i.e. when I need to submit some
patches upstream). I am doing this because any time I am making a change
as a result of a review comment, it has to propagate during rebase like
a shock wave through a huge stack of dishes.

So if you pick up the patches from this branch today, there is no
guarantee you will find them in the same state next week.

The bottleneck is on the patches being accepted into linux-phy.
Currently a group of 15 patches from this development branch have been
submitted to the mailing list a week ago:
https://lore.kernel.org/linux-phy/20251125114847.804961-1-vladimir.oltean@nxp.com/
and that's about it. There are 22 more linux-phy patches on top of that
to be accepted until mainline gains some support for the 10G Lynx. And
that isn't considering:
- device trees, which are also waiting for the acceptance of the driver
- networking consumer driver changes (I'm moving SerDes handling into
  the Lynx PCS driver, in order for not just dpaa-eth to benefit from
  it, but also enetc, felix, dpaa2)

Out of curiosity, for what platform and what use case do you need the patches?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
