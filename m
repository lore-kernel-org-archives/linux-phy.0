Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87DA7C77B71
	for <linux-phy@archiver.kernel.org>; Thu, 13 Apr 2023 16:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Lqk0wi/NMWVSyxjCsSzGNtxfofqq+eI/aj8wB4Bfsg=; b=lRAMCTa/Xbqtxp
	OztqludpRMH9LeaL90lIOYukIl3LM7FNStaMv677ZWwCf+nP2JeTkrhjo/MbWgwJbu6Tgx/nL7Ahm
	/IeCaBjb5aWYl5FY+yAqJ6ovEtWAN72DPHIdaFtKpdCAjoar4wKIs0gQ0ZjUwJkytCcTB0Jn/IwYR
	oDDu3vFKLGHdhBAC861Uy9DNuS4tU3TJ5sSdUjqfE/pgx+rurXWYOqEXFXcslGVZlSBB1/Xl6EZQI
	iYCpYW53kYFKpojiclQoxWWiax9Gyx4tHCLt1CXs/5xh7ZNDvOJNBzHUfwYWg33JweGZnqbZk62oJ
	qF0c0P3GEDk10G85t7tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmzTr-006ZEh-1c;
	Thu, 13 Apr 2023 16:07:27 +0000
Received: from mail-am7eur03hn20331.outbound.protection.outlook.com ([2a01:111:f400:7eaf::331] helo=EUR03-AM7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmzTX-006Yx5-1z;
	Thu, 13 Apr 2023 16:07:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Msa/ApeasZWDyIVGMQqmliC9DhgV10v70JxGPKM6HnM=;
 b=W+RYWp2+5UIZxObPPKeNxrxaDiLd+L2uIlwVIJFgntkaZUkJzZVFR/q5vji1+TNXpgqGhUB6oc7zu+7glm+XQEtRTUioWAwQdj0YqQcWQc2MYrvizXTwDsziE8m9Pmmif3t8tpORCCuViINr3PGhBUPCHg5dySOXMii7zEPfVMYD0xlhzPNNhUFITltnh/1K9Zk95X72x1iiEWrODyWS2hrPZjD9GYkFMRaRdjriPfwV8Lgd9rJDPzecKk8VarJZ9nuGeNthoE8Q0Gh+tM7JtpkVu99wd/ISRkuMTF9uTBAylOgHrvK2lU/v5B4XP0wpuuAyg5CZKsVzbCMHrIN/Cw==
Received: from DU2PR04CA0054.eurprd04.prod.outlook.com (2603:10a6:10:234::29)
 by DB4PR03MB9506.eurprd03.prod.outlook.com (2603:10a6:10:3f6::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Thu, 13 Apr
 2023 16:07:01 +0000
Received: from DB8EUR05FT022.eop-eur05.prod.protection.outlook.com
 (2603:10a6:10:234:cafe::8c) by DU2PR04CA0054.outlook.office365.com
 (2603:10a6:10:234::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30 via Frontend
 Transport; Thu, 13 Apr 2023 16:07:01 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 20.160.56.81)
 smtp.mailfrom=seco.com; dkim=pass (signature was verified)
 header.d=seco.com;dmarc=pass action=none header.from=seco.com;
Received-SPF: Pass (protection.outlook.com: domain of seco.com designates
 20.160.56.81 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.160.56.81; helo=inpost-eu.tmcas.trendmicro.com; pr=C
Received: from inpost-eu.tmcas.trendmicro.com (20.160.56.81) by
 DB8EUR05FT022.mail.protection.outlook.com (10.233.238.212) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6298.30 via Frontend Transport; Thu, 13 Apr 2023 16:07:00 +0000
Received: from outmta (unknown [192.168.82.132])
	by inpost-eu.tmcas.trendmicro.com (Trend Micro CAS) with ESMTP id B7BEB2008026E;
	Thu, 13 Apr 2023 16:07:00 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (unknown [104.47.51.177])
	by repre.tmcas.trendmicro.com (Trend Micro CAS) with ESMTPS id 112F520080073;
	Thu, 13 Apr 2023 16:08:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pe9gzG7f6IYN7fGQbTO2BGc1TauvbNShFOjHd0RTg6XiGuX/hNm5uuHi5Hnbl2lbVwY9ZoWrBZnvK1POU9LdEkKJ6sbNRgNRpfoMmN6gbE/ToGbGnunhWWkW0URsyo2C17U6zbgqd5bhcjBGyhtg1kZ5R8XazTRuPCkuJm3gqAKl1sm5SaCzKqfJ8OO4udgswfTdI8ybLMKCOpi01LtlklIAaqr2pYBOpIZGrt+ykd/CpBpDLWEluvSAjcwOl+t8PXNsnuIAgzAbpH4l4xDhi2YhIXmDT284pl/sjEPyeBCJ2k6Md/PoYtZAuzIhALAKIvaOEQdIPfJR47HGkFpDNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Msa/ApeasZWDyIVGMQqmliC9DhgV10v70JxGPKM6HnM=;
 b=aQRlbD4w82lNhLfnwN6UEoRlBOfybiLxjy3lDUSeSgk9FbYqv6Fn6UAIrpuPPxb0vwtxEaz1FeKXXlDQYKmx/xpPgJRoxI7c6dGhTZfQ/5DqH8kbgkBfD6XfQwL6nbtUMOtIoqPiOPksxj/vu5m4U/JOAedQUEMbdXyxm6XGlyJVVAjk4I/X2+7KcVv5oZW0YtySmNlaYaxWWtkpDKKYxZGD8CqwCcsC7SJEfuHUB9NbnsFYQ5ZSfcyd1xyNaZlrkPi2xzYl4DwGPUZlZQ2Qqev5Nu9iu54fH4Nd6Zck6fqoiR56A06IvGgl5tZ2J8UMUxygdGQFxPyQ2H4xux1p7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seco.com; dmarc=pass action=none header.from=seco.com;
 dkim=pass header.d=seco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Msa/ApeasZWDyIVGMQqmliC9DhgV10v70JxGPKM6HnM=;
 b=W+RYWp2+5UIZxObPPKeNxrxaDiLd+L2uIlwVIJFgntkaZUkJzZVFR/q5vji1+TNXpgqGhUB6oc7zu+7glm+XQEtRTUioWAwQdj0YqQcWQc2MYrvizXTwDsziE8m9Pmmif3t8tpORCCuViINr3PGhBUPCHg5dySOXMii7zEPfVMYD0xlhzPNNhUFITltnh/1K9Zk95X72x1iiEWrODyWS2hrPZjD9GYkFMRaRdjriPfwV8Lgd9rJDPzecKk8VarJZ9nuGeNthoE8Q0Gh+tM7JtpkVu99wd/ISRkuMTF9uTBAylOgHrvK2lU/v5B4XP0wpuuAyg5CZKsVzbCMHrIN/Cw==
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seco.com;
Received: from DB9PR03MB8847.eurprd03.prod.outlook.com (2603:10a6:10:3dd::13)
 by DB9PR03MB8325.eurprd03.prod.outlook.com (2603:10a6:10:37d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Thu, 13 Apr
 2023 16:06:51 +0000
Received: from DB9PR03MB8847.eurprd03.prod.outlook.com
 ([fe80::2226:eb03:a8c:a7e5]) by DB9PR03MB8847.eurprd03.prod.outlook.com
 ([fe80::2226:eb03:a8c:a7e5%2]) with mapi id 15.20.6298.030; Thu, 13 Apr 2023
 16:06:51 +0000
From: Sean Anderson <sean.anderson@seco.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org
Cc: Madalin Bucur <madalin.bucur@nxp.com>,
	linux-arm-kernel@lists.infradead.org,
	Camelia Alexandra Groza <camelia.groza@nxp.com>,
	devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	linuxppc-dev@lists.ozlabs.org,
	Bagas Sanjaya <bagasdotme@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Sean Anderson <sean.anderson@seco.com>,
	Li Yang <leoyang.li@nxp.com>,
	Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v14 10/15] arm64: dts: ls1046ardb: Add serdes descriptions
Date: Thu, 13 Apr 2023 12:06:02 -0400
Message-Id: <20230413160607.4128315-11-sean.anderson@seco.com>
X-Mailer: git-send-email 2.35.1.1320.gc452695387.dirty
In-Reply-To: <20230413160607.4128315-1-sean.anderson@seco.com>
References: <20230413160607.4128315-1-sean.anderson@seco.com>
X-ClientProxiedBy: BL1P221CA0007.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:208:2c5::33) To DB9PR03MB8847.eurprd03.prod.outlook.com
 (2603:10a6:10:3dd::13)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: 	DB9PR03MB8847:EE_|DB9PR03MB8325:EE_|DB8EUR05FT022:EE_|DB4PR03MB9506:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d283758-1662-417a-22a3-08db3c391d98
X-TrendMicro-CAS-OUT-LOOP-IDENTIFIER: 656f966764b7fb185830381c646b41a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original:  bIVad8sahONUq2Wd5ii3NGRsZKBWV4Tw26o6Atp+HyFkAYKRBloHSx9F3Ex0jI9nL8sY7g6saWbqlNl/c9wIIBvMExZUVMi1m6c3KjgrIMiFfIaqNSJ/5gVpM6iG076v5ONtofutEWwp5/CA6TMMQQREGBA0tUrGca9c0XjzPNdu1pbjAYRlX+U198PcK1CfZ2E/kcTGc+6rwLPtNGVZ21dEQ/up6E0Qke3zqAN+OHfiIfMRmAOQaNMppNNNL20js8IrEgXsuEAzQ3I1S8zTuMTRtlZwjkCU64hUtYkArMVot4LZv9wYlvHglygrjahwpWPvCf4csSa1rcIR0SKQj0KRHdGH0D7F7827/4fCjL++JVhd+V9N4q8kJt6+csLSHKD8zg2U08G1BXLxXLiVQSQI+39A3rJO5yt2cbOAWZTm2mB69fZGVK8PO25bwfSQSZQTGAtBNmHY9bJCj7tAn5yL0y24qmYfoouPQb0ggtz1cfSmYQ8H8G3Cv8iT1SKL7EdsLyf78zGGVZUGWD4eqjGzJhJSif/WR7vvbSsqy0O70XlucmOY9z9Ny/p2eMKTTScVSY5iJGpK1VqekuPADqHdeujvjrITPAn/+uqzjVESLV6dpFjqNnQqfskCpVGw
X-Forefront-Antispam-Report-Untrusted:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR03MB8847.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(136003)(396003)(346002)(376002)(39850400004)(366004)(451199021)(6666004)(52116002)(6486002)(66476007)(66556008)(66946007)(4326008)(36756003)(110136005)(2906002)(7416002)(44832011)(86362001)(41300700001)(5660300002)(8676002)(8936002)(316002)(38100700002)(38350700002)(478600001)(54906003)(6512007)(6506007)(1076003)(26005)(2616005)(186003)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR03MB8325
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:  DB8EUR05FT022.eop-eur05.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 	f1bf2396-d911-48b7-0b10-08db3c39179b
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	8SIWQ7RJX4YQ4GBeWdNzDYuX2TTbkS0w63w7wnL2WIzrqGz+vu/vxwy3QtNP1LHXqRCuuD4rSq2XHb0TKIsvHhpHCY3cJB7sjcMRfZro9QShmJCDuj/4Ed8yd7HKvke4SF7aGLRXG3CNgjaRUDqLGB4mg+mhnHvHLVzTVjhW5TJ1iM4GnzzUpRHitf6tvzCNaJxnIM4N0LOZcReqJOyQ2rBeQoumZIxPwyD8zjSEI8PcCICuLDY+6P5i5nHFFnkDSicCjmMBe7vYx5iaAtQo/gUDqomdBW/CHmMR9swYeKm0iPnSvyPcZvW4WKQOYIiOB+9cjunwzYgObzdpx5PbUU2mwcKipXfwUJHJooD0YwpxYaJP5J0vY8+0YRplNHZ4uRi+YmOxif0vgnzq9Owk/NzP334a90qSV69P89l1R7FmQFjED5yu//QVw5jwxKz+06kajsimXSzZYF5rGAW9pnOJAPHgHHsDYNSB9EyumulPHVwYDYfCMcGi14UFCG54dDFZik2SjsoHl/gmTozNe5QLTE8SScyihJpeYscQpGhv83xIl6rII3sSgm8e9P2Dct4g3aQdxQBQQSorg4bXfjcmgfmhLDfGQTq8hGO+Yiuou2JEE91xJvT2/D3ZAAVm//cMrxfWtL3uJ8WYKKpw3NxctGg6m6uDlRz2VMwOFFugOHj55berW+Cm9jUEGwTB7iElsX5QkyjK1l/NqmMqjYhnRpimuMg1u+1g/Kf2ajw=
X-Forefront-Antispam-Report: 	CIP:20.160.56.81;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:inpost-eu.tmcas.trendmicro.com;PTR:inpost-eu.tmcas.trendmicro.com;CAT:NONE;SFS:(13230028)(136003)(396003)(39850400004)(376002)(346002)(451199021)(5400799015)(36840700001)(46966006)(316002)(4326008)(82740400003)(70206006)(70586007)(2616005)(47076005)(336012)(5660300002)(41300700001)(34070700002)(44832011)(82310400005)(6666004)(36756003)(86362001)(6486002)(54906003)(40480700001)(6512007)(6506007)(26005)(186003)(1076003)(2906002)(83380400001)(7416002)(8676002)(8936002)(36860700001)(478600001)(356005)(7596003)(7636003)(110136005)(12100799027);DIR:OUT;SFP:1501;
X-OriginatorOrg: seco.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2023 16:07:00.9587
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d283758-1662-417a-22a3-08db3c391d98
X-MS-Exchange-CrossTenant-Id: bebe97c3-6438-442e-ade3-ff17aa50e733
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=bebe97c3-6438-442e-ade3-ff17aa50e733;Ip=[20.160.56.81];Helo=[inpost-eu.tmcas.trendmicro.com]
X-MS-Exchange-CrossTenant-AuthSource: 	DB8EUR05FT022.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4PR03MB9506
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_090707_663524_ADA6F7B9 
X-CRM114-Status: GOOD (  11.58  )
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

This adds appropriate descriptions for the macs which use the SerDes. The
156.25MHz fixed clock is a crystal. The 100MHz clocks (there are
actually 3) come from a Renesas 6V49205B at address 69 on i2c0. There is
no driver for this device (and as far as I know all you can do with the
100MHz clocks is gate them), so I have chosen to model it as a single
fixed clock.

Note: the SerDes1 lane numbering for the LS1046A is *reversed*.
This means that Lane A (what the driver thinks is lane 0) uses pins
SD1_TX3_P/N.

Signed-off-by: Sean Anderson <sean.anderson@seco.com>

---

(no changes since v10)

Changes in v10:
- Move serdes descriptions to SoC dtsi
- Don't use /clocks
- Use "descriptions" instead of "bindings"
- Split off defconfig change into separate patch

Changes in v9:
- Fix name of phy mode node
- phy-type -> fsl,phy

Changes in v8:
- Rename serdes phy handles to use _A, _B, etc. instead of _0, _1, etc.
  This should help remind readers that the numbering corresponds to the
  physical layout of the registers, and not the lane (pin) number.

Changes in v6:
- XGI.9 -> XFI.9

Changes in v4:
- Convert to new bindings

 .../boot/dts/freescale/fsl-ls1046a-rdb.dts    | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
index 07f6cc6e354a..0d6dcfd1630a 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
@@ -26,6 +26,24 @@ aliases {
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
+
+	clk_100mhz: clock-100mhz {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <100000000>;
+	};
+
+	clk_156mhz: clock-156mhz {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <156250000>;
+	};
+};
+
+&serdes1 {
+	clocks = <&clk_100mhz>, <&clk_156mhz>;
+	clock-names = "ref0", "ref1";
+	status = "okay";
 };
 
 &duart0 {
@@ -140,21 +158,29 @@ ethernet@e6000 {
 	ethernet@e8000 {
 		phy-handle = <&sgmii_phy1>;
 		phy-connection-type = "sgmii";
+		phys = <&serdes1_B>;
+		phy-names = "serdes";
 	};
 
 	ethernet@ea000 {
 		phy-handle = <&sgmii_phy2>;
 		phy-connection-type = "sgmii";
+		phys = <&serdes1_A>;
+		phy-names = "serdes";
 	};
 
 	ethernet@f0000 { /* 10GEC1 */
 		phy-handle = <&aqr106_phy>;
 		phy-connection-type = "xgmii";
+		phys = <&serdes1_D>;
+		phy-names = "serdes";
 	};
 
 	ethernet@f2000 { /* 10GEC2 */
 		phy-connection-type = "10gbase-r";
 		managed = "in-band-status";
+		phys = <&serdes1_C>;
+		phy-names = "serdes";
 	};
 
 	mdio@fc000 {
-- 
2.35.1.1320.gc452695387.dirty


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
