Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17AA3CD98D2
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 10:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=accVpWCGh1vtsMcCzgIuQEuC+KASPSbeTy3JcrJ1C6w=; b=wUd5K/XkLQQ/0Q
	NDWT+NxPHbCItVJ5f6efowCDU2A43ScDgkFBPeas9Q2hl3WoJv6gTfWMaQ4GjBt102u5iKX6xsvgg
	+KgQMbq7SatWkfskDGDzJdAOgU6vBbexQmtENrf81B9048o8trnuhSaDLmonCrh1v+8DYYxxveIl2
	ta+lcaxEu/NICpBnkowqrztWPEWa2wccPbrQv/ss3+A0Ddznmob4d0QipLGksmtbpw0sGvzV8gm22
	+oTc1CqBrkXJcw461I18rWDuA8DnyruQ+q5pDl8djEdFu+6bzSTWKS1R/npvlvvL1wUEubkOf+S/P
	nDI6PwlDSrpaaYMYRMWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXd8Q-00000009GoT-3B6T;
	Thu, 11 Jun 2026 10:59:42 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXd8O-00000009Gnz-2wRk
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 10:59:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p+dLZLwnODTli9gOhUKRvdJxQPIWh14wiLvp6gd6LlgpMKPvnYTsfcrl5xOds8Xukmr26+Q2uhKAh5h0VJWtrjbrYD2eXUAA+9sx+Ct+u0P0ykO+EFYuqs4pM+yKdlur3qdMBY4FiqQ+/0pD6Yi/JUqRq1A8bZUbtklmswfybRsIqCfckRys0TCm4cuFRJlyHCHQDTDD5ChNVR/Xw8nUYL9qua5aKqIm+2Ur6/a6MO7KReB6UiN32r6R2aOkc74Q6YJ6/g3Ee+0Vq11Cag8ulIFicr4kbST3EkmQjEo0MAnohohIzPDTAJ8UqW7oa+ql97MqfCZmG7jF9boyuEhUGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jm8tkFHvawpDDwtt90plv3QRS7vo6lCsJWxzkvMn/0o=;
 b=Ry8yzMR6DSr4eDDK2uLcyqWnz5jx9wsnZHsxSsdWSNLxB9ofFNtUDkOQQBMpjVzOctr9a+81Smet/D/PXd30fv4Z0b6iju9LQg9NRbRsRH8FuxkOmt66L8Tncfz0n7IlQ5jA/NgLJGHrhogc6A5cHncUCdPBWHVb/8fBDLUZnDm8k0eYE3oAkYkguhOK6O6Zj9jso8d+IPpOkg9OczUmxjeyXWmEnpWlshUh0R2QCCVB8oLKZHdGedv6yywBsV/cgOMwP7wm07f97Jn7oeDl6Nkvese0WNEcpVOa44vMxobqydegci97tirZNVe8zVPHIZuM0NsY+w7IvFRKNFlGUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jm8tkFHvawpDDwtt90plv3QRS7vo6lCsJWxzkvMn/0o=;
 b=Vlrb1w1LUXZ1sGBls/fnCXyxkO4Rw/ma/bN+qGio6vuIV3tjttQ0KGfUddc1qzvNdoS9BII9cr9sQ2O7clCoPxxsnC1kD+xIYMgiyCIqdMgcgLrPtoYdI9XVvVIbH2QZyuUQMjtiJQsOuJtZiCkDYkOZM0bEpl8XkpSQwquw/krPBDnuHQ9VB7nzy/DqLuX1PIHosk5iwZ4hA7DV9b60E5deke+rmsahWVfDKxDKCwDjIW8CZaFVCNmwY60JXVMm3W9vZcpiSXycXdm8hl2UNPSMs01kgg4qauoHWSyaL41HcXNWR9QRuPDv5Xh3OL3Y7/w6BnOLpkCWcKuaBeFsQQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13) by AS1PR04MB9357.eurprd04.prod.outlook.com
 (2603:10a6:20b:4dd::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.14; Thu, 11 Jun
 2026 10:59:36 +0000
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd]) by GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd%6]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 10:59:36 +0000
Date: Thu, 11 Jun 2026 13:59:32 +0300
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Tanjeff Moos <tanjeff.moos@westermo.com>, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 phy-next 05/16] phy: lynx-28g: common lynx_pll_get()
Message-ID: <qlyzkm5taqnufq3wm5x5y3kgbrqyqp2y6getwql4q45vuqfxwy@jng4eg6576i4>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
 <20260610151952.2141019-6-vladimir.oltean@nxp.com>
