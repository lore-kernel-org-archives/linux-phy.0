Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE399CCF9F0
	for <linux-phy@archiver.kernel.org>; Thu, 30 Oct 2025 14:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JY3CVBIFLJOenSaFCKaqrTMiehnLrkUzX7d7v9KZm6A=; b=Xn7PD5ghlyOmgm
	7mPrx2GIZz5yDE4cZpf+Mwu4g7okWlXd1BA1fIOMiGziYSSURiXiNrjpbCjNe1xH7n1ziHcRWVAf3
	fnXe2D7W9TWhQRE4osTdydIXU+9sMBRagVTajN+v+tAfVVDkBvBxQCFk/DCTbeq0AW3o7giuseYR3
	zfGjD4dVSOHgVux5tj2+XmKABPbH1G//AxaaYhTxrEMnkiqMsvpz3wWZIDi8YtSiBOo4VaQS8hSDq
	zn9B0xSb1Jdb8jMm6++ermZMY7n2MlZ1Hg1UxUtB2BHuTXN0psLSJyeVTuGR8z32eb2W6v0ZzipFZ
	ukjKeu7s2Mcx+bTbknxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vETdy-00000004IuU-2338;
	Thu, 30 Oct 2025 14:28:50 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vETdw-00000004ItL-0PSi
	for linux-phy@lists.infradead.org;
	Thu, 30 Oct 2025 14:28:49 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-475dbc3c9efso7890575e9.0
        for <linux-phy@lists.infradead.org>; Thu, 30 Oct 2025 07:28:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761834526; x=1762439326; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nzUB6K3HqPfS+X1e/axWNEiK+lQt69uG0iUUfrktjgc=;
        b=wKnTdTxmAZP1Un3+wMp10+Mqa6BV891NcMPip9oxso3TN1/9inuScFcHlOYSMxIqjl
         Po5lhsVgiioJ//A1dw9UcLiWNa5Yz+K7JgFpc5VHyadKijDBdtWsOa5AitKAgrtwtnA4
         lN9spTaElM2Hq2sZLQ9Xb7QVQBTOiH2f/5JG39CuOHz0QVy1UHLk8FiILdT2jA8ZlXwW
         Wkv5Q+K6U0vwDYvhgIaUF8kKleIT3tmK6Z21OyHh/LLPmmPIIZPMRaKhoAcx5wJK7Lyw
         ma10biRLmK9iEBhpFga/KnT/wyj3Qh5nXjnpgYawsHrLEA3QiW8Pos8W6/Ah3e2BEjl4
         0iqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761834526; x=1762439326;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nzUB6K3HqPfS+X1e/axWNEiK+lQt69uG0iUUfrktjgc=;
        b=ZKkid1Tan9UuWV1iqqqyMcOLzPqpaRNc/oJWlRaEWkJKOX8CGY+wnSgtUh43406dWT
         YZzBBvJf8nKoeo0WP/F6hCgUH76daLpMj26dWS+OMYAiYL5KlzR8aDn7JVirF2IK9B2u
         q3EPMhtHmVLCRXSjBcp4T1+YueFudL0OMAOQ4YMdfXDfrFzuneXUrz6e8ZGcDeOY0yfF
         e26i5DdPKCu3EnT4E8/pinPmn5V1Mc0KBDjUEMDpI+6OTD1d2H2Zhwita9fY7Z+Bk5Tn
         n6OzJTezOcdRcGRD5NTV8VLk80zKtrAy3mekZ73PDbmsRqRA61qm6ZLV8qXfJcedqPyf
         KN5A==
X-Forwarded-Encrypted: i=1; AJvYcCX65n6hzW4gbcIWAsIOIeJf+luYCdESIt6X62FIG6P+0TQh3iYVxYzce3hRg+VHIvnCr9f2FZDq9hw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1B6VRVEYD7KGhBazG3t3wvFdp8tbu3d03nT/rdRMMrpx8pU0e
	S3j8eebHYQ/H3/ny0Js7aylpWOG+7rNw74jeY8keTgS5V7BNgahQT+kgzATLH2u9LJQ=
