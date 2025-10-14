Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3673CCD187
	for <linux-phy@archiver.kernel.org>; Tue, 14 Oct 2025 09:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r26K8WDIRH2IbO1BtL/kZu++nVjNxRCxpixT4P4FNEY=; b=Fpc14cn3/87+Nn
	9z9nU/Ou6ujrFZHYO20DbGb+T5kMeJO8TQhKp+fLTKcI0E4jLa6IATr41akJqfMzov2JFpP3yMLeE
	tlYxPc3TWl3e4iXCiCgZOGs9TDgO1klN2cwoj2/FVpJWtkhwFoKX/RKbN9f4ErQYubwMeCjTm0NPR
	Xq+py47izYCBopDzV7FCDDoKiBp6uTrAUgFQbkvTRQ0I6jyLXxkb23fkiek7FMB15/zt2TB2jYsOk
	FxogUvUsnGmmr0aUVdvgZa1eoztQ6uIhXQwLYRyMtu3Slh0o4YLcOJj461HfJs6avml6No1+ILA4n
	Lo0P9uTM+mRPAInZc63w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8bc1-0000000FoFu-1yuC;
	Tue, 14 Oct 2025 09:46:33 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8bby-0000000FoD0-1XAb
	for linux-phy@lists.infradead.org;
	Tue, 14 Oct 2025 09:46:31 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-3f0ae439b56so3032132f8f.3
        for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 02:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760435188; x=1761039988; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KnhRFLfQaO8pIowD5rNcrWOdNtst07qFW/F+KRDikEA=;
        b=mzBLOpQQR6CqzRK/5gXeDCKdbNOB7NlEz9vitvVmflicg4o+N04ceFFm70HDSGEWLm
         +mK4pET/25pzL2fd/VyqyKdAB94udNxAssmdupfw8QdW7orDsjjY7agbuIuHplEAOk3m
         rEQPrThhlZfihjPgpcEibkLcMJYaCuHq1kOCIb2Ax2bkISiydcEBvcRO/jhoB+n3Gary
         3MjKllFHCrm/P3Z2YD5oBH+iHLspuzHLLHHs7unKI2FKUR3w4eT4u7vlUedyAp6AzNAi
         KPNgEs+C0v6MqkK1ZQcBXt+OM+pH4e4lmrDNPZDvWN6kUP6Of5UC0Z/yLt8ReiPEyFLF
         wO2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760435188; x=1761039988;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KnhRFLfQaO8pIowD5rNcrWOdNtst07qFW/F+KRDikEA=;
        b=evKcTCusYwrULLo5NAjrbRf0K0XeL3/Qt8+tewEwKGGWiRew/ojVoto8NzxQW2zCym
         bHPWkRb4thSNmH+5ePr126Trbulklr0ddGjbRtokEi5o2qgHnzGvBkENSDJKdxm2MpHt
         KN9uhZY2hQdbkHQjq/gPvDw7cAFiVpEwhJJvFnc8Vefifa8j2msO1acZLXXeooL05F5d
         bZyhYIAXZc5PiKlIp8dfGEszAeRUO6WP/rIoFUb0xvVX74IH/eT011Y8mDmvcZP0/NkP
         js/18AY+nK+arv9Y9gqgM+/KN/7Fb9+X/4hwVvpfnw5hBEmVm/QVP6f+P3LLwEmK54an
         nT4Q==
X-Forwarded-Encrypted: i=1; AJvYcCVUtaWbG2v4e9Fa/dqG8VQf8KZq1zLl5SJgaxzlyo93UHvt2TOIP2H1DNrPu7XRBVMlU32ARAR0aFM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxNjgWFTJ/PB37Lt/qrSsuRvDpwcnf3x74POpBNtB8Tw/54MxL7
	OLTSunnd8ttuiwvtXGtPH16/diVkSb/3AkM2lEzgMLoTmwGbo/5JiKP2SNuEjHV7I6A=
