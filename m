Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E816E7DEEE
	for <linux-phy@archiver.kernel.org>; Mon,  2 Feb 2026 15:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7H4fZRQmTIcR3tLUCLTcke0E6PRswaDh6usvBzR5sio=; b=xZJXV3zjYmKJ+Y
	pZwgcZaiN6hz8LTrWL+CcSxxJTGUCAbyuBrlvz6nxKL4Qhhx+i0mYXM2WYFIUithR5Gb1DLipo7uP
	7AGXJXjj6YCUYR+vCygs1n5T5JHnVjNK9xIuGIg8Ek45ePcaNY0TUECH57uoeTjZeGcBY0K9+0S/4
	J3W9OfTbUYxpCIJWORdGtb8xfTTyLhvL6KDVHyEUZCy9GGvwaXVbZ1VBpb96ojwOvQgnSk3UCiYW4
	EjdLVmoVBN0lS+nNXDQuVlkA0TC6QaLQ52cawLnoqJuKt+YXvnDEDj+V5gbxiNcw3RrIMHvCSsIm2
	sqBZpDVYH+Bw6YlzHkfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmvSW-000000059Qg-077G;
	Mon, 02 Feb 2026 15:03:24 +0000
Received: from mail-swedencentralazon11013042.outbound.protection.outlook.com ([52.101.83.42] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmvST-000000059P0-2s6Y
	for linux-phy@lists.infradead.org;
	Mon, 02 Feb 2026 15:03:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gci0rt7k7X1Bka8bfKBVd97GqGHzbWAo55tJdjvVc5lzsfDyvzCcoM0ga1lkWsWy+I2Quywti57Y4of4l8FkBo5s8XK9J1anBivjRfimIrTNsV9OJGQt8zovL+pExw+yge8BNr4Cn7l9Ua89KTgP+f+Oog+lRxdigodsgPv+Ggf6HGOrfAJ+UeDTUz/AXSyDY/3gq5AzgvPSDm1Wpk3KhpsGtMJ0BYdx4rIYIUAubTHmc5c7vbQTt4ljYIdZDpuIkrB7uzy3DAzgbjwCKHjG6OCZe40cwtJRi3vRBsJ2caVgUYluIwJJIu0kPseweWqzov6uh1y9D/1jHlWi6NhJew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5/oGdo1AkPbwRqV0nWKjK/qVwaohFgomN5GCFv71QVQ=;
 b=ch7ylyhGYhi/1GrfX42J9NXZJrjFRcU4OEZGdcd3wdREggEV/e7pwgsgwqGfNOpJrIV1L7S3VkjA3a3lD7P7H0f0QBnki8G9tXA6jL3Wk4c21rbKNlhge6z7ln674E1UCE2PqUdJ7vkq78O+nKlPmX30MeQkvyw4QgNDIzUPVMJkTe03AkgveINfVvB9XjMfPC1t4Wgt3Cf8aN1VVoZpmXAIhBP0mYHkt44xt3+hFel3X7GYKSm7Po6elpJ+RLzFqhCzymBnu7kVY0G6BNBF2GQoMvf+1tWpko2+0twZqPJeOD2OB0jA7v0XpjzdGpscluS+D0vtbm9aFjaFGwY6rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5/oGdo1AkPbwRqV0nWKjK/qVwaohFgomN5GCFv71QVQ=;
 b=TfLuuy2eF3419kFAFhnTSQVWwe+m8tsQNWE8Q5VOtFFwVRvcYIC1vebH3zYSsj7Xvih09RDRV1+JnznY5MZgXTXqFCL1EjTTUco8npayNmpXJCw7ejCK1LbIuLafaDCV8NLpKDyUq/3DG9POF5jq+inYLW8GYreHeoAgfu3RbNtpaY6XNP1TG0RnLHTb+ykpSPMzodUeoOE+MreweTBzCnLa0jRGOHdkqqMsz/wzcFbEcgpzRXx2LyVncx+puBCwUqJcdCdCQjUpIvsmDvi2sPdx4H7Q/kVNVbXErjegvGebdmjddmBFiO+C/i3XCqxP33tqJNnojzrNw+g1ogl2+g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by GVXPR04MB10072.eurprd04.prod.outlook.com (2603:10a6:150:117::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 15:03:12 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4%4]) with mapi id 15.20.9564.014; Mon, 2 Feb 2026
 15:03:12 +0000
