Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EAAACD4F21
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 18:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f21dsSxa3CMqlCzgtDvOqdiQVmbaH6NO3aTWADFq9Kc=; b=tm0Dvc6B+hrMxn
	r7c7t9FYa7LF5WjL4wAtrzBAAVgE8oSY7JKTunFciVd9hSAvceZb5tRX06FfRH2rX1rDsrSXokojQ
	DzUQKlzWz9SJrO7NMgqghXKe5Im41tHwv5MBe4T4w0SJsa5dQbW2DQlehnNjJmsDc1XulMAJhr1JG
	OfSHHLJN1Zk1yRrSWUqqq9s7azCLcvL6lDmwIo4qD+QAlXTeHTinrW3MuGQP6sIzUeqIcFfWR/VnH
	0aWNkBm6aoKq/A8KG3of5k4Iw8lcAbCajSvX1RweJaYQCugz/aez5eY/nEoeQcd1mTLAno1PP61Iw
	VqFWcGS+Aeihm4bNVayQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNEfz-00000003VBD-2mKs;
	Wed, 13 May 2026 18:51:23 +0000
Received: from mail-northeuropeazon11012023.outbound.protection.outlook.com ([52.101.66.23] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNEfv-00000003V9w-1jDu
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 18:51:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DctlQVdAd/drYyiV0WHK7PwY28ci/+3jI9MpPXvOhZ82MDFM4dMDMgwQwMh/gut5eOH5EkbKMas3w8D5is4sMR4ZmVBRqDb4ZYhQuimJ2ekCnU4HX3iAPZ1cuBFpfxHOouRRfOAskDgYa3U/UK2DFRiFQL+ygfe7TERbWc1db5N3FSDZmSFcwe5o8RjajoufBvpfv45jntQgw1+iFCexLojborwtYRcbs4bToIpa8P0tFUuz3eWf9fPWFIBlHLgUDrSWNu9hC+pzwMnhAPJKX2DOfbYCotOdASnOaGfzix27Ns8x9DBCmtLFP9I6INF2wojLl6fFtj42WPZbbQtaiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dd2v10N2DhUsUEU6Y3DbRZ8c8jBZpo9eST23etNQ0eI=;
 b=hC6r41VbVN213WjyeTmtp6H1z8AVmMWbAvd2sL3Ggai1ZE3AptPxfkkzjbSEYfUwgV39vbaIDcQmrPaU6wo+E6RfxalW11RO699GP5KFNJj3W4FKtbbaU2laaLWR1na5aGNbn2hIQ63NWW3vGsg0b8N+9gIOgzvFK7sQ6nup0gQGVq2JrKGjjBfzdpj3344QaCQFLy+oRzaeEQSncw6QhbV9EhfkFiuKdrAfhIKsiXJj7dWkyKk3onONy0R2QnlcXDUXaSVIgk5xMOtyVY3ibGyNKx5H5d/1B1ouswN97BW2Iboc/K94jaAgN9q9kDaAwqrFqvO3D6bBSkT2Xk3Gdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dd2v10N2DhUsUEU6Y3DbRZ8c8jBZpo9eST23etNQ0eI=;
 b=HARX1OBCUBzL9ndKQMs8HFZbxfRJxfX7qfauKdcUAn2ZK3uPEDQY+Tvn08DfEQpvt73Q7VJBE6KhhdzhIrnN4zoqVrfVsoh6vwoDof7tykW3xT4tDnKPHBmSwn8XIdANTrrcYOXa6DpxopVFtskIZTc0iaFKjuLZYYS7PRUtjwEGpC2uAViOeWg2TN7a+J4D4G1MvqUidxcNk6OsMBSeUfxWYHgxhseOGCdVhmC3VKM4G7Badxt0bUiY97/6Iz21118/m3zewd8XM1BsmUqDDjR5jVVan8ohjJAyKBK/yGLIuFt5d8A/xoSvaGvsclXGff8CSyygKK579O9O1E124g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PR3PR04MB7402.eurprd04.prod.outlook.com (2603:10a6:102:89::16)
 by PR3PR04MB7337.eurprd04.prod.outlook.com (2603:10a6:102:81::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.21; Wed, 13 May
 2026 18:51:12 +0000
Received: from PR3PR04MB7402.eurprd04.prod.outlook.com
 ([fe80::4129:7aed:b5cb:b13d]) by PR3PR04MB7402.eurprd04.prod.outlook.com
 ([fe80::4129:7aed:b5cb:b13d%5]) with mapi id 15.20.9913.009; Wed, 13 May 2026
 18:51:12 +0000
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	johan@kernel.org,
	linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH phy-next 0/2] phy: ti: add driver for TI DS125DF111 Dual-Channel Retimer
Date: Wed, 13 May 2026 21:51:01 +0300
Message-Id: <20260513185103.1371809-1-ioana.ciornei@nxp.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: AM9P192CA0012.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:21d::17) To PR3PR04MB7402.eurprd04.prod.outlook.com
 (2603:10a6:102:89::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PR3PR04MB7402:EE_|PR3PR04MB7337:EE_
X-MS-Office365-Filtering-Correlation-Id: d2ebe5f0-6344-4348-20f9-08deb1209a94
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|19092799006|1800799024|376014|18002099003|11063799003|56012099003;
X-Microsoft-Antispam-Message-Info: LAmoS+ineRZiJo9d1B3dvVTEg6Qd3uaTrTbiG/K8KPnoau5ZXjoBJ2T0+sjVqNut3dcugurjKsK1V/euXV+OSveAhzLPyU2HFr3MP4krAq8d7P7H75n3v2C+lUVGJ920Tom6Pq8wsQmbnm/HvMFx3mMh/UVA2ix33EiiizkPllcJFmV+/xbpgtBlftjkz9NACMzfcwd8XINd++L7HVtywvmg9/89sPnA/CKIt7pMZH6xP4E/YEJ3hxA71vWVa2SdHgHMdqjVxP6FuzJ3tphH7qaoLbcmbcym6xW2xV2Fst2Y1AJm+K/lTx3XS0TZ7ukf0nm84+z3q9wqoxODDgbZdpf2hZXipnJYiIvBIciNEtCXgZcXIgQABw5jBaqqfNjZs3Geuu1RXHt1x3xvY/iaDRbENvC+KH4+eD/zFM9FQ5WMwXOAZsbGhPcdkj9cI7T1u4dBEcSTBcjtbw/AX8nhVqUv3zOYY3QGgSfL3MOfwWNpwUMPt8MpRvkUxmBSOJc690nKXr9P+bPphJiijecae4/S74KUNpuylzedzbpPW/OJqz6+OoK0zOJjycsL6gkzrpRGjg3l9PpYQ0aSGOUWIxqO9e6NVCWWWDSXBs+Kj6W33SxZWarnv6zAoyM2iORKR586y4ulFZ28CyA9Ixx6u/oXg6Lx22deTHyYs5yskfFrwrvA5Rh2gJlPq6x07fXi14EwblpiQdXJaOvmb272+w==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3PR04MB7402.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(19092799006)(1800799024)(376014)(18002099003)(11063799003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FDHmE93lWOfif/0N/xXjAEKIcx0pTl52XjFQY7OSR4hIjF9HGM4JpEh6DXHn?=
 =?us-ascii?Q?CCdIX0nP+AXEX+1MJKga93+bHMGE5Bb496KbRL/2Abl5HqnrnqcTotR4jMGr?=
 =?us-ascii?Q?SfZ0ZMlrUpEejS5hhfdJYweIR7ONvC4NzAI+tUfa/w6mgHBL0FQqnuaoXhZP?=
 =?us-ascii?Q?HIlmu32NuqBWhFQcnM7WoBru7dLT01M2jdSOQc6phRKh4N+xenBaEWoReeat?=
 =?us-ascii?Q?fZoXVuCixIq7J8QpvbXnzqEh0+3n2favS+EW7Dk/7SAp06gt528JeeZpR8KJ?=
 =?us-ascii?Q?Fqt3v63TIqQH/pkdRX6fdjr+9eeV4d/4E4jgrKsRBiF/UQSJf/QgyclcAWd0?=
 =?us-ascii?Q?mj5MMsubr2pzIYWGgHKX71r4yMYLfoS/vdb842JS98eiv4Rjx9zMsi9lmVMA?=
 =?us-ascii?Q?Sx3LtoN/gGjpiCjqCOpSBtiKnKWo+SojbvEeCjOUdpzpXVWYYowQqfgHVB1t?=
 =?us-ascii?Q?YCbuhlx6vIYwLxEP0CjSI4j1EXbgIjc06C0bIL0xMUarLlEwu/a7O3Z/VA4X?=
 =?us-ascii?Q?czWbZmq8Q/d9tLDLKgPO7LZjlJI8Uiom5uoyECk8TjviZqq4aUowuXHfSu/4?=
 =?us-ascii?Q?PTHubzGPOndHY2N19i25Hc/PL+R9T3by21DGJUtiOYCfq1/B81wrUNOEo8yB?=
 =?us-ascii?Q?gEc5A/bGSjQ1sWyo6YHzTRtOuk5ziyHHdCFO75Mw6HwgJXpz0E9IUct0gFgo?=
 =?us-ascii?Q?EyG6vxEnFc5h3VdRAD6Ot9qPkmHQ+ptAqwi33hwJpVRMD703GxAIEzWsydje?=
 =?us-ascii?Q?XcziuCVx5tHdHctyK6E3s9uWKLDpnYWmMR+7Z6sgavTQidnGocZMZ3DLbluA?=
 =?us-ascii?Q?QGo3OdmoufuIOs8SkzisK8E1qhW2DF2Gk2AUHFyrxUbFWo28oCybIhtbW4CP?=
 =?us-ascii?Q?+i7TEtlquE6J+kh+3MJpU67UMpV1LdvReAbDcPak/OIzqDnKGwc2c9lrK8bp?=
 =?us-ascii?Q?mHZyhVhN62nOsfE0DW60jYbveJbegWMxgEqllahHM7f2JcWTEJ8Zt+daRcCQ?=
 =?us-ascii?Q?8uWQ14SBt2XYrQXCFvYHsZpSAN10yV1W47UXzb8wp+qpSuiLwz4P0hLf/8EP?=
 =?us-ascii?Q?kZwfrtsMKzQFKD/iNJDGKD+hzf+HXHGiH01VNbUWx7kSs0d+0KTdc0vArv7i?=
 =?us-ascii?Q?w1rR9i38CEgAoWLdq1qEgeYPo1CAVNEJLDPPDBEYX1h74fTYWtKWwWOiMrXo?=
 =?us-ascii?Q?7WJTOa24GW5XFBpbJZ78XI7vEviYU4vfkaXfEl2zn8/BbnC6zIlRmExHHIye?=
 =?us-ascii?Q?6qJnHv8s5Ol1JRFw4korO66D3OftxYa0XoqOBJl/atr0jYZJTbPwE3WXaN58?=
 =?us-ascii?Q?T1qEuwCakaiaDaJ5g0PUNuq8Ffa7B6czgbM/986SMjWz6Rmzr2DcWdLxvewh?=
 =?us-ascii?Q?GksQcbnvsgBbZCAtN1AtAybIMUmrSkBjf90fb5/Epso/w0brFSCplTT5c7tL?=
 =?us-ascii?Q?EeMLIsJbafp6EN8RFncYHdBHpZ9U/ccsg/woF+Ozy0opJzPuL0jiJiaLwioJ?=
 =?us-ascii?Q?h1cpW62tfy64L9ohMgZ2exdzXFBybcgFkQ14GiZxtJ/eXdKvgWlqurKroSWw?=
 =?us-ascii?Q?3ur1AQDNgjA4V7/YD3GMXj3I3geGM/cz+LIRTf9hAZ7A4Q25WTONZDzA9DJZ?=
 =?us-ascii?Q?qZCFEpmPlZdfcnwVsl4SHsHKkfUHUUwUDTzdY04sQf8E6AysBfKU5mlXdoMD?=
 =?us-ascii?Q?MejRtsezKfNbAEZ19zoOv88c7/hfIotWcP8aCvWR2EsFppLtIr3XChVSEMnj?=
 =?us-ascii?Q?1jRr9b09Kg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2ebe5f0-6344-4348-20f9-08deb1209a94
X-MS-Exchange-CrossTenant-AuthSource: PR3PR04MB7402.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2026 18:51:12.7085
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tlk2YO5DGAz2CNapbCbI+ur7KzuBvUVp6DwFMZAKqFSP/bSr5BOGztRiiayHAnXl1tiZkrVxYmRjLbOTrbusjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR04MB7337
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_115119_462654_A34EF282 
X-CRM114-Status: GOOD (  12.71  )
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

This patch set adds a generic PHY driver and the corresponding DT
binding for the TI DS125DF111 Dual-Channel retimer. The datasheet on
which this driver was based on can be found at -
https://www.ti.com/lit/gpn/DS125DF111.

A separate generic PHY is registered for each of the two channels of the
retimer, so consumers can drive each channel independently. This allows
for independent control of the channels, which is especially important
since each channel can be routed to different SerDes lanes and it is not
guaranteed that the same retimer will do both directions of SerDes lane.

This was tested on a LS1088ARDB board with the Lynx10G SerDes PHY driver
yet to be submitted.

Ioana Ciornei (2):
  dt-bindings: phy: add PHY bindings for the TI DS125DF111 Retimer PHY
  phy: ti: add PHY driver for TI DS125DF111 Dual-Channel Retimer

 .../bindings/phy/ti,ds125df111.yaml           |  46 ++++
 drivers/phy/ti/Kconfig                        |  10 +
 drivers/phy/ti/Makefile                       |   1 +
 drivers/phy/ti/phy-ds125df111.c               | 245 ++++++++++++++++++
 4 files changed, 302 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/ti,ds125df111.yaml
 create mode 100644 drivers/phy/ti/phy-ds125df111.c

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
