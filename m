Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01A34C4167B
	for <linux-phy@archiver.kernel.org>; Fri, 30 Sep 2022 11:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4s54sF1BT2F2pb6NSnnGVHtSZyCC0qnkQdwn7e6r+X8=; b=wfA1lWAHCcNUpq
	fLERykIUk+gLyootJlsw8hdR+Jwx+LaAulGfDbSPfNb3X/ghdmztv4o+zZwBezNYYFpdjkaYYkyfT
	sKs1ER65MMMxLYimt/YRZtv33tZ2TU+Dt/1t12WXvTpZ6d3Lq8LTw6c9B42Ipd+OFp/BYoUsGDsS2
	Bwq6/+NgpwAzYt04YawY1a31ZdCrCpKoYKlgMB81pizX/07B+gtLmRuivbTHf4gR4OO8jxYkthpSJ
	kERXn+gz9NAFQS2cllIl2oW8N9OkSgnwhOm7RIaxwqIIQ8HjN7ZjxTHOVWHZ9PTtz6VBG2AqOXDNW
	ys/mFvEHdcHtRzZUXiBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeED8-008sYb-9D; Fri, 30 Sep 2022 11:29:42 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeED3-008sTQ-4S
	for linux-phy@lists.infradead.org; Fri, 30 Sep 2022 11:29:40 +0000
Received: by mail-lj1-x234.google.com with SMTP id a14so4471442ljj.8
        for <linux-phy@lists.infradead.org>; Fri, 30 Sep 2022 04:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=rY1dkWkbpUk5yxsY7viJALOltWHB3nciD/DTFAI20GY=;
        b=fAJYjarC5kQ2fOgNSGcvoPbVEBrd+qTtXAcobYminPtONgIZ/MSGEz+lLfQkcmDzUR
         M4iP7gQ8LQKxt1+XOiVDsZnPKs+5gmE23NKDG1ubTw7gt8C0bqfcWPxVIOn2g61jQiIe
         m1n0BX3k1I55Zi48reRtvylYU6s+ZRAzZZtISnLETiKPgnbAfirrk3KEY1mp/NJPs/Aq
         VZUnu8urAO1h9snrsnI8eL2lCkE7xQawyr5CKVTuKKn/AfK2SLnj8rfeDHG74Y0D8+qU
         ReXBWNam1OD9j9sUew4x11BzSqgOTfIqUI3EtNTZ/aieI+SGxE6ilCvLuvRPuB0dLzwY
         KvhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=rY1dkWkbpUk5yxsY7viJALOltWHB3nciD/DTFAI20GY=;
        b=m0YDGLTAMqf64NooAXPBDGYldBHrVKcvOrUO4uSa6wM1MGHbf6zHn7GkmIyfk+Lv7Y
         0xV+rsj9XVHC0FqzlPP/CDn9933OyzI2QULEtDeUk7SjQmrHmjnIopUl69wn1IgtW/IH
         emiI1yFHhK98Fwl18B1Vdevs31aUV3DiIkD2g6AenK6+6PkLNtnPqo3Jck+Xkdbzx/94
         6Y5fqdLFk6Si1uP3LoXvPmVytwnPZmmLj35ycAJqGXfEfnm1UItoVaEsm9nl4KPexPia
         NT26uhqO0AeegFvh49q8QsyibFZmM4+f/AaS0fbESLvjK6QrFImjVr14rAxPCz3Dgd6t
         siAg==
X-Gm-Message-State: ACrzQf2w/tL6xOXY05lQ2ktyj66K5t3kVBkH22vl46VNKX7EsnDtsVav
	pFo8gpjog15b3dTcSCj1ECi3lSvHo+uBaA==
X-Google-Smtp-Source: AMsMyM4HOU1A/bPL4JzGnSjhF5QZVnByaj+fftFp6vaCjNXBP0tTXxDH7dA46Q1rkbKkEtwXdneWEQ==
X-Received: by 2002:a2e:8190:0:b0:26b:d94b:75e9 with SMTP id e16-20020a2e8190000000b0026bd94b75e9mr2891463ljg.379.1664537375463;
        Fri, 30 Sep 2022 04:29:35 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v18-20020a197412000000b0049493c14b17sm264672lfe.181.2022.09.30.04.29.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 04:29:35 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 10/12] phy: qcom-qmp-combo: remove QPHY_PCS_LFPS_RXTERM_IRQ_STATUS reg
Date: Fri, 30 Sep 2022 14:29:24 +0300
Message-Id: <20220930112926.638543-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930112926.638543-1-dmitry.baryshkov@linaro.org>
References: <20220930112926.638543-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_042937_277011_464EF49E 
X-CRM114-Status: UNSURE (   9.01  )
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

The QPHY_PCS_LFPS_RXTERM_IRQ_STATUS register is not used, remove it from
register layout.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 7b434e2ee640..cf675a00e391 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -56,9 +56,6 @@
 /* QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR register bits */
 #define IRQ_CLEAR				BIT(0)
 
-/* QPHY_PCS_LFPS_RXTERM_IRQ_STATUS register bits */
-#define RCVR_DETECT				BIT(0)
-
 /* QPHY_V3_PCS_MISC_CLAMP_ENABLE register bits */
 #define CLAMP_EN				BIT(0) /* enables i/o clamp_n */
 
@@ -111,7 +108,6 @@ enum qphy_reg_layout {
 	QPHY_PCS_STATUS,
 	QPHY_PCS_AUTONOMOUS_MODE_CTRL,
 	QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR,
-	QPHY_PCS_LFPS_RXTERM_IRQ_STATUS,
 	QPHY_PCS_POWER_DOWN_CONTROL,
 	/* Keep last to ensure regs_layout arrays are properly initialized */
 	QPHY_LAYOUT_SIZE
@@ -124,7 +120,6 @@ static const unsigned int qmp_v3_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x0d8,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR]  = 0x0dc,
-	[QPHY_PCS_LFPS_RXTERM_IRQ_STATUS] = 0x170,
 };
 
 static const unsigned int qmp_v4_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
