Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5367DC7EE2E
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 13:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C1LIgT2jlUBcIo3/CByeaKOvmUczfFPpmVALLPQik/0=; b=Vm3yy7htEzxIt2
	wtbH0yZSM0j4OPe26qHASKwMtYgPa7VTx7Do+bcny0wIDWd8JdHUv/9jG7aK2LMcTMIKHlyRl5zFW
	9BSIrh5itRuAVq06I9gsueSc37fZC7TT1VdkJMD7yhIt1kwPWQxp12DSSxIAFpw5jLnlpDoKbr2RK
	1yJwdXTqanip6mX+MGXX+OSR3Uvn63SLotivezgseT1LyHsapqVrVlXjTOAJ14xejrXGfxpVqZKDS
	Mq6QqKjI9AeiWeUKNjkg8ioBGqt3V0LjqtDj2KMSqZL5s2YPX/LS3zkkOroHCTmwF/NbTpqjjgH0n
	5I5y8I5lOXw5ig7PyXdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Rvk-00AMRE-3A;
	Tue, 23 May 2023 13:20:00 +0000
Received: from mail-lf1-f51.google.com ([209.85.167.51])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Qvr-00ACbo-0q
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 12:16:04 +0000
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-4f004cc54f4so8530936e87.3
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 05:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684844102; x=1687436102;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S0sobRIk6tCMFCwXhjjdodtZDMDOffBV8iCIEpNnHQY=;
        b=TfvFAcphjN90FHE/qU53hgzZzrbHHOgAGSBcP/AapZqKZdHWIztfbDSK8/EvTVpEB6
         5PIcz0ijsAqKp9g0i9gxxIY6yu4LRc67tW+tBbLmv3EkYdr16usT78ZUxqUgIdmOZ0+J
         npsh6nW73/Yd1VcP2G8Sft7abdmOTULOmHxwkuIT3BTr0Dz80oN17o7QUogbwQmJTu4/
         8UG55Qm+pb3APF2P/4riyKRDZz4ARhSgVGN3QSQT7wSzdpHkg0S+hRJsTRQ/Toyx8jd+
         Y9EhGi1i79ilK+d8QmEikQD1z6xnQhL1RXKqp/lO1wDiyha98rEGryOHbCD9u7GY7TR/
         t59g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684844102; x=1687436102;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S0sobRIk6tCMFCwXhjjdodtZDMDOffBV8iCIEpNnHQY=;
        b=iE3nxCLiFlpAqR4NH1w2pq7pZiggRjiiBIDZFk2lvKSxtN+54iyTApcJhYlJVqF3/J
         Y/IsGGwDnktEdvGMa1B/qHzOM/tm9o3YBRq4YiyL3UGN9AB4hoalEnmB6/ys1C36T82H
         Q5W/BMvms3NHh/FwO5NU18nSsBSAKbU9bZh6GAFNfaW2j5vun6PqqqjoIPWUoj/BMH2w
         1RVq1C115E4hmCcCfHXNcNkc4onXMULKF8Lw4Q69KnRaGqgu1eRsUvJAMHLmkw8C53+6
         IU1glA5Jdgj7kUZ4RSrIPDe4ZT7C3/pEnamaXNSbPMtAQC/W4YOIJjsdpuszjW53RZzK
         eb0w==
X-Gm-Message-State: AC+VfDxQgaG7U3BYOy8LCZPDmJrIdkbpIb5JqZsGT3EbCWFwX+7PXZkE
	DRefJVpLHAgywEsvD/055BBoqQ==
X-Google-Smtp-Source: ACHHUZ6qJzzoeKD4BIbsi2hhZzRfGK1ZyDtu9HGwi2v+ywlMux+3ZZ28AH6kH9qZw4r2MLZNcIW1nQ==
X-Received: by 2002:a05:6512:972:b0:4eb:3b4c:50ac with SMTP id v18-20020a056512097200b004eb3b4c50acmr3717597lft.65.1684844102085;
        Tue, 23 May 2023 05:15:02 -0700 (PDT)
