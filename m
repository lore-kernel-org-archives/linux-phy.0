Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB952C71153
	for <linux-phy@archiver.kernel.org>; Mon, 11 Sep 2023 20:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=40BXzLJ3C6KliuJLLNsfvIOVz0Id5rWGCgXYnZBM10k=; b=qVWSgW9wukUr5K
	F/+RYlNG+rJLfGarZ0opED9TaAP1DLanjKRK3QVq3zP2AL16wO4bwsk+3gpqdyyw12l+TboIvRGPv
	0MzLfa34XLYHUXEF/ayVclRxTv1zsAVma4CPDMpkEIFf77n82CUIp49RBUMPfMbHAC2UVWu+BhoBj
	BEFBrPC+tIwt7YYU14n4pcLnU36bnsW3Stom49LPReRRGuWES+JdBtszUCcf8Z3bmTwRbB9OuIw0J
	QWnzf0GloLixSXGhawCOv8dHJ8hT37aVY7MllDL/tcj66V5o3BfzR2nUFJRTP1uqjF0qBkv+PaOh+
	FUKMixz5SZF20g9toUNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfnBv-001FfF-1a;
	Mon, 11 Sep 2023 20:07:27 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfnBt-001FeJ-0L
	for linux-phy@lists.infradead.org;
	Mon, 11 Sep 2023 20:07:26 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-5007c8308c3so8081683e87.0
        for <linux-phy@lists.infradead.org>; Mon, 11 Sep 2023 13:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694462841; x=1695067641; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A/oE5bznBg4aKiDvY6jBIZITJo1kBxpGdGt4GJUgziI=;
        b=MpmN6yEyP40av0nupXjIAiKSnPIAKAlJB9CdVu1OQpYbseiY11zdTJfDQrvr2boOUF
         zzxSbxspujF4STgL7e1i7hHAa1+Oo6hDvWjxkOunnF0VUuT2Yi9rVg99TTwYgEl2BsdS
         lO/3YxbFM0EM9Y2ZYAjyFSNLi7fLWPHSQQpw+LvtmxGR6SbMhuWyk5agGigM8xiY4vIl
         W96paaDgiJXoYOCPyuqTcN2O1lib+ydHB3ubEM6/2G9EvIQoLHvSta7ItehtY+8fNVD/
         OXKcf0XrNbCGELHD6XeYJU3N03Bsj6F+mWsjHeY6Y8L2zDzhdYSST+mrwESHcYz1hZvi
         kM7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694462841; x=1695067641;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A/oE5bznBg4aKiDvY6jBIZITJo1kBxpGdGt4GJUgziI=;
        b=q6xuaIK1Vo2PY7YGcctfHfCVsLk0LBMtfsnGEUSmiElPGIXpIO2F9gyonorBfUEqp2
         rvMMT0sEoHl7I/9BVEXb+88hCH5aEDQfuvFQvW0+Pr2bKbQtM9T01McKxqSMI8yRV6T2
         xfGevekYsg7t+YiG9CzUb1PUFAEvktYuOWGx+R4RNlNgr9miA7zPuTAlnPj5CFE9hN5k
         WBsPsM9pVO7SrkCE0nNmjcFNzuHSTHQEOQZ1dXxUyOVoHR8v9BY2BPm4mhW5trHVbu4j
         /3HwAKE2DkUGH/3cXTXTNt7pUKrqqZbeUGgw1uMWdcLfinRMYEpkPB2yjtNbNsQHN4uW
         lrEA==
X-Gm-Message-State: AOJu0YwDnjKu8H78bYm8v+JZhLxAz1GjdpsY3V0r1nl+cIYqLbI2OLsh
	ZA0Pg8Mt3qZJPEb5+fS0LnUknA==
X-Google-Smtp-Source: AGHT+IEAONeGtGXQL5OMvfLz4zVnvNRaE/NPqN7TVCaRAiiECgk2yb47kEGsYyVaCnTkcckP44AI3w==
X-Received: by 2002:a05:6512:3710:b0:502:bdbd:841c with SMTP id z16-20020a056512371000b00502bdbd841cmr2848849lfr.33.1694462841235;
        Mon, 11 Sep 2023 13:07:21 -0700 (PDT)
Received: from [10.167.154.1] (178235177248.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.248])
        by smtp.gmail.com with ESMTPSA id z19-20020a170906715300b00992e14af9b9sm5753258ejj.134.2023.09.11.13.07.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Sep 2023 13:07:20 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Mon, 11 Sep 2023 22:07:15 +0200
Subject: [PATCH v3 2/2] phy: qcom-qmp-combo: initialize PCS_USB registers
MIME-Version: 1.0
Message-Id: <20230829-topic-8550_usbphy-v3-2-34ec434194c5@linaro.org>
References: <20230829-topic-8550_usbphy-v3-0-34ec434194c5@linaro.org>
In-Reply-To: <20230829-topic-8550_usbphy-v3-0-34ec434194c5@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan+linaro@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Adrien Thierry <athierry@redhat.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694462835; l=1296;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=cNyDA6fMaENsuHCLNNVW+UYlzx4pIxp/iYgLeni49ug=;
 b=uHEXpp8NQFwG0H2NddAl1WapfQ5ssKAAw81IEZDNcf3fTfOUgytXxoDVsDQ9foqs+IqEJDHGw
 ptoxYYM09iNA2n89eJVs81tUR7PiSpIfuKVTYNJw+2k3HyugLS1GbuY
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_130725_144451_0656B8AE 
X-CRM114-Status: UNSURE (   8.55  )
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

Currently, PCS_USB registers that have their initialization data in a
pcs_usb_tbl table are never initialized. Fix that.

Fixes: fc64623637da ("phy: qcom-qmp-combo,usb: add support for separate PCS_USB region")
Reported-by: Adrien Thierry <athierry@redhat.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 8fd240dd5127..5e6fc8103e9d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2555,6 +2555,7 @@ static int qmp_combo_usb_power_on(struct phy *phy)
 	void __iomem *tx2 = qmp->tx2;
 	void __iomem *rx2 = qmp->rx2;
 	void __iomem *pcs = qmp->pcs;
+	void __iomem *pcs_usb = qmp->pcs_usb;
 	void __iomem *status;
 	unsigned int val;
 	int ret;
@@ -2576,6 +2577,9 @@ static int qmp_combo_usb_power_on(struct phy *phy)
 
 	qmp_combo_configure(pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
+	if (pcs_usb)
+		qmp_combo_configure(pcs_usb, cfg->pcs_usb_tbl, cfg->pcs_usb_tbl_num);
+
 	if (cfg->has_pwrdn_delay)
 		usleep_range(10, 20);
 

-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
