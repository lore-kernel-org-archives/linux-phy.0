Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4028B606A329
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 22:43:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PsEAcPwW;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Foy6rauo
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=9h60cGz6wqc3oNWUQBGD5hEjDb5rRjXiuEds7kXo2MQ=; b=PsEAcPwW7N9URHxegMrCYsIsy3
	4qSTX04ehtgmwmE13Nnpkb8HnldXw6nmA7QmklRdb1Pq/EQ7R2gu5ny73iNPhEyPlUX9YiRHjozwg
	gpyONBJjMKbgjoHIvWmBxiPDVurfMizi0qS3AaxV95IA5nJu5xvQMdb4nzTRto+UmulZgYMfPwRsr
	mirnPVqt+UxNzS8HKif3gbW5xVZs63BRFGDP00hVazngRg04AbsJycnojDeUL22BoJ55QrdPC2QPb
	OhV+7br+x/sguk1POWC3PV8badNrECSEdt1HGb61pfNyx8b9Tn6VRgR/mhZ+wvI0JFVoROvKQ03bA
	F3jR02FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVzEd-0000000813a-3qbQ;
	Tue, 24 Nov 2026 22:43:35 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVzEZ-00000008113-3lQ2
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 22:43:34 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-4acb44dcd7bso4407843f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 14:43:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795560210; x=1796165010; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=7rPLYS7So0Y9QvCfhAuguLYZiylbNJV9FhluYZDmJM0=;
        b=Foy6rauoNV3NE7XsHnPdVZQqtvEYT2gGgO/JgD01+9lfIKsKiSOBsC6XOoqHMLpU5i
         lQLaN9dWW3GxchKWlrwVImN+Sn30IfliT+tdOsnL37ziXDcsdGwI+efnu9fi4PQkqFjq
         kuQku+P6GH3oDzi9vd7OfUFRlVvLq42yYXQy0x8VENDct2wqEyeQEyQasFobi6SlEG46
         UeQEwYDeEeB4+8m5sSW8jnFMSnO8rlhQtNTx81KeBk5OJkJdbksqWlG6n9bH6WZk1IHz
         XdlmpBVBVGMaPoQmAzfYFgbSMukbogheA2J6eRxRtdOLU5LEm6VfW4PNJJkBi7RVC4pk
         bTTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795560210; x=1796165010;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=7rPLYS7So0Y9QvCfhAuguLYZiylbNJV9FhluYZDmJM0=;
        b=ZeQcQNKlprty5uaqHZRYwhesyIO5ELWWhCTfl0BNnpsuQbQm2PagrNzV0tFwXyeMRt
         EPhO3EkLFpe/85+WEoTar8TEm1iuit4+q+ZKlV4LprHBWWS1xf/Cx3WTrcUGqhXoOfb4
         IcZFPwro7lQBW53+IN1WWMGt8bnGdDmDZsfBauahPn8+vvRWfH352yMWfMR76SHXs04C
         Wyqn1lLcXYUYuwzelAxeagloqJHdyRKzazj+JM3ZguoW6pKalQP3/urxtHsopXHAmt4y
         TxMy6yJd6wjGSJ9QhQ71dV0x/4E1hxVTvSETLOse32dljTOQVVy9JwhbEKg8m6LtO+Rj
         KwNw==
X-Forwarded-Encrypted: i=1; AL+hErEN5R2SXuMme2XFfBiE52jTGpoM3DSikP1VkZC4uZnmsfm2qHdVMYJaIVfRzQD0DHYdsySfzChCwXU=@lists.infradead.org
X-Gm-Message-State: APuU4Z+yWPBHl8ToeDJ1sw66TNIfe/TZc7Wt7h4CiWrd4dG+ccPnkML2
	m3zVEjsHvMsCLJE+6/V9k5867AbtQNHxLARmsbJpeAPQwf+e9A0XFFFZ
