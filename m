Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BC7EC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Apr 2022 06:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bbXwolA+XIEi0SMY6u04+vNonFvDbNgg9faGlPJloHU=; b=KSJmlGDTvCdZ3P
	5jXWffKXltUjHrzsKvSKoHH56w2/pUOIIQHEboWu+agQTf0OFz+EXEu0ryDVk8wnVCVUisuRi+j17
	tKSfR9aGWl5MGKmutEcSvf8dVqDQrSHAnfkQEMM4MbTdZVaVz6LzHqaAOgIxZFHbWg7ZgW99z0NAG
	MJYxghjLUMcvRHLDrhnIe79I2q8BUykJrU+K0OXx79n3me9dbtxpkj3/5fsPkqO4xm7GPQ0xARV0l
	grAGIrVd1gGw6JGH3kW/kVjZppokgISnrcqLoS0N0uzJvT2yllqyqy0WHZNBBiBPM+yDQEXZ+5xMf
	wVocoYrLZXOwro7gBgyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1netH0-004Ap0-LD; Thu, 14 Apr 2022 06:48:10 +0000
Received: from mail-am6eur05on20623.outbound.protection.outlook.com
 ([2a01:111:f400:7e1b::623]
 helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1netGN-004APe-HI; Thu, 14 Apr 2022 06:47:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LM/wduR7FXx+y24guxRVMohphP7B8sPOX0p1tp2fgroc9gtRjQjR4lbD3brXj8TtqkZnueXlTUXWen/osjRXsGIq2/Eki0OQlIM4zq48ilg6SrI4e/UyGmzTPkF5K6Qv+wNwHHN8v5C4ayRj8Pt4z3IMINnyTmBNa7xQrzGUAbbRXL1m2T9fZdmcTg9Zba7dc7zrhof57H+dp+uQOHbINYiIP39XLN5fYlE6lkRYFcaQx8e+yCexun/VZTLJeU6Ky1IPXi1jLWpmlWmf+yIFMkNfMrjQW8RTnCbWPCKztXoYjemwEIYB3UnvSqsu67EoRkn4en8Sj+X1Jt23uyDU/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6uqG1TtbXF7+KFyfyyBlvzGXLuQEZxe93n27M5vWflI=;
 b=AewBwi2yUBVhPd0VFZjb8yQxNPx9jsVN7LdiWJZBpAk6EtTmS8xUD6+UAgQR+DpFUdTL5M8jghNCwa5/zLGkR02N+p2c8BtYc/BDsmoOI/EtxSXGx6eKFTr1mTRlE37PA4WEmFXEK6vYPGclzJyFB1LY8D/aPL2aGPQtKHVNTaGLTBUPkJ1q2qH1mNCWSLizZ6IRFt2zsfxoqu5RSEs+lKot2mGSfrnwrjDRQyV5enQYBvXExIgT1PiWaNIhVwTk8zoMv7H5X4q06zYhvTU/yJ4AR6oFw8XRKPID21RRJ5Zq/D90SIMAAky7XdRjKr873qK61RQTyt75zMdVnRlUGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6uqG1TtbXF7+KFyfyyBlvzGXLuQEZxe93n27M5vWflI=;
 b=dxcVFaWwZXnadO5EELaFG29fxEQcJ6In4K/MPG8TMiOC0Hi0e65iIzcbxCFx6qYPq7pQ90m9n7TrtAyWmlr20Kf/ZrjD64HDvaqUNCOAafRNC2XkQTM4E1AcZtnEalSEBMJmSqTgGDezRCEU6+WxKFf54+Fg0LN0z8plxMH/ZVQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by AS1PR04MB9381.eurprd04.prod.outlook.com (2603:10a6:20b:4db::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.29; Thu, 14 Apr
 2022 06:47:28 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::b09c:8ffe:8e02:7387]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::b09c:8ffe:8e02:7387%9]) with mapi id 15.20.5164.018; Thu, 14 Apr 2022
 06:47:28 +0000
From: Liu Ying <victor.liu@nxp.com>
To: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Cc: kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
 andrzej.hajda@intel.com, narmstrong@baylibre.com, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, agx@sigxcpu.org,
 robert.chiras@nxp.com, martin.kepplinger@puri.sm,
 Andrzej Hajda <a.hajda@samsung.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>
Subject: [PATCH v7 1/5] drm/bridge: nwl-dsi: Set PHY mode in nwl_dsi_mode_set()
Date: Thu, 14 Apr 2022 14:48:54 +0800
Message-Id: <20220414064858.405096-2-victor.liu@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220414064858.405096-1-victor.liu@nxp.com>
References: <20220414064858.405096-1-victor.liu@nxp.com>
X-ClientProxiedBy: SI2PR06CA0005.apcprd06.prod.outlook.com
 (2603:1096:4:186::12) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 51dc4fe1-8f9a-4cba-71a7-08da1de2a434
