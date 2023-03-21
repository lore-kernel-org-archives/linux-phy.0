Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C84AAC6FD1D
	for <linux-phy@archiver.kernel.org>; Tue, 21 Mar 2023 20:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xL0CVtBvorTnSJSALHHwdzZAPvVysPXkbU3N1R3DktY=; b=OUGUojIu94IEZs
	hyBr5dm/tWI28jldzqcRzra/6xUTTq47J+gs9Aqnrp+cVk2WPVVvrGqgtaiWZMENsl52cNi94LKLW
	ioIVZtAjahiw8pEQUcjkljVRxX9kQcOuX0ZekBv7Ty5h9zE1LjpjCf4Z7iAZaFzoyDwl6IvE7WOWd
	LKm1AU0/2zVE1LLOjP8iWzETNQsUzJ4a15R5Db0tVaBZemy2DElrV6yHiRj6TYbQ+5Tn9Neta0Mf8
	qNAT/W0dh/vOSoRazGMKT57d3w88sp87d4/Cu9umqqBhEdZibqsq2PXMWhfYAeLMAy4d1mbNySaGB
	Yai6tBv1aabOeNj0IzvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peiO3-00DdOM-2n;
	Tue, 21 Mar 2023 20:15:15 +0000
Received: from mail-db3eur04hn031b.outbound.protection.outlook.com ([2a01:111:f400:fe0c::31b] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peiMz-00DceG-0j;
	Tue, 21 Mar 2023 20:14:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zOEtSA60wMXs/yMCjTmhGeYB3RHdSPz2YLllpEhk3Z4=;
 b=Ewo0UnwXcV4lvqngdhbYrYSOQeARg9TMLgxjbIX7ZNfsWOd6P4d6w+mDEh+C0joPF8Unb3jiaXmbDb5vaofVAT2exsf2lgCM+orFZQ80hMGzK+qd4YZ1VgSAUZXrZco/nf9WKtcob5iWg2aUP6CiGgbYfJwhER7HA71DQvAOPev2O/v2ZKQzd4xGyIJx6SfHdIuOGUytRPdqTLrNu25gkPPqcJmV7dFVYqtgwQffg2upMLFzl9/N5JZAeg55jUYkIb3BbVtIcgEoBZOy3d3EbC9r4UfoswI9SDMo32VpBMJ/FpZGZcrH74GLYN7Pj4/aZLXFLv7nwmagN4DdLyM2yg==
Received: from AM5PR0701CA0005.eurprd07.prod.outlook.com
 (2603:10a6:203:51::15) by AS8PR03MB7205.eurprd03.prod.outlook.com
 (2603:10a6:20b:2b4::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Tue, 21 Mar
 2023 20:14:01 +0000
Received: from AM6EUR05FT022.eop-eur05.prod.protection.outlook.com
 (2603:10a6:203:51:cafe::61) by AM5PR0701CA0005.outlook.office365.com
 (2603:10a6:203:51::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.15 via Frontend
 Transport; Tue, 21 Mar 2023 20:14:01 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 20.160.56.81)
 smtp.mailfrom=seco.com; dkim=pass (signature was verified)
 header.d=seco.com;dmarc=pass action=none header.from=seco.com;
Received-SPF: Pass (protection.outlook.com: domain of seco.com designates
 20.160.56.81 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.160.56.81; helo=inpost-eu.tmcas.trendmicro.com; pr=C
Received: from inpost-eu.tmcas.trendmicro.com (20.160.56.81) by
 AM6EUR05FT022.mail.protection.outlook.com (10.233.240.168) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6222.16 via Frontend Transport; Tue, 21 Mar 2023 20:14:01 +0000
Received: from outmta (unknown [192.168.82.140])
	by inpost-eu.tmcas.trendmicro.com (Trend Micro CAS) with ESMTP id 4A1072008026E;
	Tue, 21 Mar 2023 20:14:01 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (unknown [104.47.51.170])
	by repre.tmcas.trendmicro.com (Trend Micro CAS) with ESMTPS id 256DE20080074;
	Tue, 21 Mar 2023 20:12:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KBYkdi+KN/DL1UEPRkrinXK9uMeTlQJckF6DuKmGqmBty2yDmQ2pJAsfYpMFte2nvAvAIAO5K/V6MSVEgftUQWz56XUEHVDQxBYKsxpkyENybKaljSpbnkU2r9KT07z3WS0l5zEYg5qf7a48734Qzbz9O8s7w1ei260p5V5XEJqXVS3IGt9LvARMhN+clIA3P/OXEgr+qPYs3f19CTSqdCYcoN8tDtYn3bOJHMs7UdSopOLLs0oR735PVWeezo8rasJ4izl9VCIoxkBkcLPmgEVuRVF4hv5T6cADJphxTKkpZ18chybY3UQxIFuyt3+VOAkUUdTCDt9yAfYCMdf1LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zOEtSA60wMXs/yMCjTmhGeYB3RHdSPz2YLllpEhk3Z4=;
 b=dta0P440hPiuvulRlC8QBGbuF3Hj5qsR2pEoocW4GvMA6jhH3y6L+A1fpcHzec/KyhOlxjHPq8p1UnMiRI8hW9zYRf6lpv13qIiFh683EjsQs2itrLnGmyVV6viLhmOc1xGLWUh0L/oQ0E1MmtQ4yKkicF7gmB1+K786wHTbeN2Af51ujh14EcXOu9gFcs/yrpY64o6VJQsZtS6U8ZYiZwn0L5Vq3f7M3UeZ/yum8xCE26odEoD+Opq8OLSzD/+opLno2b0+dZomtl1FrlKGSOGE+SD2ZCM/ir9Csdwkel3/8GWduKqtx0hLWoWOgTHflTOQriPBo8wTn+BYLGyIew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seco.com; dmarc=pass action=none header.from=seco.com;
 dkim=pass header.d=seco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zOEtSA60wMXs/yMCjTmhGeYB3RHdSPz2YLllpEhk3Z4=;
 b=Ewo0UnwXcV4lvqngdhbYrYSOQeARg9TMLgxjbIX7ZNfsWOd6P4d6w+mDEh+C0joPF8Unb3jiaXmbDb5vaofVAT2exsf2lgCM+orFZQ80hMGzK+qd4YZ1VgSAUZXrZco/nf9WKtcob5iWg2aUP6CiGgbYfJwhER7HA71DQvAOPev2O/v2ZKQzd4xGyIJx6SfHdIuOGUytRPdqTLrNu25gkPPqcJmV7dFVYqtgwQffg2upMLFzl9/N5JZAeg55jUYkIb3BbVtIcgEoBZOy3d3EbC9r4UfoswI9SDMo32VpBMJ/FpZGZcrH74GLYN7Pj4/aZLXFLv7nwmagN4DdLyM2yg==
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seco.com;
Received: from DB9PR03MB8847.eurprd03.prod.outlook.com (2603:10a6:10:3dd::13)
 by AM9PR03MB7044.eurprd03.prod.outlook.com (2603:10a6:20b:2d9::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Tue, 21 Mar
 2023 20:13:52 +0000
Received: from DB9PR03MB8847.eurprd03.prod.outlook.com
 ([fe80::dbcf:1089:3242:614e]) by DB9PR03MB8847.eurprd03.prod.outlook.com
 ([fe80::dbcf:1089:3242:614e%6]) with mapi id 15.20.6178.037; Tue, 21 Mar 2023
 20:13:52 +0000
From: Sean Anderson <sean.anderson@seco.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org,
	Madalin Bucur <madalin.bucur@nxp.com>,
	Camelia Alexandra Groza <camelia.groza@nxp.com>,
	Bagas Sanjaya <bagasdotme@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	linuxppc-dev@lists.ozlabs.org,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Sean Anderson <sean.anderson@seco.com>,
	Li Yang <leoyang.li@nxp.com>,
	Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v12 11/13] arm64: dts: ls1088a: Add serdes nodes
Date: Tue, 21 Mar 2023 16:13:10 -0400
Message-Id: <20230321201313.2507539-12-sean.anderson@seco.com>
X-Mailer: git-send-email 2.35.1.1320.gc452695387.dirty
In-Reply-To: <20230321201313.2507539-1-sean.anderson@seco.com>
References: <20230321201313.2507539-1-sean.anderson@seco.com>
X-ClientProxiedBy: MN2PR20CA0026.namprd20.prod.outlook.com
 (2603:10b6:208:e8::39) To DB9PR03MB8847.eurprd03.prod.outlook.com
 (2603:10a6:10:3dd::13)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: 	DB9PR03MB8847:EE_|AM9PR03MB7044:EE_|AM6EUR05FT022:EE_|AS8PR03MB7205:EE_
X-MS-Office365-Filtering-Correlation-Id: c539a408-6bae-4aae-3c5e-08db2a48cfd0
X-TrendMicro-CAS-OUT-LOOP-IDENTIFIER: 656f966764b7fb185830381c646b41a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original:  CdiTIyGMQD4UYP+MPbrqlCvJy9oAXSTNfyYuQiZC9tPRnqVqVMLzQpcCv6GbXYO0QWnEHUv8Jm9/VkCOmKPVw8AKlMGkLXrEGT9woZXUZSuPLph4YIWy7OX4ZvrGrj9rY5/y2msJmSspwTkmablOU2eqEi41Qimeh394qbkduVDzSXzKCF4EpUinM2BU3cQerj9Dvjyy06JMRqoGK0oFxcmxXKy9LAAEoiIgj+kvObL7xwCJ3XVgtDMehY9B1+g3Ak68nSjGQkkkC/aqioJIdlkC3AaS9gKlvYFzl9inFXf1xNbVBwoRptWm9CtLGXh5sqgF8lCm5qfdn4uGVrP5rcIcmSyS4Hcwdl/OgDkW2B2zzJ+cU96yOSzXhPA/vjHjzpl1Yx9SKjGon8xfA9bRQrCV1bquA+kFdCLYWcOZLNDwZ8fHrVoLo9F0oteL4p3ETxgYAYaRav/WqlI32o4w39p/m8N7bvDCX0jlu0rsBpfXQURycHUmNykhcEOjjuOrg3+Zk3XtHsPyCfn/btG2VOtPCZ569cb7D/XiKtRtn7umcUtvr1+AW9r73cl0/ntNYMATEydBxM/CqdbxHpnR3C+SwGmBPRbxckBhKudtPpQKOSiPw4iOEFrfNQ9yHI5i/ABKb0r/qwU/tDvxProzuV7XyPSumro8XWnwbRJ+MtIiEbkzuj95RVgyg4hxWaQcZXzQxIrNfSv5AxmcJQ8hrw==
X-Forefront-Antispam-Report-Untrusted:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR03MB8847.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(376002)(396003)(346002)(39860400002)(366004)(136003)(451199018)(2616005)(54906003)(83380400001)(6512007)(7416002)(6506007)(6486002)(478600001)(316002)(1076003)(26005)(52116002)(5660300002)(6666004)(186003)(110136005)(86362001)(38350700002)(38100700002)(66946007)(41300700001)(44832011)(2906002)(8936002)(66476007)(66556008)(8676002)(4326008)(36756003)(21314003);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR03MB7044
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:  AM6EUR05FT022.eop-eur05.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 	40da4671-9013-48da-626d-08db2a48ca2d
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	vykrz9gFgBJEMFNtV0XOv4D0o+gFgmNysZ6E3PiVAtxbqwTTft68p//8lGonF6G+EO6dGmXkTG46Y0aKgZLD91fQJ1MjPpFMXB43llnVBgcsv7kc2PNwobHNVaJtgQyHM2jnQ8H8XV5AhH5FCUvn+dnElic71Khj2O07QSJgotylyOGBIfb6D2ZoMyT9MKf3Ef9kJckHF7Bh8esUl9x1V/6c1N3kSulP7OyCrpGpBzClwTj5M/XHh3A/qOGLARPFGmb6wcg+tz25pHof/Yuyyu6D+nm+uyGNst/HvkNh8Qk++3PeEMltL4D3Tcs4mqtVDSjhZB5XuH7bwqwYBSo8zp3rrUSALYK/lo0WDhVDboELMoW83+8wErnDUuE6AyBIy/Dw7ak6JsB2NlVjMrZ2mwTec1bhETAJoZ5711/G+hdS1pEXLCTHlPAxe5YInK0qD/2ww+DU1txCbrW+vgj+MfsSKg9p3Hxs6HkaT0R+8Qa/lX89CPJZyht0AGBEdjzNhs4OzGLqPHK0HeLqORygozEuRJZIUfeEkpYN26DACc+2D5FpJl4U+cZZHx/3A/6IOByLcVN3M8DuLf4ruFuN4wmSSwfb7Veb7kbFSiN6TDmJ+JWaDx7Et1yprYYnev2cFlbwv4OVpOUMMkD6xppO1X+BKdFHGiXJKFPC8O+T0wVbyR1xjFxLC4PaJnCFfav/5dHNDJraKApIhCGn57KGVVAPRTAz7khAss13SZfK5ubgvOucLYnmyuxUCr1CtSvPMoIzPs2twE58T+z0AZNv5w==
X-Forefront-Antispam-Report: 	CIP:20.160.56.81;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:inpost-eu.tmcas.trendmicro.com;PTR:inpost-eu.tmcas.trendmicro.com;CAT:NONE;SFS:(13230025)(376002)(136003)(39860400002)(346002)(396003)(451199018)(5400799012)(36840700001)(46966006)(40470700004)(2616005)(6506007)(6512007)(186003)(356005)(336012)(6666004)(1076003)(26005)(6486002)(47076005)(44832011)(7636003)(7596003)(2906002)(40460700003)(82740400003)(86362001)(83380400001)(82310400005)(110136005)(54906003)(316002)(40480700001)(478600001)(8936002)(4326008)(7416002)(5660300002)(36756003)(41300700001)(8676002)(70206006)(36860700001)(70586007)(34070700002)(21314003)(12100799024);DIR:OUT;SFP:1501;
X-OriginatorOrg: seco.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2023 20:14:01.5130
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c539a408-6bae-4aae-3c5e-08db2a48cfd0
X-MS-Exchange-CrossTenant-Id: bebe97c3-6438-442e-ade3-ff17aa50e733
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=bebe97c3-6438-442e-ade3-ff17aa50e733;Ip=[20.160.56.81];Helo=[inpost-eu.tmcas.trendmicro.com]
X-MS-Exchange-CrossTenant-AuthSource: 	AM6EUR05FT022.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR03MB7205
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_131409_617253_ED6C0EF8 
X-CRM114-Status: GOOD (  12.82  )
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

This adds nodes for the SerDes devices. They are disabled by default
to prevent any breakage on existing boards.

Signed-off-by: Sean Anderson <sean.anderson@seco.com>
---

(no changes since v10)

Changes in v10:
- Move serdes bindings to SoC dtsi
- Add support for all (ethernet) serdes modes
- Refer to "nodes" instead of "bindings"
- Move compatible/reg first

Changes in v4:
- Convert to new bindings

Changes in v3:
- New

 .../arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 126 ++++++++++++++++++
 1 file changed, 126 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
index e5fb137ac02b..59b401daad4d 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
@@ -9,6 +9,7 @@
  */
 #include <dt-bindings/clock/fsl,qoriq-clockgen.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/phy/phy.h>
 #include <dt-bindings/thermal/thermal.h>
 
 / {
@@ -238,6 +239,131 @@ reset: syscon@1e60000 {
 			reg = <0x0 0x1e60000 0x0 0x10000>;
 		};
 
+		serdes1: serdes@1ea0000 {
+			compatible = "fsl,ls1088a-serdes", "fsl,lynx-10g";
+			reg = <0x0 0x1ea0000 0x0 0x2000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			#clock-cells = <1>;
+			status = "disabled";
+
+			/*
+			 * XXX: Lane A uses pins SD1_RX3_P/N! That is, the lane
+			 * numbers and pin numbers are _reversed_.
+			 */
+			serdes1_A: phy@0 {
+				#phy-cells = <0>;
+				reg = <0>;
+
+				/* SG3 */
+				sgmii-0 {
+					fsl,pccr = <0x8>;
+					fsl,index = <0>;
+					fsl,cfg = <0x1>;
+					fsl,type = <PHY_TYPE_SGMII>;
+				};
+
+				/* QSGb */
+				qsgmii-0 {
+					fsl,pccr = <0x9>;
+					fsl,index = <0>;
+					fsl,cfg = <0x1>;
+					fsl,type = <PHY_TYPE_QSGMII>;
+				};
+			};
+
+			serdes1_B: phy@1 {
+				#phy-cells = <0>;
+				reg = <1>;
+
+				/* SG7 */
+				sgmii-1 {
+					fsl,pccr = <0x8>;
+					fsl,index = <1>;
+					fsl,cfg = <0x1>;
+					fsl,type = <PHY_TYPE_SGMII>;
+				};
+
+				/* QSGa */
+				qsgmii-1 {
+					fsl,pccr = <0x9>;
+					fsl,index = <1>;
+					fsl,cfg = <0x1>;
+					fsl,type = <PHY_TYPE_QSGMII>;
+				};
+
+				/* TODO: PCIe1 */
+			};
+
+			serdes1_C: phy@2 {
+				#phy-cells = <0>;
+				reg = <2>;
+
+				/* SG1 */
+				sgmii-2 {
+					fsl,pccr = <0x8>;
+					fsl,index = <2>;
+					fsl,cfg = <0x1>;
+					fsl,type = <PHY_TYPE_2500BASEX>;
+				};
+
+				/*
+				 * XFI1
+				 * Table 23-1 and section 23.5.16.4 disagree;
+				 * this reflects the table.
+				 *
+				 * fsl,cfg is documented as 1, but it is set to
+				 * 2 by the RCW! This is the same as the
+				 * LS1046A.
+				 */
+				xfi-0 {
+					fsl,pccr = <0xb>;
+					fsl,index = <0>;
+					fsl,cfg = <0x2>;
+					fsl,type = <PHY_TYPE_10GBASER>;
+				};
+			};
+
+			serdes1_D: phy@3 {
+				#phy-cells = <0>;
+				reg = <3>;
+
+				/* SG2 */
+				sgmii-3 {
+					fsl,pccr = <0x8>;
+					fsl,index = <3>;
+					fsl,cfg = <0x1>;
+					fsl,type = <PHY_TYPE_2500BASEX>;
+				};
+
+				/* QSGb */
+				qsgmii-0 {
+					fsl,pccr = <0x9>;
+					fsl,index = <0>;
+					fsl,cfg = <0x2>;
+					fsl,type = <PHY_TYPE_QSGMII>;
+				};
+
+				/* XFI2 */
+				xfi-1 {
+					fsl,pccr = <0xb>;
+					fsl,index = <1>;
+					fsl,cfg = <0x1>;
+					fsl,type = <PHY_TYPE_10GBASER>;
+				};
+			};
+
+		};
+
+		serdes2: serdes@1eb0000 {
+			compatible = "fsl,ls1088a-serdes", "fsl,lynx-10g";
+			reg = <0x0 0x1eb0000 0x0 0x2000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			#clock-cells = <1>;
+			status = "disabled";
+		};
+
 		isc: syscon@1f70000 {
 			compatible = "fsl,ls1088a-isc", "syscon";
 			reg = <0x0 0x1f70000 0x0 0x10000>;
-- 
2.35.1.1320.gc452695387.dirty


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
