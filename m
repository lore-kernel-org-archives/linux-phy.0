Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7691DC4829A
	for <linux-phy@archiver.kernel.org>; Sat, 10 Feb 2024 20:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YwsFRoiP17QZ8vxPqvVf6dD+rQH40/KjdQ2O4iH5GUI=; b=RG7y10e0YF5KHs
	xZ4OchHomd5bLeC6pEk3ip6iv6fCwbfjxCBqXU7FGezViRG/9BB9mVklw/xqUSWQG5uoDJHmGj2fW
	wY4MfzGRrCOPxiqeXTHRvrrdnVy7jH5yfqJnOLo4Pc23O8Qrev8AZUyAPqIXh1llmrLE8mF/LGB0G
	+qOdVr/9qGMHZFQZLdTxapZpzUV3wJGHrEWhD5RxsGc2y2Z3Vetr0ns0ol9bDSDr7OeV2aL44D4db
	ThMM6ctXZwOPvmvK5D+INDEvO8MJiM1HTtVaZ+leJE/PEHVyxIEqVCt1LwVl/YaqUvL1P5KXDLUSn
	CwVgHd9py4Bw9Ju0JXHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYuEz-0000000202u-0PnG;
	Sat, 10 Feb 2024 20:46:25 +0000
Received: from mail-qv1-xf35.google.com ([2607:f8b0:4864:20::f35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYuEt-0000000201T-3UWR;
	Sat, 10 Feb 2024 20:46:21 +0000
Received: by mail-qv1-xf35.google.com with SMTP id 6a1803df08f44-6860ff3951aso10408416d6.1;
        Sat, 10 Feb 2024 12:46:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707597978; x=1708202778; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rkNsLeVU+SRAFCzJ9Atwqu/RzNdjkmQfb6CAAkLA5vg=;
        b=M+m+ptGe7xXBOn6r8M635wXT8uCZwghtrAKSg/gDWlXwMS++k3ZeEuqOAUbnIU1MrM
         Ocv3mUzKIAFU2D14mGrf1i1zcS8xPOtLpax3imXG4OYhXc9pgAMU8kazC/sopijgKjBu
         lW2JoCjMWbdk2rvikvgN13RL81c3ccn8IsOmcFLAW9qSQimUWu80INzL62YjpFjYHNm4
         LSftpfwFWt2d315ay0C0bB3//D37G/HGXB12Aw3awKPXwQVVjaq0bFZfR92TWBvli8zG
         /0ivofhJZdPe9B+DBzydin/2xz1tmE/CBGa+YdoCEql+Uh6g2ncVK24zMXc7A4mvr6KJ
         4OlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707597978; x=1708202778;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rkNsLeVU+SRAFCzJ9Atwqu/RzNdjkmQfb6CAAkLA5vg=;
        b=wj6h7cs1PgzNIvhxZfMgkTRfJ5llu7rzABwZGBQu2+xcKGpWf4ROTSY0MUAanfa+U3
         5/qpn0HYcvEOUGKKoHarFkI97FZi2Jl2uAGB18EGCo78/Xu5aOd0jTnCfiPO9wwSLB5X
         bVP1UrzW5fTtF5krrVoBovZqrGz0r8wsN6usG+wOsv7tI+D3kzJVgp2J6h1wxKfPkEEf
         IiZ5H0epe8D71HXqkaeseG6+YjEvyneYhBpTk0G3BuGKpVAMvBKHbq6ROQ5tC8zHMnjq
         tlNbOKI1RK1kP8Coa5xbVHHHg0M9vcwEgT9/lxUArCa67YBBwLKpra0F8CV5Tw5l+PeF
         dS1A==
X-Gm-Message-State: AOJu0YzAg9k6mWHPf1ZoK14QGrRj3dBdbBvTPbPf9oU2VscD+iY8dEyi
	N8UOC8T/s6DlmQOI0xZ8/s6zVzyZ+6wvYswlacg8Ed4BvCoiSmNx+tf9jk2y
X-Google-Smtp-Source: AGHT+IF94WoT40Z1SKL5d5z4/OFRL+ZpRt/Mh1eBS3ikAJhmzuMZZOJeU+bidfzzLQ+2XJfqDqceaw==
X-Received: by 2002:ad4:5967:0:b0:68c:c977:df6e with SMTP id eq7-20020ad45967000000b0068cc977df6emr4198960qvb.10.1707597978047;
        Sat, 10 Feb 2024 12:46:18 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXp+RFU8mZpxCtEceZNXbFefupSCxccqNul+K627frYKB5kqD9Ci0D+HmS0VoTCA2l9hr/+GH5IEcWuxD25v6REUdfZUD25aWmh0501FUYZ7hhykFZQ8Nfsm5j1pZUQKgB7V4mw3i35kMli+wNH+wyOQnWXtWEt/Z+AYOEYxqEWiQaN/mj7t6rN+75gPm0o8CzSQqROVyLdY8w1wOr3ecmy/x318kl18r3p9zq01TEPkR5dpSrpwv1wrX/YuQ3b+IPqcofgjgj37lnx/fwywbQbOq5OR+Gw7piXYfii+ITjOplrII9MaXDC8CZ9X///b0LUK498XQ56zkKvBjwQNX8+DSvqqr/emzhFJWPrW2tRlMlZxhm4TcZT0hj4D5OlLVtxqMKqAV0ycOGLfE5XEoMpvgmYt9nluCcbp3kASNAM/CmZuBN6S5C8MpXrPU/6bTBHKqabD0xJhWrR3kED5docHGr6g5huCauJ9Txg3bI5znAdAJSPOKlpLpFg18cAdi9bcWKV6LjCVBoqcTxSTB9+aTl/Pz8/iQd740Z8J6C2PmJWVfSaP4Sn+OiXTFzwLqnfaedqXz7AtEx3vwwF81rWTQw0+AcOoSBI4X+3o0fCD/LVCwUr9wV7K+9EmdE2P4SK4hSwGP/QJ/KVVMDzfnVd
Received: from aford-System-Version.lan ([2601:447:d002:5be:27d7:3989:2897:88a7])
        by smtp.gmail.com with ESMTPSA id m20-20020a0cdb94000000b0068c9db26ae1sm2079526qvk.41.2024.02.10.12.46.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Feb 2024 12:46:17 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: marex@denx.de,
	aford@beaconembedded.com,
	Lucas Stach <l.stach@pengutronix.de>,
	Adam Ford <aford173@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH V4 1/6] dt-bindings: phy: add binding for the i.MX8MP HDMI PHY
Date: Sat, 10 Feb 2024 14:45:57 -0600
Message-ID: <20240210204606.11944-2-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240210204606.11944-1-aford173@gmail.com>
References: <20240210204606.11944-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240210_124619_902866_E0A42FBD 
X-CRM114-Status: GOOD (  15.61  )
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
---
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
