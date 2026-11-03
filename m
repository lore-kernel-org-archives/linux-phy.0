Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6C8606A329
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 19:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vULnN8eZ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=hT75Mwhp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Q7DV0WTqSpk0SguT8JpkpIu4WAPUMElwLcPW2cNTDJ4=; b=vULnN8eZ4/20X5+93NKtIcZ3G9
	sYJ5j0pwv2TTOt7673X1FUDKFLCjH0owvr3DX68eXcw+KgVTmCgmTD6e6OEAflxTfCcwWfbJWddf6
	VEUZyMqEnmd8Mm3QXLLM2eMjuVDbuQWwohDLbHkRhLkHvopyIm28d9a+YcsE/yMjGynT5+Z4cT306
	qtaRrgYOOeZskxGJKsr1vAXKX5mknE49mpIHTFAMXITfOI90LZSw2qTOyWmCkwOCRjess+xq5I7sN
	9dKSet3ibeKho9sLoWhgkqo6PDM7HKAB6zZPZsrmgqSv59meXpRryKZj6I2POglXsUrdr3kUDRc/U
	df64Au3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOKWb-00000003ZTN-3I57;
	Tue, 03 Nov 2026 19:50:29 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOKWX-00000003ZP7-2sEb
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 19:50:27 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-48e20ed3b9dso4022320f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 11:50:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793735424; x=1794340224; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=J5xMolcA2jijade3hq2GliWPHkN3pbidlI2m81QLD6M=;
        b=hT75MwhpTUfYlxJGkfeueH8+DH8yFJSDT0WuxsAjw1JYLpulyC0Heez7VCreu0UVi6
         0MuUjAJtgbQqNvMcdcGJWo9hAQy7/X7qeYm0c9MtBRboF08P3KPfLT8p6GuYh1ow7Mim
         vZh8bq409vGReqwolM3eCX395g17grV5c3ski2t2J9SaC6Sx/Y+0MCNnTsiQTIEtXhQU
         NKosmrwIghNtBmpe/aY/+RLyH2duLH1+liuGfcEUuOYUS/2DlnwH8f+ogoDN3duXMrB+
         cDmQ5dISHZuUctn9I35Q5FEspV/u9Y+4OsolLns/Yc/y5sRdDGirDEKczaOssRAyo8v0
         5EvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793735424; x=1794340224;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=J5xMolcA2jijade3hq2GliWPHkN3pbidlI2m81QLD6M=;
        b=1jw5I374G+M8XaSfF/5eawD+A+5G3MXj2CkjODu75fIe9JxenE7sgm68vMCT1GL7nV
         R/NGfS1DQ3a088gVqDeaYsNb/B0X4QiN0Fc7vtlgutWBb6434F5/7gg3HaiYeMTwwogk
         Hso/3N9BTwS1iNlLXr/rb98DxG/b3kiGk9rDZNvivzp1U/Ri23RZyv01b+e8uJhy0Cvn
         AtV1Wx0qq/7oWcFmAsTsSUIGJAeJsJLigcOL4D2f1p7Sypy4PNZdOK6L4XBof6bpVCvp
         dwMac0/G0DCYHvpy22uBU/TBN5xVKyQpx/CusDU7NyDThskxJlkadhOJCumZeB/0xBd+
         Zqrw==
X-Forwarded-Encrypted: i=1; AKwUvBw08at4e+y4vQytaEUz3eOi1GqJxY6XxSKCCiM+JHVvw6/+ej0ayexgRPWpX6FB7M/urrCBJVkWCFY=@lists.infradead.org
X-Gm-Message-State: APuU4Z8UIDrwnozPiuul9jrioYkgqvzJbm9gG7KppX9SjKh5TPLMChB4
	KrDvqdqsSHkVhlF5jm8smskJjTR63xQM6dpPR6ikyZMFpF5MIGf4xrvK
X-Gm-Gg: AYBFou0Ul4Se0+m3tdxvCxmkMy534M7HFasD3grFDATMIabXuUlTUZ+B3ZP2c9geuMS
	gbfui/rDUCCDmlp/0bDDUoZ9In9CbEvT92r2eJUnFAMzimeg9W/fn9TYMkyFZUkWW8E9m20oa0I
	h6y98d1+z7Z3iIihbsyY04M3USaLkI73DVlT0EPL9pgLuk21iQHC1TBHGfCfBg1BHYjpQQwj/vU
	Boy4ii3YC5nTNQtSy/qkwXJUzOv2sJjTt0hMN6RKGbh5T8dVPOcBHJcpriYTeBFE2gbSzIGtid0
	bKudm+LK8+vX8Oz+pvDmN3mJhxB3GJzeNKEvZ4k08dlvMtTUgFcMRh4vY/JpeNsVMYPv43GzK0a
	NIY96aHJW3GTOlnyb7Sv3vYFARcSPwbrisETkuE8iZ7ng5m46xZ+GgZRwS8NQR3WXuNibV+dEzh
	XrNFvPKiDkwtm7znDFiXVD2Y/4vpWU0aBQTRAg9nwkS6rxUvL1q9vo46XW5aNKQ3UhDTNxgrvzw
	ri764rtOCmkQ2atXO3BifMzPleTzOnDpPQxH3//SLoFLQ21GQcjLvjr7K5ZXcTqCkvnmlAzz6FP
	7R1ERmlqeHs5noxXHp0OIj1wnQYvh4YDFdIVn5eP6o2alziEXzqdQbz3Dejq5yTbU9OUIclyY1K
	LpVFodBHufCOJwrZ21n8yiqyZzAsXpLP15A==
X-Received: by 2002:a05:6000:4027:b0:48d:fbdd:4132 with SMTP id ffacd0b85a97d-48e6e4f540bmr30004149f8f.18.1793735423549;
        Tue, 03 Nov 2026 11:50:23 -0800 (PST)
Received: from Ansuel-XPS24.localdomain (93-34-90-148.ip49.fastwebnet.it. [93.34.90.148])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-48fc9d6b0aasm417802f8f.2.2026.11.03.11.50.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 11:50:22 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/2] dt-bindings: phy: airoha: Document support for AN7583 Gen3 PCIe PHY
Date: Tue,  3 Nov 2026 20:49:59 +0100
Message-ID: <20261103195007.9721-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261103195007.9721-1-ansuelsmth@gmail.com>
References: <20261103195007.9721-1-ansuelsmth@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_115025_743400_DB0BF44B 
X-CRM114-Status: GOOD (  14.21  )
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
