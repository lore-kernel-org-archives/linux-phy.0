Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10250CAC582
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 13:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GSBdZnJPHNmtSz+vKvEOz4LnLN8hMycJ8xkf+z/eemY=; b=HlwQ0/1dbJk46q
	M4y9pr1Ln4s+FfwmKL+YMA/U2I6unf3QtclWwX3RGs4+/3kriraOKL2UPXx9Q5cgTcibNLndUetwv
	v8ycIu26as6tcWw/po3AvfcMx5Wcy+1lmClfRwssYpwSAZ85xNUTIkaUb7t7+iN+pMDEIW8OA3Zyh
	q3gC70h3L3/UByM6bcYjOsm/skGji1dRcYCm56NoHhRVJ0EwztvBTPyssavKWc9A6lQQ41hT4Z1Ms
	z2hsqJJESkMtTVtov0ew/SO0jBgq01gmy2o1lhK4bSPq0LEhWK3UMMxKuBrkePBVjJ0+9CYJiTQIv
	Wlf3pQ1MX69XrMW0jiHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux3lx-00000009Xq0-3VgM;
	Fri, 12 Sep 2025 13:25:05 +0000
Received: from mail-os0jpn01on20628.outbound.protection.outlook.com ([2a01:111:f403:201a::628] helo=JPN01-OS0-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux3lu-00000009Xmr-1dJk
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 13:25:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eEaf/azsfW+A0Vgl8cHeAgC68VdGdWKGBrNxuQdacNMt+66qfcovp04k+2LBt6PQ1VbxdAtaIc9y38O0UCps+93Sd0q7Ah3PKYxEeah08uBw9BSD5ibbzln63MxxMZ7I+B81hlJxEUtCG0geooWkmaPpJYPcs2dg4vFGeEyTnv3pbKDv7XwrKGS2SvLoj5bhXUgJLCyMIeOlDqQO9u7bw63/LSjPbMEGLNbjRvHRPN83dZlM2FwvBCcv+l9dghH4HgkYrwiih6MiUHhOVlAxUal2jpMlT/CDHwNgDfOQXuFHfWluc2KeuhzV7ChH9iYo0myKrTBeiKoZW87faY3ltQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vYebapMGfDInh7KixiWRkH74xWEgL7dVnvsQ4nog8wU=;
 b=i+CnAdE6Kv7wirLviM+zQrjnwBH4Fa8LCj9kEpPZSLkXso5Kqszfp/+YN6fx6Gw8nfk25y0wElyIsdmTNBBEEkury8HSAoJyB7EyPFPp5u6o8Kkd56kh4IJDi6Qcg7lCGPS3hyccZiha0EgyylGJ9sh0g/Hr424RcDm64SPUXxet60AikDQmL2C5t0EWTYwCyVF02d7+WcM6DNwHkfMh2uWobpsydYFBkUiJh1i3YjEujvy+IA06lCERn51TeZKQuOiwU7tFreEe7Fg0RzuckH3nn3So5KRQPRos8+c5WzzAXal3BT59z8qAqysjBEl0cnxqqsMmgSuFTFZvIiSAJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vYebapMGfDInh7KixiWRkH74xWEgL7dVnvsQ4nog8wU=;
 b=euD/GVjSD7BFbXDPhFCzOHwX6mDM6N+8bzdno/INvUQt0WZmNkjSx9tXM/S55HhPB6JDqVatpztokOC373kDmW32+DAoTGJ1lecGpMy5nn7EqdScgVrjHpHgzK8I1rvIk0GJ6oCGLooMFtumfzJdxHiHPUTgD37gnHfWvqlDzSg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
 by TYYPR01MB13387.jpnprd01.prod.outlook.com (2603:1096:405:1c3::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Fri, 12 Sep
 2025 13:09:34 +0000
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31]) by TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31%6]) with mapi id 15.20.9094.021; Fri, 12 Sep 2025
 13:09:34 +0000
From: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
To: tomm.merciai@gmail.com
Cc: linux-renesas-soc@vger.kernel.org,
	biju.das.jz@bp.renesas.com,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: renesas: rcar-gen3-usb2: Remove extra semicolon in rcar_gen3_phy_usb2_remove()
