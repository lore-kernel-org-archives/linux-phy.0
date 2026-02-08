Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EAB0EF06E3
	for <linux-phy@archiver.kernel.org>; Sun,  8 Feb 2026 13:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lv/OhKEwrMzB2eFRgidq3vbE9RX5Eem4o4Fx0zWEpDY=; b=I8AIlOzS3WrEFO
	pjLLgEoVWkk8AxDvO5Fp/vAaHatdw90AFgrvPu8zde63gb1u/d7P0wygMPLVQ1jPAjjdnyu93a2LP
	nAsjl6KafWN7qx7uDdRxrBPTd64Z6TY9kKQPfweF/36Pzgx6kv3tOez0YfKuxWMcWoFrJEdR6qohN
	VqpS/MbZ2Bq0vwX1lDtdF0u/LpYGts0MrGA7ziBCbnduWbGrDo8LDDqfiEf6kPLjQRc9Q6nDwZ9G+
	7K81cRNINcitNFX/WsSGlIbpVEGy85DtHvYJf/iNtedNbxZyDJHCah7jIAzzN7mtT+IegAjXvxkuN
	HudYbxOCu4MnAZ4VXn8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vp53S-0000000DMK6-15kE;
	Sun, 08 Feb 2026 13:42:26 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vp53Q-0000000DMJk-1DQ6
	for linux-phy@lists.infradead.org;
	Sun, 08 Feb 2026 13:42:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JMo+OghB2c64lAAU77e5X0wAmr9Bnx3DRXvJP5jMbwQGVLUKOLXFm8P7jntzQzJbAC6g8gcZhvuywUcsl+6A04XE5aMfvNL8tCPOGtfCxDMKm4piXACblEJfHnqUrEdy3ZnbBC1kR33FGxL7DbPa8OehCfQfyK77yYiPT5ElpVGshZz2TvoDu1rQUFGm85X86lmmdJw2as5ej2PxcjSfVX1vpkM6w9/HHeaxQalDOIE5ja+If7jnMwaijWQs21dxOULnET/byfX7v2urrfKciC8n6c65LUkrsBG4NWKNFY+bO7L5YcJ8oUvRAyILbdFjBy3I1jZXO3mG8QaWTwNHHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tLXMsgjdCbP7ODXQH47zdAZq4fC7XfVFrX70yKisojg=;
 b=d2940NlaaGHYBKji8x/6aL41mGkap2wJyxQnm8ubNVFvdWLIpFn1HD2LdgpVCi4o10HtK7H164bxDgrP5xNTD1G1gtAkJCV4SUT4EAyMjiOlNuSCQro9Bolx+P91MRrQ3WlVkdK6z2JM6rEiD618/Pmnawi3tW0QubR3ZiR8gaHby167LI2x4MPWTAhu6RbPfl49HgPp6FAjTzyZcAUurYKAV8rgD1b7xtbE4gOiQjTZQSCf2v8I7zLAnc7A8FGG1q7RP114bXyv2Gk1yC0HJ+QAyoe5VZ2Ud5fglCcWC2UcWf6TncggKg48uQrMJybZjWo6XQNlmw5adBm4MKfSLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tLXMsgjdCbP7ODXQH47zdAZq4fC7XfVFrX70yKisojg=;
 b=H45sRgTg7cM1vywSqpYhaZJXG4rPtT7ytQkWzjUswyhiRyD8Kp8Bv8sCdtKiE1ySGL4otgAyYG9X2DcgrhN/F535IKLLcmYGGqYGcy8Y6obIUxYY8n1sMYJwu9ee2mhUBM4V2zvFvxeHMi0TCJZ5UdWN7p8Uv6iWckOVX9AHns2mpDFoE2ugBgqfnd0XB+2i1PjeA0HAtyvAD6VkquWzADGvad3wEtm9NDjJWrB92k9DPsMpFYoQO6CBog2aaG2JRnbuPZq/rjMPMiGGm5WtutE3kWsCHeEORawV5uS4IzEXcW6bZz2gfYYawK8vGZzTOd3oYj/STtryp4Kh3SYPRA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by PAXPR04MB9105.eurprd04.prod.outlook.com (2603:10a6:102:225::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.18; Sun, 8 Feb
 2026 13:42:14 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4%4]) with mapi id 15.20.9587.010; Sun, 8 Feb 2026
 13:42:14 +0000
