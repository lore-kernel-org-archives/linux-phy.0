Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FAF7E732C5
	for <linux-phy@archiver.kernel.org>; Thu, 28 Sep 2023 11:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C1LIgT2jlUBcIo3/CByeaKOvmUczfFPpmVALLPQik/0=; b=yTSOAbZQXLO3OF
	7IUVeFx9Qox4RDu8uaVNfT9kzHAJu60yyjJzyXqcUT147QKgfBtg+N4svsBsxrivKvzKeL6KLTxzU
	TfQ1SgDhJrB8ZCU5eCVywU35xk6M0kYUfcPA+kIACjEST7Cjl7I3RuI6tF2UOHivIS681Ep2aNx+G
	Y6+ubLzsw8d/9jdmz451B1xf5suWWJplDzzHyDNW0b3HjSuO9Bkl+D1C5N3HKp40+ueGCMdX/lNXH
	cjJWHoMplSu3jrrMKB2nL/MYaXG0c5NANVho76uXUqDHMKLsR+b6+QsLF0i/9yNIAQH3aece6vhFX
	FmypsDPJHKQD6PgRvhmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlp0c-0038Ui-0I;
	Thu, 28 Sep 2023 11:16:42 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlp0X-0038Pj-2X
	for linux-phy@lists.infradead.org;
	Thu, 28 Sep 2023 11:16:39 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-50317080342so21541551e87.2
        for <linux-phy@lists.infradead.org>; Thu, 28 Sep 2023 04:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899794; x=1696504594; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S0sobRIk6tCMFCwXhjjdodtZDMDOffBV8iCIEpNnHQY=;
        b=SZD1SSvyaNhxlbxublx/CS+pdhNrPNCC/WAimu221ENMShXt8+8Pirjj43u/EUv4kD
         L6HpX0dINfTWQoa8+aAxG7YN5Z56FwyOt70EBV7fiqat66ScgMjKfOpE4GHdXCkoMQ+B
         hAwLNuXrfcUB+bEubTC4v+WriNtBzB/ISFO1EO96C5VF6WDGqr6p9MUtMObx3d1Mk3Jq
         MMznfWKyzt24JVMxcTirJujWUrA2vqdsZi2GiC1enxYL0SpFCFdy1oIYAFHIIWM/uKyv
         VduOYFChGpt6n66k+fsh3br7TLNT1K7eO/hZQv+s0aUbubj3UVd4v9XA+BbTOLXSnNJ3
         qJ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899794; x=1696504594;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S0sobRIk6tCMFCwXhjjdodtZDMDOffBV8iCIEpNnHQY=;
        b=Hc/4POlZnqDk3MnL3QCVGDyMHmqIkJX4t+Rab2EqSUfebGtbsGTX/A3m8Ja7lo241K
         IoxRmqMVtbeVj2ROk8CyEtqOK2yrLU+KPxB7OAfv61wV5F0u9AcL8mJE3gT5Wbm+fq4U
         l8uAC4IC7E2XCCAsBUBqt3CXS78lVWCSdXcqMXBp4xXYTsUtPQdT8DsmfYUEUvgBU3zE
         k8BuwXM9BHIAt6E8ejV26cujONxbsmFy0ly9GbQDmCCfiDh66+v1nLjkqEgGlmApmHCz
         WKKg8po0D32E1zl+wcVrKuEvbA0FeA4x5Mys7dwqz5vmFFH6Wf6ns9yfLRuWaHlZcs8l
         vQQw==
X-Gm-Message-State: AOJu0YwcxPg1L0f+dxxnYqmOsELcnpk1fpmBukzlte1jwUY12rN1KkTp
	GV4HGn6jADiSrfP5VY6zchwkJw==
X-Google-Smtp-Source: AGHT+IELBQgqiQMXyEz+Jj67Dbbj28IvmoG/+EaZfha/Kn6VWR3rko8850416JFr1fP0E4QmCuvhRw==
X-Received: by 2002:a19:4f15:0:b0:503:ed9:58e3 with SMTP id d21-20020a194f15000000b005030ed958e3mr843358lfb.8.1695899794437;
        Thu, 28 Sep 2023 04:16:34 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j18-20020ac253b2000000b004fb738796casm3086623lfh.40.2023.09.28.04.16.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:16:34 -0700 (PDT)
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
Subject: [PATCH v3 04/15] phy: qcom-uniphy: add more registers from display PHYs
Date: Thu, 28 Sep 2023 14:16:18 +0300
Message-Id: <20230928111630.1217419-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928111630.1217419-1-dmitry.baryshkov@linaro.org>
References: <20230928111630.1217419-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_041637_893910_F25A97E1 
X-CRM114-Status: UNSURE (   7.21  )
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
