Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55D0ECAC5B9
	for <linux-phy@archiver.kernel.org>; Fri, 26 Sep 2025 18:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PjWNySQDXXKL78FuUWfIv2MTEfrcyYIW/D6p2sIPQdI=; b=2RnWp5zPsK1Qw+
	TKmstSkR6E5D6SLKbL5b3Ad0CPNlg+/RswKGelC1zv5faqaMVR4aHJ3w2XSSBvXlx/2C22r+Wvjdi
	LngB/RcfdCkOo66n9bGRdFjLY6fyZKpX5jrGtzYjhUSZisTDRzpX7xG89m6wobytKdf0n7zKkytVf
	GXK0TVGBMwi6FNpn0VpjgxUrKFJR1Qqa8jNU/1Un4+ID9cbenwdeO4K4phhbpTAuMB+/Zxcb3RcxH
	QCWigIYwkgc2ydvYeQWXPBTYy5Ov5kPxMnnv7CJiWsakwXXwDko3iowPg7PkKHcicYkyGs1t9lCBX
	YvPw2ZVMTH8YWn6lk1IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2Cp7-00000003Rlx-0Ale;
	Fri, 26 Sep 2025 18:05:37 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2Cp4-00000003Rfe-0ND3
	for linux-phy@lists.infradead.org;
	Fri, 26 Sep 2025 18:05:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K1TwgFNE4kcjyiLu6x/hrs/TGuxl7cacGmS+Q+qHpzVGjCxyQMgsd9QWkEz2Z6+QxvqG3t8hdJV/GqEO7mVE7dPnKfsZEdfCHEkNnThuMHr/QwCDuxmlUBtIykctW80KX5uBkRPJdZfnKxjl/Ge9JQS7EJLJf7/pokQJMRZag0qTO8UuzFiWHbWwvbvkrfouXzY1N1Ma9mTiBp8ie/Fk6xOzaaB3jUY3/7QQ8BD7+9ibJTgCg1Xa8pKZfCYdPDcNDoIEL16rNo2DFn2zNXr5zyzv35lWfLqf1bTcHqnbOShCfxbvHQdc4e/hkTGQ+8ruBriYWDeUNloRy1exfEOkYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=croXFJQiICqsp3XO44C3MX+cJnW7VVJhtNH+5p6WIQk=;
 b=XZ6ii0kT5oZdBMwhFxU/Y0ughl2rnTyJtSqT0DTybfLCOQ7GUXldyBJ8pgxdpkLG8IfWMGrQaFXtuZf9Lcr+CXBwmo5ozxmx7oVURdCbHhmBqnsogmIHY4euSYsUvJ+EzV2PSAIfKJjlihjW4tQUaklg+rw7XBR1LhWyzRnBnYH/XkH1G/dnbLybnwoEEh564rLKhrxtQs7XgYBZ1Q5hasykTk8PYLPrGFKl+mE9OFQTboVvhOJtFwlf1DeKBhTspab15B+covf90EAJgbu40Uu5jStcRP8Haoi2NXt+Q04cKef2erPzUNWezZdi42HZrt52eHaly19YP2xwJn7oYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=croXFJQiICqsp3XO44C3MX+cJnW7VVJhtNH+5p6WIQk=;
 b=mldlxROyQ6KYqQb6H3TbweIf3L58qvUE1heVX+w0z+pEphQs/EfaDjAjBtcdiHI0vWqkZt8F1r5YHMxGT8h9AfRd6JLX3nd4ADoF0XTKZyFBiaJ1K7PQvVhckNadJDGJWSnkVAnjlzQ8aaZVDwN2ASrCPszwWKhri4sLcCZWmzv91oBpStzfftdyMi7Z1a7jfX9gHiuDuYWJ463p8o4/G8rzMLznB61Q8wbpyq+1ylR8gb+/v24JN3a7rmW6GzQzdSwbRiofIiSNQzhlvZLfSefrbXJGiWsypPDAM+fWWVrh0h7XhHN3W2tZC7sPJ4akK+ByhyCUeqxpCeC7x87bjw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by AS8PR04MB7878.eurprd04.prod.outlook.com (2603:10a6:20b:2af::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Fri, 26 Sep
 2025 18:05:23 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93%5]) with mapi id 15.20.9160.010; Fri, 26 Sep 2025
 18:05:23 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 phy 02/17] phy: lynx-28g: don't concatenate lynx_28g_lane_rmw() argument "reg" with "val" and "mask"
