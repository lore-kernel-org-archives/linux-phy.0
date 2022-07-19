Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4360CCA486
	for <linux-phy@archiver.kernel.org>; Tue, 19 Jul 2022 20:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fURIFSExQOTrJ7YYa2SLJkAhUhkX8MbOu8QHlVHxPKk=; b=cKWVpja8YzAlb1
	61jAg6ne47k6hP4i2kB2fTNTTsJo7Ym2FuS1Le0wD1NrlFfJ2M6yc7EB5oP2tTYkf8RBlOKqZog9F
	TyPaVONX7ToHnSHFDWKw7gDBFKIHRX+lznM3CHAMOi8kN1Fa1hlU2TwzG72r6y/w8pDTXpiVJiq3c
	svIp1qv5egmTd5K0QZf2+WB+xvBFy/Ve0z/xclOnMVxb3hX7Op+b5jp9hOQw/WHF03hxgZ00DKjp4
	WjuQ18oy9s9iNBfnfmbnH1481XuXBPXldw8kHIkHuZXx46L5R48TOrC3duXrORJQuwJGnJxf+Kpmr
	V32f2XnhP/PoxQ2eNckA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDtUM-00CKpz-7k; Tue, 19 Jul 2022 20:06:38 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDtUI-00CKiz-BO
	for linux-phy@lists.infradead.org; Tue, 19 Jul 2022 20:06:36 +0000
Received: by mail-lj1-x236.google.com with SMTP id w17so18708272ljh.6
        for <linux-phy@lists.infradead.org>; Tue, 19 Jul 2022 13:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4mVgMU0JNbVFGBujet/TzqwP83qk1CmJW+qJ8LQMNlY=;
        b=i7hZ0hMngQc7Ox586XnCw14dO3Q76ewcYwgL3JWtCROESiVwqKdBy9DFJe0N+Ku07T
         XGJBTpOR0aB2NdTqxGYEFlDsA9I04V2Mg7Jm1ymf/QPQEtjhnbPDwS22IIxrD7kq/P4r
         cKdXI9DDQlJ3uG3jXTQJy/aWFABS9IwAjr7znXlMBeq4jC0JR2rWi89MLpTD+xzTXbYa
         YNupmECt+x8NABwGeg0CQwV/BXjMR4C0+3uGrWB1alu2GtqOO2XuEJc0Wwe5BWITUaHK
         t/uP3h2tIfbo6sUbjfaUE1rdpHoo3go85/HDFcaCL3gvz7HjoaGmlCWqAAejNj+ZeC15
         HGPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4mVgMU0JNbVFGBujet/TzqwP83qk1CmJW+qJ8LQMNlY=;
        b=r3CFqXmI4gHxbl2Dp8ZEVop2iYoRFWcSNss3SssTa2FCPeHFlSKWjq0bETnoE8JRcW
         l9yTcBoUbz8z5bHumq6c0FW1Y4ZSWKozj25kcolnid2FuOZQfE2T8+/C/e/Y/DQ9c8SQ
         z2PtpuRIzv2LBUPdmVJTJ5Y7IYjFgjjoPCd/+eqEruB6wCRE7oRf+t00PXF5K59QSmw4
         FVkQjzycTVCO6lyMwRY5+UVKgA0uA+2wtK2u9t4rfihytEb+EzFbJ1KJH7hMfG2r+r+x
         wJYHV4Yux2/HteJ3biBpB4ffb+81zj3O/vCLWzamtKflR3AhXF6ClG3zpfBe3PCevpLB
         +EPw==
X-Gm-Message-State: AJIora/zLaGlCNRSfZ4VJuk5NXfptPcqSSXQpIB89VB2YNzYdREyIoLh
	MPEUpR9ITZCQ+S/fwj+9/v2KjA==
X-Google-Smtp-Source: AGRyM1u9CfxPl7wPBc48239pNVGU8t/qNRvfHJmFtQjpS/0pPx2/sF6/y3/uj8+7LTvllVEsX6jQQQ==
X-Received: by 2002:a2e:a277:0:b0:25d:6904:d97a with SMTP id k23-20020a2ea277000000b0025d6904d97amr15463932ljm.76.1658261191484;
        Tue, 19 Jul 2022 13:06:31 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id w16-20020a05651234d000b00485caa0f5dfsm3402324lfr.44.2022.07.19.13.06.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Jul 2022 13:06:30 -0700 (PDT)
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
Subject: [RFC PATCH 4/4] PCI: qcom-ep: call phy_set_mode_ext()
Date: Tue, 19 Jul 2022 23:06:26 +0300
Message-Id: <20220719200626.976084-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220719200626.976084-1-dmitry.baryshkov@linaro.org>
References: <20220719200626.976084-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220719_130634_437462_87712F67 
X-CRM114-Status: GOOD (  10.56  )
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

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom-ep.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
index ec99116ad05c..11f887a2f7c4 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
+++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
@@ -240,6 +240,10 @@ static int qcom_pcie_enable_resources(struct qcom_pcie_ep *pcie_ep)
 	if (ret)
 		goto err_disable_clk;
 
+	ret = phy_set_mode_ext(pcie->phy, PHY_MODE_PCIE, 1);
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
