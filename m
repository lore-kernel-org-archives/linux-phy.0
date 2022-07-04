Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD95FCCA483
	for <linux-phy@archiver.kernel.org>; Mon,  4 Jul 2022 16:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c/mWPHvb5W7reWfA19B33GlDPJJSEdHk3+Ve7QUyznQ=; b=deE/bb2fhL7/Pn
	nnVggrNiICQ8zlkCe+4yVam5snSF3CfUiSAED6VP483N7lh83/wOfO/8Qqn9LVcgRjj8yj4B8QDQy
	S/g0dXpQ18ZAOxNibVK8SW7FjrefnjSVS2dDVttFRoEHCsgC0S+Ya0oAlTLB73QtcvYY54ZRjzS+d
	WBJn7tk7cnFLG1e1R7rMRRSZRBUcTPYNa/nWSRoKM0bYMXggcYXlBgC9QChKcofDsUpQzgsM8moA2
	SiuPNp9CuJLqIuT2TWabiwNfMoeitrQc6vgk1H7it1K4nykN3mWs2s3WrxUgOmxjkVqgX21WxLqaK
	8x10HiuEHNXElC//C9IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8Og3-009uNt-B2; Mon, 04 Jul 2022 16:11:59 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8Og0-009uLd-EV
	for linux-phy@lists.infradead.org; Mon, 04 Jul 2022 16:11:57 +0000
Received: by mail-lf1-x132.google.com with SMTP id y16so16491205lfb.9
        for <linux-phy@lists.infradead.org>; Mon, 04 Jul 2022 09:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=33SMaLh1eoDBAxmhXTjcVQWnyDJ3mzNy1PP5WaC9dV8=;
        b=rspOa5EajZPOfNl0ESTchvhQgYhmUu8/ueOoPO44oe2+2Wog+oNj1fpANVwPGESYrF
         5XvBIRqQLRYgoJfdxt/vk4TpyHZd/ZEG3sxCaKFGtFfeS7whXyDPggGmA71CDY9s6915
         2IXUgtBd9BuBTr7dW+Vb0erOlBGKLD9G+mUSlioCNwkwLtOpcyOPF/h2BL/lC0s1St6n
         xSs7vPhyOP4B4CEwjE8N+BvQHR3TqjV/3JDffKSzfuBG2SCG/3t7D65UOJLTD/pdI1dC
         7/DNB/IFANuvTq/u4p1D+IxF+djQM0Lg8QSBwGoja6RbCIA6rpxflr5DfuZTRdhECOd0
         lwNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=33SMaLh1eoDBAxmhXTjcVQWnyDJ3mzNy1PP5WaC9dV8=;
        b=a+pVJVOgSp9PuptKYuP7qQ+UijpXE7pookouiWuAxL4Lw24V33tz7yIqlgzdqOvCiU
         /KBiWF0jIqEfMYwewK7gu4c/dKu1UBfG+RAv0IxH7G6tpZOdNESthVRJjKQlZZxf4s0i
         g1neHGpLtVc9A0ijpAXTTKHoJIvUVFTQxUmT5+XnrFiV+zcueAMCCdGUs9x9hoTqchKo
         9DI/vZtDqbXgwxSWGmTbv21w2owZhWDr0SwOmeb98/ZEgLiBXPRkQwy6ngMDaFG0bnsD
         DQ81XYYyBGcJjjPpTXojpql0quIV0czBxSKfoN5siCntIXQstZz34qoZrVVuX5xf37zc
         qJZQ==
X-Gm-Message-State: AJIora+0ExrNpm2CBgadIgPQPmnsRsx4xaRIgl1+OMscuOGTdk3hgLL8
	k/gTIVTZ+wGoH28IXrXqIlonmA==
X-Google-Smtp-Source: AGRyM1tME+0Mf2I5nShZjoogNnmb77dv/j/FemxX3GyQsTed1mGiCD2xsSlfShkpWOGQKuQxOnKESQ==
X-Received: by 2002:a05:6512:3b9d:b0:47f:7712:3ece with SMTP id g29-20020a0565123b9d00b0047f77123ecemr18483411lfv.127.1656951110999;
        Mon, 04 Jul 2022 09:11:50 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id bj16-20020a2eaa90000000b0025d254180d7sm381273ljb.113.2022.07.04.09.11.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jul 2022 09:11:50 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Stephen Boyd <swboyd@chromium.org>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/3] dt-bindings: phy: qcom,hdmi-phy-qmp: add clock-cells and XO clock
Date: Mon,  4 Jul 2022 19:11:46 +0300
Message-Id: <20220704161148.814510-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220704161148.814510-1-dmitry.baryshkov@linaro.org>
References: <20220704161148.814510-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_091156_522560_73B18AC8 
X-CRM114-Status: GOOD (  11.20  )
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

As the QMP HDMI PHY is a clock provider, add constant #clock-cells
property. For the compatibility with older DTs the property is not
marked as required. Also add the XO clock to the list of the clocks used
by the driver.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/phy/qcom,hdmi-phy-qmp.yaml           | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
index eea2e02678ed..83fe4b39b56f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
@@ -28,12 +28,15 @@ properties:
       - const: hdmi_phy
 
   clocks:
-    maxItems: 2
+    minItems: 2
+    maxItems: 3
 
   clock-names:
+    minItems: 2
     items:
       - const: iface
       - const: ref
+      - const: xo
 
   power-domains:
     maxItems: 1
@@ -44,6 +47,9 @@ properties:
   vddio-supply:
     description: phandle to VDD I/O supply regulator
 
+  '#clock-cells':
+    const: 0
+
   '#phy-cells':
     const: 0
 
@@ -75,9 +81,12 @@ examples:
                   "hdmi_phy";
 
       clocks = <&mmcc 116>,
-               <&gcc 214>;
+               <&gcc 214>,
+               <&xo_board>;
       clock-names = "iface",
-                    "ref";
+                    "ref",
+                    "xo";
+      #clock-cells = <0>;
       #phy-cells = <0>;
 
       vddio-supply = <&vreg_l12a_1p8>;
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
