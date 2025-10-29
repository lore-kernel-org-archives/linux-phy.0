Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1101BCCF9E9
	for <linux-phy@archiver.kernel.org>; Wed, 29 Oct 2025 13:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r26K8WDIRH2IbO1BtL/kZu++nVjNxRCxpixT4P4FNEY=; b=FG/L87oBZIJtxn
	H09uJahLZhXGA4WCA2isSFZR7fy73y5cNIK8UknHuSn8r0srEHo6cIjPYW2JyauYJpLgHwToOBQwY
	PIscTCBMZbpgjR18wMe88SMj99TD+DgnxGvuEOr3FWKM9yAsVizCHcqpWfbfVnlbN2bTs8Odow/YG
	5uDq1IqANFjWpRe870zBks7aTdXxZ3HR3mFOMecl1FqspUA5Vcs1orkX0VAhZbXBGIGTVUH4stF5x
	ECpqIGiSVP8l9t5g8tilUoBCvVOTZ2+905aJJdbp65y1Hn9J5X9NlC9BteIPpF1MrfyUjdpywbwUZ
	26AyKZ8qdR43oqzUHhsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE6HJ-00000001NOw-3O7A;
	Wed, 29 Oct 2025 13:31:53 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE6HH-00000001NLD-08i8
	for linux-phy@lists.infradead.org;
	Wed, 29 Oct 2025 13:31:52 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-470ffbf2150so6135555e9.1
        for <linux-phy@lists.infradead.org>; Wed, 29 Oct 2025 06:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761744708; x=1762349508; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KnhRFLfQaO8pIowD5rNcrWOdNtst07qFW/F+KRDikEA=;
        b=VlKq7jIpTvF+4RgyzxD0dOKxPThI+BqtaxkPXWH4Q87aH7zzxd0yxyex8oleHJn96s
         UGCvHaxbql6Wo+0laujaufcRXSXegnCNB9fJomRF8+1tI3Cscuts0tqCRXGP89NXcKr/
         z03411qvjb7oM7ODjMAVle492KyhRxWzqkzrDBkIiGjEm5IYfTFIpXY7Mjy188t6cppR
         ZlmlLNIDYN8iGViWPDd5bTRW6mCr6UZP7thqaO+1xi9s2xOKLRziLthP6iEIzMMUO5BG
         E2UryrruFWJoHkDC17VBTUpFMmOYF8yzAV0++tKe43VTztfsqO7YKJjQX03DOXsagqtE
         9ISQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761744708; x=1762349508;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KnhRFLfQaO8pIowD5rNcrWOdNtst07qFW/F+KRDikEA=;
        b=SA9oL09wWYC+gNu8Fv8+yQ5hQaOt5hZZzQVydHheiNIlNPXqJR/24dAu4n+Mn9FfQO
         cBa6R7OcLBC1t756FuQ5Of4pU2I9z4GoIrFyY+TwXyP5VV4ZV09s1FWcRm6ScSJdFi1V
         0/DaO/+WC1r3C6EIf28JncAHeBFjqWSDmnnenkeweacah+RFw6ZUVmNapGDSg7U4s+u9
         OzNK+qdrkjHqGqox2hLAvke1pwgiXtGXVM938+XXDiJSRZzW+kRXYRb3M73QbTaNcuWK
         cduYEc/EsQGD32wdHmJI4/QYp29ps+kyV1s0jnsgKshRJ0PDvFmoenVsP2+Ek3SCaIJI
         bf1g==
X-Forwarded-Encrypted: i=1; AJvYcCVkpwkTZTCIG4XbBz3hQTR4aEUEpUBPgQ1n4hbRnMqUPVysyHrN7qP0GAdfDp0L786V/4LxAIhSWXQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzCbVj+st3b+jCW86kC4MTa9RVMs7EuzM55gRT+x6/WeVl6JP4d
	4yQ9mEIiS7RpABsIK0/QpkcXrgMDa2Ssy/74/q+TlrjhpNeSDVB2Cwsrn7YTVL9cWelRpuUw3a/
	jYbHD
X-Gm-Gg: ASbGncuvuM00DqvwZzlNBy5H3pq18aN8fLI0ECwCWBTDCOXhtm7bLUfSl1IaAIEKrkV
	GoCyDpkUcxUYmj5f/CHaIVl3Vss6fIF8rdZ3NdFmATsHQYtn66eK6HnPXSXehPh0gAnlhTxhWpc
	SPidAAeAE67GCVVKLToReQADUCCyz22ixPGX4Kh/pUnciSs1qU38RaRYRzhCQZsH6uEk8BjCff4
	G35hpiy+r1e87jZkFT0f+tcc0Q2+3v8n0Wdbe2jhq4HQQIjXCuE97Hnu+IHq2GVZP6nSAURS6It
	HVvP2ZIrLcxyDV5BGGKUSKYZnTYPdLuFnhIFRKdIlBziiMl78MbIBDbb4ccaxbajl5sAXNHDmJF
	jBLZjjBVVlKqTgIS4vpM2RLv3IfXTnnIV+12S03zNhp7PsT+s3g7T5k4hqIXcRYwLKBJp4DYQLw
	==
