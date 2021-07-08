Return-Path: <SRS0=EZuF=MA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5049EC07E96
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 12:48:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 11F1861450
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 12:48:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 11F1861450
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=marvell.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5SeOF3nNgRJjHQ9nuZpsHsVKfl5UBs4nk4WhJo4T00c=; b=Krw5/uf/G6gUCD
	Sqn6CVFyUv/q2KmvZZpUJOBathtxJtLvVqlrfZDy3WcsjfFJYf6JTU850NUPs9XcfDS3E4WKzEWgi
	CcjHg680E8DIh4uA/k7JUxJBWTbCLBJR+mniEUk+7F3uYufIHIYsDLjVMNwwNQWVEyG//rinM/VmL
	0BjhNyZrhUm/IPsHL5lD6ln+JY/DJp1Sckq7A6DzaYF1mbhKjpJ/eDIXDJ8XIOnXUVE66cVfOZLwU
	w8fqec1+SyrBW0nX9l4qtWxglvFXMy6CGxZIOKcUgz4VH21oLLdf8l8YknzOThd8HxsPccZIc5U74
	v80Z2g0xtWa1vnXC0U7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1TS6-00Gw92-Dx; Thu, 08 Jul 2021 12:48:26 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1TQW-00GvQD-8p; Thu, 08 Jul 2021 12:46:49 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 168Ceqoe011583; Thu, 8 Jul 2021 05:46:45 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=pfpt0220; bh=99JQtymiKQrVpD4JR6FItTIu++DbzZ98gvUQfXoeGvw=;
 b=GrD8qTIFsbWqGOUAY08T/9gPEarqSGdWOWqKRUWqzD42+JmzzU50ZYqN4QRR9jOE1t3m
 +gwcWn6KfQnFwKBb+tFhYpfivSVMEQUslqZOpZRZXKwJATBCrxxUgNzRebeTk++iyWiy
 od5O6wSV884KdACNpc351nPQ0izvlWhYHAaFh2Mz/xe3GQ4Uq1oOWCJmlU7zZlBOGQ9+
 0yEAYvXqQf1kNHHnemr2N9uK0Wm0vLH1DRrd5qHZfrVHTZjhKenhhMlLhrDH6b2PwPp+
 qGlBMUWBXMeyf87HfAQsAf73xTewyJJTOdDpiJQfbJ0HZ3nNSbP0VsDD3amwxLspokhD yA== 
Received: from dc5-exch02.marvell.com ([199.233.59.182])
 by mx0a-0016f401.pphosted.com with ESMTP id 39nrnu1y2h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 08 Jul 2021 05:46:44 -0700
Received: from DC5-EXCH02.marvell.com (10.69.176.39) by DC5-EXCH02.marvell.com
 (10.69.176.39) with Microsoft SMTP Server (TLS) id 15.0.1497.18;
 Thu, 8 Jul 2021 05:46:43 -0700
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH02.marvell.com
 (10.69.176.39) with Microsoft SMTP Server id 15.0.1497.18 via Frontend
 Transport; Thu, 8 Jul 2021 05:46:43 -0700
Received: from octopus.marvell.com (octopus.marvell.com [10.5.24.3])
 by maili.marvell.com (Postfix) with ESMTP id 6091A3F7076;
 Thu,  8 Jul 2021 05:46:39 -0700 (PDT)
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
Subject: [PATCH v7 5/5] arch/arm64: dts: change 10gbase-kr to 10gbase-r in
 Armada
Date: Thu, 8 Jul 2021 15:46:12 +0300
Message-ID: <20210708124612.30742-6-kostap@marvell.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210708124612.30742-1-kostap@marvell.com>
References: <20210708124612.30742-1-kostap@marvell.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: onuq7hqDIA-RESX5kacIpAsN7ZBZYY2x
X-Proofpoint-GUID: onuq7hqDIA-RESX5kacIpAsN7ZBZYY2x
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.790
 definitions=2021-07-08_06:2021-07-08,
 2021-07-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210708_054648_437725_0BD75DCD 
X-CRM114-Status: GOOD (  14.23  )
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

From: Konstantin Porotchkin <kostap@marvell.com>

Change all 10G port modes in Armada family device trees from
10gbase-kr to 10gbase-r

