Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA7B3C4167E
	for <linux-phy@archiver.kernel.org>; Sat, 11 Dec 2021 02:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=445XhlDHaJIW+vwRKtr1v1Q2SgYJcI2bzl8u1nJ5/OM=; b=24hvB9rC7ziFC5
	O6x+TmlIc93UyWokVpiwIHQD/+SPxriaNKnoNiKx2gHp6+Iccftjbj7NRrq1cFLlSS49AQFEitsf/
	Wy7wFvIfoNMUhUypsCJNkxN3vmjPiX/zSpU5km9axbaKf3FY6ugHgv6Zf9adDT5dlWHwQ7CO6soXj
	OMAYIJ3KCZWlG8NxW6vnOmkN/kpvlCXCIWx67lHQXkQddSuzO9ONuWnCo2PRYzEwyxNrTjFSNpNHN
	Dq3c6iziNDl7ixigC/cIUpXPuPvOPe577bY5qaeZfUCxh8zqzVTK9DTZ6FiO8SUurm9t2R4bJH4uB
	Z5CaydF2OSAwEra7dwAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvrxg-004R6R-8o; Sat, 11 Dec 2021 02:18:08 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvrxd-004R4J-S1
 for linux-phy@lists.infradead.org; Sat, 11 Dec 2021 02:18:07 +0000
Received: by mail-lf1-x131.google.com with SMTP id m27so21132124lfj.12
 for <linux-phy@lists.infradead.org>; Fri, 10 Dec 2021 18:18:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2Gomy4ei7qSbDbo9NwD3wFRtHE34eVnEHILbspr7bME=;
 b=Bposn8EzOnBHIzoDzi+VerE2/NgDZoXm+dPK1naAF6BS4VP25rlv5Wb7CDYTZUafXy
 xeSF+Q/0LU8z8GkdHHjvkwUcjZyDEvFdMY2kypGmbfEqwL+tZaMBUNM/gs6cz0pBG/m2
 G41/BSpTVhrQMOxmYsGT4ilKq2R72XGHbkkFqUctHyEyIr3KsEyC+JhsswBF2bNm6lxu
 DPnaeu8nms3eKAEk4KJTDBkvL37njEJdbpW0cE6BvNHreQfmsr2k7MBMEqRFwjoU38Uj
 nY5O1kSJvAVz1Ax+AeQGB0KME54yiMG20Qh/64iICiVVFsdJNUumbl2huB6Q/IwH+cuD
 003w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2Gomy4ei7qSbDbo9NwD3wFRtHE34eVnEHILbspr7bME=;
 b=sFFmqos3o4I3djpMJQ79AGS+6ElQ8Qyrv5oiwyF/h0FRqaiNHg1o6vQEzr0D8L/ShN
 dIRgfSFtu6yOE5YgLYvhwbNSkvdnDHi6Y5SmE0p1MOLvSM3AjOdXjwapaWPV2nQSzevx
 NwwWGaURZf1mDWaR8brCW7D9jHnHyVGBRnkgvudE+pw+b6vx87EqVM9sm5LJ9M2jXDX3
 nEqT9jAnAw5LzR3tV1klVfcRjTO4U0oiI2n4/PXzsW+XEpeOnY9oXuYBRJP/GU3/T2Xa
 bT/1evhK2Ec0AxFefNIUIi9ErwJLgEIpzaE2Nxavg3SXSh4+lcTfZmDPjVmNzFUPg7vF
 EP1g==
X-Gm-Message-State: AOAM531mk4n2Ehxl2uVdKcoWl3uwNTcM7hXxyBOKyqeyD8wK8bRnydHx
 /zsaeMqXHAwfwRBFY01PLLb9qw==
X-Google-Smtp-Source: ABdhPJy2iqOvz5oiC9mbpaYvNpZrU0kJc2FQTM+3ouhw50dnA7I/3G/X9H4WpLd1NGK21whRdZqPyA==
X-Received: by 2002:ac2:4119:: with SMTP id b25mr15215917lfi.3.1639189084146; 
 Fri, 10 Dec 2021 18:18:04 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id y7sm504663lfj.90.2021.12.10.18.18.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Dec 2021 18:18:03 -0800 (PST)
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
Subject: [PATCH v3 02/10] dt-bindings: phy: qcom,
 qmp: Add SM8450 PCIe PHY bindings
Date: Sat, 11 Dec 2021 05:17:50 +0300
Message-Id: <20211211021758.1712299-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211211021758.1712299-1-dmitry.baryshkov@linaro.org>
References: <20211211021758.1712299-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211210_181805_930260_0D7133ED 
X-CRM114-Status: UNSURE (   7.87  )
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

There are two different PCIe PHYs on SM8450, one having one lane and
another with two lanes. Add DT bindings for the first one. Support for
second PCIe host and PHY will be submitted separately.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index c59bbca9a900..d18075cb2b5d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -50,6 +50,7 @@ properties:
       - qcom,sm8350-qmp-ufs-phy
       - qcom,sm8350-qmp-usb3-phy
       - qcom,sm8350-qmp-usb3-uni-phy
+      - qcom,sm8450-qmp-gen3x1-pcie-phy
       - qcom,sm8450-qmp-ufs-phy
       - qcom,sdx55-qmp-pcie-phy
       - qcom,sdx55-qmp-usb3-uni-phy
@@ -333,6 +334,7 @@ allOf:
               - qcom,sm8250-qmp-gen3x1-pcie-phy
               - qcom,sm8250-qmp-gen3x2-pcie-phy
               - qcom,sm8250-qmp-modem-pcie-phy
+              - qcom,sm8450-qmp-gen3x1-pcie-phy
     then:
       properties:
         clocks:
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
