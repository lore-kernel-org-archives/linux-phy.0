Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC30D606A326
	for <linux-phy@archiver.kernel.org>; Thu, 19 Nov 2026 17:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=n6WVfz0N;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256 header.s=selector1 header.b=K492XEjz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=K2NsNMkTWhcRsg6EiBDp7k5UiSn7LOg+JEJmm1Xf7GU=; b=n6WVfz0N8ckG+ZHjaIFEWyyz1E
	pdNtJeXu1k68k6NjgHTMwAA1d0DyRl1WeNuBBB4TCXYONcViYFpnBClpwu1CMg94gjQ+DsGUSpCLS
	88nRvU8CIEX/Qe/xCpo73J046r4Qi4vDFzHuveGtPKPPAbno48kX/rBVzVdvqS/4XrX6/HrRt7y4g
	YRa7DLF556wiv6N9g0KlTnCBFB0mB9oXe/FWb4tlwC5LYGZQMc8JKE4TjB7g1eLMBJicJUgOsW9Ak
	lcU2u1A7O6hF56Zrvl4RAjJREM72hAMKsWpnNhijZzowUTVxi9Z41DVCiIkScTkjEqRXVNxakNlI4
	vIj1lQRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU5tN-0000000Cppk-1ju7;
	Thu, 19 Nov 2026 17:25:49 +0000
Received: from mail-swedencentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c202::7] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU5tL-0000000Cpos-056l
	for linux-phy@lists.infradead.org;
	Thu, 19 Nov 2026 17:25:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IndFP71idhKibwhK/yepDgyFmeCa7n7uAGu5Tmr0XA04bIS1tiDuqqrp+du0I1WiIBeE62TIAVqaQNeTxj04spy5vhpC80e2tfA/8eBktvpSHQLcykik6PwilqSjBx0P8jFJCQXK7kEWnbxojP1E6tBHpnWw/LrXegBAmnfDhdWorviAGkAuKfgSpnkij+g6IVuGEQSmcwtG/JAExKZyWUfxur5nHUfncPZaxUyJ4N4S2EGBBfuTeUR+Ep0Gymql/qEn3caQ6oF3a7hcsHuSBRcylpA4vXvRdplvtlA/d2xHxxVpcR5gTxFln+zk5h0/5pfxyj6sVKIkk0zsSTho1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cFiYvLHtRbaEOsCuic1Aw5kQhYqO0RZfer3U4Bzj5Tw=;
 b=XXbRbMDhq5zSRFfuq5JFQFakpK/2tnlwWIx8uenHCDPh5f2gS5H19zNBlqCyFDaPQEM6Fkf+8QdAZFtxzA0E5/u/+ik9cXBkdLiuyorYW+OQzP4vRMpOByC4/pI4Rp8LWtFRVKp9tnoelAQgMW6sVfjbg4VCaadpsxurV5NQgIA+MIti52MBwlYzBPSziJj6m4K9eK94NVl0V44Ydw8RBJqfkkdphVQd4WisRdxOE8gz73yT2Ecda2VFEdLryUc3FOkmQ+7kWSv+Ey98HEJA8LSyj8Zi9ZBXyW6YYq+R7rMs2io0pWHlzXxH6YAnPtW04zugZvhWPo5vSnupZo+KUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cFiYvLHtRbaEOsCuic1Aw5kQhYqO0RZfer3U4Bzj5Tw=;
 b=K492XEjzvDL5JLacvSVgVkZEeu2qJliu8vN7WGpUaXj6auuI9mRS6LnqqHj4spKR3DUUyA6CQir98quwGOuVa+XbKoHOogLCcZ8111jklDVkcH2oCa6B3GhrSGHToIZVTzG6lIhCeJ0n/VfGZKcsDs4ECE5DPlQ1v7MryjGyP04wpvq8FFYBH68ZabOfpvFG3mqhe6DjkFDobb3Oqgqe38bdZnDiVkqAW4e/uizGAjKN5vlpcqz+JMDDtDW/x0T7smsrVOw8oTNKQEuqhY6Ouryzert9RHWNHqtHCSXF8TfIoSVJcDYRGu4bUZnmLXivOe6Bpw7p5DR/eafK21zEkg==