Signed-off-by: Konstantin Porotchkin <kostap@marvell.com>
Suggested-by: Russell King <linux@armlinux.org.uk>
---
 arch/arm64/boot/dts/marvell/armada-7040-db.dts | 2 +-
 arch/arm64/boot/dts/marvell/armada-8040-db.dts | 4 ++--
 arch/arm64/boot/dts/marvell/cn9130-crb.dtsi    | 2 +-
 arch/arm64/boot/dts/marvell/cn9130-db.dtsi     | 2 +-
 arch/arm64/boot/dts/marvell/cn9131-db.dtsi     | 2 +-
 arch/arm64/boot/dts/marvell/cn9132-db.dtsi     | 2 +-
 6 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-7040-db.dts b/arch/arm64/boot/dts/marvell/armada-7040-db.dts
index 51f3e2907597..cd326fe224ce 100644
--- a/arch/arm64/boot/dts/marvell/armada-7040-db.dts
+++ b/arch/arm64/boot/dts/marvell/armada-7040-db.dts
@@ -282,7 +282,7 @@
 &cp0_eth0 {
 	status = "okay";
 	/* Network PHY */
-	phy-mode = "10gbase-kr";
+	phy-mode = "10gbase-r";
 	/* Generic PHY, providing serdes lanes */
 	phys = <&cp0_comphy2 0>;
 
diff --git a/arch/arm64/boot/dts/marvell/armada-8040-db.dts b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
index e39e1efc95b6..f2e8e0df8865 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-db.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
@@ -195,7 +195,7 @@
 
 &cp0_eth0 {
 	status = "okay";
-	phy-mode = "10gbase-kr";
+	phy-mode = "10gbase-r";
 
 	fixed-link {
 		speed = <10000>;
@@ -348,7 +348,7 @@
 
 &cp1_eth0 {
 	status = "okay";
-	phy-mode = "10gbase-kr";
+	phy-mode = "10gbase-r";
 
 	fixed-link {
 		speed = <10000>;
diff --git a/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi b/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
index 75933477324a..9f0efcdacdf1 100644
--- a/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
+++ b/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
@@ -202,7 +202,7 @@
 &cp0_eth0 {
 	/* This port is connected to 88E6393X switch */
 	status = "okay";
-	phy-mode = "10gbase-kr";
+	phy-mode = "10gbase-r";
 	managed = "in-band-status";
 	phys = <&cp0_comphy4 0>;
 };
diff --git a/arch/arm64/boot/dts/marvell/cn9130-db.dtsi b/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
index 39fc90716454..2cd4bb09e8ff 100644
--- a/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
+++ b/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
@@ -126,7 +126,7 @@
 /* SLM-1521-V2, CON9 */
 &cp0_eth0 {
 	status = "okay";
-	phy-mode = "10gbase-kr";
+	phy-mode = "10gbase-r";
 	/* Generic PHY, providing serdes lanes */
 	phys = <&cp0_comphy4 0>;
 	managed = "in-band-status";
diff --git a/arch/arm64/boot/dts/marvell/cn9131-db.dtsi b/arch/arm64/boot/dts/marvell/cn9131-db.dtsi
index daddab638fb8..f995b1bcda01 100644
--- a/arch/arm64/boot/dts/marvell/cn9131-db.dtsi
+++ b/arch/arm64/boot/dts/marvell/cn9131-db.dtsi
@@ -85,7 +85,7 @@
 /* CON50 */
 &cp1_eth0 {
 	status = "okay";
-	phy-mode = "10gbase-kr";
+	phy-mode = "10gbase-r";
 	/* Generic PHY, providing serdes lanes */
 	phys = <&cp1_comphy4 0>;
 	managed = "in-band-status";
diff --git a/arch/arm64/boot/dts/marvell/cn9132-db.dtsi b/arch/arm64/boot/dts/marvell/cn9132-db.dtsi
index 5948de6b4638..3f1795fb4fe7 100644
--- a/arch/arm64/boot/dts/marvell/cn9132-db.dtsi
+++ b/arch/arm64/boot/dts/marvell/cn9132-db.dtsi
@@ -103,7 +103,7 @@
 /* SLM-1521-V2, CON9 */
 &cp2_eth0 {
 	status = "disabled";
-	phy-mode = "10gbase-kr";
+	phy-mode = "10gbase-r";
 	/* Generic PHY, providing serdes lanes */
 	phys = <&cp2_comphy4 0>;
 	managed = "in-band-status";
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
