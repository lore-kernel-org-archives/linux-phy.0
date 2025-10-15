Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14DDACCD192
	for <linux-phy@archiver.kernel.org>; Wed, 15 Oct 2025 13:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uU77H9ZcwjNnI1Bu7pOmlYRcCFaOmqgPZZL/vwhWQ5o=; b=C6jxek0Zsx+U3r
	5C0VJQGpXPROudQDLro5giBocz4TstXIvv7wXKAw/SkmMu6AG9adfvnjMO1INLWL96EhyhwKbQs95
	+qAixQtIjdzxoamQR2NCCvgyKF49KcmHX1+laWGJ7O9VXQlE8ydMHq93XbToN9sxnIbUw1ppvOsbG
	UUouOSVG30Ovs1RoKunqD0y6O2lIxytQYOnr8R5mQu6bDFzjkqp8HtApF/Ik1G0WSBAY2Oqm3KW1j
	XJYk53aBXA4ESMNR4Vx//YTfhjHFJ+Gzi8l3Qhi7TrhQQu6TwhYESwPROVf5hNLhxo+pRUmYOB5vP
	b5LnAIkYzqe+gBx0jmlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v91mr-00000001jt4-3WJu;
	Wed, 15 Oct 2025 13:43:29 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v91mo-00000001jqy-3Zj6
	for linux-phy@lists.infradead.org;
	Wed, 15 Oct 2025 13:43:28 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-47106fc51faso5492435e9.0
        for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 06:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760535805; x=1761140605; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ByogZXc14UT9n3SsitnEg7RC0BO7/uaOAr3B9hBWHyU=;
        b=ii2g12ldUA2pD8x4S+eoTUzn4M2K+qDdAu7N14oLndC9OVepve/oksyjNe7uL7nVcP
         KXVYscxtJVsBmCEMxCthlIhV1m0q3jqgKD++e/FOJS7PThrBhfJsQOgxHeL8+i+0X9u0
         3WCRzXUdWOcFHYBkEWskuhcxS/viu5VRhtkJrh4suMgp2vnYsjEaYdIZ4cSmrpaV94Wi
         +mCbmQ/KmHCUWeITHBfvPROwMmtoHr3+WWjv8ejJiZwIHGZtSXh4grkvzzhSfbkdhgyi
         SCv3PtxuUGhShakR51V8XTlvSNJ4ynqKjSxg+7Zi/IgpBdWEsMp8R8fSJTXkuw5E99MU
         DLuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760535805; x=1761140605;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ByogZXc14UT9n3SsitnEg7RC0BO7/uaOAr3B9hBWHyU=;
        b=j2jW44O/059FXcMEdUh0/ZcN8iYXXJ1X2KMd7xCtLljoL3NAGZqvj+5d3nMeo2ov/2
         RbXhwgvFrMOlrFYHVg7ynm3XZNEXM+dRV59ET/c2t2zfVWTIhc5l1OlGp0c6Ik7EPc+Q
         fYHDqUAB4qKrtR8J/JTjLvCyBHdpRB2ITUepQyKqbAUpxCJQIrmda7XVh0AQL+Xx8Qqe
         skoj4KFB/i4AH5S4dbjKfumPDMjeAZv8ZsxI8k2XK83xMzVMiw+eVSX5UGbjbb7pfzRz
         cHNkrwCSOPf9A1zcwTJg3a6YSIrsBVh+NGY3bLjgfdeuRqo4yGNykaNwMH02TFuV0AY/
         nKhg==
X-Forwarded-Encrypted: i=1; AJvYcCV8hHjiTIPtxj8vdr4iWgd34pqb9ZtHqapeaL7XMQbMhrvTOwRxLY1DKfHrHNK/lfMpUGFOHXgdhTU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz7cG9qh20puzZPifbbf0axl4I6oGT66CfSht4++0GWVso/SOwB
	tGF79aiWKDlRmUjalz6wH8BC4MQHunwI7WfBiPoLlHj071IxKCTva9D6FIWXE/e+jpI=
