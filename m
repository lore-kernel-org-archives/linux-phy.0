Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 897F2CD98D2
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 11:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TIY9IE/yha+e5eY9t0lmJFmrrY5KfT5hYS59WK4jmfI=; b=HcqAxJVFJ3xkHF
	Wa4c4PiHsuMj8+rv0KMnlquDJR5iPw67ZPFd0jVJWi6djnhgc03XnBF36ulzJlJy0Eq18O6EyCS/q
	g3djUIInxQAdQEs6t6Eb8OAwY9puAqTDFc06YG7Eu1s8xYPrMOFDH4LFANUGwmSBMAmYe6rRK87p8
	gv9WaNdk5NuEPAoU1YEYRNWJX3G+OWSgcbhEd/l7vn2mT5M9e69dwnQkVNd6vQK66OGO4HivnhfHM
	nyADW5swa0V1K3MMXRvGOlYQQH6p6HKtg5ENJMrE3RUp4UPl3UmsQ9ot97tqbBoHJyelDNmFi3cxs
	IpQQ1NvI1wEVWEpj4M9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdBD-00000009H0Z-0aUJ;
	Thu, 11 Jun 2026 11:02:35 +0000
Received: from mail-westeuropeazon11011029.outbound.protection.outlook.com ([52.101.70.29] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdBA-00000009H01-32Zi
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 11:02:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ehGwYgtCkG0o7Au6bfy26RxIl1rqNNb9QA3PJXRjnLYT33JDt7He6kXmQ/66dzaFcqq4oFcPXovsT4zwAUntO6tTa11E4I/L9tGxtGTuJY+SWgD9bWOQ4ZnBL3WAdoGfAo99xoyQsXJdi9l1W4HTJxudzPWODlA6MmXU/9Y8nw1EEdhCbEwxNn8dduHAmVOp58AnmLVoNNePjlLBSRheh8v/S4WtxKO+mp9xJO1v4M8eut89Kvbwv+8f/J0guJ1Igx/TNxFFcOhvvNKnHvn1hLItgvf40pjR7texB1oyi1ucNMpw6JShfWT0aT56EO12IrhujpctsXbog4Cl3PITNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PpJNoOQpdNwdI/oeYC6M9cXSk338ZOa20r2vaGc6774=;
 b=F2TWN+dKNTslHJgKdSxaAX32PJQA7OxGDukqfwNKdvylSMOWNvfuQ6BrKXdaLSDoq1pJGK1EgvFWAUAML/d25VKIIsFyXta6ZdWqMWjaqxRcHcarednHL3DrbAjleaYLdWeNasRFGd7pbFBlTfxQeUPKA76eGTabZQJuPQhXJMY9duu1dXZBfwi74fHUqTDqK6uom3Hzca3mJGwMZmtsb+onTimnfH9UqImoLSkNtPW6w3++zNJArdzYe4psk0SVO8kHzRQDhpD3O+Jp9D6DIscJlpDmCkt0t5+qqrvczXx+c4q6+f44774Whr0vvdcZ/EKcYJDmE6YIEGEUcPs1UA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PpJNoOQpdNwdI/oeYC6M9cXSk338ZOa20r2vaGc6774=;
 b=nP2HXjxJZZ5SU2arskf7zsn882lAxW9nv1tXxLDlDsbFT7aHuzYk0b+NtXZi/WJgaz4dJ/KV8/+5HXDVKzM1tvi6pfeiwxSf65jmweHIVtttYqpueskRHUmu3p2SJFTLvHoTK9bOyTljEKjHtRUwoNblXwXVbIRONoP3wtzgRTsx0T71rNrvvBc9q2QykaTrHv2lJ0MKWhQH0J6MY8NcWvZu2DITm8ZRTb/fQyalZoW9anYZ/mVkIsBH0D/vXasQK3YuehSZXQpFI8ppu7lpet77W+AZ0qeAPnwPk2yUFfwgBvH1R68F1A8cPU4HmRmEwkYJj4wM5zeuGw49gnCTww==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13) by AM9PR04MB7699.eurprd04.prod.outlook.com
 (2603:10a6:20b:284::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.13; Thu, 11 Jun
 2026 11:02:25 +0000
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd]) by GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd%6]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 11:02:24 +0000
Date: Thu, 11 Jun 2026 14:02:20 +0300
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Tanjeff Moos <tanjeff.moos@westermo.com>, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 phy-next 07/16] phy: lynx-28g: provide default
 lynx_lane_supports_mode() implementation
Message-ID: <nyqr4qkmqerhzilz563y4iovizygru2k2n3snzadsk6r6pz4ge@gzggxjsjvuds>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
 <20260610151952.2141019-8-vladimir.oltean@nxp.com>
