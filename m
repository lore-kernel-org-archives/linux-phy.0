Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47C00CAC5AC
	for <linux-phy@archiver.kernel.org>; Tue, 23 Sep 2025 20:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4M6juMjH7DfnoFmk9mHgV3Fzgb7eLP9RHYt0lpuYzuU=; b=mIOvtE+AkVfvC0
	ELOMsIhPfDKsw1XtMu6mTbQqiwyoTwG3vWK3TtFGFTzNnnX7z7aS5zPhh9ze0p2J7uQh2W65XolKh
	dLXfKcgl3P+/N6G6n8SQu2+0TiaSQeiI8usFTyo79K9RjYkK1PpwEGNSJeYMO8sBeE18gPmZlgs44
	VzC2J24g4eB7EvoBpBrnBi8EfzFrpr3JcPhTabnl5yxU8xqiOfOCjCnXFG/tuY6t2OsTTPQVnZYGW
	4XuMOQKdxJH69kFDDBmcCbPCyXN/ncefezVjPIZX5dTqKqnF921z0AVQW+a9U+HofEyfFE0M/7/W+
	SH3sROkRBGu8eJWzpvaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1A5B-0000000EpCW-47SX;
	Tue, 23 Sep 2025 20:57:53 +0000
Received: from mail-francesouthazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c207::3] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1A5A-0000000EpBn-0E7X
	for linux-phy@lists.infradead.org;
	Tue, 23 Sep 2025 20:57:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KIkzd8LDt4DSzB51eXOOJo8adn1hw2QhfdDy36Lkzp6hwPPfrJP5xcF4TslIml3BA6mfw1eGnU9h1JZmM06vxfqL+oGreDNFh8ai4rx8MnWazX+1o05ZpSk5PI1ebmVXCzTLycJB5ID1kNUlmlFkJPD5R48KQhOpndO8C8vCC8jcpdYyd/UyqPKZ2m9Ir27RxdkTeupSyzvv1bYsQfKq/73i6MHOMbVc/vckaJZ0eIxk4lBuHYa/aFVP8JG2uGUTx7uQQX2XzDJILkvrgJYDQITXCnfastKDnvyXIuwKnjkiUviovHkwYJ7WxtxVLRdjoIyNcxAlFEci/Ru6Iu2DFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0QIeOIrvcqHerBIqfr+qWq0ZIGVPBXmJ4cGb5dn5sgo=;
 b=GvejjfPMTzTFMalR8aYrg6roh3j3qQKMb615EaOyT1fSAm36VoVUJjGPhyZHS17fgsirp5uscz+I5IKLxYYfIwJcaMH3RJP9KBjxqeR7vA+4STvk1rtaRtXKGAz2reUdo+Dt2GySRzl2myFlYTnbIMYuONviPrlMCTFLm2hQ3YNYF4bcP2jpUgcEjeOUe+hijTJQTS3ZcjoIzXdkeQ8MPCFE5aY2PtwIU33n6hG3dYtdZ9uQBg1sp/EHPdwrxVnSE2X8cIbEnovLLpVsoCRbs585MZ/KDISADag7z+fMNpeVQfGN+o/gwLCJVDjU+lq+ltqpCVIG0FG3japg6rUF8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0QIeOIrvcqHerBIqfr+qWq0ZIGVPBXmJ4cGb5dn5sgo=;
 b=KHXnoTl6d1YMM8tRX/mNC7k0oIbg/4/6DFHh+fmkvMpXYET+kCKAATHCanGkr7RUU07rv05VwQxB7bu3Xhy9CQdwgndnELXqygvCxFM41EJ4wb3/XOwJfKSbTKOF3OAsL9ymr1sfRrqVT0em0SmvGvKwVr7wWZ9bAdpLCgbx8GSBxZRTp1oL1kewEV0tmbhEyjv1aMMlK6a+uo/hAGs4NT/K5RVJl3BAJv2N2/ol2dFC8mFG1ScjmR6SxmiNE5OQIDBNW8q+mCSjksQ/LtNgv6XkOHsqZh/o+feRjOkleX1JHwqmqYR2FWXNu857hd1XbOx0MJBzAkYBpypX789FXg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by VI1PR04MB6928.eurprd04.prod.outlook.com (2603:10a6:803:12e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Tue, 23 Sep
 2025 20:57:43 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93%5]) with mapi id 15.20.9160.008; Tue, 23 Sep 2025
 20:57:43 +0000
