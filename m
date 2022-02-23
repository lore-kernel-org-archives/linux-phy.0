Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AB71C43217
	for <linux-phy@archiver.kernel.org>; Wed, 23 Feb 2022 10:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3hI7Czl9E0yJauI5CYaL59oPZ4SwwkMej+IBUXF9zwI=; b=EwW1EHdJ/nTYrT
	e1TOGPxydi1/Lhh8IRgeHcbGaFIyknUkM4mkvF9czjcIdpFelrK23fZ1oB1Cl/5FqZ23EMGoV+emV
	vViKX65nsZobzfSRtSDP1Pl2Zv5H9gTJ4SYmh4rad7LWcFMslogWJo8QTIllStOX2KMayF1+rxOi7
	qQowsY25wnMAQzIQY1rvAl+FXubF/ZL3w4PQ07gctXlvvJ3mGGoDivcNNmyRVAnlU3LTz/+6oOaxL
	2HVdedEjC1tsJ4KVuKT3f/Lo1EFlmFf0BcEYXZ6RnVwP0IaM2b7qMBGCbG6M30j1AvKyipvWYaDMr
	ixFBMdAFf3TeYwqxfBBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMofW-00Ddmv-Nu; Wed, 23 Feb 2022 10:14:46 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMofS-00Ddjq-2o
 for linux-phy@lists.infradead.org; Wed, 23 Feb 2022 10:14:45 +0000
Received: by mail-lf1-x12e.google.com with SMTP id w27so12375437lfa.5
 for <linux-phy@lists.infradead.org>; Wed, 23 Feb 2022 02:14:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b6CIcqNwdQ+RImQiajx85zJw8piOKDC5i2N3eNYh/pg=;
 b=i4tUVwS6ZaGy/Dwsquqo4xVSADi9zOn75jBbxPokAOBb0w1EyK4zirDb0YR5EcnAAq
 FKRikhY6jfr2092PI6ljQIvJrqXoY+zEPObbi8/R/H30DwAFuKM9NiVZYsuZEIvTh1Kf
 m/g1SJK1t8bZiQE8KZbsvGr0FCVHLTI649Z2pKlyD9Cj371Xwk6czr1TqH29hA8nqywy
 a3V7duCZe1c6fe/Oevi3SYFGv3k7HLr4GN7ff2cI/1e6CtXMpFeUqh4Lt97C2aadbCmu
 GZEWYlKvGHlQZriJpFu1f1zrTo/jGVBB0Ziz/2rbpIocj0M8SRT8wXFcDh2U/bv7raCY
 92Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b6CIcqNwdQ+RImQiajx85zJw8piOKDC5i2N3eNYh/pg=;
 b=cGX1rW0wto3FYdQxLRUPzLhNjH7jeU5MBcTpf5p4YZqh2TLKYfQG7OhD/78xuSZcpE
 i1BqGXPKhAtom8TmvV7agO1X0dBwqYsG1esbdUSZ1WGhL+dC+qqsPC5FK+0q3Zjb4vfn
 Ay8YzibHtCQTHbHmoZTyA/wjtUbkshzq6F1B94gLQwWrPPY0FGylk6AA69s82WKXoP0N
 Y9IL5hMTos8vzrNs/oKD143mJ8iSCHyJLL/CcfwsOyCYv/eoZErhXnze5DcZrg3/ss5s
 iq1fbfF/HSYCV3yuhWJ5Zg7GlI9heKkHpa7sQd3Zuwth/GqCexjim3psD3yGMy6rMj01
 nG1Q==
X-Gm-Message-State: AOAM531ma+dZUykD8GKFitH9xptaPbULkCTT/lfTvmVMZqIedOqWNVDC
 nrqG1HzyOnCGVNJYAU95slsACg==
X-Google-Smtp-Source: ABdhPJxBed4SlQQFABNUtuUUkakr7ewwZDksPEU4M9F7WCiwkSdP1BYXeBJZLB/n6F8AtbjPpFPulA==
X-Received: by 2002:a05:6512:3201:b0:443:cede:ce2f with SMTP id
 d1-20020a056512320100b00443cedece2fmr12698870lfe.371.1645611280151; 
 Wed, 23 Feb 2022 02:14:40 -0800 (PST)
Received: from eriador.lumag.spb.ru ([94.25.228.217])
 by smtp.gmail.com with ESMTPSA id s9sm2060256ljd.79.2022.02.23.02.14.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Feb 2022 02:14:39 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v6 1/4] dt-bindings: pci: qcom: Document PCIe bindings for
 SM8450
Date: Wed, 23 Feb 2022 13:14:32 +0300
Message-Id: <20220223101435.447839-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220223101435.447839-1-dmitry.baryshkov@linaro.org>
References: <20220223101435.447839-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_021442_169154_F39296F2 
X-CRM114-Status: UNSURE (   9.82  )
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

Document the PCIe DT bindings for SM8450 SoC. The PCIe IP is similar
to the one used on SM8250, however unlike SM8250, PCIe0 and PCIe1 use
different set of clocks, so two compatible entries are required.

Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/pci/qcom,pcie.txt     | 22 ++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.txt b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
index a0ae024c2d0c..0adb56d5645e 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.txt
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
@@ -15,6 +15,8 @@
 			- "qcom,pcie-sc8180x" for sc8180x
 			- "qcom,pcie-sdm845" for sdm845
 			- "qcom,pcie-sm8250" for sm8250
+			- "qcom,pcie-sm8450-pcie0" for PCIe0 on sm8450
+			- "qcom,pcie-sm8450-pcie1" for PCIe1 on sm8450
 			- "qcom,pcie-ipq6018" for ipq6018
 
 - reg:
@@ -169,6 +171,24 @@
 			- "ddrss_sf_tbu" PCIe SF TBU clock
 			- "pipe"	PIPE clock
 
+- clock-names:
+	Usage: required for sm8450-pcie0 and sm8450-pcie1
+	Value type: <stringlist>
+	Definition: Should contain the following entries
+			- "aux"         Auxiliary clock
+			- "cfg"         Configuration clock
+			- "bus_master"  Master AXI clock
+			- "bus_slave"   Slave AXI clock
+			- "slave_q2a"   Slave Q2A clock
+			- "tbu"         PCIe TBU clock
+			- "ddrss_sf_tbu" PCIe SF TBU clock
+			- "pipe"        PIPE clock
+			- "pipe_mux"    PIPE MUX
+			- "phy_pipe"    PIPE output clock
+			- "ref"         REFERENCE clock
+			- "aggre0"	Aggre NoC PCIe0 AXI clock, only for sm8450-pcie0
+			- "aggre1"	Aggre NoC PCIe1 AXI clock
+
 - resets:
 	Usage: required
 	Value type: <prop-encoded-array>
@@ -246,7 +266,7 @@
 			- "ahb"			AHB reset
 
 - reset-names:
-	Usage: required for sc8180x, sdm845 and sm8250
+	Usage: required for sc8180x, sdm845, sm8250 and sm8450
 	Value type: <stringlist>
 	Definition: Should contain the following entries
 			- "pci"			PCIe core reset
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
