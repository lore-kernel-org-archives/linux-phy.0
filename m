Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04BDBC76196
	for <linux-phy@archiver.kernel.org>; Tue, 11 Apr 2023 13:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2t0ROkgB9Nc0qlpgWtZpEdcs76A+4Dg700lkrJpHWL0=; b=EGBHsw4Y7GKgVb
	E1ZBRMk/EfTiUh1mjc1vUCcp+DmT6zCwSiQLuc00JbPDA+6MHaUeXvV/9VxgRx4eakFBr/9jlySVU
	DucPnRPpB9B9CNPV0q/tRSp1NqvITEBfpX1ZFgMiOAi0yds/Mt6P5QNEM8fvR9jK1WVaUSPbcoc3S
	oLdwoAUIsVmrceBu6HaKdBc1IcyQ8LY4zQcJj/Q07fx25if80NbOdVfQejO6uJxECr4ZlFdzSgGlK
	I/xwcI3/o6exjRkSfrwNBeyTYjil3GGnj3gUI64JQqlMsMswFPYKwRQl6f9chWVUMIFJhf4GUmwsN
	ZtbqONrUGu6C57Wg3Y3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDg9-0003Y6-27;
	Tue, 11 Apr 2023 13:04:57 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDg4-0003UJ-2i
	for linux-phy@lists.infradead.org;
	Tue, 11 Apr 2023 13:04:56 +0000
Received: by mail-wm1-x331.google.com with SMTP id l10-20020a05600c1d0a00b003f04bd3691eso15215225wms.5
        for <linux-phy@lists.infradead.org>; Tue, 11 Apr 2023 06:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1681218291;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f1aypPmfAnBqSLxgE6m9YHvqGlsjygFysWM20Vfgyf8=;
        b=DT9yf3naHRAfyL/nu6ysE6kqTihLShfR1RUQTT313WkPvXfRa8lYFMqM03xJIpJGlA
         6H7L178PQ7Iovla534HiOJrt9ZvS43q56G54O+7F3xH9SHHrvcSPke6R10pDQALcaUEz
         3f6ulz2WQsKJZnuxmrBenmO1kHni/+uK0Ql7dTUpW9PbVn48xJem8cgTpvVmyhGKidZe
         /i6r+Oo6JZjnzGsP6/aKAMawvIzLxId8QMTqBtYR5UaeXVPthzUQJKA8CJJc0bzAsd4t
         7izM9zZdl42ao81xw8CvNTul5pNkapaMOiZ0PkniMR3W5SD8SVYLicvqbF2+cwAuhDvP
         wo7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681218291;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f1aypPmfAnBqSLxgE6m9YHvqGlsjygFysWM20Vfgyf8=;
        b=TBfwji+/WWFz7s4t2KhPCH1srv0GsaGTTmtK0adm5z6R9Jgo6rewenE0woWzV5E283
         04uTEsdiGAGqvGgsGrlZXbY6P5Bpd2wRPpAiRGC7Rd8iZ5Fju/0rvmInZPikIy8H3oPU
         cvV2MyihsKceFjmTBtJkCsvwrhaWjRuBShjOMGnpv9bE+DhjO9OVmiLc/Idmj6Y26YCP
         AHwj02oOMnHb13F+QUr5Jn2X5Js8cZwV1o59HEqqrxt48gzDdVvKDOjWI9UAkDl/epXm
         DDN6Wr1MuvC9VxmMalqTELiZTlgP2BexraRjnpq4OYfmRoup0VfP4oPkGBZbJrBsSUqm
         BT2w==
X-Gm-Message-State: AAQBX9fxTdHcZ3wgbMpwGjA9G2q9iXM+iBVXqpiRkLTCg+xC/Wdzm37k
	xZOK6qorR5TcTxNd2df7HQmGzw==
X-Google-Smtp-Source: AKy350btH3vdbLazcsWZ/ZxE6u95m/QLQJ+rNdyThrse0GWcw0VSBctgLxvyxIIvsNbBj1piCjxiyg==
X-Received: by 2002:a1c:cc11:0:b0:3f0:3377:c15f with SMTP id h17-20020a1ccc11000000b003f03377c15fmr9669781wmb.12.1681218291426;
        Tue, 11 Apr 2023 06:04:51 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a099:fc1d:c99a:bfc3])
        by smtp.gmail.com with ESMTPSA id t6-20020a7bc3c6000000b003f04646838esm16921301wmj.39.2023.04.11.06.04.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Apr 2023 06:04:51 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 2/5] dt-bindings: phy: qmp-ufs: describe the UFS PHY for sa8775p
Date: Tue, 11 Apr 2023 15:04:43 +0200
Message-Id: <20230411130446.401440-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230411130446.401440-1-brgl@bgdev.pl>
References: <20230411130446.401440-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_060452_893034_318BF277 
X-CRM114-Status: UNSURE (   9.70  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add a new compatible for the QMP UFS PHY found on sa8775p platforms and
update the clocks property to accommodate three clocks.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        | 26 ++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index cd0fbbd3593d..94c0fab065a8 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,sa8775p-qmp-ufs-phy
       - qcom,sc8280xp-qmp-ufs-phy
       - qcom,sm6125-qmp-ufs-phy
       - qcom,sm7150-qmp-ufs-phy
@@ -25,12 +26,15 @@ properties:
     maxItems: 1
 
   clocks:
-    maxItems: 2
+    minItems: 2
+    maxItems: 3
 
   clock-names:
+    minItems: 2
     items:
       - const: ref
       - const: ref_aux
+      - const: qref
 
   power-domains:
     maxItems: 1
@@ -64,6 +68,26 @@ required:
   - vdda-pll-supply
   - "#phy-cells"
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sa8775p-qmp-ufs-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          maxItems: 3
+    else:
+      properties:
+        clocks:
+          maxItems: 2
+        clock-names:
+          maxItems: 2
+
 additionalProperties: false
 
 examples:
-- 
2.37.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
