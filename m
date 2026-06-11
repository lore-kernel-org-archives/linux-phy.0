Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A3CCCD98D6
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 10:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rC+LhRKxJwN8hM4sujgPBLFzRm0i+VqkkBkmP7lRzuY=; b=D41Lgb+6tFxsBx
	SdzjBmCOrdh906gv25ObzQ3x79lNImu+eQ+sYSh+u4cW5y7syhDRIlS3ue267y9ImoYZEVTo95kUt
	07uybDp0fkR+Gl7FtVbaUZEvUT+UioUkC3/t/J6TxkPIoz0KD8n2RUy8myQrDrgtelj2WYUYz7pCM
	WJYtvp9I6de9ecgv5ybgsFJv4ZBG9wg7WB1x9upLlYlES2WZYI6fk4hyuqoOH9ZzNwQFjWT/5UW//
	Nu9mXa6TPtov8nzHltJIALIsZYoGpVo19ixLz5FweNBnFm1Cq2fbBe/8u8EMjVKLHSRrbmTJIJxJf
	4Jk6wBv6sS4DhR5WVPbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXd0k-00000009FhK-46yX;
	Thu, 11 Jun 2026 10:51:46 +0000
Received: from mail-francecentralazon11013002.outbound.protection.outlook.com ([40.107.162.2] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXd0i-00000009Fg2-2cda
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 10:51:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B2W006knsDs9GGqixkkA0XjRNkZjShZ3A1W8ev0+weJV7XrNGwa6PlVs7vIko4GZxhE4i8XOME4XiI1EiUzEsOdH2mxvc8qi9JROCbVqwyx/0amIPu5wzJHJy09ykg9GfaGlIblHi5GZSieYljWU8JUNQ3WN5QKAYxePKzYQxZrrW0/ly/3m6EF3MQKtCo4dUVSCfva7vDIPJKwwWqg/dE+BUWKKxmw7vTsBZBllyM6qCIphnUIHG//a1zV/jtVIGdJ8KjSLAMNtzuLDLuKujj58dvViaNvxneJO2SRTSalQ4Ql1SoItFOe5b2+HYSAWjeRqp8zEvp74xgsu4ZDcbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MsPqIowo9/5GvhISQvVPjUjjnsVOYjQDiDOgNJLnBv8=;
 b=Dtlod+HQ8fZSwTZ41DOTAE5Awtc9FBevEPARxhW50QOyt30vuQoFclXVSgj/rZSmHoUMkzgMKoj0X103ggIAo2TAq0s+v5OOE1LenKq0FVfM5hPM7ChGnnHrhYJSn+vJNWWq18X7Khe9XeEBXAoxgVE4jwqw9+DewS8vDP/0y993n8/3vHVrm0t6lvh8gMnMhI/7j0mqU9RwPsr+uD1GjVf+NfenK0wHMJYIHrgIpDAInqLEmcDBmgEBRLHmw7DtiP63pd07JxcmibuJcIZissODZn8xV2jWd/UpiMJClpLxCQXv/3AcL9XQX4UeelSLRfczSlbmjMqPh7Dxc2+Osg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MsPqIowo9/5GvhISQvVPjUjjnsVOYjQDiDOgNJLnBv8=;
 b=j4hfa+5LBkSKkJq1+EBOZ0rqe3pAv7wKQPCu8OomMBvz1NdngDyfoMd0bpyXYOdZ3eIdcy8oh1oJbowMgx7aFEVWGyg/LrAIttQhqgF//cAx70urAZOLliVohZjN2Ae3iii9gy6BzkoHKV/91Ee4GY/JBWKW7pMQbG9zK1E167z/FTRckslRUHaWlroO9zmKYGkfYFwWrYC7H2sKVga/DZYlIu3ZnAQSEwraZHfe2n5tiFo+lhMgKFDCXLz8fwnhZz/tJtOzyT+CkLnXP8R6YUsH1M79t5qWsvRNJq/H32pkSKgzmfb3OtJ4CZffbkm/sC3K2/qWO0CzURScCmYbtg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13) by GV2PR04MB12293.eurprd04.prod.outlook.com
 (2603:10a6:150:32b::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.17; Thu, 11 Jun
 2026 10:51:40 +0000
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd]) by GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd%6]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 10:51:40 +0000
Date: Thu, 11 Jun 2026 13:51:36 +0300
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Tanjeff Moos <tanjeff.moos@westermo.com>, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 phy-next 02/16] phy: lynx-28g: reject probing on
 devices with unsupported OF nodes
Message-ID: <ieyuc47drsdw7w3bcy57fmza25cq2qf4tjei2dmrjgina23iiv@uheuaalep3vt>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
 <20260610151952.2141019-3-vladimir.oltean@nxp.com>
