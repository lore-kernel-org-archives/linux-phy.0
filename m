Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D08E8C3F6B0
	for <linux-phy@archiver.kernel.org>; Thu, 25 Aug 2022 10:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b7xIHEvrsRW0w2hmoYFx6ZcGrASUoqyKjmyWrI5KI0s=; b=GzmtUn3FMjmMai
	9R9UclPBQi9cIHtPS5MMn85siZ1SF5FRM9ObK8BELkFSRy1DyvjbxRCAHqRKsbB5uJB5Y5IN1awjK
	hbrZ3PmhsYgkBF2wLh8PEkVFuGmOmRmZWBzxtw+T9JaQenV5ETvSyvdPRYUdwwfp/pQcKNmzaxosd
	OLF8wXFGsjrpvK95PSH9yt0V0B6z/QUvgKjv7CQb49WFd4QRT5b4ixaqo5f2agy/LO1JGkSlY6DOl
	0jGncSfKiYS5Z1wt09x+mc0EPPOWRmg7IpoKB6hH4z+DQ26Y6odehXP2WxEBBWAsXSFO8FE9HZFNa
	S2TMvFzdxO+t4+zMlvMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRARw-00C4Ab-97; Thu, 25 Aug 2022 10:51:00 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRARr-00C44T-E3
	for linux-phy@lists.infradead.org; Thu, 25 Aug 2022 10:50:56 +0000
Received: by mail-lf1-x12b.google.com with SMTP id bq23so18638290lfb.7
        for <linux-phy@lists.infradead.org>; Thu, 25 Aug 2022 03:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=IWHTArq3vRBlmdLvVJMzGTqkwtxMTZUwrKob6RcAf+o=;
        b=oDV1kIFXY4I9IfHMKNJQQGZbawaB20FTpPwRAsns7HHxewty/PNTm0hgd5gOtXsvJg
         ywabHbfbPe5eBDkSRgQKuhojcbd1brbNbGNa4XHMb3OpJ4AfRvqf4kAfD0a1SODvzQvu
         0awQe31n/AV5APAp41JbR7m1gUV8WQqX4sFSUEu702BfeuJLx19JSOuKk9N64XD+oe16
         H6S/19QzVBM52ufggeOHbvAO0gBa+Ct9i1xAH5PGS0RBffRP/KNMDIYAPdelMAPR626x
         f5R9+Fbrrc2xfwYzYkEWEooebpyeYrtweMJu2KDHuLm3WU//n/zY4bastQ6Wgw9qR715
         MJbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=IWHTArq3vRBlmdLvVJMzGTqkwtxMTZUwrKob6RcAf+o=;
        b=vFEyRF+Ghdm2uAtnNHYUejYYiP1B39D8+jVNpnPXyETjEvaWNS2aNGixCiDivUXGPA
         +YDMyxUNLCQOH4/bVUAfosUWzASSAA0iGg8YAv94tGsUyxX9Gnw4eZ4GcQXfDVI5Q/Ca
         CktABKLr71aZIkiPv0tWwO8jM9cPgm1/l0Y5qw98JBf4KlABfs1e5m8hbV+gV56pquOf
         LlTp7pDNTrCbhSkBS6MWqcBF4WRsQqe8S2x3Cb6xIQ4Idt0Pc7obUBK4vxjyctiv3rHj
         DT98kgk4eu7t7JCzd9rtLCquPk/ZMJu3PP47EiD3IV1MMEeVgKhSulY5JrWtsTc00GZq
         B3iQ==
X-Gm-Message-State: ACgBeo0H2a7GQHKL6wHvdn7/HxikRQIlqzdsJN8qVrLZ11io4CKqz66D
	Sfm95/dP9vLKOUI6pdGv8bpI9Q==
X-Google-Smtp-Source: AA6agR7q6//i+gNOOwDvQNqXYOgFBvzTj4hj6GobSNlranN5aGJXK6M3Qbg2/BtpK/NHGHnUkUtehw==
X-Received: by 2002:a05:6512:3f01:b0:491:9b9f:a54a with SMTP id y1-20020a0565123f0100b004919b9fa54amr1030032lfa.160.1661424650970;
        Thu, 25 Aug 2022 03:50:50 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u14-20020ac258ce000000b00492f49037dfsm429609lfo.152.2022.08.25.03.50.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Aug 2022 03:50:50 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn@kryo.se>,
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
Subject: [PATCH v2 5/6] PCI: qcom-ep: Setup PHY to work in EP mode
Date: Thu, 25 Aug 2022 13:50:43 +0300
Message-Id: <20220825105044.636209-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220825105044.636209-1-dmitry.baryshkov@linaro.org>
References: <20220825105044.636209-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_035055_493281_7E73BAD3 
X-CRM114-Status: GOOD (  10.29  )
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
index ec99116ad05c..d17b255a909d 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
+++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
@@ -240,6 +240,10 @@ static int qcom_pcie_enable_resources(struct qcom_pcie_ep *pcie_ep)
 	if (ret)
 		goto err_disable_clk;
 
+	ret = phy_set_mode_ext(pcie_ep->phy, PHY_MODE_PCIE, 1);
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
