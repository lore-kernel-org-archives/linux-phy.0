Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5662C4828F
	for <linux-phy@archiver.kernel.org>; Sat,  3 Feb 2024 16:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bu9Lsat4+mLVD+eFS5K6iBW8Pz52eSBCT7dcZ8Jsq1k=; b=br+kJjg0qQXy+S
	ZS/dS/mFP2PQS4Q8CAaZUos5534vcQHsDvFXd/hn8pmnFDEmWMHYZITl8AoVEcBBGt90y3dtp2IoY
	Q2PBfbtC1Uka1+gsuZyHExc3m/3gtXW5Ip+CDH5AG7b3rxVNMeuD5Zt1sEpuBpgDyoEPwhOg1chIM
	V7RvIBhahhUBzulzf2LkQud0w8nhnFIRpmTVOFQcoJPE1TvQJ7nu5VxTX4ZnDLCUYkcOROUKRHZ9/
	NB8FBFGgV4wDRRaBBjVC+30TZUJlnVXd29FvtNPpqWIGd8DFwZGNmet+DRRf9Etw8gRF0rlhWsjdN
	Zn4bst1Oc+DLwCJ6ayIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJHC-0000000GqHm-1cO1;
	Sat, 03 Feb 2024 16:53:58 +0000
Received: from mail-io1-xd29.google.com ([2607:f8b0:4864:20::d29])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJH5-0000000GqAS-47HR;
	Sat, 03 Feb 2024 16:53:53 +0000
Received: by mail-io1-xd29.google.com with SMTP id ca18e2360f4ac-7bed9fb159fso131425939f.1;
        Sat, 03 Feb 2024 08:53:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706979228; x=1707584028; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5yxNJ6iw10E/jIc+eH30kqf5Ccz8IbGrYAyBw9Fu8JA=;
        b=QtoqzH99YRWqZI83VH3/yZ4cZ5YqtiZ5b4sFi448XvgtdN/B89UuBMXLPd/G9jGaz8
         AHNlimkbnW7MiCFY9/A6IN6smmaJA1/VVqiFioGORaD4GsRzoMfVmE0G5jWTHJogVYoQ
         qLWyzLkaDWH/nCQbSMVNyq58GOSvEhAMukPyvaYM/2FpQ/8S7WsjZ0/DYgZ++JKDyIoC
         EAaMuO1GcWh5Mer1d7X6tp9rF2wNA529VMRUz5nf5oM0GEj2N7Kyh6VtqaGoNWy7kMy+
         818Sd5X62JTM49bNkX2hMmKqWeksascFSMxAZ1jMKc7Qs/sq3aJah8Pcbt2S7RFNa2Wa
         h2eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706979228; x=1707584028;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5yxNJ6iw10E/jIc+eH30kqf5Ccz8IbGrYAyBw9Fu8JA=;
        b=SAb0SccXXOlX5UbyZ63NXGQIJHFoaZZKhCO/3em5VoAIwRnDI6fq8rzZxr/memvbfL
         yGn9gtJzm12akogpfA21c5zLxCHfYwZxyosJLC/rniGgvIy5WL5gR59xn3AtfW/PR0eH
         KOWD8SBQJQHsMc0sH2p+Bn9vUHrCjeaIaglWCYPQ8MG9hqd+LoC3qoZE7AEJ2+C/AK4b
         pvnZzQIlLAKPMBWAzwAOV7ZeoXEFVt7xhfEVbw+4ojPraJ3oWPcnNH3fcjg9J0macnxn
         iSTCBB1lnOZYQMD2fggXfiYlPZ3FhhBVTlKIn9D8Bx/9PGFT6oWz3Lk1W5lyGLg538fo
         O+zw==
X-Gm-Message-State: AOJu0Yy2Aq7/GrgLXgRyxxQo/OfP8beJEBNcSwI21k5hj4QRqZreeT+z
	+1C1FkIzykEDKzqQAiOTC08jwSj8mpFS1ybLCP8gjWGJLJed76ZvizxfCYsdOZY=
