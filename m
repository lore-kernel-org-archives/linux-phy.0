Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0D6CC3DA4A
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 12:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2H9Oi4n9ZOVZ1BVpemSoCjyX5y7M5/8hjH4hYmj/KNw=; b=g8fkDYY7qwbGxX
	S6eQeMtq0Pl9d6RBXxe2f269euO++tgj/dn0op9Nx9IRw06TSbuLd1+7aLCrnIrV/yycRYi6B1yJa
	Ou9sZP+a0aUWYgPFEcgSsnucQMQ7RN1UEGEwVpcWn6PcICwi9n3Vv6Z2g00TIpUgp6UJVFqjaKU/d
	7blnWp+LFT0MWu11bH0a1Bk35i+P2SZDjO3gZSlFOtchEB2BWKsm6LZOGBBWIqLp5m16ise+84YNZ
	8rqxK7G/HwITtgT27yGgppVztFe+q4Rz0WTYuQ9ca81kK6qjzTKYdpn89L9q3z+/SYDAOPUlfiV6D
	GUFvJq4rzXszY0kUae5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZVCT-00000005Fnh-1qYI;
	Thu, 01 Aug 2024 12:46:33 +0000
Received: from mail-vi1eur05on20600.outbound.protection.outlook.com ([2a01:111:f403:2613::600] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZVCR-00000005Fm4-0Tym;
	Thu, 01 Aug 2024 12:46:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xTtHlsic84D34fyC0z+alqeSlK6wvOrQ3XGXBp+PcJLHZacbRadivoxNW65udQAf9mKR6X5L4qmShLbeKtN+bnDpa1PwZQ8VcNLbGJ8i+srzcHovWEZqK3tGw8OwUjYXJvkdoheRWH3CLAqP7DvRjzDf2VME+XV4A/uLn3rnq/JHJ5QoXguCJmdojaZpKWgejSx4d1qhMCVdwMCzfzfSqKiajY1rPZfMkbbjHkNCz8m9QPvjSpgPE2niUNJgFYGGUBz/psL5ih2IsRqAeDGrvaMzsiHyJqzZGbC9ex8zleix3/EJXRCKQtrmryVKIa3pra9RZuGeI/t2ejSrNLMguw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0VfhGBCrXVCW2Jt5WPbAb+HS0Ziov5y4C8dFQsQuE2I=;
 b=scy6Y58pyVZzsJPiGdCbGuvzz5TtHELErF8crbEkyJ22wvj65VWmjdZrExZT637q1aW8H3yUGQ/O5mKQHb+GqaPoURjxhNQOK8iBVrhj94aiiCy4eDhm7uorCYw17hO2VauXC1oYdcZXSpT/DT+hZ1IRmiWMQAQMCuASSLzTNp0ZC8HuGzHW/SvetaSvBV94L+Zs2zCq3TvSVIxCND/kDtUMM+gCECzwQjWJPwXnhdRagoUVQQQTuMGF+wTQyn6qa+IMTCyBLJibK0pZUuxUAov2Pqz+BZLnCRMudroMalqB+q966p1wykU5ulVX0eBiYL760iOKhifakAfEABij1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0VfhGBCrXVCW2Jt5WPbAb+HS0Ziov5y4C8dFQsQuE2I=;
 b=mSqUMFlUgY7VRlO0VhOiEtBefpLmxYv685XafavvkZgeSUB6Gs6zy97KASQNVjwucf3t8fs2s3KiDOmmXkJqRkuqtTIKtnogSGDhBnkRSEJzbrc8oyCBIXKyzI5JQ+lhGxrQtxE8oiBupGaD/4mchhDlfMGyOFsj2m11aCfsbJo5ZLkHVPZDFDETwRRVdQtKXrjX5ryQlV6DiLvA8GikgzANO1epnp1g5K6KifT6DGkYib8/RErVc1B4fRut/rFJZr6zzm9E5gfmyAhUptI8mOarTCZhsYHkFVOpPICyjDqJAZpQCWrjKsrQz/00MUWXu4DNu71V1LxJg9hATd7H/Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB8829.eurprd04.prod.outlook.com (2603:10a6:102:20c::17)
 by GV1PR04MB10847.eurprd04.prod.outlook.com (2603:10a6:150:20a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.21; Thu, 1 Aug
 2024 12:46:25 +0000
Received: from PAXPR04MB8829.eurprd04.prod.outlook.com
 ([fe80::cdc5:713a:9592:f7ad]) by PAXPR04MB8829.eurprd04.prod.outlook.com
 ([fe80::cdc5:713a:9592:f7ad%3]) with mapi id 15.20.7784.016; Thu, 1 Aug 2024
 12:46:19 +0000
From: Xu Yang <xu.yang_2@nxp.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	alexander.stein@ew.tq-group.com
Cc: jun.li@nxp.com,
	xu.yang_2@nxp.com,
	linux-phy@lists.infradead.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3] phy: fsl-imx8mq-usb: fix tuning parameter name
Date: Thu,  1 Aug 2024 20:46:42 +0800
Message-Id: <20240801124642.1152838-1-xu.yang_2@nxp.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: SI2PR02CA0052.apcprd02.prod.outlook.com
 (2603:1096:4:196::18) To PAXPR04MB8829.eurprd04.prod.outlook.com
 (2603:10a6:102:20c::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB8829:EE_|GV1PR04MB10847:EE_
X-MS-Office365-Filtering-Correlation-Id: e8c05216-c19f-4db1-bbd5-08dcb227f0af
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|52116014|7416014|376014|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?I9NFs41CYviQsjBhP5Dovg4feeg1JH6tnxsPStjQFslGNY1EI5Cp7XDk5e+u?=
 =?us-ascii?Q?W1D+tFdSRX5Vh09C1z5MVkvlV9Dot2jolzw50TwP2JrC329MtGejCqszvfOI?=
 =?us-ascii?Q?6POwoiWwxTnL1Cni5PmGjjc4Z3qrxrDIsJpgUD15r6pfI7t7jWB3IgfwADWU?=
 =?us-ascii?Q?nfKqWDI7R9BDxExpCssepxvvETzOifsJsr9gWQzYXHh4RHb/zDbaDDN/pj/f?=
 =?us-ascii?Q?jOIwg6dMFm7e78HaTOS1G49/GSJWh8Ww7l09XmP+jrfXq9vrqpQXCkT7b7OS?=
 =?us-ascii?Q?MyfW6H+9ynD1Ehgc5FvS0LVVmJrKxUk4Q54InBnPSQe9uJ42q2uSU7U2vgmm?=
 =?us-ascii?Q?j7e9UH30noSeTmtM+Z22bs2m5pbSF0nsqPYQ8fLPQvdaQBUNBiqvFV/F3tJw?=
 =?us-ascii?Q?Uo5i108+juzYItxTXTvD4h2MEma19dpxTpZS54g7lOqPqDwDXA2MG++JVcjp?=
 =?us-ascii?Q?b90bBz1AdwpJ+q4T/bkRnYjAtrmb8tN1NchTlX27A61NUzvN93q/xt3LZH04?=
 =?us-ascii?Q?dReuXZ6g/KGDE1Ta6Lt3N3RzoK7O4r8alsNJV6BfX9SloaegxV4WRyUXPTsV?=
 =?us-ascii?Q?zt6/F1uqT/1DykYJKg9X8KICFVS5NLiW1uywTMLVOhw3tfTCHovALu+S7OPh?=
 =?us-ascii?Q?T/E4Aq2MTddMyWauGi1bFo6BmxxN2GVxnirc6yXuOHsLDETPKzAIPn9Wtx4q?=
 =?us-ascii?Q?If1XL0rRJMGaZNptV7r6QhXTzHOtEIbt7o9Pvmk9EP90ehjWOx0+WWELZGsw?=
 =?us-ascii?Q?RcdTVmd+jVKhFpQ9jz1n5hfC82rpRwwy4OsOv6fvrb7M8bXBA3n04k8Fb1M1?=
 =?us-ascii?Q?SpEH6WPABcYczwvmPjuBWk9I0jr2hSNBB3OUz13mBsHY+feuVxO2FdEtBlg1?=
 =?us-ascii?Q?kIATv8sTCGvTcaJwtwxe72TXfAE4iEayo7XDMpiYB6J4yY6mXLfpKOGO2II1?=
 =?us-ascii?Q?iCUY+rEep5o0ZWc2px6mR+xr2KnZqaEtFi2MGps00EnQSE+CF3vUwD47TvJp?=
 =?us-ascii?Q?Y8k8CRHXuf99966fbpKy6l1LsjmLDGOOji5ggMjLERQDnEjN2YCfe8C/PFJD?=
 =?us-ascii?Q?kZ1ZjwB16cA6GS/PddIVKTEwN7dBHQR3SaP/5s6ocMR/PnnVzQTDJ/oSXTD3?=
 =?us-ascii?Q?sfGcROXyo+aJyPfylcm0ykDK8hE/oqWNdkbUd0zk411Zi08psgmVCNOB2vIg?=
 =?us-ascii?Q?OSbg6lE7d4c/eQ5ty9U9kbDFWtoCUcFa3wtvQsfVv03VaqkpHFuOTcVw6/PS?=
 =?us-ascii?Q?UfZBv5i9qx/s6oWO83uI92U/t7uA1MFS7+BQsOGqme/Z0kCTX43xZ3PBDp/+?=
 =?us-ascii?Q?z3OnXWS5f5FA4wsZk9hooBHHDP1ZxoZ+QozimCv4gT4aRwg2X7frMTwRWgQ3?=
 =?us-ascii?Q?ylohwr3nUdHkZxHa45dS/QXGaRPZH//B3P08gKDyGZK9o7n+uw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8829.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(52116014)(7416014)(376014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?q5DcfssMngB5H56hHKAp4dRj+EPJP1fsGdLqH3UQUCwN1ut1jZYxgPndwI3k?=
 =?us-ascii?Q?0FpZGcqDzwhql9g3gv96RkLkCk6BMCIdMkF2YldFLjJP7ysUPVATvVyjYt+D?=
 =?us-ascii?Q?4CuQpjioUnFHf7ZIUCSPaneF51c5P3nSjm9R4YU4pR1zI8UwB4DdVT/NHbfs?=
 =?us-ascii?Q?fka/Sdx9CNPpsm1k8FlNKEmb1WYGM2YmVbqfS8kbxSj6kE5bnYD48PVcPr+5?=
 =?us-ascii?Q?qeNng18qU4C5ic5fFEqMmqIXgvadioLn5xVWzSL0h3bf3lj2xP5Ebu1/nAT9?=
 =?us-ascii?Q?IkFHm6OEMMdA1J/e+2z+4iRm90Ee89x8X4bspqEe/OPIfg+S2uMRrKFkMdJU?=
 =?us-ascii?Q?zkCMQ0coTUhZcNfjOvV6IGaq6fnY6kHjGPpfBg2+N1/341TjeZqqmRQErkqy?=
 =?us-ascii?Q?S5lEOw58TqbKCiJEHgMbFuXrGsq4CULwATxlDvNfRcilv/FoLUzITLUKqNxJ?=
 =?us-ascii?Q?7hlgCAoWAZvnvYVFKuqjd3/dwKCyEzxk2OO25Rw3UwZCVspWOUcVy901RoDU?=
 =?us-ascii?Q?mjDeNVtx/mbdsGjrOcnn5XpSQoEPaZoa2j0Mlgk5CRi0Rjys66K29rmOusgW?=
 =?us-ascii?Q?XVUTT0/Q+CCheQBI7axbJu/hJROGWDwIePnb2KY18z/DsmLvNWDucUT3YDRa?=
 =?us-ascii?Q?IY0lzBF/6yFxZVYTlmsL9nIQlyDJ45mkAsG1VGMBDYAJcPVXFQRHgy841SCr?=
 =?us-ascii?Q?xb6uU2mRIIcQrRxbKC+fqyaBYrWDTcnmdzDycT4h0A2z0O3bjWXvHRbwnMRn?=
 =?us-ascii?Q?IU8ootPo/I0iKAwfHIg3rwxzokYbJLw+qaFryYeTzNs+g1G+FdH5dfHD7CiL?=
 =?us-ascii?Q?U6TrtlJ6bZR+7ZKk8z6g7fucP+8BxPHDNuQ8rUIfsKVk3EVu9a/eG9Wrv8gl?=
 =?us-ascii?Q?R63IxnJcJtnR232tfHbQzYl5W8Fo/d0vaHARAHoWxA/XDe68B/NEIwNoVKEd?=
 =?us-ascii?Q?ZQfUuwbkmnuN63gmQxy+0328NbFC3ye875xAuZViL5S3QeyLvVn0PGs3oCAF?=
 =?us-ascii?Q?fqwuI1iUwLMNe8x6vbOO0USWItm1/69w2Kp8zXY2SADq7BAVSemZmoIbkvr/?=
 =?us-ascii?Q?K8JMbJRUZYFoBW4LtCIJ39T/6WLquFtzXyZ952SXGw48BbGLADxx6P2lZHli?=
 =?us-ascii?Q?0fd3NEQpR60UVBRq9MNpNWPj4OOxrmZzvKCVCFA7e9jY2taQR3F+rzABKb+X?=
 =?us-ascii?Q?TuM4KrlggdJePCrGegaqRMscGyCRIEZ7P0MwzGTRDvv6Y+xvI90TV8uqZsiX?=
 =?us-ascii?Q?at/hdh12TT1aLkBDv75D4C055aDIFJ8dO062uqPaBb5YZ88HNJTF2S05qUKl?=
 =?us-ascii?Q?RrnLX3grZ3LyxH7HCBgYi3k7u3D1BiAPo4nHH3TgvbWjW0c3l41jkMuB/TxI?=
 =?us-ascii?Q?zboO3uI1mDa5U9Jb6nBxaV/RPAi1p+8n/4CPX2rgJ6q3Yq0DNJlbVgF7RdRk?=
 =?us-ascii?Q?SMq7/GvKL/hg6qrVdq7K4O3NwwDX0hL4jBDWhyPE93g/+Kj8iqg4jjULRosg?=
 =?us-ascii?Q?UkhygdXOPl9asyQCENGXTz+PxxCg8OMnFpKCwPICLcJRNEJn74Y6MkXZrZ+x?=
 =?us-ascii?Q?a+zsvW4ww9tx3Lj75MALIaXuVMdhQX07nszkJL9N?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8c05216-c19f-4db1-bbd5-08dcb227f0af
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8829.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2024 12:46:19.4559
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3C0HI66p6mjjEJnhymoDQJBrK4XzIHlkIQPl5dCIyAsqIiUCJiqATzFPbJ8jmMe3gSeTP/h4CZyGeB8GIe3rCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB10847
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_054631_186866_644463A4 
X-CRM114-Status: GOOD (  11.80  )
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

According to fsl,imx8mq-usb-phy.yaml, this tuning parameter should be
fsl,phy-pcs-tx-deemph-3p5db-attenuation-db.

Fixes: 63c85ad0cd81 ("phy: fsl-imx8mp-usb: add support for phy tuning")
Cc: stable@vger.kernel.org
Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

---
Changes in v2:
 - add fixes
Changes in v3:
 - correct fixes commit
---
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
index 0b9a59d5b8f0..adc6394626ce 100644
--- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
+++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
@@ -176,7 +176,7 @@ static void imx8m_get_phy_tuning_data(struct imx8mq_usb_phy *imx_phy)
 		imx_phy->comp_dis_tune =
 			phy_comp_dis_tune_from_property(imx_phy->comp_dis_tune);
 
-	if (device_property_read_u32(dev, "fsl,pcs-tx-deemph-3p5db-attenuation-db",
+	if (device_property_read_u32(dev, "fsl,phy-pcs-tx-deemph-3p5db-attenuation-db",
 				     &imx_phy->pcs_tx_deemph_3p5db))
 		imx_phy->pcs_tx_deemph_3p5db = PHY_TUNE_DEFAULT;
 	else
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
