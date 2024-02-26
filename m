Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 957FCC54E41
	for <linux-phy@archiver.kernel.org>; Mon, 26 Feb 2024 23:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0LwrJ8OosK8YYocEjQVmYmjN7+bA7qPXzUDtUjAD2Xk=; b=Qlp/BW2ihtDIPw
	ut/UTMoe32/tWAgFoTFQSAaNNLPIrF/Upt2x8X2MHgIlCEWhGeD23+8+FXNmvcY6KGLS9dfp86+Ls
	VYzHzXB4gu67vugsZjfBjxRB2XGgwlGgh/IaAeqLWfd2TSAu893iaU7fXuu2d7AupKuJnn1pnyBjW
	Hnru/jHm9p61W/C5C9gdS5iMU4oJryoMCGSQOhWLKpYi9iPpP9TQ78kdi0xA6HvNTKyTL3lZVEQjl
	NWYYzWBJ+ipkeo6AM4LcpTXFJebzdK2ssy+O1ogA4/ASi/M2+khJMD+nlLTDYjz1EsEb8cWhoKplK
	0cMDqVA2dk/YBPv+pEYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rekfJ-000000030AO-0W4Q;
	Mon, 26 Feb 2024 23:45:45 +0000
Received: from mail-io1-xd33.google.com ([2607:f8b0:4864:20::d33])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rekfE-0000000308T-1JTH;
	Mon, 26 Feb 2024 23:45:42 +0000
Received: by mail-io1-xd33.google.com with SMTP id ca18e2360f4ac-7c7701f95b6so87587539f.1;
        Mon, 26 Feb 2024 15:45:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708991139; x=1709595939; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ENJCVwViqySP78QQC22e16vdfpVFUmVF6XiIGfyzNm8=;
        b=AD3fSuPvpmHVKKgHafiAECp7bbfY7cgTSRG1WKgTPsACVMAUhpj/yLr9zwJIYQNn/2
         Xa/wazhn82CjqsDb/G/en7OVqTr87ZaguwoJmWAH229lLn5Sdi8Lvn/fs/Kg7LbigRet
         ehSh5xUeZl3QqiRIC4AgssBFqPwjz2cuVktoVyOnJV7FNcv3aa0n9iMN2J//WOB8pUE6
         JPJeWmV8//sQwceU8fjA99Zf5KPumLAoGTxw/emRsPsXRy2Kf3IW1m+IA60vrcqK8xZZ
         FCKSehVjj5hT7rCJHiTddumZGr/uwqQS8pIhiU47JI0maspZzZql8rzyEr5bFKLLFYHw
         F27g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708991139; x=1709595939;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ENJCVwViqySP78QQC22e16vdfpVFUmVF6XiIGfyzNm8=;
        b=RsPB5iHAvjGNe8SwoW7M/CtydBFQ9AgA7rHP0LuhbrBgDFPS+rUGhB+lU7QXa3PCQU
         RcMUdrpeJ4PlSrF9v2xCnI1oI2YQp9zNxBf5sRrlKvL86F90pAiNuLvRCZOW5ib0Fkky
         GcgxHZ8zPCHqomegvgUQO07JtgmhtjiiVidNUsf7QMztYSBuP2mG1WxWgmDDpKTUQ3Mo
         7RZN9LDA0dOxxRSPfraySsb7xkR/02uD3lPengLaj/Qocc0UZLn9W4ogEgJdNFasCcxO
         bmQWjy/p+XcL11fi6ddNYN2QjPA9BD+IiZ348cWj/oAgQVzOSrHvnukeTyop0WXoBnvd
         MXRA==
X-Forwarded-Encrypted: i=1; AJvYcCX8dWGX/rvYVJhz1fq+MhrB0YFZ6x9z6s5ovcuwK2RyYsYzreuUgXKcatVQZhv0iMkLtgcVJ7u4osD07TedgIlGcMgGq0uol4w1trgmYQ==
X-Gm-Message-State: AOJu0YwEllCeSSj6stYfzdmDxp+Yzk3eiX0aGTE7slI8Gvo2Rtx9XK5V
	Fy3bxssyvdgopD1zcZogs7PAIa6GvtpyMQ6ExTZRlc2R6rfwxGwP42Juw5D12bpDAg==
X-Google-Smtp-Source: AGHT+IE0Qm5yQ6rNCxa0d3sGukCo6hDILzXZzbUGhgTRn/EM30OHE3gVJrckX3sKvHnVgYCb1ktBmA==
X-Received: by 2002:a05:6e02:1a45:b0:365:4e45:5436 with SMTP id u5-20020a056e021a4500b003654e455436mr5629213ilv.15.1708991138844;
        Mon, 26 Feb 2024 15:45:38 -0800 (PST)
Received: from aford-System-Version.lan ([2601:447:d002:5be:9c95:d061:819a:2ab2])
        by smtp.gmail.com with ESMTPSA id c25-20020a023319000000b004741cf1e95esm1545317jae.11.2024.02.26.15.45.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 15:45:38 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: aford@beaconembedded.com,
	Lucas Stach <l.stach@pengutronix.de>,
	Adam Ford <aford173@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH V6 1/6] dt-bindings: phy: add binding for the i.MX8MP HDMI PHY
Date: Mon, 26 Feb 2024 17:45:12 -0600
Message-ID: <20240226234532.80114-2-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240226234532.80114-1-aford173@gmail.com>
References: <20240226234532.80114-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_154540_390875_338C8C7B 
X-CRM114-Status: GOOD (  15.56  )
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

From: Lucas Stach <l.stach@pengutronix.de>

Add a DT binding for the HDMI PHY found on the i.MX8MP SoC.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Adam Ford <aford173@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
V6:  No Change

V5:  No Change

V4:  No Change

V3:  Removed mintems at the request of Krzysztof and add his
     reviewed-by

V2:  I (Adam) tried to help move this along, so I took Lucas' patch
     and attempted to apply fixes based on feedback.  I don't have
     all the history, so apologies for that.

     Added phy-cells to the required list and fixed an error due
     to the word 'binding' being in the title.
---
 .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
new file mode 100644
index 000000000000..c43e86a8c2e0
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/fsl,imx8mp-hdmi-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX8MP HDMI PHY
+
+maintainers:
+  - Lucas Stach <l.stach@pengutronix.de>
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx8mp-hdmi-phy
+
+  reg:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 0
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: apb
+      - const: ref
+
+  "#phy-cells":
+    const: 0
+
+  power-domains:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - "#clock-cells"
+  - clocks
+  - clock-names
+  - "#phy-cells"
+  - power-domains
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mp-clock.h>
+    #include <dt-bindings/power/imx8mp-power.h>
+
+    phy@32fdff00 {
+        compatible = "fsl,imx8mp-hdmi-phy";
+        reg = <0x32fdff00 0x100>;
+        clocks = <&clk IMX8MP_CLK_HDMI_APB>,
+                 <&clk IMX8MP_CLK_HDMI_24M>;
+        clock-names = "apb", "ref";
+        power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_HDMI_TX_PHY>;
+        #clock-cells = <0>;
+        #phy-cells = <0>;
+    };
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