Date: Fri, 26 Sep 2025 21:04:50 +0300
Message-Id: <20250926180505.760089-3-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250926180505.760089-1-vladimir.oltean@nxp.com>
References: <20250926180505.760089-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P250CA0008.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:20b:5df::9) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|AS8PR04MB7878:EE_
X-MS-Office365-Filtering-Correlation-Id: cb19aaed-1035-4d44-aa5c-08ddfd27437f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|1800799024|52116014|376014|366016|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?yP3lC+7wrMv9EHMxtNGOzPgpNK6XOes/j10Z/V0NAi7zrgrBQO5znwDglZ/a?=
 =?us-ascii?Q?agmXoqoAx5KUKzJRaegAzJRkUDcc/1jOx6jH5KAanSl35Or4Fx3aLwX/OeMn?=
 =?us-ascii?Q?X2ewa05GM9uy5v2F6OaVppRU1mRall+4YqNSRaeXYNr/EsaUEFZuVL7zKFDA?=
 =?us-ascii?Q?t3Gmt5rh8yISECyo0ehomfgdNJ3eGFZassfHHffpftLlnpJp1a/sWMw4Q8yi?=
 =?us-ascii?Q?oCJpQvaShtD36DLbn1R6vsCVVUj2PdO9USDWYJcxkTRBZ3Jnchus4lnC3N6t?=
 =?us-ascii?Q?2BClV/afioF9ZGpm2dzb+RvL8pCRH/gEeD7YfAgQW5xhp+wJVS0/RIni0WHO?=
 =?us-ascii?Q?JdTWgoJo1CosyggFqrsaD6ZNh8Pjxytp0SII3Zon0xsc0w5mTmLHRZ6lDn/+?=
 =?us-ascii?Q?FrSq3zrFuEhIxQ3rjmSq7UjDBLKH9PRrDctcPjqEnZ2BY09SqR/qG25Os33P?=
 =?us-ascii?Q?Css/DUqxEMryAwmdEQxmJ7cEFqBEG9LRA9ROlY5k4DCTkYv5XTVq1zl9q7oC?=
 =?us-ascii?Q?lXVvFHuw0ccdEuuFT4rCaLsh/oV7onrW4srj81ElNPM6f98ZxV3nXTr6fwIW?=
 =?us-ascii?Q?wAJ3pxAqzIu4yqWme/4cB2ZDt5fbogvzR79zITfKd0YhePHFUzML9hFGKPK6?=
 =?us-ascii?Q?PkC/W33rBq55TTuFkUcyzKYwYV7JK5TK2dc6BR+QzHsvB/MbhAA9iYSNuUBy?=
 =?us-ascii?Q?YBep9bSnxvAi7CcAm5j3O5Igv3KQZlzM2lASLGGFy/GZlTBnMs2a8Po/8x3D?=
 =?us-ascii?Q?A33BFdJ70UueIB0KMTP10R9230hxEoqBV5g1X6baL+VgKKXjt/9OocuEIKqV?=
 =?us-ascii?Q?iNSrm4dIqvMzQLdo+mUmfVTX6mCWTua+xN9/1QSMVQOctiBgc7HSCflDzrpZ?=
 =?us-ascii?Q?V9foqLEqOZUez0gCQaaZQnhDtU/ZQiXYzH/NCU3z37BAiB3l/FgcocGWCar2?=
 =?us-ascii?Q?SWlTmM81iLPTI0XuWpyVbUkHguVF4OSaI3atVSprkpw6geFz5HnWm9byhgdM?=
 =?us-ascii?Q?bC38WPFq7PcTUIgPacJ9HxkxYJn20L02HJO6igU38dATzalz2l9kXoyrHTmO?=
 =?us-ascii?Q?XJanTLxwvP6Ltubb21y4Ywp96b6K+Gg2JEVnbMa7H5mZo+Pwo422QJT48r52?=
 =?us-ascii?Q?Sh3sWAKgVUEacTqAE7jh3K52ZuYUr2dqwTFug9b67xVncFgHLIEEMarka9yP?=
 =?us-ascii?Q?A88O4HFQGXLQcB3by/CoExwmb0jQ8bhmqRM1xm+SfX5kutIaU3uZHJJlbLf9?=
 =?us-ascii?Q?47ReQmp1L0Te00Y53qo5OBX5QtLDxmiZq59Rzt2a9yKp0liOA+JYOo6DTQdr?=
 =?us-ascii?Q?/PIDPoZZ9B+PvltuSccB7GdnTbqgShaLD7k8k1ncco5CREXBg7eEW8iw1/Kg?=
 =?us-ascii?Q?stbfuR8clNYk2tPohhFSSY53DaG9VQMbBa0QHNV829b8wTVIADke6s6Jb+bV?=
 =?us-ascii?Q?e+RDe7RXRt45Q9kzbLzUfvpEQ+ddNkx4O0gOthw/4baYVM0bEv+ke0YEB515?=
 =?us-ascii?Q?uUs6EISUVk799pDeact+mn2h3B37Xy6hrP8C?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR04MB7779.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(1800799024)(52116014)(376014)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BlYqOTDv4XH12g7yrUlp3WnRwvHWuPasMO2Iq+lyN2pRDx8C4yez6XFVNYKv?=
 =?us-ascii?Q?A969naHHrSwzcF870mNVwX5ZY7e7RsuTNouaFy9UXbZ1eBNrCi1mZiPWkjGG?=
 =?us-ascii?Q?wuzYAaRfB3/rUT/tBZq2PxvxVHhA7x7nZs9QuRYt8MMtAXpNuo6mJ+Kt+QTP?=
 =?us-ascii?Q?iByc8BDKs/Q2iHMaJLaX+zVvd6svT8gcIJh38aorhM+otgyu5awSpNgSlxX4?=
 =?us-ascii?Q?H8nRFkOUX/n84udwwmgedB8XTspDt0NhVU/CE2tU8AFw7rivgvvQcOT2ubdP?=
 =?us-ascii?Q?pUnZitHx9yfT9yxE3LrsZRgq5hOKQ7xs8I+qS7P/mCLs6zrP5Xzex0g5S9wP?=
 =?us-ascii?Q?29BHdYtWr/jkVez/gPY3g8RaDMoHOuOzcdl+oTZ5TxP1gQdtM4cPkaM/S8Zf?=
 =?us-ascii?Q?NjkXzqBbcOCSjG0Ww/DYiE+O+XPAQo1R1ydSmOWXHKDO4NBzz9068zLbzkIn?=
 =?us-ascii?Q?YCic9daUQvULF0D6eHgkJRRMtDdiTrj3oi+8SdOn/3Kk2qXkc9fRHx5Q6T5u?=
 =?us-ascii?Q?dloa8q8z9mRry/6B08NVIOXW1p2SCwYcXBK0UVUhsmPBUdfy/m99tUJzqhW8?=
 =?us-ascii?Q?ccoLrWMyIdIHvDvkg7OZoET7+XJKcd7dU3JADzUsQ9c69PO0RJ+WBCmKv2hZ?=
 =?us-ascii?Q?Ahg26g5bsBhFuPi6l/MJqBw/88OPNYKviNKmczB8WWHaVOL5dE6T/4GGvDt0?=
 =?us-ascii?Q?9fQjf9qt5vw4bZVWPsS4R3tf2ogJY0w5d1gJPwX1HvrcNISSDKh8/bzhVBKN?=
 =?us-ascii?Q?RQTdPO1Oevsiy0UeKPmVyeeajVFnl2aHFR0ryEEOuzh05Cn01FQSqPrpwuTt?=
 =?us-ascii?Q?6rxGjm4FrA0V7Su1rskj29BOsiog3WB4rcIkUgW4LwYjwF02Bqi+j5GuRLsi?=
 =?us-ascii?Q?MIWdEWCOj8ALoP2GjMuXrJHSl/t/ImyndQtxJTNr3n3QUtfkI+WDJvCtBZls?=
 =?us-ascii?Q?YXu7NjXaYnab54ZmprEyE8b24UjCCJEfsdVOvy/jsOrdEkB3YLiMfS9uEBW4?=
 =?us-ascii?Q?eeL+gxHPLLuWBhfJ1axAIHvrxfIao4KrWNqc0+J7mxPNHLMcg/b//+W1RpfM?=
 =?us-ascii?Q?/jPFCW6QMryMKn7dNb+5hACE3yhk50I8Qfbo5uSCFXdgz7MfWH0twvR9hQa9?=
 =?us-ascii?Q?809WUU/g3m/K0m4q0DBqzXQa+J9fRoGsrG3vUmc+0OKraXDMosyrsbapxPdu?=
 =?us-ascii?Q?tAXqD5lldqlYYcBO3oZKHUUszheQHn/VRjwZ7T6LRP3taWo0q3nVz+KZ7QqS?=
 =?us-ascii?Q?9Jz0ZLOt9VZY+1T/ThY+cUWTsMR86+6Qv2qHFe5jmOBN4i2Yan/GAqRISHPX?=
 =?us-ascii?Q?gLKkWaXoQ/1uBs4HiWhQDSWfjUOP1TPjZ04xQpDhsBku68tvD7sStgIlNkwf?=
 =?us-ascii?Q?flkIyyHFcSOWvxs9MEOm9HMw+FSjajaqFMnnVMCAURV4hTK21i+AkdyfhncU?=
 =?us-ascii?Q?dSZoHT4bnqirjlEAE6s/GaDTubS+GQZzXZZu1OW9ZlH/Ulhq9c1LH61UVOGk?=
 =?us-ascii?Q?VpJJSaWJSb2gVc3nFqUvHp9yBj1D45Wj8ZrBOwDZ6Zkt55J/6PnVXgMYYJM3?=
 =?us-ascii?Q?Ay0a2hLq1BgeHobFtFW9mH/9jJDtPanMWNVznQ9zqeEAV85LA8iPJbwTSc0g?=
 =?us-ascii?Q?PQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb19aaed-1035-4d44-aa5c-08ddfd27437f
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2025 18:05:23.6333
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VB7DwnM9sCJQPFADLIvjWuxNDlNqE1Jp40f9sCbPCF2zJ1yH3igh01VjutIfgmXKdmNWEe5PrCitT+/VI6l9tQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7878
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_110534_277562_DCD61DCB 
X-CRM114-Status: GOOD (  15.97  )
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

