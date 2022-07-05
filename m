Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6C0BCCA47C
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ClKoFaDf7Nmb3VL1zsfwK4UyBJreZ0rLttZiqNB+zRQ=; b=mVEDXzeMcnAG/C
	ikL4lUpOI6Dskfio3OjplluQvT3IMkoSPNYjhYQia7VkaCSRhozWdCBLS8iXvgUvBzIHKwlSWLEAN
	PXroupokmpYRrKUwMNfrPxzcu5VIsWVTUi4qD6Q5ARxVsXvIWc/6vkGZcyFcHAUy30Z48sOkC9jdV
	6CsyGCrTdd1sC32Ke359YCWDZ4bJzJLlxvrR4slthjkKKLZhIfrsEYea7WsG5o4ihak8xyQVWXDS4
	3HBW0UXT4ujsGKfZxJ+gaMTcQmhisx2qWrjT1lV8jJGLdReAP2SLI+KpIuap9olbacmv1K3k8wPaF
	PwlTt93ET/jUNfdG771A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8g3y-00HFYe-4W; Tue, 05 Jul 2022 10:45:50 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8f5b-00Gqlj-8o
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:43:30 +0000
Received: by mail-lj1-x233.google.com with SMTP id a39so13794253ljq.11
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 02:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aJkt2UvzC/fuSbaAFzAgmcuGnHsumZ1LtWfxE2c+EXo=;
        b=O8YQugHMOYm2/KHrxrLpRojyXdP07gY1seUt7/dV4rHlWaAuwMCl94Wd8urU74KZw+
         7XjR77/8mOqgvwzouCoOj0ZfdmQVknsbkLMahh6M9J9GMyq5XgpN2XfWSYzAvhYzeNpN
         ZR2MEzyObQYpPTCKSsZ0Aqqq11l2cWtqjRT1yVK+GkSSEcDdeJjO8viGdeysiFRfJxNg
         UD/uGCIicASOig4hdT3wIawt08kwoACW4HudrTBjfQTzszUuedH6nWtrW7TPJ7KkOScj
         Z0O/TkRegimiqap174N48q1+z6SAhLFIcYPlmLk+gBJ3SyF8wiNNCgRLflkaFkMQoIbJ
         JGLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aJkt2UvzC/fuSbaAFzAgmcuGnHsumZ1LtWfxE2c+EXo=;
        b=6/kYLtXz6QP28NdK7XbcS/KXyRMgAilEF7XaMxAxds2kriZx12y/fxWNfnz9JI9w2Z
         ocbf4twR2Ch7oG1LQrUrsXlQ3ZQIKwfYOQRzqdzZ1Q49Vfwtl+bowBa6T6qt4pFfO8ho
         ozhmGjJv3m0qFgpSU0pl7cUJ2vQ25kBfxhvyhsB7/GHW52aGsstQ5zC9DkfjqkCbbsPl
         GR0sVAYQUO8vP/fPxNRuTJEHsoPy6iGyPq40pSIUd8r2utZQ0J7p58Fa3HEfUXhlB0hC
         XLUSU4ZfbrKAeU/JdmCG227RE4XlhBRBExuIxUNi7b4AzTj4A873vUD8wrBQONRcuCh0
         yY/Q==
X-Gm-Message-State: AJIora/zmKxasphPSVuUCGTVdvgJ8Sr6N3pHmJ0VVHOjsKSGOH9MkNS/
	Eio+tyPjZu/XhmmM7S7sSAc4XsAO65O3VA==
X-Google-Smtp-Source: AGRyM1vj42PFm7A9iIDXzIFR7Za32RnS+gIzpD1bpf1eYK4NkVqebr+LfZJhvNZt5ocTkAbVaVvP3w==
X-Received: by 2002:a05:651c:23c:b0:25b:eb1e:c52 with SMTP id z28-20020a05651c023c00b0025beb1e0c52mr18861524ljn.481.1657014203332;
        Tue, 05 Jul 2022 02:43:23 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f7-20020a056512360700b00482f206b087sm491683lfs.39.2022.07.05.02.43.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 02:43:22 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 02/28] phy: qcom-qmp-ufs: remove spurious register write in the msm8996 table
Date: Tue,  5 Jul 2022 12:42:54 +0300
Message-Id: <20220705094320.1313312-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
References: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024327_369096_30B81C87 
X-CRM114-Status: UNSURE (   8.94  )
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

The msm8996_ufs_serdes_tbl table contains write to
QPHY_POWER_DOWN_CONTROL, however this register doesn't belong to the
QSERDES register space. Also the PHY power down is already handled in
the qcom_qmp_phy_ufs_com_init(). Drop this entry completely.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index a2526068232b..83330f7ec64c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -163,7 +163,6 @@ static const unsigned int sm8150_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
 };
 
 static const struct qmp_phy_init_tbl msm8996_ufs_serdes_tbl[] = {
-	QMP_PHY_INIT_CFG(QPHY_POWER_DOWN_CONTROL, 0x01),
 	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x0e),
 	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0xd7),
 	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_SELECT, 0x30),
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
