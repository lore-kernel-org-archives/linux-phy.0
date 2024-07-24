Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3220C3DA61
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jul 2024 09:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cjDOKFYjhUW7VN3VOeReTU1KlrdvghpruQ20rXRI3RA=; b=uZDXTbgPioXdqY
	BFInlm9uu4fHSCAj2FXzGDZ7kmI+5dsY3TgVckQ+loND/h2NCOYh5J8x9mivOlSUTlZzA6xFXPsPn
	yCUw1wkJRJfsttUk5qZO4pd8ReIsnnPfEMIQnNZFFUH0CGWnQhb/2uNel39ADAe/TalsepP2UVsU1
	veoFBjypWpwTq3H9CzHaICCAoXuT1zDoRma57GutpNbCqEuFyU6Kbm3wfZeAV4PBZM5ZXa5jsJsLR
	4HwQlLHcdk33okIL0w/YG8PTmd5rS+0AuFpDWC2xRf6E6Xwt2LgD7cDrVxHy0IVx8BKMDbagvHPyx
	WyqcsCsIUMhYiBDPf1mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWYGB-0000000EvDA-1gTp;
	Wed, 24 Jul 2024 09:26:11 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWYCi-0000000EtfX-2CAL;
	Wed, 24 Jul 2024 09:22:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WhtLyMBN7U/ce6gf4N8G0iNBza7fgNTLRnat6c2okfrH1J/i2IiXe4yASF0wD0/U8OI3+TbX/PEJcPnOQx0FPbnCvjM22vBQ1lQC3HC2LphVnbe4IhZcMN8EaqNz14RC/LMjpJMlc5QZ+VNrfQ/UDaxk+TzTM06DXK74iFLo1vdQ7zXjknsU/TI4I671TrqHwwcKkE+rI3G0enjwd7MoXU7W3uMK3zvafvf1OrCh3z9yKSFZMBQL0RmSKmAyebGDNCWRBRKA0Sg213iyHwSF6gz1xSQkKjq7Sbl7VXyRNbwjigQy8sRz4HchQEqsgaqPC2rUJKwCT4OYb121+q+u0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vp8V5ZO/fCGgzj20rRKm3TZRDHYG/x5FoWpPt2SERcE=;
 b=GAbok8zN5HDSucEr7ILVwCHdg1+Ks0gT1cjA7Nb6Sq+aOC/ZtyIVWxemn/v0/ZBCXnIMtryffJFeso7roKF2FIEZsN8kCzgtDqVqAorfXK5KzBhHRjo3H3x2Z4VjSdm95YnnswF22ZJyk/CYuMUZ+CVLAcMH2y0rBPDxjLUcoGafv5norX1pxusO8AQ5kqX9U/Pm+IFd382cLqSfbVl+fYPhM2TdJYnfDQW4pRQtupkJkA30GnBHrcggKu6T8K9lfHoisDPo+MNpEKLZM4w/6M+w3nA2+q3qtkyV7aLiF+YwiZDW9pyb0ZWuC2WpQ32o9fY4evGPaqp/WOSU0rkvzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vp8V5ZO/fCGgzj20rRKm3TZRDHYG/x5FoWpPt2SERcE=;
 b=SkND8KSRZss6sIv5c43N8EGNWmgF0UIzOegUblh+2rKxiXRdi7TaJa+HNKD/eNCcCRXBVsBO7R7EyVxiOxUfY3J9vivhjpIx8YrbnKO8LKZHXW+eI7y2ZPbjIiHwQL9EQITak7VRTYzvesrEdczg0WBmAIDNRXfMK7On9jhfRtrpj7NqrSVIDodT8TRWpdgRWdzixR3GNH2uf7Ah4HvdNTNVNpv2/wS3HleInaINpWJGut/qd0flrb2W4EkjIKA+bdvw11KRjLGvBlxnG07M+HWNAHrww1kVK+uE6aLVfv8ggCHg+GkRbUMVnlNNQG4Uy+D57cRo7kaQG0yQi1hNUA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by AS8PR04MB8040.eurprd04.prod.outlook.com (2603:10a6:20b:2a9::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Wed, 24 Jul
 2024 09:22:34 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::d1ce:ea15:6648:6f90]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::d1ce:ea15:6648:6f90%2]) with mapi id 15.20.7784.017; Wed, 24 Jul 2024
 09:22:33 +0000
