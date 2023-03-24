Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78A7DC6FD1C
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 21:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yDsAg0oKY2x2FSWuG+xlims6w0si/U0mgjOsAqgwu3Y=; b=vn8i31nCjYL/Il
	+kKERQPWjhiq38cOPeVXqAUuub8hOyRG2Wd4XlySqt8qA9J3VXveI3d8CwvIU+yLNvuBUbk37Ilbk
	4+JbqGmyCe/h8MDDzoE9U36EXylLnc+0NMhlgxzS2QEtrXkrSR0KfFC/r5yACdWrxMICkzMbYOoKg
	lTzUgnSj+SSjgG/2N/iOZ6H7OObTCdRmU73KIJccXV3RgKqGVLKMzu3uo35VBLxmF19Qzx0epDWv1
	Bsq8/fpLWxzgEnYG55U1ZzFR3ZdfxmM/0mG/jvmtzI7tJosDUwT09JSecO9D+MxNfBlUuGdDFP531
	QtSepOCdws+UQVXh2PiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfpOG-005gla-0Q;
	Fri, 24 Mar 2023 21:56:04 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfpOB-005ghv-1L
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 21:56:00 +0000
Received: by mail-lf1-x12a.google.com with SMTP id i13so3939670lfe.9
        for <linux-phy@lists.infradead.org>; Fri, 24 Mar 2023 14:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679694954;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FARMu4hTbAZ9FVWyt2VvGjg3+YTS6nEVdT70kTxCBBY=;
        b=j1rCB7sd9xlrWyGKJ5yBj5WzHjKCMGNR03LwVKaDXlmSnOFgj0K1VqrsLL3uleMoQT
         jVguSfepplxrsFZl84t7cgdAvHahlNuljAghy/SXCukOZs8Dfi3EUUlDyqAmBikeuGN1
         50tZjv2k9lFY2pQ+nI3Ua6bEnXkRWCrx+BACB4dvZexx16M7yEqzE5JzBSMKigAXyN09
         uFImt7DuvN4DU4KIAlHmAkSqG0WOcRfE0X4eWnqj4GmTx3Tt7dweTJEFBZemZnY0rxLp
         joZbFTto+T5QdYTEZAgdteVOYYLpEhVN2vGxRh2pI1Gq4P02QWypXwe3U4uxxDhczEAO
         yCEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679694954;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FARMu4hTbAZ9FVWyt2VvGjg3+YTS6nEVdT70kTxCBBY=;
        b=0R/DDBE0O+s9BPb2HwyR/KNr98sVqnpvHi76au2sBZIsxjU4yPFd8v/9D64xK1C1Q4
         ZZwihtiTbgDS4XO7lANuLbwbOKxn8Cu8gK8EEb3I8nHSyAwGZF/Ims96Fanc0QsjdKNX
         b42kkGRoLWyyxpNkadP6EqfSO1IictR4ClJgaw5+KmzOLTkPWlHFQ/hh6GVPUjkqykF4
         OJ5PxZCpFFBn97VdEJ8JZT+FYNWJnFJ5taOO82cjzXOz/NARtqx496DboWzO/ofx5QtM
         deJiYAsvbJP0xN5iW3AsOqZUg3UmM4V8a4VPR601oSkp+TL9JNubYpwgRYq2yGMhZo0u
         wwtQ==
X-Gm-Message-State: AAQBX9duBgnbv7QdBMSA0+CFHoIe526+rg0Cs4Pe4wubRCWag8zPB4Ko
	PX2KKx1M1YEHD931vdu9LT2KhQ==
X-Google-Smtp-Source: AKy350YT1TNh3gPW5jYoT+pPUTwmaF6XH+l2//gXleKa3GSaUrV3EGTtXA8hJAUIhX4iTFi1F8c2rw==
X-Received: by 2002:a19:750a:0:b0:4b4:e4a1:2fc6 with SMTP id y10-20020a19750a000000b004b4e4a12fc6mr1325104lfe.68.1679694953835;
        Fri, 24 Mar 2023 14:55:53 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y1-20020a197501000000b004dcf20843efsm3488285lfe.239.2023.03.24.14.55.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 14:55:53 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 2/5] phy: qcom-qmp-combo: add support for the USB+DP PHY on SM8150 platform
Date: Sat, 25 Mar 2023 00:55:47 +0300
Message-Id: <20230324215550.1966809-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324215550.1966809-1-dmitry.baryshkov@linaro.org>
References: <20230324215550.1966809-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_145559_452785_A531F0B1 
X-CRM114-Status: UNSURE (   9.33  )
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
index 6850e04c329b..58e1f50c0660 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3460,6 +3460,10 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
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
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
