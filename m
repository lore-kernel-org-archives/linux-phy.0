Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27750C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 14 Oct 2022 20:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jRqmP/IxK1WHXPGIqzgkPbgbDVlOKjHvQkISMpwc9wc=; b=BrWxkD+f32fMBt
	RnXeI5nOxMD4Tx9fXqdd5GWs8uRSb3ZbjnB/r+7Dy9NLHmAt+jEiCuWDA5UZuUTn3X4VjMOQUcEa/
	48Zo/p+EMrrYVX+7frlgKZ001yExk68zwdqsJJvcS+C1DBCuKPlkgcxaYGJ5VDFYLeJ9UGZ3z21sq
	iKLL/EWrpOjkbzg7MDrxMbBRJmZxWIbUjbv73vua4z7qWFh0O/cnEh6Ptn6A/LPuvR/Uv4DLfcDjo
	+oh6C3YN9L7vsRZS0Ulu8Fbqbd3hQnOqK5yNxDbhxdBSdwwkz8Lnh0OyGcX3rlcrTiX+UBtHl77NJ
	3bH5WASoKMKTd5vdrfcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojRec-00Fu2F-Ii; Fri, 14 Oct 2022 20:51:38 +0000
Received: from mail-ot1-f54.google.com ([209.85.210.54])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojReR-00Ftyr-9L; Fri, 14 Oct 2022 20:51:28 +0000
Received: by mail-ot1-f54.google.com with SMTP id t4-20020a9d7f84000000b00661c3d864f9so2547593otp.10;
        Fri, 14 Oct 2022 13:51:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PM/tudBwVBkWLPdLQ9uHSq0aAAT5JTrVUZ4BADk5nQg=;
        b=C+CSrF84YiizYpy5wp5ReQB7LJldg1QGay7q6DsH8g0/0pKXkJO0E5h7hwWGbWz29A
         akJ8HixWACiRUs40Hk4qnLDoMKz4NV5hzk2F8pcKiv9eaIPVNiwgB0Mwidi914d0yXRG
         r4ZKeGJHopTmXBAG/7+bY53rjVdyoBXKTCpqjCsSN7mKXHPALl56ZE3H0/HZ2+r8A921
         Kp1XzPDn2UvOcFj2ahnm1wrSAaPVsfcyspx4GoAhQUSjiukGDlgRfJfQ3ncC5wchYQxx
         02YzTY5NWuaeezwzxVD0wdiPehN/Q5xTCBQw/UuteRqucHnzQnTIKrdwAgPokkWV4Hky
         9lIg==
X-Gm-Message-State: ACrzQf2Ev/ItZ2Z99In+/E0yGKdLO65YIK7uIxTBxwl7HGnFAu62iICl
	sF/i/hHdyTDy3YDsleu7Lg==
X-Google-Smtp-Source: AMsMyM5w4g67vSGZ3pSCI5S2Zc2iST2MyxLD+PeiQ6LuPDE+zA88Aoe8qbpQjyvz+NwDwTMTLkmsOQ==
X-Received: by 2002:a9d:7745:0:b0:661:a3c9:3cff with SMTP id t5-20020a9d7745000000b00661a3c93cffmr3396961otl.176.1665780685215;
        Fri, 14 Oct 2022 13:51:25 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id f17-20020a4ae611000000b00480b7efd5d9sm580678oot.6.2022.10.14.13.51.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Oct 2022 13:51:24 -0700 (PDT)
Received: (nullmailer pid 2822557 invoked by uid 1000);
	Fri, 14 Oct 2022 20:51:24 -0000
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Cosmin Tanislav <cosmin.tanislav@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
	Nandhini Srikandan <nandhini.srikandan@intel.com>, Rashmi A <rashmi.a@intel.com>, 
	Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Sumit Gupta <sumitg@nvidia.com>, 
	Mikko Perttunen <mperttunen@nvidia.com>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Claudiu Beznea <claudiu.beznea@microchip.com>, Joakim Zhang <qiangqing.zhang@nxp.com>
Cc: devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-iio@vger.kernel.org, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
Subject: [PATCH] dt-bindings: Remove "status" from schema examples, again
Date: Fri, 14 Oct 2022 15:51:04 -0500
Message-Id: <20221014205104.2822159-1-robh@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221014_135127_350512_617D986A 
X-CRM114-Status: GOOD (  12.09  )
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

There's no reason to have "status" properties in examples. "okay" is the
default, and "disabled" turns off some schema checks ('required'
specifically).

A meta-schema check for this is pending, so hopefully the last time to
fix these.

Fix the indentation in intel,phy-thunderbay-emmc while we're here.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../arm/tegra/nvidia,tegra-ccplex-cluster.yaml    |  1 -
 .../display/tegra/nvidia,tegra124-dpaux.yaml      |  1 -
 .../display/tegra/nvidia,tegra186-display.yaml    |  2 --
 .../bindings/iio/addac/adi,ad74413r.yaml          |  1 -
 .../devicetree/bindings/net/cdns,macb.yaml        |  1 -
 .../devicetree/bindings/net/nxp,dwmac-imx.yaml    |  1 -
 .../bindings/phy/intel,phy-thunderbay-emmc.yaml   | 15 +++++++--------
 7 files changed, 7 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/tegra/nvidia,tegra-ccplex-cluster.yaml b/Documentation/devicetree/bindings/arm/tegra/nvidia,tegra-ccplex-cluster.yaml