Authentication-Results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from MI9PR04MB019273.eurprd04.prod.outlook.com
 (2603:10a6:290:d3::17) by VI1PR04MB7069.eurprd04.prod.outlook.com
 (2603:10a6:800:127::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.615.14; Thu, 19 Nov
 2026 17:25:39 +0000
Received: from MI9PR04MB019273.eurprd04.prod.outlook.com
 ([fe80::263c:943a:dcb0:29d8]) by MI9PR04MB019273.eurprd04.prod.outlook.com
 ([fe80::263c:943a:dcb0:29d8%5]) with mapi id 15.21.0639.010; Thu, 19 Nov 2026
 17:25:39 +0000
Date: Thu, 19 Nov 2026 19:25:36 +0200
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: Vincent Jardin <vjardin@free.fr>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	netdev@vger.kernel.org, Vladimir Oltean <vladimir.oltean@nxp.com>
Subject: Re: [PATCH 0/3] phy: lynx: add support for downstream retimer PHYs
Message-ID: <oalhiiiyludhpil5gsplwkrusidxl6znh43ptxmvlxzcd73pqv@ncsskfxywmpb>
References: <20261118163134.2149894-1-ioana.ciornei@nxp.com>
 <av8cUZ2F4_iw2fQV@L30177.local>
Content-Disposition: inline
In-Reply-To: <av8cUZ2F4_iw2fQV@L30177.local>
X-ClientProxiedBy: AS4P189CA0038.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:5dd::10) To MI9PR04MB019273.eurprd04.prod.outlook.com
 (2603:10a6:290:d3::17)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MI9PR04MB019273:EE_|VI1PR04MB7069:EE_
