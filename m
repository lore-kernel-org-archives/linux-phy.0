Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D751AC77B61
	for <linux-phy@archiver.kernel.org>; Thu, 13 Apr 2023 16:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IV3XhhKi3ADLhmzUYVkSZ/IN9sGKDtuGVzyx/woxXxM=; b=BQetD2r5lG3grv
	e2PF4WRWDzBuCvpB5VePKz2wK18cbYa5IQRhQTa8U3a//AE6IT1j2ahm2W+u0O73ONjuP1vnd7VHZ
	g6ErspQpK4f+gQB+CYnDV6mDuL4LJWoTo7s2T9+K6bK5wUIPKQh6OknGS5pwarvsZSOH8FPX2NL9S
	KaLAeomxhPLzMieFLo/GTHwQlkHdjjOglMf+h/Stok4XqLWKlwJP3bW0lcUyC496dubvYqFtYKzhM
	OMFSdXFagvFMhKHnnD+N3Dq3JmMm8G8cgOqmy1bYlOE8yssnIW2wwL0/lmxTQdEGoR+E7Th1pVIhW
	TT3D1nVcoVOrlsqVCsEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmzUF-006ZWU-0N;
	Thu, 13 Apr 2023 16:07:51 +0000
Received: from mail-db3eur04hn030f.outbound.protection.outlook.com ([2a01:111:f400:fe0c::30f] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmzTi-006Z55-1j;
	Thu, 13 Apr 2023 16:07:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jKdzNvs3L2X690rVL5GbXF5dPwYDopOF4O/ovnvRwNo=;
 b=n+RCQ+OEzUe967+VQ/eyI6A+GGRsgE1d27uBMETVyiLEbgVTzvWqTIGBTN+b6NCLs+bvq6FUvMEQSKQJMBPzmIXKerXh+rzjBKpuaPKvrJO2JvqhuDbCpAe3ts3paEN0Nwyms3c47oMH2X+KkqOaLxhLAboxC4H12N1lclkK/QQSY8ONWFE2wwiw3qsEX2Ql/uM3wgDUO7TGriJ+F6LmkfvGg7yypJDluJGLk9hm+LyNlF0AHB+a/0FWW8XtMRB4XU1OBjpKYywH5ZHngm2MQT/OFthO7o1H/S0hFRxu2D3hGC5RPBwcwSXVynPkK0cKhfNqlkyhjhLAA6BqHKvmrg==
Received: from DB9PR02CA0017.eurprd02.prod.outlook.com (2603:10a6:10:1d9::22)
 by AS8PR03MB9935.eurprd03.prod.outlook.com (2603:10a6:20b:628::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.35; Thu, 13 Apr
 2023 16:07:13 +0000
Received: from DB8EUR05FT006.eop-eur05.prod.protection.outlook.com
 (2603:10a6:10:1d9:cafe::59) by DB9PR02CA0017.outlook.office365.com
 (2603:10a6:10:1d9::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.31 via Frontend
 Transport; Thu, 13 Apr 2023 16:07:13 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 20.160.56.82)
 smtp.mailfrom=seco.com; dkim=pass (signature was verified)
 header.d=seco.com;dmarc=pass action=none header.from=seco.com;
Received-SPF: Pass (protection.outlook.com: domain of seco.com designates
 20.160.56.82 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.160.56.82; helo=inpost-eu.tmcas.trendmicro.com; pr=C
Received: from inpost-eu.tmcas.trendmicro.com (20.160.56.82) by
 DB8EUR05FT006.mail.protection.outlook.com (10.233.238.162) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6298.30 via Frontend Transport; Thu, 13 Apr 2023 16:07:13 +0000
Received: from outmta (unknown [192.168.82.135])
	by inpost-eu.tmcas.trendmicro.com (Trend Micro CAS) with ESMTP id 175742008026E;
	Thu, 13 Apr 2023 16:07:13 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (unknown [104.47.51.171])
	by repre.tmcas.trendmicro.com (Trend Micro CAS) with ESMTPS id 9B5592008006F;
	Thu, 13 Apr 2023 16:08:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bCPNPuvTcZoJ9EhLLqwivtsc7ttcDcE0RXg7M87G2gZKvJFxKZLe3VKhqkZ4skWOjXKoWO1GpjXfFp6LySwJqWY0SiebxUc0cE+2hDDbVLM3Z9cpi5FpyCaCpOuaqjX6f12q+e00d3XL1djkvF0Q1puoFiJ7Qo3JDWZS8/DFyd9M9EFIgyVovW/1L6So8b6LfXuEgdbYVBtrwVU9JSIuw5bmXu5JNj55UKG2ssOzoIUdyMN3sls4FR4lC5qCZ4vUlaH0kjlSXGqQQW2/nX0vfUQX5V3Dy5FsLrNtU+JxaTxmELOLi/gvwULeaIjuJmF1A1/po/Nuueqj50J7Q1jS+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jKdzNvs3L2X690rVL5GbXF5dPwYDopOF4O/ovnvRwNo=;
 b=KlsuDgBgWICE+kDb5xOCpnj6PYtxzcdYUD5vjcamjhswSzqaWPXwsfdkEkZNB2ZZVy072EqS8lGs72rJp2yBATYHhw2lnjxIXMv1BcoSxHW49+bTZETTWlRqSVE+hGTIjk9QMBXrFO41+FYGeIjPDrQhES7tSFKyLDnZWVM4vCU2s3VvT1RrwUByjmaPQis/mnuL2f0I9IpL7dvcsdul+sAiCr6Sz3XTJJq1iFCK1zldszI0XHbi3HP5odmtigIog5qDtDE/p1PeRqu7DaJz8soLDjkI+VF03SzFL6Y/1CS+ulvxa4wJ3RcptBeFZeXK2RIkGq2GoFoWWPHXoXueXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seco.com; dmarc=pass action=none header.from=seco.com;
 dkim=pass header.d=seco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jKdzNvs3L2X690rVL5GbXF5dPwYDopOF4O/ovnvRwNo=;
 b=n+RCQ+OEzUe967+VQ/eyI6A+GGRsgE1d27uBMETVyiLEbgVTzvWqTIGBTN+b6NCLs+bvq6FUvMEQSKQJMBPzmIXKerXh+rzjBKpuaPKvrJO2JvqhuDbCpAe3ts3paEN0Nwyms3c47oMH2X+KkqOaLxhLAboxC4H12N1lclkK/QQSY8ONWFE2wwiw3qsEX2Ql/uM3wgDUO7TGriJ+F6LmkfvGg7yypJDluJGLk9hm+LyNlF0AHB+a/0FWW8XtMRB4XU1OBjpKYywH5ZHngm2MQT/OFthO7o1H/S0hFRxu2D3hGC5RPBwcwSXVynPkK0cKhfNqlkyhjhLAA6BqHKvmrg==
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seco.com;
Received: from DB9PR03MB8847.eurprd03.prod.outlook.com (2603:10a6:10:3dd::13)
 by DB9PR03MB8325.eurprd03.prod.outlook.com (2603:10a6:10:37d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Thu, 13 Apr
 2023 16:06:58 +0000
Received: from DB9PR03MB8847.eurprd03.prod.outlook.com
 ([fe80::2226:eb03:a8c:a7e5]) by DB9PR03MB8847.eurprd03.prod.outlook.com
 ([fe80::2226:eb03:a8c:a7e5%2]) with mapi id 15.20.6298.030; Thu, 13 Apr 2023
 16:06:58 +0000
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
Subject: [PATCH v14 14/15] arm64: dts: ls1088ardb: Add SFP cage
Date: Thu, 13 Apr 2023 12:06:06 -0400
Message-Id: <20230413160607.4128315-15-sean.anderson@seco.com>
X-Mailer: git-send-email 2.35.1.1320.gc452695387.dirty
In-Reply-To: <20230413160607.4128315-1-sean.anderson@seco.com>
References: <20230413160607.4128315-1-sean.anderson@seco.com>
X-ClientProxiedBy: BL1P221CA0007.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:208:2c5::33) To DB9PR03MB8847.eurprd03.prod.outlook.com
 (2603:10a6:10:3dd::13)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: 	DB9PR03MB8847:EE_|DB9PR03MB8325:EE_|DB8EUR05FT006:EE_|AS8PR03MB9935:EE_
X-MS-Office365-Filtering-Correlation-Id: 947ae9fe-7582-48b6-3dcc-08db3c392500
X-TrendMicro-CAS-OUT-LOOP-IDENTIFIER: 656f966764b7fb185830381c646b41a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original:  kKHT6rWy1lFrYKJRgSxXFpYAj7zhOirJHCiS5bdv4ul3JgRr/i7HFMsWFlJlMSUEwyRkfoumx4KvPFV+wxdVxhpWjn99vcoIvuGt2hDnn8wY3qJWCZPkrjUzI/LVIPTKPPIbKKP8D1aghmhk5KBVf38Kyzm15FqBrDNu3QVtxdpm/f6P6Ts/HI55m4D6zsCAkXGeP8bnJZ/Mg7GzvzrOx9BNy5Rgkx2YUXOOxLANkYY+7mu0RBYofGh2ULqCZci8CbKRAVZiuzwUaRikhLBzyjss1kT7uAw9kuEJlbLHyIjbYg/txEY4pGJE+r+L41flBLJBDQiL3Zta7wU4irR5tEOOFaE5jf700ruePqMHbRZ5o0BtPS2PQ9YkH1ehsb16C425MszyP0RksHehJJLvjbHii8OB7caf2J/+edmP63y+Mv0i5gFMfZelV5LluISqLCI9JfxlfJ0rCvh+QLRHD8dDHDYwCt0uC7O6gRBk7AtTzePFT87QeZeRS0zGsC9XuPgsyQCJhdVltU1a69VogaFfIRhgFv3s2xXg8Qi8ccSg4YrUVWxzXTbLxyeNXSAg9awwnGlO2iuzI/xhDPvwQJZkGkstqLkx/zGB0nQccXSRiWN1d47QsxmebA+LDyOk
X-Forefront-Antispam-Report-Untrusted:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR03MB8847.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(136003)(396003)(346002)(376002)(39850400004)(366004)(451199021)(6666004)(52116002)(6486002)(66476007)(66556008)(66946007)(4326008)(36756003)(110136005)(2906002)(7416002)(44832011)(86362001)(41300700001)(5660300002)(8676002)(8936002)(316002)(38100700002)(38350700002)(478600001)(54906003)(6512007)(6506007)(1076003)(26005)(2616005)(186003)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR03MB8325
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:  DB8EUR05FT006.eop-eur05.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 	da772d05-822a-4237-9b16-08db3c391baf
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	qaSgxMwp3NIlrc0DDB5LxiL//NnZFOPShCbRRkAu/IYbHtK2QJRqGwBUybK27gzGOantiWL5EgzfKvOubXvvAeRXleogEtv3gitws3i7+4trhxn3PVH2vUdJP72qg67zSm/eb4jdVhJJ6T8zSLf/CxS2vBSilhgXPyhCSa63sbm/pfVH7JtE77UQ5DFRJ/zn0Y1rKDJXzHQK8IfReVLGsdgbU9xK/ML4JMlPYBZ/b+e/oLdgvkKO4sclVO/gGqmL9r4MvXJLQ7rCCv/CnRP4/cjBhC76em2Ch9uGFunFcOEHTW6w3460WFXWDdtNSW3I7Djx9SnDsjp+Nwti8icLWE9fFhjTcOerKbnU4ozbYUQXhaXDj7vFGArYSNCO5swCErM0w0SGTGpEJiIjLhywmMUn7Fz5PkV8PuyXwZ9XuOYVrXvcesprPOcn+/vKk+ECdX1SSXVUmHb3XsUdtK7NU8Kd7YEPEfwrgvi77RqQUkiwce2Z7zXQVFZTliGNeouOE/BPd8MuhJG4qPeQO6dz9EW/i/5yy9ebw9XFJp+hNr4qBlD/iTjWKo4fJvFMi/ROAefDAemy4ZX8OP6zrWCGKxRe7kSaXmunuByBQ2dZTuXOInofNOXD+CBcWddi4ApFVMddIPWbNcbI1Rzuz9qnLBO5kmjNUHZ71pkOSvgjyNEv7NKKjO0sbviL7KZtm9gPOeQUAXnOlQE1lK5OOX0AsZZ4AlVTzyQQaBOpUUWRjPldwrBZ0oZOdktYw2KgceDzqjM4cxsW5a6FMM/99mm+Cw==
X-Forefront-Antispam-Report: 	CIP:20.160.56.82;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:inpost-eu.tmcas.trendmicro.com;PTR:inpost-eu.tmcas.trendmicro.com;CAT:NONE;SFS:(13230028)(396003)(376002)(39850400004)(346002)(136003)(5400799015)(451199021)(40470700004)(36840700001)(46966006)(40460700003)(36860700001)(34070700002)(478600001)(316002)(110136005)(54906003)(86362001)(5660300002)(7416002)(8676002)(8936002)(2906002)(36756003)(44832011)(4326008)(82310400005)(70586007)(40480700001)(82740400003)(70206006)(6506007)(7636003)(7596003)(41300700001)(356005)(6486002)(186003)(6512007)(2616005)(26005)(47076005)(6666004)(336012)(1076003)(83380400001)(12100799027);DIR:OUT;SFP:1501;
X-OriginatorOrg: seco.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2023 16:07:13.3538
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 947ae9fe-7582-48b6-3dcc-08db3c392500
X-MS-Exchange-CrossTenant-Id: bebe97c3-6438-442e-ade3-ff17aa50e733
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=bebe97c3-6438-442e-ade3-ff17aa50e733;Ip=[20.160.56.82];Helo=[inpost-eu.tmcas.trendmicro.com]
X-MS-Exchange-CrossTenant-AuthSource: 	DB8EUR05FT006.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR03MB9935
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_090718_605806_62BBA894 
X-CRM114-Status: UNSURE (   9.35  )
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

dpmac1 defaults to a fixed link. However, it has an SFP cage, so we can
determine more about the link (such as whether it's up/down) by
describing it. The GPIOs are part of the "QIXIS" FPGA. For now, just
model them as individual registers.

Signed-off-by: Sean Anderson <sean.anderson@seco.com>
---

(no changes since v13)

Changes in v13:
- Split off SFP addition from serdes support

 .../boot/dts/freescale/fsl-ls1088a-rdb.dts    | 51 ++++++++++++++++++-
 1 file changed, 50 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
index 391c2b8afa81..9fb1960f1258 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
@@ -10,11 +10,27 @@
 
 /dts-v1/;
 
+#include <dt-bindings/gpio/gpio.h>
+
 #include "fsl-ls1088a.dtsi"
 
 / {
 	model = "LS1088A RDB Board";
 	compatible = "fsl,ls1088a-rdb", "fsl,ls1088a";
+
+	sfp_slot: sfp {
+		compatible = "sff,sfp";
+		i2c-bus = <&sfp_i2c>;
+		los-gpios = <&los_stat 5 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpios = <&los_stat 4 GPIO_ACTIVE_HIGH>;
+		tx-disable-gpios = <&brdcfg9 4 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+&dpmac1 {
+	managed = "in-band-status";
+	pcs-handle = <&pcs1>;
+	sfp = <&sfp_slot>;
 };
 
 &dpmac2 {
@@ -170,6 +186,12 @@ rtc@51 {
 				interrupts-extended = <&extirq 0 IRQ_TYPE_LEVEL_LOW>;
 			};
 		};
+
+		sfp_i2c: i2c@6 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0x6>;
+		};
 	};
 };
 
@@ -184,8 +206,31 @@ nand@0,0 {
 	};
 
 	fpga: board-control@2,0 {
-		compatible = "fsl,ls1088ardb-fpga", "fsl,fpga-qixis";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "fsl,ls1088ardb-fpga", "fsl,fpga-qixis",
+			     "simple-bus";
 		reg = <0x2 0x0 0x0000100>;
+		ranges = <0x0 0x2 0x0 0x0000100>;
+
+		los_stat: gpio-controller@1d {
+			#gpio-cells = <2>;
+			compatible = "fsl,fpga-qixis-los-stat",
+				     "ni,169445-nand-gpio";
+			reg = <0x1d 0x1>;
+			reg-names = "dat";
+			gpio-controller;
+			no-output;
+		};
+
+		brdcfg9: gpio-controller@59 {
+			#gpio-cells = <2>;
+			compatible = "fsl,fpga-qixis-brdcfg9",
+				     "ni,169445-nand-gpio";
+			reg = <0x59 0x1>;
+			reg-names = "dat";
+			gpio-controller;
+		};
 	};
 };
 
@@ -202,6 +247,10 @@ &esdhc {
 	status = "okay";
 };
 
+&pcs_mdio1 {
+	status = "okay";
+};
+
 &pcs_mdio2 {
 	status = "okay";
 };
-- 
2.35.1.1320.gc452695387.dirty


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