X-Gm-Gg: ASbGncthLgYF1d/7JgMd1JD++4O/oR5gAvHevaruhkgZc35kWOamBGLWM3XusxhEUZY
	XJt9qGXiBRnjg8VwIMfhmuibLbY3E5EykRpeD4veJ9Q8JNeCotTZeilg6kUASZhT8EnvPUrPVbG
	mtYmbx1DiYvUUMSZz9DXH7EkXi9uTvRub57cMAUa8JOZ4En0wjM4udPbdJvOMa3QOTTYQGsMe8z
	O7SI9pB5eXdEIRC/FoDqVFJgdyU4J+EKCxqE8PYX1S0NkfY+fvcOIzfgyWg57ftDw9LCuz9b6mI
	wLxkKUimkzXSOV812T0eJlHeGHAB1EEPhtlxCRthV0UmLW3nDQo7aHmer0tNA4FKSo2y4r9JxGb
	IDrLhF3OMoASEW+rDKCVxLiiBVm7BCq6kLOHfmZ3shTTnDzgrPL1PDUHGiuZYL+ez6baslU8HD7
	p2LywQdnpzcKOyWtKIolM=
X-Google-Smtp-Source: AGHT+IHDIcWOpb/AjtbKQqjQoELiWmkK+7m1rYGDSnOQyBbB8kU134OQtPTMF17uxocc9Ht6I/lvOQ==
X-Received: by 2002:a05:600c:5253:b0:471:d2f:7987 with SMTP id 5b1f17b1804b1-4772688c82dmr24022685e9.26.1761834525405;
        Thu, 30 Oct 2025 07:28:45 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4772899fdfbsm42230475e9.4.2025.10.30.07.28.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 07:28:44 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 30 Oct 2025 16:28:29 +0200
Subject: [PATCH v5 1/3] dt-bindings: phy: qcom-edp: Add missing clock for X
 Elite
MIME-Version: 1.0
Message-Id: <20251030-phy-qcom-edp-add-missing-refclk-v5-1-fce8c76f855a@linaro.org>
References: <20251030-phy-qcom-edp-add-missing-refclk-v5-0-fce8c76f855a@linaro.org>
In-Reply-To: <20251030-phy-qcom-edp-add-missing-refclk-v5-0-fce8c76f855a@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2124; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=0oWG+qHo3Plj4txj6PI+E6VDdRLJWhl0rAGek1Lre2Y=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpA3YVeRKmDq1ijkLKvUtCPBWbe/WxzMISYU7+9
 Jr4urXn8hiJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaQN2FQAKCRAbX0TJAJUV
 VrhYD/0ZHrUVpqqF7n05SDc4Uef6n6GNsYcIufBiLMZswz4FOs5rKfxc657UNdjMsyWNmPT78xV
 gH6f+t0EtSawar+qmS9MK/GuZsimyo7HHp2s21Qh/ERV3haD9q9hGSvwiVn/g62pUxExo0r+L+/
 QvagvukCv9kZyZe6P1USOEl+KM6u2S1X9q8v8at37G0sV2CQgD6GgfkuGV/EIQLNRgSgVed11OO
 IwZuTCWWghOpFPzwXERLGcScI4w4kGiqO/OYc3O7Bkuc8phNTm1BhLZ9KdesJuaoDRrMRnU+LWF
 E4iq3K05r4sM4uAa+eUINQ3nzZLgWMYIuZ2nwd5BII6zIokewiMa+hlIJfccYyA+YLWGAf4tj5I
 MWXaiwOIUT4SPnA7DhHKG23XLoY1P7KiCbsdBEfxNT/bb/oakzPk3K/RT9tVUEO8DYnwbS0Cuqh
 aPoZXyP2MW5pocy8DdpZItboh1Y/Nh5afV0rMQSIpOdJnhw5IDOK1bt3Aj3YZEiMQ+HM3r34TgC
 2Hu0Za/Epzum+wYyx1jsFuVwWPWAvUOkXyiVD8dUT1eFEFZBL1NrDZ4wTsbaoMjHUmQa5MH5CvZ
 kVq9n3+xSjP45yxH5TtKr4xPwNfxfuU1ALtPNMZfW7Iv/pn3YDSOBiez0Zv7/LoE476NUllHcz1
 hpp//4UHxmmctvA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_072848_170754_C2F2C07B 
X-CRM114-Status: GOOD (  10.57  )
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
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
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
