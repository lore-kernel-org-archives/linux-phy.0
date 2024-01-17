Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB0F1C47DA9
	for <linux-phy@archiver.kernel.org>; Wed, 17 Jan 2024 14:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hkoCBk1fLFzLv466f41CRqzmzvxQ/iB4fWS47fqFmPU=; b=r43siofRdPMLIT
	3P6mU8WEaD2XUypP/RkzYfuJQCIR+JjEdaC/JzMe41BxXVdYqdXKaZhvVZG+V/wfNW8mwSB1GOTW5
	eD9Q3IRWPbIwOANCB66usoxtc1B3eXy4q8rD3Pbdt+zrCK4D6qPWg+96PXd/lxeMXIAPEkt//hFKH
	bcBQ2wK6zku8iHHWgGZDFVh9bBq5t363lFWYYxTgu2GGJRAmLAxs03pzld53y8nRFOa0TpbTUsjM/
	MkTcC9YrhiZxZLKHM1J9byr+xauzO2Lijbqdz6BQujJRgXoxu21EU78RGu0KPKMFfIULEPBCjlbVg
	zkpb6YF09IwtU6F/qFSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ6Wt-00Gr5a-0k;
	Wed, 17 Jan 2024 14:04:31 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ6Wp-00Gr05-2q
	for linux-phy@lists.infradead.org;
	Wed, 17 Jan 2024 14:04:29 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-50e835800adso12468574e87.0
        for <linux-phy@lists.infradead.org>; Wed, 17 Jan 2024 06:04:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705500266; x=1706105066; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=772vTg8hfgBaDB+Qe7kc5uSF/E3F4uLPYVgiAcwBFyw=;
        b=emYdWDUbTZnFXnYpQR+wtq7mM3SVbQZiMVoYja22C+2exfPQPnBmU6kNrZTWPRWnz+
         B5Xza+B2zUyBvkiZI3ae/2YEM9xl/CtHJTvU2nc140LQIBqgxGojNbiIb6670QIr27+l
         yOFn61DMtQdLVtHM4kNdUFHZfsUsBdFYSCEsjhc3CABm/onmivbrkWnxx83TgGuOAzo6
         CyZO1vT+vdYRUfR/dWxDYA+PSqNC8Zc2a6qShLAe4rzQpzRQVkWqu7ejlb03/aIowevV
         jgWMLrfA54izxSrHv/I0dHDkkq6/Ss4Q0sApw4tisPpYZFcb680c7fRsQ3SYVxTanHU2
         8v9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705500266; x=1706105066;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=772vTg8hfgBaDB+Qe7kc5uSF/E3F4uLPYVgiAcwBFyw=;
        b=Kbsxp9mj9WTxLm/QliPB/LuStM3g8WLkXACsJ6Y9ChsPd3cbX5EUvga96+icf47u3h
         d9Un8wQ3FCkpRok8r6dfLiUIRiGsSoXzs7Gf4VNNovWcaSv1XCw6Kp7FkDVvbs2bSvL4
         ZiPanmeye9qmQC8YuHRKInLe16emDIiex7oUgIInr0+vVHnGzHSjkwg7NXlCHGuylb2j
         ipXvA694mVk4lA6DkqnRfjwoPdvJXKndOTdLQzDjkS/Qy7qbaZMfEF4h2OoqxtU+ZEtx
         EAfFwr3Gzb3wxDNjhIoj+hKQ/hd2oLXmRE684yfcT+DaQ9kfTl1ZyZ0jS88Pkqfittn2
         h7WA==
X-Gm-Message-State: AOJu0Yyp60kAJu4zry24ZuB1Z/Z28L9geUl8vCgHIkxDOY6ESeUazmE9
	znGzdDEiA2ceQSJDw4p3t+QMYqtQr6jlKw==
X-Google-Smtp-Source: AGHT+IFkPW0tH2jtfBfz4Aip9qhxOYVsIvceiz48wRBf771jjy/Lori/rlGUHmxrapPVDLJh3wJXcA==
X-Received: by 2002:a19:2d0c:0:b0:50e:82e7:912b with SMTP id k12-20020a192d0c000000b0050e82e7912bmr2731161lfj.138.1705500265979;
        Wed, 17 Jan 2024 06:04:25 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y29-20020a19915d000000b0050ec7a26420sm269711lfj.204.2024.01.17.06.04.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jan 2024 06:04:25 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 17 Jan 2024 16:04:23 +0200
Subject: [PATCH v2 2/6] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: add
 TCSR registers
MIME-Version: 1.0
Message-Id: <20240117-usbc-phy-vls-clamp-v2-2-a950c223f10f@linaro.org>
References: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
In-Reply-To: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1670;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=IIYXjLUeMbWnutvTtYPCUZAo+vNBHeW5XfLCEiQbpb4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlp95nRXFznK8SZhS163IK0W66kvR4acev8hG7T
 X5LLlH1ILiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZafeZwAKCRCLPIo+Aiko
 1U+7B/9zuQGfbIQc1PlKK3gMFlCrFkYzIUTVKQvONlpjQVXipXYInTZdFNHQpweJi+j+0Fqm9ge
 zQbW7MriaaywehjRX5Uo0zmLwPKxcD16v0l73DHPFhz2Uf4a/sVyhnjg47DmGYWa3TETWak422v
 wCtNL8bv0RogEl92ek/U9Y3oWWMcH1V7L625tkIuhp5UX9vgkqeW7Nd1xVSaCX1R/zvTcO8Jvab
 PWS94mlciV207HIhhADnY2n26YF3tZOfKgTNTlm7sfHYQzYaKhSq33CEDWfej4qCxdCBMV6IZVe
 rwaBV0PZ8gIHo8nOYfEl4oApNo1vBQ6Ixwingqwk7L/PI0tg
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_060427_962403_65A7E8F9 
X-CRM114-Status: UNSURE (   8.42  )
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

The QMP USB PHYs on msm8998, qcm2290 and some other platforms don't have
the PCS_MISC_CLAMP_ENABLE register. Instead they need to toggle the
register in the TCSR space. Declare the registers accessible through the
TCSR space.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml    | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
index da5d4cbca24c..140843347d1e 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
@@ -55,6 +55,14 @@ properties:
       Flag the PHY as possible handler of USB Type-C orientation switching
     type: boolean
 
+  qcom,tcsr-reg:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to TCSR hardware block
+          - description: offset of the VLS CLAMP register
+    description: Clamp register present in the TCSR
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
     properties:
@@ -78,6 +86,7 @@ required:
   - "#clock-cells"
   - clock-output-names
   - "#phy-cells"
+  - qcom,tcsr-reg
 
 allOf:
   - if:
@@ -148,6 +157,8 @@ examples:
 
       orientation-switch;
 
+      qcom,tcsr-reg = <&tcsr_regs_1 0x6b244>;
+
       ports {
         #address-cells = <1>;
         #size-cells = <0>;

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
