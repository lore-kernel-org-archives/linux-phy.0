Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6DB7C6FA91
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zO6j0WcbdrMdzT5UoKmd8hzXRf6s1qGNIIOP/GRQbCc=; b=Tf4nKu6p590Tjr
	dTubWhFkNWv3TB+YlGFItMtklQony80cAQ4lpB+cOJ+lUGxjg+xLXc1wNuVK/hPIHL3624h366Bh6
	gERv54Es0bKUYEd/5OdZn98m3vkQAXv8f0MFmkq7lMfYY7R6oXLKkMk3ugxbdeqssQIrEB5tKqiWl
	+hAYMGk/eSpV3qJlZ+aVpb3yKwiMlFSlilmycFW/J9sfbsSb0MA5c3KmNuM7De64Pfb0YuOLhuYdP
	tRVJzst7jBQBiK6c5nxEG/+fzMeiXDGxrWbPnQug+/bPlO4NSVTGMhe/YnvycESrt0I+vjES7yShp
	d72muZQX5Kvqxy7e29DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWa64-00ExgA-DU; Fri, 09 Sep 2022 09:14:48 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWa61-00ExYk-3s
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:14:46 +0000
Received: by mail-lj1-x231.google.com with SMTP id z20so1092878ljq.3
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 02:14:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=5MyxjEhSqcQYv9oqAAjUG7kWOklie0I2GmKRB8jIEeU=;
        b=fJYTUukRypDeg6Hp0oxgJLj2ZwZGJi7eAzLJWAyo5M2SyhpbAofQcr9qpuhGESurzs
         ujsll6x9ELeV0mJ/z9bnvRQ03rG9v+KG95DbMWRqiWX4nzJLAS2zScSx1lEhwRjbbHUW
         yCo36lQdjM1VkoWECRHA/WBfNN4NqUYpFOGmJB0LqjnfqdLEZdt8Yu4xz4WPaGqYsvnu
         0VTx15WkH2hzvyjeaW19+6ju7AtRimGbXfhXugavEgAZgQR9IxI7fW1cLRG2Le4uNsWW
         DfxjV652kquTDWxXw2aFZODIFqq1xLX1lLUSjYhlbIyXLQVUOAHtLX1Y7XB8BJC8IpO+
         JnAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=5MyxjEhSqcQYv9oqAAjUG7kWOklie0I2GmKRB8jIEeU=;
        b=CM0KXz542Cwg+Dx6iKvfPvDlkPdBatlfD2oekYx8iQssffIRqzzCH1mjrt5DEqZ9j3
         LeAWZI8hAUNiTqWiWl4U9C2C2BtCfaTzDGBL61eh/EM57dELsnTnIgka47DqX9gH+Bi1
         jCh7vlAqocEjpM/YAKKT5+gtIfRy4BtypfziSPoUIdHQoXBdoQivEdXpPsPh1j2zMGEZ
         +6DxUBZlN1oCHjNMzBRPvD957dPjUtBuqqVII42strSNf6hWZpu+Yink8NxfCGTjCe0v
         w7OwRKJIvfqc/DPfp7OzBWev8vtu5po8VtNf5cFr2sES5rlkT6CLE43GeIBOuBw2UDwy
         j/6Q==
X-Gm-Message-State: ACgBeo24M3lo67TxSFK38gBegilHHFM4PJq1T5pMc0R09r30a8OrRRvo
	J9z6QwozB1XxgFhVvMZ4hxwHXA==
X-Google-Smtp-Source: AA6agR6xzToALUoWmSk6vOlrNi+UWb5/PMWZz2w0OYejPJNkD1XLY3D6JlDolP1r0m7jkF5+Aqp1bA==
X-Received: by 2002:a2e:be9e:0:b0:261:b228:ed8b with SMTP id a30-20020a2ebe9e000000b00261b228ed8bmr3635536ljr.226.1662714884653;
        Fri, 09 Sep 2022 02:14:44 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id z26-20020a2e4c1a000000b0026acbb6ed1asm201615lja.66.2022.09.09.02.14.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 02:14:43 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 9/9] PCI: qcom-ep: Setup PHY to work in EP mode
Date: Fri,  9 Sep 2022 12:14:33 +0300
Message-Id: <20220909091433.3715981-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220909091433.3715981-1-dmitry.baryshkov@linaro.org>
References: <20220909091433.3715981-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_021445_231801_98B611E1 
X-CRM114-Status: GOOD (  10.06  )
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

Call phy_set_mode_ext() to notify the PHY driver that the PHY is being
used in the EP mode.

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom-ep.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
index ec99116ad05c..e2a1c3c7f599 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
+++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
@@ -240,6 +240,10 @@ static int qcom_pcie_enable_resources(struct qcom_pcie_ep *pcie_ep)
 	if (ret)
 		goto err_disable_clk;
 
+	ret = phy_set_mode_ext(pcie_ep->phy, PHY_MODE_PCIE, PHY_SUBMODE_PCIE_EP);
+	if (ret)
+		goto err_phy_exit;
+
 	ret = phy_power_on(pcie_ep->phy);
 	if (ret)
 		goto err_phy_exit;
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
