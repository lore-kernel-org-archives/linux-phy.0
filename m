Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C4D7C433EF
	for <linux-phy@archiver.kernel.org>; Mon,  4 Jul 2022 16:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hyz6w2P0U3tw3KWmaqvxfcfta1WWGHwSKVxPLhYdY3E=; b=3RSMRkXmIqb73n
	xpAAJE5CvttTw+NmEvR+h2gUk5QyCnMFoHxQX1hneI/ECBAoNxYPDgG4a+a8m7PYoNECY5RbOZRn0
	y+MVoPTXSk4x0EoXobgCh+aZSGCCdJoRwSDfgVNLq0mUytGY7zAYz+4ynY3B8wXkUXx24uGesiEvy
	bkY+YQUN/GPv4hHnvmYz5or7alst4HcfbaD5U+uQSZTIK/2SmtBOQ1tpgRNFhDyfG9RTzVQA0+BZZ
	S15CVRT0D+IKrL7uBRKPvLnxtUg0zxJxD6jsuf2GJf+r+PQdlQjCY/8EV+pbdb/O0Qu0J47qFNs1a
	hEBHVC0fwLl1NUjK2GAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8Og6-009uPk-Jj; Mon, 04 Jul 2022 16:12:02 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8Og3-009uMC-DX
	for linux-phy@lists.infradead.org; Mon, 04 Jul 2022 16:12:00 +0000
Received: by mail-lj1-x22e.google.com with SMTP id l7so10872212ljj.4
        for <linux-phy@lists.infradead.org>; Mon, 04 Jul 2022 09:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FB+K+cb4f9fS6PvlJKAr+KfimzTAeQrUyeuMC2GkgBE=;
        b=qnHQkupyk1x/oq6nK9qO2WrA02Ohq8y3d9jjyNLlypjohyGZMyL2XN5Nz3X1UvRaZc
         bii0DjgQ10zeZWB9eEDKICbFn5YjggZ6LRfL3eOnDvd7TUXS7kYQhUGhzDL5LcjO4r9o
         fa4MHfr3x6tDVmkDVu5ER+omVEscP6u//DIKD/ZftSG8JXtxdDlBM+TW4yNw5RWm/rOP
         usSDTCN+a8gQGZH4ndzmT75cfnX14VbWq5OgJ2GyXJZl9YQUyq+d2XqTDczLGb40dKe4
         zX3KrjD9UBmole/rb51Hjr5TlhX990vmekb2IoEJCKD9cefKmwTsmhEslf+/uEbTY1Yi
         Y1cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FB+K+cb4f9fS6PvlJKAr+KfimzTAeQrUyeuMC2GkgBE=;
        b=xHcR7vEIwqbw5eca3DPPJVpnzQJ4xiwX/0Qe8AE80uoHhgZppaB954u3AfV91f1HbZ
         zA20P+J/KiaudV627AVPPVL8KyZ+HYvl2dFXCVPKyTc9477az0uqDMtG8FXneeTX2/Ww
         riBPHzaK3Wx/g1vSifynGsSNnxI15iho1sdMTwAYyc4buqBpKBqxZ3RkA8STtb+o/ofe
         apIZaFhygONTok9GfBeJihs4vQEPF34+Ve1jSC/BMTU7KtrATIh6LZAtGfzLL5a9GRrp
         s6Tagy0gOnZkKg6KGgvOCya9vNE4HAzNXmsVL4oIjtY9PuvU6WJ+B7A+wtiLQWtXEFAv
         esYg==
X-Gm-Message-State: AJIora9kRdO0bn6RgSb6Ry4UdBIrOkry4LvjkX32BlcaJKsh4aY24uRp
	Q43r7bv8dyQ0+sTBZ2fUkUaQCw==
X-Google-Smtp-Source: AGRyM1v+ysGvZlgZlt6B/q+BV0o2A6rgkhQhJIT//BHmupu6q4pUqrhAZCjKNOsCKPz8O00P8lZhbw==
X-Received: by 2002:a2e:9808:0:b0:25a:a30c:e5cb with SMTP id a8-20020a2e9808000000b0025aa30ce5cbmr17458567ljj.312.1656951111916;
        Mon, 04 Jul 2022 09:11:51 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id bj16-20020a2eaa90000000b0025d254180d7sm381273ljb.113.2022.07.04.09.11.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jul 2022 09:11:51 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Stephen Boyd <swboyd@chromium.org>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 2/3] drm/msm/hdmi: make hdmi_phy_8996 OF clk provider
Date: Mon,  4 Jul 2022 19:11:47 +0300
Message-Id: <20220704161148.814510-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220704161148.814510-1-dmitry.baryshkov@linaro.org>
References: <20220704161148.814510-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_091159_488810_FCA0A09C 
X-CRM114-Status: GOOD (  16.03  )
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

On MSM8996 the HDMI PHY provides the PLL clock to the MMCC. As we are
preparing to convert the MSM8996 to use DT clocks properties (rather
than global clock names), register the OF clock provider.

While we are at it, also change the driver to use clk_parent_data rather
parent_names to setup a link to the XO clock.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c | 25 +++++++++++++-----------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c b/drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c
index b06d9d25a189..4dd055416620 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c
@@ -691,15 +691,13 @@ static const struct clk_ops hdmi_8996_pll_ops = {
 	.is_enabled = hdmi_8996_pll_is_enabled,
 };
 
-static const char * const hdmi_pll_parents[] = {
-	"xo",
-};
-
 static const struct clk_init_data pll_init = {
 	.name = "hdmipll",
 	.ops = &hdmi_8996_pll_ops,
-	.parent_names = hdmi_pll_parents,
-	.num_parents = ARRAY_SIZE(hdmi_pll_parents),
+	.parent_data = (const struct clk_parent_data[]){
+		{ .fw_name = "xo", .name = "xo_board" },
+	},
+	.num_parents = 1,
 	.flags = CLK_IGNORE_UNUSED,
 };
 
@@ -707,8 +705,7 @@ int msm_hdmi_pll_8996_init(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct hdmi_pll_8996 *pll;
-	struct clk *clk;
-	int i;
+	int i, ret;
 
 	pll = devm_kzalloc(dev, sizeof(*pll), GFP_KERNEL);
 	if (!pll)
@@ -735,10 +732,16 @@ int msm_hdmi_pll_8996_init(struct platform_device *pdev)
 	}
 	pll->clk_hw.init = &pll_init;
 
-	clk = devm_clk_register(dev, &pll->clk_hw);
-	if (IS_ERR(clk)) {
+	ret = devm_clk_hw_register(dev, &pll->clk_hw);
+	if (ret) {
 		DRM_DEV_ERROR(dev, "failed to register pll clock\n");
-		return -EINVAL;
+		return ret;
+	}
+
+	ret = devm_of_clk_add_hw_provider(dev, of_clk_hw_simple_get, &pll->clk_hw);
+	if (ret) {
+		DRM_DEV_ERROR(dev, "%s: failed to register clk provider: %d\n", __func__, ret);
+		return ret;
 	}
 
 	return 0;
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