X-Google-Smtp-Source: AGHT+IGRn4zHwrqhCcsxbpqJ/tXlI3zCfbm22nzwB0Hi+tHbQbFzq90PEA8PGg14+ny8ngKkYHBdrw==
X-Received: by 2002:a05:600c:19cd:b0:46e:3b58:1b40 with SMTP id 5b1f17b1804b1-4771e5db10dmr30087475e9.4.1761744707943;
        Wed, 29 Oct 2025 06:31:47 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4771e3b7cb9sm58273015e9.15.2025.10.29.06.31.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 06:31:46 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 29 Oct 2025 15:31:30 +0200
Subject: [PATCH v4 1/3] dt-bindings: phy: qcom-edp: Add missing clock for X
 Elite
MIME-Version: 1.0
Message-Id: <20251029-phy-qcom-edp-add-missing-refclk-v4-1-adb7f5c54fe4@linaro.org>
References: <20251029-phy-qcom-edp-add-missing-refclk-v4-0-adb7f5c54fe4@linaro.org>
In-Reply-To: <20251029-phy-qcom-edp-add-missing-refclk-v4-0-adb7f5c54fe4@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, stable@vger.kernel.org
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2071; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=OaVD3kgCGNuvepXOAnIi/Jmw2IJiuqOadOslMs/qPqM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpAhc5D7kO3j3eRdI81B+UUhhlT0pWgYGxzBFKH
 1XVLjPRw/aJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaQIXOQAKCRAbX0TJAJUV
 VpgNEACVluBKTG0xEM8OpupdlLx/4eIAhwaAgAXEPb5H/c7j4Fe4yyB+goY9ohvq0/8auhDgy6P
 /485RHqTGuaOFOlkd618sKWbNS9jLmSVTRtaJGhy1Vy0WpmCSQy7i2CAsGWUbBU6om+feG9VTWM
 jTI/cKgAoZIxY90xBC+aW/bLc92eSlLoll4TJTcEA/pJc7oKx9AfEfZjo0tVOyIz91Z8Ze631yz
 tO5NzCNKB4qu+SsS5xNKCFypc1sNtPYg5rRHalp1vMFeoIpVch9G7dEG1EnLwhBrfCGNbmPUJ4A
 5XXFYQoItqvzFzK2z1fhWNANQ49hXVmExrnPcQBl8TjU6kEO6b2xcwdoEXxvFfYu9ZMAJWa0XHd
 d3H+bqvclZdBoShEoauQyOt88LK/g3lBlUunRqFfi80WDso4JBCNemahdOnbSmDL/kVa9pou5JJ
 Yf6f12x7B7F5ZZ5n9hMQoTq+c/n7zfe4SbPeXQItjQ3oKrvhWTamp5V+/iF3Jg5YKwFSnQnHF8k
 0Ov+TcNq26mUdaUZ5D8ktHswfE/KS589kfEGjQDmqZxjYgbraLcU5NwnVOnidHOM3an9j+Hu43A
 h+fuYYy+oMWZJwVW8f6WY5KgfgEOwr3Z7CwL6LaLsEEzDMTn1LuLwCaqNF8kAXFi4ZxHx4ezt87
 oEdBrFuJDTGfI6Q==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_063151_129141_31F38EBD 
X-CRM114-Status: GOOD (  11.23  )
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

On X Elite platform, the eDP PHY uses one more clock called ref.

The current X Elite devices supported upstream work fine without this
clock, because the boot firmware leaves this clock enabled. But we should
not rely on that. Also, even though this change breaks the ABI, it is
needed in order to make the driver disables this clock along with the
other ones, for a proper bring-down of the entire PHY.

So attach the this ref clock to the PHY.

Cc: stable@vger.kernel.org # v6.10
Fixes: 5d5607861350 ("dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles")
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index eb97181cbb9579893b4ee26a39c3559ad87b2fba..bfc4d75f50ff9e31981fe602478f28320545e52b 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -37,12 +37,15 @@ properties:
       - description: PLL register block
 
   clocks:
-    maxItems: 2
+    minItems: 2
+    maxItems: 3
 
   clock-names:
+    minItems: 2
     items:
       - const: aux
       - const: cfg_ahb
+      - const: ref
 
   "#clock-cells":
     const: 1
@@ -64,6 +67,29 @@ required:
   - "#clock-cells"
   - "#phy-cells"
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,x1e80100-dp-phy
+    then:
+      properties:
+        clocks:
+          minItems: 3
+          maxItems: 3
+        clock-names:
+          minItems: 3
+          maxItems: 3
+    else:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+        clock-names:
+          minItems: 2
+          maxItems: 2
+
 additionalProperties: false
 
 examples:

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
