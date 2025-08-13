Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91562CA0EE7
	for <linux-phy@archiver.kernel.org>; Wed, 13 Aug 2025 22:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7p/BBDScFFMrHNC121f0+wdcN/6rUaoEDBTpzL1hioQ=; b=Wr88BG9tGdJn9l
	UFxfidw4sNNE5NndSEYrMMtt2uW8z/iRlhJk/TDrFtEHXyBwJ+N3hQaJy9hXhS53ghFcAswQOkp4I
	8ifb4+yXeJtu14rIJ6i5ST14UjvwkN4BNNHspKQlCpC1HuRe1/4gAHK5EMx1qaeictju8BCE9uTRr
	uyFhuUUjshjY4I5OKPZLgn7JZRzQGZYSZEcq+8Bi+d05pwZPXTpIFO8hWrQk2xeokZN6t/A3A5PkB
	d6bcjjauN1ypokS01NtSnV456aulR4jSslMWV30AgaLyeJZldy3C/TLpkvkTupxY0KelXb90Aou5l
	+qSaWX5x1mxyk6Ciu3Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umKEp-0000000FBdC-1Kgt;
	Wed, 13 Aug 2025 22:46:31 +0000
Received: from mail-il1-x131.google.com ([2607:f8b0:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umGVD-0000000EjKu-3ZAB
	for linux-phy@lists.infradead.org;
	Wed, 13 Aug 2025 18:47:13 +0000
Received: by mail-il1-x131.google.com with SMTP id e9e14a558f8ab-3e56fe95d83so1152745ab.0
        for <linux-phy@lists.infradead.org>; Wed, 13 Aug 2025 11:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755110831; x=1755715631; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3anfg9B6GDnUStv+H7P2Qqm8t3EB0LsOUKal4iU9hMY=;
        b=Ya/kmp+OvPAOt5a/+va/dgrFwMdzF233PKYiai6cxiXT+g7djMZ50zEpwOIMRDCucC
         SgdaZMq2EjIMCJwikg2rJXtpFUL0aeSUtRXoVECTxpwenwksO0cK0OTZ7mZXzciZZ0Vi
         6+9PNh/odoOBd9UBVf1CYvO/T7W/eeVo9dW8m5txeb8I3LUi9srpR0V4QiUYrHlXOG3L
         LdMvjRRvZgqYgvWzq7tZdjqoVPutM0TDFMVvMurOsOxDFgg7khnyHgsCfVnMlDbUXv5a
         ne+PZl9TIqCUQDTeNH+q9VKfWpuho/eTDV+L1Rs6VT8iy/MHb480kkyXM1CTL/bGDVdi
         JkjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755110831; x=1755715631;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3anfg9B6GDnUStv+H7P2Qqm8t3EB0LsOUKal4iU9hMY=;
        b=tZ6QHaMadEzgUeMKr9awoEzyzXKoZ2WwQuqgYpjrhx9G+xGgTTegzo1HkGQXTHMqOw
         vqRVbksKDiXBPmqpYULMeIIrV4fKDo5V3eep5Olq3PF5oeLmztLd51zmJlEe6Yh7pxAu
         tn+FbMhQwntjCYFyxg7DZdH8xDnlDSEn0dm5PH+TgwrmPpim5niln1+KWplr3Nwhfi3o
         MVMKrSzmcmUF9zIkcjaqYtKhxTjldpIIAl5Kpy5dZrtnesKQ/0XenrkJ28N1pLuzzPdK
         6GiheG4EMi671MHIG4DwkGvjhag7/G0guI8gwJAT0fOOJl6u4P8nMP06x0eFUDUix+Vk
         NHZA==
X-Forwarded-Encrypted: i=1; AJvYcCUVkDE1pW1DUnUmplX/vR7qOzWVOr1wnRJfAAb0RHLFRL/eQUyCW0w/tNbtJBWhGGhiYN/aRF06flk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwWen2u3JoUBy/0FUuL23vS80/jm7p1vZsAVwflsWVcHOxg3hQL
	8cjiz+XOccEYq585LmAtEUhDsoZXOzz063rU6JoP4wbG7pWXMDAZEprDRq88k0v6s+o=
X-Gm-Gg: ASbGnctrLS0Ugr4JycGZksEu5CG25tOQP+NAjxrYYRL6BT7F1NgzJfM6gHnbRTUBl2G
	Hd8x6Gx0u6Z81A1p8oK+5rzpOSA1j77w/mbcM9e9t4rIdarpfQrPQdJn8ZvKYb78QjD2qnbCZ4J
	66tJHJbDGUpxqpgzhrWjS85/VZbF/sSfgSlhoO0hOdf/MiNvh7oZ4ltuyep7rvTcGdy2Mw9/Tqy
	KbKCME8wsHUSLwijNizMtznhINEWKMQT91tzoYd3Avt9uX7RF/wP5a8QvmUYYWqtMauoK2gqYaa
	SMLwZaW8hwzX9RK+xO8bbbAPAi7VXbxUMn3Scs09E8spF5+kTEmN1Yk/XToXq2O/Wl6ARpOVOvi
	oAaGklZViKO9UCyLm0bvJGmr+4SezNujQa68901MyYuAILH5OL4jKfpfSB+wG2TDoLa18D9poi6
	02
X-Google-Smtp-Source: AGHT+IHqcfmnRrUjdAlNWmje55A9T53WMKx9lEOXpWePQCsQDSmAhiGvxZUCa4A2bLPkAxx42qtLRg==
X-Received: by 2002:a92:c24e:0:b0:3e5:4a4c:2ed0 with SMTP id e9e14a558f8ab-3e570964fa7mr4127025ab.24.1755110830847;
        Wed, 13 Aug 2025 11:47:10 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-50ae9bd89d7sm3933104173.59.2025.08.13.11.47.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 11:47:10 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	bhelgaas@google.com,
	vkoul@kernel.org,
	kishon@kernel.org
Cc: dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	p.zabel@pengutronix.de,
	tglx@linutronix.de,
	johan+linaro@kernel.org,
	thippeswamy.havalige@amd.com,
	namcao@linutronix.de,
	mayank.rana@oss.qualcomm.com,
	shradha.t@samsung.com,
	inochiama@gmail.com,
	quic_schintav@quicinc.com,
	fan.ni@samsung.com,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/6] dt-bindings: phy: spacemit: introduce PCIe PHY
Date: Wed, 13 Aug 2025 13:46:56 -0500
Message-ID: <20250813184701.2444372-3-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250813184701.2444372-1-elder@riscstar.com>
References: <20250813184701.2444372-1-elder@riscstar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_114711_890098_D7121CD4 
X-CRM114-Status: GOOD (  13.56  )
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

Add the Device Tree binding for two PCIe PHYs present on the SpacemiT
K1 SoC.  These PHYs are dependent on a separate combo PHY, which
determines at probe time the calibration values used by the PCIe-only
PHYs.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 .../bindings/phy/spacemit,k1-pcie-phy.yaml    | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml
new file mode 100644
index 0000000000000..b0cbd231d9378
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/spacemit,k1-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SpacemiT K1 PCIe PHY
+
+maintainers:
+  - Alex Elder <elder@riscstar.com>
+
+description:
+  There are two PHYs on the SpacemiT K1 SoC used for PCIe (only).
+  These PHYs must be configured using calibration values that are
+  determined by a third "combo PHY".  The combo PHY determines
+  these calibration values during probe so they can be used for
+  the two PCIe-only PHYs.
+
+  During normal operation, the PCIe port driver is responsible for
+  ensuring all clocks needed by a PHY are enabled, and all resets
+  affecting the PHY are deasserted.
+
+properties:
+  compatible:
+    const: spacemit,k1-pcie-phy
+
+  reg:
+    items:
+      - description: PHY control registers
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/spacemit,k1-syscon.h>
+    pcie1_phy: phy@c0c10000 {
+        compatible = "spacemit,k1-pcie-phy";
+        reg = <0xc0c10000 0x1000>;
+        #phy-cells = <0>;
+        status = "disabled";
+    };
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
