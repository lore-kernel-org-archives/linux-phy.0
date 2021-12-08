Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C303C4167B
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 17:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bh9H6OWl73286Fv9PqtMvUw3UON4ztr/SSpW7Avqfuw=; b=weY6l/4oV5iRQ1
	1YNCNvdzNTfn+W78YT31X7PT3v8tFX0WZbNyf+eA+hkpcGqKU6cjcB5d5S2GB92cvn8DC3mniSf2V
	Khw/6l2Ixj3DzzDn/Uj4hGqStJGH5kEHeWtYdVMxR50oHisoLrXCtuz4TrDD87Bs2Y3KoAED/2BDK
	fQPptaoSLdi4FmMphfhwSA7ce8wmFH3kCmRz262Wh+ZAqQ9VqV3bmAE3tWeFbmASJS+sS2tEN+MDb
	9Ggk7pdyjIPtObZkglZSkAD0Y2jNBDR1Qp5mYAicizN6ObRkd60PBnPN/RNpT7E4FSP37NcSBFaws
	B0GMT68FZbz9C08PU+VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv0Wq-00Dgr6-1L; Wed, 08 Dec 2021 17:14:52 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv0Wn-00Dgoa-NH
 for linux-phy@lists.infradead.org; Wed, 08 Dec 2021 17:14:51 +0000
Received: by mail-lj1-x232.google.com with SMTP id 207so4874112ljf.10
 for <linux-phy@lists.infradead.org>; Wed, 08 Dec 2021 09:14:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yjQ+4ebAvK4TgGM0msltCvsHoQYHGywItHMmPjFkemE=;
 b=F+YB75eAU4+VnIscZjwlg3KpvkeQcqQGAPfad+e4MWNIJjy7sJQ/QRUFtPtLaJcdTx
 cewORztLE2EXONA4yCZ0pfwQkw0OuabI8kFjcTRZVXSa1YN5yGgV/lXhOW2yAvbwr2BX
 /8umLnlt9GDu/peOKMirQCcpYD3fe5CILMuyluzWFNc7DVNdtLqQsW0AWQs85hskcAm6
 4INrhSrvsGBf/4ESEXDLfOWj+vNlelTWqQpGpmRTEVlnERpqq+QUz9Ai9uETULYB4hmB
 1+/NNhnkd5aSDeguuRjdf7qPJrmoxkS3xwOk+VvV/zUx3RpR68JIe60w+jUYlFZ84e+8
 A7ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yjQ+4ebAvK4TgGM0msltCvsHoQYHGywItHMmPjFkemE=;
 b=gqMwBNOaXgx+AaIgsAceBRyJH2QYQDtJPaCkn2XAN0SCt2lI44o6f/44R3BypOSQU5
 SsovPxHf614+XIr+0ilaztQo/mWKu6jKgb6YmQBi7jJFpN9LQMhIjSti8CjttWFC11W9
 aQp7RHuNK3M+roqcnagyENs+7NpVNUEEuRv1RW/Haq2Do6G0IUA7DttByAMnCureT4lf
 wlnKV832o6Yk7IUK19f6UpfrRsU55R5gfuRHCh6QNp7VwKqQp/03mauZjNr/4afNDk+p
 /Qqp8nTVCS8zXqMkk7D2ADSRb2ZGYcI3p1hmZEK2Ac5ebNr/Y/caO8AMgr1KEpGk0X5P
 aqFA==
X-Gm-Message-State: AOAM533m/TwEJt2+dxHFNtKZUs3YhOcEHfO6xEURqs711BNzv8c70RIk
 g9cVYAPczCrSJqpBoGzSiaWnWg==
X-Google-Smtp-Source: ABdhPJyz6P6nKJo7YPgJedqZFrFW20JXqTwDyoDTi4tl3rnRuIMtTdTCVwJQAc5vZEC8ctIbp5biUg==
X-Received: by 2002:a2e:390c:: with SMTP id g12mr774710lja.118.1638983687525; 
 Wed, 08 Dec 2021 09:14:47 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id t9sm307213lfe.88.2021.12.08.09.14.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 09:14:46 -0800 (PST)
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
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v2 01/10] dt-bindings: pci: qcom: Document PCIe bindings for
 SM8450
Date: Wed,  8 Dec 2021 20:14:33 +0300
Message-Id: <20211208171442.1327689-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211208171442.1327689-1-dmitry.baryshkov@linaro.org>
References: <20211208171442.1327689-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_091449_786153_DF4B0862 
X-CRM114-Status: UNSURE (   9.68  )
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

Document the PCIe DT bindings for SM8450 SoC.The PCIe IP is similar
to the one used on SM8250. Add the compatible for SM8450.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/pci/qcom,pcie.txt     | 21 ++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.txt b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
index a0ae024c2d0c..73bc763c5009 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.txt
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
@@ -15,6 +15,7 @@
 			- "qcom,pcie-sc8180x" for sc8180x
 			- "qcom,pcie-sdm845" for sdm845
 			- "qcom,pcie-sm8250" for sm8250
+			- "qcom,pcie-sm8450" for sm8450
 			- "qcom,pcie-ipq6018" for ipq6018
 
 - reg:
@@ -169,6 +170,24 @@
 			- "ddrss_sf_tbu" PCIe SF TBU clock
 			- "pipe"	PIPE clock
 
+- clock-names:
+	Usage: required for sm8450
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
+			- "aggre0"	Aggre NoC PCIe0 AXI clock
+			- "aggre1"	Aggre NoC PCIe1 AXI clock
+
 - resets:
 	Usage: required
 	Value type: <prop-encoded-array>
@@ -246,7 +265,7 @@
 			- "ahb"			AHB reset
 
 - reset-names:
-	Usage: required for sc8180x, sdm845 and sm8250
+	Usage: required for sc8180x, sdm845, sm8250 and sm8450
 	Value type: <stringlist>
 	Definition: Should contain the following entries
 			- "pci"			PCIe core reset
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
