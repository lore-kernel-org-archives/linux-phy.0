Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5980FC636D7
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 13:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8AOF/Oa4Ay102Q+AaPcgcRofO7BF4uiT831qCzd00is=; b=fdCNOMmWVWe34/
	AZYCrVrhNvNSm5MqaMtfxEyFu2sYojG4U4+vnRnrEs049FSeIJhNpGHvpY5TPlrEQ/v2bCc4KVqWv
	MTKnWwKtZE9u2lJOHIIxSIWJzocbzf9B0LyhTDNYUfh67/uodi6eRgf3deRMqQy46kGAFJ6VIhlkG
	lT9papIwiQIZ+PX7l8hmcir3CRq+80JX/5bzQriRNzzyLG23eCInVCMQa0WHuasBHI+V7SS4nrhqj
	ThsM87cjcFTcNknrYkNN0JWfskky/o6Y1DeFgv/X9AVtxPHtgJ8bGDca7euTctf9SZ5Hl/zGl0rAT
	8U90rAfhCnbmXD3Yyu3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZaZ-00G08g-PW; Thu, 02 Feb 2023 13:25:19 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZaX-00G06w-2h
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 13:25:18 +0000
Received: by mail-wm1-x331.google.com with SMTP id c10-20020a05600c0a4a00b003db0636ff84so1410652wmq.0
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 05:25:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X4nzyARZIT5i7ouqU6zm4IdSHZXgc31pmaeYmYVbTxo=;
        b=edWm92Yyv5rpe0OMlXAGEqX9M7qPhSHvx8rRM3NrQvxE3juveK8cHgBusvXG615lGl
         lTsNI1COW0Yk1CHplrOfeCj1oc7jAe/SUoZGBT6JEvrjqo0F2UxaKT9KUCnOcRJmT2iY
         VPpFcZBQvipAmmtDi20wNFcETX8DvZ6FFtShLJUVYOvXNHOw67Bz0T9j6ex8jUt9jKNO
         QVm6ZhOHIRn8Px53zlMyDCXG/dumGNgopxXVwiEAe2F9oaUH/Lp6NQmfKQAICU7D0CfM
         g96NOAxOF2Kaz7kISli93v+OjGZb53GGArMKXZPjjtBBwhGt/P3xJtrOqb5z4UPabMvY
         DZtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X4nzyARZIT5i7ouqU6zm4IdSHZXgc31pmaeYmYVbTxo=;
        b=QrgpJQ1o7NhnqdOJ0k5FKW8LnCtEOMw66uDvujlF7+Y+Xa69eDXwy5sxcFWlDjV1qy
         izR7pE0/qfnPm10G5bHT9afxe8oMWaBS3VfHpzDo9d3vWKQ/jxW9HqcqXEFA1CL6uALf
         qOhSLvT7/c5/m+qfwhc8cLjBBCFxYOVADTBI7iLOUcnvAEYLyzCsg6vrsDI3UNemTQuK
         6XX77Mo1XMPzGm706drp8vyY7j6T52NLZBfJjVducXqDTQtiRYufNlLZLt3/hS2zIgRD
         diS5r9jBu2wl3EV/6ZUySInzx8edF41rmtsTF66B2YG2mfODzXrdHitWZ0jlvjK70xWn
         ET+w==
X-Gm-Message-State: AO0yUKWluegsXzbUblKURwaiiBnUlXrG9wHAlBZls+SIjW15NtKEEm2x
	dZ5Ck8V+2Hjsaa3ytmDGG4zBLg==
X-Google-Smtp-Source: AK7set/oOtvBEcXPpH5zeExLI+TqxHKlGL5dOV9fGiNzrYmpI7B1dGpyB8EKAwBYhmMfl3Xl6Bjh4A==
X-Received: by 2002:a05:600c:4e4e:b0:3d2:bca5:10a2 with SMTP id e14-20020a05600c4e4e00b003d2bca510a2mr5804230wmq.22.1675344315624;
        Thu, 02 Feb 2023 05:25:15 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id e22-20020a05600c449600b003db06224953sm4690943wmo.41.2023.02.02.05.25.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 05:25:15 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 1/8] dt-bindings: phy: Add qcom,snps-eusb2-phy schema file
Date: Thu,  2 Feb 2023 15:25:04 +0200
Message-Id: <20230202132511.3983095-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202132511.3983095-1-abel.vesa@linaro.org>
References: <20230202132511.3983095-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_052517_145992_803D96A8 
X-CRM114-Status: GOOD (  13.06  )
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

The SM8550 SoC uses Synopsis eUSB2 PHY. Add a dt-binding schema
for the new driver.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---

The v3 version of this patch was here:
https://lore.kernel.org/all/20230126131415.1453741-2-abel.vesa@linaro.org/

Changes since v3:
 * removed blank line, like Rob suggested
 * dropped quotes and reset description, like Rob suggested
 * dropped the RPMH_CXO_PAD_CLK clock and the ref_src clock name
   to match the schema
 * fixed filenames of the includes in the example (sm8550-gcc and
   sm8550-tcsr)

Changes since v2:
 * none

Changes since v1:
 * dropped the "ref src" clock
 * dropped the usb-repeater property

 .../bindings/phy/qcom,snps-eusb2-phy.yaml     | 74 +++++++++++++++++++
 1 file changed, 74 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
new file mode 100644
index 000000000000..de72577e34a4
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,snps-eusb2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SNPS eUSB2 phy controller
+
+maintainers:
+  - Abel Vesa <abel.vesa@linaro.org>
+
+description:
+  eUSB2 controller supports LS/FS/HS usb connectivity on Qualcomm chipsets.
+
+properties:
+  compatible:
+    const: qcom,sm8550-snps-eusb2-phy
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+  clocks:
+    items:
+      - description: ref
+
+  clock-names:
+    items:
+      - const: ref
+
+  resets:
+    maxItems: 1
+
+  vdd-supply:
+    description:
+      Phandle to 0.88V regulator supply to PHY digital circuit.
+
+  vdda12-supply:
+    description:
+      Phandle to 1.2V regulator supply to PHY refclk pll block.
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - clocks
+  - clock-names
+  - vdd-supply
+  - vdda12-supply
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,sm8550-gcc.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
+    #include <dt-bindings/clock/qcom,sm8550-tcsr.h>
+
+    usb_1_hsphy: phy@88e3000 {
+        compatible = "qcom,sm8550-snps-eusb2-phy";
+        reg = <0x88e3000 0x154>;
+        #phy-cells = <0>;
+
+        clocks = <&tcsrcc TCSR_USB2_CLKREF_EN>;
+        clock-names = "ref";
+
+        vdd-supply = <&vreg_l1e_0p88>;
+        vdda12-supply = <&vreg_l3e_1p2>;
+
+        resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
+    };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
