Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 394B6C6FA92
	for <linux-phy@archiver.kernel.org>; Sat, 24 Sep 2022 16:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NUWUIgKamFWsLTtWU56q9QhB5tDQIJ7zAuQg7eqWIJk=; b=LV1D8zQ81ua533
	UlIaQofs8B+8O6z53GWU+UoALJJvh55TdPVuS/Mn7SLPA9fMj6rwzbFp1JDYORpv5d5LaYS8ZyyHZ
	ejlgho+HHlRKTNYhiy9ZlwUnywA4zDYLnRZ2vZBQw9wW8Q5mj42kU6LbtL04yYKH8DRtsGgNTqNlK
	ynhw4JiHQbtoKGbmoTb+139bSEVppm8cd3eisNiNlp1+MtziCMp7OZk0wYHkS9QRVAuIZGViUSzSP
	I+rRGItGQPvNdDus9jvSwK8yWHDmk69iXVUsHZCmsYgd44E7uv9ckzlWcpcas5fl9Q+ljxy6Y51/J
	NpeByQFryW8SAnL1iufg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc7cc-007t7y-Gv; Sat, 24 Sep 2022 16:03:18 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc7cV-007t1i-Qa
	for linux-phy@lists.infradead.org; Sat, 24 Sep 2022 16:03:13 +0000
Received: by mail-lf1-x12f.google.com with SMTP id i26so4600817lfp.11
        for <linux-phy@lists.infradead.org>; Sat, 24 Sep 2022 09:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=qNP6ThRLpHNI/EUjMpjjuQG55s6ZxCbGqJcYBGEJHG4=;
        b=HPew258xyvOOq0agsLcQvgFBuWGMmeXE1O/TQ2jVEgrVXvDPFCvijlXIGC9FeyJ3nn
         D9cRmNI1agSsPKPLL2d8ZYtQX8EXNGJi0fgg9vR9ZtJxNbU+JF4dfhOifgQ/k/cbH4tR
         xcrUK4x7plppO5XSYmW52xXSplayrWLoITtaCX7tpsuU31XuTgNSTvczG4897jXCAriQ
         RsBo9VEO4MMYgZ/pt4GXNyHuw8RYBNkOk6Nm/wDjLSb/diFcvz7mDtvAdRRi4ctgVNCR
         iFI/4X3gbEx6DbjwoMV+217tIa/c8d1RIi42XK9aRRz372sPhybuWVg3d7YWw/nmhr48
         CiaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=qNP6ThRLpHNI/EUjMpjjuQG55s6ZxCbGqJcYBGEJHG4=;
        b=bqAkTKo7o8KPVFbLHCIA3LqMTf2KBxLf/WbN+VcGPTXD8/MPw3TioqWzs6lt1xLDdi
         DgIP0e/RXXIORWpffKCv8UUFTeHgjDVp8fnpktH8GSNv42+JkfSQLjlNWXiRhSHiFQfC
         JOdj9ooCYUUzJFIgJrvZQatRaQDybJ9YS3kp65iM3C02KgYcjquEl/PJTztF9JgsROKD
         2njyl0/s9ctj5KWwfpcr6L7L43TQAQghI765RwyOwOxc8qln2dRZoQZgz3pjdlyeZ3RA
         hGhYFGL6/jlLUEqqUUpH9RA30GJbhMD8LctSaUahwDU559tC+WKfzVxwiFX/806wemiw
         ZD2Q==
X-Gm-Message-State: ACrzQf3w1XdXXIyYsCJsdVs3JDsdjJxKSIEOh7TK3iGZJ+elaOAwBXkm
	YMl/sOmBWhVRBp4Gz8IGqD7CQw==
X-Google-Smtp-Source: AMsMyM6etBjajLFZyOO5iUfHHXRd4Vm+/Y/spSTurjv1mn1NTAAxvJjmipI2eHTqA/yeakFinoOhnw==
X-Received: by 2002:a05:6512:252b:b0:4a0:5642:dbc5 with SMTP id be43-20020a056512252b00b004a05642dbc5mr3293999lfb.436.1664035389284;
        Sat, 24 Sep 2022 09:03:09 -0700 (PDT)
Received: from eriador.lumag.spb.ru ([95.161.222.31])
        by smtp.gmail.com with ESMTPSA id 9-20020ac25f09000000b00499f9ba6af0sm1928015lfq.207.2022.09.24.09.03.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Sep 2022 09:03:08 -0700 (PDT)
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
Subject: [PATCH v4 6/6] PCI: qcom-ep: Setup PHY to work in EP mode
Date: Sat, 24 Sep 2022 19:03:02 +0300
Message-Id: <20220924160302.285875-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220924160302.285875-1-dmitry.baryshkov@linaro.org>
References: <20220924160302.285875-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_090311_876218_0BEED320 
X-CRM114-Status: GOOD (  10.58  )
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
