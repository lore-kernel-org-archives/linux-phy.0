Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B8EBC4332F
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 22:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+HRyTe7szlK5/PIDjel3c+ZaKdQ9+5Ik0UeuHpZ5Rog=; b=greN9hrwopx78u
	GWmF+iEcf8Ngf0iNFCSbgimcgddfEFhuGlgtN6wcgzlCt9+KiyW85LU7OJHfX7iHtY12uVKA8QdxH
	jJHX1sJqmJda1JP93UXaAGK0ue5v8oewji4qehQ3ey88Nh2dMq41dcEboI+Iejvy1uJFqg1bnqY0F
	hehtfKiIZmzmHw5Q7d4b/Ml5GrfjJw0jUB/RF+dd9/50NbnklHfTQpRBuiQFa0KsEt+yUM1dDR8TN
	iQLnLW5HJbKsQr0guxgVNqrqR93SnwVE+B/0c5DljGTp3lCshetfp7EaPIYN7sBZXMJPofh6MkvjR
	RTFaUK88HonzU//NYd1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxGl9-00G0PE-T7; Tue, 14 Dec 2021 22:58:59 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxGl6-00G0NT-Be
 for linux-phy@lists.infradead.org; Tue, 14 Dec 2021 22:58:57 +0000
Received: by mail-lf1-x134.google.com with SMTP id e24so13936752lfc.0
 for <linux-phy@lists.infradead.org>; Tue, 14 Dec 2021 14:58:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VGQ7+P7dGN15uBsAWu8DCnSdKjv7k9ltm1L6whtQ6u8=;
 b=RRxSNtHhs2h3wp7qIAKQ3zxUzizk+I+E0TjmDd6EtkvKbSPPWEi7gKOcHB3Kxnmubz
 VVvSUcgF9b6wgdM1HhQ6IDR8p0dT8L1vo17KkEf8hUgVgrLxc+JbpByv3QyRSCaKmErp
 gPc6YaQI7quu9S6cTZCpYIiebSvLRP/TJkHhhBmojPIqQNtZbcgEZhqWzVvwA0tq2uRx
 +ubUoqtOne5kAIrBQqmOmA3NKGw8b+SBSIUHEfvcl946P9f0qWcZTZrXuUxN24A/syHm
 HKppZgiUKyz9y819UCoQlP9NpWN6QUhPB4UcaLpazYWgViXNnKbpRNVkkvCtYHUeFdfS
 wg9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VGQ7+P7dGN15uBsAWu8DCnSdKjv7k9ltm1L6whtQ6u8=;
 b=YoNbt5TuU3KwuBFSEGOaVCINVWhB+kkIhqpq4S113doWlDZURv++eEMStyTHq1/Rop
 v8W390Mw7ha6IOYaqzlHQ0CGCRXl5s0s/wPzderlhML02Klfpp4ZblW8RyoCXj6vkurn
 LEPbDSMrqm9F544lndBf77x6tLBWm85VYd5RS280KqvOTwywMIv2QizVx1zNI0Odk5PX
 oo0vQTsYwS/YL9yP3ZRmFz453Nz4A3iFDLIFn8pFQ0+qI1brh/2aM+LlAUbQL8vkE6ZM
 QSKNkuCtJ0NZweT8dwG5n3co+/ja3tbJhzDwUryKSsryOByCTdYZ/dsltDYSBMJ0q8la
 bnQg==
X-Gm-Message-State: AOAM533meXmpHTqjgA0B//wLFvxG/SX3K/b/0FaKoiOlGFO9L/k4BB+T
 qpswQ+7F/fPIlTd5lDGMKZGItg==
X-Google-Smtp-Source: ABdhPJyLa5EOR0wZYtd8iRnp3X/AWeUMxNAFBSBKd1LQjDKqVnpH0D6R4/HiG/ELQX3uIFtEg8ZBoQ==
X-Received: by 2002:a05:6512:3b2a:: with SMTP id
 f42mr7229730lfv.282.1639522734665; 
 Tue, 14 Dec 2021 14:58:54 -0800 (PST)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
 by smtp.gmail.com with ESMTPSA id t10sm45115lja.105.2021.12.14.14.58.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Dec 2021 14:58:54 -0800 (PST)
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
Subject: [PATCH v4 01/10] dt-bindings: pci: qcom: Document PCIe bindings for
 SM8450
Date: Wed, 15 Dec 2021 01:58:37 +0300
Message-Id: <20211214225846.2043361-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
References: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_145856_422785_03CD8E06 
X-CRM114-Status: UNSURE (   9.41  )
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