From: Liu Ying <victor.liu@nxp.com>
To: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: p.zabel@pengutronix.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	tglx@linutronix.de,
	vkoul@kernel.org,
	kishon@kernel.org,
	aisheng.dong@nxp.com,
	agx@sigxcpu.org,
	francesco@dolcini.it,
	frank.li@nxp.com
Subject: [PATCH v3 13/19] MAINTAINERS: Add maintainer for i.MX8qxp Display Controller
Date: Wed, 24 Jul 2024 17:29:44 +0800
Message-Id: <20240724092950.752536-14-victor.liu@nxp.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20240724092950.752536-1-victor.liu@nxp.com>
References: <20240724092950.752536-1-victor.liu@nxp.com>
X-ClientProxiedBy: SG2PR01CA0193.apcprd01.prod.exchangelabs.com
 (2603:1096:4:189::18) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|AS8PR04MB8040:EE_
X-MS-Office365-Filtering-Correlation-Id: f72cf498-e43c-48f7-d21c-08dcabc2265f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Al7oiawGJf5trzV7zStpH+qBxDabW6TIFnNHg4G21aYWyjTMeqoiwEUPzeRv?=
 =?us-ascii?Q?BZLMHGRQfc55o6PzFzRvPNatASXFG9aMWojclXttmsd1J8e4C6N7ygZxxItM?=
 =?us-ascii?Q?KA5/sHXJHwuJZNHQdhbQMZeKMH8DG+NCHCMdR63UCM2BtDhtoEYM/ZtxySoP?=
 =?us-ascii?Q?Kz2c4CniJ9QSr3ROXbKO4vqc0kcQhfGW/kwVXWyQUW3H55m/5PfqtHeQDpwm?=
 =?us-ascii?Q?04gYjLNjmFNMZa+8t9nZhTuSgOsAkiOfkCEKW5amDXzq+nrfbPAAeXZn/rPJ?=
 =?us-ascii?Q?xiTXwaXaEuTnW7YBYU2KjU+oXzeXhmV5uCNHwkF19+8HTzJhF5OZKxSSzUKT?=
 =?us-ascii?Q?uzRI8C9Nne3IkOL+82k/TXgl/wORUcvDVpJI0kRG1W5zn4hETq1L7sVBHw8p?=
 =?us-ascii?Q?hdYnkMto3hq7ukgZg8ULN6DZK3bCXkecF6MVKPZ6UmU/tNaXXPVvRNnhn+Oa?=
 =?us-ascii?Q?BhVcl+k/ddUo90Vg2QuMrxrYX4WJsua3k55uJBQiMjcYuiYw7eR3GzGBJinY?=
 =?us-ascii?Q?y04Au5sKrBt/bQ0uWFKu1Cp9S1jW2OwWEo5cnxm/SdWhRSWHT222zKROzftR?=
 =?us-ascii?Q?W1fow8ZlSuSZYexzNkGCMBrqy4sBNKsWmFO990MyalBhK8ZgkR3EW72lJjpX?=
 =?us-ascii?Q?HymmHtjIHGo/TpNpc/CcBKWaBJT/uCeVJQ3nzrqVOAjyobwY88RemffYF55O?=
 =?us-ascii?Q?jQsmB7AaSF2TBjBD2Qju+nHXcGUe+GYjnnRX7uFiSK4hOJskOUy7DKyA23nw?=
 =?us-ascii?Q?egFdYVccOLlLr1zRpimDfcs3Dm9ArPC+cGD5wmUqfyrRvTMDn2xIa4SoMK48?=
 =?us-ascii?Q?svvzW/K4QJW5HTtuthGXubl6XIgojlW4XwO10uE8dOATRt6DmQpxzTRPhabi?=
 =?us-ascii?Q?3NNiW62buuowBt5RWSaxm2N30jvitieOdE6Bu39PfH2iWby7v9DEgBQ4fz+u?=
 =?us-ascii?Q?zQ5ZvPzJw+du/9a3QDaqCkC4/SRwYiPwM/mipHXSdFriP//oRVSp8RqD+gkQ?=
 =?us-ascii?Q?CmDe2MNHn+AtB+8JS86FSsL9/DkX0Hy3pHRQ9B5D2wNoUvZb/CFURjACUxy5?=
 =?us-ascii?Q?KbhhofgvtE2eKUJZ+lZAeB7VDiv3Ept10gwFnsq+oMRpvIMEO3mXbSu/CFEX?=
 =?us-ascii?Q?Mes0gzkXVWLXbTrK2co4jVUJ0WLNaMDCe/ziGtM+84wcRISpJ2l4x3WgH3Zb?=
 =?us-ascii?Q?9G3yqd4EBZc00NzE7K3daUypv6wW/4gAjq8ODPA6G2sRJ+ASCTl52YstSgaf?=
 =?us-ascii?Q?09f1VpEVtQpq3RoWLDj83EGtz5T8TcAd2LKR1HZHDNTs3jkQNlUi9HGLovDu?=
 =?us-ascii?Q?ZHyTDh0vP1UNINmmqUE8LUH/JD43nieb3yneN8OR1EAZqSiqOOJpFcvi9TOg?=
 =?us-ascii?Q?5E1eBFY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(52116014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CPPUWeJhb8rDP1gF1Ovrvn0e3NyaNRQrILNRSonyP6O6ynqGr8mblMvVBC2E?=
 =?us-ascii?Q?cwV3UiYR1lOlbC8e6rtKDiO9bjOlIYMUntLG6A0IsI/MN7+ajHXj9nLa58bh?=
 =?us-ascii?Q?AhOMwQk+7KIZWbaYA/Wi2ErmZiBqDMu7FWArP7I2RYRKHjs9cs/YdxdN4B1F?=
 =?us-ascii?Q?5xyQvhNSjBItJuFOdxCQzsG+v6wbikCDbfLUJpH7K/s14PY65T2zQtpocNb0?=
 =?us-ascii?Q?pizAKQqTTs0Aby3a80TkXbU0oBuzVXk179DxSeaWHqGWF8VXC0Uil1FgF9Ul?=
 =?us-ascii?Q?eNQ9AA4pMrtDBkKbsbh7Tv75fib1haWF5W8kPRLr6dax0jTx1+ulZQZOHCop?=
 =?us-ascii?Q?prucaHNfR47XfL4GKWPKBjB4gX+Fr2V15QDlgVmO9U0136rNA5B2h4eUYhn8?=
 =?us-ascii?Q?Wz2OVnOnxpPMQ20beTn1V/flkmgePAQCel6z2fYhpAw5/aTF3pdmfLulWV//?=
 =?us-ascii?Q?aJJNfMWyowt+Q3Ndf6o4ZYhCrzpPWu9BcbOMNuVrvILj5lBVbhXRlrr/YatB?=
 =?us-ascii?Q?0kN/XUVhNoRu2uLr+sHqU4PguvNKjYwv5XusKuZxF9/+FNp+hNeYx4pBCfUa?=
 =?us-ascii?Q?98w/OgH3LtK9smzf4LCuKd6+DH0xaubpH9MXUga6aJirV1uMHHEYuxhj74Pz?=
 =?us-ascii?Q?SWR/PAZDcZOE+hVv9FTxKC2rsdZ4iO78lqlxaQEKEJHy2b5JQJkAPc6SgXkQ?=
 =?us-ascii?Q?Q53fNdM8+Z0wzZrYDvQpx9A3ROdxPT8F4Slr0jEz00zH/8F/oYxNLki2cb7j?=
 =?us-ascii?Q?XK+IKds6n7PTbYazSOy97GVnIpqKzEDMfckWWSWwf9kJVSMvJyeJMyTh+E/4?=
 =?us-ascii?Q?2BR34g00LmZIxcynjZv3EL1xfAfil9F+VcuG2QM3D0idLd214tUlKFvO8u8Z?=
 =?us-ascii?Q?+ndz38cb/8bKkQ4GR3v4EfAjsshdQYcL3JyGZdMEAAQ8eX1iev5aEek3IE+z?=
 =?us-ascii?Q?ECV8gPYigj4q5+JW+13p93ETeiipvPbqc1MSGOPH+VBXIkS80mJgxcQyfUzL?=
 =?us-ascii?Q?sFFO0KwBhMwo1zWmXM3ZAeyBKNIYunh4n3hPLVfdek6D5ZUPC+bQDOIDXIMR?=
 =?us-ascii?Q?5vnkmZm/5uWqkASosKQnGh7/qR0jfg5n1gsHOP9kvk1Ds5Daw6gWcvS3B/s+?=
 =?us-ascii?Q?E9ZoneBQYOBFPkmuCKVworBD96PCYD3DgMfTR1Og0QxIiPHucoiYhsFebAty?=
 =?us-ascii?Q?QxON5pkzpHpvLxs4ZHiwlBUQ4OKh+KEJCSyyjcZ1x5f2m4q3bdeBUa1aARo9?=
 =?us-ascii?Q?r7pbewntTj5CVEF7rwFl2xxf0wlTuO3THumzChrnXDaCDj1nfdS4SENv11Oo?=
 =?us-ascii?Q?b9cISO3mE8Ym/3GCUgY1VAdM9C/VUrBBjsyrYWtA4SQpxFStGU4hBerawIOc?=
 =?us-ascii?Q?Nc7CvVz1kZ9YT7Lvzg2bhNagQOm7SB95ANUgb99o9nBOwbX5QXWrf6OMNNnM?=
 =?us-ascii?Q?3JfPSXdsCOvxitAuVdzltAZ38zju+6lxsIomwAx5iRIeYuy0ZnibM2iKQ+2+?=
 =?us-ascii?Q?VqFw8MAFttUo1yDW6/OrwdY3Z2WrUIzVY5t6ARbWL4545dpu/6fPu3TOcCnj?=
 =?us-ascii?Q?Zd4NqNzB4YY05hTH0Jey67QzjvIvZkpw0ZaIJNIS?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f72cf498-e43c-48f7-d21c-08dcabc2265f
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2024 09:22:33.8692
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wGcI+GM/HpL3OtkiMZiUo674xnkqwh2YCyeSGiJg8lNX9F8DwToiZfze2c6QKJZA5Ay4p9CR1RrkyxDqP4Cnkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8040
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240724_022236_704452_B83ED0E0 
X-CRM114-Status: UNSURE (   8.88  )
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

Add myself as the maintainer of i.MX8qxp Display Controller.

Signed-off-by: Liu Ying <victor.liu@nxp.com>
---
v3:
* No change.

v2:
* Improve file list. (Frank)

 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 10bd3f40a2f1..fa82fdd9bfef 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7490,6 +7490,14 @@ F:	Documentation/devicetree/bindings/display/imx/
 F:	drivers/gpu/drm/imx/ipuv3/
 F:	drivers/gpu/ipu-v3/
 
+DRM DRIVERS FOR FREESCALE IMX8 DISPLAY CONTROLLER
+M:	Liu Ying <victor.liu@nxp.com>
+L:	dri-devel@lists.freedesktop.org
+S:	Maintained
+T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
+F:	Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc*.yaml
+F:	drivers/gpu/drm/imx/dc/
+
 DRM DRIVERS FOR FREESCALE IMX BRIDGE
 M:	Liu Ying <victor.liu@nxp.com>
 L:	dri-devel@lists.freedesktop.org
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
