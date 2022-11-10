Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E70CAC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 10:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jwvoAlkrG+MHCR+qjkEEXzVt8vKWpIGyjkQqgAuTLCo=; b=x5SwuKdViyUteb
	L8f/SNMdwdmvXvEQBY1xGFzC3dT0UU/ohbzsH94vmmUNzP24HjOxZ5c9cuEkRnseek3bTePLt3ddE
	mxcxolwi25jIkpyLo0z3xTjoq2s03NkehN1GSeJw9IpjgwYx6L0Uz+JbsOoYkM2zMw8x2hjsuJSvy
	OqUNkA60qRR7cFWixg2bGeKDxtqCkLYH+acxSJtIJ8e0YQ/nQGJIiZNhGvA8IBliGDeUPJNsnjSZO
	Hb8w1WfhNGThOdgPfYf8gr70rvr1+7qBSxi1U9wC/5MBHOnQdIiBJa1ciX8tqM1ax3XKNyQxK+QCp
	JmW4rbcq2Sy9O1BsiLQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot4sc-0053bq-Dp; Thu, 10 Nov 2022 10:33:54 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot4sZ-0053Yx-E3
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 10:33:52 +0000
Received: by mail-lf1-x134.google.com with SMTP id l12so2354376lfp.6
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 02:33:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7PFI1x2UOLGGPuxSItT6ABHhObDwvJZE6i1uYRDHp2s=;
        b=h8++fBS2pxyr2GPNu9isLl7hgE9Na2lY4jetdSHW+pKSIXm+a1kglqa3gw+h33EKGt
         au2rIIxDDyt+xkupplIubUl4frIpGQplYJ+1wT/vQB4Kdl7bTHp7mlqyJqVUbpp18qN/
         fFzTqqaJQjF2gjlsa1rcY/MOg6uOTweTd+dd50SQm4M2fccdadBQpOH2r0zlNJTBuaeE
         2oAeURx0AmvANX3Ct4ckzqr9RYRK8IjfcZM8Rcs9WOVpkXPBdhE3mC0TlymH1EugvM6C
         +MajchPoT5Fv1rmFxmV74G0LVC6CW/OFZgIt48NM1kwphHISNqXgYmx8ihmH5O7Q3qUa
         7RIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7PFI1x2UOLGGPuxSItT6ABHhObDwvJZE6i1uYRDHp2s=;
        b=XPI3LuuuXEU8j54ZqKIdnWE6BeM13noP4Jp8jHdESZ174/ouSrJS/vNKHukeTrAfRs
         TkGOe3iun0Y2nq9DLY7kwmOgw3zRC/nkzWT9RUYVDBxtKxK1Aaifd3HU8Mtrce+y0I1o
         6aOT6F5MlLDXQgBcMj0juujZ/MGxCOippBYQW8zvZf+y7TbAHAU8Hzb54RMU/KUPcmGX
         C/7B6FwXgPykTx08BeRFPcxp3vqZ29RzJsV7cbUsaUau4rJm2u5VWZ1JAFLoHGm/VpAM
         KahT606lqJ7b2s+0+uNMujLdyyApYD3ZwMOyFTqnihhvWKDKjAbzE17l04LnD9CxfRfT
         E+TA==
X-Gm-Message-State: ACrzQf1gF8urVkYN5grpNVIKOzauXCvEjs69mYcvD0KeMJl6udPlCDhq
	yPHjQt3AettnggXGf0lf98DBoQ==
X-Google-Smtp-Source: AMsMyM57elyIdkGQijOwn5U1eMJ89rJ+7sY61z6GclrjtREbrOefVaYeTXbvJKOSzauRWRB8glvW/Q==
X-Received: by 2002:a05:6512:475:b0:4b1:215b:167d with SMTP id x21-20020a056512047500b004b1215b167dmr1339183lfd.558.1668076429515;
        Thu, 10 Nov 2022 02:33:49 -0800 (PST)
Received: from localhost.localdomain ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id p22-20020ac246d6000000b00498f32ae907sm2687837lfo.95.2022.11.10.02.33.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 02:33:49 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v2 2/8] dt-bindings: phy: qcom,qmp-pcie: add sm8350 bindings
Date: Thu, 10 Nov 2022 13:33:39 +0300
Message-Id: <20221110103345.729018-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221110103345.729018-1-dmitry.baryshkov@linaro.org>
References: <20221110103345.729018-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_023351_515551_4789235B 
X-CRM114-Status: UNSURE (   8.38  )
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

Add bindings for the PCIe QMP PHYs found on SM8350.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 80aa8d2507fb..8a85318d9c92 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -19,15 +19,18 @@ properties:
       - qcom,sc8280xp-qmp-gen3x1-pcie-phy
       - qcom,sc8280xp-qmp-gen3x2-pcie-phy
       - qcom,sc8280xp-qmp-gen3x4-pcie-phy
+      - qcom,sm8350-qmp-gen3x1-pcie-phy
 
   reg:
     minItems: 1
     maxItems: 2
 
   clocks:
+    minItems: 5
     maxItems: 6
 
   clock-names:
+    minItems: 5
     items:
       - const: aux
       - const: cfg_ahb
@@ -104,6 +107,25 @@ allOf:
         reg:
           maxItems: 1
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8350-qmp-gen3x1-pcie-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 5
+        clock-names:
+          maxItems: 5
+    else:
+      properties:
+        clocks:
+          minItems: 6
+        clock-names:
+          minItems: 6
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
