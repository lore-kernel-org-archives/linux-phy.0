Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DF1FCCF9F8
	for <linux-phy@archiver.kernel.org>; Wed,  5 Nov 2025 15:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CizGPEBsoBdgurG3t0rbTQticsH91jvHuQti+OqTqts=; b=wfsK2fbcAV+843
	eyNu9mijxqM4pfeT7/xpiN9aFeQ6z66jmpZpxymmzjxuEovFGw3oVqXjZ277ZL8zpu5YfKitSubcV
	5vRsPb9gctFJ7JwGmzc+ydfDkiB2JXrRxnf1U/B0tB/2ahm2eggOU4OR0+YcsT7MNbeITLRDLpK6z
	u6BAc/fXN3O0Ygq+1XHgi+alSACe5Wtuydqc70jG7FRKW74P+uk0vgjyZDk4DyvouF5gMaCVb+lM7
	yOG9bOezw8SNsXQugybjWFKbj6PWcyk0mhHGf7H+Mof4ZuEduqC14nEouQwjY4DiV2g6KQXZzSpTM
	Uwub9/qbNNKg8kJT+dgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGfeF-0000000Dy60-0bOL;
	Wed, 05 Nov 2025 15:42:11 +0000
Received: from mail-japaneastazon11011020.outbound.protection.outlook.com ([52.101.125.20] helo=TYVP286CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGfeC-0000000Dy5E-2jY5
	for linux-phy@lists.infradead.org;
	Wed, 05 Nov 2025 15:42:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NpDsEmdiH+eXEXolGU7r9yBC68qQpbio1l2J6TRZd5bGMkw4Pf5ihO0gYbd7iQC6F1ZeOVu2ZgxBdQ77YlfKuQMpYKrWGZNuUKG1M1WMYLpdWJCzY0jBAxb2hIaZ1iso5VL8oPA+509GOd+Pcg2TO/Et2/NlsNFOLyJqfnIkxDukD/PmlBZ9oQ/QwIWGrxNRlb/YQ3Wr2PaT1p3NfZkhy6LpUhKdTrGORWCBW9YfYLHVaUbyYwi5bJ+iO+Yj47URoTh6SytY6rLx9kzUXJm07ZlvJDamq4VR5BcEwtFFtF8NWC4PQaydhNbPXIjUplqJYYw0Ea65wd1sjpfvgLzLwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BaSrXFnBqqYPgepXPsfF+TjBmB0naDQlDLexgBGdJbg=;
 b=GTEGbJssO3h8xKfg7TvUGM3vaFW2SA3XOoJHG3YGUVfcEmaYtxNJVPi3zTJ9HXu3dP/ytFm+Q7/2rryhP9sFNFMma+mDFTLVG+Zwv25OlbuU/WyEgwxmXAQRYGxhAzs2TTpb9kpM2qtmK1HNKls7QPtNDyLiu399+/uQzmOyDNBUmdirH4hjlNyv7yCn17SQZ8PYdDbg6i/jmB9GPulIOxWBK2vPPCvpm81AoCRo6O8eaHmRlj49lQ+88fOCef8rE20fT29BrtxY3mNaGSccapOKBqCJNcVx8sKAEZO7U1xkuZSAYTUREg8znIa23U7u6xUMw12vryJ7hWeVOEJQsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BaSrXFnBqqYPgepXPsfF+TjBmB0naDQlDLexgBGdJbg=;
 b=QnIkNNmTa2zKUcFqstKEcu8Q1tE7NWIM1atWLEc0mruMXEzr3X0N4j0DrBHLsLFAe3VAk3UOy69LHMsFo53slPlQvTR8hzlN1h0mYvAJCxO2sY9MK9epNEFCZv0d8mfSjF/bZAH17s2QtFLVOWnOUGhGRKdUmQ4eqnYSDUG2zSA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
 by TYCPR01MB11268.jpnprd01.prod.outlook.com (2603:1096:400:3bd::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.10; Wed, 5 Nov
 2025 15:42:06 +0000
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31]) by TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31%6]) with mapi id 15.20.9298.010; Wed, 5 Nov 2025
 15:42:06 +0000
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
Subject: [PATCH v2 17/21] arm64: dts: renesas: r9a09g056n48-rzv2n-evk: Enable USB2 PHY0 VBUS support
Date: Wed,  5 Nov 2025 16:39:13 +0100
Message-ID: <653efbd610dcee3f93ce3ac165dda6311fde8a98.1762354366.git.tommaso.merciai.xr@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1762354366.git.tommaso.merciai.xr@bp.renesas.com>
References: <cover.1762354366.git.tommaso.merciai.xr@bp.renesas.com>
X-ClientProxiedBy: FRYP281CA0002.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::12)
 To TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB11947:EE_|TYCPR01MB11268:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d223b3d-421b-4ecc-c121-08de1c81df7a
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|52116014|366016|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?5ZgqTrij4o1f0FE//bJuaqQKP8jjp3RukwrqD6EsWCB0ghGT8dBkvPvBOTzj?=
 =?us-ascii?Q?N/dq8Xl+HNUTvmyhDZgXzB7LIOQZzY2eZZOTTbDApRP94ReqQ4206mQVd3BC?=
 =?us-ascii?Q?Rv1YXCxugZSbbPIBYgmtZJIp4kxvDD39xeNVwcxjrkVfD7bPbTS2AAqQBzlD?=
 =?us-ascii?Q?e81eRjPM0sqay1WRwiDUWfCpkfPT9n1x1mb4NF9dsbMQlCJfc9Tp0aFHsqa4?=
 =?us-ascii?Q?gM1wn6E5DJktCRHT9WtaqUVzscYiJOuAaT/cWoLMyF7Z86nT/3rhndGZ48qy?=
 =?us-ascii?Q?yQsnx6H4XKoWLZbLvJFP2+dBlmOC4y6FNtyc+utDz+nboV1VIpsdgSaXYsYC?=
 =?us-ascii?Q?yX0yayTRRTUVd3WuYTgph7R/z91RTFi7cmI0BCLeh73LGTIxGwx80I1MUAwV?=
 =?us-ascii?Q?wR/8lKmozw+QaS1bJ1Zd1eHKBOb2lV3fKMzeE83SiV7bT/s4eqSzhvIJN/zC?=
 =?us-ascii?Q?0XX/w21T6Ha6CSv8uiIVVA7hyO6CR+e2+q2bsp/uy97slMR+3Quj3bMe9tvT?=
 =?us-ascii?Q?OLBkBJ4FsNJgxsdxMES33zXdueMXkOx8ufJpy5yJrw7t4sUC+bkQ7VmUT5rt?=
 =?us-ascii?Q?LkHg3GI54JLsVXdunEUAmIbg63Qyy7UAYOWmV172PATh7aOM4HBPkN8jJzgW?=
 =?us-ascii?Q?DlQcJk9fcnC88rAw56RaakikZcsE5NRe53Eb7sI9RUxRDhG3Yzjcdq/l8COS?=
 =?us-ascii?Q?FxkSmHRrArxP0jefSK8ce6NxemcNw+1AbGfxcNK7chsJUTRUeYE8x4gjdftT?=
 =?us-ascii?Q?ybOCiGu2VIYqP3mpWKys5W62WFiddF5HF0rKBrkYVmmudrcti7/sGnhsAZRa?=
 =?us-ascii?Q?CmdBjFSwpcvvHch/nZLLWOzzNWhb6CcCgnR/IeLIyw+KjW+82qQjv7Q51Kkq?=
 =?us-ascii?Q?9sz7CogAH5GJHvZBivNGYugWdu2hxVIymmijANf2TbPaxoIzUtu0mKkMVRxY?=
 =?us-ascii?Q?GkwZ94iaHVd+pdut4wbGAAIKbG8hFkNhZQ+e/WqsRjxS3AnXDMqFPju6CSxW?=
 =?us-ascii?Q?u1vLUcCEj+vI/z1NLa+L/HC9LOkyPG3++j4cXmcLmguozMpakMdlm8WBtY+p?=
 =?us-ascii?Q?2UJC2wt07wNUoXN9CktmGzItd1sDiltWQxDRrRYCQe05QBjGai8Jw5/0N6u8?=
 =?us-ascii?Q?0+VsMq5qv+sKhuAtCFGZX+xdODGKJmgqs2jEkRHxq1o37hLq7KZVs+2enogw?=
 =?us-ascii?Q?+3gA2h+9kCPoPP/tXFuEv3uiiRfEiAfh9Wqb+A+Y8OQ5rGzVvztbbyn6i6xb?=
 =?us-ascii?Q?0rsoMHVMNvoOcQq4Wq+P0Q4GUIS7TcTR2aFjrQBtNPf5+7uRxbcQ0uj7gGdL?=
 =?us-ascii?Q?k7115QxShpThO9EQ9rK3Y/XqtDMOYBU83gtYBQ//dVLl8zYImW/XAqdDGgiI?=
 =?us-ascii?Q?+erEEKiMThxIxtuVRpizbzVH7NV8v9dsBkgCiOaOLw7FHC/AKQiVbsLV/2qm?=
 =?us-ascii?Q?zTKWb9fN84f803ZRGO+877LLBSPsyGRs0xePTLJwFWhfnTZyi8it+nQH82wr?=
 =?us-ascii?Q?usGa2wTTezMUhkvKoSZWyOIDN8jx5W05hSal?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11947.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(52116014)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8PvDRcoTrJNSLzh+MjShRk0F8PJ9I+O7olw5+AYsPyDhCGbZ6Mw1pMEH3Yzu?=
 =?us-ascii?Q?wQ2TwQFg44l6DMHpK/Qdn/KXywALW50uR4Tj6E9PumgzbxQ6Zk38xEXRb5FQ?=
 =?us-ascii?Q?hqRz4tlz/Y8GtG0RZG9MSYNaVtQzc7+jrWPpIZZL+XvjG7898OKdJNKCJqYy?=
 =?us-ascii?Q?g/Qh8ASFN0/hNWlkvCjI/rz/ZqiLsP7rfT7XzlTbYPkdkKJkIehTySP9sx2j?=
 =?us-ascii?Q?Lq0cXXD9JBsZy+uwspD27qmXAcR1jh+IV7GP3QPAzpFeZj6isjEwyDnggobw?=
 =?us-ascii?Q?BXpkSuNVgkubPexofJDftiVjJ5cgN0ltjdJP6s0HlZJ7zmMtn5w2yfUEV2YX?=
 =?us-ascii?Q?szxpzxt9unRKsmqM5cv3kArqR+AgD6Gsv/lQF7Ln1PiR+r1X6WZzOtfxm0nf?=
 =?us-ascii?Q?ly9+OERlMTY2BevbNasgcT0lr1ImYUw0NcW7GjvbG1/lEVfulr8k+hXr0qww?=
 =?us-ascii?Q?rPJBPNX2AqthsD9fDU+lM68x6TXZ4Rk8N4qyM3CQvps+fETFZpP0KFXh2EvU?=
 =?us-ascii?Q?Nr4HKuC7V0rSs3t9COura/whLZAWAJ/zvP3xMo1yUMIEKei54eXUjhE8hlC5?=
 =?us-ascii?Q?vZDUtwV/NqMaSsC8g6zfd0aWods8bjdJmXHBhhwtxNXnK+Afm41kZTBN5DcN?=
 =?us-ascii?Q?+03YwdCFI6dCj2fujN3SYsuAbIPKnG7vCLWlfYFW27BEVfKsW1H2zMqHUZQ+?=
 =?us-ascii?Q?upG+W8Wbi9f5aUhUybDT7F/tTp21hKai39iglpJ59Sh1jWNngejeJ0WJ9g5c?=
 =?us-ascii?Q?N33jNet+yprgugIfq2k6l6/DFuOISZrtV/mnb3KjqETF6sWN7rSwJxPeR0ip?=
 =?us-ascii?Q?kpwosypZdUMyQzIRSbRubuTUa7UGBrSvv451tIRGaTmA5tiyJ7BxCz/FsIIj?=
 =?us-ascii?Q?wiFalMhp6cHEiWTJ1C2cBh6f816MPAISb8E3M6VXNgzgG8OXvIO+OW2kgShA?=
 =?us-ascii?Q?iO0QMO9nYX2oYGh++WQbeJ0FhWk1TAXt2e4jpGbS84xukhwTIs6K6QWmaPVd?=
 =?us-ascii?Q?XAR4kWBblGAMHFe8dT2wH+qa0oTUgzgItNvq10Gq23fFFscpfyT5vmAtyKtA?=
 =?us-ascii?Q?mfAHGlwxZLnr41rpMXKcX6Xd9RGCGchKdAMcmIC3h6FO/cPDQAeLj8Ot+3wM?=
 =?us-ascii?Q?HpffmtcQ04RqrZuv1KbvxVqRhEJjsaWtHgDY/2Jdb6ridv5+t5QP5KJeXkHV?=
 =?us-ascii?Q?DmiENBCUoYid9wiLBQ6FfvggB0j+jp9B4UWGWDS5jaxLNd+qq5XZigJi+nTf?=
 =?us-ascii?Q?7xIdgMiV2RFp2Rc842NT1dvfINXR68aBDdSfPwz7k9jEArc3asd9JH318SWf?=
 =?us-ascii?Q?A7CJ7xWT0qOqfTFQLNG8bRF9/lFogzUan/JESojdVqPI2NaL4oOYpWcf0Jgl?=
 =?us-ascii?Q?GB0NPgQg2ykyGPkCYdZXpumABy5nHp9jNpt+MmlWMXu2rHDjpadMiN6sR9hb?=
 =?us-ascii?Q?Xuab4ZYCPLicvy9oPg414LKvNVmnRMe/SeHFxiqdyGdZW7HN4tz/hpJG9/02?=
 =?us-ascii?Q?aaK2RRhPLUPzQCfoOs8ytjQUiE7WUMNmumO+CxQL2ZhOlYFVo5NjRiuwMyaO?=
 =?us-ascii?Q?wSWLvLJmtqwQNDvaQSpxCQOPSasoS2cNsT81zToSln7RcreKK2g+PtmBoSD8?=
 =?us-ascii?Q?13tvuNj4T2tcws/xvxa2kS4=3D?=
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d223b3d-421b-4ecc-c121-08de1c81df7a
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11947.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 15:42:06.2782
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U/UON0603j9H46isFdNFK0WvOo+YenCy7NXoTMfsd8FQoNC3maM6uUTbS28JxFiS0/yxL9Y8MrVQ08PmY5vZux/ux4/ru1FMRmfg8HaAe6y1hTNdMAq58BYfKe8VLsCu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB11268
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_074208_692533_642DEAD9 
X-CRM114-Status: UNSURE (   8.86  )
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

Enable the vbus-supply and status properties for USB2 PHY0 and its
VBUS OTG regulator in the r9a09g056n48-rzv2n-evk device tree.

Enabling them ensures proper VBUS handling and reliable USB OTG
operation on the channel.

Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
---
v1->v2:
 - No changes

 arch/arm64/boot/dts/renesas/r9a09g056n48-rzv2n-evk.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g056n48-rzv2n-evk.dts b/arch/arm64/boot/dts/renesas/r9a09g056n48-rzv2n-evk.dts
index 066e66b5d51a..54ed7cb2d73b 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g056n48-rzv2n-evk.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g056n48-rzv2n-evk.dts
@@ -389,6 +389,11 @@ &usb2_phy0 {
 	pinctrl-0 = <&usb20_pins>;
 	pinctrl-names = "default";
 
+	vbus-supply = <&usb2_phy0_vbus_otg>;
+	status = "okay";
+};
+
+&usb2_phy0_vbus_otg {
 	status = "okay";
 };
 
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