Date: Mon, 2 Feb 2026 17:03:08 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: netdev@vger.kernel.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Josua Mayer <josua@solid-run.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH phy 0/8] Lynx 28G improvements part 2
Message-ID: <20260202150308.d45z53mhvent664h@skbuf>
References: <20260114152111.625350-1-vladimir.oltean@nxp.com>
Content-Disposition: inline
In-Reply-To: <20260114152111.625350-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: VI1PR08CA0214.eurprd08.prod.outlook.com
 (2603:10a6:802:15::23) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|GVXPR04MB10072:EE_
X-MS-Office365-Filtering-Correlation-Id: daa11ed5-9b63-4b23-1c5b-08de626c2ef2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|10070799003|1800799024|19092799006|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?bMMSv4mKYWM5wupjNsohdAS+Qdm3P1acS7BBqic9qDANVDfSmK7lfkN8A8Zn?=
 =?us-ascii?Q?A+QhNARd/qtSKU+p+HN66UPR2mukIYYs3yDrRA5GNkdF3t6H8nzUpGlcoFIQ?=
 =?us-ascii?Q?YpKr1Oglq7dX74msb1NrI2MPR6At6YVk2zHBpGSRn6WOfK/rf+Eh8rbmD0wS?=
 =?us-ascii?Q?s/2C5FMlY+Yaca3F7Zr4QgWK0odChA7A8BzuZlaYwugVpOl2L7SLZq8RvoT8?=
 =?us-ascii?Q?ic+W6DEgkHPWEONo3HVdz41UejT8DpBuj+6u8iysHW8uwWPq1nWiI6x9kzmb?=
 =?us-ascii?Q?JubMJMAD28bL/5p0I7CR7IkeQ+d856gyv5tndP+nXmjvCzNOGfBfybQjxb8P?=
 =?us-ascii?Q?F4P5qb6105GcAjrqrVnXDCv7R6YIgR9KKGfMjlTjrChtHXiZHHQEfvpg6Fd9?=
 =?us-ascii?Q?mChqYxHU+UknbqZ5MlE5oas4B6vaobrJ8m6VSSOgM2hhl8zCS5roDDNrpeDe?=
 =?us-ascii?Q?BOoy/Ur0GraJAIk9M99/hPLnwyyld82LEZIaW8wDbyciDTGG1CUzugq3Mipj?=
 =?us-ascii?Q?b2Tas16x419kM6KdAWsUky4cjyFCvVOymruCvsl2VcW5BhRkvooNNsUxQfd8?=
 =?us-ascii?Q?EvrcDOB7OUQOBxokGpMDAkduo11AYeXIljujr5/OD5xUNUCWUp+4zaF/25Nv?=
 =?us-ascii?Q?c+NnP5I9i7FMmBqdwmxd3bZpMWiWb0hHRJ/e8sX7g39OsmKcTAhaJir29qfh?=
 =?us-ascii?Q?gTXahiw7wt1tg0z8wkP1tzCAt4AGiyd5Y+xduAeGWfxO5eV3C9v32B6oViGP?=
 =?us-ascii?Q?bkGWGAmKYMKpX2Y1aj/HCxMyRBmKLhGMw+0OZMFb4NdPv0hZpyT5NFJUWtPN?=
 =?us-ascii?Q?0tt2QIU7amqAWQ88spskda8B/IgEddyY81WzOH6bUgIEhJy6Sp3nt5I918Y+?=
 =?us-ascii?Q?aqGQu+aRV9usihoXrEtY7+IDbJbWr/8ti/wOWserkZAKrdr3xdGr/P0anpTG?=
 =?us-ascii?Q?wFDMUnL3f9lRGTkAtskNZTYX1kp9tjAxvVd5ZXz6Q6Oj1gPRxTGNXFJ7NWz5?=
 =?us-ascii?Q?lFJzYy9go2+5GHQQN31Z+wniBqViPyU85ik9I5hwYXMdKaU2KjpWQZTiMOFS?=
 =?us-ascii?Q?+xfFO6yIxyPNioEwz8quVxJqZP9NHf4nNFvUDVp47LsjpjRaumubLYUG1SGT?=
 =?us-ascii?Q?YYSJq+4OyAhIJZaPNpcZjikLx9UUnIfccW8DdrjKzOJvXGdYCyyC0nuJqtXi?=
 =?us-ascii?Q?+rcBVDzOq8kekT+ATTRGSQHJ4TpynrFUDDX64DfXpvmLWSK3kBDxiwnqUGdB?=
 =?us-ascii?Q?VuZo+nUGM1Vk21p9ZHavKjqgJWnfYHsdgNBb4IMqDoTon1gsGWoRbuqVKkpv?=
 =?us-ascii?Q?S9dQ4RjYptQ/AYundxt5RaB6H6xr9Xe7TaPByJhc4ewfG+z05rWFJw9lZ8CJ?=
 =?us-ascii?Q?Kbp4b/eTKGumCnnzTFMbfRxDPfwuo+l6jjkZJE6WJRzqsEm1bTCklpIb3VTA?=
 =?us-ascii?Q?FRAcYCiSrRu+Med87gcYI4pW/R3MXCY4ifULE7IaJ/da9+IQ2bfTufm7OwyB?=
 =?us-ascii?Q?2k5Y3/Xmjjx+5p+nOu/BHQ/sIJFvDGKTRkRsTheHLnfEyL6mEKIo8nUyWGrH?=
 =?us-ascii?Q?aUhP8ERAzChmz/Fg0LJ8EIRG3HYtw/MSixAHOGzS?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(10070799003)(1800799024)(19092799006)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/DD0C0m4/gDTdZraOyF8tdPztl/9raYPeXVTNZUCPK5UsFK2xHrArnf7gzp0?=
 =?us-ascii?Q?8AcvkNSDppJbzxOjehUj8yKzHzgmk9yt6QQRimmOuYxPF232sUwXZRzZQCkj?=
 =?us-ascii?Q?ijY09/awGq6MhzhAs9oN8Edg4nX0tignybMDubsTH+u4BKSQE/4kPxPsJQDm?=
 =?us-ascii?Q?tuCNOXwjJtLygRpftIPaOBD0QXCHnQtybr1wiBUNOdAUDMkVux7AfOz9UH5k?=
 =?us-ascii?Q?Z4MExgeq99ABS8EKXBbScjWAzOc3Ro0fKzM1gc5HL4sEFrAXSW0tCwzmT8sD?=
 =?us-ascii?Q?M+LYfpdXbEz2uYS5Qu8gu5JnIxH9yUkN3b1xxP7753kFfmkOlAwBebP+uEDB?=
 =?us-ascii?Q?i8HCE+iZ2FxBV4PbDIC5Yqh3fR/pN3xygSDmnGDX6OdippvGbRnG4fAzM5Kc?=
 =?us-ascii?Q?5zx1wcaoB1rAPDCN16pL1eOO/9WiS4Cyp+vR1cR/s07YroxK1OvVbLWDo5oJ?=
 =?us-ascii?Q?yGP5vCSdSYkv1mHMnmO21hQ5K/Esp3wX0oS7ItdxXAye36SsIZVdJXFTmQZQ?=
 =?us-ascii?Q?mj0rWXsyLhy+EbGfAeS5Tt0lDSYcrBcX0Tv4zJMeNLNrTKcHEnULya33JSuX?=
 =?us-ascii?Q?s9ndRCj1Mek8w21srssXWfNwAUGoF6AvyGA/qTeCmuMu3a0uFV+yr3VTwL1G?=
 =?us-ascii?Q?oYTcWP0obInHdH+HhBrBRDO/TGJlrnKEBF7e2ryMbD2o9rRJeP5TTWX8erB7?=
 =?us-ascii?Q?TbZ7w1eojNU7/o++ODsMXAbM3HXsul7E/OSOUSjNiakBRV5q28xfVDX3Zmkh?=
 =?us-ascii?Q?jLHgdi0HVT4GnPh/NySGdgyi/gNC5J32ut4IBYLXMo6bOf9gFyWNzpXV1G6f?=
 =?us-ascii?Q?OMeTFehyNsriL+C46g5Pur5BfW0ENkHu3F5Mp/zOdcxjQjiR66WWxYp+X276?=
 =?us-ascii?Q?85J5aFJGjYQM0rvWxP2w26Wx7DKHwBzq3yLJ0Kz/R+7PEog+ld505USBWElD?=
 =?us-ascii?Q?Y9A8ukAs3aiifXw10ZH5kN9smWzknB1l2PEAHGGDLaqa0J7Q2Xzs12gXfhzZ?=
 =?us-ascii?Q?8mGA9x6GDUhjvOuQuNIDMbqX9Ti/xR5AFu/N24hVpBMEfPZHMpCTXsF36+iD?=
 =?us-ascii?Q?zXCFqpUpfN/hYBNjB9+PaLIaJrPypGToxrQjqA/1ia87lx/Roc5fNrXdbTNo?=
 =?us-ascii?Q?55MiQpghQsJf14p+vOk+XNcEaVcuomQAErKz7LeK9MuDns9pHd6ID7eCfAGA?=
 =?us-ascii?Q?tab4ON22hFiweJGtmkcnRSRkRnebrD3rhcdewQE7hGliRjbKDvoCKHnQFY9O?=
 =?us-ascii?Q?UQMzdLL/h2y1F5Tzj8oMEOunsmjI7keGT9XemPvXRyJpayYHGoWOFirFxBVo?=
 =?us-ascii?Q?rQhsd36If2830AZBdGiE/oyCrNziLxHbGTmk9jjBSep7sWiNorxC9gQasiVi?=
 =?us-ascii?Q?s5S/ivrwtW5jnJaAUHoRu8l/IDbwb2K8ZcsZYlo2Z+DaeWuXegyqu8tRVKyx?=
 =?us-ascii?Q?LtdRBuoaUyOGf+RGlmWpg8wthI/SX1GNqeFNojokeZ2qU4EIPL8Es5cu/u8E?=
 =?us-ascii?Q?tJCbpvBQI+oijbGj/s9zFig/9C7tQv2wHnwa6sNi0LrRH4Svh8w+zh/VN9fq?=
 =?us-ascii?Q?eeLu2+iJ4Cf8InpnCwjNFjXQNUEccmkRCuDHENtUOxO7ze+YLClxD06e3oqM?=
 =?us-ascii?Q?EUJJ098X7Vip5ME8pMp6Ka3DUkvo1nA5j59ocY9PLnCBqtR0EdVBnf0Xm8pO?=
 =?us-ascii?Q?vfzu1XbIWT5IF6NDaaXRFvaCnnrkMbwFVAbl5dMFec+BV4aXK5/lTQdSbqAE?=
 =?us-ascii?Q?Enay0mj7AptnDy43uJpmHxXE5goXrUyJMQ7/PiLQ1HAIJoAKjshYngIf7/RT?=
