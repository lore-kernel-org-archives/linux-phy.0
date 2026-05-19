Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32575CD4F57
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 10:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0EauVYAoxb0heE0SpKZgt+BFkoW48CgM0jbh3DIjLY=; b=unviyETIG8Qoe5
	ulihgsT+5aEcfHJhDYRbfRL0WQyWfuTm5vVgvAhilN6mMvt43liBjGarwNN9RVXplaXlyXkgxxYwa
	7QoSPCzmAX1dW8YymVYAN4S6jK8cmUIBchZQWN3iBsHRNGYA8911uEc/rnHlLJ6bRlw/7YEgetKHJ
	6znCOn9h/dGAmXZ9LP6hjjkr7lNzdUUyGWGI3U6Vz61g5tEY5sa90rN1wnOAW51NufbHcd6HrUqnC
	WEsBn3VvdhCTV9inwOYo8cKT69aS/4b8Xx/sZY6wNAbISl5MADpFHGP15w9xnx9HJi/8prQYOXNAM
	+k1tO3D3tzLUP8IsB76g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPHoR-000000016kl-416M;
	Tue, 19 May 2026 10:36:35 +0000
Received: from mail-northeuropeazon11011004.outbound.protection.outlook.com ([52.101.65.4] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPHoP-000000016hS-0Ue1
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 10:36:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BbGDnOY3K7+zQ//qOp015kjgC9QTWx1BjF18trjjmgpid899wdXqdgDbUTCUHHZrzXqCm7YioI6VNqVYKRD60kEDtj+7QxHqbLc7a4FuyGKx5YqwzSvVMmuMGqY4tZY8GqSLvxBxYHf4c5E/g0yozZb5IJggt7+l4l/LemXClxnIbDDQykJgDLnSwfK7/ZyzWOgoEJ9AwblnD334Ry54YPV24TgpQ0BS5LhJ6th49b/R1VTGlPXnftByVWOxKhX0VlDt4lfI3v4UXwbcse2eU0hgUl9+ZjLso/y2pnftAdO8I8m+hzH3AMlHUgnoYi1JoFFZHbkTBbVud/skwlOsxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RqVWQmYaO8TjF/MRoWhf7TErQNBajvLzKWKuR45gH80=;
 b=NQBwUYw/8/GPnVFBNohJkAF11KyR2VmYKTmG1CLycgibf4UsHQEmwTiinziBD2aSU6KBk9HUPw/hRlPZtPY/X2uWCU5d8aUAbODnW1qCVhrXssDkFoN830RMmuxttklCMLB2Y8Vzn/bkonycre8q3323XwXf2IVcKW7ghzZeOIrtSdPZLvHHOVKXc1TUeZmI6o0/LteMNT3uDYft9aWuWOUkHoWQntNc5WFEks54r2kTkc6mbBqKqPdOB9qE4+tcJk8IVR5BDNNDkhqSD7iHx0rrGbLUh2dTxK6c4X/ZSymgKt8lue3IhzPMfwUdqxdCUi9GxWZ+gybCeIxSkwzKcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RqVWQmYaO8TjF/MRoWhf7TErQNBajvLzKWKuR45gH80=;
 b=burWSUPxsHnPtonS0X6LGCfQMPmAlj2ruw7Ru6LijsX2UR/I1D3r7Ox1QYeNfb51KvvLAG5oolB1AL165frH/5zqHE7c9l215FIRrwFEjfiu5n4NJRD0gkMcgzwVB+vZXdgqC4mXZasVzHPM2p4k4s3dq1udtuBdZ50P0GBrbJ0Z5rlAVVrIH55Mk3Vg+nHpGtRmg+eBsb+naVhtVMULU2sJuF4d1gh0s/I3mkAR6W2pgMwRMm6d/SNDuz5BXx6jOgoOuR+pGTheUwgcNEXUt93cAC5p7CNk8DHdhkQTKhbWZdm5EwSvZy+GR44xP6OdeWPqrhFv4z5VW6adetKdtQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PR3PR04MB7402.eurprd04.prod.outlook.com (2603:10a6:102:89::16)
 by AS8PR04MB8532.eurprd04.prod.outlook.com (2603:10a6:20b:423::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.24; Tue, 19 May
 2026 10:36:26 +0000
Received: from PR3PR04MB7402.eurprd04.prod.outlook.com
 ([fe80::4129:7aed:b5cb:b13d]) by PR3PR04MB7402.eurprd04.prod.outlook.com
 ([fe80::4129:7aed:b5cb:b13d%5]) with mapi id 15.20.9913.009; Tue, 19 May 2026
 10:36:26 +0000
Date: Tue, 19 May 2026 13:36:22 +0300
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, johan@kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 phy-next 2/2] phy: ti: add PHY driver for TI
 DS125DF111 Dual-Channel Retimer
Message-ID: <5vqg5beo5wsnjaz7vcq5bgnku5x2omhzgm52hrl2ej7muemkwa@fsvpn3zwklvi>
References: <20260516060309.2282592-1-ioana.ciornei@nxp.com>
 <20260516060309.2282592-3-ioana.ciornei@nxp.com>
 <agnu5Mmf_d8zvWXH@vaman>
 <fkosq3es6lqzabowzpppgsal4lhctb4qyr6ypmazm7vwekd7ix@elffqa6kx5jp>
 <agw8GeTLAZJ8XU8-@vaman>
Content-Disposition: inline
In-Reply-To: <agw8GeTLAZJ8XU8-@vaman>
X-ClientProxiedBy: AS4P195CA0040.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:65a::28) To PR3PR04MB7402.eurprd04.prod.outlook.com
 (2603:10a6:102:89::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PR3PR04MB7402:EE_|AS8PR04MB8532:EE_
X-MS-Office365-Filtering-Correlation-Id: c27a16ca-1195-4ce3-bb36-08deb5927ac4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|19092799006|366016|3023799003|11063799006|22082099003|56012099003|18002099003|4143699003;
X-Microsoft-Antispam-Message-Info: y083aoGimjxHtaqQBr7ccU84jqrVwLpDA7yyP0hliEiPfXg9QpgtnalwFkgOiCcwKY7ZhlT84+11JeaFeMjK27XozP5gTOCgxCcvTa80P+pihuFoNiGmMMoPmSLcGp80oqPKElsb8ZxrVNdslNrR/r4FBrNCiNFQoN6fCct1N2ozFPbey7K0jZwKJ7qnOynN6KFrV3iHeWNflHMBQa+zA5ss3jaBcZQ6HiAs5Aq4TFn6+6J9iuwBcQdO7WLT8W/33tuLVduDnuxQnraffVl8wUxx5cLpstlEVwJyoJtl2Hp83vHsYb7BgfOTKPaNXsxLdjH83VlQecKPbiTzNN00SnLuuCM8UqItY5S2f7GvxUoZEjPZtM1sI8pHJ94GdtpMeUruzH6SOXa4kqRTOPajG1bWgfBh4LUcnhwlXFsLcNL8HcaWs6975WAIwJRXgKeqlHJUMePlWcAj2K6z3rn6kkw7Jlr4E4xJ+JDgHB/W0Tn+F30guuDcPDsCWzOmF+UzTcOXkkzxxrvEQBQYz1vRtHYKdqJkUG8io0Pten8YkPci090vg9Y2ihTZY9CW6Giu/HPTfX2YaoAtET3LTCrrxBeGFwS/ekdLYqVNuwe5P/v/zMap7ol33xZLhduFhyUqd3xfap3jNz4+njWUVRx7eTkIGfNQO+M2TkRijop+dR7+GvrusAlQvTBEhplGqslkitjs5oJaS5BCwfaw/gPX2Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3PR04MB7402.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(19092799006)(366016)(3023799003)(11063799006)(22082099003)(56012099003)(18002099003)(4143699003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xWkpxFl8RfFzT+IEL/Jxnj5yGmIuS6h2SREU0TfR8BLSYWCsi47pICnPcX+J?=
 =?us-ascii?Q?icM+ZTFOCUZnPG4Z8xNSsKEMpYRh1a45ngYjBg3JGOZNII2nIT0Q+LrnDrxG?=
 =?us-ascii?Q?dGgs2anoCOswiHsuXJbpNSig/dx4gVmzz8lxWJRWJ+4nP7izLyoF27EBz887?=
 =?us-ascii?Q?EY2yP7mHn2BTijhm0t5XAv37A5KZqTCHulDW+oTnkaykHYMcM5ITduj0p9ZF?=
 =?us-ascii?Q?XUaEcUtKa8YtlqP1kHtMSV5KUWPfBCR1rIXz7PvpjNpBsnbLs7Q0wPWuhcXQ?=
 =?us-ascii?Q?SeKzZseX9BvqfhhO44u8/nRIf2rrRSADYjF3C54Q/9xS3ynYqagpCr0WnPJq?=
 =?us-ascii?Q?bS3lljEV8F1afXjdv7+eIcrP4z7fKro/YAZ1oGTrvUHHr9GNuBGhC6RBB0B8?=
 =?us-ascii?Q?NaAFpKaL7Lhx5yV1r9ZAGk428MeUR1k7KIsBixd2cMDdQoDRclDxJFjOP/EA?=
 =?us-ascii?Q?jPREw7/kko1GMsrvpcu6P3LzWR3bkoaLP6bNzVAFr9ZB/zRzYeOX0aBwMmNl?=
 =?us-ascii?Q?Lixg1sKEJg32pKvup4YU0qiwAXSf/NqtC3BCgCMhT9lWch2F6pI8bYyxmy/i?=
 =?us-ascii?Q?AAtTi4FpqWESoTxA9Ijgv40VsacciXLOYhlZx0RigaBQCgy1KyFGguAGXeka?=
 =?us-ascii?Q?CDtmQh62zFItgY+jYIukxNEvwjb92rg4/Ci4bYGmgP7ociwhHgnP69S9oXvc?=
 =?us-ascii?Q?SbCIoNJf+kxYXRJz0n9Tgv9nyz0UML+g2gJbnKiGXKGoRtEl5wj1oljnQLP/?=
 =?us-ascii?Q?a2sX6LGGiDeGDFWE9xiiRz8XJscwGIAKFHdngKF4smjNBs8PB1LnUbzY2/8S?=
 =?us-ascii?Q?EvgQwAHPqxLxOyPeMd3+FSGUOUhjJGiAxsM3CqMSSN0eCiC7WRYoidIswywC?=
 =?us-ascii?Q?rlujZznc6bRE8Tv+mmxcz5SHAjZLPYcEx+jgzBhgSb8B2Vhldup9rvecFkU8?=
 =?us-ascii?Q?iTbPBqw9Xr0z45ZxtOoOWnfWTDjRfqezqjE1xshBBOaRaKw8CFDbUymoCLSj?=
 =?us-ascii?Q?KVRuuwdzpPWYaS9b5zIrx3hi9epHgmWNyf9tjmaVJU9L8yzABHBF8dcSI9uW?=
 =?us-ascii?Q?y753Ap7DDlN1BARCgJ2XJ8b4io3ayaBX/9R8ISSp0mR0wOTw7G/DeBnmjMd0?=
 =?us-ascii?Q?hPM1+aai+cNCmD0saMV03VrE6AOQVXhAi5F/gSjlXCzbwCAfmLpS0Jv5U1iH?=
 =?us-ascii?Q?GSbOeNWXEyXA9Gu7PazRuX0lhNJtXvfzYHoGmrfkbvZAsFfLAV3r1h4+ndhl?=
 =?us-ascii?Q?yV6CRcfy2f+BWTCp/T0rkzqErQ+Utfq2f10CvQUd9iPi1CLg8Sjy3NvVU19d?=
 =?us-ascii?Q?Y6mhEKog0uWpuQgrz1BsTp7Pv7avqI8Jq9Qq6QzjalRb147PtEGl6fmdg2u0?=
 =?us-ascii?Q?QpxF9+/zsykxhC1LozHrwHucvaLRbr1zsMMYzWW21YzYE8A9t+1RJp/uPaCa?=
 =?us-ascii?Q?2pne15gjyjuFlO4o0COruzbIMv0XHKWcQEbMGBN3aTpRsBvwDF/000cQrU/d?=
 =?us-ascii?Q?v2wXqYB7NxZnu+n4l+JodD//nlXBTvA2p92EfKxyPJofetaT1/z63xu2gtNq?=
 =?us-ascii?Q?exhi/n/FJ9FD5JJYYUXecTYqYSUcEcyPWOTnmM2gM1zm5eraC/6uVg2ljA8c?=
 =?us-ascii?Q?hV59z1TcaJODEaah2sp67laWgH6CBNuIaTuxqU+/EG49gpreQmteCv9AjaU1?=
 =?us-ascii?Q?yP1JC1BZ/qSqo9kAhDZGsLUQM5hBEqSfBbcLyDVw40C+G1u7lvULVzNNVxMr?=
 =?us-ascii?Q?x7carwZx8A=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c27a16ca-1195-4ce3-bb36-08deb5927ac4
X-MS-Exchange-CrossTenant-AuthSource: PR3PR04MB7402.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2026 10:36:26.3833
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: niSMJYjALclLGvCHwO45OdWUT1layp0qNKyvn99oWnZeltxQTN+5fgSyc9oc1vhmUtKBpVUwLOBhWBS1h4ySzg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8532
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_033633_169613_D5610976 
X-CRM114-Status: GOOD (  26.54  )
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

On Tue, May 19, 2026 at 04:01:53PM +0530, Vinod Koul wrote:
> On 18-05-26, 10:29, Ioana Ciornei wrote:
> > On Sun, May 17, 2026 at 10:07:56PM +0530, Vinod Koul wrote:
> > > On 16-05-26, 09:03, Ioana Ciornei wrote:
> > > > Add a generic PHY driver for the TI DS125DF111 Multi-Protocol
> > > > Dual-Channel Retimer. The driver currently supports only 10G and 1G link
> > > > speeds but it can easily extended to also cover other usecases.
> > > > 
> > > > Since the available datasheet (https://www.ti.com/lit/gpn/DS125DF111)
> > > > does not name the registers, the name for the macros were determined by
> > > > their usage pattern.
> > > > 
> > > > A PHY device is created for each of the two channels present on the
> > > > retimer. This allows for independent configuration of the two channels.
> > > > This capability is especially important on retimers which have more than
> > > > 2 channels that can be, depending on the board design, connected in
> > > > multiple different ways to the SerDes lanes.
> > > > 
> > > > Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
> > > > ---
> > > > Changes in v3:
> > > > - Use reverse Christmas tree ordering
> > > > - Print a symbolic description in case of error
> > > > - Some words do not need to be capitalized
> > > > - Remove duplicated exit code path
> > > > - Return -EINVAL in case of unsupported submode received in .set_mode()
> > > > - Add a .validate() callback
> > > > - Remove comma after sentinel entry
> > > > - Add a ds125df111_rmw() helper
> > > > - Use read_poll_timeout() to wait for channel reset to complete
> > > > 
> > > > Changes in v2:
> > > > - Explicitly include all the needed headers
> > > > - Change ds125df111_xlate() so that it returns an error if args_count is
> > > > not exactly 1
> > > > - Add a MAINTAINERS entry
> > > > ---

(...)

> > Now that I actually tried to make the change that you requested, I
> > realised that the Kconfig is not following any alphabetical order. And
> > neither does the Makefile.
> > 
> > Do you still want me to move the entries?
> 
> Yes please. I will sort this one later in the cycle again!

I did the sorting myself for the entire TI Kconfig and Makefile and sent
a new version: https://lore.kernel.org/all/20260518142026.3098496-1-ioana.ciornei@nxp.com/


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