Date: Tue, 23 Sep 2025 23:57:40 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Josua Mayer <josua@solid-run.com>, linux-kernel@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	Ioana Ciornei <ioana.ciornei@nxp.com>, devicetree@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v2 phy 12/16] dt-bindings: phy: lynx-28g: add compatible
 strings per SerDes and instantiation
Message-ID: <20250923205740.qxtrpkbi6otowuin@skbuf>
References: <20250923194445.454442-1-vladimir.oltean@nxp.com>
 <20250923194445.454442-13-vladimir.oltean@nxp.com>
 <175865985168.25580.11987486707034552652.robh@kernel.org>
Content-Disposition: inline
In-Reply-To: <175865985168.25580.11987486707034552652.robh@kernel.org>
X-ClientProxiedBy: VI1PR0102CA0067.eurprd01.prod.exchangelabs.com
 (2603:10a6:803::44) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|VI1PR04MB6928:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e871d34-db79-4b1e-ec45-08ddfae3d77b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|19092799006|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?s4MKOLZzch2J+b4RNDokKi0XuNe2stMyUPFPzZCW/UmypPaVz6lIocj7Edwl?=
 =?us-ascii?Q?k/8SQJqqmf2VdMs+3xSuGaztcVFOW9YMijOvgCiKvPAoaUaCJcfQlma8klmI?=
 =?us-ascii?Q?NcTTBQ5eT3PK9vvdvT9tRyD++sb8QlzZN6SGCz3rQJDsXOVYbrgdNvaCuiqk?=
 =?us-ascii?Q?eH09WCbz/uHCZEYa1OFQPzL3b3/gB8zDU2I6k/CkYBkmgHkeowKfOXn5jLuW?=
 =?us-ascii?Q?aZmrtYMQx4rMguiXY68SIXHW+r+j3RcD3dYEm8RllTOUGI+gQkqqlI18g6xd?=
 =?us-ascii?Q?ZBrMGZMP8dSVGMBQv/B5exxswDK4m4L47/Dd9HdUsMYQKhGz0OoOowsul82Z?=
 =?us-ascii?Q?fZDhfkIrILZzrJNCqJJ+GCuXCc6yaR5F51Lj2wWj5B9jEc/aRSzZ0KNy7IfB?=
 =?us-ascii?Q?idsHvRTSQwPWEqPJeC8Wiqm6F4I7r24Z3m5eSosPtTkIA/48ZY7VyY4qIXqi?=
 =?us-ascii?Q?R5k2PbsALGdv7NRCaz8NEd9yT2muXIgVOW3rjna5LxSbVeTlePSR+nzlIXbo?=
 =?us-ascii?Q?gKclyxmx1Dbzpp05TMjdYuxyPcjrD7UrPdWCOi/x3qUeerwGsBhuK+qX9GXa?=
 =?us-ascii?Q?PLOqp3hPtMhMrXe2KV9ecqbfwTyhKgMgGpGew3dOAnWiv4+dbw0BK5wGyIWI?=
 =?us-ascii?Q?TiT1xEOP7BaER488oKUzRaxLIy6H/qSIUHx+51y/R4GiIomAZ4F1qeXFLiDg?=
 =?us-ascii?Q?Oat7dKWMWlRDd+btS2emadGPB3048HmRaeB2L174aDe7Kdrootum6UIjOPnl?=
 =?us-ascii?Q?gJPEmZaqVxidxn/VBlzuMUkUNw6yvv0bq33vG7SriTxM4leXHZOUbmIP9Xok?=
 =?us-ascii?Q?vSRl44LGeczPTGBZ4mQirgVZovTwfDB9YVVwgupMBUQe4wNfd9JXNFZQbmll?=
 =?us-ascii?Q?m15/8pozb3DrUrJvlopRVdUj9+enAOTZECK9SSU/W4uasZ8Dc4FrryoInpwp?=
 =?us-ascii?Q?zzU1tnaE1kKFVye9AXe/7pPqBUHLzYC6uZ1++Cew8KbsCerRfDH8NgXLCXzQ?=
 =?us-ascii?Q?/CdrISzr2Ny3Bb5ulC1IbH9U6KdqzHGqaRUvlnScBVfL9pSmWlMfkh6nERgQ?=
 =?us-ascii?Q?mkhekgadDDsIyZzE6jbtBRYluh7tL4acsafA5i+yNUn96qWWTG83jVKwokz0?=
 =?us-ascii?Q?6HCGYP3itm54X8RceNEpBBc7rv/a9lNGafzca07Td20DRYwaZqxyg4rkqWkY?=
 =?us-ascii?Q?3AzOVEebHeVzL959me6d/qad32+xc0lnudmLyWQ4chSrUcja27eQVer0AXpa?=
 =?us-ascii?Q?A8IHSdotL81xXbe+NXKqUd0aQyjZ/7j1nR8s1z+fP3cNTrEXnzyjXSm/xTWX?=
 =?us-ascii?Q?EMB3hhTAZpFKMhgWOjQeMa/KPpO/tpzR1m46E6V5UocsCbW2JrYyGjqpO1Kj?=
 =?us-ascii?Q?a15041zI9VAliXfyUSsnDtdwZASqPVsXQ9bMlzZnDWpJkreYy2rNSm8QIu7X?=
 =?us-ascii?Q?b92NYhA2UZI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR04MB7779.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(19092799006)(10070799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?d3IpDxmrm6IHmAH91I7006/egPOo4QJl7TElvUXMMey5HdA9BfqKIyzzRwaj?=
 =?us-ascii?Q?Sj7zeLaTI6E7D8iCjA2zuftDZ3VLj42DStkhNQKJ1de5NB5vhqlf810yR4kF?=
 =?us-ascii?Q?WBrdf/97/5reFQF5dvxVIUHPrnRHDsPBONVXBmJ7OB7GjseqxIPtItLnZCv2?=
 =?us-ascii?Q?XggmhJFeKEkV6CXY1cKIUsP4BlX7TL/W19RkM8Uw185oiFb9BTpJaPiZ/AeT?=
 =?us-ascii?Q?gEEqZdl6eqrZ/X9pgJb30DcMk+ImPKjVjpfw/OEwT9PtZU5bEPggP4R32/xb?=
 =?us-ascii?Q?Auy8ytGpvqUI/z531GvDFc2NsQp513+unl8pgSbYHKpvFnEl7OfdZ0R0Gv3Z?=
 =?us-ascii?Q?V0BNeHnxt1s/RARfR/iMEi25THmj5csmR+aryqfn1YvxUZKA7aGBv1fGCYls?=
 =?us-ascii?Q?YPJDNOqTsIkxScxMLRaTZgyY+WxuQ0z2RhfYKv8gWnOTviRLecCvfV4efhud?=
 =?us-ascii?Q?1Uv3BZ7X7IWgeTWIOjvPe977Tc8fJ3GW9tC35gheeh/ZVjxpO/E31gSiFRar?=
 =?us-ascii?Q?RsS6qxV3IDnirm7RSknfgYmgiZjerJZ7eRB/E8d8BFp5NfaEs7XVInU4WJ3H?=
 =?us-ascii?Q?uW4ko8P9nSCehu/qZ59UxCzKnFmbooI3/kJVdg541sXzieMtu683otvj0Lgy?=
 =?us-ascii?Q?+u3ktbl14T+YBZSAApV92Rjxq/lIg0KGERq2WKCnjNENeo4CEuqe405LTBNr?=
 =?us-ascii?Q?3ZsxERAWZkJD6UC1PZqhf0iljPA5cDLWgngA3fnXS2qK5BQGaEvbEG+k2EwY?=
 =?us-ascii?Q?Vjzhv/wX9+fD2uhK8Jx4lpzQDj6c907mm1esSVrzqz/Hn7ua7zXJ8BFX2t+L?=
 =?us-ascii?Q?Fn2t8U+Nu4X7lv05Gdm8zl43BCtKwHiXVT54Fd6fI8j5VOQ3yHHM8dpHtesg?=
 =?us-ascii?Q?dW+mrv07gDcfBFM4Hg879zt3uCWJZy3sz2YqSxriH9M1wAmUrZoDRURLQZH3?=
 =?us-ascii?Q?AnIcvBr8QmJ55rj1nqKX1jUfi5tV6vVYbMTX22mkl0COWciJzzSOOPR08oZi?=
 =?us-ascii?Q?ULdAGo7C9ntDx5itHJiJncLyWUOTWpTXBYiuW9HEF0LQAdQqzy9anCvb0RlH?=
 =?us-ascii?Q?ZQpyPtqaak5bJs+ziRoXiYTYNKyUgNkUR+8F6t4sVlg9hu3GNk1cOlJxIBhs?=
 =?us-ascii?Q?cPjiWekw+fTgWjGDv1TRTcqcUDcTPcd2iYWyefu7WAMI1/akx8oPndmEWAFo?=
 =?us-ascii?Q?HuZ8QREgzhTBZnY9jW2GRu599gjXx4T5TyA0Xh+5N8/UerkwX3CiH4rrkicF?=
 =?us-ascii?Q?F/JPgcnDDK0CXIMNOEaaKy3KFqUYuCc+1dG9WwjBW979FoTQbyMGIsQQBTM7?=
 =?us-ascii?Q?KMbbJ+PhV0g7kFc6YBaSRvhwdtelJ8PegSKvvNaoGk/oaNUnImtM3dYl6i70?=
 =?us-ascii?Q?5Dz2IP9c6GNyvHezizrNFmta2D5u5ehGxOjnXQ5Q9psOKUrhPzIBFU7i3E5p?=
 =?us-ascii?Q?JjIub+iJ+zPadRmE12HeJLet3wd9LpWJY9RUT5DwsUOKUel+vP6hOQyKzErx?=
 =?us-ascii?Q?fVsOTaPA3Z1sYMmHZKrimkDObgwLK6/YxJrG6nNQGaPuGuJwI3Hx24yAg43U?=
 =?us-ascii?Q?FJoYyCmIPl9slwRXHr5mdPFHTvbH+9IklpT0L2zqM1pSiSPS7puhVv0se99D?=
 =?us-ascii?Q?YMZ29Zb/0wMWBLc1DrST948YVpI0U3jBllVVtqTWTlsuYxRxpByv4Mq1l7wa?=
 =?us-ascii?Q?Ulcodw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e871d34-db79-4b1e-ec45-08ddfae3d77b
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2025 20:57:43.8001
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: chsiM5/NQqIAsfEeAu0Bbk0+sfwjse72bk4vAhSZCw2Oghdg0u7yq13QIS29toppK20VSSaxCUtZWc1pzL3/ww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6928
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_135752_099190_296337EA 
X-CRM114-Status: GOOD (  14.66  )
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

On Tue, Sep 23, 2025 at 03:37:31PM -0500, Rob Herring (Arm) wrote:
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> ./Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml:42:18: [error] string value is redundantly quoted with any quotes (quoted-strings)
> ./Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml:46:18: [error] string value is redundantly quoted with any quotes (quoted-strings)
> ./Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml:49:18: [error] string value is redundantly quoted with any quotes (quoted-strings)
> 
> dtschema/dtc warnings/errors:
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250923194445.454442-13-vladimir.oltean@nxp.com
> 
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
>

Sorry, I literally didn't notice this warning even though it seems I am
also reproducing it locally.

I hope this doesn't mean the patch won't get reviewed.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
