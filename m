Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3578606A320
	for <linux-phy@archiver.kernel.org>; Thu, 19 Nov 2026 09:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=AWyjKXly;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256 header.s=selector1 header.b=b5CPm+On
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=d6BMAE0c1MAuwGczbExLgPU2lOvqZ2Rhr4nIiKZsxks=; b=AWyjKXlyC2cRfQInKJmxXYUM4+
	3WGdnoAqEwPB7SfXJ/YOYp4EXvBuyzBbXvVbinF+8PcC9FpvMJ7P9MfQPhcB+xW7lqZcoNqr6apay
	SBLnsHkflMGQ1M0trDXHZFKDkiVoPl2/Y0NU8Qxbpw7uOpLlWa1auRKqaKPYooleyHPAedjp4tUlB
	NsMpjNgRK2qGYEYTEC4UfGbl/OyyFvA0Y93t4kcEI2FFb1xEJHAhLYdzOAo8mw1A81wpKnbjZ2C06
	DZ2tEnrxkvueVBd4/TF3LiSg8sjaGDM51TsjWJZ5Ra5IrK91lOCOFNFr67w+JmYEpCqBIw7WSYAmZ
	+FFafU1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTyOS-0000000BOP9-1d5x;
	Thu, 19 Nov 2026 09:25:24 +0000
Received: from mail-northeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c200::3] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTyOG-0000000BOBv-33jR
	for linux-phy@lists.infradead.org;
	Thu, 19 Nov 2026 09:25:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bYzlICNqXDUXf9VeUJxL70KO55tI+xYKwUUAb8EPqP3stKUUlEwsGBqQyv8LKOVQsfoRseJ5H03lOBIU0UXHNpyNpSJjok8T0+kTT+1otV6N4mqon2zPCsdM4xmS77wHmEfs6gPyrFi2PHLEYRfXYK28sj+2rctmzcAu0DPFPEjwUhHcd1Zw4/Cp4f2rrxEbURYJz9Z1WgXFhWaK2cSYkZM+bU1pjF4qyGIGXwvHDHLF8betiPguY95jHs8Gzv1Evyjrjnd+5pkXC2L6BFSfd1mHKoNS3yW5Vlo8iggqERFslhB6Fmemy5gPAShfxByEl1Rt6ZNhSV5c78E0VcjUOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KHNr8pE3izbikvIjjT4gTAC2BekarjMwLwKHCzmtJjE=;
 b=JY4A6WV3MjEzfNI7e/xIR0UndJ/MwJsWFGbV0xVDD7EpqKwrunO4ww58i5oUSOzgC9qHVZS+JKE1qG3Tnd2qEK3epJUMRlJKywGMd4Xh4KOuVTk3qNdhp5jgeuK7YBq08gwpQF1sOAOwzkVs0/zsJX8ZltEdGX8tcI9800tRgiUKXLRSex8+FYTdfuFkfrO997ZCAaWvlGvSfWasS421npjlaHwWhmXWqVwosZF2Iog7P+g1KkY8VLF41H5f3DRomPamXdEGr/0Hn20HeARdnaCbVZPPfi5jf6Lm9eDdRbfG9Dc3Sd0JrxhppuGV3aF6fJlcgnF2FFNBw3TRFLiIIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KHNr8pE3izbikvIjjT4gTAC2BekarjMwLwKHCzmtJjE=;
 b=b5CPm+OndpB+iZaEK0Zvr2rerGJ3Ow2KVgsPx7MQaZtI96L7si/aHtjvWkkA1w+oy1H3OxAogxXzMSAb5Bo9b8OoplVVmGx1k02+p3WgMm3rqY47199zxFRUokP/3qke57zAX2XJYk959nNfGBU6X8r5COCDwft8BvqPXJmk3ajlEQRW98P6gXkM8yNwlJbV1EcvTJZ8fOaotFkatpHwcnoXIKmjaQ3DuEvAu5PQl6w/h/OcpUQLAtttlN81EKC7WJa9ZoEFm+lLSqlvmkY5yNbhZLwEa7aJM56H0jJ7fIcrA0a8pzf2OC6pBjpza7ZkNXt+P5P8gEcFfON9N/LWWQ==
Authentication-Results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by DB9PR04MB11557.eurprd04.prod.outlook.com (2603:10a6:10:607::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.639.10; Thu, 19 Nov
 2026 09:25:04 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%4]) with mapi id 15.21.0639.010; Thu, 19 Nov 2026
 09:25:04 +0000
