Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81CABC46CD2
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 07:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2i2h9X4eNJS+2xUJdF2yYyoVbXxkwvbjxPw7k1MHCPo=; b=FXfxtmdK/C6iiW
	eiUc8Yfl6+QyjXmHjMVAAqKLjDa91zeBSMPF7DEYfyDCwYMwAqPPUp81IyYZq/G3TrrPDDaQdjurc
	NT7R2eYOvwJ+bjDY4DiVR+iMxff+pSV06Fo9+aqURt8fyeaG1IsygqUb7jlwTmL9K2TlYxq1p8+Cr
	2PyHPJUalXMl2XbhgFdv7EEJvvrIFt+wp7Kajf7YJbchmbG1DIrkEX5hwP+KHBnVICI7w7qaCj0sV
	NQgLVAn0Kv0kjY0JKRrBDTtC/XG0Vo8Vj7Bcwy20ygmVdPFRKvoWAEetpLDaBidTTkX7UqK+BMZOZ
	YJU32yXnx8m61sDQY1YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXoa-001sIr-0H;
	Wed, 24 Jan 2024 07:36:52 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXoX-001sHR-2C
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 07:36:50 +0000
Received: by mail-pg1-x530.google.com with SMTP id 41be03b00d2f7-5cddfe0cb64so2613776a12.0
        for <linux-phy@lists.infradead.org>; Tue, 23 Jan 2024 23:36:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706081808; x=1706686608; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=acrJlYqUICjl/fNKMSHxOuQG7AfEPQFGVB71vx3dR1c=;
        b=MLWbHOohe6ctmiblpT4FsBdsaSJscuUI1ChtS2tqR/5DPc3PUEji6u50KlQ8Xtuc+5
         r0UiJkxFupzqWMfVy6LcfmaAiykIg48+MQpEEx0qb66awAJBtdyanvLvOhmLinkTm8VL
         xZcQV8jM5vDOwfUcY61uJPMc60mEbsum81we5TAJoX/AEgei6Kz6rwsZsh+5PC6sjJvK
         3AWFZfUU6Nc19ZBlnnyXseduzg6QHRQB74dnL/mqo4DNebWeyhMCASjL8Y3//vGzOzch
         wUThFZ82YnrcaLOquxbd1cf/pScaZ0yKK/j/GKze4DJec/yfGRUx4qqlIkYx3h4n38XX
         yq9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706081808; x=1706686608;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=acrJlYqUICjl/fNKMSHxOuQG7AfEPQFGVB71vx3dR1c=;
        b=JG6o4/8SRSL6R6MDWoxaGAxDGI9a509wyrBKp3uxwAayqv5asDI9j9dK4ptlOye8Cr
         yvMngO1MCoSIz0HLid5YLN39Hon7GUAyJgXcYS4VudX9ZNaDMpAXifQBfB0dVhrrgmvG
         5Bmc5o3NSDT2MYJ404AqVbNF81Gz9xaONyrnnMgyB4wH+JuI0o1Jk25hT1k8LiqhHp1Q
         D3ZxW4RI2e45wxgwVKtro8eSQXLqIEBPfT1XT8zdzR+Z6js5r1MxYabbAdR4vLrEt1nc
         OkYlqaWmXvXIZLoC55ygUdmKhwITsaf82czZNfpE+WSYXyw8c8vQFxfsF22OoAfIFJhb
         CHSg==
X-Gm-Message-State: AOJu0YzSM2KNGwam1EeLjnkwYMVUut8lDfFD6BOcysWwONU++rZVkFgg
	pNm+J64wPXn5OfQHOX1iWb9RARB0bAfWUC2VN0MMxXUuLr0P5wtV4kcbPwgE6A==
X-Google-Smtp-Source: AGHT+IHMZADYbjyE70v0RtIuM4joKlEWmfgzB62tpW1UDbeUqXCniEdLIob+5sbOtqxUtYoqeFybMg==
X-Received: by 2002:a05:6a20:bf03:b0:199:aeaf:cd3b with SMTP id gc3-20020a056a20bf0300b00199aeafcd3bmr270676pzb.42.1706081808139;
        Tue, 23 Jan 2024 23:36:48 -0800 (PST)
Received: from [127.0.1.1] ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id t3-20020a170902b20300b001d726d9f591sm7386982plr.196.2024.01.23.23.36.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 23:36:47 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 24 Jan 2024 13:06:29 +0530
Subject: [PATCH 01/14] dt-bindings: phy: qcom,ipq8074-qmp-pcie: Drop
 PCIE_AUX_CLK from pcie_phy node
MIME-Version: 1.0
Message-Id: <20240124-pcie-aux-clk-fix-v1-1-d8a4852b6ba6@linaro.org>
References: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
In-Reply-To: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1433;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=/R7t+UW6ZmKuKk7MIzT+d0YPo+66e3175rDe543o5Ic=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlsL4CiEXvEQ+narxvebS5XjcYmsO6QpgRHqHvp
 rAqTcXLWsyJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbC+AgAKCRBVnxHm/pHO
 9eoUB/9jif/45s9Im3bQE1b5z3netk6pqcfdn67RHHTYUyCIixCOxMKgvmqEN9n48XIP/d9RFRt
 R7IlQxs2liAg57al7DMCRjYQUeAkMXAu+cF43aY+PxK+xXa/QBy1Tb1KT08qC5AhLmaGDjYLlmL
 EwnWwzX43aet5J+7NxdvgbtPxlVkGGDAKrroJeWin7T02c47+/915MJ+mjIFnWdHUX2b+NfFjm/
 bnSiNEf73NJRZjPFsug7zRq63JB5dG2dONZPsogzL6Plym+hinqwcGQnzOTpSJBU8QFy9SUJRAy
 SDiAHnJUf63xHOazM9doqVZJe5OXjdAJoRCwSitEo6Dr2A1I
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_233649_718362_65860377 
X-CRM114-Status: UNSURE (   9.01  )
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

PCIe PHY hw doesn't require PCIE_AUX_CLK for functioning. This clock is
only required by the PCIe controller. Hence drop it from the binding.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml       | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
index 634cec5d57ea..a953ac197dfd 100644
--- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
@@ -25,11 +25,10 @@ properties:
       - description: serdes
 
   clocks:
-    maxItems: 3
+    maxItems: 2
 
   clock-names:
     items:
-      - const: aux
       - const: cfg_ahb
       - const: pipe
 
@@ -72,11 +71,9 @@ examples:
         compatible = "qcom,ipq6018-qmp-pcie-phy";
         reg = <0x00084000 0x1000>;
 
-        clocks = <&gcc GCC_PCIE0_AUX_CLK>,
-                 <&gcc GCC_PCIE0_AHB_CLK>,
+        clocks = <&gcc GCC_PCIE0_AHB_CLK>,
                  <&gcc GCC_PCIE0_PIPE_CLK>;
-        clock-names = "aux",
-                      "cfg_ahb",
+        clock-names = "cfg_ahb",
                       "pipe";
 
         clock-output-names = "gcc_pcie0_pipe_clk_src";

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