X-Gm-Gg: ASbGnctvFQUhAdrjLat1bjTCEtq7ZoGyaCV0AFFZoHJRS02KidhYEcx5LUsmkXT3Nl2
	aVSqPxya5L1FL9m/tZzssqda85q/WXDDroMuyV+6jb36ZX5CQags8E3MYYM3099CxKyP8mvAfoC
	x+CxEHWiCOfBLYLWrdB3GMJ9oOwXfuuYw3MylG0PLvGiWeIF7R2vlhIHOGodwMFLdwSNXqsAG4J
	rYYFSpg6Z3d79uKRka6tATWj6VmarxothZsp5HjJamTAGaOQsQuny5zGwDHAjmfv8enqDLzB9qM
	j3cnc9msCBmPIKwNn2u0ZfbwzBlMCsQHov+G0wZsgB7BOK2qdrgTrmJnc/1qgWMWn99NrcViGSi
	4yoRWarmaJvavm74V4+Eg+pJcyM+408ES0it0CQNv9OI=
X-Google-Smtp-Source: AGHT+IEdJvwQMAzflMvzw9Im0rtdAnrqJe/7LKsaDEAVa+Pj9LNw3qX8KbdcOXs3ZMt7/aHq4vZSwQ==
X-Received: by 2002:a05:600c:8b41:b0:46e:4b8b:75f2 with SMTP id 5b1f17b1804b1-46fa9aa2209mr203799815e9.16.1760535804923;
        Wed, 15 Oct 2025 06:43:24 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fab3d2d65sm174180795e9.2.2025.10.15.06.43.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 06:43:22 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 15 Oct 2025 16:42:54 +0300
Subject: [PATCH 1/2] dt-bindings: phy: sc8280xp-qmp-pcie: Document Glymur
 PCIe Gen4 2-lanes PHY
MIME-Version: 1.0
Message-Id: <20251015-phy-qcom-pcie-add-glymur-v1-1-1af8fd14f033@linaro.org>
References: <20251015-phy-qcom-pcie-add-glymur-v1-0-1af8fd14f033@linaro.org>
In-Reply-To: <20251015-phy-qcom-pcie-add-glymur-v1-0-1af8fd14f033@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Wenbin Yao <wenbin.yao@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1525; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=HVFgQkDcaeo3PqpmL4D1vFEkuL9MmnS0hS0eZyXaDjQ=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBo76TyzVjrNcOQFFfUS0aHr0ePAp/hK4fhn1+rV
 41VNalrHmKJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaO+k8gAKCRAbX0TJAJUV
 VrBuEADJFwj9fxmLwEXaqLuXTaNf4FRLP/gVP+JCozt/cA2PfCZO0zTTX951h3cHo8qodlDDP8Z
 YffWvqt1F+ba/AgN3OMAJS1HKEPRlR6nwQjiVHGsGarrNchy7rOnOzCskOOoi1qDtJTfYwrDC9O
 ER9mD6uteUkcTMtftbJ6sd8AYZeW2Fc54QsMnJqObUiy7mCwzFP72GU+T+rqXIruXalpPrsqL41
 5o9gCH2uIym5VVvbGbz3ebmZwIINVWVUErUjEQ57AFeVUOiTMVCvyRqldb51RNFbHO/g49p48TB
 oKnsnf9GRpi6sfUdftmt/mImWHdpuSynsQe1Ow6H3QIsYMY1ALmXQy22vdZcpUtBH+j7QLr+0KD
 GB1U8lZV/rgyxDqTQXrjoKANXNetGEc0Gh0FeyOEl5p2F0rCaAZVIovK1j0BoGL77d0f8kYqR2A
 yzTv3kZq9WLjmJd/4eR82NcCz7Z17tP8bv9xlB3BjXDi9uN5bu9TYMbGrl1bEaNtTRDRsG2psNf
 IJG+8TP97hvwaYBMCo/LxlGzF5oxpR2MBc6BEmkQGXflntKhYHlstEAXcziQIhTf0jEqMjMEb4Z
 D1jkDmk5PbpYAZnXiAXMC3FpAbZwQFq+ryT2Fi2G4VQQkVoEhhfL0QQ0AfCMqRQS6htttsgidV5
 4HqOZZS18/Cn6mQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_064326_910114_4D854313 
X-CRM114-Status: UNSURE (   6.57  )
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

The fourth and sixth PCIe instances on Glymur are both Gen4 2-lane PHY.
So document the compatible.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 3adeca46d9aadce103fba8e037582f29ff481357..b0d1efb84fcf5abc3fcd9146f89c903a4ec84dba 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-gen4x2-pcie-phy
       - qcom,glymur-qmp-gen5x4-pcie-phy
       - qcom,qcs615-qmp-gen3x1-pcie-phy
       - qcom,qcs8300-qmp-gen4x2-pcie-phy
@@ -179,6 +180,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
@@ -215,6 +217,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
