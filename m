Return-Path: <SRS0=lbOJ=IP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 084F8C433E0
	for <linux-phy@archiver.kernel.org>; Wed, 17 Mar 2021 16:10:20 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 69E4A64E27
	for <linux-phy@archiver.kernel.org>; Wed, 17 Mar 2021 16:10:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 69E4A64E27
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=foss.st.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xojtaVNZwbXOViNxXEjoBbZ0BQpfxZcku5bEwa2EhT0=; b=fEypscAqx2Ad/kHp3Dp3k4+Pg
	4j9IZOro+i+b2ZTyuIVUPp3mcKrfEITooXrrCAurVGJODS70WOvE4iMYisSgidupcCnS7GDZvAVfT
	lVJ9/1SP5PGxSHOhOC5vIFaf9o7gaPPJpXtkry5MO+QhrMlf+rM9DmNchwe8IORVYIP3bFEZyMBts
	RcTt/pq1EGkktEE70Ain4fpHY6Fv04uExihlyVtI+QI0SiFYNdxldwRDPGPjiKppOC2jAiPpSh24T
	pVZbtiCOBH3EpO4IjLJDoCpQ1yjAEIBpmI4Ex4pJQJMxY+4iVWrq63G5HQTOEavwAq0iBHJoh2TLT
	fWgtI4EVw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMYkT-003VNZ-JM; Wed, 17 Mar 2021 16:10:17 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMYkP-003VLf-0D; Wed, 17 Mar 2021 16:10:15 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 12HFlrRu010043; Wed, 17 Mar 2021 17:10:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=selector1;
 bh=BGBMk18CEolXd/0993s64ZB5ezWBWESBj3BiykWl4jc=;
 b=cv/nBYdqEoFy7qMvZN08roPTKDSb+vrY/7CgD3q2Mk07iFDQQMisMo6mlLZascxSwb9c
 lCGCoiEzP5cBUjlH1qoU8iMDZfXXgYUXjqGK63FcyV7+0qSl+rA3d+off+54BmT4Adhb
 NAtfV83i0Z8yGaJoMfDVRm38vyX3yQfnOax5SZLwqVC4U8g2++WvbU4VO8S86Ph4vVSb
 vtV3836NUCJZYJlxMLkU0wNOxKh42bv+heFuf1l128v5ZuLNH0KQgGB/Ugyt26Xp1a/f
 BSbiujDMn+BfrTh63/daRl7Inw0PD/Vc0NhxC0/24NWJwVie6EYu2YngBbBYGWg322Fr 4Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 37a8pr67jg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 17 Mar 2021 17:10:07 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C73C3100034;
 Wed, 17 Mar 2021 17:10:06 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag2node2.st.com [10.75.127.5])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id AF09423E915;
 Wed, 17 Mar 2021 17:10:06 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG2NODE2.st.com (10.75.127.5)
 with Microsoft SMTP Server (TLS) id 15.0.1497.2; Wed, 17 Mar 2021 17:10:06
 +0100
From: Amelie Delaunay <amelie.delaunay@foss.st.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, Amelie Delaunay
 <amelie.delaunay@foss.st.com>
Subject: [PATCH 1/2] dt-bindings: phy: add vbus-supply optional property to
 phy-stm32-usbphyc
Date: Wed, 17 Mar 2021 17:09:53 +0100
Message-ID: <20210317160954.15487-2-amelie.delaunay@foss.st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210317160954.15487-1-amelie.delaunay@foss.st.com>
References: <20210317160954.15487-1-amelie.delaunay@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG3NODE1.st.com (10.75.127.7) To SFHDAG2NODE2.st.com
 (10.75.127.5)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.761
 definitions=2021-03-17_10:2021-03-17,
 2021-03-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_161013_253349_AC774121 
X-CRM114-Status: GOOD (  12.89  )
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

This patch adds vbus-supply optional property to phy sub-nodes.
A regulator for USB VBUS may be needed for host mode.

Signed-off-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
---
 Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml b/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
index 018cc1246ee1..ad2378c30334 100644
--- a/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
@@ -71,6 +71,9 @@ patternProperties:
       phy-supply:
         description: regulator providing 3V3 power supply to the PHY.
 
+      vbus-supply:
+        description: regulator providing 5V Vbus to the USB connector.
+
       "#phy-cells":
         enum: [ 0x0, 0x1 ]
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
