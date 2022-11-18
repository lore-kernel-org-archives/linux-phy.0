Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26812C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 18 Nov 2022 23:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AGUUEfzmQ5Gs+Ywkh8fXucrDHAvpiQtKPcrb7LaHHaU=; b=iJVuLKRc4JMLHW
	BNfUBObXeisWkPiMgdXUNTNewz5VCXJtvkUu6hjq1vhDmZVl7TL9MgR1bWKh5cDfcT7F+MP+jHM9t
	DVVcn6UVEbQ4gJsO8gZ5jonsOUeOOnPfxxabOAoiLOPvtzYAuzvI8GcDwa0GTHqSO+khYHFYK5sHU
	rmjnTvJ4wswTxXBSaT65wCRpJIFxOZ9Q6oF/J4A9wk5i1kND0Q0LyqlFyQGrFFjYgGZ0hC7Q/wiir
	XmFvwzXVR6FWf9tIkl7w5fRScQu3uwP2gkSxxAzdOvKqCFivIZ1vMTPPO77vdAsfEKFyQYkEXBYVg
	CxEWbDlYBlygxexZUG9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owAqz-009CKw-H0; Fri, 18 Nov 2022 23:33:01 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owAqu-009CGw-EH
	for linux-phy@lists.infradead.org; Fri, 18 Nov 2022 23:32:57 +0000
Received: by mail-lj1-x22a.google.com with SMTP id z24so8637986ljn.4
        for <linux-phy@lists.infradead.org>; Fri, 18 Nov 2022 15:32:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gC1JYQfoCecKGmw1NdVlsiCw+iUTbqYNq5AbGPIxayA=;
        b=MfqoiRzTYofGQVZcXORPTFGdr+9epJSWOEQ13gaxNazT7QanZDmp4LLgDgidpnPcQY
         akKWPRoBlV3bahOt75lUbrUbbMCEwrqAhEXfDLsuoLrTmnCDzJyEg66xAlTYO8/uIf0L
         AlTJ54umFdfW+fLeJenG6JoMyOJOy0jKicQJTY2BA0Nwm6LlLblhOP1JpcV2KTrqcbw/
         oX2mDAliNvMwyAfT1I1Qzin0/XqJl6+MC2w1lmaRqreCPasgcG9rkp4L7uq1BsQl2aiA
         zsmi3rzwoQy8jhMUI0CTN3vUTEeG3VZl0VLqv9MZFxRVZVlcmcKf4oErMbSFrS3Z0gvH
         +wUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gC1JYQfoCecKGmw1NdVlsiCw+iUTbqYNq5AbGPIxayA=;
        b=Avpl0OoP/DaQrEIq9FzkYJGmeYsGujNIqWw5U46InEa7CBD10/BFg/KPqm97V4+6Pw
         k10qRdyU2JO9rUplJriYlSeQBOcwmZ0hntsovBA3pikyN15vmvI0R/29+HtCDztw6grt
         hyVYmmoaqP8Rtm2OD6gAc808TZJcMtL7qEiqR1fOwBr/iJYvf4G5BqgOXD8DuXCQEDj1
         j2FEfgd44n3J1elOQLKNIbxbh89iX7jaqJCFMgOyY5OJm4r3rpzqBjCEib9iGjO5LfLe
         FYSMe8ttJR1/tNoPqbWBeakXJQOkAj+Hn9dL05rSXPFEBqNCeKpyfxhkC94CxZ2DhakX
         eoIg==
X-Gm-Message-State: ANoB5pltCAzjqKYjdDGnEtag/eXDA/ORfiLgQ0lrmgwVhP5aaHO0PQSp
	1SvALWNvUCIBBl7e3GEV+280ww==
X-Google-Smtp-Source: AA0mqf5xkJVLCJ8TjZTzGV/e0MJTNmp6C8bsXgT51CxSeQ+sAETlolX3RqJEn0Mfc1sx9IOsrJ8TCQ==
X-Received: by 2002:a2e:bd8a:0:b0:277:b4e:6286 with SMTP id o10-20020a2ebd8a000000b002770b4e6286mr3225209ljq.279.1668814371902;
        Fri, 18 Nov 2022 15:32:51 -0800 (PST)
Received: from eriador.lumag.spb.ru ([194.204.33.9])
        by smtp.gmail.com with ESMTPSA id k13-20020ac257cd000000b004947f8b6266sm843900lfo.203.2022.11.18.15.32.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 15:32:51 -0800 (PST)
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
Subject: [PATCH v4 3/8] PCI: qcom: Add support for SM8350
Date: Sat, 19 Nov 2022 01:32:37 +0200
Message-Id: <20221118233242.2904088-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221118233242.2904088-1-dmitry.baryshkov@linaro.org>
References: <20221118233242.2904088-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_153256_523692_53A02443 
X-CRM114-Status: UNSURE (   9.08  )
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
index 77e5dc7b88ad..b9350d93b4ba 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1826,6 +1826,7 @@ static const struct of_device_id qcom_pcie_match[] = {
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
