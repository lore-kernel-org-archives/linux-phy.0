Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B915DCCD190
	for <linux-phy@archiver.kernel.org>; Wed, 15 Oct 2025 07:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=93Cu8S2jZZ5QiXpA+RoghNjSE+D7hFLGGJzF12N8054=; b=XHA4ylkUtwTZWn
	EEhrf7FNGb+t/AoEpthgZ15nFZR03MV04tMKNrU0xTTuL8rkKb0/1Sn4kLrVBrVI+P1MRShPdyyQf
	ColAcg4AVOpuw0ASnggf8MrnvKZegVsbu2YHRUdWrZAx3lqjMKh2Uocl4TV6gxQyBw8JnFntq/8Ma
	E7TqZrq7R+p+oM0k4J6QSoOTypPBaDp1GV+okFDJgLmqikE6YAq6qHDg4RNf0UBvJgxPVoxKjW55k
	QC0FtvtiXGMB3LL+mzCOsZAJs5Ru3gfdMjZWhF3G5dN1sCyMIfovAAd5LxGFQ5jKgri1sfGJAzetp
	DQO0Be9Py/+Dcor6kdpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8w4r-00000000mHo-28UT;
	Wed, 15 Oct 2025 07:37:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8w4q-00000000mGY-03Nv
	for linux-phy@bombadil.infradead.org;
	Wed, 15 Oct 2025 07:37:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Reply-To:Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Content-ID:Content-Description;
	bh=/ENdemGirG006n4JlkDedKYfynM0bdpeP1b+huUC2rE=; b=fAaQ+N6HQyojzqkAvEBb871zh/
	/YNMx2UKcUTz/iC2ck20HV2dVysCQHnaBc+BNZDQ7o9j2xDoHU4qqqB0NsKtzWYoDnMtUwrtdB3tx
	DfbaYETtrJFG0r4sz5ctGP2UNTrRV+3KkVNF0A9/42ibYTkSGZq3wrCONgALQgZsNlAW4CoUpDgIA
	RG+z3f8IXIQlB6hvo6ERtSnh6W/EuH8KnUjMuA5VLHgaH3i1zNvs1/JPAnWRxwib0zRy8UXnskOHi
	B5KDdKxoPUfZDeSyNVIhenoF4Vop6U4Q5CrF1OAWHPhxWpSyedHU01W/cIAQNW18rRSmHqutfpdzm
	4rKqInHg==;
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8w4j-00000005mE3-3imp
	for linux-phy@lists.infradead.org;
	Wed, 15 Oct 2025 07:37:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 217BB45B06;
	Wed, 15 Oct 2025 07:37:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB2D3C4CEFE;
	Wed, 15 Oct 2025 07:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760513845;
	bh=ZTuP9QU0WJoXWqeUWoKhaTW20o0NRkC+02dyA9zGxCs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=YQ3GyDR2X7GoR1IZI8QKYzGuiD6DeOx12rRBCF8Q6/wOZ7igOlXOptAirCxsTaGK7
	 rdKSmVAi7LttChMgB8ia3Dgf/xmNNSHeYcq2w/oJGUlR1hej5r8+0MG3DvArZvzSOv
	 NIGqsdEx38NkFL+PmLgKDQKBjjrV58y2pkcxneEV18uyLzgcRqAA9QBRwb/Z8Ek1xG
	 mknRFLQigmY2z/MpmgYOOoYIMNkh5peVcjn3nX9lAt5lHfypJNT0nAhxTwmqHUXQw8
	 WBzJgM2lvgQDlTnkyLeQFgyA/32OTMx4v9bZGGRbXATWSG+vV5J3qkn79/dsC94FFP
	 /ZK03cQ9n1hng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F89CCD190;
	Wed, 15 Oct 2025 07:37:25 +0000 (UTC)
From: Dimitri Fedrau via B4 Relay <devnull+dimitri.fedrau.liebherr.com@kernel.org>
Date: Wed, 15 Oct 2025 09:37:08 +0200
Subject: [PATCH v4 1/2] dt-bindings: phy: add support for NXPs TJA1145 CAN
 transceiver
