Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 567D4CCFA19
	for <linux-phy@archiver.kernel.org>; Wed,  5 Nov 2025 15:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vzZGdZuU46jMM1bjuX3OPDx3Ycmy8k4HjtthektxkkI=; b=dw1lwhZEQxCoTk
	251MPtgj2Z9wwnFUJ2p23GSO7aqy/llKRACQlmmRlXsWo3qrL7+OY8stCNQIQskT3brzbPYGxjWRD
	CZis+6UcKNmtDuUwcfPgbGoZzd1A7HDIL11FxKQOtqCJXo1cc/N/H6pAhKR5tfShwPkaTFI0DnBF0
	JeR8drmKmsR4U5e+ypqOmyhEprG0zBwEndsPiXEbsixO2zX8pnUvqh+kRltNnqnfqpsykJ0r2lG9y
	3hlTYU69q29TASSUrstKy0o33eYwG9JNA/yaKWA69FYvd03OU5UE22ijHJC9c650OCrGf7lkbWxhJ
	7jiAfbQX+1cmph0OCNvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGfcQ-0000000DxjD-0QmR;
	Wed, 05 Nov 2025 15:40:18 +0000
Received: from mail-japaneastazlp170100000.outbound.protection.outlook.com ([2a01:111:f403:c405::] helo=TY3P286CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGfcO-0000000DxiQ-0ogF
	for linux-phy@lists.infradead.org;
	Wed, 05 Nov 2025 15:40:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q34MhDuoYsoiSdeZrSB8Qec4/syEA7rEZuecRlBz6n5Pxtv9LouEf32CSpHUPbkBnv41iDagmizHFb/bcE7fAPpI/+DTy9DPphnE0XkFN0t+VN176SaDODw0jJZwck6p9loKJSFqxHLIx2LjeV97GVsfPIHNpwZvpSNvT16gyK5/88h8Ss3vi2aKPWoF0Z4iXGFFhfVOoBfDe6C7Jcur360cPyDk+LAfInwFrecuckx32NGAc4wlma23rPrhcCCz3GGt/35+c33mtKaQCrc2JEZvJLSCnzLzFkXPIzoezEBDhBBDx2d89llRRJFb1AiwoXwRG+RMkLnKRWblejrcfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rLcQ/3FrrkmbVNn/o1fFs9+twRNxVfo/nVxxdD58vHs=;
 b=X3s3x4PH3MuJfNmWeki668Aj3TNMxFnvKDamgn9qBIBZYrVqRuW8BTCC46SqhqP6mQIdAeuYiu8tWci4D9HRN9arnLoYoqSeZmRC/aoo97ecaCYQyJ1p9O4o9ZI4rfWe21nZNtidfhqffYLq3x2XitbYFpQ8WrO65BNk24qoVtJCEGp3tERHoaVCLeZ2aBcrTdwtbd5CBbOO+6Xt98ZUJraHRs3m8z366ws0RMZDdRxKUgTzL+eTaoWAv5LCNCzn4LWUN9peh8PUEW6vs/B5Dh+mBpfMa0aXvwyy/ao+rFY3F5vvLLWrsLo0xAoJm0cmYMtGiFS7brhHETfNb6NXWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rLcQ/3FrrkmbVNn/o1fFs9+twRNxVfo/nVxxdD58vHs=;
 b=vxnQDSNK3FLgP1DjJIXOYo+FdSy08VGfDSTGadutkfJVC0RmzvTmnkNhN2Uhkf18KlGmiNlQaic/Gkh3LWCzjO0WElQFoE0kXaX+pChTvApsa1HukkgKVnHr4U7wuaGMtUnlUIOHVNlm5s4DL+CE2siWki8HQb1zcK5GtglqPxw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
 by OSZPR01MB9329.jpnprd01.prod.outlook.com (2603:1096:604:1d7::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.8; Wed, 5 Nov
 2025 15:40:14 +0000
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31]) by TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31%6]) with mapi id 15.20.9298.010; Wed, 5 Nov 2025
 15:40:13 +0000
From: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
To: tomm.merciai@gmail.com
Cc: linux-renesas-soc@vger.kernel.org,
	biju.das.jz@bp.renesas.com,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Peter Rosin <peda@axentia.se>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 02/21] phy: renesas: rcar-gen3-usb2: Factor out VBUS control logic
