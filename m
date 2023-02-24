Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C6FDC61DA3
	for <linux-phy@archiver.kernel.org>; Fri, 24 Feb 2023 11:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zsEEST0zYp3mbs/SgxLRlKsII6Hvnar1l0x53JNQ/OY=; b=n3tjPMp9OmZBx4
	pyoYVgF17+BxPY9xq5IDYiu8SDZarizZkuJjNfWbOe1FZUxL7ZavTBHR0S1i/9bp/n9dGAyBf1rkK
	JU1mvNnfD1CwW2Ro+SP7hH7UMyLzGyYmaLEuVjEpENr39jjTL5eKadoW0Ch6xoiO5XDixBU8Y/vit
	p/Lpkwp901h6IY2fOX9n1LIRMPYMGdpnZkQ3tP1AcgjyeCSeCD2IFweyygO7O73thV5d9uay/5wAl
	GMxIBd4qvkJXnJDFBqW/nPj9k+887d/kGpCI3DtCWzthfh2fZu3DBf8vEetRuGLxJSPlo0VJfsVF0
	d9TVri9Jcdi4wYWc+eDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVoJ-0029gy-OJ; Fri, 24 Feb 2023 11:00:19 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVoG-0029fP-Tm
	for linux-phy@lists.infradead.org; Fri, 24 Feb 2023 11:00:18 +0000
Received: by mail-pj1-x1032.google.com with SMTP id h17-20020a17090aea9100b0023739b10792so2307588pjz.1
        for <linux-phy@lists.infradead.org>; Fri, 24 Feb 2023 03:00:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GDe2OfCLNRaJ6CRURKr3KlmzCsataxU7y19XTJRsk+A=;
        b=fAJqvN5f5O1suKMbMKyZTKUOuQWDy9CpZJalOaBD5HtdbClkBc2Y3mQktVEXsKIkyM
         jqwulwTPo0TCvEOim7vshccXaA0Rf0Y9DXxoEyVsK6j4qZBAOBZHZiAZh0/FPdl8b/6t
         99/G0hP6iYZ4siN6USBnUOzHhXy1eq6v4rBhHz+L1jWHVYaknjNut3fHZGmnF4uuf8bR
         wpflaqZ3v5/cyV78xkdj4tw+GViopd/zJBAxU8ZdPbKO62vSoEb1Mc10BxaZZnmVKbUe
         7pNqc3ZJQdBJVjmXt29Ew9KoAUfYslHbLyuSOn82oi52m3xc0zy0oxh6RKvsx+uXM0Us
         l8lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GDe2OfCLNRaJ6CRURKr3KlmzCsataxU7y19XTJRsk+A=;
        b=peKVnchi/vmXONMOgJ60+OKVoelyYE/iKXLL7KqE9R3SrbC9l9UPTHjUMVkwypbAYr
         MZhhCM38Xih07wNOXysRo5jULaCvAiZrw9WaO2RUzMxfSXlIQ6Su1qmn9vJQoUx5GIQ6
         C6WtW5CXVih1s8Dra2e2qoiEHtx9vPr1K5xQ7dAkEF7Vb3RUSXOl87R6Cn3z/wATIcYv
         Gl4Xe3WVnMWAnBUkZganMiNCJkwumnq2SJtO4zOzC7tOHnr7aLCIiCfGma0Sxk4q/X4N
         FJT+2JfRghFa7++i5bXXj14B733ZmEimmeKX+Kp/4oqDMLlxnBliDGBDkBinWt1yjG4V
         lztQ==
X-Gm-Message-State: AO0yUKUaoJJVS+jO4ovZ4rMMon/49FvW3It33xaE3ASzBcGN6tCkZSXc
	xjmqu7GycDfxvWMXb6hi0fn5
X-Google-Smtp-Source: AK7set96B4clo9yI/CAFFJdJQ32pbl2Rs/s9/H+2kiiR3ogiFM6+s9/K/NGi2RuWUQxR38KPnofOuA==
X-Received: by 2002:a17:90b:4a4d:b0:231:284:ea4d with SMTP id lb13-20020a17090b4a4d00b002310284ea4dmr17736121pjb.22.1677236416420;
        Fri, 24 Feb 2023 03:00:16 -0800 (PST)
Received: from localhost.localdomain ([117.217.187.3])
        by smtp.gmail.com with ESMTPSA id gd5-20020a17090b0fc500b00233cde36909sm1263853pjb.21.2023.02.24.03.00.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 03:00:16 -0800 (PST)
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
Subject: [PATCH v2 13/13] PCI: qcom: Add support for SDX55 SoC
Date: Fri, 24 Feb 2023 16:29:06 +0530
Message-Id: <20230224105906.16540-14-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
References: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230224_030016_985797_447173B1 
X-CRM114-Status: GOOD (  13.92  )
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