Date: Thu, 19 Nov 2026 11:25:01 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Ioana Ciornei <ioana.ciornei@nxp.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	netdev@vger.kernel.org
Subject: Re: [PATCH 0/3] phy: lynx: add support for downstream retimer PHYs
Message-ID: <av6-ROH48bJTSp04@skbuf>
References: <20261118163134.2149894-1-ioana.ciornei@nxp.com>
Content-Disposition: inline
In-Reply-To: <20261118163134.2149894-1-ioana.ciornei@nxp.com>
X-ClientProxiedBy: VIZP296CA0024.AUTP296.PROD.OUTLOOK.COM
 (2603:10a6:800:2a8::12) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|DB9PR04MB11557:EE_
X-MS-Office365-Filtering-Correlation-Id: 41d2fbb6-ad49-4d4d-1d6b-08df461efea3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|376014|366016|1800799024|23010399003|10070799003|18002099003|22082099003|11063799006|56012099006|261102123227099003|261021121427099003|261022075727099003|10067099003;
X-Microsoft-Antispam-Message-Info: JABEwzxklnxKsEjAU3+f2oS38gzFEfV1YdkcM40K5EULw7r2vQoAl/A+HV/GoAVaa5Ht+1sbPWN0eNuq2shP4/F1NqG3Tf2BxGApmcpkqHEiE1wARmC8JLt4SUhthIni7KOD+m7ZhIsrFRnrAYC6npgQoGMTTMHa4EvwEu3teMVjRwq4WKBZuPA5VDhuVbeqyzgpz9Lv7tNp3d14egoyVlzPEI3ARZHnltrPpCqlhZM+NtzgI9lbPNdoLCjnPBX3z7bIpGqVUJhtwvTEo/Z5tHQ5Vwr/X4cdKRb/STvAlVh49orCRSP3DhV5YZhQua67LMtMycAl72EuftGundwUhAOd4AJFo64HD2HUnx+FDXBUDCOZtrc4UlDKoLKxxCmntj513cKB4lnIwtaSGjOZpa2AiJhw4ZOjZNAM3o233OEZPx9TmexTM2S031eyJhoFyIiNXJBMHPZOjHa6zF9ifrtEBEkljZUQOGApJ0M4Cq1Dg5lGqLu8mXXa2ZLgq632B8eXjBOjhZix1eakXDj9XggPIHni3P3UQ+7lzEAGVO6asGTvJewEQTKaM/wZIN5gje6IPwYqF9XhAT4vAiZQCEzHkQZ72CKuIVDQhXT3XeOJFP3Ffna/kPL3V4MA0tWdKfiagVMBcDMTesYwSkcgIzOYoxSLV72JWJJvGBg0SZc=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(376014)(366016)(1800799024)(23010399003)(10070799003)(18002099003)(22082099003)(11063799006)(56012099006)(261102123227099003)(261021121427099003)(261022075727099003)(10067099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Y6pQePIwrXf1aU8z34aiRT3/zuNYrgP8Iq5iwRGoNupGdcqWez4fCR7rH7ZN?=
 =?us-ascii?Q?4foOYsX57gypCKJvaxH5mDNLSnNunCVoCpa51HTNL//j6Q0DeGyEgLAA+EML?=
 =?us-ascii?Q?UvoquRgwUilrgK+8W83mN6WcPjpjqbz/x2KC3kkpXERhGAZhJIm3K4l8qd4/?=
 =?us-ascii?Q?56LV3hCOzDbC/d8UeQ4TmGVKYygC14hkEc+IMgvIEb7Y+FLeDXtQujNFRZwh?=
 =?us-ascii?Q?WClCWyig0UFciI1eoWJP0f8EoDAsgxqoEEsXT+Vh+GJp7ePKX9e8s6hJJdTR?=
 =?us-ascii?Q?x6/gH8Sce5NrSxm/z8kb3FLwt/v1ciaLRS5Kq/FS58fS+Lx0g43VPOx4SZpp?=
 =?us-ascii?Q?5gGeocnHyEzzOXq5RPGAJHff9vs6lD+4RVwKkmpZILVBdbHZ3voor1cfklOd?=
 =?us-ascii?Q?iu6dwgD3MFffCH17xuGqEmAQdCcQcqwUVfMUqXaQ/kJsWp+0mY+w1WEoLGgc?=
 =?us-ascii?Q?N4UO9OvBP85fVuRsff/T684ltQPlT0TYuy6nRm4mGIxJtdY6XVQsXSCFvubV?=
 =?us-ascii?Q?5QrvUJZ+KWDLuJInNQQ0X5DkGjU0AuBlGh3VioWaD2F7OGRxjKV7Ga0xCigi?=
 =?us-ascii?Q?N6mpOU/+uYva5jcJOgp1SiTqWf26CHaol94EPni07N42XSNsn3YEfATUXE1o?=
 =?us-ascii?Q?M3xgCnkbY+f1oZKr/7rIoaYEBFLS6WSAFXVEvWI85g4/cRKHFBP2P3tM2O8L?=
 =?us-ascii?Q?OFVuHjax0DKyo12gGOOWCXfR3mHULeyXlDHpzGQMOduzfCn0a+j9vydQeesJ?=
 =?us-ascii?Q?jWYyamRx0W12elQA3pSpavT1IFiL/32XOaZMO6b2r5QUCIl7kp/I9uXRWbjd?=
 =?us-ascii?Q?N08qoFguaMAso0VsBt1J8LFvUKbnlyOaLQdjvRrUU7bNdz+1qM0dJDAH2phS?=
 =?us-ascii?Q?xZ/UoLVtfLgBE0nAx5l/VQoJdqpSMEXWOnxyLjugAwUsz51R3Iyc4yurpfVN?=
 =?us-ascii?Q?VG/II6PCRTMqydoDibffY1J2ITIvr7hAwBK97PH+j6+zaW4yIVSrK3Tig7P/?=
 =?us-ascii?Q?VTrCcADfBUIEqIKJqcCGGGymWMTniPXUIZA2RrQ0p3NvZlVBWfIjYydygrl0?=
 =?us-ascii?Q?JITXaOlyZk2QuUOjF+/qky4/GA/wyvuYbFmVjFrsq1SpPxWcwlci/+0QgYPt?=
 =?us-ascii?Q?asvMq2KECEFYLY3vxN2BqW6TPmdjNnFx/+d+d/GKPLrkbeHNeFjnuQ8079av?=
 =?us-ascii?Q?tPBRxaTlgydRXRUfcwIIdNkpiMyr/KQMr//gIhz011+sGceN0Ier0gWc4Ij1?=
 =?us-ascii?Q?uVnZgCdf80D2Crn0bT/rl3e7m5t1FPvowvbbFJpVBrvMKBOjLFuKu57SM86g?=
 =?us-ascii?Q?ocqC6hv5/fje5Mja/aRooZ0Q9Fze9l6SVo20ScXIkOOdbsgsirCfYugKQRXl?=
 =?us-ascii?Q?HPznCfrgnf+FixxfkitRyN4makSbfHcz3NwroQovOo3RKNZrdTXiki9K96Ua?=
 =?us-ascii?Q?NVR7K82pg8dtlVKFzVvxilpIghBOnTJLHeUcttu2Zcndcz71uN/eo1j64Mka?=
 =?us-ascii?Q?4UedkkyWy3KnYrFR6yGVQwUYNRt1zbjEOB/WygWn5q7HvO/N2hS7GVkZlpA+?=
 =?us-ascii?Q?O6ovCqwLRNVS+WlCYSeJwwDjaCIVZzGBkFbwCi4Ymjv825HnI+OmGzb4E9/5?=
 =?us-ascii?Q?Rb6NMMmKVXXEMvSLpPHVR2fbD2/KwYWa6GQF9ieL4vGxLIjqIlx7E88kXgEW?=
 =?us-ascii?Q?quCWv575BSMdbtJCZVlzWr+1UsmR+iZbY15NlGiEoSaCSw7bwX66Dlmu1nCK?=
 =?us-ascii?Q?9PQJ8T4sg2ayB3//VRbf1hKCh4VRKXFkOgAzwFzmwVTtVAPHMxSKnbltLs/3?=
X-MS-Exchange-AntiSpam-MessageData-1: 8BbHD+UMLtNeZPjwW0lRJucaKVFkTZC6sPc=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41d2fbb6-ad49-4d4d-1d6b-08df461efea3
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2026 09:25:04.6556
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3j9AIGYh6VpirM4seSKYXDq4Z3+V4Ubb2qYEtNt2UOon7CQAHKQQxk+alUfrT5tPmP0VSjeJdGTunrZu1Oyw3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB11557
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_012512_853043_30924916 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -1.1 (-)
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

On Wed, Nov 18, 2026 at 06:31:31PM +0200, Ioana Ciornei wrote:
> One thing to note here is that the forwarding code is kept rather
> grouped in phy-fsl-lynx-core.c rather than in the individual Lynx10G and
> Lynx28G drivers so that in the future, if necessary, it can be moved
> internally into the Generic PHY framework. This leads to the consequence
> that the actual phy_ops with which the PHY is created cannot be const
> since the .owner field needs to be copied from the structure received
> from the actual PHY driver.

Have you evaluated the possibility to land retimer support in the core
PHY framework directly? What would the obstacles be?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