Content-Disposition: inline
In-Reply-To: <20260610151952.2141019-6-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM9P193CA0010.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:20b:21e::15) To GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12290:EE_|AS1PR04MB9357:EE_
X-MS-Office365-Filtering-Correlation-Id: 98e24cd8-707c-442a-52ab-08dec7a88684
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|23010399003|1800799024|366016|376014|18002099003|22082099003|6133799003|56012099006|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: EXzZs3qA2SKlA1t40o6hQAmTobGMKcffGG06eDwFEv/p2QJJIs1SAxvO/fOLJo2zrK5mfh9D3fAMIcjaG2JVJsd7z5o0kvXruwwa8nk52t/La9Zqxqpo+tjU8oxrmhSVtRCw7ZTuhsphkDgiNyV2BZOilZUpdIx1nxmXj7KSVQAeXYq9C9Vh2abFVHnDgA5hbAIE9V7kXZbJnc0Neq8fwxxvv8mV6nk93lio9X0nyln8FCZlOwCF8HnfsZroM7kd4eaGoZyTrBNMjzwIfhrEABZbEb3uYExr0/cavTEH6eawLLJ4lVdqBV+tTgy06CxtjXtHF9iHkE5i1OkoUbCxenHYx4G7Co7VUU1XMi9t1THJ9W99iPGnEvgPXaGlkkcpJtKynFn+OOeUnpXu2owtTICNMWQRoZFkUK3Trj/fXAYDI3UgeRzMCgtpaogpymsriVu4vlrh5vMkikkt9RZsh7s3fIJLUd6zmwfbtX2Hxr9aPGayk25cFRYvKRT9BCvUU5U3THimXnmoNlX48mTUkSvK8DdhsjFXIDFltPfg9vH2NiEdri8CwKy9xy2UlqHv+Pn+f0qqEIraty2CRi7yDDT0CsqmWXMnNSGKnrh1c/rx9soL3RRcy69AlCgPtAZAobiB9tpxYPgR4zB1Q6AejOsL9V/tsG45I4w/B1BjhDIorkziDqMocHIs9RzdBtjR
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12290.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(23010399003)(1800799024)(366016)(376014)(18002099003)(22082099003)(6133799003)(56012099006)(4143699003)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BoLUbOjOcPGTTl8a+JhNoLfCqLuJDWslttQcFseXDa5OtjdqEu+s+AFeCDgo?=
 =?us-ascii?Q?bv2KVeJVs+FfMyh2G5vixn/rDkz1MvLfiWAxHvq+5L0OJN6JrKNM8IF2G1Qa?=
 =?us-ascii?Q?u0LUrOnKhq/9/fqQmAwGy372URTXcMjFhVelLd/D0pScwIAmCM7mGb5XXIXz?=
 =?us-ascii?Q?XM+/AzlLhk0uEoM44Qd+YWn0siS9XgKiqKo+gMSZxiFZdjcBw7e7Y0D6uQXR?=
 =?us-ascii?Q?S0syN75FYzgT/OnvFy2CUnmbYATS3Bt32Qk5wuZDqhFriV612BPEBXwjyKn9?=
 =?us-ascii?Q?19BPB2oJFcIZprxuekrzhPbmjvL+aH0PHV0/em1P1An2R3on3fhPrk6dyo5h?=
 =?us-ascii?Q?RVTFe73wwNUJtO3qbO+C0eAN8A2rqCCMhCR9LevrEIeDF+vaDyf+7AVekxtQ?=
 =?us-ascii?Q?TL7bDlWy2BjQenbkZ7PGs3dmZoPXsP/EKyL0otxJy5g3f4Rl6y9hDopxPnzd?=
 =?us-ascii?Q?voVp0YiAeq2HL7wQmBBdB0fJBEArmnGxCSf6hxbPP+WB/Ey5BcCSK8jI+3Ds?=
 =?us-ascii?Q?6sVPUyQWDbs5s9rSMWnayKb1HhJazPTkwejZGMw+yWSUI9JISnEueTeqAc40?=
 =?us-ascii?Q?1q/rPbAD6vMox/ez6JttQ5n5BL8pp4bwS7Xct0Z3ZuKFXC6dOL0ddL+38/kJ?=
 =?us-ascii?Q?23qBPHANVvnBeNsfiiBY1KY7WI7xwlHA31Asyq61nLh8sEaS5cTlrKovnON6?=
 =?us-ascii?Q?FgWCLUKy4WN9gR2LQKkV+JjnWol4kgI3dOphi0pMM8oK3ynitfOdDjzY3WWK?=
 =?us-ascii?Q?4UXzxaYevGhct37qg9zWKIx0Fy4qt9UDMdQ4Hog2BWjWMfZSVqeelWxA7ygS?=
 =?us-ascii?Q?VCvYGISuTueWK6AsaiYJcS/Zxa35iEyDOltVyD2YUn2+I/hxB1vMZhXA2ICA?=
 =?us-ascii?Q?KZkpT5pb7iIBFw8f1gsjmc6CA/iMoDo5HedfB8B9xpvnPIs5m37lFcRdI48h?=
 =?us-ascii?Q?mQcKV+rvDX8dezgqN6V2NWly+DMZ50Gqye7G43nObkMHOCNmdfZh2OLlQBAT?=
 =?us-ascii?Q?+7v8wPKWM3IFbWhuEDGBwNCwDAM5jKgW7vAJ/a9GFqr/SXEOJkUTVsbvTv8/?=
 =?us-ascii?Q?yCDwui3HrtwFRu4dJuqBUunzAFFVzQuf3nmGc2kzRvKYIHvMMhDlDTtr7y+p?=
 =?us-ascii?Q?Cro3yob9fKN2x9voqKBBgGxITcVLHB4AzkVN2RlL0w5xsi/KKkJ9jwpRHseE?=
 =?us-ascii?Q?DzAiIQUdfodrlXQ5wPcXkTa9zIsFh/IaEchiw2ZuuLbTWvydEs6/5EfLC81G?=
 =?us-ascii?Q?ORo7lAlyaG9Vff3So/kULxg1KrhYrHgbpp4bWl2cG83jX2cTkgW0/Kpb6wHo?=
 =?us-ascii?Q?A+Q+SHgnA1i18PQLJ+ikqmKDEyDMxUo2qNF+haXmtzTOa+VdW2gYp0PJfF9p?=
 =?us-ascii?Q?rGPJ/pR5okIMF6O+Hfh5Y/WWmJReHB1V3ITXln3KCJl6o6KOcx48b59GUyHu?=
 =?us-ascii?Q?0Ha3SWK5uJMJBmqexLcQ/VKXvg23hkvhsORyOMLfhA4okfV8Xx5IoKX9jQq4?=
 =?us-ascii?Q?nJthfftUhhUNJXweZs8jW+ta5gRm3UYFiSMYfC76+4qtyjoCqc51KxZ2u6zW?=
 =?us-ascii?Q?dTrzLEcofXBDlIr0MfV1+PnU8tlNSfU5O/OttrECvPKXejNzLUALWh7uAA+S?=
 =?us-ascii?Q?sBlBBjhcLOiuOao9ofIZjp9E4NVROGaf8tpfLvBWRk/jToNdkVC6/qdgeQfx?=
 =?us-ascii?Q?oQ2Nbp3ov9NV8CijAwOYA0uP/CrV7nj4qumYwgVRZTcNtIbYQxobvre1pcZA?=
 =?us-ascii?Q?XOoR5FKfnw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98e24cd8-707c-442a-52ab-08dec7a88684
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12290.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2026 10:59:35.9647
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hezG6yvad/nmocUXqntw64QiUhvnN7ZBcCcFvoRd0V0UaYh9EIcCtNTcjrIF3zpjKjFVffPl9a2VHYBaJo+AkA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR04MB9357
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_035940_743399_C4412292 
X-CRM114-Status: UNSURE (   9.34  )
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

On Wed, Jun 10, 2026 at 06:19:41PM +0300, Vladimir Oltean wrote:
> The logic should be absolutely unchanged in the new 10G Lynx SerDes
> driver, so let's move this to phy-fsl-lynx-core.c and update the 28G
> Lynx driver to use the common variant.
> 
> While at it, update the call site, lynx_28g_lane_remap_pll(), to use the
> new data structures, and refactor the NULL pll pointer check (the
> current form triggers a checkpatch CHECK).
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Ioana Ciornei <ioana.ciornei@nxp.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
