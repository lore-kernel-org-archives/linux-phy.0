Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D079C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 25 Nov 2022 09:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/Jxzh78OINHxE3n917kYnTjWj8aw8DbjImUxOcW7pFY=; b=DRGI2aA4MJprG4
	gVGsZix2vgE30P8L9ldqQML/1FGVKeiexaTrAeu0LQ1F1xk+JbwfULLlTZ0XFkW89R03TKbk582Bd
	Hl9TLiMgeuKUGIRojA5O+/27KiVXuI1fjncJ0jL+zIL32g2BpTMdFrRhdCVIwdb2IQlDWUBvxArvA
	lWzJQXgw343gchp3yDwjF+65lXxGlUlbfZiZhd4tQT6Jzc5dLWddNUOIvUIHkQNTSGI2uZ0rhh2fK
	OEoCfBdwY6d95oSchI5PEpwlqDT0MP70mhYXL/2gaDJvgqwSbbXU7joUTNwWx785KthsVZFBNGfQ7
	2tzSVzciCzam9SGAN0ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyV5S-00ExpP-By; Fri, 25 Nov 2022 09:33:34 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyV0g-00EvBB-Lz
	for linux-phy@lists.infradead.org; Fri, 25 Nov 2022 09:28:41 +0000
Received: by mail-ej1-x636.google.com with SMTP id m22so8974751eji.10
        for <linux-phy@lists.infradead.org>; Fri, 25 Nov 2022 01:28:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mpP1Fb3xrzGRgQcSv/nFJciJPCBP7tqCxTn34nBqums=;
        b=M3AG39iyzVs6kp0nC+H6PpKMBHKps2QdCUkARwCOOsrhaQzvV03csXlDQrasZJfxXq
         5++2hBLuysDfDyTuchXNvhK0/xi/Itvpo6NplBuZk7h6f+vuMyT2zIryoZu4RDAjpH9u
         1kG8hhmksgxiGXsd1m8NOYhDz6dv/mVQbu/+mILE1rjce+4lB6agNnAWS4RYUHNpEZZ2
         YfMq7mLnGCP1mG1Z8uAYt5dy87jP+gpppV548B0WAKVeVImMIXjTJC26xRJyrzY5jdC4
         6vw4cdnVVsBX+MO9sczMwjyzNDYHPZFxsHGOZhipN926gnKVQc0Oy/o1+msxlp0ixOLj
         odMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mpP1Fb3xrzGRgQcSv/nFJciJPCBP7tqCxTn34nBqums=;
        b=CxBHtFcEOyxuZM7ny4uVthEwCCU8nq2blr88OA/x3bh2PUPpyldbXKRwpFOHE2xy7J
         q3/a+EY7kcvliwo9vL1R9yQyhmqYKiKUBDDdh48En96rclEIYLvxUzlD5EabKoBQ86zP
         Ql8fnAHDIrNQFMX8XhnyhfqGAJuwLm0lY+5bYjn+VFf2XqhcX+ei+s3R9OHyrQTausSf
         VRN3lI8w8yBfowqSoTtPBFrpof8s+roYxa56BGSCpR9LHMJmT8gldfl9fSGlRYfP/JRv
         oXGsdso09CI0Db3HKFzFrvC2oin5PO3u07YWudL67pqg6l/IfdtuIiIyDghiQItuoiz6
         w32A==
X-Gm-Message-State: ANoB5pl+UvUa2aG/e4t0z0UnUPnvsI6kjiIDTSm6L7ABxOr0Eue5IIZn
	2hG2g5aeZjSZ2fogg3ajAKDgUA==
X-Google-Smtp-Source: AA0mqf6hp96XZKNkOkLtlvlp1dyiIjtsY9pIgqXvv7XvMMs9JbLaxGUy326AbqovFjsY5Em9g7F0/Q==
X-Received: by 2002:a17:906:d281:b0:782:7790:f132 with SMTP id ay1-20020a170906d28100b007827790f132mr15514892ejb.649.1669368516112;
        Fri, 25 Nov 2022 01:28:36 -0800 (PST)
Received: from otso.. (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id q10-20020a170906b28a00b007b47748d22fsm1329315ejz.220.2022.11.25.01.28.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 01:28:35 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
To: linux-arm-msm@vger.kernel.org,
	Johan Hovold <johan@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	Luca Weiss <luca.weiss@fairphone.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH v2 1/3] dt-bindings: phy: qcom,qmp-usb3-dp: Add sm6350 compatible
Date: Fri, 25 Nov 2022 10:27:47 +0100
Message-Id: <20221125092749.46073-1-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221125_012839_716737_BAF5205B 
X-CRM114-Status: GOOD (  11.64  )
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

Add the compatible describing the combo phy found on SM6350.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
@Johan Hovold, I've sent this v2 as RFC because there are several things
where I have questions on how it should be done.

In this patch, you can see there's cfg_ahb (&xo_board) and power-domains
is not set. In msm-4.19 &gcc_usb30_prim_gdsc is only used in the
ssusb@a600000 node, or should I also add it to qmpphy?

 .../bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml          | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 6f31693d9868..3e39e3e0504d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -17,16 +17,18 @@ properties:
   compatible:
     enum:
       - qcom,sc8280xp-qmp-usb43dp-phy
+      - qcom,sm6350-qmp-usb3-dp-phy
 
   reg:
     maxItems: 1
 
   clocks:
-    maxItems: 4
+    maxItems: 5
 
   clock-names:
     items:
       - const: aux
+      - const: cfg_ahb
       - const: ref
       - const: com_aux
       - const: usb3_pipe
@@ -61,7 +63,6 @@ required:
   - reg
   - clocks
   - clock-names
-  - power-domains
   - resets
   - reset-names
   - vdda-phy-supply
-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