Received: from eriador.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c26-20020ac2531a000000b004f160559d4asm1319616lfh.183.2023.05.23.05.15.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 05:15:01 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Stephen Boyd <swboyd@chromium.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 06/15] phy: qcom-uniphy: add more registers from display PHYs
Date: Tue, 23 May 2023 15:14:45 +0300
Message-Id: <20230523121454.3460634-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523121454.3460634-1-dmitry.baryshkov@linaro.org>
References: <20230523121454.3460634-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_051603_302578_D2FBCF37 
X-CRM114-Status: UNSURE (   6.98  )
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

Import register definitions from 28nm DSI and HDMI PHYs, adding more UNI
PHY registers.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-uniphy.h | 33 ++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy.h b/drivers/phy/qualcomm/phy-qcom-uniphy.h
index d8be32b5317c..4be9bda37fa3 100644
--- a/drivers/phy/qualcomm/phy-qcom-uniphy.h
+++ b/drivers/phy/qualcomm/phy-qcom-uniphy.h
@@ -8,8 +8,19 @@
 
 /* PHY registers */
 #define UNIPHY_PLL_REFCLK_CFG		0x000
+#define UNIPHY_PLL_POSTDIV1_CFG		0x004
+#define UNIPHY_PLL_CHGPUMP_CFG		0x008
+#define UNIPHY_PLL_VCOLPF_CFG		0x00c
+#define UNIPHY_PLL_VREG_CFG		0x010
 #define UNIPHY_PLL_PWRGEN_CFG		0x014
+#define UNIPHY_PLL_DMUX_CFG		0x018
+#define UNIPHY_PLL_AMUX_CFG		0x01c
 #define UNIPHY_PLL_GLB_CFG		0x020
+#define UNIPHY_PLL_POSTDIV2_CFG		0x024
+#define UNIPHY_PLL_POSTDIV3_CFG		0x028
+#define UNIPHY_PLL_LPFR_CFG		0x02c
+#define UNIPHY_PLL_LPFC1_CFG		0x030
+#define UNIPHY_PLL_LPFC2_CFG		0x034
 #define UNIPHY_PLL_SDM_CFG0		0x038
 #define UNIPHY_PLL_SDM_CFG1		0x03c
 #define UNIPHY_PLL_SDM_CFG2		0x040
@@ -22,11 +33,33 @@
 #define UNIPHY_PLL_LKDET_CFG0		0x05c
 #define UNIPHY_PLL_LKDET_CFG1		0x060
 #define UNIPHY_PLL_LKDET_CFG2		0x064
+#define UNIPHY_PLL_TEST_CFG		0x068
 #define UNIPHY_PLL_CAL_CFG0		0x06c
+#define UNIPHY_PLL_CAL_CFG1		0x070
+#define UNIPHY_PLL_CAL_CFG2		0x074
+#define UNIPHY_PLL_CAL_CFG3		0x078
+#define UNIPHY_PLL_CAL_CFG4		0x07c
+#define UNIPHY_PLL_CAL_CFG5		0x080
+#define UNIPHY_PLL_CAL_CFG6		0x084
+#define UNIPHY_PLL_CAL_CFG7		0x088
 #define UNIPHY_PLL_CAL_CFG8		0x08c
 #define UNIPHY_PLL_CAL_CFG9		0x090
 #define UNIPHY_PLL_CAL_CFG10		0x094
 #define UNIPHY_PLL_CAL_CFG11		0x098
+#define UNIPHY_PLL_EFUSE_CFG		0x09c
+#define UNIPHY_PLL_DEBUG_BUS_SEL	0x0a0
+#define UNIPHY_PLL_CTRL_42		0x0a4
+#define UNIPHY_PLL_CTRL_43		0x0a8
+#define UNIPHY_PLL_CTRL_44		0x0ac
+#define UNIPHY_PLL_CTRL_45		0x0b0
+#define UNIPHY_PLL_CTRL_46		0x0b4
+#define UNIPHY_PLL_CTRL_47		0x0b8
+#define UNIPHY_PLL_CTRL_48		0x0bc
 #define UNIPHY_PLL_STATUS		0x0c0
+#define UNIPHY_PLL_DEBUG_BUS0		0x0c4
+#define UNIPHY_PLL_DEBUG_BUS1		0x0c8
+#define UNIPHY_PLL_DEBUG_BUS2		0x0cc
+#define UNIPHY_PLL_DEBUG_BUS3		0x0d0
+#define UNIPHY_PLL_CTRL_54		0x0d4
 
 #endif
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