X-Gm-Gg: AZFdTZfhM05pXioUl0WT5u1xeAbK+qeyUkJtGszzTAauaEMnB7qvHt/1yv5yilr4CN+
	cEPygEP0xj5KS6hGLwT7h2nlMWPkfSyoxAJdGimw72TxRYPScILzh8eGo0QNY54aJCinlB8WJVO
	K2Tg2tSFs3YCeXMy1NzO3mxfX9fbTu3wJtKNnK721FN9zSnBEtAJDK6QHCFK0JJWFEvPB2q3cuU
	tBEK5PpZACoGv6IhGSGzwP1e9bsTqoFYMlTthmaFRnB/DiPtANhgYf53sBbVZ3aV4IwaOnjMrOV
	Rwj+C41DANL9Obz3PVI2yV9JguwG/PEIQl/T03z9P6LqgDSlPUemyAOfPfc0Vmvc2cJniP2JjIp
	5JCMY/v90D3EGoubvd+oRFyIH00mL9ZV+k8tKVaOv2hemM0PIn9OH0Z9epTG8P9qSDj7ae/jlKG
	PtSEZ9bB/EC0+Pl4vpaEu58yONuonMmuZqU4pnHXjHCTFgXQMOdysG0QOZjYxdH/sGyT/7JG8Ju
	7eN/medwc0+N9bg9rtss+wIpDUE5rPFjWX08yU9lTfG7UAwMWf2N5zkioBySxmFJwFXARdb1+XG
	3mut0GFmDTIiIO/BhosTiXRTDvZhJIDUnyHVto3cqi3bkRLCTqKDdVquf8Kr8QtdACdux+bnf+e
	PJC8=
X-Received: by 2002:a05:6000:4705:b0:48f:cb37:3ec3 with SMTP id ffacd0b85a97d-4abb400c591mr31382607f8f.41.1795560209956;
        Tue, 24 Nov 2026 14:43:29 -0800 (PST)
Received: from Ansuel-XPS24.localdomain ([87.13.246.159])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-4ab6c61f558sm30900915f8f.58.2026.11.24.14.43.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 14:43:28 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 1/2] dt-bindings: phy: airoha: Document support for AN7583 Gen3 PCIe PHY
Date: Tue, 24 Nov 2026 23:43:15 +0100
Message-ID: <20261124224318.227478-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261124224318.227478-1-ansuelsmth@gmail.com>
References: <20261124224318.227478-1-ansuelsmth@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_144332_001990_23D88120 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Document support for AN7583 PCIe PHY used to make the Gen3 PCIe port
work. Add the required register to configure the PCIe PHY and provide an
example for it.

The PHY link to another PHY (the QPHY as described in the YAML) to
correctly handle Gen2 speed and mode. It's mandatory to have this PHY
configured for correct functionality of PCIe. The QPHY is a unified PHY
that both handle USB and PCIe PHY.

It's also mondatory that the QPHY setup is done in the PCIe PHY setup and
calibration phase or calibration might fail.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../phy/airoha,an7583-pcie-gen3-phy.yaml      | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen3-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen3-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen3-phy.yaml
new file mode 100644
index 000000000000..a8ec5ac781cc
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen3-phy.yaml
@@ -0,0 +1,65 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/airoha,an7583-pcie-gen3-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Airoha AN7583 PCI-Express PHY
+
+maintainers:
+  - Christian Marangi <ansuelsmth@gmail.com>
+
+description:
+  The PCIe PHY supports physical layer functionality for PCIe Gen2/Gen3 port.
+
+properties:
+  compatible:
+    const: airoha,an7583-pcie-gen3-phy
+
+  reg:
+    items:
+      - description: PCIE G3 analog base address
+      - description: PCIE G3 PMA base address
+      - description: PCIE detection time base address
+      - description: PCIE Rx AEQ base address
+
+  reg-names:
+    items:
+      - const: g3-ana
+      - const: g3-pma
+      - const: xr-dtime
+      - const: rx-aeq
+
+  phys:
+    items:
+      - description: phandle to QPHY phy for Gen2 support
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - phys
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/phy/phy.h>
+
+    phy@1fc7f000 {
+        compatible = "airoha,an7583-pcie-gen3-phy";
+        reg = <0x1fc7f000 0x1000>,
+              <0x1fc7e000 0x1000>,
+              <0x1fc30044 0x4>,
+              <0x1fc35030 0x4>;
+        reg-names = "g3-ana", "g3-pma",
+                    "xr-dtime", "rx-aeq";
+
+        phys = <&pcie1_phy PHY_TYPE_PCIE>;
+
+        #phy-cells = <0>;
+    };
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
