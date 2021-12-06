Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEC81C433F5
	for <linux-phy@archiver.kernel.org>; Mon,  6 Dec 2021 18:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/SwsEyrpVIPwDnjmXVCHOvQjloiyVdAlaF19OkTnFqs=; b=UolPxGcwDdGMrm
	dGPa08CJm0pFvDls0u9vHtgB84/Y+mdi3PAvh2nQTFNuns7lea30zpztTMNMDyMo9MGtjIFQBUANL
	SUY0VDt7whoJ/z3SADCz7xCZ8V0rO0ls/UIIzldfHezjzXCyhscZzwEnh1TuV9YvAzZJw/+SpS0uz
	MWGJK1HxEVWOfEuamyAYm4ZiwIt8zEYnzruCGun9hcZvy6dzYksJJaUH4zVz0kEFQ/W7zs1jHWChS
	+e8e4V9+QLr/68sxXAvgPv1HizL0VwSvea4tocyK/ccbOMk90aMSjOnNc1oUPwdHYTiml0NXnHiEi
	OQ32HOuOXsejtgPwF8sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muILz-005CdZ-7S; Mon, 06 Dec 2021 18:04:43 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muIIS-005An5-KF; Mon, 06 Dec 2021 18:01:07 +0000
Received: by mail-pj1-x1036.google.com with SMTP id
 n15-20020a17090a160f00b001a75089daa3so11434655pja.1; 
 Mon, 06 Dec 2021 10:01:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a22elMeKMuvw9kAaeC7xqXjpamRaXXRHV5cJtgBXnMI=;
 b=FNuLLY+2QfkUYYdnHtv03ga/tmbb/WnbRqvODT34TbvpQz79NTmgr2/ROaxi1KvJiZ
 qonBJ/pxCvk2g0IPUd6Qpj7sabtCux2WfcYJyghukcUmsUKFoXGNQBd9A0OnYJOttTpx
 UIdl3MStDRxZsVsDZiX6hKX3+Xf4hhKpQQ8NWpFeS5HZyX6HxKpq76L25dbl/vWYLiNz
 uqzh+mwcTJ+AkK4uG67QuWo9VRAWujUhAVWThnL38skDly9DrMhLJ0Gh0bcADhdLSleA
 5Iv6EqE9Gdii24EzG0q3nm7+KdSW8SoHMsIYrEVp1pzKzPnVP5a7WlBssIkHOB5yKGlL
 Zu5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a22elMeKMuvw9kAaeC7xqXjpamRaXXRHV5cJtgBXnMI=;
 b=Ht8ees2WyTu4EOdzsRDZYTFXKT2eCF0MxexIB3G3z7FGA+72MBZH4bNcedAC1HCzLi
 79xhkAhKUNW+UsMmRoAkmHSjbHUKSEAXNLVs0dzzaanH3V9cTVfX5U3NZvxAqn0GquM/
 QijvrYYmMqF18V5CtP852YR9uXrDxSEbJGEKsuEwCiZ0bhty+P1Xza/+aqBtNxGC9vyL
 /roP//fbv+LtaK6ANCg8YopNNfHoTfZnoCVnEQhEfWo4qU2tRhGIoQ+VOjpdNr03viHX
 RPFYGkChuSS1zmwQ+oMQf8zWzb4NHk52vyRnUS7he9Mf+m+TnXZts7YOhPuEJFmZ/Iap
 tyXQ==
X-Gm-Message-State: AOAM5323/tRL3/2HufR8oGZ3PH6KmDlzUNGzS+XJ4ImjgTqgFMJw49td
 pgsy0/YuLfj934JW9JJF4eA=
X-Google-Smtp-Source: ABdhPJwT0/hSqTiWhbGXegTiFL+l5hd6q19jJHrHzsa1pAOaawNuH4ZZtQfWAqoe9uuW9xXye0+Agg==
X-Received: by 2002:a17:902:b28b:b0:142:4abc:ac20 with SMTP id
 u11-20020a170902b28b00b001424abcac20mr45718472plr.88.1638813663456; 
 Mon, 06 Dec 2021 10:01:03 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u11sm5444070pfg.120.2021.12.06.10.01.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Dec 2021 10:01:03 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: devicetree@vger.kernel.org
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 bcm-kernel-feedback-list@broadcom.com (maintainer:BROADCOM IPROC GBIT ETHERNET
 DRIVER), Doug Berger <opendmb@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 netdev@vger.kernel.org (open list:NETWORKING DRIVERS),
 linux-kernel@vger.kernel.org (open list),
 linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM IPROC ARM
 ARCHITECTURE), 
 linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK)
Subject: [PATCH v3 8/8] dt-bindings: net: Convert iProc MDIO mux to YAML
Date: Mon,  6 Dec 2021 10:00:49 -0800
Message-Id: <20211206180049.2086907-9-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211206180049.2086907-1-f.fainelli@gmail.com>
References: <20211206180049.2086907-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211206_100105_236074_2926E5A8 
X-CRM114-Status: GOOD (  15.65  )
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