X-Google-Smtp-Source: AGHT+IGLICMierknlRorVEXNALWPHIbd9g8JvYQciri7x3uPr5CUp4NijI+2uAuRaeVh6/Kmz8+V0w==
X-Received: by 2002:a6b:c953:0:b0:7c0:1f36:b164 with SMTP id z80-20020a6bc953000000b007c01f36b164mr12895332iof.15.1706979227992;
        Sat, 03 Feb 2024 08:53:47 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVA9CZ4OBFcoM04s5n21XZMv7Q/nxNcmPFO+x1Hx/0kUqPWvHWgXAMhmWWYSeu3FnFFbdWnIQIXkcJ8bvjPe4SRA+PEake0K2o9+SdFQVa0uhauF6xPTPbN6t02ZtR4ijMGSn6bpH/o1D/WhzSp1LNi/qJBO6dUNrXqU0xlwDLjVT0na4dfFVj0vjAP8PLreg0xiTninmHNzxkiLB59Wze+9DOg/GLsJH4TPAUkmXpKZUzkeSul4u9iC6945qk4uxoHVuI4LSZXsQ7y9qiyzP2cMlcs+JP0fV4m5o5JizP5UVba5st/J/YGP/ZOTzDmylMIzpS0bkkba+K1/9SD6wR++0T+vPbWfHEe3wJwDqVW15We868sluUY1Hc5JKoa5QMsz40Hn37WkpB/sCANoznyJeNkPi3K0n1T/KmJJtLTBr1VzyFNKujQekHA3LzIN3TrDhO1XmFYseWfskZ/6n5IdfNiFNYU3rCxUzR6aIYmogpso3AFRoUwnAgAD0esSSDoQ5MCBq/Kh1ck3wd1Rbcu77+yjr6xL/U9pQmqi4sWob0k1ENb/g9aYf8PGpWQaj0vzwjmKo3L3PWIlsYk7bF6hdeM+08pLHa75lJ0UX69ERLEVOhEQ3M+HZOzzmHwP2zGjmSVp6Yf0IOs9xqmJvw32JvuHy+LYGtkK+fWKEw6mjfAYMCyzceYBz8qtTY2se/d98gG3FunwStU6JBNtSDkTHnzjseKe9YQCCR48d63IRE/nASGuG1uzo7Bs6Sti1A252RslipIk7/QB2Is1ulD8+N+9xAvPZqDb25ghHibwI6MlFtaCx66JtMIJsw6TklhYfBvigYAeGRZ9p7yU6jsENqoAhAgA0oJsoBZdtjWtMOkjSu3Sqt+fWW5RpD+GSGtXiVhQ59kCwo59MlPjZfDiPi+XmXRKRrqekWAefFpV8tMcq30iwW+lTh+2VsESwvX7E
 EIkQFHHCNJraRxEphrKmY5jpUPi2se35+9fzW/8/MJU1JVMVbaJ6Ju3BDhiaaIF9ish60lHhllqGuZQdDOEY3tReKYlh46VVzGRNUoYhknSUM9+VgaYtxzn0LVe7CYPkurkr+0nTkOZ030FUw6CpdAMA2THIwB00py45S/j8jbnvTzvgVIlNAeY0tGiYKzEUfSffiU2FR9K7ClVCD3rJDx42Ni2vHIhw==
Received: from aford-System-Version.lan ([2601:447:d002:5be:d9b2:bb4f:5531:6aa9])
        by smtp.gmail.com with ESMTPSA id t30-20020a05663836de00b00470b29b82b1sm1086256jau.154.2024.02.03.08.53.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Feb 2024 08:53:46 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: marex@denx.de,
	alexander.stein@ew.tq-group.com,
	frieder.schrempf@kontron.de,
	Adam Ford <aford173@gmail.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Liu Ying <victor.liu@nxp.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Lucas Stach <l.stach@pengutronix.de>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH V8 03/12] dt-bindings: soc: imx: add missing clock and power-domains to imx8mp-hdmi-blk-ctrl