Content-Disposition: inline
In-Reply-To: <20260610151952.2141019-8-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM8P191CA0022.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:20b:21a::27) To GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12290:EE_|AM9PR04MB7699:EE_
X-MS-Office365-Filtering-Correlation-Id: dcf9d67a-f207-4713-6603-08dec7a8eab5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|1800799024|376014|366016|23010399003|18002099003|22082099003|4143699003|3023799007|11063799006|56012099006|27256017;
X-Microsoft-Antispam-Message-Info: g7ewkaEYBnMTjyk1z0xpyGtXwRmbSfk22KfUpQ7TTPosIVV//ftCx0JuguD+VFoCR8vlDHsPeT1QNcjFEQgND1114r08NKRF/SDGnfN2cUYR1tr3pEqnHGHOWiDkweC1pMPYZbXldPjBA9Nie14KYbvZ6aISDP308x5GJfzPPKyacFodcwsYw3Hh0IAi5R8qw0tLVKcA84zAru2pxpI0EpdcAHGd1/HT7Tcsf1jHktCs2vzIwjywKhcwOxEVakEo9suhc16Xf+qjv6GwTY6KpzuxxOFlordRdWf/apYaDECfv0dv40gc4Vr2/s4OhnT9q0jBVBr6I0hO+XONR+63z4jZJ4nb2P+PGR6tDxRH51aV+WG9X2HPXT3TWOVLQ31qZ/s72Lyngv6fcixcEZWv5VZlEVhMTOh3ALdUyf9cEp82YjXoWYFk/HS4NCNTjEd4e8kmwziq8+BEnvieQ8WgTID3R0mEst9tok5p+5PN36F9E9Y9tyANYYwViiH6gV38cJ7/Wc0gXY3AqQU44wnRcIR2P+lid7XEdXvr+VL5Rc69i2dkni4lHED4Cr8T95/f4ZvBou9uQVrZALVDo2t/R0z8E+hfFO7+SLGGPC849+y1wHkrbRlU/4R6NKNRRFwpLoUhIgHmlTnyByOm2l0hqwWiIWH2dEw0jmHlNCfPpnca9V/tFLwDsYOim8ypLy/g0l84XeJHNii/Ojw+71WbgHq4p5TRHSfV503MsBFLcOUVmy8ui73MJwT8werEDSgp
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12290.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(1800799024)(376014)(366016)(23010399003)(18002099003)(22082099003)(4143699003)(3023799007)(11063799006)(56012099006)(27256017);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?USLkDFSNGFm0QFOmaWETQkjXZaSov2HxG2dkkGxja77A+T4JfqGtEPWsA7bZ?=
 =?us-ascii?Q?aN0HNAtjh1TAzgT7FlhnAI5SKf1RhgLU/4EOduQW8I2+C6V8NaAHQS0ziInm?=
 =?us-ascii?Q?ssNnLyhi4jpKFPBddbApohEXp0MM+TYetgZ9rPQTD86O667Vbx1nnpxz5SEv?=
 =?us-ascii?Q?tkCNMiL+oSxZxhy4pG4wrU3UBc+JYtj17Uy3J69/tRx/km45ubomqiBa7LjU?=
 =?us-ascii?Q?fsjKeb+Jfn7TN5bB3aD5iLTb0qcGX8XJTLe9jzs8Rwmca3TTiuDDcNEnJohn?=
 =?us-ascii?Q?X0rbcObX1jDtqtuBA4NCjSEVXlE3bhXq6b7zxCopRPFBXAersfF24ZlCddQ7?=
 =?us-ascii?Q?Kxi328UMQ0kui/cp5yYaNdTGsHxtYN/Bhkd2KfsXpI95NYt9QFRO1HqOaRyb?=
 =?us-ascii?Q?Qp0wBVojOBPv34/W2f9qbhGDiFe7htseSWLs2+TzNZbvoIIbXhjY2JTTAQpu?=
 =?us-ascii?Q?MhdtZEoLKSrYi7AHvfUbUqkO1z3AbvxF2eBHQ73E5yEC5EO88jM9tla6IMx+?=
 =?us-ascii?Q?Nb5ibrbkyYi3JzOSjlonTsQvnth/agnreG096F1RnEGyS5yud8uarTfi1zcY?=
 =?us-ascii?Q?8BRI1egQVzQ9vxwPz6ijy1OYsOdHEe8yaUtKJ8nOh75sDgvjulg4QWaFDPA/?=
 =?us-ascii?Q?9HBMFNfG9nDQQ8+2Sxkp41fu2mHAs16A3N+w5T4mnu/w5XKXVVYVypD2fbrx?=
 =?us-ascii?Q?RaqLZVENDlvNK4+wiO0UwSy0FifOhMTrYD+VXS4TiPinYml6Cdt2TVPlqXT6?=
 =?us-ascii?Q?DsdP62uMRHR+JQSl7IsfED4ODz0xEb1ziH/MkCVoYYXKHGM8OPFZ4hOhYntF?=
 =?us-ascii?Q?1PN5z1wRUpBTwlthvO2B4TE2e39qHVQjGGt0efTyutbPI+ul46Mfhh0pavpm?=
 =?us-ascii?Q?psyOQ6F9JgIKrLPNIZtbXqjEtYSasKk+L2Y4ez1cMAcDkkdI1x/VQXnhDBif?=
 =?us-ascii?Q?XT3jTt0/+5ikQ3MG6XPNByowvkaTg85rce3je0K71CyR/qKStM/zFlYobJrO?=
 =?us-ascii?Q?saOQCG/QSeeUuzmlMLAykIUe9zUsQOTgTDFfwfQa3KJlgqo1k946GJdWYD8U?=
 =?us-ascii?Q?xITzloYQX4Mb8XiMpTpElU/i1WY0p7aMRDG94TKvDQfLcAGZAARsIiDBlM9q?=
 =?us-ascii?Q?0zIi5HMB3GPQCRml7WdFzxyOBf483c7xUHlxTToEmRkY8UM4jjqkAOzhZwNF?=
 =?us-ascii?Q?K9AorQW6R4k3iFjH09qcZbQB1ZMBD+u8aPlJT4SW9N+JJwf23MrEbynOET0Q?=
 =?us-ascii?Q?fwK7wMPOt97Hv9jq2fki1eqUbuWt39u6u0hZGj0+sLJbWifJFeQ9LBIPxxKw?=
 =?us-ascii?Q?sofyb0wC+7kvQD2zImSaXCu3OAycm6uKSzQ4TrVX3A+Cjr2tcVlxWbowZJn4?=
 =?us-ascii?Q?WSjLLbOaqoWJ/OtSE1lgauykZ7MxhmEQPNZBmvJbXG4oyGpAb18hdbaSCj92?=
 =?us-ascii?Q?9pO2XDGTQEO9nhRt2AjqecZfxlHaSAT64yNUYuUWjTUtxqm2KcyvtYRVvq6T?=
 =?us-ascii?Q?jC/jqn8aOKvdIpIDRyRbKxYxDdgj1eJAofbk3XA/coqIsWXkerdiBks1Rec4?=
 =?us-ascii?Q?BbYr0gFFI/tJBi8hCrNAfTolgYDJAEmRAZAYNUpzk2kWGagsXmi6dbhWwfdo?=
 =?us-ascii?Q?G0ORJWWOi6lbUZZ2XpJC35wFIL40dBpHD+CLjF2dXq6YhDc7lSY7dyBX1+mF?=
 =?us-ascii?Q?x57sXJ/akntWsYq6DOOoCN9FXBn6z4DjlYbb+Y6Owv89aSTfJ/HOkQpVa6N+?=
 =?us-ascii?Q?iHagJCjjXw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dcf9d67a-f207-4713-6603-08dec7a8eab5
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12290.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2026 11:02:24.0638
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CHCGtyTwvxVYDHqkTDd6VAAafarNsr3z5KAUF4RMUkNpjMGjPoJ31CauomubVh2V04rY9SnFsCWYg9Ydd9qZug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB7699
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_040232_763536_263F97BA 
X-CRM114-Status: GOOD (  14.99  )
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