X-MS-Office365-Filtering-Correlation-Id: 4fdb6bf0-6ffb-4cef-f6a9-08df466221aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|366016|376014|7416014|23010399003|1800799024|261102123227099003|10067099003|261026121527099003|56012099006|11063799006|261021121427099003|261026140227099003|261022105027099003|261028144727099003|4143699003|261022075727099003|261009223027099003|22082099003|10086099003|6133799003|18002099003|3023799007|27256017|41080700001;
X-Microsoft-Antispam-Message-Info: mp0C9OyS0oGJHumTu+xmbWJnCqdEmbUsjhZD4LDaXTVD0D7h6CTB0wgsn1WZxNGABuQv4IXytScwXMzdhzym9OG6sjpqvLDwJqbR8ahoO8UOT7GNqpHeuNH0F54ZAEuCnVOVXQGjpmKEGIBOmk1E621qqSBi6wnpRUlTasU1grHNDOFXAwFVsTl7XhLhWqULm0AvcMgNTItVtDF0Q6FIXYezdKkdlEPVpGwiwgSJZUqDdJfR5Xc3WloAOKOvDpZU2ijetZJTH+2DwhjYSzwt4t0xhIHI332iKCAxPD/TN/yU1+HiV7tpZcPrrij9qWTNzaJYgPDYDh6J7uph682ftgf7yMMcpUS1XIe/KtQwjpT6plP/Q7Xs5IvbXs6DAcaAGPgioCS4Eu0WmASCsysqUzYgXYNKslx05cu9xKmvFy0Wfx7DjLihh03lJpR98n/PQ09/nEPYHyVvc8usnvjXZH0OAFF9hj5iSibNa/LAb1OsKumjMfUmVJqCN3+7PA2zhOgNbLOn3VeaW6FoLOy/RVBFChvF53oQ//hN4aebuRAP3AY/VMIcVj1e6TBkBwzJo1QnEInm2TjwACkVlFZhhKVoTIz17tlhDfc/5i5NUXska4iYveTFnqu7voWrBFoiqWkl+bL1HVamr/jZXXFLB+eXDV/74nnVD9TSCnEWmFhmNN81EGuPGKWT7ss1ziTbjCoBpe3NlRrl3d52ztEG7w==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MI9PR04MB019273.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(366016)(376014)(7416014)(23010399003)(1800799024)(261102123227099003)(10067099003)(261026121527099003)(56012099006)(11063799006)(261021121427099003)(261026140227099003)(261022105027099003)(261028144727099003)(4143699003)(261022075727099003)(261009223027099003)(22082099003)(10086099003)(6133799003)(18002099003)(3023799007)(27256017)(41080700001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GHySdnMIL4f5P/cayF2B/HCEbcCMhcjawNbaR9o4kdU/rXD+NqZA2Nl5qijW?=
 =?us-ascii?Q?Pd5idI8WCNsuVmC37q+u7pPPkHj40JedCt65BUIqRdEkYg9as+dOjhMO8aE2?=
 =?us-ascii?Q?d6Vjl37RYjJ870KkxcF5t2iA5cR+ZByXBNmZL0g50aVW/31RtXoru6Aji/vV?=
 =?us-ascii?Q?knMZ/wIpWGyAxEmvlfTaItHWLr+j949MqJ0Z9kXpGGhigFURoDGugJM7gNxK?=
 =?us-ascii?Q?Yp1Y5QRA/OrH3j3JOhwKLn6x1EcA4wFo3iNVODFJ459U6Ls2FkVy+ynP7J72?=
 =?us-ascii?Q?snj4p9HlcwCP4HkPU2Mc2T05hWnYkC2VK3xaMV2/JRB+pEP1qtREpdH3FYJq?=
 =?us-ascii?Q?pJcI1zvQgIaD3l2zfv5vQacVfsbHE5feisFLITmecHwSJkkYDOtyVtVifRPl?=
 =?us-ascii?Q?uYO9ckSfjzJfaQYst3vRNFXz80KN2lsQwcymD+1N70pkMJkoPjFXgEGy2YLR?=
 =?us-ascii?Q?Nwq+OSqdloyI0Tg2jX9Hn+DOPNJY3rUMqqEwrRlC1fjIR2VrOwQonyJq/UtR?=
 =?us-ascii?Q?2w+W6MJtMVV5HRpQ9PyWiq2ytDKprLs4y8mShAq7rarkiqvccQEw9ewhmVYw?=
 =?us-ascii?Q?E8PXZfbwJndf3LYf/0A1wvxrBozAdiveJuFPsB6S5j+EqdQuv03BrTDKHh9I?=
 =?us-ascii?Q?stuvms3ewUeTxNWzuS/c0g0T3hI7UWI+EukBt7qtjecGaS4l2SXVJLzMa5ND?=
 =?us-ascii?Q?vzF9Tk79liXoIRvVnFuEkprozUpTCeNKSHxuqgt7dPmoBllASXmAg+SsvP4j?=
 =?us-ascii?Q?j93sCRviP4Zm0Lflj7Fskgsk0Gz15oHLTRNCLQmsH9g9A8EyZXAwf/99t68e?=
 =?us-ascii?Q?cwQFwRLZaJilqN8/CCpI13pfdCelo1djZhbDxByCuj735dfwYqPzshd4NFKO?=
 =?us-ascii?Q?sDkXdcCXRkI9gV36xmTzme/B/B5yQYsIXRLhLwqEDZzO6vzuFppkgoczWVxG?=
 =?us-ascii?Q?RTFaqUlx+hr4RESnj32ecmZdqz/uqEvWrx73d2y7yz0jZEJgn7KFEgcVwWZc?=
 =?us-ascii?Q?1MKviyfrPfwqKJKIoz3iP8yN9sBZOJmSi8OKst2Gi0OPd+8TPuV2UydLhwH9?=
 =?us-ascii?Q?6EdVESmkXk8w9+rhsPuTv2ylux2fRrL+2D1vqAGPOQ7ogSuBOgSeP08lSp5f?=
 =?us-ascii?Q?o5Uov6AUPlUE+Vco2wQAFKmkYc/xjZxAiZ1TmbwvY8m2dy4Wqj60QjpiNBsg?=
 =?us-ascii?Q?WLEl7Yxd6lRch6F6gqNCogJ32aInq79j78bY2eoJV+FG8NLQ4d37EbeQOOVY?=
 =?us-ascii?Q?ib08rHwc8YSlmq9f09PY99J6TAEimTIOhvByGQJSS+XW13ZoGdvo26kxmD5u?=
 =?us-ascii?Q?qsJ7Cm1zSLM2+d1RnUDVuaJ/wY/HNlAr5ZYtAZBGW+4L5DJCsRipYEKapIKf?=
 =?us-ascii?Q?cjEzINqjJQjQVBR8jSz/P6eO2lLBCpNhvI+8ZhLO5RrEftV5p3vgsfA+Z6Hd?=
 =?us-ascii?Q?5fBKXIbF009RFILSVd2zFPIUJ59Z2EOYUqThODHWMjpA/hVcWDP8ktJjjVRe?=
 =?us-ascii?Q?Qtkr8ORlffb8aOR+91+wPPQ4hAmfDC+v0Q8B1LOE5l0KqHUDtzVka5Eumqm3?=
 =?us-ascii?Q?wngW4f0OF8247ZwCspQOplTeVDvsriqs4e3Di+qUABRfiZ/O8B9zjDROGgvU?=
 =?us-ascii?Q?TbsGgu3bBf2qq8TKjTsC02E1ydguy60nmNuas+IWNrKoe2njLtYTQJf+95KV?=
 =?us-ascii?Q?UGDSuhoCNayCbgcWOp84BCw+qTcBOQTST0QYvQhwUD1svN1uatSLaligCLic?=
 =?us-ascii?Q?m6/Z2yeGOg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fdb6bf0-6ffb-4cef-f6a9-08df466221aa