Date: Sun, 8 Feb 2026 15:42:11 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Tanjeff Moos <Tanjeff.Moos@westermo.com>
Cc: Sean Anderson <sean.anderson@seco.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Subject: Re: Lynx 10G SerDes Driver on my kernel
Message-ID: <20260208134211.3vsgebmvh7yhee5c@skbuf>
References: <20251202162919.ow53dn7c3x2lguqr@skbuf>
 <a1dc8a14-56f2-4082-8081-0e29e2dbe35c@westermo.com>
 <20251203122601.72cwwpsp6loqpkpj@skbuf>
 <4287097e-a906-438f-b3a1-33e374477367@westermo.com>
 <20251203180022.adhggfqgfj4wsoqi@skbuf>
 <2f74aaae-1dc1-4657-9436-1f445d28ad66@westermo.com>
 <20251204193415.d5zymxgziweiepgy@skbuf>
 <72afdc4f-3f6d-4f2e-b054-ff3f2f8d5851@westermo.com>
 <20251205124423.gddjli3jtqlvkrkv@skbuf>
 <1e508f4e-d9a7-4e06-8308-e2d67099e927@westermo.com>
Content-Disposition: inline
In-Reply-To: <1e508f4e-d9a7-4e06-8308-e2d67099e927@westermo.com>
X-ClientProxiedBy: VI1PR0102CA0078.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:15::19) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|PAXPR04MB9105:EE_
X-MS-Office365-Filtering-Correlation-Id: 424c121c-5132-4977-715f-08de6717de3b
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|10070799003|366016|19092799006|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?KkYH6B/Q5J09sEWZab+n5PmiQu+Bsavn4tjwjAGNjsj+pTnABh1pJ21DTShq?=
 =?us-ascii?Q?XyY5lOmIYXtKg0EF2S5mgnUF0zCRk5HV8OaYGr3qImB+4qEfYR4K9XPwqarr?=
 =?us-ascii?Q?4PY2aCw9F+eyM1qqYYP7pgOoEg5CdQvwmEh2xr3PwGWnBtQRD67laGt8vJzy?=
 =?us-ascii?Q?+H80WS7QJN/YPyaGjAUiocGnasHk5CSsK+PoLfiW0J785KrTazVs1iWVQzG9?=
 =?us-ascii?Q?0LYMk/Z+bufTOk6dQoZCsGke78lsgwo6HXjrDA5xbqb6vhVI3MxZXpijgxEQ?=
 =?us-ascii?Q?D5fXpzEw5et4z3g+/yjAKkwF8XjhgsV8UQCCaTgE9t/09Iib5AM/Tz6wIdZ2?=
 =?us-ascii?Q?fW+biepHOopRVM0BskkWSrABtqdbzTG/wu6qQVAyEZd7usBxvoX5gbtfaHMe?=
 =?us-ascii?Q?WyppBhoHy8j8aBQX/vI6hVA7KHq+BcESmRDqRdrUlVa0GEmbG+tXo9aFv0yL?=
 =?us-ascii?Q?YD2b77cBZDy7LcHvbJFhpQIQRAh91dbSNsaKSnprM9BRVJAmIwl4xIOZwtFv?=
 =?us-ascii?Q?5ErO9s8HZYiU27QTKUTib6S7DK8vvR0ZrF1ICGCu5Uekw+d0xFCzBoqKWs1M?=
 =?us-ascii?Q?DZEXBD2obihK7wCo7RJlBB7Zewsx3N72aRJDYwi49WQhfocdKp6kFiNM31ru?=
 =?us-ascii?Q?dvBRUomj5aPhdRAXSU9lAjgbsiX7hJ5iNGe6rtd9+vVMr/gRlxoSghUkAJ/X?=
 =?us-ascii?Q?W15iQo1hrCqqJ02jLE3c0jEi9ifMXgnhwC9EGOQ9lJDocqiLGq7qfbcZTcbm?=
 =?us-ascii?Q?Gdg+Jj8V6ATW7jr3ktxYbL6Zv4xwIOXzkuozsBaVeI4c9/sbFKTuYdRkqqv3?=
 =?us-ascii?Q?mSy2AzPRlL4T1bykVSM+ifiHOBOPEmU3aFH8TSReJiLuHdQHT2rDk9q4+if5?=
 =?us-ascii?Q?co7VKcH49UTUnQiu2Em7b4Ao5Vk8uWjRIR1gSU2jDZ9uQQ4w+9ew2nD8hxmn?=
 =?us-ascii?Q?nqg66Pjwgbmwrbtk6PfBGcdzwSulaq0AR7qhSe7NFd98/MR8vOld3PKQIkkO?=
 =?us-ascii?Q?N+k4FB5hZWjWS6euH9iKYQy3GFhI6gsc31uZcLjjg0yvRKNqwGSsR5FLdEUw?=
 =?us-ascii?Q?BRFy111qm+K0AGy1jtykLaWU/bEE182eOC4ead6JweGdNQH+GGfnuk91CB6v?=
 =?us-ascii?Q?bAF/C/c/2zQMl38a8WJ6I0fSKPQCQoYdZOmg966f8mTqA9bKv8f9xnk7p6tO?=
 =?us-ascii?Q?3ZJUk3BC9Pdmx/TKlUdg1XNhz3Qd7toJhlnPsLVXovsKGGV2AuHC6Z+uKMMs?=
 =?us-ascii?Q?FBROJlAF2fYqvDxKzzoB8GuVpBGjUgB52ljmLTQbLp46Mrcp5omksIwoHaOh?=
 =?us-ascii?Q?Mm3dRcDto00vHUN3dMHXP3sbh7vBj2xzsAfaQdSFog4R3dc5J3T8Uwkt2ynL?=
 =?us-ascii?Q?QldzVxWGo5qt3RZDX4S365EwsPAR02XxL9fZT3s6/SCWzon73ydDsMlh18n3?=
 =?us-ascii?Q?I6YeYuYw+ZPvYK9pc/DMYDjCeIEBIYaMukZhw1BNdpxVRFRtS35zzH05N9bv?=
 =?us-ascii?Q?Q8kGIxWpDU3Uxn52gnfryFxVicWAq39HVcRP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(366016)(19092799006)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1PlaCPcApnXqwPLjV/MRQ2MAokYB5yxkCgnkK/Qh/piwChvHgt8xvikqUCjL?=
 =?us-ascii?Q?OplBHfAM6TZnXo1xXD7Tm/gaJ7Y+zxKUog6iTEr2TBQDXJHZS/LX0P3D9MMu?=
 =?us-ascii?Q?gzDz32mlcAcmmPiKNjGizFT/wpEyKysfp28Kypw6f7UarNUUzFfDevgKxMYO?=
 =?us-ascii?Q?sWO3whx6nDVZN25kXYmTxQkWSE8/ldI/GnPbw7oMHsT1qInszGRLYQ00vf+R?=
 =?us-ascii?Q?pE84r7bcIJalkhJc5yLATa0tOHgDNyQh5MeBvlG0yH6FpAMNzPVi8Dl99yxP?=
 =?us-ascii?Q?xFWjlAZZQHH6tdlrIewAC0VDRpq/knnfD+J7q8tBAGR6t2uyhIbENirEqnVE?=
 =?us-ascii?Q?C30Yth33/a11sju4qHOgkPNxcjRfTE9cc4oc5J9KwyKJQvQaofPsZY76dR6l?=
 =?us-ascii?Q?Ljjt3dvzmTz27g29SpDjTZyaiyih4m/9XWucRABURSt5UvDjIZESxbOa9YfA?=
 =?us-ascii?Q?nPc0ua0UZZz4Plt9QLrYRBCAqt5cdd58opplegKNODenze8gKdHRWJhajk58?=
 =?us-ascii?Q?Ic5ITTE1ZMXJk4h+DZ/01lu+5v6LN/3XvBdboTE1MEkqiRfMfcCp63wIdzPO?=
 =?us-ascii?Q?/HOWuB5zBi7OqKkYhsiRmZ8clZm8tuziKSRJmKlT8FL7QxYwuOYax3GrAjbZ?=
 =?us-ascii?Q?G0lpxAExNna8vLbjcqbZltsvhJTll1HDOKmNzq0OHR6+gzw3z70s66L2m48D?=
 =?us-ascii?Q?C63zkYkY8L6KnjRjrUI4FvpLrtz2NwkdpUaBBWZirj/peFPn55ojuNQTjPuD?=
 =?us-ascii?Q?zzbI8mFbSZ9iQVjeACQc8aQhEFOI8aOGoUHbtZzZDWDSMIasPGLVStzZXbDt?=
 =?us-ascii?Q?G7/BvirhRbNWu5XlnI5Hp9dNwa+yF8oRA2hnOj0wmBDPo9Akkk7wwpVm7g1a?=
 =?us-ascii?Q?9UBnpANHjUa268HWM+yU5usrOqSvSnozWVJQXUzTMK9oRBz81+rM+YuzunDg?=
 =?us-ascii?Q?5zAij/oQIC61Jn2BK9ht6qgLBlmliBVLfsltj2U2KoSIp58rKbLi2AS7TGnZ?=
 =?us-ascii?Q?zLiQo2Vpvd3IAKCIGCg3jIO7og84tGWsbt7370WOpMPnh+8Zrsstm4QRdPrv?=
 =?us-ascii?Q?zk3MMVVzbhGeZqVFp5YCYoSUdt6tCBRRJLeuXBOfflhNx+PESA8VIfiHeVo3?=
 =?us-ascii?Q?xDuqWf90N6d69j9NxnAT1NCrnRs6w6uK+7DSq7IzNhf+8QeOH58jb9WM7eDY?=
 =?us-ascii?Q?qQIfVQTIMHgBzfe4nDqArej4Axo3EmBhC+/QJO4zgMBWXbvLDloEPF5euoxs?=
 =?us-ascii?Q?ieDNpDXkDU9WQafuOZCftX9HRYCsTalTxvYHMN0n42fkG7uKj+MopZTPlxYj?=
 =?us-ascii?Q?Y/ya6vR0DiPAnYyxNrS7BJUZyVEwzTHFclWsd98y83PXdjon9ykZjyymGLq9?=
 =?us-ascii?Q?1BiE6WdmnJR3nPcDsnapzkMrfFlzPgFKSat5h6aiJo57rrUgpoo1yyudXkp3?=
 =?us-ascii?Q?wvj14biVX41k7TvN9UNtAL3qElhnEDfL5XD5Ct85S1TcQCaL+nsH9HIUNU5g?=
 =?us-ascii?Q?CMiXgCd+oihCWTlXuokBSvibvG63Kn7Ouxo5YAe0ckRD5cgqXuzEpwwEEGyg?=
 =?us-ascii?Q?6PiBlxztVcS0Mk/QldWjuAAbeDDUT+iG57lutzFwLLQfV3x6uoTeid4nVJSZ?=
 =?us-ascii?Q?d4nYCHtkf03OVNxpK0Xo3MTbwQE7O1c6SfMhPlymParidUc8th+Hcg8wBFRp?=
 =?us-ascii?Q?4iWghwZxr3GlgRM3uSYNc0+9XLnV2XxsW2qu3sHUaZkn3Hcx+eSWU4AyNlHD?=
 =?us-ascii?Q?CWm54tr7vWBXCxXvyE7zjpEmSfBb3AcRyAL9VTLAQaOlt37m5/sY3k+qDhl0?=
