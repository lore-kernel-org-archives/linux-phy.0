Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9792EC4332F
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 14:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aNaMZHfWHQGJt/e2/LGBTVzlqntJ+05DXggYxMgiN5I=; b=uYPhtzCcuVrWJu
	nbyjEttmxcsnry0kocyO1uaayb//doHcfkEtWmuDSkVkThArG3nq4VvcRwOmshPN75hH/jf1n1oTR
	je0xQ+PLmz5/KTkIaSzc7rvBp/piDMIH5+JzncwPNcsJ6zPco8lqY+NNUUuXax6aRMDdJIdr5xdx1
	bX1bZurY7DnvcCKcnEopKdleALdz6GYvrpPtMOncmPOn7vTmm/zOW49M9JHFxSbkCsybbG8eFAoJs
	6+j6I9pUntKaMil7ytQ7x2oEcpkD/kjZhuRPVSoevj4ykwU6kFoc36TjoQ7CjN64gBMgyAQcgZXwq
	DZRKH3st1ZNC/q4vkPvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mx8oT-00EPNF-UH; Tue, 14 Dec 2021 14:29:53 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mx8oQ-00EPKm-DI
 for linux-phy@lists.infradead.org; Tue, 14 Dec 2021 14:29:51 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1BEETdjs092887;
 Tue, 14 Dec 2021 08:29:39 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1639492179;
 bh=3xoua+2zHoAAJhZbL9Wp9YgmHuWlCRypj9/vtFjNXtI=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=PseY9XMxeZ5mxq2JoZ34aj0L7EclVO9cSA1NtNYVDcyJpq9WPGZhitsVK2oqddTju
 K5WzPWyD7zOBv2fky/90WvrimRc3/XMxxZpuUkEazhxaKjypDvslvMXTpkk+6A6i8s
 8WK10kODJL9T2Lof0lfYRRiQvBJW+K4NnQr5SjXU=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1BEETdjc024959
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 14 Dec 2021 08:29:39 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 14
 Dec 2021 08:29:39 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Tue, 14 Dec 2021 08:29:39 -0600
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1BEETVkO038465;
 Tue, 14 Dec 2021 08:29:36 -0600
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: Aswath Govindraju <a-govindraju@ti.com>, Wolfgang Grandegger
 <wg@grandegger.com>, Marc Kleine-Budde <mkl@pengutronix.de>, Kishon Vijay
 Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, <linux-can@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: phy: ti,
 tcan104x-can: Document mux-states property
Date: Tue, 14 Dec 2021 19:59:07 +0530
Message-ID: <20211214142908.27940-2-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211214142908.27940-1-a-govindraju@ti.com>
References: <20211214142908.27940-1-a-govindraju@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_062950_551028_B3F1376B 
X-CRM114-Status: GOOD (  11.21  )
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

On some boards, for routing CAN signals from controller to transceivers,
muxes might need to be set. This can be implemented using mux-states
property. Therefore, document the same in the respective bindings.

Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
---
 .../devicetree/bindings/phy/ti,tcan104x-can.yaml       | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
index 6107880e5246..7b9216e43b58 100644
--- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
@@ -37,6 +37,15 @@ properties:
       max bit rate supported in bps
     minimum: 1
 
+  mux-states:
+    description:
+      mux controller node to route the signals from controller to
+      transceiver. Two arguments can be present depending on the
+      mux chip. If one argument is used then it represents the state
+      to be set on the mux-chip. If there are two arguments then the
+      first argument is the control line and the second argument is
+      its corresponding state to be set, on the mux-chip.
+
 required:
   - compatible
   - '#phy-cells'
@@ -53,4 +62,5 @@ examples:
       max-bitrate = <5000000>;
       standby-gpios = <&wakeup_gpio1 16 GPIO_ACTIVE_LOW>;
       enable-gpios = <&main_gpio1 67 GPIO_ACTIVE_HIGH>;
+      mux-states = <&mux0 1>;
     };
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