Content-Disposition: inline
In-Reply-To: <20260610151952.2141019-3-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P190CA0020.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d0::8) To GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12290:EE_|GV2PR04MB12293:EE_
X-MS-Office365-Filtering-Correlation-Id: ab56b347-ae52-487c-32ac-08dec7a76ad9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|23010399003|376014|19092799006|366016|11063799006|4143699003|56012099006|6133799003|18002099003|22082099003|3023799007;
X-Microsoft-Antispam-Message-Info: yhwswqOLt0s7N74R7KJFpEE7vzOLAvoe+Ns0sH60+Oy4Ny6yKhV5cJTWu0m+yMeXqzLHvMoA49dzssFuqDPL6tECFePG4WKOMXMrw3EXifdPVR/laZn4DC645P4e3LU7d4rZbeL/fIYHkj0v3Bd5cbgX8wHFiAp8VHefeNiTKSQR14QGehVHZCyaVvO+2YJ0zEe1QSD0l7x1bHH37ikn4VEW3uFP7xKod0bvFXrWedL6Q5h+AAQ880OsqPrld5ylYv3NvrywRGIsthB0MYgKlYvhXcUIWn7i1hh4IAyqW8+UJYnPE2wHGZkgw1M28wVtCskb6iZ8hj7+vQOew7pGdwFK63vdwJg0FnD3qzRFQbZIRqjVF52qZSUCS6/L+gfZ+F+Auf84uI7GxBD6FYOtXRaW5BFnSupQERkrJtydiqkI+BIDsYFv1VDwlQppSrDHWilSHoi6VpSpbI2pVftSBOVbVoIEHhbjSu2hC1niEG1gL5DYruPkAqmusoj7MnlSXRyIYU7XLUPmXvV8oV1LaxYSRZlbKt1YNOafXgU/MtBgBPpMezCZTUkf9rbSNxeT9zMmLPuzHzqF5vVP3q8JsEUL5DiTo0LgJY5cOibDKtaSG8YFcgPtorFcmsHltrnMR0hGMuQL6lyUURAUotJHoB8k23Fawp99s7ZADg2vFGoKBBvOxLrk4/Nsv/BQMgia
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12290.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(23010399003)(376014)(19092799006)(366016)(11063799006)(4143699003)(56012099006)(6133799003)(18002099003)(22082099003)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QN18jYj2b1nxBo3eccF5rPejr6+1QYrCvLptXSHuhiBwsc15RvOjvHzxz95e?=
 =?us-ascii?Q?A2eFgqGbAjhtd07ROMaTwK4k6ef77/GDov3RMZAurH4WCk9roYq41kLZhm51?=
 =?us-ascii?Q?J4Ddq5ZI2XWczK7SG12hm5MSD7RDr4JJ0vcAMxer3h674zRJEwgjFNftbKnA?=
 =?us-ascii?Q?BnDByrnQXMUyozs2CaokQ2ioWrrstSP02vK1aUAl4AQLs59xD0Oqe3FPFCTV?=
 =?us-ascii?Q?1Azs2hl6g+1qFTKzkMdIxcblWgeWJ61SyZwGcv2yzpxtnyGsgg+qKR63IzjP?=
 =?us-ascii?Q?Pj90NrQ6b1Mg2xNyLdvhul+Fuq3DwPRibWPapxY3TctuhlLCNAvD9wXMFJFb?=
 =?us-ascii?Q?WB2yIIvXnzgfFaoTkF5j/Znkw/IeRm5iSKFkqqaf0XaWG5128tlEnj6IWWoK?=
 =?us-ascii?Q?YIEhrGwCWYb7+k8ew0C+jl5KDwu8fQkZUKANTkBQRqMiETHWVC0Sn5AR4Ehx?=
 =?us-ascii?Q?Bmhvca6CTdq3GqdXIxJ5+CGpDXCb2xOxHPoVKBQHVC7+qqIOyoSM4MemT1/c?=
 =?us-ascii?Q?vwLEm/3o68a5RRhSKuN+0S1j77RKdOHXV2b5WQPe90suIjSWkRf7D2teJ5du?=
 =?us-ascii?Q?cG4jDTxELOdWTzpQ9CJ1j76OYHymv0xv6rn+zSaEIBFE/7T4IuWcqjxeQQlc?=
 =?us-ascii?Q?HZfX+XazQR3LXOHJdeA17zXEtcVoq9tsvqYVG9gcMJWG7Rw8S/1qgYBDnrxA?=
 =?us-ascii?Q?WgXHgC8sPQrXHa/IsN+dXr+9I4+NBfT8trTNeg41qPoVRpWVae9U0pm160W5?=
 =?us-ascii?Q?6LfE6mInv8t9q7RrdGQC5hvWpQFXSHMApwGo33Nrty4SQb8BYZQWbeSUSUTP?=
 =?us-ascii?Q?ib65aBj7nB3vGBvpZ9w/6CuZ5+sN5peGSOVGjkMfDWUFOqcA6oax5CWFAY0H?=
 =?us-ascii?Q?IteCvyycM/LQWezwk3vg5ziJnTWBwFjwm2T8kYjgnmFWgxBJeIN+DmyNFFTp?=
 =?us-ascii?Q?y8MtsLqigjlxkWpBIyW0N+p1Ba1SQGGuDJIb/xe/2S9NlVTdXbAJJN/vt68o?=
 =?us-ascii?Q?EPXY9BE6AQ7V0i0w/q4hc6xTRopVe7jUoanzOLVf4puDeTjdt0vQJEV8Hu4W?=
 =?us-ascii?Q?FL7tcdzXX7kbR6fmVf0bc3jHfiyj7gUGWpvSR2SlbwksLczeVXaVnB2HHnwx?=
 =?us-ascii?Q?s9Ln130Kw9CyP2k5I1dgyi3f4hUSDtJIu2StD6BVWw4RKCzBmOquiB8LBNpW?=
 =?us-ascii?Q?ItfUWhKnzWn7PTcfIwWwuhX6wMiUTXBoeP8iYzuYGV3aa/rUbevDbKECkkSH?=
 =?us-ascii?Q?2QnQ2fS1ol646nsQ0yFJX9p5JPiK7FVTEHQFLPyDhGuTJKMReAzcrdb/lApY?=
 =?us-ascii?Q?WNlAXSkWmf4dVoO/xM4d+QBxrMAtO2Vhfgrad5bKxZYoF+xfd33Se6BvSiz5?=
 =?us-ascii?Q?ntozo2lHroyTNOwCccwSIkPyRUDE5bd60IUyG1tMhqvZGthvID7hI3hdtcXI?=
 =?us-ascii?Q?38NhgkY048pHLhXow/QKcNJggwYb22Ag2NNjp1mylpeEleiA7I6qmCgXPo0l?=
 =?us-ascii?Q?d3wdHGT+kwLaRts5hUpH9TaQREzE2rvOyDeL6Qx/IiMF2/Xro2K+hr45FrUv?=
 =?us-ascii?Q?4hHtsr3wsqBz5zTykXw7FiTUPwA84FCrqY/dvZcyEEOK8VhfnrdpjiIlxFzJ?=
 =?us-ascii?Q?wLA4X3MfAZhw9sHvCt2SHp5joLkcmtNWshy22yLXK16czWDpc/rYpPYQPo1G?=
 =?us-ascii?Q?ciuxhGh6KOAHo1lMrMJgDXIG/IGuZ5gyRwpfHOtEFprHHBgrbyFFesjowGAa?=
 =?us-ascii?Q?IhOAl0Yg0w=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab56b347-ae52-487c-32ac-08dec7a76ad9
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12290.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2026 10:51:40.0578
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ps0G+50xPKZ9JHXNvbLsAxYC5g+NqhT7qHYxE/mRRAFDCNejpWproz1+PmqGTqNY0wZxV2RBhbQYw6R82qz1jw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR04MB12293
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_035144_668622_5C67EE67 
X-CRM114-Status: GOOD (  17.23  )
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