X-MS-Exchange-AntiSpam-MessageData-1: vZGkrNCdlQaFAgiR7hwvCCKXq2/SVSR1aaE=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 424c121c-5132-4977-715f-08de6717de3b
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Feb 2026 13:42:14.5901
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t1afFoav86eaSwZJvbBYq4BnHhJjji74eB5Zkq/45QcpWi2v2MKMS+B6xhq6YmDvgWnci/xO8ZnAL5wSDXfuDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260208_054224_344724_487785A4 
X-CRM114-Status: UNSURE (   6.78  )
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

On Thu, Feb 05, 2026 at 05:47:12PM +0100, Tanjeff Moos wrote:
> Question: How is the lane supposed to be enabled?

By a phy_init() and phy_power_on() sequence.

In current mainline this is done by the fman_memac driver:
https://elixir.bootlin.com/linux/v6.18.6/source/drivers/net/ethernet/freescale/fman/fman_memac.c#L526-L545

In LF I've moved the phy_init()
https://github.com/nxp-qoriq/linux/blob/lf-6.12.y/drivers/net/pcs/pcs-lynx.c#L563
and phy_power_on()
https://github.com/nxp-qoriq/linux/blob/lf-6.12.y/drivers/net/pcs/pcs-lynx.c#L435
to the Lynx PCS driver to simplify MAC drivers a little bit, since they
all have to go through the same steps (the Lynx PCS is present in dpaa1,
dpaa2, enetc, felix switch).

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
