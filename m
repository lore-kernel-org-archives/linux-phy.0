Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34C9FD3B7C2
	for <linux-phy@archiver.kernel.org>; Sat,  6 Dec 2025 08:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=cZgrPt17QRSkLK/A0CaRQ98bhXbhznFsIwmqIN9vuUQ=; b=taiXfZki1N6Lag
	9/MzkHcuomxj9kR4LT+P0Uo44G2xDfC1fkuvcgS+W7ncr5PckuvZ3d2OlYrzf3ulZWPr0laADtilf
	O71gVezcImTcuECJz1PkqVj8f9BXX8eeHyx15FP1fN5YkQ8h2yJ6qr/w48BNWGIL+xc2mrMZ3tF/Z
	Iqpvm8VX6nhr+KwrbX6T3+IyQReQ3dV42hVicrGj7VVrnmdFqQTJG84G14mC9P1442gwcVpr/zGuE
	vfcvJKturm9iqgx8YfOi+up83DHsV5SE3Xub0ODR2wycPXKX365h1Sb/CGMZUfRKr3PTFJSsybrjS
	82RnLFRJMHodp3Y0ei/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRo1H-0000000AlNu-3q9Y;
	Sat, 06 Dec 2025 08:51:59 +0000
Received: from mail-northeuropeazon11012015.outbound.protection.outlook.com ([52.101.66.15] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRo1G-0000000AlNU-0AZf
	for linux-phy@lists.infradead.org;
	Sat, 06 Dec 2025 08:51:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EuN0AceJTEjwdpmb+caG7TUixuHkFy+kU5Gg//oO8Sz7hcERJW0ekS9Yncpy7hUhqttlo0OScFje0QzA/LeuYF3D+lch76R+FO48BVrnuDUIGx3obNAt0GhMt5Z+JFb/KoJbRMVm9exF93ccbscWuUmyOZ2hc7ABvBgWfdglYTQK+NXUeXwQrBUA4jQk1JHcmbNRqaFENY6CTPoucqmW+4KPqkmOa+sBi3rBpTm2a0bSXQpVFUNiBo5QtbSEOXF7fWRWta26rIk5RF4eJHOzmxLQHh2b9JP0ABSR9F+wZw5RrujKAJ5DmR3kLW7nvwgoVa3hqlrc68IWk1SLCVPC6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NrKisih/HShpD6FFvoSrW554307V0rpIV64GiI3q3PI=;
 b=v/aI4LRfzACj25X8QG+6nFJoUuSWVigoFVSTHpXne0x8Fim0pOLYJ5B2PHlSAUfdjXzRMrdFgmzmt34PC8Rw/Yz3gHqXGC+55eDnR4RNIo5R23I8jHZmPUDQ8KSeqYPNrbdFUKLkH0wC61h7YAJcLMJ6lNO80/6ZY5MNzgCmSut3y4zFuQB6psauWdOw8Zc+RQgQnMiF+C+a5W8AkoBdmEkvCDHfMikQ6pxLnS2Q+LJoseJmq/gv6xyrdZxMqAQ1HZeQoJuhDo5f3D4hgxrlAq4FJA1AzYe3JfCI/cKQqTqjj8ToaS9zySAG2QPO8o3OVToBV64jqpS54xqI3oZ5wQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NrKisih/HShpD6FFvoSrW554307V0rpIV64GiI3q3PI=;
 b=EwU/Ic3itdxmj5Pe33VnON5RRKGDturwEn1MoFEE5NK94lSprx8tCoBJQvbYh1jXdf0Jq6hCb9DWWjZmLvnXxorZ0UEoDn1KNecdqHrNQzM3x4SMVv3Pytx2abCjDtjNdWIBRcPzBDnz56ftsEBkXxHYwcGUVL2TL8xpnXqECOxHC8Fk5bh8pcmlC0QsYFRpUfWf6z2Jm+MlHybeIGz8IWJSXMeeBnQQnrr5hgkCRYzvak4BphWaED3nFi1hlgr0vm3CNHvR5qBi7LfCEPugmSXKqxdFyQ3bSZyDiH/wamJL/76A4JuWsjuqmIJhAxUXN7VNxxmbsJG4fJx6TvQX6Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by PR3PR04MB7418.eurprd04.prod.outlook.com (2603:10a6:102:8b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.12; Sat, 6 Dec
 2025 08:51:38 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab%5]) with mapi id 15.20.9388.009; Sat, 6 Dec 2025
 08:51:38 +0000
