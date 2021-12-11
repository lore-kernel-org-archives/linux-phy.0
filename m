Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C078DC4167D
	for <linux-phy@archiver.kernel.org>; Sat, 11 Dec 2021 02:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+HRyTe7szlK5/PIDjel3c+ZaKdQ9+5Ik0UeuHpZ5Rog=; b=0gwJ7cl2wp98Y6
	Jc3BiejnUCOnYnoymrQkYaUpW9TAVkOV7JMP/Kci6L2OgIKtxWDwu8aaIqgr3NAI86wL1nuRa5uTb
	3oPrOQ0GfHSGWwZrJE6xIhuiwJlh6XEunY27o2GlAIzAKR1LjLVzjZVeKlteFebvGDkfVJZbF/bid
	K/14fOXj13iWBuB8Dwb60JT8Ut7WAI/HcZhbVzPKSDZbwZR7ZyuYW5IToMmlLQGmCJWW4OeX7AcDY
	zAu/DbNqevdZSeyF//ILQ9cFO53JG3hYxUJOVEY1XCh5TtlWNYmVE1bsEEaFBmKEJaiy9PlaPpcvG
	QHs9obg65s4IcXFqD6qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvrxg-004R6A-2w; Sat, 11 Dec 2021 02:18:08 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvrxc-004R46-TY
 for linux-phy@lists.infradead.org; Sat, 11 Dec 2021 02:18:06 +0000
Received: by mail-lj1-x235.google.com with SMTP id 13so16113569ljj.11
 for <linux-phy@lists.infradead.org>; Fri, 10 Dec 2021 18:18:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VGQ7+P7dGN15uBsAWu8DCnSdKjv7k9ltm1L6whtQ6u8=;
 b=dVM2YfIsMQrJCdtY0fo23q8+G0R+EJzBOJ9mivsAcqG03Lx13w4dzdM55Fx90wNin1
 WATISpyf+VrUp6g7lGldzL6xpUjhLElvBGvcAm0lcDoOYyVWyaAuFa0Rujy6kyvbAOUY
 fJDlo/x53D+TlXA9VymI6Z9rOMIPFOMr9BO4Xh6fHlx4zZikRpkaaHxu+3xV823izwMg
 RmMTfKTKDvADJkqIW3suhNWX4oTrhCkCO/rHoripLqBJURuWlkyyxnMTD2u3mlYITD0g
 cGgDAEpHQ05xW0g22HT1c6r0jCoFe6koKBWJ0aijJ3yIFK9DG0MGByGWuR/OsnP0un8W
 bAUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VGQ7+P7dGN15uBsAWu8DCnSdKjv7k9ltm1L6whtQ6u8=;
 b=axxmI+73Pd9uIIfROBdKWFwzn3vQA5YeEeq/8m/RATAUXjdSiku99MMs3zNnwRFlVR
 HvyusxjW+wsqSDY0s2soHarfcvNJtA40xvQwpAh2Pmosv1aZ5CO2tdTeh9grAnySWGWy
 fXCgFMAKZDoBNlpntKwOYFEkNBzi77PdHP/QEcvXLEEyRW+D+vRC9ac99XC/pNA4oG5y
 5oXlD2055o4+OfOKyp1v/HB7un3BDXlAzitRYYEBfgFakY50t7SJj669xBi+d9Y8/gUX
 7q4NzvHo2x9dWqIpnpcsztUlxDWtdXw5OV1VNScezbiSNIdK4yp0Ba0pd9KddzBkBS3I
 4JbA==
X-Gm-Message-State: AOAM533P77xuU+cPZ2L+CqrhbzwXPt9gWSFVnM3AegHnHZK1MSaRjHnU
 t3Jc95S//EWX1uOdxPqOLBnvig==
X-Google-Smtp-Source: ABdhPJwd7nIUo2OTKfddhmz3YmfGiwX4X8ZpFu24VqoxaqO4HMmmJVi1pKrXwT4ULIQUOx1dVOdh6w==
X-Received: by 2002:a2e:8ec7:: with SMTP id e7mr16417234ljl.430.1639189083208; 
 Fri, 10 Dec 2021 18:18:03 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id y7sm504663lfj.90.2021.12.10.18.18.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Dec 2021 18:18:02 -0800 (PST)
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
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 01/10] dt-bindings: pci: qcom: Document PCIe bindings for
 SM8450
Date: Sat, 11 Dec 2021 05:17:49 +0300
Message-Id: <20211211021758.1712299-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211211021758.1712299-1-dmitry.baryshkov@linaro.org>
References: <20211211021758.1712299-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211210_181804_974655_03E2BF0B 
X-CRM114-Status: UNSURE (   9.27  )
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
Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
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
