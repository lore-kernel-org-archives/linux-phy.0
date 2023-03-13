Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0222C6FD19
	for <linux-phy@archiver.kernel.org>; Mon, 13 Mar 2023 16:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W09BBUPyVCn2avhawP134YpnzQ15AgZu+7mn9XmiHd4=; b=BRIPbhf8osyq4j
	ijxHZDSE056vV6StoN1TdUBc266yDuIU6rne3SVzuFMKIu6BvqQUM1FwWQSca7XE2qmzddtzYz8WJ
	p524v8CyXPCxuMYi1dWcbZ923VT93l8CIYmiaxLK2A7SHBl3YG2iXpzVUAII9NYKYSDkvIxBvLz/T
	BnGJdnGOt5N/fIz0m59jTOihQ3uM2oeR/wlD5ooIbcpPcQo0X0IYm7g2JvzEvqZJsFXd5kseWOSnQ
	B+Mx1QEied0YsYP1V4Z97ruefkiGPsaETH9H4Gcfx2W4eBa3aQjCLDUlqKzATli0nhsd/tPhJXPuK
	lsOW0+qZMWzvwOwAZKkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbktx-006i6W-1R; Mon, 13 Mar 2023 16:19:57 +0000
Received: from mail-db8eur05hn20319.outbound.protection.outlook.com ([2a01:111:f400:7e1a::319] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbkmi-006f5s-JV; Mon, 13 Mar 2023 16:12:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AV4YSLSWUEa6icuS3ElbSt+yZKjwyRoBMk3Gdh1j9EM=;
 b=GwIiIQ/VHh6WthRsxIq647D5FJGLvUZR/srep2+omj/74G5PBO0wIKwUgfHAJfEaBBiT61Fd0pzfD7D0xw7z/J5NdUFsfpCLeiBr3tuDjLkDh9R2XtMqQ2zHAzv5h4O3ebbk4PVG7pyESR71fpUmgthU/J/EdVSFwp4h7LXsOLFDAQxOY0mLRhtzR1Q0RXh1y3UKhTG9JfS2bpkF1renDXKBhXqFI029dsOMnKtZyqp7Fwc7QY/9T0WrGFxWPGAoT7ORuRa4fu8CZvxTL6Yd+Z1NM3NcWymrY744Tw6iT+fgqxkg4TPza3kNZJ++wRb5DuKSFMxyFcj6DMYyXD9O6Q==
Received: from DB6PR0501CA0031.eurprd05.prod.outlook.com (2603:10a6:4:67::17)
 by DU0PR03MB8438.eurprd03.prod.outlook.com (2603:10a6:10:3b6::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Mon, 13 Mar
 2023 16:12:26 +0000
Received: from DB8EUR05FT025.eop-eur05.prod.protection.outlook.com
 (2603:10a6:4:67:cafe::bd) by DB6PR0501CA0031.outlook.office365.com
 (2603:10a6:4:67::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.23 via Frontend
 Transport; Mon, 13 Mar 2023 16:12:26 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 20.160.56.87)
 smtp.mailfrom=seco.com; dkim=pass (signature was verified)
 header.d=seco.com;dmarc=pass action=none header.from=seco.com;
Received-SPF: Pass (protection.outlook.com: domain of seco.com designates
 20.160.56.87 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.160.56.87; helo=inpost-eu.tmcas.trendmicro.com; pr=C
Received: from inpost-eu.tmcas.trendmicro.com (20.160.56.87) by
 DB8EUR05FT025.mail.protection.outlook.com (10.233.239.135) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6199.11 via Frontend Transport; Mon, 13 Mar 2023 16:12:26 +0000
Received: from outmta (unknown [192.168.82.135])
	by inpost-eu.tmcas.trendmicro.com (Trend Micro CAS) with ESMTP id C69ED2008026E;
	Mon, 13 Mar 2023 16:12:25 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (unknown [104.47.14.52])
	by repre.tmcas.trendmicro.com (Trend Micro CAS) with ESMTPS id 08B7B2008006F;
	Mon, 13 Mar 2023 16:10:28 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JFQnGd0yNg3/I+qeRFahfNJFRdyNVxiVls56WpMdHovgMTJ4pgBr8rNza+oeJwX0WS8kjzixbJG7OR6CoF4jbEy0JEirJsp1INGJ0UM0SqMw//k5llz9eWcRBvROaQtaqinSte3qLyZiFjzKPwutM61C+BrUhWdiNjjquKG5jUUSMis+0sQ85rxuBx+BwK8lLda3IIC4XUhMY/ODPLW2BWSTSHx78pvtqWt11UTOYbO1X5AQCOXBGfXm4f/G8ekbYT8uZj78AmYUkuRSZM0BnXM7IMlhBKmph3Aoe1evQ4SUfC01hopLEYQhNpV+BhVnLgoJJbw54C3GmSPxLRQ4/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AV4YSLSWUEa6icuS3ElbSt+yZKjwyRoBMk3Gdh1j9EM=;
 b=DKWef20LySGk0CO/uu/zncGMN1dsyk+Ri0MQxsrQMUkjrJAqSy9aRY613/nLpBXT5SkFY1w7FSSvyMzqupJJRTbizHcGPTzxRxi0/Rd9Kh9yuh1di3olRqnyzZgbQ2aGz/8zRpWNWFpLtb2s3ugYQIBWx8xvT1Mg9NPlzkvGypX4KnFgOiI8oyozmYIEilZmdncjasGKYSAFEGQ9qBAJ+JE4/a1Xtlm42A+KblE/8ij6tsdsprXSzKU8asuq9mwSVAGFQ9xnNIGb4J18wm7Xf4wTjE5BsMrp3xMiDVKvQJmM+DZlgilm3KwJc3luJF+/DcmZjMoKgceHfFMFKn0fbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seco.com; dmarc=pass action=none header.from=seco.com;
 dkim=pass header.d=seco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AV4YSLSWUEa6icuS3ElbSt+yZKjwyRoBMk3Gdh1j9EM=;
 b=GwIiIQ/VHh6WthRsxIq647D5FJGLvUZR/srep2+omj/74G5PBO0wIKwUgfHAJfEaBBiT61Fd0pzfD7D0xw7z/J5NdUFsfpCLeiBr3tuDjLkDh9R2XtMqQ2zHAzv5h4O3ebbk4PVG7pyESR71fpUmgthU/J/EdVSFwp4h7LXsOLFDAQxOY0mLRhtzR1Q0RXh1y3UKhTG9JfS2bpkF1renDXKBhXqFI029dsOMnKtZyqp7Fwc7QY/9T0WrGFxWPGAoT7ORuRa4fu8CZvxTL6Yd+Z1NM3NcWymrY744Tw6iT+fgqxkg4TPza3kNZJ++wRb5DuKSFMxyFcj6DMYyXD9O6Q==
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seco.com;
Received: from DB9PR03MB8847.eurprd03.prod.outlook.com (2603:10a6:10:3dd::13)
 by AS8PR03MB7781.eurprd03.prod.outlook.com (2603:10a6:20b:405::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Mon, 13 Mar
 2023 16:12:08 +0000
Received: from DB9PR03MB8847.eurprd03.prod.outlook.com
 ([fe80::dbcf:1089:3242:614e]) by DB9PR03MB8847.eurprd03.prod.outlook.com
 ([fe80::dbcf:1089:3242:614e%4]) with mapi id 15.20.6178.024; Mon, 13 Mar 2023
 16:12:08 +0000
From: Sean Anderson <sean.anderson@seco.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Camelia Alexandra Groza <camelia.groza@nxp.com>,
	Madalin Bucur <madalin.bucur@nxp.com>,
	Bagas Sanjaya <bagasdotme@gmail.com>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	linuxppc-dev@lists.ozlabs.org,
	Sean Anderson <sean.anderson@seco.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v11 01/13] dt-bindings: phy: Add 2500BASE-X and 10GBASE-R
Date: Mon, 13 Mar 2023 12:11:25 -0400
Message-Id: <20230313161138.3598068-2-sean.anderson@seco.com>
X-Mailer: git-send-email 2.35.1.1320.gc452695387.dirty
In-Reply-To: <20230313161138.3598068-1-sean.anderson@seco.com>
References: <20230313161138.3598068-1-sean.anderson@seco.com>
X-ClientProxiedBy: BL1P221CA0013.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:208:2c5::11) To DB9PR03MB8847.eurprd03.prod.outlook.com
 (2603:10a6:10:3dd::13)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: 	DB9PR03MB8847:EE_|AS8PR03MB7781:EE_|DB8EUR05FT025:EE_|DU0PR03MB8438:EE_
X-MS-Office365-Filtering-Correlation-Id: e3eb63f4-408f-4968-8efb-08db23ddbc91
X-TrendMicro-CAS-OUT-LOOP-IDENTIFIER: 656f966764b7fb185830381c646b41a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original:  FgY933EmjLGs4uDDS44TMCt98kZ6F1dquQILxkXpVLuxUufo8cGsUucx7ZRjRD0308Pa9/FETEyTGxaLvZQSv91KnHZ/2gUUBDUHWCUhoVCVOoYDbN4WuD1yNg2tKMhivO0JSOVrK64Ye5C4Rci2odWl5SWpbIkIaiy/agkhTqMtabGnAxidXMubRGBV/DIqFVFRvi/adyjV3CevzuEjgmJLbF6QvgT8kEGQGrToQVxJuh2HySI2OkqYNZcrRrE1O/0QrmbPEPx9w0UaQuX6tsafKbmUE4C4fvFbBg0hkzan+EClbVZT4WDW50k3uZNW/K1wuAWRa8+Pta4Pcd9rskQV5DvA1eaP5K9umotZECAOaJFbyTioxTlwLerNwBltBFZRTwChdXM4wbkSkc44yQQ5OYaADDjI5wTujheE//GQDAJB1L0WWQk8zsOqhYcBcbtrjWuBZ8Dmf6D84L1pDzPSTf1ymKkV+4EhXG2tFU0uX4pbhQsNzM/C+6x6iFDC4h2lv0QCJGEPJePurbSzSkSsv6dYRNAsSFrkVrYsyy/pdbqfLybGVy9VlcphLBdhmnCbMdR4NIfbT1IfLEWIq36tW92EgilLIuLHV8909kHO6o2ZYNiMqWvJ2Mamg9ER6aQU2XPew9NgXdF7yweI1WNhTDpcptWfEeoaEB0f+zmcO3sN6FRS5kvauyLepPsJ
X-Forefront-Antispam-Report-Untrusted:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR03MB8847.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(366004)(39850400004)(346002)(396003)(376002)(136003)(451199018)(110136005)(41300700001)(54906003)(478600001)(8676002)(4326008)(66556008)(66476007)(66946007)(8936002)(36756003)(86362001)(38350700002)(38100700002)(26005)(6512007)(1076003)(966005)(6486002)(6666004)(186003)(52116002)(44832011)(5660300002)(7416002)(2906002)(316002)(6506007)(83380400001)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR03MB7781
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:  DB8EUR05FT025.eop-eur05.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 	f407724d-fc65-4adb-f974-08db23ddb1ac
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	pyB1lrUMbws8YfDGlK7X7NtSI+YwpeRDAvjWSPuNJ448uGs5zl+qqcpXAbBzrOXEKu0/+NJLq5M0C6ov9CliGdoj3/VpAjuD3gG7R+pZS+sTMYMJjlDj2qT2tw1pApAcpIFOvnkFMkW2imR0b+FqljVVX3NnFcUMS5x/OWjBwLq8yXRtmyDLl52UAvTz38zNeNojKzflPyoMpxseveZ0LBLgnXZT9mAtZlVcKnfd4R7R+ougllC4I5XhlVGGP3LEGy1mX69GYhmXTwJIXVknyoLLAnhHRJGrNIOEP/aF9zkV/AuMQAsBPiJBQ3d9mcRALi2QdeDK7rcsV+I4G9tVAF6cuKaBIyq3olvBPprhvYRgkaPRfYRpQZcZGafPwDO92HAVW1Fwu7qAbvxcaTqPlnOFRepb2K1fw/tncNA3tjfkFmpyylQF2akJXh23Ajz0NyHpr7e32+LioUblmKe6tqE0m+/x2TrOYwhB+88pv159yg1Dt2/m8sIgEKJmj4LrrWVY5cRdepR2ErkmW2BnaytCN4zMfiO4prGYU9xgQK3nJRbV1L/sIF6Abl7JQjqdrFcV5FKN5fdoLnI0McgP3X4VMOV+Olxwtwut6/vC/Fqhk8GOb/5INAmVb5UMrenKWTPY/UkQLnlJCUzBHMq1hajLXf9A8gtDKiThFOPsWu5w35uTaytgMFrwErrvbKF4isvkQS9udHAs2gUx+xddrPlhR1Wak3lZIGkiNXJ3oMAP3HrBgm+Vhr9Xi7jO5hpD
X-Forefront-Antispam-Report: 	CIP:20.160.56.87;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:inpost-eu.tmcas.trendmicro.com;PTR:inpost-eu.tmcas.trendmicro.com;CAT:NONE;SFS:(13230025)(376002)(396003)(39850400004)(346002)(136003)(5400799012)(451199018)(36840700001)(40470700004)(46966006)(5660300002)(40460700003)(7416002)(44832011)(36756003)(83380400001)(40480700001)(186003)(478600001)(82310400005)(47076005)(26005)(2616005)(6512007)(6506007)(6666004)(966005)(6486002)(1076003)(336012)(356005)(8676002)(4326008)(8936002)(70586007)(70206006)(41300700001)(316002)(110136005)(86362001)(54906003)(36860700001)(34020700004)(7596003)(7636003)(2906002)(82740400003)(12100799021);DIR:OUT;SFP:1501;
X-OriginatorOrg: seco.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2023 16:12:26.0520
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e3eb63f4-408f-4968-8efb-08db23ddbc91
X-MS-Exchange-CrossTenant-Id: bebe97c3-6438-442e-ade3-ff17aa50e733
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=bebe97c3-6438-442e-ade3-ff17aa50e733;Ip=[20.160.56.87];Helo=[inpost-eu.tmcas.trendmicro.com]
X-MS-Exchange-CrossTenant-AuthSource: 	DB8EUR05FT025.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR03MB8438
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_091228_705855_326A574C 
X-CRM114-Status: UNSURE (   8.24  )
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

This adds some modes necessary for Lynx 10G support. 2500BASE-X, also
known as 2.5G SGMII, is 1000BASE-X/SGMII overclocked to 3.125 GHz, with
autonegotiation disabled. 10GBASE-R, also known as XFI, is the protocol
spoken between the PMA and PMD ethernet layers for 10GBASE-T and
10GBASE-S/L/E. It is typically used to communicate directly with SFP+
modules, or with 10GBASE-T phys.

Signed-off-by: Sean Anderson <sean.anderson@seco.com>
Acked-by: Rob Herring <robh@kernel.org>
---
PR increasing phy-type maximum [1].

If this commit could be applied sooner rather than later, I'd appreciate
it. This should help avoid another respin if someone else adds another
phy type.

[1] https://github.com/devicetree-org/dt-schema/pull/85

(no changes since v6)

Changes in v6:
- Bump PHY_TYPE_2500BASEX to 13, since PHY_TYPE_USXGMII was added in the
  meantime

Changes in v4:
- New

 include/dt-bindings/phy/phy.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/phy/phy.h b/include/dt-bindings/phy/phy.h
index 6b901b342348..5b2b674d8d25 100644
--- a/include/dt-bindings/phy/phy.h
+++ b/include/dt-bindings/phy/phy.h
@@ -23,5 +23,7 @@
 #define PHY_TYPE_DPHY		10
 #define PHY_TYPE_CPHY		11
 #define PHY_TYPE_USXGMII	12
+#define PHY_TYPE_2500BASEX	13
+#define PHY_TYPE_10GBASER	14
 
 #endif /* _DT_BINDINGS_PHY */
-- 
2.35.1.1320.gc452695387.dirty


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