Date: Sat, 6 Dec 2025 10:51:35 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org,
	Robert Marko <robert.marko@sartura.hr>
Cc: kishon@kernel.org, geert+renesas@glider.be, herve.codina@bootlin.com,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	luka.perkov@sartura.hr, Daniel Machon <daniel.machon@microchip.com>,
	Gabor Juhos <j4g8y7@gmail.com>
Subject: Re: [PATCH v2] phy: sparx5-serdes: make it selectable for
 ARCH_LAN969X
Message-ID: <20251206085135.gxwsdhzi7k63tedq@skbuf>
Content-Disposition: inline
In-Reply-To: <20251031121834.665987-1-robert.marko@sartura.hr>
X-ClientProxiedBy: BE1P281CA0449.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:81::13) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|PR3PR04MB7418:EE_
X-MS-Office365-Filtering-Correlation-Id: a1c18420-accc-4f3b-9378-08de34a4ab18
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016|19092799006|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?e6hXV16UW5Qavxme4A1CsLlXnRDV1QKZHtA00phJz69PLX1E3sNkVvXbF5qx?=
 =?us-ascii?Q?sbYam1+ksGpwglmdhHDxb5APFwSm9oSugYVtGEHBTsnKnLfalP8+qp63kK4+?=
 =?us-ascii?Q?C4KkvhbfwDleb0MrN4LkliFRH4hpKHuGJJWbNzQ/G9wnUSrkjJLdr8I6e47A?=
 =?us-ascii?Q?Hzy91ZGyqPWibDuYU/KD9b8i9mqJhVmrGYeqP2Xi0e7v2+vgSIjTpEJ5n05m?=
 =?us-ascii?Q?am9fMw+5/UEpY2RUJBgH5YUvK37soEl6BJ+dC4Yt2w/vxGt/wZvOYAzEysJD?=
 =?us-ascii?Q?aMxI3206X6QZ2oCQE7Z7NFgMFKyZdWqUnGiHl522khCJ8wx9lpOxaMwqr1gK?=
 =?us-ascii?Q?lH3DHeh8e9dNItEnm46nJF8WTH49W/t4T7YEmnORc6UPHPUl9VhIO1leUFm6?=
 =?us-ascii?Q?DYM26/JfsuZ2EV5XLohswdmMMTqbrgxuL6TfUdE5uMNS65+9TNAwQ2w5Pqgf?=
 =?us-ascii?Q?vEmGqcBC4SSzRrP10gNdEHVV/gHj51Ng8Vb2rmeMqPPajMeoJTb2S+k2A/lv?=
 =?us-ascii?Q?frSAgG/nvYvYPBzGkUlySv+T7nSHCBwqPNH9hb/jDgX52vrkmfCgKrTaTM1O?=
 =?us-ascii?Q?ZF8vQkRu8jCGQA8IxJ552EWfKX+tD/aht04w8T9w5G4HpCskgEayb+LT1il0?=
 =?us-ascii?Q?QH4kHn/xLBG1y3bsanrqcq4twa2kEa3rHk+oepbpH3pM1dS3PDtFAm6DF2TV?=
 =?us-ascii?Q?MYeBwGs4qJ0yaDTTk0ZaA6dV/QI7HAL5bz0+ltR0xid6Uj9q3i/xgS9MHGC5?=
 =?us-ascii?Q?mT3Y5sVmdHk2cX3kGuKRFq8Qwayh5uAG6h3GkaNoY9tV19lrmSGti/4rPZrk?=
 =?us-ascii?Q?TGCFryQ21Tmp1zAW8ydppoE+kqwTTm5oNahp2qvGMkGI0COdJtu8hPKVbBnp?=
 =?us-ascii?Q?dT6jWVNiBzOuIRxmbTur0sdRRfpYwmpQFXNtg6mE/lS873KyMUncq+wXawvx?=
 =?us-ascii?Q?4clFyIR3v8HaiujUvFrVF/1hnhShmYEZ6JQhPKL8YoUyh31PT0UuPmkLPhBM?=
 =?us-ascii?Q?4eeAoOI6BSsBwxGEvEaBrXQPPsq8juurN4cjMAeIjdMGrjjzkqejTqLkCGvc?=
 =?us-ascii?Q?5Qse7tHJsH7XJydozIv/IQ5eBVBrk+aYH3WDFNLFnaImbm5xMWxZEo+Io/Bt?=
 =?us-ascii?Q?4/3Ya94nal8YeAORv8n3g/u1WG9Ai7IMH1ZxlPwf/Gd9mx6zp3eXZBEBncd/?=
 =?us-ascii?Q?NOCTd81Z3MIrRzjN2cU68dNsexgjNq19Dsq+tSnY+Tw1JSHhut5F7hxHACAq?=
 =?us-ascii?Q?zVzK3jWpF+1mKyLirBfXfHJxoW0srFJLEzWWFWW2U5JcA/3mmmFnNmDswcPD?=
 =?us-ascii?Q?tCjy+38c0YID24XeOTjhvPPILwycAKiHVIi/A58nacsbja6cpJVeoQZd4WYz?=
 =?us-ascii?Q?cm8Aua6NacK52CdOp2gvPj0HixVVCp2Sl3meAh16XbhieYJlHcY7mos1IlfY?=
 =?us-ascii?Q?u4DKsGpSlNOpkN6ahuBM3tbjjfRz6z5w?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016)(19092799006)(10070799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?t+CiDRw8hYDC4/SCzB34iv81L14nhClC7RretjRc6phNoELYIf8k5EQIetWK?=
 =?us-ascii?Q?e+nWX8ePSdHUSO7MM2fiemt5BzGOaNyCDSXEIZK328y8oPa4bKaU9smtnphI?=
 =?us-ascii?Q?iE1FDCOhr9UOWlFbjL5uTWeG0vAqAe8SEVX8VjqyP70rQZ8+J3y04uA2lY04?=
 =?us-ascii?Q?eiuh4XLka07JcDmXBtFZxa23ak7H3BgQ8oqnIdwHkoEyXUoDXZ0yGhb+o1wN?=
 =?us-ascii?Q?+feTrYdAxJApU4H6Pu/gw1KVJz+e6yRPEkEYTxeLIBa3vEnvg3R53oRTpM8A?=
 =?us-ascii?Q?ouSkckFqn8KFrXr4wYdX6EGHk3KgjdWQh4EIvnLp1Edl6N+QnCbYnD9USKIT?=
 =?us-ascii?Q?ZYv2bEH045braxBgeMLOx/Vija707hDOW0/4OLy0EuvRsQJqO+GI9AncPIbv?=
 =?us-ascii?Q?WsP5tMHtNfgM9Eh3kSTNQ0wqdwOZNfBz8e4g+6hlGn9W85xtp38ETTnSabwC?=
 =?us-ascii?Q?sNt99VLB8JUT1qSfrKl+GEWeoK8Ic6CmMJaZegBCPLeGfaQj+cYJVKwE8cSW?=
 =?us-ascii?Q?CBpC5MjHaXnfM2CAxPf1K7UCnNM+fYvR6yRzpr6E06LJ/fFh7tsHX1y5hSpx?=
 =?us-ascii?Q?eoY198K1RYLrlDqj0x1snKYJ5wPp8BDne1tOwdwJ7rtnLiOIkr3VK6yapj/o?=
 =?us-ascii?Q?nVejs4f+/MrLb7eNRI6cMNEuj2iUJEktoCOMQi/f6jVdk1pzjVxXWSAjI1jL?=
 =?us-ascii?Q?6m+/QUWRQSOYJuHlloiPR+rx1eCfJcr3/K9/7J1BileHVGwUyYWOyxpGd3zC?=
 =?us-ascii?Q?1keG4D2aJQCx0Cuvy77EP40KEb2RovXK4CUUwK+EtY1ggHgQGAeHBtJ8xcm4?=
 =?us-ascii?Q?eHs0Ot2xjpnTKzZA0SP5D7G9iwIr//ZKorIi4fP8eG6noCRDVE9yNGX1fWJT?=
 =?us-ascii?Q?VjSpb8jiY9YzsWE7nGGvkx9BAD6z8tWnF+iuZH+eVziKfndweeuieO9mleFe?=
 =?us-ascii?Q?s9/og+Jb5xcj6+c/76nmjJvxZ0G3nqgjvXgezRIT/vL8Z4GyENqfWV06xOfV?=
 =?us-ascii?Q?WXAFb6eqtPzBU1thS/k6n4e0JYL02OwHewCLDlV8ic/rG6x63Ex074aPs+Et?=
 =?us-ascii?Q?mToK4q1NQEZMolN3SyKqZvx6Su1WTgkV5Z5nauggxNTYzf0MiEPg1czUqG8m?=
 =?us-ascii?Q?jbgYVoopOM2+9pJb4KF8ClncZTdiExZht7bqWy+C0qLfpu84Y8K5iV8M6i6r?=
 =?us-ascii?Q?NeOzWRLBLUw3e0qLiFMe1fRKpO5VP8RnS4YQwX7NG7BXVBLAASmc+gBGZuNI?=
 =?us-ascii?Q?RiM4RyTXkfE6vxoU6tNZ5aQYHHM5bMruD+U8etDg3fBpY+D2TlM4nOhb42fP?=
 =?us-ascii?Q?DsFClzIRufP4muAqD1I/8+UwXeTz8flbXmgK00zDbPqF5Tr7DUCb1e297fCa?=
 =?us-ascii?Q?V43FcA79R3csgnRxvQ+na4vHGLoi67gJfPrkv+O8/eeQktEixBDoOOEOSovI?=
 =?us-ascii?Q?0+eANHMyagz9N2e6vcjknqyaF+yqGTSENK0TcmIf87rLnwwsstIg8ZBLCttV?=
 =?us-ascii?Q?8XW8qfeGku8UABi637PYOASET4LChJB7vG2HbcKb9tRpsCgPC4p47DZLn4GG?=
 =?us-ascii?Q?5nh8VDpukVyGI2SilRaQ3sVSwV5cW4YoluO10yPsv8F/NRk1+tqxpdUFjWxL?=
 =?us-ascii?Q?KshMTQNaH11KiNklcq1fwTXhjX8OxPixou1jTpsUhDwIwiwdvO9lCh05RDr3?=
 =?us-ascii?Q?ykhFxA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1c18420-accc-4f3b-9378-08de34a4ab18
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2025 08:51:38.6061
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g84/dDwgnWUUy2cMZij1sz8NtfPYpokL5dP1PgyjPdJNcApSvnRNdaKf+mknFEB3u4biq+e1aCMzQkDR5gpwQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR04MB7418
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251206_005158_126858_C65A54EA 
X-CRM114-Status: GOOD (  15.82  )
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

On Fri, Oct 31, 2025 at 01:18:12PM +0100, Robert Marko wrote:
> LAN969x uses the SparX-5 SERDES driver, so make it selectable for
> ARCH_LAN969X.
> 
> Reviewed-by: Daniel Machon <daniel.machon@microchip.com>
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> ---
> Changes in v2:
> * Rebase onto next-20251031
> * Add Reviewed-by tag
> 
>  drivers/phy/microchip/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/microchip/Kconfig b/drivers/phy/microchip/Kconfig
> index 2f0045e874ac..2e6d1224711e 100644
> --- a/drivers/phy/microchip/Kconfig
> +++ b/drivers/phy/microchip/Kconfig
> @@ -6,7 +6,7 @@
>  config PHY_SPARX5_SERDES
>  	tristate "Microchip Sparx5 SerDes PHY driver"
>  	select GENERIC_PHY
> -	depends on ARCH_SPARX5 || COMPILE_TEST
> +	depends on ARCH_SPARX5 || ARCH_LAN969X || COMPILE_TEST
>  	depends on OF
>  	depends on HAS_IOMEM
>  	help
> -- 
> 2.51.1
> 
> 

From what I'm able to tell this patch wasn't picked up, but the issue is
appearing in builds and should be addressed soon, with the Fixes: tag
that Gabor points out.

Tested-by: Vladimir Oltean <vladimir.oltean@nxp.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
