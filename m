Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 446BDC3DA41
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jul 2024 12:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Wd7FdPhzg7PKbBSPtN54mY+A59xPXWHUw/pzRginvRk=; b=bns9Wb3+rclnH/
	MGXy1lih2YRNzCYNztr0WWQy+m4TrETIz9NpqEm8E0tOPY9W3NatKrYL1yAlnewcinQ6QePhWtOcI
	QrXsXIgnPDkG+MjNRXaMTSE5pkGnRl+qbPTY6aLEFr1bNGQy7hkhVpu5R+Ls0zD3ugt5Yuwm9TB1O
	2cQYChgLndR1bUcVrUm6MdGr1vNnUOXEYJdet1YfNyj4OUmgMWXbvQBRmq9+TgBsfXhnl6YKk8piR
	B8fG1dZUd1+V5/scQFpOM/I9cU0+E7m8fKtwiZoKq+fKipVrWle8PzyP0brPr4avta9uhW5Ov8L8u
	dvN1VF1s5gjZrHTLfMog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRsmk-0000000DwH0-358h;
	Thu, 11 Jul 2024 12:20:30 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRsmi-0000000DwFo-1DlB
	for linux-phy@lists.infradead.org;
	Thu, 11 Jul 2024 12:20:29 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-52e94eaf5efso1114598e87.2
        for <linux-phy@lists.infradead.org>; Thu, 11 Jul 2024 05:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720700425; x=1721305225; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Tk0i+1IBh11P9mmpTotHIXZYo1vhEJFxu6RJYG7MLmE=;
        b=vGldtW2YS879bbmR8p6GWsf8rReMrJ7XYCqo/XDpyCeQncPbuImmqChQqSAwzIoF1H
         KKRayJdk554aPSZcm0DE5g3s1SXfEBZ/7bwdlCk2x9iJzfvUsuQoILddwAOer4cLIR+5
         2g10UFaa2yMJUL+f1fej+jltdz4U36xIuO5O38xM17jFtpN2XS3qdhj+J9zmX1BavX96
         OIn4Y/PD0inxz+n2jNMwve3VJMaAi7luRbj7FVbfyG+I225GKbZCw97opjH0V/42WKMc
         nO2UgRgXrd2ttDah1sBwlua+jvFNpYmnwACgozDGb7fuJjdzuFlBxtruwaIoSt2acTvd
         dLbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720700425; x=1721305225;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tk0i+1IBh11P9mmpTotHIXZYo1vhEJFxu6RJYG7MLmE=;
        b=T2ukgMMOKewPNkxKs6MiabEBGQYFz0WVEI79TEn6V3qfVKKnzBoOhk+vq+8nD+jnl4
         UvubUubmglaASz29Lt9+6D0aHGAS+O5i9sJm2DwY1R4my0aUGJXvfZaa3r7c97BLiavv
         5JHTYyp2rDjDvS26/E9Mv2J4Qc+kMzdGucKMTBrRn6OWjAPOF0oOaJtB8wPvCyYTy5Tz
         5LHv8D0nyjATiwsSD0sZFsFaz0KoOm+Vq3Gk57ZjbbaWQ/FcBI+/tjnA68d6dlR5i3yY
         QivhZLBwVsIOe+nFj5eMacVPH1gVr+JeHwO9gtnf1ioYlo64O2x24U6+Q2vrQ6DIrh76
         RXbA==
X-Forwarded-Encrypted: i=1; AJvYcCUvPMR4V2Ea1eWlKNm9B7yUchyEbkIsm7Ie8LIBhzqQTRLon521p4dh1KX0CCyui7cyV4Hf9oqtZjCSDJOJQxS2oeCyo+KcIw4nHbvtxA==
X-Gm-Message-State: AOJu0Yysz4atkq5XAZuIJ/4vBT54sF7kVo4WjcNSwPD3aC5Fk1IuHhNh
	FbFHKNXCiliNT2RAkbYrBcs2yvugWAXtl44uEUXmViSH9VXFHirMe3XJnQGcwCjZIDLscZ1KzLB
	X