On Wed, Jun 10, 2026 at 06:19:43PM +0300, Vladimir Oltean wrote:
> For the 28G Lynx, there are situations where a protocol is not supported
> on a lane despite there being a PCCR register and protocol converter
> available:
> - LX2160A SerDes 1: reference manual documents PCCD fields E25GC_CFG and
>   E25GD_CFG and protocol converter registers E25GCCR1..E25GCCR3 /
>   E25GDCR1..E25GDCR3, but nonetheless, Table 289. SerDes 1 protocol
>   mapping shows no RCW[SRDS_PRTCL_S1] value for which lanes C and D
>   support 25G
> - when using the "fsl,lynx-28g" fallback compatible string, we don't
>   want to offer 25GbE because we don't know if the lane supports it,
>   even though we know how to reach the PCCR and protocol converter
>   registers for it.
> 
> But for the upcoming 10G Lynx SerDes, the above situations don't exist.
> There, if we know how to reach the PCCR and protocol converter
> registers on a lane, we implicitly know that the protocol is supported
> there, so implementing priv->info->lane_supports_mode() would be
> redundant.
> 
> Implement lynx_lane_supports_mode_default() which decides whether a lane
> mode is supported just based on priv->info->get_pccr() and
> priv->info->get_pcvt_offset().
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Ioana Ciornei <ioana.ciornei@nxp.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