Date: Wed,  5 Nov 2025 16:38:58 +0100
Message-ID: <db3a327d897b24ffda55f0e0ee7ad987285ee2f6.1762354366.git.tommaso.merciai.xr@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1762354366.git.tommaso.merciai.xr@bp.renesas.com>
References: <cover.1762354366.git.tommaso.merciai.xr@bp.renesas.com>
X-ClientProxiedBy: FRYP281CA0002.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::12)
 To TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB11947:EE_|OSZPR01MB9329:EE_
X-MS-Office365-Filtering-Correlation-Id: 6723b965-d50a-4d6a-2528-08de1c819c8d
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|52116014|376014|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?bVSzK6hQYCEVmYnjLZVpGJr1JbfRL5XtEs5BsAn0Z1TLkkByvtzHmOcd2KJs?=
 =?us-ascii?Q?JTSmISEblthKyhtJ0Uj+oP/b9tvkrsbdtMkJBg7pn4XEmxzAeG7HO+jMEVUd?=
 =?us-ascii?Q?dYPQ4hDvpX5hVXJze5BsPSiPB2b8TJPBKMO8tkyPJyjy1ECgwre56IHD5/RG?=
 =?us-ascii?Q?k8ndUhVkTCd3kCIQNaM90zN5DJCOnRPMlJjifS9tc3JpBHnY3iIBc6W4eU7l?=
 =?us-ascii?Q?VR04l5LKmhFLX3jkX7pQAFOt9rfLjYG+kQFjFh6kVoHyj4CyDlwCK28TPCYP?=
 =?us-ascii?Q?rdbZNrmx2H+RjXVxXlPP3FLMAUwo2dlrFYB7TcOgWhAvsQkCYiGtOprDF4+n?=
 =?us-ascii?Q?m72EO1+ssYmRcsYdBxXeeUDpBBvLWnrPkpEOR8f7jJcboTGTk/NB/i62XUq4?=
 =?us-ascii?Q?DCywWVN9Hg1rgP2OhmD2rAfARa8h0HaxlkA0wHa9vwe+18xMmkW6D6FlMgZc?=
 =?us-ascii?Q?aw6HtaGhEMeULfIkXE7M5HlIX1MpggEBzHmR+P03pR4rtMpiz1/EEc+OOvqv?=
 =?us-ascii?Q?kgzDYcOAWJt/ZkuTiRIVIU2kSNHmBEMHI3IkyU1tAP4ee8VZVk+GKtesv2bf?=
 =?us-ascii?Q?GGl1PX3hTCXFlWRzM3Re+BAh5cIPBvO7vFpa1oZC0jCsaBw+Gpn0Lg8t0KGL?=
 =?us-ascii?Q?V/jDSNhqeQHUWapzyQFDV5xUJonRYpo6Wp2qwemQ5cB9IiYwc5J63DxLaDx5?=
 =?us-ascii?Q?6W3yDO58+T4SIn13icnWoYsC8quOmDo+0iRccK6MSzfTAZxuDQ5nBOdjiuEo?=
 =?us-ascii?Q?/EMWltT+faudGL9gXUVRyGDLwTNrxfjKKayjz7w2tziZt8my4ua0bWUNRkfZ?=
 =?us-ascii?Q?2nI8zQCxEAKZMH5nn/bZR+w63+6OkrZfbA4OGGA5FkTAjY8dAwUMjEbkWy1u?=
 =?us-ascii?Q?Nju6kj8g/kUf10sIiLtUWtK+MzFUlWuaZ6SBBAnhBJjrZ+8YEFuU43nCCzaO?=
 =?us-ascii?Q?r+zvMhoH+S+Ke57XjVDgWP5J3WTq9GZjvOGJQeijBWJ1UgW101BvCSBoX/eg?=
 =?us-ascii?Q?U6EeI/s70WtbHVIu9uFUnanvq76lHzN2axQ4bUWuLWGxNygb5FU/3quAMK8N?=
 =?us-ascii?Q?D81M7MLWMPN9I+2f0qWgcaGFI6Tod5QQfsTI5q1v8SW2NPCc+GHHqsrwgAWK?=
 =?us-ascii?Q?SBl1wuEfMVe6uzFMJIsAq1NfIlkeL+CJMQlz6XvBq9L43AoRWbG7W+rzUBSA?=
 =?us-ascii?Q?Uz+BWEbQ1FDQi0WKDPIQ/CsmLsb/0fux5gQxObwhLNTp7rASN752mQzIX8YV?=
 =?us-ascii?Q?LlzlT+t3SIROkEWvOdHIItsZ3Znypi2VnqMloQm3LKY2MKxmf8fGy75cvc3Q?=
 =?us-ascii?Q?lo/MehunfSyeL82SwEJW5qx5xJ1c85EDt3frTkb649dORY0caA9fDg/1159M?=
 =?us-ascii?Q?613ot5MFWI74eB8TXM5hUhte/hqB7ApZA1EgPttL6UoTYWYB4FkWB/5RhxXM?=
 =?us-ascii?Q?o7vrXcWduQOC3kL1zkWpJj36XnO6xQbKZSTJtZWkjpDZ9PdgEWKrq8+/xRoY?=
 =?us-ascii?Q?HK2WUHJts48wvywmELvEPlF6nB8ECjBhdSwG?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11947.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(52116014)(376014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XbKIqDfCLXSKVNuKtxCXiPLmXcgQ/zrar7TfQSSiOz7UbgJZZtm3hN9a2jeV?=
 =?us-ascii?Q?gUqwzjmkIq6sNkTIOPLt+2PqAbXHiUS0VLenPVNNKOZLjAp2SwLJgTLSVmRX?=
 =?us-ascii?Q?i/1bmin8efSU2oYEhoVDRk4D6bzkAljs4eCNo1xpymD9LXvilf1MBLkqID03?=
 =?us-ascii?Q?vXPmHIIfBH5frmRZXnp3em4u/yOCF6Ev4RqmZJvsAKBmIEGzTul9AjhssFW5?=
 =?us-ascii?Q?+HRHtNTgnq8xcvtNEn0nUPs7cuIJ/Xq6Xf9xvd3qL2fljxQtQ/Ivw9BUFyWs?=
 =?us-ascii?Q?qg9pfG09ZCt9/UCIlv17GbSQ1eDSL/ozcrMxKkfjNjRdMiQdU/iCQr5swn72?=
 =?us-ascii?Q?rgP048+BdRftsxaLKpL17kEkl7ZJW1lkuFU4vtA2pKo29xoJZq62Qw0JzdhR?=
 =?us-ascii?Q?cdvs6ptZRXtTyf95tDfdQJO2G0KrhQntYvr/3Et24Pe42quBi1YmkVhfz3SS?=
 =?us-ascii?Q?V9nC+QVWPmYXZTuaUVzBSojbVxAZfww9YE1z5kzEAMTj1lz2wkGufMXtkZ5j?=
 =?us-ascii?Q?j46TxltRy+JJRFJHnhijbUx9apiMwxbi8GOcv/Hn+Ts6tgvu/CWLp5tYSroJ?=
 =?us-ascii?Q?2bHC8ALcJ8HBzZGZtYOMBkWF81zJdOMk4oEjcW2fm6n9GWAn4TeVn/zoyX6H?=
 =?us-ascii?Q?sdItPyyGuRb2rDTA65xqGxQIcvwd4fcG6k5JOd9fuuGfQ5TfmW+HCqnM7bc0?=
 =?us-ascii?Q?ULa4A78IPQ0iABOB2o2zN0P0yK6NGEKGkbIy/VT1+Xva86KqNVh62/L49m3i?=
 =?us-ascii?Q?Y7d544bSljMpbfKSbOopm/c+kqZqY7As6oND70vcCDFBX25u3L2K6ssCKivs?=
 =?us-ascii?Q?3RlbDXkBabE7oSU5yDJRmR8EL36fzt0dM8XzNz02XBE+ea6bIjViK5ro0s5D?=
 =?us-ascii?Q?IG5uyNDqHwsUYCTQZVHqIwsUAJtGteR48wqRn2v6prviNJjBb0LMxSZNdGZ2?=
 =?us-ascii?Q?Z4Zu7UMY029KxduDXzzjsz4iweGt6oxf7mq92nhyv3Yv8EOUeL2NHXlA4fYG?=
 =?us-ascii?Q?XpDyQOK3vmyq+C6Wmvrx8gfG4xdxVJzU30agXphTweQK47PusPoVB11bAKLI?=
 =?us-ascii?Q?PIOqDBgy56Zzy3in11MFYd+7k8l5eJzQOBZSZGlSI9GZZ1I/S7uqd/kBzId2?=
 =?us-ascii?Q?uQfl2ommZux8qFZQlVpesVLJUla7lNm45u1un9a9bPEQYcFPz+DEcrtK4fqp?=
 =?us-ascii?Q?j9tKGLN3qFFH4nHBn4loPyvacDrZ1B6uM/PNrmtirvnsC3X4dobYcGnW3Eay?=
 =?us-ascii?Q?yfxZpiP55Y0jKP9gswThu4WasrzMWzex/qSL7dgOpSQYNOXw3D5kFHlMY3KP?=
 =?us-ascii?Q?MDmGt/KsPzeZNYRqcFoIG0g1KDBev8qEatUwx+CyzVdEocy2DjR7hzBpO357?=
 =?us-ascii?Q?c4yVxQiYLGp70Ce8b8xg5o00B3QSKqqn4MC2+VudFwAUWN5sLz5ooelwaO9b?=
 =?us-ascii?Q?fiCeoWhnI2AtJplPPBpC2+M7r+SheYsNln/6szx07tylyxEj5RZj5HQ+eYTj?=
 =?us-ascii?Q?7DZNw8VsU2GuBoCdEjcwx5SfKb6NbXzzmbHYKK0pQHjIwe4xXx9N3eFGqVEn?=
 =?us-ascii?Q?rHR89IX+mF6Z9+l4mlFnNeNMx1MWXDRQtI5gae0fGlGjfz1h+zMLN8HdP7ys?=
 =?us-ascii?Q?bpS6bAAo2Qwyzvb66HWo1pU=3D?=
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6723b965-d50a-4d6a-2528-08de1c819c8d
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11947.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 15:40:13.9316
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: adi3nzFkw3fW/e4e95ap+3IAI5khbUTYURit665jFiDAVhVCpIFx89GgJbUNgi4alpNyQAAgF5/SVGd8Xbm/vzn+KN53vf3m2l0L3UOIuxiscxkfqAtN/c081nIITv3S
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZPR01MB9329
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_074016_239279_9A8FB747 
X-CRM114-Status: GOOD (  10.65  )
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

Refactor the VBUS control logic into a new helper function to improve
code clarity and reduce duplication. This makes it easier to handle
different VBUS control register cases and aids future maintenance.

Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
---
v1->v2:
 - No changes

 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 34 +++++++++++++++---------
 1 file changed, 22 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 38b49ceb5ff3..f6026b3b95e3 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -203,28 +203,38 @@ static void rcar_gen3_set_linectrl(struct rcar_gen3_chan *ch, int dp, int dm)
 	writel(val, usb2_base + USB2_LINECTRL1);
 }
 
