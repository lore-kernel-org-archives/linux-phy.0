Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB4BAC43334
	for <linux-phy@archiver.kernel.org>; Tue, 19 Jul 2022 20:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=urCCYrsjwH9Ve25tyGoI8l/hvaaaRAov/serryXmRjo=; b=GMSKpdNoWlHPzI
	ZTAd6GU8QO2YYDJmYCYrZt48zAKkiKhNdxnWjz39ynCN7H9oUOf+DiOiXSyk5D3uggMJw4hbgD4Fv
	3BU+mGQhEHuCZpUuWSrKq1qk0MuiWBqB57IPxUVSYZpOXaRLc94tqMNr8gea8b3cEj4h+HgDOG/Wm
	Ve9RFwfU0hl75ZiPmrXH8l/gTUScw6vQZe/rzH8vURumV/pPJJnzcaBX66d6auR2aymlLqNxBdu3b
	C8xqU4FoYBMYX+7Gk8jIych+hhwBA7F9/7TFvHJv8yIxcZg1xEQY3hGfZF9xLRIfiXgkmmS7azl9/
	FUWOw6L/NpxLRbqvyJ4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDtUM-00CKpq-5S; Tue, 19 Jul 2022 20:06:38 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDtUI-00CKiK-BO
	for linux-phy@lists.infradead.org; Tue, 19 Jul 2022 20:06:36 +0000
Received: by mail-lj1-x236.google.com with SMTP id by8so15092459ljb.13
        for <linux-phy@lists.infradead.org>; Tue, 19 Jul 2022 13:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=khppLGtmeCurydu0up1OheYjo4gNvX+fB6BrZyQEiVc=;
        b=f3ci2Ph/Jhy9qrO9K8itSvsLR/mRbIogP7DXOHWqE0DCiUlKt4CkJPJCoEx/SmmQD1
         vPv0aqsdddYZXLoFwY08wnexr+v06LqtraxIDCIixFfd+s7rzRlUShQbwQp8l0ipKqbj
         7zBEbPezv1vQuO4gMWx99HLWWdo5FAijE/5mKrOqB14TrBIhZSN5TkjCGvU8Vk04wdDw
         /YoRxYHVkWGjXITtr8etj7S9yqhI7R/XJs9EuIyxTNG+UqYVphIDAIyChoZEU27g7qgy
         Y0yXCF13Z2NBeFWj2wBCy2bhxyplCQIBQijE+pNblT/0zb5bu4zC2j1wJM3Q8+zpWSwR
         w+qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=khppLGtmeCurydu0up1OheYjo4gNvX+fB6BrZyQEiVc=;
        b=yalghTuWhL26fPpTdXRjkIWNValLLWRIFoaAwshMhUF8IileIrwRd8ny26zX7HdfAM
         StHFLEwzLmhz3B/JpZrsMrcCqq+S0xMfOJ1FRAZ+iIqosocdUti5RNSLwGDX6lC6i5qq
         O62yVWtVenxcbF7Cmw45h3gpwAwQyZKEE8Kiz6TkX4yIajJsCwPHKuFGlVUS3CZ5rttt
         nvxYFNV2010mgyXsOgtEFDUg6GoHYngjvTFrEPPCWceEO4rhQibEVGvR6yBTt4ZHJ+cc
         74qFHHyY3prn38kcolvUWN5ntGWwq2QZDLtISMVRb29mOM2qo4aw41MmM14Ji1qQkWZo
         U9wQ==
X-Gm-Message-State: AJIora/mH9xYyhKEX2MWevyK2kmIO7bqgcBoIAZIdaJJhlDITxS5jSbs
	9JKmirj/e9KnNOoT7BOZCoy8Sw==
X-Google-Smtp-Source: AGRyM1sZ/OwrlRnWMejUVmyxZIIcInNZ6784Ms3BmHblS8+EmUXg+kcGc9fnwFkJSJEW4BTjYxt4wA==
X-Received: by 2002:a2e:888e:0:b0:25d:8112:dfc7 with SMTP id k14-20020a2e888e000000b0025d8112dfc7mr16170633lji.270.1658261190609;
        Tue, 19 Jul 2022 13:06:30 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id w16-20020a05651234d000b00485caa0f5dfsm3402324lfr.44.2022.07.19.13.06.29
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
Subject: [RFC PATCH 3/4] PCI: qcom: call phy_set_mode_ext()
Date: Tue, 19 Jul 2022 23:06:25 +0300
Message-Id: <20220719200626.976084-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220719200626.976084-1-dmitry.baryshkov@linaro.org>
References: <20220719200626.976084-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220719_130634_431178_6400DEA6 
X-CRM114-Status: GOOD (  10.45  )
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
index 5ed164c2afa3..50bf3fefef7a 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1486,6 +1486,10 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
 	if (ret)
 		return ret;
 
+	ret = phy_set_mode_ext(pcie->phy, PHY_MODE_PCIE, 0);
+	if (ret)
+		return ret;
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