X-MS-TrafficTypeDiagnostic: AS1PR04MB9381:EE_
X-Microsoft-Antispam-PRVS: <AS1PR04MB9381655D38AE0E9247F767B198EF9@AS1PR04MB9381.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y5RbcGuES5mkkIh+wg/Ul7E1lIYf/xRAkSETt3w+5zkUjElJpcWix1AGADGpL2Ck1Ila9DCa3ap5dZNfnAoSUAciMFsi794B9zBU69iZtLRiSx1yjgQyBNFZf5iebY/4tXUPNIQdY5r8Fp9EMlM8+GVVHvrMTgy3LC9u4g7PXXHvImcJuQIEVS9n5Xlig3hsICRVzcAETm7rcljX73rEUNpOVTbWugX1NbNc+Zx6bLf8GXnvKIaOvE0BDn3dx3A5CtA1EkB9W13lzGBkGG6a+Jr6zQGeDdKtS/Fwuq6lFoLW8C2af1zX3TMLZHaP5dPi9xmqYr05Sj08trwAyZZi7yctWhTs73f3BMWisRPLmDyc7USX/G2TFFqMVEAAcJbiS6YncqaM/o/z8anesAFo5wwSmUfJ4orCQVpJ5sA9SN+KXyfJ3MINBEk3rHRuoyTsBHUwB933fVf5zYDcLx07Ij9boVG7+LhwK/vmoxi+7PDBscNxL+mpsArZv/RQjP1ZAFQFElEB8JN3txSehpNo9+Njhd+JBUkh8u9CFZcAvnRHj5jtjVhmufBWn3BK1e1CBBfmtX2+xJc8AAX+oHIkvSi2UKx/Gp1OCz66KPqTJgsx9NPUPhSJiHORF+DoR1CO2bFdJZYjA6VpZUDc4aaqF2HbnpRHyNzSM5vrWvOzH7aZrq99ZJ59sXCmu+pTkK6yQebOrTGxiiqAFA7GgbzZ7g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB7046.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(54906003)(1076003)(6666004)(6506007)(2906002)(508600001)(38100700002)(38350700002)(86362001)(6486002)(5660300002)(8936002)(6512007)(316002)(186003)(7416002)(8676002)(4326008)(52116002)(66556008)(36756003)(66476007)(66946007)(2616005)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OVBURmdHbkVwK24yM0dWelNaT1Nvd0xyelpPTks5Rk5QRWZ6SEgwajJsSmd6?=
 =?utf-8?B?dStSbHhSbmpySkNYTXJRZGQvbll5RlNFdzd1OWxoRFJoRnRhNlhVMmo1MU9m?=
 =?utf-8?B?ejhpUDZHemRrdGdJNGtrMGFFWVI3eFExcnJ3aFhWekJGdzBYZnlPZ0FqRGFX?=
 =?utf-8?B?N1RkSGF0WDlXV1NNdklWTFpOMGpvV29QQW8zWVJWYTdMY3ozQ3RTL0JxWG5T?=
 =?utf-8?B?d1VISlpHd1NsclU1aytZanorcDFsOTlaV0l2eCs2MkZFYU5BT0FZY1JWekhP?=
 =?utf-8?B?eDU2WW5odVE5OU45L2tyY0ZuZWU1NU92d0p1Ry9QZloyc1hMQitkSmo5OWZX?=
 =?utf-8?B?UDNjU0w2REJyRTJva0JJQnNyWExXQk9TT0dKdEpzVUlwbFRCSXc4MmZEMGpw?=
 =?utf-8?B?UGY0V1NsUXJ4eE5rU2paTDFxUUkrWXZHSHFCbEh5Tlo2NUFtWHI2RWNHSEgr?=
 =?utf-8?B?OTlzbEpLZkZ2UFJGMmNJblJ5c1l2SWJSSzhQN3BWYTI4c2EzMVdXcy9nWks0?=
 =?utf-8?B?S2pBQUgxZGFxOVZpSFBtQW80cm5mUDNZck9kTzFNdlJNM1ZzYWd4TGNHeGE0?=
 =?utf-8?B?TFloNVF4cUtwUnVkYXpSQ2xzL2JkN2p3TWZoT2VkdmprMWxITzRaTUVaL2VW?=
 =?utf-8?B?RnVEVk1DY1AxcCtQYXE0cU9KcHFzZmF6OUZIWURSeXVMVUJnb0FETEJ5UERm?=
 =?utf-8?B?dG8xaUh0ZGUyc3JIZ2pSN0xSbDNkYUFka3BvcUdxWHF2UFYyWVBTTFVoUG5y?=
 =?utf-8?B?b2I5Z1NKeDlWT0tIeFVDcFZQczJKU2htcVRVUDlsbFcreXpwdDdLMW9GTW5s?=
 =?utf-8?B?SUVER2pkV3FEMXRYdS9vTmZwTW9QcHFHZy9MaDBKczJnNmlBR3Flc1JBblk3?=
 =?utf-8?B?dTdtTnk2b3lTVGNGcDArNEtLYTdadGt1RE42SXgzZ2VNU05WQitiY1pKWlVS?=
 =?utf-8?B?UG1vazcrM0p4N0lINERWTDArNnBKOW51aVNPdFlPdjNwaklVM0ZYRHhEMTBP?=
 =?utf-8?B?R2prQzk0WkYvODMwU25wYVZ1NFhnUk5Bc2xsMnFqZ21qRjFqaWNYNnByejU0?=
 =?utf-8?B?OVBWWHF5cWRpcTQzdzdQS0RDZnMzeFdXNGk1Z1d3dytZQ1NDLzlDNm5hV1Y0?=
 =?utf-8?B?RFRvZnJkeSswbUpha2RNK1NxQk1hMi96TmdhSlRza1NCZ3VKSmdGdnpoR3h2?=
 =?utf-8?B?ZzZPWk5DbXd1OU51MXEyVzE1WmVoWVQ4c3RQZERoeXE1b2doUDIzOXFLY3pE?=
 =?utf-8?B?TFdMV21lVUYvNUNhbXRxczIxN1l5NjhqVWN3bmV2dE5tdUltOFJ3UzJrR0pw?=
 =?utf-8?B?dzIyUjloaHdqSzhsM1BGL0tFRG9qdjFwZlBaNUpqa1VNeTFBM3N3Z09CUlBJ?=
 =?utf-8?B?aUVJZFNlUUNRcEZHWm9xQ0JyU2g0UkYrbDAzZ1d1K3VnZFhGaTByWFZSRFBN?=
 =?utf-8?B?a1dnQUJDcmtoSkUrTFIzcmg1cDR4VTQxdmJqM2krR2taWUoyemI3cnBNa3VU?=
 =?utf-8?B?NVFuZjRVTkp3ZFhOTi9kT0lDcnRvenozTDJuQTVSbGxPVGVxbXUrYXlRajB5?=
 =?utf-8?B?VXl0S1J3emRYclMvTkJ3RmtabjAzYzh1SUw0MWNPNWl3WnBtTk9qUkpJRXVl?=
 =?utf-8?B?TVlYc21rUHBvK3J6RDRjTkNWVHR3NGl5TnBDUVY5a2RlTGdQRDdSUmVIQ21J?=
 =?utf-8?B?REx6dHdHZXJLZlMydE5zajExRmE1OVd6ZW5LNjF4ZmJrL1lJVTduQ3o0cFEx?=
 =?utf-8?B?TlFncWV1RkdRdzFvOWNnSExuQjVucnQ5alFpeHVrd1hhTmRkV01kTDNZQmFH?=
 =?utf-8?B?Y28wbEdLamdwSWhQc3ZtYVlRaDh3YWxUWkQzM3QxM1hORHFNNnpzQUxYZTRj?=
 =?utf-8?B?ZnY5T1hROU9tRWphUTkxblZlWXFRT0hBaHk3MGpabjlmNzF4MjMxRi90MjB6?=
 =?utf-8?B?RzkvTTFhdHZwWmtlb0xrM0V6QmQ5eXkzdGdPOGZmcURCaVNJdGtvRGY2Q0VY?=
 =?utf-8?B?dkxTOXd3K1ZCNEVaUCtwa09Vc0xETmJJWGpEWVk3QUhvTGcvVE1BSHFGVHQw?=
 =?utf-8?B?TGdxV2VGNzA4MitmL09MbUNSV1V5RDZmOHUvOEYxM08rTVJGL2JXUFZYWlJv?=
 =?utf-8?B?RndSRGxiQjFQaURqYml2TEdKaXd3S3d3OUJHSHMwa1BYODZHVk5Gc2t2U1dT?=
 =?utf-8?B?VTdobHMrd2pDV1U1b01udmllOUUzMWk2T0szbjNIcVNYRGx2OXFSSjRtT0hO?=
 =?utf-8?B?UVloWTdDRmRlRFhQbEZwamdCVmxNY2dPL0FsZi9zMnl5bmxxcVMyL3BrQXpT?=
 =?utf-8?B?RldVSlBzcFRIZk10b0dEVWRJRTRWSjYzOUNSVmN0ZFhIZEpTaERmQT09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51dc4fe1-8f9a-4cba-71a7-08da1de2a434
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2022 06:47:28.6529 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VePCckByugecxzg7fHppt8NfGoEomugMtQPtUylW95YBeVyYFxDABYBDCJe0BOo/HBjb//lZWqJ1Qqn81w2FAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR04MB9381
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_234731_603968_3172117A 
X-CRM114-Status: GOOD (  11.08  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhlIE5vcnRod2VzdCBMb2dpYyBNSVBJIERTSSBob3N0IGNvbnRyb2xsZXIgZW1iZWRkZWQgaW4g
aS5NWDhxeHAKd29ya3Mgd2l0aCBhIE1peGVsIE1JUEkgRFBIWSArIExWRFMgUEhZIGNvbWJvIHRv
IHN1cHBvcnQgZWl0aGVyCmEgTUlQSSBEU0kgZGlzcGxheSBvciBhIExWRFMgZGlzcGxheS4gIFNv
LCB0aGlzIHBhdGNoIGNhbGxzCnBoeV9zZXRfbW9kZSgpIGZyb20gbndsX2RzaV9tb2RlX3NldCgp
IHRvIHNldCBQSFkgbW9kZSB0byBNSVBJIERQSFkKZXhwbGljaXRseS4KCkNjOiBHdWlkbyBHw7xu
dGhlciA8YWd4QHNpZ3hjcHUub3JnPgpDYzogUm9iZXJ0IENoaXJhcyA8cm9iZXJ0LmNoaXJhc0Bu
eHAuY29tPgpDYzogTWFydGluIEtlcHBsaW5nZXIgPG1hcnRpbi5rZXBwbGluZ2VyQHB1cmkuc20+
CkNjOiBBbmRyemVqIEhhamRhIDxhLmhhamRhQHNhbXN1bmcuY29tPgpDYzogTmVpbCBBcm1zdHJv
bmcgPG5hcm1zdHJvbmdAYmF5bGlicmUuY29tPgpDYzogTGF1cmVudCBQaW5jaGFydCA8TGF1cmVu
dC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPgpDYzogSm9uYXMgS2FybG1hbiA8am9uYXNAa3dp
Ym9vLnNlPgpDYzogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgpDYzog
RGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVs
QGZmd2xsLmNoPgpDYzogTlhQIExpbnV4IFRlYW0gPGxpbnV4LWlteEBueHAuY29tPgpTaWduZWQt
b2ZmLWJ5OiBMaXUgWWluZyA8dmljdG9yLmxpdUBueHAuY29tPgotLS0KdjYtPnY3OgoqIE5vIGNo
YW5nZS4KCnY1LT52NjoKKiBSZWJhc2UgdGhlIHNlcmllcyB1cG9uIHY1LjE3LXJjMS4KKiBTZXQg
UEhZIG1vZGUgaW4gLT5tb2RlX3NldCgpIGluc3RlYWQgb2YgLT5wcmVfZW5hYmxlKCkgaW4gdGhl
IG53bC1kc2kKICBicmlkZ2UgZHJpdmVyIGR1ZSB0byB0aGUgcmViYXNlLgoqIERyb3AgR3VpZG8n
cyBSLWIgdGFnIGR1ZSB0byB0aGUgcmViYXNlLgoKdjQtPnY1OgoqIE5vIGNoYW5nZS4KCnYzLT52
NDoKKiBObyBjaGFuZ2UuCgp2Mi0+djM6CiogTm8gY2hhbmdlLgoKdjEtPnYyOgoqIEFkZCBHdWlk
bydzIFItYiB0YWcuCgogZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9ud2wtZHNpLmMgfCA2ICsrKysr
KwogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9icmlkZ2UvbndsLWRzaS5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9ud2wtZHNp
LmMKaW5kZXggZDU5NDU1MDFhNWVlLi44NWJhYjczNzJhZjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9icmlkZ2UvbndsLWRzaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvbnds
LWRzaS5jCkBAIC02NjYsNiArNjY2LDEyIEBAIHN0YXRpYyBpbnQgbndsX2RzaV9tb2RlX3NldChz
dHJ1Y3QgbndsX2RzaSAqZHNpKQogCQlyZXR1cm4gcmV0OwogCX0KIAorCXJldCA9IHBoeV9zZXRf
bW9kZShkc2ktPnBoeSwgUEhZX01PREVfTUlQSV9EUEhZKTsKKwlpZiAocmV0IDwgMCkgeworCQlE
Uk1fREVWX0VSUk9SKGRldiwgIkZhaWxlZCB0byBzZXQgRFNJIHBoeSBtb2RlOiAlZFxuIiwgcmV0
KTsKKwkJZ290byB1bmluaXRfcGh5OworCX0KKwogCXJldCA9IHBoeV9jb25maWd1cmUoZHNpLT5w
aHksIHBoeV9jZmcpOwogCWlmIChyZXQgPCAwKSB7CiAJCURSTV9ERVZfRVJST1IoZGV2LCAiRmFp
bGVkIHRvIGNvbmZpZ3VyZSBEU0kgcGh5OiAlZFxuIiwgcmV0KTsKLS0gCjIuMjUuMQoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