Date: Fri, 12 Sep 2025 15:09:10 +0200
Message-ID: <20250912130911.185674-1-tommaso.merciai.xr@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
X-ClientProxiedBy: FR0P281CA0102.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a9::18) To TYCPR01MB11947.jpnprd01.prod.outlook.com
 (2603:1096:400:3e1::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB11947:EE_|TYYPR01MB13387:EE_
X-MS-Office365-Filtering-Correlation-Id: 619bf206-6755-487b-a314-08ddf1fd9e5c
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|52116014|366016|1800799024|376014|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?v5WA9eu8f0xRnPfdwfK2Mb3LBarsHFCljaSd0ksInMKA7QKZT1m/v68iITtC?=
 =?us-ascii?Q?LMgo5QQ5ktyHT43MD5D14sFN10ZszxUC6C3nBZRie9vldqQU9vmXUVxCMC8H?=
 =?us-ascii?Q?Hs54u8Hfqq1nStrxM8oDB53h9BlSZPVdlZyGR3QrFzcsRyJa7xWzrTaAHBRp?=
 =?us-ascii?Q?+f128ptv98V41Q54yw9q+NBxtlTxK8OONidTF1PAe6qCZNe1UiEoNZIcho9w?=
 =?us-ascii?Q?bjh4WdZwfxYsIETzvCmKSrSYgeMPTuFT56Eyausr9ZS5YP83dYsbg3/uOfXr?=
 =?us-ascii?Q?JTHmfUvHNzWf6k0cRfWeEasWqyRorC3B5cxetbh6AUJONLPCvHyoHU32wgND?=
 =?us-ascii?Q?RaXYggZc0iv+lvsKySnIKMi64KdeduMjSHmdXSG5rTp8Tc8GF9Lw1OqXNtYM?=
 =?us-ascii?Q?e40lKGv7iUqAnJqa0jvPB0+4g2IlQV49xCBQ9S/ReYl1I1nTEiut0A8Y8KD7?=
 =?us-ascii?Q?bl/YhLyQiIS7FkHvGXs4L3QFRosOMa+Ca5F4pSPKF9TxhLcNuf4hqHhM9VIo?=
 =?us-ascii?Q?cmzbfmtF+bfCVy/8HmqDEl5nVVRtbUqFEzJ/Xfg3MrB8ucweRi7hgVa21b9C?=
 =?us-ascii?Q?iPIUtlVurkXO0juedDKPzdi7MqGaW+x4V+3ENyMU6KRz9tuOtvMtSl8QivvA?=
 =?us-ascii?Q?6tzFMAk8+nZYQhoXS8cPNLquq6T44SvklOANB+Vg2R6HF/dLVJaBMBRIZU2F?=
 =?us-ascii?Q?2SegbzDWNVYtK5kgnB8u0lNNLuRSliHoQ+WiiW9gkwtKYM1phq5li33Fjg1I?=
 =?us-ascii?Q?VLAiHlJqtEETEtLlxli11waQQMRP8TEVHqC91tvqUvU/1qZx/oAwflXycqdW?=
 =?us-ascii?Q?cOhg1xXQdtqdiwDtJ3wT6Ri8b5I5dA92tEetDsO53ib6GNc4B26zG0dlYBKp?=
 =?us-ascii?Q?BsTw9t0UI2DgLh6bMmy8ezS4t6xV1kMzT7vrWvBO2wqYzPsRNKNAPzBj54RD?=
 =?us-ascii?Q?eWsTJ0GV+9w+0VM4nyms6cuvKJYswDjitkjx6IDVz7PRcXthATvxyw4WDoeV?=
 =?us-ascii?Q?0LwUeMMBwltkUchMm8mvu9Fy1grFqiwOkgqJxkyATlyUHrCq1x68EILKrgra?=
 =?us-ascii?Q?9N/4fSGvRLav5ZEIo87dWTwoYZP2Exiv4mT7veXKdJjpWvNd7Aa1U6DgeEbW?=
 =?us-ascii?Q?aSvkLWnZWUVqW1O5rK0mp4/caHLHOpBK079Jpq46J6mDSRuAVVNcvQwmTOiV?=
 =?us-ascii?Q?BThVTb7RomcDMb1ttZMM/3m16kjrBOqwUsGfJeslBl7SLmcof8AEQLWyHtaV?=
 =?us-ascii?Q?5xgsR8X5seUJtm8auPmYcwSHhqxnAxo37Fg7mf70beD31OXVmZkLJgWaIKT6?=
 =?us-ascii?Q?cs1/B2ZBz9oWS72zkRBJJzClkvvHjAEYt1vakyylN2Rq83LtIBhG58pJyWoY?=
 =?us-ascii?Q?1JfrCmX/ER5zj+ecdN5P5MLd/gtHl8MafL82uqvFzRXx7ZxM8vYauD8U6OFa?=
 =?us-ascii?Q?iFmmYrr4x1LYM5jk/0ZoOtc/4JyCdj+uxDHABZnGVSJPVolbHDUUdQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11947.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(52116014)(366016)(1800799024)(376014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pWgIqvGm2tWjbxCBjzU1JAiYvYb1+LY7h7Jied4/G+U2T1Fz6TPKjmcUDUTr?=
 =?us-ascii?Q?Cni+vgFLOHjD0EnWc2ODl5cvR1KXAPTt5cShRGpbv7rd/bZplFH2ZMzF0hUG?=
 =?us-ascii?Q?qm19wJ6FROrzIWtqdnQDTR/NHFNleDGXoODOsdsdgVpJAc100YlIjGJqv0jc?=
 =?us-ascii?Q?iw6i23p6ioUbevnWe2rZwUBQJEghbjck4fzGLPwSjRUoVJHw7/4zLjOig8e1?=
 =?us-ascii?Q?QRylkcVY7qnvOwfaZ8oCMwP2tHTXwmKnW7WmnK7EX4QPhOAAxJW4Cz3Iw6OL?=
 =?us-ascii?Q?2uXXZKetAlhkx5v4IWbN9RKM9rAu2lL0zwLoZHM3AzNPlmV3/w95aOm+8nVH?=
 =?us-ascii?Q?Ha+akvcF0Lgpw+2KF5Am/Rkya9ftesQhC4qEu9GabMP6EJNuzAKXLosdhY9X?=
 =?us-ascii?Q?GB+6ZIg4Gt5haMh/M2WiJk+0uccLVrFqq6NFpTOidQ6VqSqsBkvsuTapBcU0?=
 =?us-ascii?Q?NG/nDFAMWtKnv7TqsdGXn3/tcSb5cgHSeAjgJOgxnzxDVU4f++l4h4Rj+uBc?=
 =?us-ascii?Q?+40/aDrsoCACHlr55kceVZhMb20g2psdyAgwbnNu5fcM7aEQ5K52qdVNEZjn?=
 =?us-ascii?Q?yaIQBbDZlOE7seaWly1z+fW8sKtXqtnhtzhnnk/Sr1KV5/kHxGSgIsAjgj/r?=
 =?us-ascii?Q?WSpMCmd6HTafZPW45wpjWNTBXZA6oI4TjXKGP4f4nuAoGkX44NllozxfmAUo?=
 =?us-ascii?Q?q2uyZ0zfARL7EV+H7/IUxZrsFfPqHgaCAsGjws0HUGuxTP1xXJlcPrNl0Fs/?=
 =?us-ascii?Q?BdvXB4InvvDq3qbLssLETh1oCEAVlewZ4MlAwGHkGAmDlL0RwZRI3jOzfQMG?=
 =?us-ascii?Q?9gYlPF7Gu5N0Zve+AoEvIh5Zgh/HxPxS+we/8FlWL/OhHmcbRQU4TzzfJnU/?=
 =?us-ascii?Q?orKgImyDOkJJRuB+6jTRIA/Aoq1aHD5c/8fatBN4QiUnCKUq1lyfbiL5FfmJ?=
 =?us-ascii?Q?ItwNgphcllcpVyyNe/D+KpXaN179cb51Btv/sT9sQu3AMUch2pN5cV2jV9B2?=
 =?us-ascii?Q?8HeYNfrX6Krd6hF/QOSdPSVY4dxHR3ew+O0RsS27lFNxDwmxltKwhpMMfy8a?=
 =?us-ascii?Q?K/GVa7kfi6cbIVI+gDfX9uFDnLVkzwdor8B6ycFjK7R+gmFgxnYOu7BYBNVC?=
 =?us-ascii?Q?sNMAzPlDPmJnImCVNgZdAZFPZ8CmuLfM489Gm7bBixOIDTaWBp0sY2XK43Zi?=
 =?us-ascii?Q?CAwd/KKH+LK3/6Nto3J9NtIcFTC3DXa8BdnYGY4VVYUiWobqzeraiqPPWCVP?=
 =?us-ascii?Q?fd91nBpDcUfzaDD/6tOl+KtvitPd9drVf/indL4Bc7gmPIjtP0uKOOnWKr2B?=
 =?us-ascii?Q?K3HNbhJuXzXwahknyT91B3lGO3jCB5JekZsGUQ5F+GcRkD44vn5m4vftdo6h?=
 =?us-ascii?Q?f9ERYK6pU7kPwyjMWpLkTqYKBVT4wB3dnwt5gstOxLS1P2wgW6bxw3F4yv0l?=
 =?us-ascii?Q?/ArAsm8jMrR3f/6PJzOiP9KkHwiWQqYnm1VxHMNNJnQDxQQ9Nm+KY88gSFdp?=
 =?us-ascii?Q?RaYnz2DwRu+R6pHS2yqOgr/iNLMfpmL0a9ZiFd0KakDLNdO1ap8LSRgK49xy?=
 =?us-ascii?Q?CbbfZlt5OaJWvMEsqE04I2y0ykAQFkiQruHVZQzqD281wm1bKBY3UKBb9PrJ?=
 =?us-ascii?Q?dMBkY4ECz0+ytU1H14MY8nM=3D?=
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 619bf206-6755-487b-a314-08ddf1fd9e5c
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11947.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2025 13:09:34.6252
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9ebh3a/Ub5kTdS1XNTF849+2WwqRNXBY6t+tVxxqppU0oP9e/BFeVGH099Mp0gYDZ/4CNVsqqX+ryTc46xtiFmvrhkfzSdkBQHu3+5z7nuGH46cSwE0tTMZ5JLLKi8/I
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYYPR01MB13387
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_062502_533954_1FBC6857 
X-CRM114-Status: GOOD (  10.22  )
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

Remove an extraneous semicolon after the closing brace of
rcar_gen3_phy_usb2_remove().
This has no functional impact, but cleans up the code style.

Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 3f6b480e10922..6671616b26cec 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -926,7 +926,7 @@ static void rcar_gen3_phy_usb2_remove(struct platform_device *pdev)
 
 	reset_control_assert(channel->rstc);
 	pm_runtime_disable(&pdev->dev);
-};
+}
 
 static struct platform_driver rcar_gen3_phy_usb2_driver = {
 	.driver = {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
