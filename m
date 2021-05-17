Return-Path: <SRS0=G5Ry=KM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CAA6C433B4
	for <linux-phy@archiver.kernel.org>; Mon, 17 May 2021 12:10:01 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C684461241
	for <linux-phy@archiver.kernel.org>; Mon, 17 May 2021 12:10:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C684461241
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=foss.st.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4iBhsmqtWNRq3ZCDwLrTZD/hwn09ufc4oggz4LouLN4=; b=My+oSLMPIcSviY2nIzMdojAXP
	GghiWKC6NjKHSipQlYBab8P1aq8SmsxBZxr6cGnELb+2ziwzCtn0twWPwznwaPTIfeLkSqOqcC+I1
	dFaFPLiQxTI27zWR0YF7Ho39X2DXzeBn2SVg5IoovJltskBFz0XeQ7hj7cHL2AIPjSJP413KxYqkm
	vL/Xhbyb9y4agh5gwOYH01811qv9Ea3WhomG/2uteYcV4Go7HGRAct1vtizhFWhlIfkZN0U2O79E3
	mdQDtlLKmpCWWAyhGAttBDzQ3qz7Pj9uT1BJ/Zc9+zvqnqUJMGLsfprCwExkYs/1QGwlvIuQHuDMO
	jPP2GHWGw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lic4I-00EqGC-Ro; Mon, 17 May 2021 12:09:55 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lic33-00Eq8q-K7; Mon, 17 May 2021 12:09:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=/iRm6XLUsizToc00x1Pm9rvjqNdz5eb8TrDBu4Oy548=; b=odwYxhZyj7Lx1pCc4t7VRLzQc8
 72XMT8Dyv0nfXc9dDuNhPfOBSzP6ik4NhClCQkoCKhJ6hNRihm5sdvJ6Cun2cp3uVqV2NTMNwDz0T
 HaiWoBBRnJH8NXHUDQ304YXbeq+WQavkBhhmVvM6t8InCwZoeq/3QsBZsvi7tk+Xsbl+5keUJ+n0u
 ezXNgbBmCj/628ZY/yrJNcNsKGXgU3aFhUPob+coXl+iCm8+xc7OIYy/f+j6V+ZktAAnZtQV/mfUj
 EqBAnMq5bQSZ+w4VxZdCUAuHndSQpfjNoSAWE5bGLbIzwZhWGPE9EBkJxPLq6jHg7dlMvJUJTRlLM
 VV+Pfe2g==;
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lic30-00Dk6f-4O; Mon, 17 May 2021 12:08:36 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 14HC6pOf010306; Mon, 17 May 2021 14:08:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=selector1;
 bh=/iRm6XLUsizToc00x1Pm9rvjqNdz5eb8TrDBu4Oy548=;
 b=qzemeJDN3FnIi9Oz7UgrruiF7qH/WHunE8nnKSmkPGUBeWwJvF+XrZGJTj3GL3pC7mvy
 bLOBv45IhPVCjeQ5PomhOfcxLRVARsEqZbp/KnZGo2Lk0l1EnVjDedJTorOfcPxwzkDz
 R/ifSfY+6zs3Ln/IRU142Mx9r3Cupwmf2peYf0lsApo0YznMNS+FU3EP8028l7yGnSv1
 FWbPNjJLV4+cniN03SSwyzXDgVmdUKOGiDq3bf12aXmnN9dEz0j5HuLVTcPc0x7Xx+2o
 /85sfKQNO4dfHxRofK0szzkE57NOEdT5fWT23YYoOeACmaeeaHC/fYnGxMHVFp8ZOCkm Vw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 38kmb2sf3q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 17 May 2021 14:08:26 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 551C5100034;
 Mon, 17 May 2021 14:08:26 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag2node3.st.com [10.75.127.6])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 42B6622D636;
 Mon, 17 May 2021 14:08:26 +0200 (CEST)
Received: from localhost (10.75.127.49) by SFHDAG2NODE3.st.com (10.75.127.6)
 with Microsoft SMTP Server (TLS) id 15.0.1497.2; Mon, 17 May 2021 14:08:25
 +0200
From: Amelie Delaunay <amelie.delaunay@foss.st.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, Amelie Delaunay
 <amelie.delaunay@foss.st.com>
Subject: [RESEND PATCH v2 1/2] dt-bindings: phy: add vbus-supply optional
 property to phy-stm32-usbphyc
Date: Mon, 17 May 2021 14:08:20 +0200
Message-ID: <20210517120821.26466-2-amelie.delaunay@foss.st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210517120821.26466-1-amelie.delaunay@foss.st.com>
References: <20210517120821.26466-1-amelie.delaunay@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG1NODE2.st.com (10.75.127.2) To SFHDAG2NODE3.st.com
 (10.75.127.6)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.761
 definitions=2021-05-17_04:2021-05-17,
 2021-05-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_050834_487697_37B15CCB 
X-CRM114-Status: GOOD (  13.30  )
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

This patch adds vbus-supply optional property to phy sub-nodes using
connector node.
A regulator for USB VBUS may be needed for host mode.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
---
Changes in v2:
- add connector vbus-supply property as suggested by Rob
---
 .../devicetree/bindings/phy/phy-stm32-usbphyc.yaml    | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml b/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
index 018cc1246ee1..3329f1d33a4f 100644
--- a/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
@@ -74,6 +74,13 @@ patternProperties:
       "#phy-cells":
         enum: [ 0x0, 0x1 ]
 
+      connector:
+        type: object
+        allOf:
+          - $ref: ../connector/usb-connector.yaml
+        properties:
+          vbus-supply: true
+
     allOf:
       - if:
           properties:
@@ -130,6 +137,10 @@ examples:
             reg = <0>;
             phy-supply = <&vdd_usb>;
             #phy-cells = <0>;
+            connector {
+                compatible = "usb-a-connector";
+                vbus-supply = <&vbus_sw>;
+            };
         };
 
         usbphyc_port1: usb-phy@1 {
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
