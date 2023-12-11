Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC7E5C10DC3
	for <linux-phy@archiver.kernel.org>; Mon, 11 Dec 2023 18:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vfOq2W9BORhkrbzfpUUov2DrxyTAL210V7VR8qXKx1c=; b=jWN94Ccb6sCXqs
	iI9b/fnjveS2fJ/Ybn0ErNqkoC/pTd9NeRF+xx4dIOZaaCUBCb7q5LbfQD4/iJ4rPlSeW3758bW3g
	XNKDYZ94ZKNPqormMvbKnz0btENV3vmhd5o9IZ6bkW4R2E+WD/K/ED5WnkosMbG/rPL5NkP+ss4IT
	zRPk6fGEbfCREBoU5SIw8QQGBf7Ly60O4TwWgpU/K7lI+cxLXkWOFqra7dgMSkpLaMVrgQCyh1JSu
	Jiknpm9/dI+jOLKOlngdV+0nshrc3JxHMvhJXuZkR3Hl7XrG6MGgAdDnKsl4aNCN0eqy1o+EpDz1Z
	BMbs9kPosrnvtRkUIuaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCl4g-006wMe-1o;
	Mon, 11 Dec 2023 18:32:14 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCl4c-006wEX-05;
	Mon, 11 Dec 2023 18:32:12 +0000
Received: from pps.filterd (m0369458.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3BBHuP97013382;
	Mon, 11 Dec 2023 19:31:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=pRaHro0Cx77mAnyA1b4ha7ivIMmgkx+PPwasbOVpgNk=; b=Xm
	IzTsq7w5GLkg3WHHYDCe/GMDkTXWn9Sz4O2Wdgqu8kj/+rtp4yeOt+DAJKcpggcJ
	jyIavyJQr0SLCuca+Y7/qz01P8f/LChVHq9NUyUTET9EenZmnKW2qLViFDMIzzPH
	LWTYVXPAzIggVtk6xaoL9rdlAIXt/Vo/YlojUn+ihnqJtS+wQhXGUf1fC+J0708/
	KSNE8ZMSIAz7lgc5hkNdkxu1gAhWHaD7ATc6kkF2fVNyhPBTV9tdsozIXR/328oy
	l/8PnlcdnqxsmmQVy/YpbWAD03IIa9joCe7QschUiY8LgWEl6a6sckWbREU23HpF
	ijaO7TlAS9aK2kwk648Q==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3uw2p4p2n0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 11 Dec 2023 19:31:34 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E47AF100060;
	Mon, 11 Dec 2023 19:31:29 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D851A22FA2B;
	Mon, 11 Dec 2023 19:31:29 +0100 (CET)
Received: from localhost (10.252.9.5) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Mon, 11 Dec
 2023 19:31:29 +0100
From: Gatien Chevallier <gatien.chevallier@foss.st.com>
To: <Oleksii_Moisieiev@epam.com>, <gregkh@linuxfoundation.org>,
        <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <alexandre.torgue@foss.st.com>,
        <vkoul@kernel.org>, <jic23@kernel.org>, <olivier.moysan@foss.st.com>,
        <arnaud.pouliquen@foss.st.com>, <mchehab@kernel.org>,
        <fabrice.gasnier@foss.st.com>, <andi.shyti@kernel.org>,
        <ulf.hansson@linaro.org>, <edumazet@google.com>, <kuba@kernel.org>,
        <pabeni@redhat.com>, <hugues.fruchet@foss.st.com>, <lee@kernel.org>,
        <will@kernel.org>, <catalin.marinas@arm.com>, <arnd@kernel.org>,
        <richardcochran@gmail.com>, Frank Rowand <frowand.list@gmail.com>,
        <peng.fan@oss.nxp.com>, <lars@metafoo.de>, <rcsekar@samsung.com>,
        <wg@grandegger.com>, <mkl@pengutronix.de>
CC: <linux-crypto@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <dmaengine@vger.kernel.org>, <linux-i2c@vger.kernel.org>,
        <linux-iio@vger.kernel.org>, <alsa-devel@alsa-project.org>,
        <linux-media@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
        <netdev@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-serial@vger.kernel.org>, <linux-spi@vger.kernel.org>,
        <linux-usb@vger.kernel.org>,
        Oleksii Moisieiev <oleksii_moisieiev@epam.com>,
        Gatien Chevallier <gatien.chevallier@foss.st.com>
Subject: [PATCH v7 01/13] dt-bindings: document generic access controllers
Date: Mon, 11 Dec 2023 19:30:32 +0100
Message-ID: <20231211183044.808204-2-gatien.chevallier@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231211183044.808204-1-gatien.chevallier@foss.st.com>
References: <20231211183044.808204-1-gatien.chevallier@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.252.9.5]
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-11_08,2023-12-07_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_103210_388634_BDA007B9 
X-CRM114-Status: GOOD (  19.75  )
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

