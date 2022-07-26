Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65CBCC00140
	for <linux-phy@archiver.kernel.org>; Tue, 26 Jul 2022 20:34:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XveW+P9VCyW5EzKsn7JbQQbz3OLI5711OYvcVJ0nA2o=; b=vFiH7PflgMlaig
	4BKKQuI4iOAuaNKav1Ljcs+lYD0keV+jI+Zewvfm1GFPrSMqbhhPh5lZL1f+Jq9at1tJGiCmBFpkX
	/h+nQv2ke7IrW8D7QD9qzzUveau2c11TeQgpwc3gl4JY+MrxYY9KmC/3/x4ySEX7/tDGiWWuj2YHl
	a79di8CyRKFNYe8scozLo0Vgwj+gHX4MaOkT0bU8pV3w4pApKt72PaelQ021EaDmxeNwPOUCovMfy
	xemugxQSJQT7IZEpiMpWCuN2d2UInUaQlaZiZOwS35QYjZkU6h+ya+7M6CDOPYCzRiN2QA0INBPk1
	Aa1EEa4Ia9ofy2DNcriQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGRG0-003KuE-Rt; Tue, 26 Jul 2022 20:34:20 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGRFu-003Khq-GL
	for linux-phy@lists.infradead.org; Tue, 26 Jul 2022 20:34:17 +0000
Received: by mail-lj1-x229.google.com with SMTP id u17so7580957lji.5
        for <linux-phy@lists.infradead.org>; Tue, 26 Jul 2022 13:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LdWpamk1BXCcCjKw35z+csgKSdlT5Sh34aqNx5R4R1c=;
        b=T9fvK+oFNYePO73j91lCGnhZLrvNcnAeTdeKVbd94osYZBD7to7+hXIF0yFF9qJ09D
         YcFfPDaNbEStu4dio7fUSFVPTLhuxhNo1Z+xphWL/RaQXyZiAj2h0+0EdErfclyk+o0Z
         2CC/bf695Y/a/4cQ6XMZbLC+ba6UCM0r2nztGhauUWZHU0OYtCIQr9KP+UKW/bZWoYg+
         m6IVhCE1OKnfkXrz9AaBqN+XxobwZkKF+S2NihGcSJKQVZGVFRLBccdG48o8wsvuhSjX
         8O+n5eB3KfT7gefa245CZ3Px1n5/AMxxLNCc6hI73v6yPnLfGjzKN0qsAoMis9S0fTHM
         fAkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LdWpamk1BXCcCjKw35z+csgKSdlT5Sh34aqNx5R4R1c=;
        b=iwBt3I2dmyMQzjXHqXrU6cq7cjy4bohrT1YjsfttPESLo4NYKKI/lGW60cusRRAu15
         FFjo4NQ6SjsW+4B+LoXVOjQJa+euqvtCqpYULCqdyViyOYO0PM5fq5kJH1nqCY6TgWXG
         pFSpKZ75GBjHM0AqQYB9FQBiVHHihjmilbcbyeSjoLmGy+xlC3v6IXX/XWpQa+v7k/FT
         W/i8P5P8D6T53Z0twtj8b6Dgkk05nTaPtywb8TI4+x9RgTBxSHjDyC7us+tLvDHV7ns1
         3DdyWdIkX4QG/QtNQ4IOSyvR6MQ9meltotKMQf7gYnI18ww8K13LwhEqlLzooI7gPTMk
         CuQA==
X-Gm-Message-State: AJIora89YYB5AAumfv4HWA2lYe0poPbFePorpjuzniTKw5FNhm/AMnAW
	Bv3kyf9cc7JRk+4umpZBLf27EQ==
X-Google-Smtp-Source: AGRyM1vqhNN1aWDvF9DQzXDry47YS8wRlTeYXRcnNh3/lu6kNrEmUuy4u02Qm/0cAFXNdEqCptQ8Eg==
X-Received: by 2002:a2e:9209:0:b0:25e:21f9:2bc5 with SMTP id k9-20020a2e9209000000b0025e21f92bc5mr45364ljg.14.1658867645653;
        Tue, 26 Jul 2022 13:34:05 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o14-20020ac24e8e000000b0048a8899db0fsm1468548lfr.7.2022.07.26.13.34.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 13:34:05 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
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
	linux-phy@lists.infradead.org
Subject: [PATCH v1 3/4] PCI: qcom: Setup PHY to work in RC mode
Date: Tue, 26 Jul 2022 23:34:00 +0300
Message-Id: <20220726203401.595934-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220726203401.595934-1-dmitry.baryshkov@linaro.org>
References: <20220726203401.595934-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220726_133414_628112_3424EBD2 
X-CRM114-Status: GOOD (  10.48  )
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
used in the RC mode.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 93d75cda4b04..f85f2579c087 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1485,6 +1485,10 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
 	if (ret)
 		return ret;
 
+	ret = phy_set_mode_ext(pcie->phy, PHY_MODE_PCIE, 0);
+	if (ret)
+		return err_deinit;
+
 	ret = phy_power_on(pcie->phy);
 	if (ret)
 		goto err_deinit;
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