MIME-Version: 1.0
Message-Id: <20251015-tja1145-support-v4-1-4d3ca13c8881@liebherr.com>
References: <20251015-tja1145-support-v4-0-4d3ca13c8881@liebherr.com>
In-Reply-To: <20251015-tja1145-support-v4-0-4d3ca13c8881@liebherr.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Dimitri Fedrau <dimitri.fedrau@liebherr.com>, 
 Dimitri Fedrau <dima.fedrau@gmail.com>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, linux-can@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760513844; l=2552;
 i=dimitri.fedrau@liebherr.com; s=20241202; h=from:subject:message-id;
 bh=N0KzjNPFJNuxY7dRpWRnyrKjsm8oH6XH9DGqpdXPz6A=;
 b=shMhHNBfa3n4bIcy9zTgO0dwYLSfZ6R04Y3JSzeIucuOXfEd2vm7ELMygtwaDiKpeBjSKM4hb
 0zAchT9cgQoBovQzrOMnE6JilUvYrZUqeinMcIsKKRIxLYvMt/svJnT
X-Developer-Key: i=dimitri.fedrau@liebherr.com; a=ed25519;
 pk=rT653x09JSQvotxIqQl4/XiI4AOiBZrdOGvxDUbb5m8=
X-Endpoint-Received: by B4 Relay for dimitri.fedrau@liebherr.com/20241202
 with auth_id=290
X-Original-From: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_083735_628676_FF6970D4 
X-CRM114-Status: GOOD (  11.00  )
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
Reply-To: dimitri.fedrau@liebherr.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Dimitri Fedrau <dimitri.fedrau@liebherr.com>

Adding documentation for NXPs TJA1145 CAN transceiver, which resides like
the ti,tcan104x-can.yaml in the same directory as other generic PHY
subsystem bindings. At the moment there is only support for simple PHYs
by using regulator bindings in combination with can-transceiver.yaml or
PHYs that implement the generic PHY subsystem like the NXP TJA1145.

Signed-off-by: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
---
 .../devicetree/bindings/phy/nxp,tja1145.yaml       | 80 ++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/nxp,tja1145.yaml b/Documentation/devicetree/bindings/phy/nxp,tja1145.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..46de6d0f2dd9b9fd41c97eb4c9340e3ac36090a3
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/nxp,tja1145.yaml
@@ -0,0 +1,80 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/nxp,tja1145.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TJA1145 CAN transceiver
+
+maintainers:
+  - Dimitri Fedrau <dimitri.fedrau@liebherr.com>
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+properties:
+  compatible:
+    const: nxp,tja1145
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+  spi-cpha: true
+
+  spi-max-frequency:
+    maximum: 4000000
+
+  spi-cs-setup-delay-ns:
+    minimum: 50
+    default: 50
+
+  spi-cs-hold-delay-ns:
+    minimum: 50
+    default: 50
+
+  spi-cs-inactive-delay-ns:
+    minimum: 250
+    default: 250
+
+  vcc-supply:
+    description:
+      CAN transceiver supply voltage
+
+  vio-supply:
+    description:
+      Supply voltage for I/O level adaptor
+
+  vbat-supply:
+    description:
+      Battery supply voltage
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - spi-cpha
+
+additionalProperties: false
+
+examples:
+  - |
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        can-phy@0 {
+            compatible = "nxp,tja1145";
+            reg = <0>;
+            #phy-cells = <0>;
+            spi-cpha;
+            spi-max-frequency = <4000000>;
+            spi-cs-setup-delay-ns = <50>;
+            spi-cs-hold-delay-ns = <50>;
+            spi-cs-inactive-delay-ns = <250>;
+            vcc-supply = <&reg_5v0>;
+            vio-supply = <&reg_3v3>;
+            vbat-supply = <&reg_24v0>;
+        };
+    };

-- 
2.39.5



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
