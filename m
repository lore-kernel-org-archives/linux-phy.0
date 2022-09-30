Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 019FDC4321E
	for <linux-phy@archiver.kernel.org>; Fri, 30 Sep 2022 11:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ptz3I8cLOEywFhfS+/yvI5V/y5/wv5xTbm3Gbvayq8w=; b=r7GDLn+Ex9fk+Q
	klXpCO5UHtfqPkCXAoJkgjq+IGzwpI9WbzhamSCSdBgFlNQgX9kdsL24MwncWVXFOzr4ozSBlmryu
	9r3tUiryBxSAL3faz5CZBmhVKhsLsolU1kw0fYPV2N5RGhEu4ijWlK4a89SC/zcqKscosfsHbjeWy
	c6f88/fPu3ro8vPmQ12bTnf/i7k6RVU9hHFd7TsJUV7bpxvbv2qpSKDbTRgx1oqjNwfUckjh+AJ9Y
	6yuFl9U2nNVYRmif4GStadDzOgEJv90jqJK978eh1fRiWNkNOF+G/K1YN2F0visFlOFvbSX1gid3/
	NTVeixB6oaGrp+WLgF1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeED8-008sYP-7N; Fri, 30 Sep 2022 11:29:42 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeED3-008sSJ-TA
	for linux-phy@lists.infradead.org; Fri, 30 Sep 2022 11:29:40 +0000
Received: by mail-lf1-x129.google.com with SMTP id a2so6426258lfb.6
        for <linux-phy@lists.infradead.org>; Fri, 30 Sep 2022 04:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=ywPURN4VYg+vJJI8R5DDKnw7r6+Bfy4waBxowe0Czt4=;
        b=UC1DZla4usi26TSgEsWh3l9nOmOC9NxMBRp2p7axMMrR5DFS7ZfvjfuGAXSVSovqF1
         pbqAW3k+BYDihVjDidATGcnFwvi46JiuXkfrdlWDdfekXhwqQJeOYSzMA0r7e/gmg44K
         +yJo7+PrkFb6F38gVbQo59DZ9yY5o6ZK50CtCHOMUlTE3diGZ923atpf6pjHurTFlDwu
         gey+bs+aNLHljwwtplHWqRM0iEW4GjpEPsZigYMAHmiuK0OzfqnUPvpKkvzW+nu65RTH
         lyStgNhhHi6S8SMKRB32dQKcRhAW5OdTpwsqf25ygNHALWpmWw6asCfsk5Hrp+JbWAEB
         v6hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=ywPURN4VYg+vJJI8R5DDKnw7r6+Bfy4waBxowe0Czt4=;
        b=Bf0ZSINSpflHso/qH3VbQ6aJcR+lYfihhejtBZtH1C1S64oKSRZYHQkgHIKGQcnWfi
         NnTL+XI4OJ5KAPiX9sqZwcc5kuKdoIJJWr6Rcd+aTXcqNKqRNfS24iuR3tNUP5pxZ94D
         58hb+PyPQYgZVOkDh0mukW0vEkyjxpa+3rTFpwY2/n9lz3a9Nmu9aNdm0mSqcmSnMg9p
         JT72GDdmLfR/Ee2bvF6z4ape7QKF5fxAa4Fllt9xM/RlD0di0flGXn4Jqpi5DorGgT1a
         yupaxPQ68l4d/uG5HNhC+S79ANUBmoh9fMu0u0Dpl16aDzam7ftSU4m0vk5kmzRt4wQx
         QO1w==
X-Gm-Message-State: ACrzQf11vid7N+RDuemMO/YzV/sfwfJ6ocaH8br620MKSs/X0HlWWDzC
	+sm6DMJ6uWuUiZUtL+Um/XE/lQ==
X-Google-Smtp-Source: AMsMyM7yIKT555uXSeTBk5QSsk2PaeYCtcm7Vu9W+6uYkL+t6s1X293nuRRqMzKgBeNECNg1Trts3g==
X-Received: by 2002:a05:6512:3994:b0:4a2:1a0a:15e8 with SMTP id j20-20020a056512399400b004a21a0a15e8mr73830lfu.501.1664537374077;
        Fri, 30 Sep 2022 04:29:34 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v18-20020a197412000000b0049493c14b17sm264672lfe.181.2022.09.30.04.29.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 04:29:33 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 08/12] phy: qcom-qmp-usb: remove QPHY_PCS_MISC_TYPEC_CTRL reg
Date: Fri, 30 Sep 2022 14:29:22 +0300
Message-Id: <20220930112926.638543-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930112926.638543-1-dmitry.baryshkov@linaro.org>
References: <20220930112926.638543-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_042937_964313_6A695417 
X-CRM114-Status: UNSURE (   8.93  )
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

The QPHY_PCS_MISC_TYPEC_CTRL register is not used, remove it from
register layout.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 9d112aa34ba3..0b5015c7bd19 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -109,8 +109,6 @@ enum qphy_reg_layout {
 	QPHY_PCS_AUTONOMOUS_MODE_CTRL,
 	QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR,
 	QPHY_PCS_POWER_DOWN_CONTROL,
-	/* PCS_MISC registers */
-	QPHY_PCS_MISC_TYPEC_CTRL,
 	/* Keep last to ensure regs_layout arrays are properly initialized */
 	QPHY_LAYOUT_SIZE
 };
@@ -151,7 +149,6 @@ static const unsigned int qcm2290_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0xd8,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = 0xdc,
 	[QPHY_PCS_STATUS]		= 0x174,
-	[QPHY_PCS_MISC_TYPEC_CTRL]	= 0x00,
 };
 
 static const struct qmp_phy_init_tbl ipq8074_usb3_serdes_tbl[] = {
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
