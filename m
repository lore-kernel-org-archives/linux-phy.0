Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 417D1FA3747
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 21:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bcgPzTVDw6lIhIWSbkPvCsK9URUl8E5clRxdFlM9G8k=; b=NprmgJuXDbqOCg
	gJIu5ZkkzYv9u/9zNbqZd7bQ8Cdnp/QnwkfeRKBbEQjsR+sLFnKKWjQWzGuIOazTD9lEWSjSBNplk
	5uSA51A31hm3BWT/u9Hdt0HVoHRlRxg17bAWDmxojHjCWJ/8T5Et3Xt4TcRXblukg3H/rFIdZK1nT
	GfWmndk9/blPcqB7oTkmjDYoCmP5xcoWRJg60MU3nuQyTiEZSxYr8CYQTq4HKElxpO/SQpaJeGDlL
	ez0bzLRQswTjg0mtEcsSc1zMnyiSIu+evsp6oUts0xYMECyp47Ikx7aZU9ZA20ZdrfFM/NLFAptrE
	LFtkN6iZXpyCasi9nfbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oot8t-009MMv-Is; Sat, 29 Oct 2022 21:13:23 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oot8p-009MGo-10
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 21:13:20 +0000
Received: by mail-lj1-x236.google.com with SMTP id l8so1497817ljh.13
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 14:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mf0KxYjTQhZ9cbNoU3M+UcqCiaOWtVYPcdD8LAR9jPA=;
        b=cflMC47TZ7X5YbQYCR5l0NBpDM7eAliTgYbr2CYpxlmTJvg8EIRjF4KzeAAoC1lXX1
         Vv4KPPYSHILkMsrQAtXN7iepb4LBKw1B1E7TzPXKX4H1NT5fmAZSp+hpFhGNYcj1X/4L
         +iSGItHnVjiDfDVrkwFO55Uhour404p9NBoA8NKOeYFEq+wO+kxBIBW9qEpOpXEh/gsV
         Rvs9GAJ177EjufZ1zMuMBSOkDEqm1k+7nZ6Ds0MfA4sCEtQkfDRGB7LTF0+6NcF+PFcx
         o5RwebOc1Dh48BP6Lw7+W0ZxG3z0IpKXctSAWB6n8r3AScryGNl8VogOUMXnrt7zpHeB
         +sTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mf0KxYjTQhZ9cbNoU3M+UcqCiaOWtVYPcdD8LAR9jPA=;
        b=abdlcxQ6wqFKMA133CVzHo+tzxuRs69btLi5P/qT6gGXCXrKKrZoeFTXS1BnRQNjUl
         NLWNYjdna4pV0pyaH4YnfRVesv8xbgrl6AH8UTpbr8ypyHoIwPhTUoQFK/B3eyFZX+R6
         zPCJzp36pe9waBLGh/fNeujXIuNeQC6kDoZYRmLWWaRcjgiDEBVrfYS1KD9Jaf8ZlkxJ
         MQoDXMYvuRMK9s6KSrHf2xaxkynQa8gIAmf6f5sjov7RyIFs/ItnSCrNAAa306hXyxJS
         WnFO8ZaapUYLUqVqSWyPbZLqduYFR5JSRPhF1PYdun9wy8949/kLtODktQLRfz1ojzt3
         5iWQ==
X-Gm-Message-State: ACrzQf28YxXIqSxyXIeWf6hm/qJTyFJsAKi74xJIKRujyqDkNX5L14P9
	KJI/bRUARD8KlvtsFJ0NAnmdYQ==
X-Google-Smtp-Source: AMsMyM7l/N0xvNu9hRGVgz61/lh4twmbURpChBDXiV7OEaARn7oerZ3qWdG/cvas0usOReQZgAMbRA==
X-Received: by 2002:a05:651c:983:b0:26c:1c6b:8473 with SMTP id b3-20020a05651c098300b0026c1c6b8473mr2138417ljq.341.1667077997451;
        Sat, 29 Oct 2022 14:13:17 -0700 (PDT)
Received: from localhost.localdomain ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id j14-20020a05651231ce00b004a480c8f770sm433508lfe.210.2022.10.29.14.13.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Oct 2022 14:13:17 -0700 (PDT)
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
Subject: [PATCH v1 3/7] PCI: qcom: Add support for SM8350
Date: Sun, 30 Oct 2022 00:13:08 +0300
Message-Id: <20221029211312.929862-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221029211312.929862-1-dmitry.baryshkov@linaro.org>
References: <20221029211312.929862-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_141319_084546_DDFA690E 
X-CRM114-Status: UNSURE (   9.86  )
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

Add support for the PCIe host on Qualcomm SM8350 platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 7db94a22238d..3404c737afba 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1750,6 +1750,7 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-sdm845", .data = &cfg_2_7_0 },
 	{ .compatible = "qcom,pcie-sm8150", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8250", .data = &cfg_1_9_0 },
+	{ .compatible = "qcom,pcie-sm8350", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8450-pcie0", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &cfg_1_9_0 },
 	{ }
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