From: Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>

Introducing of the generic access controllers bindings for the
access controller provider and consumer devices. Those bindings are
intended to allow a better handling of accesses to resources in a
hardware architecture supporting several compartments.

This patch is based on [1]. It is integrated in this patchset as it
provides a use-case for it.

Diffs with [1]:
	- Rename feature-domain* properties to access-control* to narrow
	  down the scope of the binding
	- YAML errors and typos corrected.
	- Example updated
	- Some rephrasing in the binding description

[1]: https://lore.kernel.org/lkml/0c0a82bb-18ae-d057-562b

Signed-off-by: Oleksii Moisieiev <oleksii_moisieiev@epam.com>
Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
---

Changes in V6:
	- Renamed access-controller to access-controllers
	- Example updated
	- Removal of access-control-provider property

Changes in V5:
	- Diffs with [1]
	- Discarded the [IGNORE] tag as the patch is now part of the
	  patchset

 .../access-controllers.yaml                   | 84 +++++++++++++++++++
 1 file changed, 84 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/access-controllers/access-controllers.yaml

diff --git a/Documentation/devicetree/bindings/access-controllers/access-controllers.yaml b/Documentation/devicetree/bindings/access-controllers/access-controllers.yaml
new file mode 100644
index 000000000000..99e2865f0e46
--- /dev/null
+++ b/Documentation/devicetree/bindings/access-controllers/access-controllers.yaml
@@ -0,0 +1,84 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/access-controllers/access-controllers.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Generic Domain Access Controllers
+
+maintainers:
+  - Oleksii Moisieiev <oleksii_moisieiev@epam.com>
+
+description: |+
+  Common access controllers properties
+
+  Access controllers are in charge of stating which of the hardware blocks under
+  their responsibility (their domain) can be accesssed by which compartment. A
+  compartment can be a cluster of CPUs (or coprocessors), a range of addresses
+  or a group of hardware blocks. An access controller's domain is the set of
+  resources covered by the access controller.
+
+  This device tree binding can be used to bind devices to their access
+  controller provided by access-controllers property. In this case, the device
+  is a consumer and the access controller is the provider.
+
+  An access controller can be represented by any node in the device tree and
+  can provide one or more configuration parameters, needed to control parameters
+  of the consumer device. A consumer node can refer to the provider by phandle
+  and a set of phandle arguments, specified by '#access-controller-cells'
+  property in the access controller node.
+
+  Access controllers are typically used to set/read the permissions of a
+  hardware block and grant access to it. Any of which depends on the access
+  controller. The capabilities of each access controller are defined by the
+  binding of the access controller device.
+
+  Each node can be a consumer for the several access controllers.
+
+# always select the core schema
+select: true
+
+properties:
+  "#access-controller-cells":
+    description:
+      Number of cells in an access-controllers specifier;
+      Can be any value as specified by device tree binding documentation
+      of a particular provider. The node is an access controller.
+
+  access-controller-names:
+    $ref: /schemas/types.yaml#/definitions/string-array
+    description:
+      A list of access-controllers names, sorted in the same order as
+      access-controllers entries. Consumer drivers will use
+      access-controller-names to match with existing access-controllers entries.
+
+  access-controllers:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      A list of access controller specifiers, as defined by the
+      bindings of the access-controllers provider.
+
+additionalProperties: true
+
+examples:
+  - |
+    clock_controller: access-controllers@50000 {
+        reg = <0x50000 0x400>;
+        #access-controller-cells = <2>;
+    };
+
+    bus_controller: bus@60000 {
+        reg = <0x60000 0x10000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges;
+        #access-controller-cells = <3>;
+
+        uart4: serial@60100 {
+            reg = <0x60100 0x400>;
+            clocks = <&clk_serial>;
+            access-controllers = <&clock_controller 1 2>,
+                                 <&bus_controller 1 3 5>;
+            access-controller-names = "clock", "bus";
+        };
+    };
-- 
2.35.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