X-Gm-Gg: ASbGncvaIjIxJ3UzVgt6pvHPfDLZWnH5ngeaVES9SP5OYQbNbOxljtk6VA6/XKVfkW6
	H8ZBspJuJjzUoA++Zbc/HGQc6m0tJ/h0uoWw5b3IMNy93MQgBw7pQLLiWYrUBZpO36OzkGJpkaN
	qwcvCSaYwGuk4uQSDHHvqAgPLDy1EcRLRatGUOckcyOCJtX+14Ru5agXNG59M1yKn9weGDZ88nL
	TthRdaNRVxCl9HDyDPt8s4/waBemcZ6RGJ7wjSW8AkEcAQFhbIMwC88dwJ2QyLHLz3BZM1IgVn2
	QedRgQTZyURKUEFTiOZ3qB5vXa/5kvu/0tWHnWVwkdEZmE5zpX73iRNDJuuBOSp5xHIeMO/vjHP
	PlFMpdw1FihC+OvKEbe9IuPkjr/Xkuk0Q6ZkpefK49ik=
X-Google-Smtp-Source: AGHT+IFXhmtv8zqtFThQ4wP4GXOnS4SW/hYu7K5sk0wtbU92NOb2q+yfXz84YaQJJ4YvyUnKm5VinA==
X-Received: by 2002:a05:6000:40da:b0:3ee:15c6:9a55 with SMTP id ffacd0b85a97d-4266e7e00b8mr13699381f8f.34.1760435188415;
        Tue, 14 Oct 2025 02:46:28 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5e8b31sm22866442f8f.54.2025.10.14.02.46.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 02:46:25 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 14 Oct 2025 12:46:03 +0300
Subject: [PATCH RESEND v3 1/3] dt-bindings: phy: qcom-edp: Add missing
 clock for X Elite
MIME-Version: 1.0
Message-Id: <20251014-phy-qcom-edp-add-missing-refclk-v3-1-078be041d06f@linaro.org>
References: <20251014-phy-qcom-edp-add-missing-refclk-v3-0-078be041d06f@linaro.org>
In-Reply-To: <20251014-phy-qcom-edp-add-missing-refclk-v3-0-078be041d06f@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 stable@vger.kernel.org
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2071; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=OaVD3kgCGNuvepXOAnIi/Jmw2IJiuqOadOslMs/qPqM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBo7hvjUncltiOMHWO3SuDDxpda2OpYU2rLNm6C7
 uQpVNVVCjKJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaO4b4wAKCRAbX0TJAJUV
 Vk96D/4w36skQobp628M9KrofHekiWoDIJ3lHS3GsMM2ZGVAg0RbtIH4G+JPIFjFQSL5mfBssp2
 I/DDwKegs3A8WsG2e1cTvD+2I7KDzoVFdeI6t0C0VpXkWzfXjqjdC7CFyAb5TeWgIFAJSyR6JY0
 hRXgOFWOHetXfZlKd8raA21/+EGY1nd2D2KMI7rmTahpy5cTzoVPJUSf4hk67w+0orv6WEv0PBH
 RlKfyQiQ3CBKvGYqqe9DB5VrK7RxDDKn6/GxL2U1pR0SLCXhJJt4/Bcj123zYRt2jWTSPFiPsPh
 TlTVBnPBfQ4DUmidUafFXLDsg/ykx/txAxTef0OFwzGAkhksy0icxt1E9nX++LvTJuwo+BW9AF/
 0qckAxKWfFl+UnMBqs22oCpEWXQbRvuRuQ6mweO/1p1N7X592GMY1ybd7kvcatW467+LNnXaQym
 gnxxlJc0JNKNq0RpcEwpccV16S4MCC2XPtnnk48qXU38JaYl2ArAL0pNscuiV00SQEUtJO9OTAl
 1reMU7ez1xyomjSLc476wrlXd7f1MnxpZ4zrg4ykRWgVHM05jQ9il+B7Oy5inWz66Xo1bjmUF81
 5+TJb+lPkgmnLbtfulUc1GOY5mdni5JIPpIssrBWxB2BaIMP2XwToyWBrs9OWQWnKubzbQ/kIky
 mMFV+QUqAhamXQw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_024630_456958_9FDBC8DC 
X-CRM114-Status: GOOD (  10.37  )
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