X-MS-Exchange-AntiSpam-MessageData-1: tv7HqPTsnHuw+Q==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: daa11ed5-9b63-4b23-1c5b-08de626c2ef2
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 15:03:11.9285
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Kzop6LEQTlOJDVC+DiJQNfE0VqbNCv4qLqHImSEDf1tg0374+c/HydVzesx79QXY9xduA++EQoIPWOx+RpTelQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB10072
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_070321_921991_4ECDE82E 
X-CRM114-Status: GOOD (  11.25  )
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

Hello PHY maintainers,

On Wed, Jan 14, 2026 at 05:21:03PM +0200, Vladimir Oltean wrote:
> This contains a number of changes deferred from part 1 (patches 1-6):
> https://lore.kernel.org/linux-phy/20251125114847.804961-1-vladimir.oltean@nxp.com/
> 
> They are reworked in ways detailed in their individual change logs.
> 
> I have a special request to linux-phy maintainers: after merging, please
> provide a stable branch/tag of this plus part 1, that can be pulled into
> netdev. It is needed because phy_exit() calls from consumers would
> compile but would cause a functionally broken link, so we need a linear
> git history to avoid (temporary) regressions.

Given how close to the merge window we are, I am dropping my special
request for a stable tag. But can you please take a look at this until
the merge window opens? It will simplify further development to have it
for v6.20 (or whatever next release number will be).

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
