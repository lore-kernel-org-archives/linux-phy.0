Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BDA5C43334
	for <linux-phy@archiver.kernel.org>; Thu, 16 Jun 2022 13:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BSLt90lcRl/qQUBNIzwrhCqfBoWyl8KjR0kM46PwWtU=; b=SeeZlKrmHz/YkJ
	2KcDdwotE/36dBSotn+DN8jdGTiAUtALKZUqrrfeFQ7Oet7E/yLsIWnkbnpfnA3YKpwmh9HvlQcUp
	Qw3tWef+u9CEEokDG822RfCRmk/+YFDrWwfM8dBPxBOaOpVtBqR9x+iCwlwtAqhF8bZ0zyXKwwyX7
	TO+bXucSQ4ouRDhRv6xM6F8qS87z9d6DnWKV9YV3cHIBxk2pbG+TaHOUezcVaF5oINSgsiTLFbgS8
	luKVHCDZmeWNJ0AfHfqLHQFgQh2/jLImrphAfv2T0/2EvlAJGbZVUdXgmBv/5Nv69nAtSTYL8Uc2W
	GsbDc8cm4wwykjcvobLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1phu-002Uk2-Qu; Thu, 16 Jun 2022 13:38:46 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1phX-002UbK-HJ
	for linux-phy@lists.infradead.org; Thu, 16 Jun 2022 13:38:26 +0000
Received: by mail-wm1-x336.google.com with SMTP id m32-20020a05600c3b2000b0039756bb41f2so889886wms.3
        for <linux-phy@lists.infradead.org>; Thu, 16 Jun 2022 06:38:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PxD5eSuoVNmuy9uK+8ImVic/9oJqQQRTmLdQoVDSq7Y=;
        b=KUiIidYubKIQhmnPtrgcqWcZFytwUm9hJxPJTs/iRO0+H51/6/n1Xd/98LXtsAUToW
         DSycfm5OK+VF5Aw54NXyUhKkia6/lS63d8eVYhUiqo8opHX3+jl7rAM/1NYDeJA2Apb6
         vP3T6unqET61xpxyXVK6Wn11V9+x+kRab3KMpVF4PSz5cANkm5TBzLGt9QHcyTU9PZkH
         HIS0CBP/4eOD5uv6gBTn6kDHVMXBFeCsgVaIxAtndx9CBM2vjwI7L3rt59SRZXILAKlW
         54oA0+OZ6itH/HyVQ2d3DxcXnIrj0VxfSPMfLnN822oL790a8DpzHIOB0TJhHspehk5D
         4B1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PxD5eSuoVNmuy9uK+8ImVic/9oJqQQRTmLdQoVDSq7Y=;
        b=iz8P2vlLGODsrqZRqelIWfK1MIYegsdav3PlqLT9AGWOMcHkT+AAGwGzSxs4Wx6JpY
         TF301PM8MPwFdh8q3TnLNamdWCoRKNvQOi3RRqTApkjFBSLLOOwNvBxpoaMasKQdMh9m
         7Lq2MgQkreQaKxNwOjDqdZo/KkfJYBl6RRRgwxXLWT145QkHED93fLRgPQJt2pFOItUT
         s7MYjBVTBeVllk87vEu9rvRp/yupMY8KrfK5/8vOuUzu+bf7YnseetMnaaZsZvCTdriO
         5VKfCA5H1Ur4HQbh3Vn79mxyszS2tuFfyVltJQnRtz+2DJ8xVSVl+IgRtGRIBKMG2FbR
         c7qw==
X-Gm-Message-State: AJIora/dpM0NXvEpdGWZsXAFQztW5KN9yTbhq8dTk57AmJAAu/u2YeUj
	wBzX1XjinDD66Z5TXtmzFk2A1g==
X-Google-Smtp-Source: AGRyM1tWwdUCxZ5lku8fS/JAqMfPYZ1pVuLz3qlRsQKA25sJXVvPekovAHC6E/LUsIRHdr7iSUur7w==
X-Received: by 2002:a7b:c1d1:0:b0:39c:605c:1530 with SMTP id a17-20020a7bc1d1000000b0039c605c1530mr5150562wmj.80.1655386699992;
        Thu, 16 Jun 2022 06:38:19 -0700 (PDT)
Received: from localhost.localdomain ([2a0d:e487:34f:da80:9c48:d9f8:5c33:3dd5])
        by smtp.gmail.com with ESMTPSA id v12-20020a5d678c000000b0020c5253d90asm1935423wru.86.2022.06.16.06.38.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 06:38:19 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: kishon@ti.com,
	vkoul@kernel.org,
	devicetree@vger.kernel.org
Cc: linux-phy@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH v4 1/2] dt-bindings: phy: add Amlogic G12A Analog MIPI D-PHY bindings
Date: Thu, 16 Jun 2022 15:38:10 +0200
Message-Id: <20220616133811.1674777-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220616133811.1674777-1-narmstrong@baylibre.com>
References: <20220616133811.1674777-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_063823_643065_41DB831C 
X-CRM114-Status: GOOD (  11.61  )
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

The Amlogic G12A SoCs embeds an Analog MIPI D-PHY to communicate with DSI
panels, this adds the bindings.

This Analog D-PHY works with a separate Digital MIPI D-PHY.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../phy/amlogic,g12a-mipi-dphy-analog.yaml    | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml

diff --git a/Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml b/Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml
new file mode 100644
index 000000000000..7aa0c05d6ce4
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/amlogic,g12a-mipi-dphy-analog.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic G12A MIPI analog PHY
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+properties:
+  compatible:
+    const: amlogic,g12a-mipi-dphy-analog
+
+  "#phy-cells":
+    const: 0
+
+  reg:
+    maxItems: 1
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
+    phy@0 {
+          compatible = "amlogic,g12a-mipi-dphy-analog";
+          reg = <0x0 0xc>;
+          #phy-cells = <0>;
+    };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
