Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 849FEC10F05
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 10:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3v//w9qvGEBJqV4W4ZPNgCaWRyN6E1Msp7OicjRUdcs=; b=4vZv79iC0/xW/U
	mE2gu4yTZLac5npY2okPXfxXD+/bj0xib6Gdt1Uj3tp2wOjdIiWsEbLKuZ8NTvmIxXo7Mw2yE4sOG
	JCn2hPp0IYUcKp9JRJwPXbDLhyyosd52mXvj9kqWrbhpgNSGkXBnOxsHGGNdLZd0TZJ1W62t+0YPo
	Qv3gMc1E2fWEEVfhjyeff4AKe+eA2EoiWkZbSnqHUXZIDUJNaZ8zi7eaWTC3jc9JEaqDa7U2LGcLG
	9UP5rRyKBoBqXn9REbCEaEfkUOcpwroZQIn7mMDo/gVZXqoAysBSPrTnMI1fnv+kUSoNG2B5A0cW4
	g4/ItrsQjJvEBU0koFNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBC0E-00CW0g-0s;
	Thu, 07 Dec 2023 10:53:10 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBC0A-00CVz7-2t
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 10:53:08 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-40a4848c6e1so9975125e9.1
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 02:53:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701946383; x=1702551183; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iCKGAHJfEaYYU45TomxL/sg269wwfTen9MuUFIzedOU=;
        b=GU18cnvBstiOVqPjtBpq2ovBXCOECKUVFP47EmPvg/1S5d2Vc4CkWARjdgFpu/FhAX
         8JPmBjYG+k5wD9RN6R3b9ricrztTAyOCNZ2Sg6IN+yAUa7kJBSeGTDxWb3aHj+m2hnO1
         CfJ+3SOP/yCe8K8zbc08j+CqkRJg73veS1oPoMIrKXxnxuKCPoTAd+iWQ0H/xcfiG29R
         JlA1LsVWT+bLKwDlvNbPMB7T5+CLa6dx2EsHdcnpRDHpdlIkawNzMLhrNpexdW9hruZG
         4vaJq8J/mbOZF7FiOeoO8Ys3J5raGw7F3CvbMvh/04JEOYnYcC7xJ9pPqO+a2cC3d6Y2
         Ub2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701946383; x=1702551183;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iCKGAHJfEaYYU45TomxL/sg269wwfTen9MuUFIzedOU=;
        b=PUcTVYA0DG8uCFlx2BEA5E9mT3/QqQMImZgzW38SBddwlimSzts+/vlWVKJ45fZNSO
         2L1Chuenx0wuevj8rAk/KfGDErclwyGWwP6Dx9NYtr8k6gsMjrmCC1CRjg3VMCN5ipFd
         9ibwROpN0CYkwS2D8Z7nRLJhZIE0Hl9Osnqo34L8sBpqqXro6KNpR3o7kiwJv6tHz2WJ
         Ut8rSalgtqfs3CNQkCZb9tfy/YZ8B3Twme8K2c+ZZfL8V83Eo+0A4peYoPi9emraqTGm
         cc7OsOfVP0VoMY8KJtF6EpDxbt4Zhk377yicGgtQp7yqs3GXASMvT9yu0C26LQitPagi
         p2Dw==
X-Gm-Message-State: AOJu0YznwS2J9Fp6MmtAz30t/+OIQxJ3eznOyk3TLdOYezZ8e707C7PY
	GZQ6fem9vRmfjtHAlLmvrx6msw==
X-Google-Smtp-Source: AGHT+IHzp202+dB3Xye4NGf/ePFvOipqgiwtZEl7DYCguexNEkmD96JHXS5H76xdHPO11V9lP4BIhA==
X-Received: by 2002:a05:600c:1992:b0:40b:5e21:bdd4 with SMTP id t18-20020a05600c199200b0040b5e21bdd4mr1259875wmq.99.1701946383387;
        Thu, 07 Dec 2023 02:53:03 -0800 (PST)
Received: from [127.0.1.1] ([82.79.186.233])
        by smtp.gmail.com with ESMTPSA id k23-20020a1709063e1700b00a1db8b08610sm668700eji.148.2023.12.07.02.53.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 02:53:03 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 07 Dec 2023 12:52:49 +0200
Subject: [PATCH v3 2/3] dt-bindings: phy: qcom-edp: Add X1E80100 PHY
 compatibles
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-edp-x1e80100-v3-2-576fc4e9559d@linaro.org>
References: <20231122-phy-qualcomm-edp-x1e80100-v3-0-576fc4e9559d@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-edp-x1e80100-v3-0-576fc4e9559d@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1283; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=n8ZqqMAvPtzdcc+WNuLj5kAU8rnzZCEsot/TFJ/D1xs=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlcaQIB3wgrkjQortdPRoUK1F4EBwZVv4pQXdlr
 f+C0XZ0PC+JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZXGkCAAKCRAbX0TJAJUV
 VpA3EACKl8OPg+nm1ZW8ePqjPuHN9iPzkp9ftIEgCULnE5jiNPXcYOShIVk3qQjpjJxAqsg5qhC
 sKsQf0Flrdv+ekTWnpf0drw6fhSwxoFq+/S/4JgcGjKW82SBSDDS+5TcwTLUennmVAEEgWOuG5y
 X4EzeSo/NkuS8wigyzYe5FWsSvvOQV/Ll5vgubC1g+V6Cdzmag7kKxS1OMVzZFh9ik+xbyb1P3j
 yghxsBadxT2ptRufZDursfZLgAqEQ3qI7yoJ0uRAV8V8TzXG4ZiJ0XZvnJnwtjW+WJNQypnOr/n
 om+M02nT8fJpMb1A2TEynbg6FIZajiwKqT/1JhfAWb4s1akMq9mFeqNgzdApn3vijHQVfRc2BVW
 ZahQgnNlieP3VJN1rIVhu9eDU5wY4wiwaWdit6jB9AHU4kculs9eDtx1v8bxMF8K+Sx3QbKBMuQ
 89Wb4M037BlNWfEbkeizZu4FOPLdQsFPy9MoErAj7uAJuEm465dxjD1RXUFaNsrNAtsK7BZ/iTf
 eFM6OOzBlMKpCnMlFVWzaY/aDKVtGzesUzEpl1JeMZ2tLgpy4sJQiy8zqQEuXoj4i6OBsckVVey
 g4yfFAMP91ShAw6uMxjLb3uMEmD/CfXAruDFmA6RIDGaf0s2RWyDJGQHEggnImHTlS8vlFd1u8I
 Kf9evD9WPZlo9IQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_025306_935755_4F8E224A 
X-CRM114-Status: UNSURE (   7.17  )
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

The Qualcomm X1E80100 platform has multiple PHYs that can work in both
eDP or DP mode, add compatibles for these. New platforms can use the
phy-type property to specify which mode the PHY should be configured in.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index 6566353f1a02..3341283577ce 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -21,6 +21,7 @@ properties:
       - qcom,sc8180x-edp-phy
       - qcom,sc8280xp-dp-phy
       - qcom,sc8280xp-edp-phy
+      - qcom,x1e80100-dp-phy
 
   reg:
     items:
@@ -59,6 +60,20 @@ required:
 
 additionalProperties: false
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,x1e80100-dp-phy
+    then:
+      properties:
+        phy-type:
+          description: DP (default) or eDP type
+          enum: [ 6, 13 ]
+          default: 6
+
 examples:
   - |
     phy@aec2a00 {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
