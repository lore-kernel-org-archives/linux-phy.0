Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54915FA3745
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 21:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCM32woTcrzUiO+Xypem/+BVVzpEdo3aectcMAClmYU=; b=5Fr3/lpGaX+4QS
	qjzin1vBeCZdyHOSgyuPvhx51NjWkR2w3AfbFwpEBM6Wzp0IykG6SqYjEeme8dkGi8l5vzxs3s4Of
	MH8cSdHzx6MkVGVSCpIIg/z0S8O11kEPdI/ggTUCblmbErUh9nqavA55166OA0zgzVQdnEI+RekU2
	Ph0yoGlg3ccFwnCMKEmv+xI9WiZwlHmDbFP4l0dRqRapxxnvTgmhp/aaSnMqavhUl3u3L2bLIXW00
	I13Xge4L2WDQAND+3FOOlhNbT39yZas9XQlkmsspag6tHD5R1s7p9QZf/KadGd3C0ftOIklIM4Hux
	HjnVEMwJwp8xWJ52jHqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oot8t-009MN2-LX; Sat, 29 Oct 2022 21:13:23 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oot8p-009MGE-11
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 21:13:20 +0000
Received: by mail-lj1-x236.google.com with SMTP id x21so11037301ljg.10
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 14:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AABN3JU0WwLg/3X+1uTYK5YdfpTdRR6rzCtqixbVbNE=;
        b=nHmfc3I2SdQ1sDn9NaJcEerxAVJzu+fRcCtGEhI6yFZe3W9cBkKx50xahAp5qUasc5
         /kPzL6hLxSXx68Dm/VQUZ8Wr88UQUMQU4KFEwxmiqY+lt4b3lQAD4zVb30kAWOnJGO9P
         ysMT5YaOa9bjVhsIe5P9wCybAyhJjw389vCyJ8e4FXNGbxbfo4A5FovWK+IzSlnoCSJK
         5JgzV1coPIdbQMohrjBpcrL47z279sow9j7P/LKwbVIMpKCPTv1MgDO8l94NLoKSe1q9
         gOl8obvSX1zoOKcII0BQ4gfQ31ekcaFEsiw8//vHhY9ww6Vp7uUtS4SnqyQX2hlKq33J
         F4eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AABN3JU0WwLg/3X+1uTYK5YdfpTdRR6rzCtqixbVbNE=;
        b=ogh2iQubEln7djXk9C5Q1PgfwUQx2Y1OvXzEcSVxcRWLYr5PSDcZMaRYqNHxeaDncZ
         Tujzjip6egLZjclaD/BCInSz4LITapTlw+AVQ6vVkb6RRruW/m0gcOAcpQeJAyHqzpt+
         3wqwY7tslf3uAjMJu+nsp+Gr8Tv22UcR1vKot26P5btl7HbyelfEQPiKB5Wp02TSihcG
         rPsvh8shV4Jf5QqlTHQk00h0mYZfyLt7b/IaNFCVZjRmrdYEIx1uf7bTg1+z6NCWsh4w
         voN4HbeYr1a2aOVQI5WOrrPFNTHr+F/g085n3fWuhmb8Mh/x0OIqJaMsXxFUKS0/1Baw
         82eQ==
X-Gm-Message-State: ACrzQf3F9IDSDGwdmGDgrU739pkfhy8pcEiSQSnSvCg01VbjiywSvLjb
	p6rhEh2UBuIusLuAwecNAFx6Vw==
X-Google-Smtp-Source: AMsMyM66ZucE/gOMLnkKWQcgNIxxoGr6ZWjovNOs+cuhSzoxE3bP7Cl3BIzUGh9alPX9a9Qad+YqUg==
X-Received: by 2002:a05:651c:511:b0:26f:ecc3:964f with SMTP id o17-20020a05651c051100b0026fecc3964fmr2158754ljp.28.1667077996490;
        Sat, 29 Oct 2022 14:13:16 -0700 (PDT)
Received: from localhost.localdomain ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id j14-20020a05651231ce00b004a480c8f770sm433508lfe.210.2022.10.29.14.13.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Oct 2022 14:13:16 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v1 2/7] dt-bindings: phy: qcom,qmp-pcie: add sm8350 bindings
Date: Sun, 30 Oct 2022 00:13:07 +0300
Message-Id: <20221029211312.929862-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221029211312.929862-1-dmitry.baryshkov@linaro.org>
References: <20221029211312.929862-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_141319_086148_938A36F8 
X-CRM114-Status: UNSURE (   8.24  )
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

Add bindings for the PCIe QMP PHYs found on SM8350.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 80aa8d2507fb..8a85318d9c92 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -19,15 +19,18 @@ properties:
       - qcom,sc8280xp-qmp-gen3x1-pcie-phy
       - qcom,sc8280xp-qmp-gen3x2-pcie-phy
       - qcom,sc8280xp-qmp-gen3x4-pcie-phy
+      - qcom,sm8350-qmp-gen3x1-pcie-phy
 
   reg:
     minItems: 1
     maxItems: 2
 
   clocks:
+    minItems: 5
     maxItems: 6
 
   clock-names:
+    minItems: 5
     items:
       - const: aux
       - const: cfg_ahb
@@ -104,6 +107,25 @@ allOf:
         reg:
           maxItems: 1
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8350-qmp-gen3x1-pcie-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 5
+        clock-names:
+          maxItems: 5
+    else:
+      properties:
+        clocks:
+          minItems: 6
+        clock-names:
+          minItems: 6
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
