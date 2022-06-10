Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27FA8C43334
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 18:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vOaF7J/Dy0otB3p5tCkKw0rcVt9aHHYmI603ohf64YU=; b=3OtDzr1e7rY6Og
	uNLMP0BRTNMlUoq0GfO8PZ4eLdHRsRErY2jEWbpT/Gc2oAsV7B5AVskyx38uuGbOmUz40iqiod50/
	24AVaQ0GFoUhm2z2V8NBJRy/DD4VUiXSm8Y1DEXp8P5Oe11mXPKUJUTSvdtNcirHXsnchIn6hfv0O
	+uJxY1TbtnOI81T5220nCm/gG1W06KJOcv9jurJMkE3cu4OoJDxXLgymaiPjiZthYQLemx9cQKAjQ
	mq82s7Sl/kOeefKjIULCSfQjGtkSkf0mL2nidaeIdNwJgLztb/nrgi5GmbxSZI3h9hLeIAjYXtHX3
	m210KRTOZbsMPey+ws7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzjnS-009RzM-DN; Fri, 10 Jun 2022 18:55:50 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzjnP-009Rwc-RF
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 18:55:49 +0000
Received: by mail-lf1-x133.google.com with SMTP id c4so12159680lfj.12
        for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 11:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZpXhcBz85pZHSFxO7IztMlfvhvygUvHRe9NMB75dzZI=;
        b=HYln7yxQTd0W6JEhVzLIUqvcJF7sqkcJkVdYnOX6S7BsIUJEu06cYJN1/UJDzoLjbG
         TrGgBvJD/JoRSYsjjMiCc8wJytQCfqozhQ8s7i029waEhWz0u3FdmbAT8c5FFN+oqLg/
         RexFFrehDpCRBl7AXgaulHQpHXIaHdMJLnXDfAnPFWPocuMMgTwNrlcpQOQyeqatg6ns
         UeX33AefaBDw8MXJaNDArnjyBHn6oK3QKDHdcRSBkCJhVWfQN8nWCzh6bCFa1ngKZFA+
         LefmuAVldKHo6fW2WlV8GhpEnhj9smyoxK8SPqs1qzzcFR6J9zrAyByA/w4EiJMbYdiR
         +zJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZpXhcBz85pZHSFxO7IztMlfvhvygUvHRe9NMB75dzZI=;
        b=ofGsXZrvWNj2Upcbu+aDPbxhjtMlJB7Bl/QeATPl/kPIydS8Lb4aP1g+yl94rqG1iE
         +WafOONrV2PevWq+rry+TI5EV41vWMyHOfzUNfccnAw50UyJLKFyKjp+oRFOHdWQpCkA
         VwNLrVkyeUs7G4+1OEK1wsbwzZ3QqphtXI6v/Jzigg/ksTYXXOzoQNjgGAsI/QUg1mf0
         9d3iVZ7lW8YLWXHMWzcVJsNOkzLwMcQWkCxXQOTu0UisG5mokaAItUnnrExSxVYBkvib
         ZcfI6NpkR3L/rM32zIt+bmuKuxgqT7PhFIs4SzZU0/gx5la4WjPv4bXDLJGp40wqLLX+
         ejJg==
X-Gm-Message-State: AOAM532Jt3p7VWUV6IVGL6JboZMyQCT0I6c/p9FBimtBwyX/ZhSeQB5M
	an6ymUnSbtU6GqcvS8rgCO5gTA==
X-Google-Smtp-Source: ABdhPJypY/h7RKqc16xUO47DD6bBDpjECmUqbpavQ7VWC6S4INM4TkOoF6/JkIC/MFzLOS3t4olz4g==
X-Received: by 2002:ac2:4e86:0:b0:479:242:61da with SMTP id o6-20020ac24e86000000b00479024261damr28473023lfr.40.1654887345668;
        Fri, 10 Jun 2022 11:55:45 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id i14-20020ac2522e000000b0047255d2118esm4816218lfl.189.2022.06.10.11.55.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 11:55:45 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 1/2] phy: qcom-qmp: fix msm8996 PCIe PHY support
Date: Fri, 10 Jun 2022 21:55:41 +0300
Message-Id: <20220610185542.3662484-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220610185542.3662484-1-dmitry.baryshkov@linaro.org>
References: <20220610185542.3662484-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_115547_977118_19E0C49E 
X-CRM114-Status: GOOD (  11.01  )
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

Replace init/exit ops with power_on/power_off which should be used for
the PCIe PHYs to fix PHY initialization.

Fixes: f575ac2d64e7 ("phy: qcom-qmp-pcie-msm8996: drop support for non-PCIe PHY types")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 48ea1de81d7c..21103c41ba08 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -854,8 +854,8 @@ static int phy_pipe_clk_register(struct qcom_qmp *qmp, struct device_node *np)
 }
 
 static const struct phy_ops qcom_qmp_phy_pcie_msm8996_ops = {
-	.init		= qcom_qmp_phy_pcie_msm8996_enable,
-	.exit		= qcom_qmp_phy_pcie_msm8996_disable,
+	.power_on	= qcom_qmp_phy_pcie_msm8996_enable,
+	.power_off	= qcom_qmp_phy_pcie_msm8996_disable,
 	.set_mode	= qcom_qmp_phy_pcie_msm8996_set_mode,
 	.owner		= THIS_MODULE,
 };
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
