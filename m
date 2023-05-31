Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCB6BC7EE37
	for <linux-phy@archiver.kernel.org>; Wed, 31 May 2023 02:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dr79HF/BTyOdHDbsksWqXsmMUP5kZRuAFzM6SHRovbQ=; b=jSdLgLa5WHymG/
	n5RkJFDlwheMstN2WQoZWy0xi8oHhekBoCVeQxW4JG112cn1dHh57txzv9x8wJaf0b307vqCsGDY5
	JtGros3GvLoQybtzTPyZDZEaUC35UQdy0Mn6o3VaP/gJLnFQlxTseC38zJhSNLzH+uu4sWu2aEblR
	sbdRVhbcsGv4uIlhGS2eewoAUU/6RXqq59X0QcdfxUkhBp4uQsohxM2mTSxqyiEhggXic6JzsTiKP
	3r0TOQtpOB+PXMzeZcXKHg30JOTuruZZf/YbfjCO6syeN2tDxfakqQl145k+UBWNMITWrwaH2dc5O
	fbVLWxzk9QQann9FGZZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4BfM-00FoBy-1H;
	Wed, 31 May 2023 02:34:24 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4BfI-00Fo9G-16
	for linux-phy@lists.infradead.org;
	Wed, 31 May 2023 02:34:21 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-4f50470d77cso3204840e87.0
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 19:34:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685500458; x=1688092458;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aL6CSlS9Q6UUnnjwqpxYTCJ6oS+R2HPG/MBYegldI0Q=;
        b=lbxf+T2rufTGaQVU/uQVQvl2gauIenxWC3PbfLdpuhdVOpx6HYJrwivp1DEas1CCXM
         LpIHFCYylWc8aRMaee3aF9k8yiirUPbymTyTQzcMAlXAqsDnL5Zyw4MGlTlgiCAV21z3
         h/c5OHSH2SyZt665P9abttYvXMp2Bhay/auVlu5BI53Nq4lX2hHXIq2Bi7Ypt5ptf1SB
         ABvHlfxAg0rJjsWcKFMQfiiyzfGczvgCYMrwlv6myWSKN298yBuHIHZazGUbnpgItq6I
         iAOX+bFA9kA/fZ1RldR30pc3EOR/L6VWa2JKK6TxcX7AnMnZx1Td6kPiLiLUinzmYpDy
         dJsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685500458; x=1688092458;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aL6CSlS9Q6UUnnjwqpxYTCJ6oS+R2HPG/MBYegldI0Q=;
        b=k4Tx8huatUaHysv2nPGaFRw8PVqP78zlX+BC/s/vDIVrtNooABSvf9+lKuxulL4p2+
         NT5zvGRlgI0DJvqWRsM/wb6DiE4z9FKxnqEea4KdgypuZT6b4yzIMzl0F04qR/b5wiJ1
         aeHhMLzCoPdbPTctRehNK7g5qm7MZMUGzupSvind/lOfS/85pHhmPylTQp2AQoXSBBoM
         ZVKx89SaCvQ43uARoVliIl814GCwS8k1YfC2epnNm1LY9M0i3WElwlgv5xUx7eHuON+3
         C98EvU9zpA4gg2bbWZ0p0HrRjGEXlcuPN65UMKnQk96OdhT6HWzSmIZq6YHs/0IulL3u
         XGKw==
X-Gm-Message-State: AC+VfDwmJwZwQcq1djz1OknGPcuXh/Y2hAUgL6byeVHyp5oubC2VxpeD
	WIt4ViEt8S2FIW/t3gO+MR426w==
X-Google-Smtp-Source: ACHHUZ5xi+pqHPsc3FrmYQFS72O+CEsnrHZmPZlu0z0/I1avdVZA35aVxYFJWQPQA95KU/Je8VBSyg==
X-Received: by 2002:ac2:4919:0:b0:4f1:430d:ca5c with SMTP id n25-20020ac24919000000b004f1430dca5cmr1750561lfi.56.1685500458686;
        Tue, 30 May 2023 19:34:18 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id v24-20020ac25618000000b004f3787d8006sm524096lfd.128.2023.05.30.19.34.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 19:34:18 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 2/5] phy: qcom-qmp-combo: add support for the USB+DP PHY on SM8150 platform
Date: Wed, 31 May 2023 05:34:12 +0300
Message-Id: <20230531023415.1209301-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531023415.1209301-1-dmitry.baryshkov@linaro.org>
References: <20230531023415.1209301-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_193420_378774_27E02256 
X-CRM114-Status: GOOD (  10.31  )
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
