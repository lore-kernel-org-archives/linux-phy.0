Return-Path: <SRS0=EZuF=MA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6A71C07E96
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 11:26:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A70F861464
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 11:26:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A70F861464
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=marvell.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nn9g7kI7PQ2CUH01TaA4pakskol3f/HlIIsGxZEQpu8=; b=hVIa1wtNeUek9u
	99d4PZS0q1QXxSxuS0lYo2lKmfJeAzOwknY8s/Tm+Ok2S0EUakForhSs+KZHexVdsfae9Sd7Z7rt0
	L5M7drMsvsgdGpoY0qnq01W43mzmxWmPgm0kbhggfwwt+EQyvW3rxHhcbVy4dtRFUKP0gQYl4hOi6
	QpsAca0XRVE3kkQeiQKNimBpjzh4gvXPU6cvvpmhEtQeDlYGQdFtWFSKVM2vknmvBJOVZG1NuKRw6
	zWrGXzTC/KXga3G4VYUj48OfQ0K6bE2KjtbM/YdDypuguAcVCqqWdoxg06Edsz5SQ40M3Kd/kEZOu
	+xVKADxr5gmYhHGjJN1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1SAd-00Gh7E-SO; Thu, 08 Jul 2021 11:26:19 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1SAJ-00Gh2A-0R; Thu, 08 Jul 2021 11:26:00 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 168BB6Xg023087; Thu, 8 Jul 2021 04:25:55 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=pfpt0220; bh=WPavP26DKZ05Jmrq/qASLQHWFNCPXboM76wEZXomdjk=;
 b=GYAxR8Ly9Uq2RCtRJmmg5TB6jCIRzWrKtK+8+qKKlGzunGcZJQXLeNQJ6UwJ/UT52l4E
 IjQVltQUXmMVg0+U1MdXpQW/Fl2dEXiqTTrjczxWdU63vnS5ehFIx7ALtxBSluJjoTsf
 GSlvU+jgrC6ghqoWLRmaJb3mYa9+u5lNmTbnvjvwrslxy5Dp1GY44qqNauQrEPKywTiT
 K0CoDZp6Tiq4HMqKBeiwCA+QMlqgbApuJWzv7nxNs8OhIGRhXYfugUWm0gPdBYRieXZa
 ZLogjYN/iUlm15ZiaFch+TMiI6H/YcInWHRk7HZkIuG+FxJXSUmV9A2IcB9DJ1X5yZ5K 5w== 
Received: from dc5-exch01.marvell.com ([199.233.59.181])
 by mx0b-0016f401.pphosted.com with ESMTP id 39ny0g89p5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 08 Jul 2021 04:25:55 -0700
Received: from DC5-EXCH02.marvell.com (10.69.176.39) by DC5-EXCH01.marvell.com
 (10.69.176.38) with Microsoft SMTP Server (TLS) id 15.0.1497.18;
 Thu, 8 Jul 2021 04:25:51 -0700
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH02.marvell.com
 (10.69.176.39) with Microsoft SMTP Server id 15.0.1497.18 via Frontend
 Transport; Thu, 8 Jul 2021 04:25:52 -0700
Received: from octopus.marvell.com (octopus.marvell.com [10.5.24.3])
 by maili.marvell.com (Postfix) with ESMTP id 13C323F7065;
 Thu,  8 Jul 2021 04:25:47 -0700 (PDT)
From: <kostap@marvell.com>
To: <miquel.raynal@bootlin.com>, <kishon@ti.com>, <vkoul@kernel.org>,
 <robh+dt@kernel.org>, <andrew@lunn.ch>, <gregory.clement@bootlin.com>,
 <sebastian.hesselbarth@gmail.com>, <vladimir.vid@sartura.hr>,
 <luka.kovacic@sartura.hr>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
CC: <mw@semihalf.com>, <jaz@semihalf.com>, <nadavh@marvell.com>,
 <stefanc@marvell.com>, <bpeled@marvell.com>, Konstantin Porotchkin
 <kostap@marvell.com>
Subject: [PATCH v6 1/5] Documentation/bindings: phy: update references to cp11x
Date: Thu, 8 Jul 2021 14:25:24 +0300
Message-ID: <20210708112528.3254-2-kostap@marvell.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210708112528.3254-1-kostap@marvell.com>
References: <20210708112528.3254-1-kostap@marvell.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: vq0hwm8PogmnyT1sBXmofF6RLIzjDcjc
X-Proofpoint-GUID: vq0hwm8PogmnyT1sBXmofF6RLIzjDcjc
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.790
 definitions=2021-07-08_06:2021-07-06,
 2021-07-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210708_042559_214217_0A7B44BA 
X-CRM114-Status: GOOD (  12.40  )
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

From: Grzegorz Jaszczyk <jaz@semihalf.com>

The cp11x references in dts has changed, reflect it in comphy
documentation.

Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
Signed-off-by: Konstantin Porotchkin <kostap@marvell.com>
---
 Documentation/devicetree/bindings/phy/phy-mvebu-comphy.txt | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-mvebu-comphy.txt b/Documentation/devicetree/bindings/phy/phy-mvebu-comphy.txt
index 8c60e6985950..5ffd0f55d010 100644
--- a/Documentation/devicetree/bindings/phy/phy-mvebu-comphy.txt
+++ b/Documentation/devicetree/bindings/phy/phy-mvebu-comphy.txt
@@ -42,22 +42,22 @@ Required properties (child nodes):
 
 Examples:
 
-	cpm_comphy: phy@120000 {
+	CP11X_LABEL(comphy): phy@120000 {
 		compatible = "marvell,comphy-cp110";
 		reg = <0x120000 0x6000>;
-		marvell,system-controller = <&cpm_syscon0>;
-		clocks = <&CP110_LABEL(clk) 1 5>, <&CP110_LABEL(clk) 1 6>,
-			 <&CP110_LABEL(clk) 1 18>;
+		marvell,system-controller = <&CP11X_LABEL(syscon0)>;
+		clocks = <&CP11X_LABEL(clk) 1 5>, <&CP11X_LABEL(clk) 1 6>,
+			 <&CP11X_LABEL(clk) 1 18>;
 		clock-names = "mg_clk", "mg_core_clk", "axi_clk";
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		cpm_comphy0: phy@0 {
+		CP11X_LABEL(comphy0): phy@0 {
 			reg = <0>;
 			#phy-cells = <1>;
 		};
 
-		cpm_comphy1: phy@1 {
+		CP11X_LABEL(comphy1): phy@1 {
 			reg = <1>;
 			#phy-cells = <1>;
 		};
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