The last step in having lynx_28g_lane_rmw() arguments that fully point
to their definitions is the removal of the current concatenation logic,
by which e.g. "LNaTGCR0, N_RATE_QUARTER, N_RATE_MSK" is expanded to
"LNaTGCR0, LNaTGCR0_N_RATE_QUARTER, LNaTGCR0_N_RATE_MSK".

There are pros and cons to the above. An advantage is the impossibility
to mix up fields of one register with fields of another. For example
both LNaTGCR0 and LNaRGCR0 contain an N_RATE_QUARTER field (one for the
lane RX direction, one for the lane TX).

But the two notable disadvantages are:

1. the impossibility to write expressions such as logical OR between
   multiple fields. Practically, this forces us to perform more accesses
   to hardware registers than would otherwise be needed. See the LNaGCR0
   access for example.

2. the necessity to invent fields that don't exist, like SGMIIaCR1_SGPCS_DIS,
   in order to clear SGMIIaCR1_SGPCS_EN (the real field name). This is
   confusing, because sometimes, fields that end with _DIS really exist,
   and it's best to not invent new field names.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v3: none

 drivers/phy/freescale/phy-fsl-lynx-28g.c | 60 +++++++++++++++---------
 1 file changed, 38 insertions(+), 22 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 4e8d2c56d702..732ba65950f3 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -103,7 +103,6 @@
 
 #define SGMIIaCR1(lane)				(0x1804 + (lane) * 0x10)
 #define SGMIIaCR1_SGPCS_EN			BIT(11)
