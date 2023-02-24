Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78D50C61DA3
	for <linux-phy@archiver.kernel.org>; Fri, 24 Feb 2023 10:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gpf0lHcqY7h8a4t65zKUn8inwxNoE1F4jhe7kLKdZy4=; b=HxgOLH4TzE8nAC
	HqGoDbt9xQVxOvlPlI8+fefiWYNL+/NRZ45ofy4dHDWUWNmF4qwUF7pxwhRQ4FT9DLOizCKnyqnEx
	1AOMGIlrH/ZkkQEF3lL+AGzXWYktMIyLfHa8LCQkj09HeEQyJhnkq/06KKX461iMU3cLSvqRwhZJ4
	Ra7RCRSGZCD9hZ29RiONZXsccpsX9yn7sHCn5AVT0QKORSXJGn9/SMN2hluDxxo6nc3jiDjbUyT+H
	uIsu7xAIemingsil1pGACwfqD13eFIqMVQDhkh2FY3JeiiHmA4q++BcbS8juPow+QLnIUdEUklXM9
	6TmuZYD9FnPB00U3QJUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVnY-0029JW-Ss; Fri, 24 Feb 2023 10:59:32 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVnW-0029Ht-Re
	for linux-phy@lists.infradead.org; Fri, 24 Feb 2023 10:59:32 +0000
Received: by mail-pj1-x1034.google.com with SMTP id cp7-20020a17090afb8700b0023756229427so2511155pjb.1
        for <linux-phy@lists.infradead.org>; Fri, 24 Feb 2023 02:59:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wzdP0f8Dd/LfcCPdQr780PzK2RvZAJKB5vPc2XD3ufA=;
        b=mByJV+JaU1+Ltx80aDVz38O8fe/liFVHft/qdrSEETLmITXc0LZv5kudxwrQJHEM4E
         2RP0gsLabTBSZH79fsU3NEHMCeOW0Iqr1TcZhzUE9B7tGDss784ZxY3AotfpkL6jWX2/
         6HMJBJEt7J+vIZ5LMgqVreWGU2Lcz8u/UgO9U8zBTWamxRmKNBZJP6YfXSnA2eN4iPk/
         X15O/ck2XYbJCcauOyeuXxchQlLYNaOq7J6UOFE9O5V7S0FVHzlkswu9pzD1R5IausqO
         535j2BWGe7lKIRbK/nef5No9zFZ7ku4gO34mFvnolSNCGNgFpU9xfpODylons+mkw7YN
         tlQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wzdP0f8Dd/LfcCPdQr780PzK2RvZAJKB5vPc2XD3ufA=;
        b=7jisqreauw894smnBEUvn8WQIjhJFNQvjsn8RnK4XkxQSK+yPpcqxeOTnerNOJXeoc
         uoKRGUjQKx75aj/h2oV+sXkFDIjcXVVKcVQZJUZcyFhNw3G7lEfC3kR2KNqDwTkKwbAM
         esIZX50QHzam8wD8BlMqV3Xfa9uBeT5rntBCS9Qt/XNBXOy5OixRjdc6sWDVttw+SKc3
         ehKE/pWBYyao3hXoMkGqJjE9KP3pUfHQSRIe9N24VgYMfEoHMIKPkjIt0JB64iTuIz13
         rUJESXMzlhVOiqOjyXYxXDNOup+3cqa82TC6tkD6kE1nFkSYEOPy9vXFfbLaenwxskta
         aZJg==
X-Gm-Message-State: AO0yUKWhdzMPVRmXtzqm1QKseHZQ/yoKvj5tWu76a9tWMXoOQTj5hAze
	OTTeOCxSbD+T1EjbjIERhKNW
X-Google-Smtp-Source: AK7set/00/XkHimswh8A/lTlMaf9uljLO9Xk++JlggP7Y2nYgIaIkn/kcVov3dPdmMzyvCxW50D7Yg==
X-Received: by 2002:a17:90b:4a4d:b0:234:148:4b27 with SMTP id lb13-20020a17090b4a4d00b0023401484b27mr18089652pjb.17.1677236369819;
        Fri, 24 Feb 2023 02:59:29 -0800 (PST)
Received: from localhost.localdomain ([117.217.187.3])
        by smtp.gmail.com with ESMTPSA id gd5-20020a17090b0fc500b00233cde36909sm1263853pjb.21.2023.02.24.02.59.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 02:59:29 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	lpieralisi@kernel.org,
	robh@kernel.org,
	kw@linux.com,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org
Cc: konrad.dybcio@linaro.org,
	bhelgaas@google.com,
	kishon@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 03/13] dt-bindings: PCI: qcom: Add SDX55 SoC
Date: Fri, 24 Feb 2023 16:28:56 +0530
Message-Id: <20230224105906.16540-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
References: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230224_025930_910889_E41A5F3C 
X-CRM114-Status: UNSURE (   7.54  )
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

Add support for the PCIe controller on the Qcom SDX55 SoC to the binding.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../devicetree/bindings/pci/qcom,pcie.yaml    | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index f48d0792aa57..3bba1ef3cff5 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -30,6 +30,7 @@ properties:
       - qcom,pcie-sc8180x
       - qcom,pcie-sc8280xp
       - qcom,pcie-sdm845
+      - qcom,pcie-sdx55
       - qcom,pcie-sm8150
       - qcom,pcie-sm8250
       - qcom,pcie-sm8450-pcie0
@@ -199,6 +200,7 @@ allOf:
               - qcom,pcie-sc7280
               - qcom,pcie-sc8180x
               - qcom,pcie-sc8280xp
+              - qcom,pcie-sdx55
               - qcom,pcie-sm8250
               - qcom,pcie-sm8450-pcie0
               - qcom,pcie-sm8450-pcie1
@@ -646,6 +648,32 @@ allOf:
           items:
             - const: pci # PCIe core reset
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,pcie-sdx55
+    then:
+      properties:
+        clocks:
+          minItems: 7
+          maxItems: 7
+        clock-names:
+          items:
+            - const: pipe # PIPE clock
+            - const: aux # Auxiliary clock
+            - const: cfg # Configuration clock
+            - const: bus_master # Master AXI clock
+            - const: bus_slave # Slave AXI clock
+            - const: slave_q2a # Slave Q2A clock
+            - const: sleep # PCIe Sleep clock
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: pci # PCIe core reset
+
   - if:
       properties:
         compatible:
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
