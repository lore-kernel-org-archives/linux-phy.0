Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76CB5C43334
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jun 2022 10:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OiO9ODX7HG28If/cuxA0t+E5ZEL3JNNYp0RMtssnv+U=; b=KAjC6MSj7Ip00J
	KMe2HbNTObbYiZc6gsTw7ID7te3nLC62YdxvOLiELDk9YXIJfG4VwnGEs5LcuA+qMRvNsnppmfXdb
	KfgZDTfuEas9PCPQbC3UBT8JKn8mdznhspFP+dRFowhcZzSVAxNk3ct7ySChYVYBkuUlp2f0/sN+D
	0G1IgvTedyRmeNZeTC9QC3zogOKpte/UrpAxsPnPIn4iqQaf/VAzVkCzINCKovFGtRmy3DAX+1D9m
	qHHDIrS9QZXXSrqs/uAvwFQRh5cYV6snSCUtQ4CoA8hRFRlHRbQkKQyvtikJYvr/Gtc2GiFfP2xfl
	UUkZcRRn9nPKxjUsajTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o29Kz-006z5E-Qm; Fri, 17 Jun 2022 10:36:25 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o29Kw-006z1a-2U
	for linux-phy@lists.infradead.org; Fri, 17 Jun 2022 10:36:23 +0000
Received: by mail-lf1-x12d.google.com with SMTP id y32so6299001lfa.6
        for <linux-phy@lists.infradead.org>; Fri, 17 Jun 2022 03:36:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ehJ1FDrt934m71egzidi3dn4Z02wK65douizV/opsWo=;
        b=z79ORX0B2DG0WrKHIrtYGnr8wOwlKxv4xsaBo4JFTQc4qQmfeSf2gVd1WkwwxDSOQa
         qQvEuLg36Hlv6KRFC7PyW2qJzglgB5PqFHd9VxY+IrzwcqOVzt/fBkVaum8YNytMOJ75
         egZEaoWAnBwzyQtbegQ0u+OuekCffMbqGTCTLb7BDFmbtb4NJehNKGhMw4VzV4SMOZPi
         IxMkR7A7GcVQpx5zpRU+SyKCfCjki2cbs2gnIWJz+vg3+vyuKLepD38aBh/N18CEZVAK
         u+1DXxI42JAy4mu4jiSHhtv+IQvJ5juK1+r/dv+xHFe7nUD7wk/zy07+MOBJ6ly1kE+G
         /ZKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ehJ1FDrt934m71egzidi3dn4Z02wK65douizV/opsWo=;
        b=Kv+W0BqU0jCmyhY/ZjXw0teySoDNc9RquXTeHWqvLymknWi30yn06U3v5UhhVmhzWv
         bwZl+0fhOkuuGWcdjYGdPUp2ocNQ5neJFN3zbc59qwiDftYH1u4SP03A1ep6q/XEz11G
         rGirHTdQ5GhOuiM02ex8RzvGuGI8wKDtqi9zqcVFkZbxrANqWpmmYD7jI2NOvgbggSQe
         ShoIsILliEGcfKESlHfiy6GMQuX4z8BJH+7ix+t6RINg0k/PO4Y7BncbhIhjAXj2Z6Yc
         87jf2Qb5tDJLKjFqIg234rIEXIg6fGdiy/1W89sH0F2cDzOuboseHAt6DH4xTnenBnIr
         onIw==
X-Gm-Message-State: AJIora/quaXc0SQHgQzAkgqR+XFChtGTOkQx2K3YCnp+xajbLJIxoQOs
	MruDY0oxZ9vzEcJM5YPtdftAsQ==
X-Google-Smtp-Source: AGRyM1tolUPsyooXC8CKG0Qb9ywl2kd818tLY9kYd7mx7VhHgEdlvr9dZjbttKc3d4gGijpPelmF5Q==
X-Received: by 2002:a05:6512:281:b0:478:f324:6c0c with SMTP id j1-20020a056512028100b00478f3246c0cmr5236328lfp.287.1655462178370;
        Fri, 17 Jun 2022 03:36:18 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d3-20020a056512368300b00478ff020832sm591803lfs.106.2022.06.17.03.36.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 03:36:17 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Stephen Boyd <swboyd@chromium.org>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH 2/3] drm/msm/hdmi: make hdmi_phy_8996 OF clk provider
Date: Fri, 17 Jun 2022 13:36:07 +0300
Message-Id: <20220617103608.605898-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220617103608.605898-1-dmitry.baryshkov@linaro.org>
References: <20220617103608.605898-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_033622_150472_501D0968 
X-CRM114-Status: GOOD (  11.70  )
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

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c b/drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c
index b06d9d25a189..cfb83e9dd810 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c
@@ -707,8 +707,7 @@ int msm_hdmi_pll_8996_init(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct hdmi_pll_8996 *pll;
-	struct clk *clk;
-	int i;
+	int i, ret;
 
 	pll = devm_kzalloc(dev, sizeof(*pll), GFP_KERNEL);
 	if (!pll)
@@ -735,10 +734,16 @@ int msm_hdmi_pll_8996_init(struct platform_device *pdev)
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
