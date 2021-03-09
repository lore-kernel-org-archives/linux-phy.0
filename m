Return-Path: <SRS0=CLz0=IH=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34161C433DB
	for <linux-phy@archiver.kernel.org>; Tue,  9 Mar 2021 08:27:05 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A996F65267
	for <linux-phy@archiver.kernel.org>; Tue,  9 Mar 2021 08:27:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A996F65267
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=foss.st.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZRdxX0e27p1qqxOT9LwJReusbdw5+8wkjYVUvE50Bis=; b=CigwsGp/RDlAn/r6Zc6ZgyMAJ
	IaFp3/Ou+6/eS0baJmaTDu1oA9Eaxbc9Giq50Fjvpor+g/ZluEp6SViO2J+HxTkWivFo/02wez/De
	h5+wMA9GJGwbmsjfV8W0YUn6cC0WIMfjj+DhS18/hDdL8vz6D9NYlUMYIwg8auxevBcNwXdq3LWFt
	TGR1uNPB2Z0cFyQIvuuf0qHzbpQm4/zIuHYl1Amcf/L9ZmfOlS1kMTvsZzRsGtK9EblgJKgRbSEVS
	xE8aN4ctoft7xum/y1ELWxVlJUN/e3CtXtDJedtEyLCHnsaNnZXeLZTj8AAgOcmr51gXqTsHMPPjG
	UJ4iuwVNA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJXhn-0041p7-4d; Tue, 09 Mar 2021 08:27:03 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJXhb-0041n9-Ui; Tue, 09 Mar 2021 08:26:53 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 12986qsY025397; Tue, 9 Mar 2021 09:26:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=selector1;
 bh=71DT3hArz4xDKi5JB73DMMto7nDrXRu9nJfBZY/G6+A=;
 b=1IkPMf1GFLWyMdv0T6eIA7i5JmAhabHISzDwwXlEJNMr7o1Pt2SIVyz9jZRoqd7+xF0q
 k6G00Z20QT5bAHkboaXCXpCXyXE0uVSe2v5Jd557VGUT8XRpPoJhBIc8USiUErM1XJzl
 pojx1BXlhZseYL1/WiY3bKcyQsDuGJ3y3KYXfZIL/qiyggxknl6RfwHicx5FKtOpMU7I
 k3iIOY/yQT3w5h2JrYEhNzN6rTKHdFMX51bX2MKA6lGzZ/5KlSmC4O7lCZC17/twxcSa
 sBvR+XlqCeSEJwxvBbJN3ScsSI2fzWn2lmjM54YaAGfPyYuTY+Fys+5SPEldRYNaUIqm BA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3741gpg8as-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 09 Mar 2021 09:26:40 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E0C9B100034;
 Tue,  9 Mar 2021 09:26:39 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag2node3.st.com [10.75.127.6])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C9298221794;
 Tue,  9 Mar 2021 09:26:39 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG2NODE3.st.com (10.75.127.6)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 9 Mar 2021 09:26:39
 +0100
From: Amelie Delaunay <amelie.delaunay@foss.st.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, Amelie Delaunay
 <amelie.delaunay@foss.st.com>
Subject: [RESEND PATCH v3 1/2] dt-bindings: phy: phy-stm32-usbphyc: add
 #clock-cells property
Date: Tue, 9 Mar 2021 09:26:32 +0100
Message-ID: <20210309082633.8213-2-amelie.delaunay@foss.st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210309082633.8213-1-amelie.delaunay@foss.st.com>
References: <20210309082633.8213-1-amelie.delaunay@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG3NODE1.st.com (10.75.127.7) To SFHDAG2NODE3.st.com
 (10.75.127.6)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.761
 definitions=2021-03-09_06:2021-03-08,
 2021-03-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210309_082652_133405_71C9D82F 
X-CRM114-Status: GOOD (  13.95  )
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

usbphyc provides a unique clock called ck_usbo_48m.
STM32 USB OTG needs a 48Mhz clock (utmifs_clk48) for Full-Speed operation.
ck_usbo_48m is a possible parent clock for USB OTG 48Mhz clock.

ck_usbo_48m is available as soon as the PLL is enabled.

Signed-off-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
Acked-by: Rob Herring <robh@kernel.org>
---
Changes in v3:
- add Rob's Acked-by
- remove #clock-cells from required properties
---
 Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml b/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
index 46df6786727a..018cc1246ee1 100644
--- a/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
@@ -51,6 +51,10 @@ properties:
   vdda1v8-supply:
     description: regulator providing 1V8 power supply to the PLL block
 
+  '#clock-cells':
+    description: number of clock cells for ck_usbo_48m consumer
+    const: 0
+
 #Required child nodes:
 
 patternProperties:
@@ -120,6 +124,7 @@ examples:
         vdda1v8-supply = <&reg18>;
         #address-cells = <1>;
         #size-cells = <0>;
+        #clock-cells = <0>;
 
         usbphyc_port0: usb-phy@0 {
             reg = <0>;
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
