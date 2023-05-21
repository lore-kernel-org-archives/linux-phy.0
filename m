Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B732BC7EE30
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 19:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dr79HF/BTyOdHDbsksWqXsmMUP5kZRuAFzM6SHRovbQ=; b=dd5iP/UrQmlOOy
	pflepjEXkOsRHGv+lapK9gJob7I2zUYG2I6IWHFi2Gef604wqDF+c75YIah4j+Hmaqr3x5biOWPJe
	RLwPqLEHDX/hNqvtTEeDuM9w7LbCU99HqlgVnRy5Bt0g7qvfvft/jUOUAnhPZfRfSqhCsdj/2C4lZ
	H0+D9+piaN9X8C4zU+Q9hKcrnOhF31g7GVcbinCTch04pUO+MyErCkVBFYAKIwfWtmhkiby+9LSYm
	ZUjPACSL3UF+YvuAUoTG9ttfkZGSvSFn+oFL3uzYPGvqjtXr9cjNTVVEpAZT1DFugDB9Ik00F4Lor
	UV/ebhwPRLIJD1MIN8Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0orE-004Wej-0z;
	Sun, 21 May 2023 19:36:44 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0orA-004WcN-0n
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 19:36:41 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4f24cfb8539so5989339e87.3
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 12:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684697798; x=1687289798;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aL6CSlS9Q6UUnnjwqpxYTCJ6oS+R2HPG/MBYegldI0Q=;
        b=ffHrUF0VH9PjnZcExL8ZbjwGU/g+KQn+qyEPoa9b2tlcvyd/MQ/oWloxfdYFsW9HuR
         OueIVqVqz3h+SvtOiIEV7XD6+d057E6BTMXubKYtYx0A5Kukjc8Emgn3ffW+EBkEv3eZ
         sNngKxYsSVcVs2fjXqayKc59d3oC6wnuyVIQ5kPCWcPaF2ywppq0ktWBAE3/7R30ozrL
         jAfDzoIXg5Hoec4Kkh8F89xSXbPMleQ2DhAEoiM0jO7S0F58ZB+bWnfiB7M5JAD3t6h6
         6TMKhWx1HCZoVJpv1Ob21znJrEGaH2J6IiYBpSNWJ0rcuJFownk0ByKv2o+FkL/mZFI7
         /+5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684697798; x=1687289798;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aL6CSlS9Q6UUnnjwqpxYTCJ6oS+R2HPG/MBYegldI0Q=;
        b=HTYUgnFUNq8WLguJ9gHARg92obUh4bpwfSL3pmGGDTdJy40t5H5tAAmyNzlhI5GkMC
         LnPsTsPKbmNRfLCj1dgBlt2rmzZpCZ8eC60QUkK+wTLQPCzktc5++t86NaehB3HqwMeQ
         YgXhRWSzNMaVeSVQu8+W8PItz7gJbGCJKpbBdgwObR9urdTKGAjDliq/ohGXKg26LrIF
         wxTDCcP4UReUjxxohSzMVauW/qKN3GzPbXCIMvqWvB22R2JbSzV6GI3+OQ0PeNHsM++E
         HhVOX6GrFXbNV5Y58v3i5ZWws8BFv9WSWsIYMhALeKHrJPFWm3t0d41L3OdwMkXCz5kL
         BrVg==
X-Gm-Message-State: AC+VfDyuTz0MnhfFHL2Qo1aWcIf2p/1GL1VgoSumiT5ITCYpyz2pwMRy
	pQyME5QH6oXhBQQsmDOQa18amg==
X-Google-Smtp-Source: ACHHUZ7JxTvU8M3gsOqPEEgoaPNf6pHr2X27wo7/lE9AHNeaf6Y1L5gWqqCuI/sICTKd876sFdPZgw==
X-Received: by 2002:a2e:8e89:0:b0:2b0:259d:f670 with SMTP id z9-20020a2e8e89000000b002b0259df670mr54308ljk.4.1684697798297;
        Sun, 21 May 2023 12:36:38 -0700 (PDT)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id q4-20020a2e8744000000b002adb98fdf81sm830009ljj.7.2023.05.21.12.36.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 12:36:37 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 2/5] phy: qcom-qmp-combo: add support for the USB+DP PHY on SM8150 platform
Date: Sun, 21 May 2023 22:36:32 +0300
Message-Id: <20230521193635.3078983-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521193635.3078983-1-dmitry.baryshkov@linaro.org>
References: <20230521193635.3078983-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_123640_280315_65290DCD 
X-CRM114-Status: UNSURE (   9.23  )
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

SM8150 and SC8180X are close relatives. Reuse sc8180x data to support
USB+DP combo PHY on SM8150 platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 33cc99d9c77d..2bff1bbb8610 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3614,6 +3614,10 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
 		.compatible = "qcom,sm6350-qmp-usb3-dp-phy",
 		.data = &sm6350_usb3dpphy_cfg,
 	},
+	{
+		.compatible = "qcom,sm8150-qmp-usb3-dp-phy",
+		.data = &sc8180x_usb3dpphy_cfg,
+	},
 	{
 		.compatible = "qcom,sm8250-qmp-usb3-dp-phy",
 		.data = &sm8250_usb3dpphy_cfg,
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
