Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B69A8C10F1A
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 04:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=phAb1vlIE+cAsoC5/Bn4ez+5nU30KkrvtIhYkayJ4pY=; b=TnXOeT7Ho0WJY8
	R3JBAXm760HUFpfEOlxtADO9K2D2lADylPFrMZQOKMhj4FZfDJ+UL5eR5Hlz5HJT++EEQ4+HG1ddT
	l18LXRTSZUPS5uVoycwrAvkWe8YqYjlLQqjmt1VLks9niA59cJNkXajd/g4M6zqkL0XKoHvsDX08A
	kRspDjz2/gsOZj8ZrxzXNG/cXxqxlv+RVuNTfmUa9XWWcJD/S1DrHguv4rVQNeOiXI1aOB1pppvE4
	usMqUm3iUk2NOQgTFuv3e90am3b1LDrZ98psV/gDalgEDO1NmoLlwp0MKP8WPvyZ6pNvuDt53xynE
	dq6++4JgO0XkVcGd5Xnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s21ag-00000008XUc-1iYG;
	Wed, 01 May 2024 04:29:10 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s21ab-00000008XRx-26VC
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 04:29:07 +0000
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-6ea2ac4607aso3346189a34.3
        for <linux-phy@lists.infradead.org>; Tue, 30 Apr 2024 21:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714537745; x=1715142545; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SI71NoupknAET1jl5DuELYiP8ivpPOCBg6fYut4RUIg=;
        b=Hz0ZhI8QGs4tciE7aQVEHHGkuTu8jSF1wMiytQaEEnQcpt6UDRNh4pfXpAGQ9FePrs
         H5fQ1JPB3ET/YxfE5Wl6dFBUFnBYoiwCyKzmvvn0Y+k1pekECVqRO5/UkIzjBj8CsTux
         p2XiuK4ZjmzJ/nxV6GgPn1B8ztZnLR9LGQVbVPprd4yl+ST8GFGJFybc6MojybhkGWtG
         L88LLNqPLZ/t5bpRs2mA62vsoDSco+oWYA4XL7eqDuq9x4yA5RzXcQ/ZovQb2g6kkrxh
         nJZSrflrsgseN+C/JLdaOQX/Z1kpA3kj8/QxjkCvWEdmcgaQDo3W2+Yk3bxWnADDdn9d
         prKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714537745; x=1715142545;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SI71NoupknAET1jl5DuELYiP8ivpPOCBg6fYut4RUIg=;
        b=TOsUiqIwFgb7LzNBVjbC927hZWI9ymGFk+UpALSbG9iPkJUMUi/htVhaqzdCxgbxsk
         dMBwJrdNHXsoNaZanTy3k0a8/ZWG+AGRi++up3+qEml1vZuXuT4eDzdBYf/Z/XaOuJo3
         I+pD4eaGlLgU2jk4KwCiBkNjya2CyObrmdzCakgitIU51cN8Hs5U24brBcbQlDr4tVOS
         dyfiHuPLfUnz3UDR4hJJsFMrqkTca20+bwJuhWE67c4jvqU+nsd5oMCzMypwZh52hRLQ
         09Q9p650iaFQRkT4fNYJmfIHn4Y9G9t0Dwix+Bge9LRK0woazJcDweUEE3ubNtsA1v2d
         FAJA==
X-Forwarded-Encrypted: i=1; AJvYcCVVhcjxeo5TRZ0tQDWAL39OAVkR+mpVlAs91FyyIX1SBy9fcdtaGtHJfvP4wkqXSgoBXLF0DgnpFOzDEcf6GEVZq4sYAu9lAdWzt8MuuQ==
X-Gm-Message-State: AOJu0YwMf1lhmoyeblOqr6IjNZFAwiEDyLp+3pcRGyHjjVBLCeyYqbEN
	2mRd3v3ZgdDyuwSKGgu97YuoTPOhaJjPwgDi6L8KTgUGNwFNVL6z
X-Google-Smtp-Source: AGHT+IEW5WaGUfL+JvzpQNeZs7pi6YqdiUbKAaXYvweRc4MKw+/bkLFotYWyiDTa1oMgCa3JbZcsBQ==
X-Received: by 2002:a05:6830:12da:b0:6eb:e1ba:6645 with SMTP id a26-20020a05683012da00b006ebe1ba6645mr1695409otq.3.1714537744803;
        Tue, 30 Apr 2024 21:29:04 -0700 (PDT)
Received: from nukework.lan (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id do26-20020a0568300e1a00b006ed6dc9fd54sm2719058otb.25.2024.04.30.21.29.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 21:29:04 -0700 (PDT)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org
Cc: Alexandru Gagniuc <mr.nuke.me@gmail.com>
Subject: [PATCH v4 RESEND 5/8] PCI: qcom: Add support for IPQ9574
Date: Tue, 30 Apr 2024 23:28:44 -0500
Message-Id: <20240501042847.1545145-6-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240501042847.1545145-1-mr.nuke.me@gmail.com>
References: <20240501042847.1545145-1-mr.nuke.me@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_212905_564004_C2330503 
X-CRM114-Status: GOOD (  11.09  )
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

IPQ9574 has four PCIe controllers: two single-lane Gen3, and two
dual-lane Gen3. The controllers are identical from a software
perspective, with the differences appearing in the PHYs.

Add a compatible for the PCIe on IPQ9574.

Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index ea81ff68d433..e61888e6c63d 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1551,6 +1551,7 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-ipq8064-v2", .data = &cfg_2_1_0 },
 	{ .compatible = "qcom,pcie-ipq8074", .data = &cfg_2_3_3 },
 	{ .compatible = "qcom,pcie-ipq8074-gen3", .data = &cfg_2_9_0 },
+	{ .compatible = "qcom,pcie-ipq9574", .data = &cfg_2_9_0 },
 	{ .compatible = "qcom,pcie-msm8996", .data = &cfg_2_3_2 },
 	{ .compatible = "qcom,pcie-qcs404", .data = &cfg_2_4_0 },
 	{ .compatible = "qcom,pcie-sa8540p", .data = &cfg_sc8280xp },
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
