Return-Path: <SRS0=0Txu=KF=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-22.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFA49C43462
	for <linux-phy@archiver.kernel.org>; Mon, 10 May 2021 05:10:55 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3CD8E61468
	for <linux-phy@archiver.kernel.org>; Mon, 10 May 2021 05:10:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3CD8E61468
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=baaNroinaMfwLt3XYoY8s5AnBW1cJA6Zo0yFew8BUFI=; b=fyYLM03Gw/u/imepMvdgGNBcp
	x/DoqyyHG64ZNbX8fGXr0eRT7tqU1y9Tp6EZbmTlu0OVv4QM33v3+13xb1+O+P8fTWeGNVoJem+xa
	i4b3I7JAyWiXUDiC/a9e0A4s1p+y2pp3Ao8pVSkY94tB2uTWqssjyO2pu8fI+RHhjU+ucEwW7saxS
	lPpURfhO7FLPdfc5OHr4/sbEHlQfkzQ+7kYFkGXAoyo2gy9dfGO3G9EpnEvo0S+yBZk//+z6/codb
	lsxTsoLIyNN4OGVG02JmJJn2zfNKfFLjQNyt3I1P453Wv3Xsc5SQo7brVqeiY6CAz+00VNygD9m91
	6096X5yKg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lfyBx-00DAzd-DR; Mon, 10 May 2021 05:10:53 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfyBv-00DAzR-9U
 for linux-phy@desiato.infradead.org; Mon, 10 May 2021 05:10:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=qAt2F4fkclW+C+54d5EikR+ummqe22jnG+GkI6TfYkY=; b=eXzhkwpooxV1uUe0oUHhH8OTzU
 PfDFG170WiFGXlQ9sWuPam8lmAAbW3qTU0D39zrj3V9DlLCdeu9y5jwtayRkwThR98WVa6cv+d1Dg
 go3SXZmiQkHJGqC0axvvWg65Hio4XHWCu+OpXuZDOIlI7lG7cKe5srhGQK4FcjllUVFItCo776lA/
 eOCK64sN3/um+AWRhDQtXu8x/FJ7ChOhwmzd8iWuvOkPoJUyMJUu/ejq/yAlULSAjonl0ehP1tjS+
 RXIYrGXDTSoIvcitCZe/TCex7aARSsdcD5pwEvqGGVplhlVSqO+AnbnDkO4wRFTd23tPhJPyLvQZg
 S8nH1jdg==;
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfyBs-008IKA-GB
 for linux-phy@lists.infradead.org; Mon, 10 May 2021 05:10:50 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14A5AjBs081038;
 Mon, 10 May 2021 00:10:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1620623445;
 bh=qAt2F4fkclW+C+54d5EikR+ummqe22jnG+GkI6TfYkY=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=RUI76Q/fO6kc2ASBWDSnQPLrn8NEPEDHP+8tWLLXbK1TMCntK26pCWh9rXj3e6DEX
 KPUnt0Y+PsaC3/aMn19uG9OEFN3V2Svguexf5Unb5L5HObHecorT3z5G1vW+dj1Y08
 //twplzARfyVFAHP3rEvKNtEWf4DYgTSCxFGlL5Q=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14A5AjUD055407
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 10 May 2021 00:10:45 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 10
 May 2021 00:10:45 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 10 May 2021 00:10:45 -0500
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14A5A9nN113970;
 Mon, 10 May 2021 00:10:37 -0500
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: <linux-can@vger.kernel.org>, Marc Kleine-Budde <mkl@pengutronix.de>,
 Wolfgang Grandegger <wg@grandegger.com>, Vignesh Raghavendra
 <vigneshr@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>, Aswath Govindraju
 <a-govindraju@ti.com>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul
 <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v6 2/3] dt-bindings: phy: Add binding for TI TCAN104x CAN
 transceivers
Date: Mon, 10 May 2021 10:40:04 +0530
Message-ID: <20210510051006.11393-3-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210510051006.11393-1-a-govindraju@ti.com>
References: <20210510051006.11393-1-a-govindraju@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210509_221048_640278_6FD19235 
X-CRM114-Status: GOOD (  13.26  )
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

Add binding documentation for TI TCAN104x CAN transceivers.

Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 .../bindings/phy/ti,tcan104x-can.yaml         | 56 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 57 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml

diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
new file mode 100644
index 000000000000..6107880e5246
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/ti,tcan104x-can.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: TCAN104x CAN TRANSCEIVER PHY
+
+maintainers:
+  - Aswath Govindraju <a-govindraju@ti.com>
+
+properties:
+  $nodename:
+    pattern: "^can-phy"
+
+  compatible:
+    enum:
+      - ti,tcan1042
+      - ti,tcan1043
+
+  '#phy-cells':
+    const: 0
+
+  standby-gpios:
+    description:
+      gpio node to toggle standby signal on transceiver
+    maxItems: 1
+
+  enable-gpios:
+    description:
+      gpio node to toggle enable signal on transceiver
+    maxItems: 1
+
+  max-bitrate:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      max bit rate supported in bps
+    minimum: 1
+
+required:
+  - compatible
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    transceiver1: can-phy {
+      compatible = "ti,tcan1043";
+      #phy-cells = <0>;
+      max-bitrate = <5000000>;
+      standby-gpios = <&wakeup_gpio1 16 GPIO_ACTIVE_LOW>;
+      enable-gpios = <&main_gpio1 67 GPIO_ACTIVE_HIGH>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 601b5ae0368a..492eb53c0db0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4040,6 +4040,7 @@ W:	https://github.com/linux-can
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mkl/linux-can.git
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mkl/linux-can-next.git
 F:	Documentation/devicetree/bindings/net/can/
+F:	Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
 F:	drivers/net/can/
 F:	include/linux/can/bittiming.h
 F:	include/linux/can/dev.h
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
