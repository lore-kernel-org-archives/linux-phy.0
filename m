Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A98DDC433EF
	for <linux-phy@archiver.kernel.org>; Sat, 18 Dec 2021 14:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3P6kr6MdNjp0bvpm4dsLdv8WEdXm07FxvHlSFAcOh2w=; b=FaSfAaO5gXyW9e
	hmPDI68DFUXn+4U2KUubSDyw9bsItn/BOYQRQzUolhr3jee6XnNXdGSem3CuFnTs2H7aktMSURA6e
	Z51ko3qWnQYnRZHnRFF96cep4qt1GzWsLqESeNlP/7VX0s2BBBRkfHO7/YnaWWjQOLfmJZ63xbY7r
	jxSR8IJVxWUOYJJnfP8G8VsMrR4qnvzyZb1+G9m/4dpqSNbTkBIwNixJtIB/ZGKzLbJR3yfkfKoyx
	nKFj3GieMEgLwr9Vg5oVwCH6Ms28Emm5w8/Qql2JPj+BOxuRQvVz6ZkaLlgs0Q2A/97aOHkMZj0n5
	Q+Gkyb+BxEWeZV1iq7Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myaPz-00DxYs-SN; Sat, 18 Dec 2021 14:10:35 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myaPw-00DxWm-BS
 for linux-phy@lists.infradead.org; Sat, 18 Dec 2021 14:10:33 +0000
Received: by mail-lf1-x131.google.com with SMTP id b40so10729708lfv.10
 for <linux-phy@lists.infradead.org>; Sat, 18 Dec 2021 06:10:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tkCGnjxecVs6iJ5OhJolrVkfI81Gc2C3djNJPu21hcI=;
 b=GFyZ96bt5P1Tdq7Rdod0rseW5Qkj+OeJeADZWdowfdTwcFDkf8x2BxjroPSizd1tPy
 zwUUP1uzUnxvrGZhAGfEI66MN6BCltA4Kd/HJLIn82oICdx5A/SfvFp2eMg6+G7ECvFR
 HrPOsxoPyJcuB41676w7LRSU6HL88vB5JUozjLMmIppYTPmOIf0GtwdCOXg11YNuUy0w
 YygMfwwbtUrkiS3ITRGoTkQ9NIpesQR5fFTIoYvfFh3pK0ZxhPEZEp9dnjgb7XNN74YU
 FqjBoM2BpbPb7N538F9vi9eT9TYO3pxjartRZjuAoIZ6CR/I9b6IMD22K/FmM9EourUM
 CbzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tkCGnjxecVs6iJ5OhJolrVkfI81Gc2C3djNJPu21hcI=;
 b=WYzT9hY5dgHcnOnrjpXm67VnYc+Li7/FlrPwnancDtEEVXlH9MzEZtkzfX6tjQgMbd
 0B+Tv4WqSCU7J7np+Un8qwSdoOCkzJAfSdgozycWoqTHQYbtC+xNumXtd3u9xiVThtlQ
 s2NzHvWA5kxqllRJSzlIKlOsdh3MRpNMpaRpl7Gaw9qGky2jU3AuH12Ny0gm2SZeUsmo
 PC5KP7scysF7m7FkTd5pClRAHKFFCzhoFi2N3sb+oxznwLK5wj886Cgb++NvDtZge0Ez
 wT6jaF7M3JZQJxG38YWBEVeQV3py393vSVuaAnKaLbd+R79KlxSumh2JwO9UqCt7wLbd
 WeGw==
X-Gm-Message-State: AOAM530wZEZEB0nP5fx3pNglYDPQtlrLkbin+1Be2RVW6evFU49pc3Hs
 /HZlfdqRTi/3heUchran5EgliQ==
X-Google-Smtp-Source: ABdhPJy5/t4pXWcG0z5Cg2A8VE9LuZpptJFuMFz/QjV74cxv/fgkZu5Wto1gxgsGm6nwyH2eDjJINg==
X-Received: by 2002:a19:8c48:: with SMTP id i8mr7449715lfj.179.1639836630630; 
 Sat, 18 Dec 2021 06:10:30 -0800 (PST)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
 by smtp.gmail.com with ESMTPSA id c2sm145789lfh.189.2021.12.18.06.10.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Dec 2021 06:10:30 -0800 (PST)
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
Subject: [PATCH v5 1/5] dt-bindings: pci: qcom: Document PCIe bindings for
 SM8450
Date: Sat, 18 Dec 2021 17:10:20 +0300
Message-Id: <20211218141024.500952-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211218141024.500952-1-dmitry.baryshkov@linaro.org>
References: <20211218141024.500952-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211218_061032_416808_0558770A 
X-CRM114-Status: UNSURE (   9.57  )
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
