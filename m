Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F5E9C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 18 Nov 2022 23:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qJudmgsl1v/pTnVeGDaLHta7mnwScc1mtR+2diCtloc=; b=GSQqpgSBm//Cst
	2XYyuCabsDS45vsDsH7eHPB6WHcGH0VLCOdWMkSLbcsyLIaoSB9v58YSSM0cFbW2QT7NmDQrEjYDL
	IqgW8JN2JmrxK/RTn4xufHyA+lLWITA60FoNRAJmuK+KOtnnLgg1U+uTwlDBRZ5Pk7l0L5/ZOcreJ
	tJ4e4P8TSQcfMS/Nq0/i7Nujs907LsRli40ZpzyGJOzhfNZx7XrhP8EfWIfP8/mK6iVwjow4U+sPg
	PAdl9R/D1JAixcubnThD1iyZLz4GmVKWRRN1TEl3q/GsL6Xoi3U+Ew1uAugM/YTyPgnjX/vLAmM8/
	YhTd/U/KhWHECvXNOskA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owAqw-009CJp-OL; Fri, 18 Nov 2022 23:32:58 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owAqs-009CGE-EQ
	for linux-phy@lists.infradead.org; Fri, 18 Nov 2022 23:32:55 +0000
Received: by mail-lf1-x130.google.com with SMTP id l12so10616004lfp.6
        for <linux-phy@lists.infradead.org>; Fri, 18 Nov 2022 15:32:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DvnyFdgcWdO/y4g/GZdtkoa/ckJSM/CaYgX7M7Lgruw=;
        b=Mf6BPIQL3AC+s2O6KnSFxSJ33V9BDuaVz0eE1Iux1WjDj4JJZww5cF088ubioQ65a9
         vGsrSNMWndMIT+0mXr0Sj6QosszPvs6czfpmW+8yZCOpzMeqhTVd/0jk6ZoXPv8X+iC+
         xHFPM65rg9ruTjp6wNLmPKEptZJMUaxO5bW0qQX2A9Q4as9kq9ZDxIH5qJiw43o3HjSs
         7dWktYJvThKbGR0LtxU0O5sAuUMSEwi6eEOL+RQVJl88w21SYJFQK6BCxxHdnRSJgN+C
         dPzBRSD5C/aZAfqAPzUq+L39wVWzUcjMn3GkttTDkg05SyvpCzp+CmHA9S5QOwXiOIXC
         oqJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DvnyFdgcWdO/y4g/GZdtkoa/ckJSM/CaYgX7M7Lgruw=;
        b=OodrODXsXVF8QF3DjlwkWKPbzzeCKfEe2wpZoXBFwuTglE8ziAry3f1gNt3NnzYw96
         ys74XAmI08nmSFKSx5RMsH2je00P9R+e0lmE7FKNOuCTAFGJofx+WDWkvAP0D0xT49LX
         8UmAR3wJMpTN6LFtip9N8PR2gKvbkLwZAtyIlXimHeNZ9A+T/k/IxxPt1gbVsj18oX3Q
         UZKoJwhIno/M+9SD/C7TaevHI2m8gpgsQovyZF8SiKpUIVJbCnE6cryV/yLbl927mMxV
         liWJ+tm6aG0SaRS2ZOwXQx/xd2xAt6fIns6i8ZP2CQoy6ekd/iKjpTZK7t7xZCKilquP
         Jd2A==
X-Gm-Message-State: ANoB5pmUHYYVcBOx0Nh6qo/fNbJ5O2tFEbj23cC5QJFilQIlDjtNQfNb
	V+Ox0aPAMEhB6kxOTDeh6Z3pHg==
X-Google-Smtp-Source: AA0mqf6Znugn88JXILPSHLaNOhRx0k3bTOgt1DQZ1HyWx4qmV0JGOalJkHboO03+sRVZ8iuaxcS2Uw==
X-Received: by 2002:ac2:4a62:0:b0:4aa:323f:e850 with SMTP id q2-20020ac24a62000000b004aa323fe850mr3123560lfp.492.1668814369953;
        Fri, 18 Nov 2022 15:32:49 -0800 (PST)
Received: from eriador.lumag.spb.ru ([194.204.33.9])
        by smtp.gmail.com with ESMTPSA id k13-20020ac257cd000000b004947f8b6266sm843900lfo.203.2022.11.18.15.32.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 15:32:49 -0800 (PST)
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
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v4 2/8] dt-bindings: phy: qcom,qmp-pcie: add sm8350 bindings
Date: Sat, 19 Nov 2022 01:32:36 +0200
Message-Id: <20221118233242.2904088-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221118233242.2904088-1-dmitry.baryshkov@linaro.org>
References: <20221118233242.2904088-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_153254_503659_6EFDB54F 
X-CRM114-Status: UNSURE (   7.53  )
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

Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
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
