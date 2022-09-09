Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25043C6FA9A
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3mrX4LHcftHI3B+X9OopZCet7RGQ68MhSCzRowZOLjc=; b=g++SSanOzNbeQh
	PbV9qML9f5nlLCUGljYvrdWyqzl7ng3B9/d0LY73W2QxQUVDIXFBw7SA74cvz6YMvz0xU5p8RkHTh
	5FoLy1btYy+fcF7jTVCPJ8MIqwjlrS7ZPpvywlIn6o7E2wHoaASj+GUlNdEi9maPmy784zVBO0TvJ
	VRWTWj5adiunYbAk8e1oMQijns2muNtplKvTqHuJV9xJBCVDTzkkIchX58EiXHPNkayCzaro3E0eG
	HznwYk4A3F6yePrxQfwWDTrRxHZh24exDlY2+yzudS72bfHgKv8jD6O+qPlQKEGGL+0fWPAyZwDpU
	kxjbqizfg2rtKqZh8NJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWa66-00Exhd-Jq; Fri, 09 Sep 2022 09:14:50 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWa62-00Exbr-JI
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:14:47 +0000
Received: by mail-lj1-x22f.google.com with SMTP id y18so1055938ljh.12
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 02:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=PvsPfs87gAZRtOiASIB84lPgqC16e4BE5MitB4Ro4vE=;
        b=qov3whUhdo38OXpooMvsX1Qs5OGgXc9voMg70wTfWwKAeYXuMOzVJP59tls7WUZT4o
         yNSY/b3JCkFuDLjapEA04zIKStUHyTIQXFNjaGPqNKtHHXhy7RdVYK9Z2cAY8kQ8uAWC
         S+Jfq5n+9ITLUFWupmSGndRDue4k7EAxgzaLgkL3G7EzsvrawncdOlACledd5DPz0GR9
         yuyyG57PV/vmJcWrt0xIOGXYLvUoDK+/q0oi9JeqhscmZQykY6wF461SvOGzT6NGrhay
         byEpztXMfnAZXAXa0spWJQXc/Tu5cYU+EoMiv/FkGMciNZabMc5R2OKAk8C0NSAeu1A+
         Buzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=PvsPfs87gAZRtOiASIB84lPgqC16e4BE5MitB4Ro4vE=;
        b=i4+Uk2UGoyKMbA09uMArfg4wjs784L/dAzCGwANibE+h7gXOZDh3EySM0+gvodjXPW
         JEjMzlmwDrBvTvVLp8ZFnkTnKLlT19/59rjz+IbkLg8KTesm9m06WatNWMBXbAlu77dy
         UXWvA22VgJ1y9etJDm0wxqrlbDkNyy5YGRSHXRbIjRwEzfqtJzSSgkwni0zIEGpMqhRt
         E8lg0y6h/Cjv/S7wE46lXYPKMBPdSWpgVvk92X+G8TPAzX1Umrd8QOgpdw+fIP0Q+a3m
         FniNOj2Qtm8gg/GPl+e/i/KKx+lIUj3F0k8NoIS0yBYq4+ZCZefx924zGbaOl5PXDFJS
         unGA==
X-Gm-Message-State: ACgBeo3t6lZwoXZtLAeFR27GiymPAOP4M5RMF4hipnaMkQeN4Dk4wuv1
	LufUrbjnpz+3MfPLoRP/N6Zu+g==
X-Google-Smtp-Source: AA6agR75S6PFVot6XvjnyH/8hBrHN0ULhCBT2BAci0nWMcNKGTb/tnio5QwNlbUYevghrsdy1lQOBA==
X-Received: by 2002:a05:651c:1cd:b0:261:bef9:ada8 with SMTP id d13-20020a05651c01cd00b00261bef9ada8mr3560707ljn.387.1662714883259;
        Fri, 09 Sep 2022 02:14:43 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id z26-20020a2e4c1a000000b0026acbb6ed1asm201615lja.66.2022.09.09.02.14.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 02:14:42 -0700 (PDT)
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
	linux-phy@lists.infradead.org
Subject: [PATCH v3 8/9] PCI: qcom: Setup PHY to work in RC mode
Date: Fri,  9 Sep 2022 12:14:32 +0300
Message-Id: <20220909091433.3715981-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220909091433.3715981-1-dmitry.baryshkov@linaro.org>
References: <20220909091433.3715981-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_021446_712652_6404F271 
X-CRM114-Status: GOOD (  10.27  )
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
index 66886dc6e777..32d58282bed0 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1494,6 +1494,10 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
 	if (ret)
 		return ret;
 
+	ret = phy_set_mode_ext(pcie->phy, PHY_MODE_PCIE, PHY_SUBMODE_PCIE_RC);
+	if (ret)
+		goto err_deinit;
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
