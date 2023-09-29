Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C2D6E71D3D
	for <linux-phy@archiver.kernel.org>; Fri, 29 Sep 2023 14:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1f73mEj5FktJ6zmWpyLMsirGojRdnDBbm5bNK/xEcuI=; b=qJSpuESUPAwI/8
	+Agk+IRE12IIHKgJjbbYXWbBn2w5VbmbPNvsDxwusUzL9Ss7wUJ0EPjDmZfmras0VZb/8cjn0A3my
	zDHU9OutdoWQZdP0v3D9kZs9F7k5sMZM+rnQlmhw91ZIsuZwhL7iGEFa2wDGSFUT+4WyHiIVOthM5
	0e/SKD2Bq2nn0uc2Nh1yPeoiouzlAYZf+kZOHESuPkd92lRu03DYAJLZiqDm3Ed4RJAm7GezpUM0E
	SYhRkg1hjiPpm8pIpZ3tr9O1zmeZDeM10l1idskAcm1FXb/usPVxtN3/O5iQ4l6BfNpryGeRV0wit
	o+jYhUOJmSUgy5gnvb3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qmEWI-0083SZ-0G;
	Fri, 29 Sep 2023 14:31:06 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qmEWF-0083R9-14;
	Fri, 29 Sep 2023 14:31:05 +0000
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38T9Uo5C014981;
	Fri, 29 Sep 2023 16:30:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=wMdvbc/s3rnb/ovKUDIU9tRdReiTt7f+2PAGC4pEICU=; b=pn
	YRuhCzRKv0NQRRTONfBRC98bI0ys0nYTYj8GU6LUYPV7q+tYnWbxRdCTxYO1m3nQ
	Mu5zN2x0MtxeMlDpEqF71qjkjjSoLd/4Fc+UxTNQSBGYv73baAajknEgq9B4VrrZ
	Ltb318nm0FUiJdBspTEvA98ahxtFMjn0X9fRb2W1ggmEKkUgtySHfzDr5NaaU0eq
	mKbeH5qTnba0AryD+uvC1qOJIOXrbJc6v1wVOJUt0EmhFDaxFLWxXjGabuxy9g6D
	3+7QVhqVus889rvJWE1LOrO6IPM68fps6Yff/GzzRiK7ifOAvSLCtAY1I73AE4AI
	4v2EG29vyYOCg42mPLaw==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3t9neg3sme-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Sep 2023 16:30:36 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A76A2100058;
	Fri, 29 Sep 2023 16:30:35 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9CAB326A9A2;
	Fri, 29 Sep 2023 16:30:35 +0200 (CEST)
Received: from localhost (10.201.20.32) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Fri, 29 Sep
 2023 16:30:35 +0200
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
        <peng.fan@oss.nxp.com>
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
Subject: [PATCH v5 01/11] dt-bindings: document generic access controller
Date: Fri, 29 Sep 2023 16:28:42 +0200
Message-ID: <20230929142852.578394-2-gatien.chevallier@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230929142852.578394-1-gatien.chevallier@foss.st.com>
References: <20230929142852.578394-1-gatien.chevallier@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.20.32]
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-29_13,2023-09-28_03,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230929_073103_710214_65DA9B8C 
X-CRM114-Status: GOOD (  20.27  )
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

Introducing of the generic access controller bindings for the
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
Changes in V5:
	- Diffs with [1]
	- Discarded the [IGNORE] tag as the patch is now part of the
	  patchset

 .../access-controllers/access-controller.yaml | 90 +++++++++++++++++++
 1 file changed, 90 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/access-controllers/access-controller.yaml

diff --git a/Documentation/devicetree/bindings/access-controllers/access-controller.yaml b/Documentation/devicetree/bindings/access-controllers/access-controller.yaml
new file mode 100644
index 000000000000..9d305fccc333
--- /dev/null
+++ b/Documentation/devicetree/bindings/access-controllers/access-controller.yaml
@@ -0,0 +1,90 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/access-controllers/access-controller.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Generic Domain Access Controller
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
+  This device tree bindings can be used to bind devices to their access
+  controller provided by access-controller property. In this case, the device is
+  a consumer and the access controller is the provider.
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
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Number of cells in a access-controller specifier;
+      Can be any value as specified by device tree binding documentation
+      of a particular provider.
+
+  access-control-provider:
+    description:
+      Indicates that the node is an access controller.
+
+  access-controller-names:
+    $ref: /schemas/types.yaml#/definitions/string-array
+    description:
+      A list of access-controller names, sorted in the same order as
+      access-controller entries. Consumer drivers will use
+      access-controller-names to match with existing access-controller entries.
+
+  access-controller:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      A list of access controller specifiers, as defined by the
+      bindings of the access-controller provider.
+
+additionalProperties: true
+
+examples:
+  - |
+    uart_controller: access-controller@50000 {
+        reg = <0x50000 0x10>;
+        access-control-provider;
+        #access-controller-cells = <2>;
+    };
+
+    bus_controller: bus@60000 {
+        reg = <0x60000 0x10000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges;
+        access-control-provider;
+        #access-controller-cells = <3>;
+
+        uart4: serial@60100 {
+            reg = <0x60100 0x400>;
+            access-controller = <&uart_controller 1 2>,
+                                <&bus_controller 1 3 5>;
+            access-controller-names = "controller", "bus-controller";
+        };
+    };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