X-MS-Exchange-CrossTenant-AuthSource: MI9PR04MB019273.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2026 17:25:39.6315
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BsiKMi5bog/tnVWBCP/L755F4D88MPTDnZiladdXNkKtEVFPVKKtrMhUUdo8YjQQ/c6wHlm61h/ds1G0WJulJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_092547_078473_5AD06C30 
X-CRM114-Status: GOOD (  28.40  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Thu, Nov 19, 2026 at 04:57:05PM +0100, Vincent Jardin wrote:
> Hi Ioana,
> 
> > This patch set adds support in the Lynx SerDes PHY drivers for
> > retimer PHYs which can be found on the board downstream of the SerDes
> > lane towards any connector such as an SFP cage.
> 
> It is a good idea, it can be used then to leverage other retimers
> on those serdes too (like a ds250).
> 
> So, two questions:
>  - in patch 3, a downstream PHY without .validate fails every mode of
> the lane. Could it be stated in the binding or in a kernel doc ? A
> minimal retimer driver would take the port down.

I am not really sure where exactly to document this Lynx SerDes
restriction: the dt bindings do not deal with this kind of restrictions
and I am not sure that in the driver it will actually be visible.

On the other hand, phylink_dbg will print the phy_interface_t bitmap
supported by an SFP and the bitmap supported by the MAC/SerDes +
retimers. So there will be some debug messages to start from.

> 
>  - for 100G and 40G ports that are 4 lanes under one MAC, and the
> Lynx 28G driver has no lane mode for them, so set_mode would never reach
> their retimers. What's the plan ?

I would think that if a retimer connected to the lanes of a 100G or 40G
port needs to configured at runtime, it would also need to have SerDes
level support in the Lynx 28G driver. So than plan would be to add
100G/40G support first.

> 
> One more point: we need to be able to tune the equalization and run PRBS
> on these chips from userspace. A driver that selects a channel and then
> writes would race with such tools. The retimer driver
> would have to deal with it. What could the proper design be ?
> 

If PRBS is done in user space then I would expect the Linux drivers
which touch the SerDes lanes and any other retimer on the signal path
to be unbound from the devices. For example, if PRBS is run on a Lynx28G
SerDes lane then the entire SerDes block needs to be in test mode. This
implies that no other lane can be in application mode which is invasive
enough that an unbind is necessary.

Ioana

[1] https://lore.kernel.org/all/aY2lFTIALH7qEJmM@shell.armlinux.org.uk/


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