-static void rcar_gen3_enable_vbus_ctrl(struct rcar_gen3_chan *ch, int vbus)
+static void rcar_gen3_phy_usb2_set_vbus(struct rcar_gen3_chan *ch,
+					u32 vbus_ctrl_reg,
+					u32 vbus_ctrl_val,
+					bool enable)
 {
 	void __iomem *usb2_base = ch->base;
-	u32 vbus_ctrl_reg = USB2_ADPCTRL;
-	u32 vbus_ctrl_val = USB2_ADPCTRL_DRVVBUS;
 	u32 val;
 
+	val = readl(usb2_base + vbus_ctrl_reg);
+	if (enable)
+		val |= vbus_ctrl_val;
+	else
+		val &= ~vbus_ctrl_val;
+	writel(val, usb2_base + vbus_ctrl_reg);
+
+	dev_vdbg(ch->dev, "%s: reg=0x%08x, val=%08x, enable=%d\n",
+		 __func__, vbus_ctrl_reg, val, enable);
+}
+
+static void rcar_gen3_enable_vbus_ctrl(struct rcar_gen3_chan *ch, int vbus)
+{
 	if (ch->phy_data->no_adp_ctrl || ch->phy_data->vblvl_ctrl) {
 		if (ch->vbus)
 			regulator_hardware_enable(ch->vbus, vbus);
 
-		vbus_ctrl_reg = USB2_VBCTRL;
-		vbus_ctrl_val = USB2_VBCTRL_VBOUT;
+		rcar_gen3_phy_usb2_set_vbus(ch, USB2_VBCTRL,
+					    USB2_VBCTRL_VBOUT, vbus);
+		return;
 	}
 
-	val = readl(usb2_base + vbus_ctrl_reg);
-	if (vbus)
-		val |= vbus_ctrl_val;
-	else
-		val &= ~vbus_ctrl_val;
-	dev_vdbg(ch->dev, "%s: %08x, %d\n", __func__, val, vbus);
-	writel(val, usb2_base + vbus_ctrl_reg);
+	rcar_gen3_phy_usb2_set_vbus(ch, USB2_ADPCTRL,
+				    USB2_ADPCTRL_DRVVBUS, vbus);
 }
 
 static void rcar_gen3_control_otg_irq(struct rcar_gen3_chan *ch, int enable)
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
