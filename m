Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 802B9C6FA93
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 13:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bzspnl6clXRYX3zRk4lia11R/Y4v4P0hKsHJKTN9JfI=; b=y5UQs9BedpRRTw
	irqDrBPR7BjIeYr5J2+B02C3myk/QRMXM9yG15bovSn3dVFbYHgH3+GHz1X01q3MvvTD/hmO6iz9M
	htS5sQrAjAEs0akmQ8/sI1NL6XorhGuvXvQW08u7YjExbQKju9CdZcFIx4BZ8fAgsyz8SnKAx5W3L
	03VPZv1iD8vYJdqy2RNCkemxdI2yYrD4ju3wiIQvPI/dUMRErujC5wHpmHWd1srQo/XFS9bh4z6ty
	EEqSfL71MTZLKhvYGGV4r2apbWD0gkcSift5LunSUAsdNyutGMBqxslLTR63qyyii7oytbz0bnev8
	cKMs0t0kn2NMT45Dm68Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWdvf-00GIB7-UX; Fri, 09 Sep 2022 13:20:19 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWdvd-00GI84-1M
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 13:20:18 +0000
Received: by mail-lj1-x22e.google.com with SMTP id bs13so1789715ljb.8
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 06:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=em1iMz9Ryn69lAbyqnPUyMJ8hWxDsU/s62VVW2GYYt0=;
        b=REuDz7DMRiW5wABhl0JqQ/5R+KnNYf1nJ1z5zFvfWQy5UAeds1UVPHB9xRz2mCNpaw
         pe0kEFj43iG7V1ZV6c7uVxXD8U+EvQ5SZS3gtIBx8N7GxnxLFJYeC0U2nWvOUPBwT62p
         2Wi40KByuV/tfM718iO1rxrwQMwwfFaOrzBt2BUdsYkv86YMAdtFesaz+OQYViu2ptJS
         4ddOWffRcrx1wqZfXp8l49E+VmUL44LXQJBhpxQynXjl6HnA7BviVMA6oA+1rEnbOqnn
         EAac3LXPgRyC8tTCn/82/LqrdecqVYZQhePEmSCTNUPzoCvKAm92YuNdNSNzjzOu2CcF
         KKXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=em1iMz9Ryn69lAbyqnPUyMJ8hWxDsU/s62VVW2GYYt0=;
        b=snokqPNxQsQwGSnAntcQ1TKuYFp9wX4PfpEhOYyMjGr18zWS1AWkNQzEE/hnyADI8c
         i7JSzoqipCttXOWkdFYyDEBOub9mdUSvE2I/hanQuWpvKSIJahZjpfQuWSMewUppT9lW
         f4kXLXuFS+4ag2EXacZhduOosVF6hMEa2xmB+V/qRg6ttEqOzkCh8ctgL4zXDoXPMmTK
         ObNkQQTu/apXL8nqfKaHD6spFpb05Z/v+Vv12cPEuHrzGP33ouaHkHHu3kwzkR6ltGP6
         npl/jkW/IjVkbraElI3vz9KuEuWRG/tnJn/u8s7hKSCGJkiTKy94/EO9/uK0+/CKvtkj
         A9eg==
X-Gm-Message-State: ACgBeo3Hj8sQ+flBPsic0tM25MN+2/moIkH4Im0vNCI6Ag7fBqdm4IKY
	i92BA7z3cIQ2pCsj4bmshOXr6Q==
X-Google-Smtp-Source: AA6agR4kWFPWbWXMl17g4rhRlcM8PGb4uJi9blQLcd4LCHuCk74fJzGlU9hn80Pozqd0mpqFWLIX9g==
X-Received: by 2002:a2e:bc06:0:b0:266:23b7:283d with SMTP id b6-20020a2ebc06000000b0026623b7283dmr4225886ljf.151.1662729614960;
        Fri, 09 Sep 2022 06:20:14 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v10-20020a056512348a00b00498ff4ae746sm71729lfr.294.2022.09.09.06.20.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 06:20:14 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH 4/6] drm/msm/hdmi: make hdmi_phy_8960 OF clk provider
Date: Fri,  9 Sep 2022 16:20:08 +0300
Message-Id: <20220909132010.3814817-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220909132010.3814817-1-dmitry.baryshkov@linaro.org>
References: <20220909132010.3814817-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_062017_094457_C61EA980 
X-CRM114-Status: GOOD (  12.96  )
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

On MSM8960 the HDMI PHY provides the PLL clock to the MMCC. As we are
preparing to convert the MSM8960 to use DT clocks properties (rather
than global clock names), register the OF clock provider.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c b/drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c
index c3e7ff45e52a..cb35a297afbd 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c
@@ -422,8 +422,7 @@ int msm_hdmi_pll_8960_init(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct hdmi_pll_8960 *pll;
-	struct clk *clk;
-	int i;
+	int i, ret;
 
 	/* sanity check: */
 	for (i = 0; i < (ARRAY_SIZE(freqtbl) - 1); i++)
@@ -443,10 +442,16 @@ int msm_hdmi_pll_8960_init(struct platform_device *pdev)
 	pll->pdev = pdev;
 	pll->clk_hw.init = &pll_init;
 
-	clk = devm_clk_register(dev, &pll->clk_hw);
-	if (IS_ERR(clk)) {
+	ret = devm_clk_hw_register(dev, &pll->clk_hw);
+	if (ret < 0) {
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
