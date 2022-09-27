Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C136FC6FA92
	for <linux-phy@archiver.kernel.org>; Tue, 27 Sep 2022 09:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PsNy8Qv/n/B4lLkN2nHoNFSZWpzveOTO7WbD+8UhXZ0=; b=20cAgTS8BehWNI
	BpuWBHl9XIYvXnvB368oTI24xBZpwqbFUuAiFVeMvIeKi1ZwUQji2btsFC9hJ/xK4MPr13xlw8VgP
	kR1kzAjWGLSaR9jn2Csi276EzE04QJFNKozJMBcH+RmP2Shi3tHSW3Mrns9jIFu5288775sJsZBHF
	HL3cue8ArgSG4LQ93K2agQHyHaUaVQgLIt5cgkc0zgQrs5/oQkAllm7VY+o3D9bPc3P0DWrvDKstb
	Fzfh0gRni/7F6o2s1yLou/oKV9Lu9eYnMgDrtrwS7W81t+sp+V2DO43qwIU1ZP6eSwhg6o7Rdvid6
	IRE1Q4IXQadVpfnv4a+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6sn-009XT9-MO; Tue, 27 Sep 2022 09:28:05 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6nA-009UjM-FE
	for linux-phy@lists.infradead.org; Tue, 27 Sep 2022 09:22:21 +0000
Received: by mail-lf1-x134.google.com with SMTP id s6so14763932lfo.7
        for <linux-phy@lists.infradead.org>; Tue, 27 Sep 2022 02:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=6MXcrTEBzn3PtKMuZkuMSbhXg60T5nB8HdxL6gRaNJQ=;
        b=ghNM3R6nbsJI58kBHKmDE1ecT1LfytZJ6l68ErlWHjMCN8lsh3va7+fki46hLMUhRl
         BVpRQLIU9rrvDSMyTeuB5/vrlJDszWXRli6pimDlF6qCxtMB150NGbYjfSSnklBg1blx
         Evj6qKxfpanUTmFisyJ4RurL16mOCW7SwJan/5JSrxopVLqpAzKdJDrUdLIdDd+g/dJj
         AkUvlwK55xtO8ryMDmtKLzDHx6yf/rKBalkfaxy2zEDbvOZxsJV4v/9rDW5Ts0ykdSe1
         TqFUaFG9TZfVRbclti0d9Cr3NoeW7cQ1D6/Ia/oWNbZ3uUKTYu2xHgnL6y1X564gvlmE
         VLCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=6MXcrTEBzn3PtKMuZkuMSbhXg60T5nB8HdxL6gRaNJQ=;
        b=q3OGn5tUzGbU8pTBNT5Wx3BI3TjsQoonvt+SUdgIZA7XzVpMQZbx5oQk9RjEDjPRCe
         /zePKhfcKd949EoDWBc/PbgH9HujK1e3EZieVmoLJZnvQVgsDs3nKaQxsnHhu3g78gYP
         2YT8EEt6QzjpC+wZdRmMMqRpOOY57hVe3o0jzQuh45iDfJIfk8FSPHdSi2o2VdibAufY
         zKpeQ7Cw3gJuCj/ZRcqvvw6iYUYkuv7v6nbQZLG32QP+k+DZPSbmPv4xhBdNYFfwXNtb
         mXagwZ05MN0FLCgjrEN68aUyu0CeHkiqSzf5IRohp/r+HkSJEiD+1A+FhFJumbW7ePYX
         PRZQ==
X-Gm-Message-State: ACrzQf3Se94WdbvlaS26TEnfVwPsClQxnOpMd5hc511XcxgRFh8waihc
	iI9wYA3Y6cK673xJX0ortCpmaQ==
X-Google-Smtp-Source: AMsMyM52N7sJFQBxxVHOh+MEUqK2aorbxXfmfvY3w+odcRjksF/rgtgwmYbZcyqD6w8BJjM4QTHwMg==
X-Received: by 2002:a05:6512:6c7:b0:49f:5491:3330 with SMTP id u7-20020a05651206c700b0049f54913330mr10613565lff.197.1664270532210;
        Tue, 27 Sep 2022 02:22:12 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id r28-20020a2e8e3c000000b0026c15d60ad1sm104584ljk.132.2022.09.27.02.22.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 02:22:11 -0700 (PDT)
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
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v6 5/5] PCI: qcom-ep: Setup PHY to work in EP mode
Date: Tue, 27 Sep 2022 12:22:06 +0300
Message-Id: <20220927092207.161501-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220927092207.161501-1-dmitry.baryshkov@linaro.org>
References: <20220927092207.161501-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_022216_563657_A4A68B1F 
X-CRM114-Status: GOOD (  11.05  )
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
Reviewed-by: Jingoo Han <jingoohan1@gmail.com>
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom-ep.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
index ec99116ad05c..8dcfeed24424 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
+++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
@@ -13,6 +13,7 @@
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
 #include <linux/mfd/syscon.h>
+#include <linux/phy/pcie.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/pm_domain.h>
@@ -240,6 +241,10 @@ static int qcom_pcie_enable_resources(struct qcom_pcie_ep *pcie_ep)
 	if (ret)
 		goto err_disable_clk;
 
+	ret = phy_set_mode_ext(pcie_ep->phy, PHY_MODE_PCIE, PHY_MODE_PCIE_EP);
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
