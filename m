Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BF19C61DA4
	for <linux-phy@archiver.kernel.org>; Wed, 22 Feb 2023 15:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zsEEST0zYp3mbs/SgxLRlKsII6Hvnar1l0x53JNQ/OY=; b=hKCtNs8Qh4WqFR
	cDAIxht4bF8YNoMEzD+E77ip0k1FyFuQoAjI+F1MefqkKjm2ZxUXEKQeNz+Wm3rtr67YuFUkFj2YW
	1+aoKIJ2fi40vHxQUJp0yfaccqTm/qRY/COG41/iCgHthqHJPHM0sJdhrwn7N0XjV0DVgQONwhXuz
	TGrOgR12+KpNZ1JssYECmYtvFzrxJoCkkYnAO9Hknd6XpIz9AEUkjlMbzRWsIw7oFLmdIUOowudsx
	1quVcuJIGbbyAUvJW1t/v8Tdi7wdUavCC1+bM0ntRVbThDjZbJpBHr8R60KXIvMh7Mr+ifJnHTiOj
	i3xlyyQEoed9mGY0+9gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUr89-00CsmT-PU; Wed, 22 Feb 2023 15:34:05 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUr84-00Csjs-TG
	for linux-phy@lists.infradead.org; Wed, 22 Feb 2023 15:34:04 +0000
Received: by mail-pl1-x62a.google.com with SMTP id c1so9402927plg.4
        for <linux-phy@lists.infradead.org>; Wed, 22 Feb 2023 07:33:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GDe2OfCLNRaJ6CRURKr3KlmzCsataxU7y19XTJRsk+A=;
        b=dOIV/WhuSheLaQhlWxlj+3+T37sWs0Un6jvwS3pqTS1r44qMPZoR5sHKnaeFt3+Sld
         nU8fLlIhzDveRVkmFJIH+7MBdxBwz6X/Si+ABbNOIyiGWudOvWEg1/l5bgWFERZEYdYl
         B7aAI4GwhI+Qzk1kfmvv0ogR5a0+OwywlAES1vSGmmjBnh4Ui2qCNC85F+lfD1hS8HuO
         Ft8n9ha5kHL0rFdCP00hiaxRUbgsIVr6AF2L1Cxe4qEYuA5PoeHMeuqCxhj9a8g0+ITf
         IiGS4jR4hzEqp9HtjEU6aXnMdV6DhVCLxuvMj417l1+aN3yE/iABUrtXiwevjEtCDtCi
         eCVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GDe2OfCLNRaJ6CRURKr3KlmzCsataxU7y19XTJRsk+A=;
        b=n/WAQV3FakighLXFKbfBDXuN/yFGNVztMgjS3gRez3nBkV3+DqUppS1d7neUY4kBSA
         wD+i+ZifKpYU4FGYoHcJyCf2h/wV9b4MX00f/5xp7buuvPPaFCIgjMo0wUcnJVKhe8f+
         RHbXygeHCZ9LXdZUAlRxaWUnWoTKs8MyrAOsuzrCMUdbjy038LIh4L5WqnfWZymwSo5Z
         5R7a6+ag4sTyieuZDiYEl3I85wcP52Gs8jkQF/B22sUMQDWCP4QgSMD4QHGOPn4BKQdc
         eVAK62AgnSnJnr8Tyl6L7I/CNN60/BoNKd1Zs23AsMrbxlKupvy9EOaELTnquKJ/M1iG
         qbtA==
X-Gm-Message-State: AO0yUKWajDOIGfEbITD1IhI9E/uML4Dqo9ZfPSIRlOcq26+uv9B8ufJk
	Ypp2sdc+VA6zFKb4MIeNeGxJ
X-Google-Smtp-Source: AK7set9PlENPw4Ytv0VFDNBE8oCx8oqoTB1WqxubBssAiajhFfz9or54IW4C+NgfFKUQWVfsUWeixA==
X-Received: by 2002:a05:6a20:b559:b0:cb:cb17:eac6 with SMTP id ev25-20020a056a20b55900b000cbcb17eac6mr2322262pzb.32.1677080039431;
        Wed, 22 Feb 2023 07:33:59 -0800 (PST)
Received: from localhost.localdomain ([117.216.123.15])
        by smtp.gmail.com with ESMTPSA id f15-20020aa78b0f000000b005ac419804d3sm5222482pfd.186.2023.02.22.07.33.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Feb 2023 07:33:58 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	lpieralisi@kernel.org,
	robh@kernel.org,
	kw@linux.com,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org
Cc: konrad.dybcio@linaro.org,
	bhelgaas@google.com,
	kishon@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 11/11] PCI: qcom: Add support for SDX55 SoC
Date: Wed, 22 Feb 2023 21:02:51 +0530
Message-Id: <20230222153251.254492-12-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
References: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_073400_965509_E40B4AAB 
X-CRM114-Status: GOOD (  14.24  )
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

Add support for SDX55 SoC reusing the 1.9.0 config. The PCIe controller is
of version 1.10.0 but it is compatible with the 1.9.0 config. This SoC also
requires "sleep" clock which is added as an optional clock in the driver,
since it is not required on other SoCs.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 77e5dc7b88ad..659df73114dd 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -182,7 +182,7 @@ struct qcom_pcie_resources_2_3_3 {
 
 /* 6 clocks typically, 7 for sm8250 */
 struct qcom_pcie_resources_2_7_0 {
-	struct clk_bulk_data clks[12];
+	struct clk_bulk_data clks[13];
 	int num_clks;
 	struct regulator_bulk_data supplies[2];
 	struct reset_control *pci_reset;
@@ -1208,6 +1208,7 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
 	res->clks[idx++].id = "noc_aggr_4";
 	res->clks[idx++].id = "noc_aggr_south_sf";
 	res->clks[idx++].id = "cnoc_qx";
+	res->clks[idx++].id = "sleep";
 
 	num_opt_clks = idx - num_clks;
 	res->num_clks = idx;
@@ -1824,6 +1825,7 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-sc8180x", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sc8280xp", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sdm845", .data = &cfg_2_7_0 },
+	{ .compatible = "qcom,pcie-sdx55", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8150", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8250", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8450-pcie0", .data = &cfg_1_9_0 },
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