On Wed, Jun 10, 2026 at 06:19:38PM +0300, Vladimir Oltean wrote:
> It is possible to bind the lynx-28g driver to an arbitrary device with
> an OF node, using the driver_override mechanism that is available for
> the platform bus, and trigger a crash this way:
> 
> $ echo 1ea0000.serdes > /sys/bus/platform/drivers/lynx-10g/unbind
> $ echo lynx-28g > /sys/bus/platform/devices/1ea0000.serdes/driver_override
> $ echo 1ea0000.serdes > /sys/bus/platform/drivers/lynx-28g/bind
> Internal error: Oops: 0000000096000004 [#1]  SMP
> Hardware name: LS1028A RDB Board (DT)
> pc : lynx_probe+0x118/0x4fc
> lr : lynx_probe+0x110/0x4fc
> Call trace:
>  lynx_probe+0x118/0x4fc (P)
>  lynx_28g_probe+0x54/0x7c
>  platform_probe+0x68/0xa4
>  really_probe+0x14c/0x2ec
>  __driver_probe_device+0xc8/0x170
>  device_driver_attach+0x58/0xa8
>  bind_store+0xd8/0x118
>  drv_attr_store+0x24/0x38
> 
> The crash is caused by the fact that of_device_get_match_data() returns
> NULL (the bound device has a different compatible string) and this is
> not checked.
> 
> There was a previous attempt to avoid this in commit c9d80e861034 ("phy:
> lynx-28g: require an OF node to probe"), but the mechanism was not fully
> understood and it only covered the case where the driver was bound to a
> device with no OF node.
> 
> The issue was found during Sashiko review. Elevated privilege is
> required to override the driver for a device, so the real life impact of
> the issue should not be very high.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Ioana Ciornei <ioana.ciornei@nxp.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