Date: Sat,  3 Feb 2024 10:52:43 -0600
Message-ID: <20240203165307.7806-4-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240203165307.7806-1-aford173@gmail.com>
References: <20240203165307.7806-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240203_085352_052794_24B5204A 
X-CRM114-Status: GOOD (  14.74  )
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

Per guidance from the NXP downstream kernel, if the clock is
disabled before HDMI/LCDIF probe, LCDIF will not get pixel
clock from HDMI PHY and throw an error:

[CRTC:39:crtc-2] vblank wait timed out
    WARNING: CPU: 2 PID: 9 at drivers/gpu/drm/drm_atomic_helper.c:
        1634 drm_atomic_helper_wait_for_vblanks.part.0+0x23c/0x260

Fix this by adding the fdcc clock to the hdmi_blk_ctrl.  This
should be safe, since neither this power domain nor the dependent
HDMI and LCDIF drivers been enabled or added to the SoC device
tree yet.

According to Sandor Yu from NXP, "the FDCC clock is not for HDMITX
in desgin, but it is part of HDMI domain that needed by HDMITX.
So I think it is reasonable added it to the power domain driver."

The driver also supports two power domains which are missing from the binding
that also fix an issue with resuming from suspend.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
V2:  Update commit message to both show error and give a bit more
     background.
     Add missing power domains hdcp and hdrv as pointed out by Marek Vasut
---
 .../soc/imx/fsl,imx8mp-hdmi-blk-ctrl.yaml     | 22 ++++++++++++-------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hdmi-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hdmi-blk-ctrl.yaml
index 1be4ce2a45e8..bd1cdaa4f54b 100644
--- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hdmi-blk-ctrl.yaml
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hdmi-blk-ctrl.yaml
@@ -27,8 +27,8 @@ properties:
     const: 1
 
   power-domains:
-    minItems: 8
-    maxItems: 8
+    minItems: 10
+    maxItems: 10
 
   power-domain-names:
     items:
@@ -40,10 +40,12 @@ properties:
       - const: trng
       - const: hdmi-tx
       - const: hdmi-tx-phy
+      - const: hdcp
+      - const: hrv
 
   clocks:
-    minItems: 4
-    maxItems: 4
+    minItems: 5
+    maxItems: 5
 
   clock-names:
     items:
@@ -51,6 +53,7 @@ properties:
       - const: axi
       - const: ref_266m
       - const: ref_24m
+      - const: fdcc
 
   interconnects:
     maxItems: 3
@@ -82,12 +85,15 @@ examples:
         clocks = <&clk IMX8MP_CLK_HDMI_APB>,
                  <&clk IMX8MP_CLK_HDMI_ROOT>,
                  <&clk IMX8MP_CLK_HDMI_REF_266M>,
-                 <&clk IMX8MP_CLK_HDMI_24M>;
-        clock-names = "apb", "axi", "ref_266m", "ref_24m";
+                 <&clk IMX8MP_CLK_HDMI_24M>,
+                 <&clk IMX8MP_CLK_HDMI_FDCC_TST>;
+        clock-names = "apb", "axi", "ref_266m", "ref_24m", "fdcc";
         power-domains = <&pgc_hdmimix>, <&pgc_hdmimix>, <&pgc_hdmimix>,
                         <&pgc_hdmimix>, <&pgc_hdmimix>, <&pgc_hdmimix>,
-                        <&pgc_hdmimix>, <&pgc_hdmi_phy>;
+                        <&pgc_hdmimix>, <&pgc_hdmi_phy>,
+                        <&pgc_hdmimix>, <&pgc_hdmimix>;
         power-domain-names = "bus", "irqsteer", "lcdif", "pai", "pvi", "trng",
-                             "hdmi-tx", "hdmi-tx-phy";
+                             "hdmi-tx", "hdmi-tx-phy",
+                             "hdcp", "hrv";
         #power-domain-cells = <1>;
     };
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