index 711bb4d08c60..869c266e7ebc 100644
--- a/Documentation/devicetree/bindings/arm/tegra/nvidia,tegra-ccplex-cluster.yaml
+++ b/Documentation/devicetree/bindings/arm/tegra/nvidia,tegra-ccplex-cluster.yaml
@@ -47,5 +47,4 @@ examples:
       compatible = "nvidia,tegra234-ccplex-cluster";
       reg = <0x0e000000 0x5ffff>;
       nvidia,bpmp = <&bpmp>;
-      status = "okay";
     };
diff --git a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra124-dpaux.yaml b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra124-dpaux.yaml
index 9ab123cd2325..5cdbc527a560 100644
--- a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra124-dpaux.yaml
+++ b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra124-dpaux.yaml
@@ -128,7 +128,6 @@ examples:
         resets = <&tegra_car 181>;
         reset-names = "dpaux";
         power-domains = <&pd_sor>;
-        status = "disabled";
 
         state_dpaux_aux: pinmux-aux {
             groups = "dpaux-io";
diff --git a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra186-display.yaml b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra186-display.yaml
index 8c0231345529..ce5c673f940c 100644
--- a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra186-display.yaml
+++ b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra186-display.yaml
@@ -138,7 +138,6 @@ examples:
                  <&bpmp TEGRA186_CLK_NVDISPLAY_DSC>,
                  <&bpmp TEGRA186_CLK_NVDISPLAYHUB>;
         clock-names = "disp", "dsc", "hub";
-        status = "disabled";
 
         power-domains = <&bpmp TEGRA186_POWER_DOMAIN_DISP>;
 
@@ -227,7 +226,6 @@ examples:
         clocks = <&bpmp TEGRA194_CLK_NVDISPLAY_DISP>,
                  <&bpmp TEGRA194_CLK_NVDISPLAYHUB>;
         clock-names = "disp", "hub";
-        status = "disabled";
 
         power-domains = <&bpmp TEGRA194_POWER_DOMAIN_DISP>;
 
diff --git a/Documentation/devicetree/bindings/iio/addac/adi,ad74413r.yaml b/Documentation/devicetree/bindings/iio/addac/adi,ad74413r.yaml
index 03bb90a7f4f8..d2a9f92c0a6d 100644
--- a/Documentation/devicetree/bindings/iio/addac/adi,ad74413r.yaml
+++ b/Documentation/devicetree/bindings/iio/addac/adi,ad74413r.yaml
@@ -114,7 +114,6 @@ examples:
       #size-cells = <0>;
 
       cs-gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
-      status = "okay";
 
       ad74413r@0 {
         compatible = "adi,ad74413r";
diff --git a/Documentation/devicetree/bindings/net/cdns,macb.yaml b/Documentation/devicetree/bindings/net/cdns,macb.yaml
index 318f4efe7f6f..bef5e0f895be 100644
--- a/Documentation/devicetree/bindings/net/cdns,macb.yaml
+++ b/Documentation/devicetree/bindings/net/cdns,macb.yaml
@@ -203,7 +203,6 @@ examples:
                     power-domains = <&zynqmp_firmware PD_ETH_1>;
                     resets = <&zynqmp_reset ZYNQMP_RESET_GEM1>;
                     reset-names = "gem1_rst";
-                    status = "okay";
                     phy-mode = "sgmii";
                     phys = <&psgtr 1 PHY_TYPE_SGMII 1 1>;
                     fixed-link {
diff --git a/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml b/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml
index 4c155441acbf..0270b0ca166b 100644
--- a/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml
+++ b/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml
@@ -92,5 +92,4 @@ examples:
                      <&clk IMX8MP_CLK_ENET_QOS>;
             clock-names = "stmmaceth", "pclk", "ptp_ref", "tx";
             phy-mode = "rgmii";
-            status = "disabled";
     };
diff --git a/Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml b/Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml
index 34bdb5c4cae8..b09e5ba5e127 100644
--- a/Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml
+++ b/Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml
@@ -36,11 +36,10 @@ additionalProperties: false
 
 examples:
   - |
-     mmc_phy@80440800 {
-     #phy-cells = <0x0>;
-     compatible = "intel,thunderbay-emmc-phy";
-     status = "okay";
-     reg = <0x80440800 0x100>;
-     clocks = <&emmc>;
-     clock-names = "emmcclk";
-     };
+    mmc_phy@80440800 {
+        #phy-cells = <0x0>;
+        compatible = "intel,thunderbay-emmc-phy";
+        reg = <0x80440800 0x100>;
+        clocks = <&emmc>;
+        clock-names = "emmcclk";
+    };
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