Conver the Broadcom iProc MDIO mux Device Tree binding to YAML.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../bindings/net/brcm,mdio-mux-iproc.txt      | 62 --------------
 .../bindings/net/brcm,mdio-mux-iproc.yaml     | 80 +++++++++++++++++++
 2 files changed, 80 insertions(+), 62 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/net/brcm,mdio-mux-iproc.txt
 create mode 100644 Documentation/devicetree/bindings/net/brcm,mdio-mux-iproc.yaml

diff --git a/Documentation/devicetree/bindings/net/brcm,mdio-mux-iproc.txt b/Documentation/devicetree/bindings/net/brcm,mdio-mux-iproc.txt
deleted file mode 100644
index deb9e852ea27..000000000000
--- a/Documentation/devicetree/bindings/net/brcm,mdio-mux-iproc.txt
+++ /dev/null
@@ -1,62 +0,0 @@
-Properties for an MDIO bus multiplexer found in Broadcom iProc based SoCs.
-
-This MDIO bus multiplexer defines buses that could be internal as well as
-external to SoCs and could accept MDIO transaction compatible to C-22 or
-C-45 Clause. When child bus is selected, one needs to select these two
-properties as well to generate desired MDIO transaction on appropriate bus.
-
-Required properties in addition to the generic multiplexer properties:
-
-MDIO multiplexer node:
-- compatible: brcm,mdio-mux-iproc.
-
-Every non-ethernet PHY requires a compatible so that it could be probed based
-on this compatible string.
-
-Optional properties:
-- clocks: phandle of the core clock which drives the mdio block.
-
-Additional information regarding generic multiplexer properties can be found
-at- Documentation/devicetree/bindings/net/mdio-mux.yaml
-
-
-for example:
-		mdio_mux_iproc: mdio-mux@66020000 {
-			compatible = "brcm,mdio-mux-iproc";
-			reg = <0x66020000 0x250>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			mdio@0 {
-				reg = <0x0>;
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				pci_phy0: pci-phy@0 {
-					compatible = "brcm,ns2-pcie-phy";
-					reg = <0x0>;
-					#phy-cells = <0>;
-				};
-			};
-
-			mdio@7 {
-				reg = <0x7>;
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				pci_phy1: pci-phy@0 {
-					compatible = "brcm,ns2-pcie-phy";
-					reg = <0x0>;
-					#phy-cells = <0>;
-				};
-			};
-			mdio@10 {
-				reg = <0x10>;
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				gphy0: eth-phy@10 {
-					reg = <0x10>;
-				};
-			};
-		};
diff --git a/Documentation/devicetree/bindings/net/brcm,mdio-mux-iproc.yaml b/Documentation/devicetree/bindings/net/brcm,mdio-mux-iproc.yaml
new file mode 100644
index 000000000000..af96b4fd89d5
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/brcm,mdio-mux-iproc.yaml
@@ -0,0 +1,80 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/brcm,mdio-mux-iproc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MDIO bus multiplexer found in Broadcom iProc based SoCs.
+
+maintainers:
+  - Florian Fainelli <f.fainelli@gmail.com>
+
+description:
+  This MDIO bus multiplexer defines buses that could be internal as well as
+  external to SoCs and could accept MDIO transaction compatible to C-22 or
+  C-45 Clause. When child bus is selected, one needs to select these two
+  properties as well to generate desired MDIO transaction on appropriate bus.
+
+allOf:
+  - $ref: /schemas/net/mdio-mux.yaml#
+
+properties:
+  compatible:
+    const: brcm,mdio-mux-iproc
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+    description: core clock driving the MDIO block
+
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    mdio_mux_iproc: mdio-mux@66020000 {
+        compatible = "brcm,mdio-mux-iproc";
+        reg = <0x66020000 0x250>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        mdio@0 {
+           reg = <0x0>;
+           #address-cells = <1>;
+           #size-cells = <0>;
+
+           pci_phy0: pci-phy@0 {
+              compatible = "brcm,ns2-pcie-phy";
+              reg = <0x0>;
+              #phy-cells = <0>;
+           };
+        };
+
+        mdio@7 {
+           reg = <0x7>;
+           #address-cells = <1>;
+           #size-cells = <0>;
+
+           pci_phy1: pci-phy@0 {
+              compatible = "brcm,ns2-pcie-phy";
+              reg = <0x0>;
+              #phy-cells = <0>;
+           };
+        };
+
+        mdio@10 {
+           reg = <0x10>;
+           #address-cells = <1>;
+           #size-cells = <0>;
+
+           gphy0: eth-phy@10 {
+              reg = <0x10>;
+           };
+        };
+    };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