-#define SGMIIaCR1_SGPCS_DIS			0x0
 #define SGMIIaCR1_SGPCS_MSK			BIT(11)
 
 struct lynx_28g_priv;
@@ -150,8 +149,7 @@ static void lynx_28g_rmw(struct lynx_28g_priv *priv, unsigned long off,
 }
 
 #define lynx_28g_lane_rmw(lane, reg, val, mask)	\
-	lynx_28g_rmw((lane)->priv, reg(lane->id), \
-		     reg##_##val, reg##_##mask)
+	lynx_28g_rmw((lane)->priv, reg(lane->id), val, mask)
 #define lynx_28g_lane_read(lane, reg)			\
 	ioread32((lane)->priv->base + reg((lane)->id))
 #define lynx_28g_pll_read(pll, reg)			\
@@ -205,8 +203,12 @@ static void lynx_28g_lane_set_nrate(struct lynx_28g_lane *lane,
 		switch (intf) {
 		case PHY_INTERFACE_MODE_SGMII:
 		case PHY_INTERFACE_MODE_1000BASEX:
-			lynx_28g_lane_rmw(lane, LNaTGCR0, N_RATE_QUARTER, N_RATE_MSK);
-			lynx_28g_lane_rmw(lane, LNaRGCR0, N_RATE_QUARTER, N_RATE_MSK);
+			lynx_28g_lane_rmw(lane, LNaTGCR0,
+					  LNaTGCR0_N_RATE_QUARTER,
+					  LNaTGCR0_N_RATE_MSK);
+			lynx_28g_lane_rmw(lane, LNaRGCR0,
+					  LNaRGCR0_N_RATE_QUARTER,
+					  LNaRGCR0_N_RATE_MSK);
 			break;
 		default:
 			break;
@@ -216,8 +218,10 @@ static void lynx_28g_lane_set_nrate(struct lynx_28g_lane *lane,
 		switch (intf) {
 		case PHY_INTERFACE_MODE_10GBASER:
 		case PHY_INTERFACE_MODE_USXGMII:
-			lynx_28g_lane_rmw(lane, LNaTGCR0, N_RATE_FULL, N_RATE_MSK);
-			lynx_28g_lane_rmw(lane, LNaRGCR0, N_RATE_FULL, N_RATE_MSK);
+			lynx_28g_lane_rmw(lane, LNaTGCR0, LNaTGCR0_N_RATE_FULL,
+					  LNaTGCR0_N_RATE_MSK);
+			lynx_28g_lane_rmw(lane, LNaRGCR0, LNaRGCR0_N_RATE_FULL,
+					  LNaRGCR0_N_RATE_MSK);
 			break;
 		default:
 			break;
@@ -232,11 +236,15 @@ static void lynx_28g_lane_set_pll(struct lynx_28g_lane *lane,
 				  struct lynx_28g_pll *pll)
 {
 	if (pll->id == 0) {
-		lynx_28g_lane_rmw(lane, LNaTGCR0, USE_PLLF, USE_PLL_MSK);
-		lynx_28g_lane_rmw(lane, LNaRGCR0, USE_PLLF, USE_PLL_MSK);
+		lynx_28g_lane_rmw(lane, LNaTGCR0, LNaTGCR0_USE_PLLF,
+				  LNaTGCR0_USE_PLL_MSK);
+		lynx_28g_lane_rmw(lane, LNaRGCR0, LNaRGCR0_USE_PLLF,
+				  LNaRGCR0_USE_PLL_MSK);
 	} else {
-		lynx_28g_lane_rmw(lane, LNaTGCR0, USE_PLLS, USE_PLL_MSK);
-		lynx_28g_lane_rmw(lane, LNaRGCR0, USE_PLLS, USE_PLL_MSK);
+		lynx_28g_lane_rmw(lane, LNaTGCR0, LNaTGCR0_USE_PLLS,
+				  LNaTGCR0_USE_PLL_MSK);
+		lynx_28g_lane_rmw(lane, LNaRGCR0, LNaRGCR0_USE_PLLS,
+				  LNaRGCR0_USE_PLL_MSK);
 	}
 }
 
@@ -277,8 +285,9 @@ static void lynx_28g_lane_set_sgmii(struct lynx_28g_lane *lane)
 		     GENMASK(3, 0) << lane_offset);
 
 	/* Setup the protocol select and SerDes parallel interface width */
-	lynx_28g_lane_rmw(lane, LNaGCR0, PROTO_SEL_SGMII, PROTO_SEL_MSK);
-	lynx_28g_lane_rmw(lane, LNaGCR0, IF_WIDTH_10_BIT, IF_WIDTH_MSK);
+	lynx_28g_lane_rmw(lane, LNaGCR0,
+			  LNaGCR0_PROTO_SEL_SGMII | LNaGCR0_IF_WIDTH_10_BIT,
+			  LNaGCR0_PROTO_SEL_MSK | LNaGCR0_IF_WIDTH_MSK);
 
 	/* Find the PLL that works with this interface type */
 	pll = lynx_28g_pll_get(priv, PHY_INTERFACE_MODE_SGMII);
@@ -292,7 +301,8 @@ static void lynx_28g_lane_set_sgmii(struct lynx_28g_lane *lane)
 	lynx_28g_lane_set_nrate(lane, pll, PHY_INTERFACE_MODE_SGMII);
 
 	/* Enable the SGMII PCS */
-	lynx_28g_lane_rmw(lane, SGMIIaCR1, SGPCS_EN, SGPCS_MSK);
+	lynx_28g_lane_rmw(lane, SGMIIaCR1, SGMIIaCR1_SGPCS_EN,
+			  SGMIIaCR1_SGPCS_MSK);
 
 	/* Configure the appropriate equalization parameters for the protocol */
 	iowrite32(0x00808006, priv->base + LNaTECR0(lane->id));
@@ -317,8 +327,9 @@ static void lynx_28g_lane_set_10gbaser(struct lynx_28g_lane *lane)
 		     GENMASK(3, 0) << lane_offset);
 
 	/* Setup the protocol select and SerDes parallel interface width */
-	lynx_28g_lane_rmw(lane, LNaGCR0, PROTO_SEL_XFI, PROTO_SEL_MSK);
-	lynx_28g_lane_rmw(lane, LNaGCR0, IF_WIDTH_20_BIT, IF_WIDTH_MSK);
+	lynx_28g_lane_rmw(lane, LNaGCR0,
+			  LNaGCR0_PROTO_SEL_XFI | LNaGCR0_IF_WIDTH_20_BIT,
+			  LNaGCR0_PROTO_SEL_MSK | LNaGCR0_IF_WIDTH_MSK);
 
 	/* Find the PLL that works with this interface type */
 	pll = lynx_28g_pll_get(priv, PHY_INTERFACE_MODE_10GBASER);
@@ -332,7 +343,7 @@ static void lynx_28g_lane_set_10gbaser(struct lynx_28g_lane *lane)
 	lynx_28g_lane_set_nrate(lane, pll, PHY_INTERFACE_MODE_10GBASER);
 
 	/* Disable the SGMII PCS */
-	lynx_28g_lane_rmw(lane, SGMIIaCR1, SGPCS_DIS, SGPCS_MSK);
+	lynx_28g_lane_rmw(lane, SGMIIaCR1, 0, SGMIIaCR1_SGPCS_MSK);
 
 	/* Configure the appropriate equalization parameters for the protocol */
 	iowrite32(0x10808307, priv->base + LNaTECR0(lane->id));
@@ -352,8 +363,10 @@ static int lynx_28g_power_off(struct phy *phy)
 		return 0;
 
 	/* Issue a halt request */
-	lynx_28g_lane_rmw(lane, LNaTRSTCTL, HLT_REQ, HLT_REQ);
-	lynx_28g_lane_rmw(lane, LNaRRSTCTL, HLT_REQ, HLT_REQ);
+	lynx_28g_lane_rmw(lane, LNaTRSTCTL, LNaTRSTCTL_HLT_REQ,
+			  LNaTRSTCTL_HLT_REQ);
+	lynx_28g_lane_rmw(lane, LNaRRSTCTL, LNaRRSTCTL_HLT_REQ,
+			  LNaRRSTCTL_HLT_REQ);
 
 	/* Wait until the halting process is complete */
 	do {
@@ -376,8 +389,10 @@ static int lynx_28g_power_on(struct phy *phy)
 		return 0;
 
 	/* Issue a reset request on the lane */
-	lynx_28g_lane_rmw(lane, LNaTRSTCTL, RST_REQ, RST_REQ);
-	lynx_28g_lane_rmw(lane, LNaRRSTCTL, RST_REQ, RST_REQ);
+	lynx_28g_lane_rmw(lane, LNaTRSTCTL, LNaTRSTCTL_RST_REQ,
+			  LNaTRSTCTL_RST_REQ);
+	lynx_28g_lane_rmw(lane, LNaRRSTCTL, LNaRRSTCTL_RST_REQ,
+			  LNaRRSTCTL_RST_REQ);
 
 	/* Wait until the reset sequence is completed */
 	do {
@@ -537,7 +552,8 @@ static void lynx_28g_cdr_lock_check(struct work_struct *work)
 
 		rrstctl = lynx_28g_lane_read(lane, LNaRRSTCTL);
 		if (!(rrstctl & LNaRRSTCTL_CDR_LOCK)) {
-			lynx_28g_lane_rmw(lane, LNaRRSTCTL, RST_REQ, RST_REQ);
+			lynx_28g_lane_rmw(lane, LNaRRSTCTL, LNaRRSTCTL_RST_REQ,
+					  LNaRRSTCTL_RST_REQ);
 			do {
 				rrstctl = lynx_28g_lane_read(lane, LNaRRSTCTL);
 			} while (!(rrstctl & LNaRRSTCTL_RST_DONE));
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