X-Google-Smtp-Source: AGHT+IE2GarJar26wbR5wgczKVRVcc8A1TGBP61n0DrJ48X2/q6ptsXXH+rJiIBLZWLXkYy2e/8qkw==
X-Received: by 2002:a05:6512:23a7:b0:52e:9808:3f50 with SMTP id 2adb3069b0e04-52eb99d20c3mr5849319e87.42.1720700425240;
        Thu, 11 Jul 2024 05:20:25 -0700 (PDT)
Received: from rayyan-pc.broadband ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367cde848e7sm7555021f8f.44.2024.07.11.05.20.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 05:20:24 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
To: devicetree@vger.kernel.org
Cc: Rayyan Ansari <rayyan.ansari@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: drop obsolete qcom,usb-8x16-phy bindings
Date: Thu, 11 Jul 2024 13:20:14 +0100
Message-ID: <20240711122016.41806-1-rayyan.ansari@linaro.org>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_052028_351844_AAA557F5 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
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

Remove the bindings for the Qualcomm 8x16 PHY driver that was dropped
in commit 4756f35fdf14 ("usb: phy: remove phy-qcom-8x16-usb.c") in 2017.

Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
---
 .../bindings/phy/qcom,usb-8x16-phy.txt        | 76 -------------------
 1 file changed, 76 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,usb-8x16-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-8x16-phy.txt b/Documentation/devicetree/bindings/phy/qcom,usb-8x16-phy.txt
deleted file mode 100644
index 2cb2168cef41..000000000000
--- a/Documentation/devicetree/bindings/phy/qcom,usb-8x16-phy.txt
+++ /dev/null
@@ -1,76 +0,0 @@
-Qualcomm's APQ8016/MSM8916 USB transceiver controller
-
-- compatible:
-    Usage: required
-    Value type: <string>
-    Definition: Should contain "qcom,usb-8x16-phy".
-
-- reg:
-    Usage: required
-    Value type: <prop-encoded-array>
-    Definition: USB PHY base address and length of the register map
-
-- clocks:
-    Usage: required
-    Value type: <prop-encoded-array>
-    Definition: See clock-bindings.txt section "consumers". List of
-                two clock specifiers for interface and core controller
-                clocks.
-
-- clock-names:
-    Usage: required
-    Value type: <string>
-    Definition: Must contain "iface" and "core" strings.
-
-- vddcx-supply:
-    Usage: required
-    Value type: <phandle>
-    Definition: phandle to the regulator VDCCX supply node.
-
-- v1p8-supply:
-    Usage: required
-    Value type: <phandle>
-    Definition: phandle to the regulator 1.8V supply node.
-
-- v3p3-supply:
-    Usage: required
-    Value type: <phandle>
-    Definition: phandle to the regulator 3.3V supply node.
-
-- resets:
-    Usage: required
-    Value type: <prop-encoded-array>
-    Definition: See reset.txt section "consumers". PHY reset specifier.
-
-- reset-names:
-    Usage: required
-    Value type: <string>
-    Definition: Must contain "phy" string.
-
-- switch-gpio:
-    Usage: optional
-    Value type: <prop-encoded-array>
-    Definition: Some boards are using Dual SPDT USB Switch, witch is
-                controlled by GPIO to de/multiplex D+/D- USB lines
-                between connectors.
-
-Example:
-	usb_phy: phy@78d9000 {
-		compatible = "qcom,usb-8x16-phy";
-		reg = <0x78d9000 0x400>;
-
-		vddcx-supply = <&pm8916_s1_corner>;
-		v1p8-supply = <&pm8916_l7>;
-		v3p3-supply = <&pm8916_l13>;
-
-		clocks = <&gcc GCC_USB_HS_AHB_CLK>,
-			     <&gcc GCC_USB_HS_SYSTEM_CLK>;
-		clock-names = "iface", "core";
-
-		resets = <&gcc GCC_USB2A_PHY_BCR>;
-		reset-names = "phy";
-
-		// D+/D- lines: 1 - Routed to HUB, 0 - Device connector
-		switch-gpio = <&pm8916_gpios 4 GPIO_ACTIVE_HIGH>;
-	};
-
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
