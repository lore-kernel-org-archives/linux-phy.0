Return-Path: <SRS0=EZuF=MA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9035C07E96
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 12:47:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7FF5161432
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 12:47:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7FF5161432
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=marvell.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xzggfHLnJge53lz3XowrUmIADAdziEb/K05wP38rHio=; b=an5GOXUt9DF7Ma
	G94pGOe8vQnC3dT2lfBEay3HNu3ftwk8rlCpemuajmkuVdCOXlULEZYsvK6XYVd82OqVVxleR6yp0
	QtIxF7BvklLjOSNyURzOgLwLWscjbMdJwhBYjfwsIZk6EEvtG5p09YB5GrV8Zo91UBepLr1nNS3OI
	HvW6xOqPJW/xze8Fdu82QKNCO2Dxu3eN2GZS5G6e6cewtDB9w6UKgCUDVPNsnawx+LU1sLjt26NtC
	zxj6ZNOrNxarEKhQ+2lAR2CLjNpYUstHQcYFTyAym6FF2UPwV/dsNfW9Nk9Fs8DegDJpMeS5FnNY7
	3BwzERLXOqQUp3egpMLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1TRC-00Gvhc-Ve; Thu, 08 Jul 2021 12:47:31 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1TQN-00GvM2-5w; Thu, 08 Jul 2021 12:46:40 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 168CeuY9011604; Thu, 8 Jul 2021 05:46:36 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=pfpt0220; bh=TRRMBtUXw8cjaFo0FGXaYeU12pX0zsm5KZ5lADeidow=;
 b=BvDrKvDUKY2/WUjDrJ35tR+ZcL+YUSMSGMNARPFys5yqhswyTWzyTI62oswkaKLM1Oj7
 ZlNzuO6D9gZuxNHOlK1aqp5R/Buh5dBMIEKhq2I1+W8xjN8tX4IEwTdIzmV83+N3kOIr
 MFohLzH9hP6kf82hgaMSmwOuPWjXwGlMwM5hSS5PzKf06pXgt0oFxS8Mkm2Ire+4y3P0
 veheN3C1KuWPjDIepTFMvkmltb4Bf0jokouguBCbcnfjL6YL452wH2hMTXc3LNTCmPA2
 dboCk8zn1L5cEBucrv+x3s9TULGn6Rjb6X8l9o8X7P89YBrr5rw7Ep1nsM4ehUoFoCbX pA== 
Received: from dc5-exch01.marvell.com ([199.233.59.181])
 by mx0a-0016f401.pphosted.com with ESMTP id 39nrnu1y1v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 08 Jul 2021 05:46:35 -0700
Received: from DC5-EXCH02.marvell.com (10.69.176.39) by DC5-EXCH01.marvell.com
 (10.69.176.38) with Microsoft SMTP Server (TLS) id 15.0.1497.18;
 Thu, 8 Jul 2021 05:46:34 -0700
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH02.marvell.com
 (10.69.176.39) with Microsoft SMTP Server id 15.0.1497.18 via Frontend
 Transport; Thu, 8 Jul 2021 05:46:34 -0700
Received: from octopus.marvell.com (octopus.marvell.com [10.5.24.3])
 by maili.marvell.com (Postfix) with ESMTP id 5B9023F7066;
 Thu,  8 Jul 2021 05:46:30 -0700 (PDT)
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
Subject: [PATCH v7 3/5] dts: marvell: Enable 10G interfaces on 9130-DB and
 9131-DB boards
Date: Thu, 8 Jul 2021 15:46:10 +0300
Message-ID: <20210708124612.30742-4-kostap@marvell.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210708124612.30742-1-kostap@marvell.com>
References: <20210708124612.30742-1-kostap@marvell.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: uV6vOKv-Bljy3OSKlXrHT2V_TAAwbc8Y
X-Proofpoint-GUID: uV6vOKv-Bljy3OSKlXrHT2V_TAAwbc8Y
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.790
 definitions=2021-07-08_06:2021-07-08,
 2021-07-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210708_054639_282168_44D67134 
X-CRM114-Status: GOOD (  14.51  )
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

From: Stefan Chulski <stefanc@marvell.com>

This patch enables eth0 10G interface on CN9130-DB paltforms and
eth0 10G and eth3 10G interfaces on CN9131-DB.

Signed-off-by: Stefan Chulski <stefanc@marvell.com>
Signed-off-by: Konstantin Porotchkin <kostap@marvell.com>
---
 arch/arm64/boot/dts/marvell/cn9130-db.dtsi | 2 +-
 arch/arm64/boot/dts/marvell/cn9131-db.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/cn9130-db.dtsi b/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
index 34274e061958..39fc90716454 100644
--- a/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
+++ b/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
@@ -125,7 +125,7 @@
 
 /* SLM-1521-V2, CON9 */
 &cp0_eth0 {
-	status = "disabled";
+	status = "okay";
 	phy-mode = "10gbase-kr";
 	/* Generic PHY, providing serdes lanes */
 	phys = <&cp0_comphy4 0>;
diff --git a/arch/arm64/boot/dts/marvell/cn9131-db.dtsi b/arch/arm64/boot/dts/marvell/cn9131-db.dtsi
index a7ab791631bc..daddab638fb8 100644
--- a/arch/arm64/boot/dts/marvell/cn9131-db.dtsi
+++ b/arch/arm64/boot/dts/marvell/cn9131-db.dtsi
@@ -84,7 +84,7 @@
 
 /* CON50 */
 &cp1_eth0 {
-	status = "disabled";
+	status = "okay";
 	phy-mode = "10gbase-kr";
 	/* Generic PHY, providing serdes lanes */
 	phys = <&cp1_comphy4 0>;
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
