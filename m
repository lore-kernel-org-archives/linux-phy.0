Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 304FBCCA472
	for <linux-phy@archiver.kernel.org>; Wed,  1 Oct 2025 21:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kGQ2SsENbndSTb97KMOJfvLu0FAG91L4bYmn/i+0ecc=; b=0EGNEV85tnEVWN
	latdRpnA6Z7DuxCFdo8oL+UMLyTeTLFlW/RuZW69yiDMzNJ8InTp5H/eeY+H8A8C3IM7+uIxfLSwK
	bIQh/djLRojRApbieqA32/Z1GUPMuqDWCqtKecyusay3lhGMLBxJZ84lKfoJOeISXoe5POyAjLIJS
	Tr1Rq//Bw7843SDbqyO6FkEc7gfxZoIn3rhNxcn+5VM2r9YN71nd5pNYHbEmry+f/+4QMdChwWQzK
	oSiojOUwpdEJnI7+VnPrxp9ZB0vR3ScsG7ia7HHIft9f7DiDYdumGErlpa87qIO+8gt3e66TZrvIv
	QLFGfZ6UloovsxZYWnmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v44NJ-000000093Ek-41Bv;
	Wed, 01 Oct 2025 21:28:37 +0000
Received: from mail-japaneastazlp170100000.outbound.protection.outlook.com ([2a01:111:f403:c405::] helo=TY3P286CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v44NI-000000093D3-013L
	for linux-phy@lists.infradead.org;
	Wed, 01 Oct 2025 21:28:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=noaIObkltJdUlAKp8di+5XNwMSLfxzV6MO3Me8vsHfVbw4Vmk0IY0uJmFOCxDV1OM+VGiW9Fa/e9/uCfI9CLkquwDlV1QmQ3uCDPxzBKzu6gNmdTF6H7zF6MxesA50N5PJNzwE67unsLKaXfElX5GwrKM9zecfw+hm+d8MPIYXsZ8MaYrFBFlohrzmCK82lFC1uKwHKxVk8NkcHTvcROT4O/JJDezE4q1ICDY8wTza/ujoZ1s0Gd6bc/y+oQ04+/jWibY+0jiXw4qaq8eySPOOVv7Y+U1YnRs9qMd49z1e5QrSWZ0HwXmfcAuOhDaHBy5ZcSBjer9feAyGYSvzmBZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YqmO2TLJ2Z+DLlVBBJMZUpfr4AKJEfchHv+1dzKZh50=;
 b=DGrLLX4Q79IInFQ6xqUQPmkPyLGw1eHh4UOME4Jj+uhuqMmAmW8h1fZKBJT35dohqIkKI29lQUX/v9Pgmc/lulwjAVqFQ0w/3Ms8rxZ2t6w+TFAdlDhk05U+YHdM1sLNlbY4cH1sVSCuYkCHpFSiGoxFFP9mY0U9S1yGgiH/Ix2H9dGC3XvjmwccQZRvjHCuyEgIn/8W01EnSHvRxVrftf6t4lwVnQjJhFX5kIbWxtWo+JfqtzF4He5l5tjLkMdELJ5y7EmYai5/dde/bHzHINCcQNs1nldZb7E/BtvYbLmk3sEfFHVZkAca2CwP2cZl3oO46BTZEHt+2gSFhxsCKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YqmO2TLJ2Z+DLlVBBJMZUpfr4AKJEfchHv+1dzKZh50=;
 b=QHeCrrs44K+JTQx9bs9Wih78gcB1yXPXIsYLlwXQHsrTrzy4cEhFxRjuxBmhucNjqSrgPsD/ihuXl7Hgh2/LfnqbP7njTE+NPGoAjcbctI2i0NZv4aSX8nazUk+3LpzmRzFuclgSgqk0Qz4zEWW/WJnttuCqyRFbYHNbZZhZImM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
 by TYWPR01MB8332.jpnprd01.prod.outlook.com (2603:1096:400:161::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.18; Wed, 1 Oct
 2025 21:28:31 +0000
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31]) by TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31%6]) with mapi id 15.20.9160.017; Wed, 1 Oct 2025
 21:28:31 +0000
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
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 08/18] dt-bindings: clock: renesas,r9a09g047-cpg: Add USB2 PHY core clocks
Date: Wed,  1 Oct 2025 23:26:52 +0200
Message-ID: <20251001212709.579080-9-tommaso.merciai.xr@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251001212709.579080-1-tommaso.merciai.xr@bp.renesas.com>
References: <20251001212709.579080-1-tommaso.merciai.xr@bp.renesas.com>
X-ClientProxiedBy: FR0P281CA0134.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:97::18) To TYCPR01MB11947.jpnprd01.prod.outlook.com
 (2603:1096:400:3e1::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB11947:EE_|TYWPR01MB8332:EE_
X-MS-Office365-Filtering-Correlation-Id: 7d34058f-6265-4e18-3e34-08de013177e2
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|52116014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?CVydspXMoYfflcGaIGO1zuwqpdBD9kkAnIo73jkfJ52q/zvocJ9yBZMFie8Q?=
 =?us-ascii?Q?zWkuUWFGMxmn02BrcY7GmYeva/q9MXI/H8zRzj0uOYLoL5k6fnEtOtsDNDFz?=
 =?us-ascii?Q?pmOYlpwNkyZDPB9RlpZK7PvrbqFH8PdFKZCM3qMRqaOVTUeO7fRQMl/t/1Q5?=
 =?us-ascii?Q?1FlMglI3tSLsOUOdNPT7Ue6QwBLAzY4yqwAXSPbX020SyUYx4yN5b+hNfIVW?=
 =?us-ascii?Q?0CCH/iSES3VP5wp8BnAKDdSxTFvRc6WMXUvBVJosOawl4BY2tgFOnzZglSRR?=
 =?us-ascii?Q?nvAcEpqWvZAWxjpK4dVYkwBuOSeioArsefECuoRe29J3tS+TMPehw1B8YGz5?=
 =?us-ascii?Q?sYp+pj+p8OheXnVzJVjZxNzTCXvCzJm/f6SmzVu+3H3iBXzPgcxw+HjMVLk3?=
 =?us-ascii?Q?wNO00g8ltn5M0LL5rvM3QCHuzNbhI/xTO3dAGmQ+ZJqWKemgFPiARoGCOgl7?=
 =?us-ascii?Q?hEVT9vOBLz2lF190nCy0btKgqjTcULS6yv5EYvLYhysrW4kDzJudQyJPpmip?=
 =?us-ascii?Q?mbbiP1+rOm97XgyxT8Pg0BDc1jjTAO58Qe85buLhY7444SecA+lOioZPBlYs?=
 =?us-ascii?Q?rMKy79OQwW2mF57fTy+dz5Dlm3DRtIk362a3cM+IBYRnDVaLjLb/xQLIoSW9?=
 =?us-ascii?Q?stis51jEoeaT2IN63FjUaxanITo21Hq/sFYpcdJ2NHLRQ8Qw7G16LgPUQq06?=
 =?us-ascii?Q?6oadRHOm6REO8f9i9OPry38CaRizWWjU4JaUDy5G4j8mmakQHeUg41Uf3cd/?=
 =?us-ascii?Q?sU3HyaN71tTeVcfhkxtXE3WF0/bNSEicbb5armwTwcROjUzDEPf/kyqsjAce?=
 =?us-ascii?Q?6xJO/IDhlvwMQ3hhh4OKaJwYURfnXVqYp+NKUwWQcR1+16PFbaeUsb+BwnaC?=
 =?us-ascii?Q?xcgl1MZ7JvqzVnK/PhvN7F6n57KBU/cUma14z+saaDZT89Dzj/bTsOpPF3VV?=
 =?us-ascii?Q?pAqJWey37iuEgMCNtSudNfOOkED3+qMUgG3ZzY51r8g28JuJZQzGC67wnqk+?=
 =?us-ascii?Q?IQtmb7uwLgok2Bm93D/LjnHp2SN0CxOY7dJCYIjG+6SK651mlkaIc9KwnEj7?=
 =?us-ascii?Q?DWhKiM3oTp6iIrL1LGEcUh2DXNhD4cJVv5iCIIqJKAN3T5aSuEYPLwFITFa8?=
 =?us-ascii?Q?4SG+FUE3FyiwJjR8h0Jr2HaOfmysJ/Jy5T/XQ7onWhMxCRM68W5VI58I2y26?=
 =?us-ascii?Q?WOZZ8P3tyD2LyG3JjKhITjB3NUTBfsFUsdPkh7nGMgwGcOClvXQRLTX4yxTu?=
 =?us-ascii?Q?oUMYuYcVk/Rd6lnjWJK6SuDrA9LdhipRawnkHyR8BuQtYGyDwzyBHEe/WaG3?=
 =?us-ascii?Q?Pt1KoU/GpKlxZpZHqsPJPVmtQcE4J9fBFDrCjoj91auw1NQiEJ/lOFrWcYuZ?=
 =?us-ascii?Q?yhF/p9zHE7DNh1uttjWn6yM7XVdXYfiklqd1Qh3knHXJiWa8SOSyycArLzR4?=
 =?us-ascii?Q?Q1MOLhC1Hux7CgqFwKzFwqOz3o/h8KiHweehl/Zbsr6HHgbQb73klUUYehRe?=
 =?us-ascii?Q?SkKxKDBug8HeitxXYEXor79ssmfNzHdgyLHt?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11947.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(52116014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?J7RR0GciEfMdaSmebdxuIc9rOxysJM4ReKI+MljYACoP09qv7TjikJv6Puw8?=
 =?us-ascii?Q?IDdfaElfgwqnU6rUwnMMyxwnlpXyVpHRiOBCsGtjW6OOWtAg+LeWbVoWIK7F?=
 =?us-ascii?Q?CmCtWADR6sgcfz98bR9ZtsB9yMeyRNUsrGy9PMggH+iGjjStwD8NPEIHjBHa?=
 =?us-ascii?Q?hw54vw50i8DvFgeiGKcbnJRcbTDl41WKbcSs8roWp8jodavwmzJKs412GsG9?=
 =?us-ascii?Q?QxA1r25JNeigIX1D3AVs5/Hw6neKNBNfBunROe5Ndbvh7+SwyoguHWiB5o4V?=
 =?us-ascii?Q?xMjfUf3rwYAYgQhpeUTKBI4mzkx0Gjib1dvA51qArlgJA8t2wJ9MldZDGazG?=
 =?us-ascii?Q?1rF7IQ30YAEXyKwPl0XlMLEJM/TVYprZzeUG6nGRNVPNG6BCfjZ2YkzGJwh3?=
 =?us-ascii?Q?uXLvvW6baP5xKrIny1k/IUOz7ikKNHPqMgLC8km5odKLp0RizLtW4MGSedZC?=
 =?us-ascii?Q?LnKTQsa9LeuxVz9qPEAutc5kjPeWac3dp4dWPMiAwZT4vbrl0XGcMlaS/eMS?=
 =?us-ascii?Q?dJTnY5z4Lb2n0gOwB1wy6f4KKteGTptYTMcMlf1ZQuUDDwR5kEtfQO6AoIW0?=
 =?us-ascii?Q?ruPy8pJRJW7chefFitZA2oDqaGWGlq7hWcIA+eIrxPu5ixoBi6VMG5Ialf2d?=
 =?us-ascii?Q?kAx8yK7BZgGyGizBaCBw+Md97KVNMVhWZNH/Mjot5wcaS6948m7hcSM2BmZF?=
 =?us-ascii?Q?GHPSaauNlHh1k921TSReeOCvjKjRpE6YoxPAZvcelvOsxk0DvKEw6T2Ak48n?=
 =?us-ascii?Q?XvEhDVgmHqtBE3g0rGSr4UnM2S8jgHpC9SbIICjBWEf8ZvWEGE17+QK/75TO?=
 =?us-ascii?Q?ANlwOlxSPvWQub5CPYVj0pfYiDf+wQSHPRB09xYHkrHl6su+7hpAwAYR1B3I?=
 =?us-ascii?Q?T93PfIkxWMUeG1eYTgNYfBB72juHp6yvfF40Cln8cLZQ5BOT8YM4ClET9zom?=
 =?us-ascii?Q?Ecw2IVRFzrBLdWYOjskCCOyxWFVVRigCUa119720A/ydHwgWCn/j33DLijSb?=
 =?us-ascii?Q?44qmOTybawwsMLj/t5aSV1sx1lgGSgJa4if3eMyTTdcUSXceQlVCFsDCa449?=
 =?us-ascii?Q?S1XwuPqsC6FSQRzIIpfDaez2z73PE5qbpUmta73HCPuJ4l8PrECQRcXM/gRR?=
 =?us-ascii?Q?I5rC4eLSR8oHJKdy/4C7+xmAL70iTlJT1Rfu8nQrKzlJvGzWwPdmqlp2llZt?=
 =?us-ascii?Q?ZoUwwJ1ocyyROTxwix3iHl8re42DEdSg9KELxyDGm35SYGrRXC099mysTqLt?=
 =?us-ascii?Q?82RN42RP/aml7vKjYAJ0nuE5sav/V3j2WA5AqH1a2d+Q7RMX7T0mSA4dJlwt?=
 =?us-ascii?Q?5mRhkLg4CqRm+5WkwaW5YufLDqQ2j1uyarVMmivUku1w+GELRdmAu0kVrnkY?=
 =?us-ascii?Q?djK/Txkp5EJcgz/hvKnThjtsbnX8auR8A+IWLCgGRshQgJXHXC8VuNd/+wLm?=
 =?us-ascii?Q?76jh8BiPFluV+Xvst6ccXCOV2fZg5It/IUDicfvB8UsrkNpw/9IT0T/AG1VB?=
 =?us-ascii?Q?hIOOoK+g2NnhDurFl2jMbdRbybXv7LbxpgU/qvEqi33czdDAG1rzevdnPOgu?=
 =?us-ascii?Q?sn/yqkAAXSkYFEo4/nOOWsXfutjgrBLJzbS5tzLabTSP9vHazQUFUkOma7Ep?=
 =?us-ascii?Q?gedPiRBkbaUMo2kf3i7WfJo=3D?=
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d34058f-6265-4e18-3e34-08de013177e2
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11947.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2025 21:28:31.3449
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b31qnzsjmVBVk3hSNaSRbVNdZlTMVRW8G/CehyvgRNJ5wFHVgHm0EDmEeZf5Ip5syb7p+nphduEpbMTXAYncH+eSzOSH6fVcz/LPKNNgphRLx4CBwtJMrVLOfnPfneSH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYWPR01MB8332
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_142836_043661_336DF2FF 
X-CRM114-Status: UNSURE (   8.47  )
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

Add definitions for USB2 PHY core clocks in the R9A09G047 CPG DT
bindings header file.

Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
---
 include/dt-bindings/clock/renesas,r9a09g047-cpg.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/clock/renesas,r9a09g047-cpg.h b/include/dt-bindings/clock/renesas,r9a09g047-cpg.h
index f165df8a6f5a..dab24740de3c 100644
--- a/include/dt-bindings/clock/renesas,r9a09g047-cpg.h
+++ b/include/dt-bindings/clock/renesas,r9a09g047-cpg.h
@@ -22,5 +22,7 @@
 #define R9A09G047_GBETH_1_CLK_PTP_REF_I		11
 #define R9A09G047_USB3_0_REF_ALT_CLK_P		12
 #define R9A09G047_USB3_0_CLKCORE		13
+#define R9A09G047_USB2_0_CLK_CORE0		14
+#define R9A09G047_USB2_0_CLK_CORE1		15
 
 #endif /* __DT_BINDINGS_CLOCK_RENESAS_R9A09G047_CPG_H__ */
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
