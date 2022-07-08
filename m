Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01424C3F2D4
	for <linux-phy@archiver.kernel.org>; Fri,  8 Jul 2022 13:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cq4M6Ot9I167gndgcnQjE5JTLvqTdYvLReddxquPCMc=; b=gC1+i+zXwHDVau
	AFYJACjVrSvlL3V1JNZabemkmN4Ft5U85zIlygzq7vTSA94MiiuN9MMugdtms/MTzLdb3uwaaAAq9
	sTeit9WunXQfEw/ruAnoVWILUWnNmzh2bg/6reCP5Sly4bW6NpJfymLERsFi9IDGWMGlGNjaIrpXy
	50kMP1KA/NsMiT2vvGUrmcJGqjPN1xW5Cxj7JxbF8UgaXVjgIToHn/LV/lEr0zjY7NizldDP8eyJ6
	BH6e0mF12PH2SHiBW/YieiwsUY6UDWp79Xh5K2C+8OExXJlUeMl+hqb0aDDlatH9JgUox3e0ujJxj
	KMWIxYBXVUEP3OH1Achg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9nnh-003slC-EP; Fri, 08 Jul 2022 13:13:41 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9nne-003siw-HF
	for linux-phy@lists.infradead.org; Fri, 08 Jul 2022 13:13:40 +0000
Received: by mail-lj1-x22d.google.com with SMTP id bx13so25895443ljb.1
        for <linux-phy@lists.infradead.org>; Fri, 08 Jul 2022 06:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IjR+2F8VDVzWZtZbL2H5UO7CpeJEqxrSNDvsv43xJOY=;
        b=I0msIR1xHsrK427ROpYty93HRV1Cf5ngV2kxkvQkzAOxgzph0oKhs9P+bDanaafDLZ
         H0XsGEMCv7ljW1RXECph6U9flE4iF1S7+BehA1PsEdQBVth996KZ31klFnJhQtGMBGym
         gZ4pqEmQU99IpsBtLL7Rd0eebCucU/ERWyP3yoT/iZkZ02SVD4J4n0RXu4Z9zMC0IFoL
         M/RHb34qu0cWPhxkgMV92AGLwvbwLovkIE90g1Lk+B3iyyM3uDreLi5LUPCzegERyUH+
         GmGUxUGPvYj5M1vCTsanDd1UCZb5tM3Ir/ttI38F2MjmrAOBRfl6WHGdazXNcYVcAHhX
         hYXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IjR+2F8VDVzWZtZbL2H5UO7CpeJEqxrSNDvsv43xJOY=;
        b=fwyA9RgJAUf2uWr9ol3IEbYwBInkxZykM081wFj2fcLdgVqVjqSFL1ye5ISpVaBIcm
         FwRKx6g9dAgwIvUwCT2mxxOLecXTjL1l/wKWweZ9oNX1TzYMP2lLmA1YKBZzdsU8Nqjx
         oijwjqnVuQSWKiH7WdVOo0l72vwBBPdpjbzec//bsi6rmHJOT4RI8VxsX5yEKMKgdkNn
         0/jfNnjOCgCR8sP24OwiLv1HefdeiRrjjVBFfx3MCwb7dS3mIzeevDUbIP1O/35KvMWO
         5tLlcjkmuELyTCvRwLENLjTsI9qEEsH7BQVw5ytz3EuJiWYJC3+Iw1Zvz+Pz2Af6eLH3
         +PrQ==
X-Gm-Message-State: AJIora9pwCth8tWC2FUWUXo5/hMZjiELhhdGmduYy64djwTQd0ie5/xW
	YuT2vL0otb3EsnkL3Y0cVzEJ7Q==
X-Google-Smtp-Source: AGRyM1vS4wofuQbXsdOj4XwEHt7DCrtCFNOpkaD2vtOzu4vM+8vBWRpkAEjkfAI0qItm3zkqMesnhQ==
X-Received: by 2002:a2e:a54d:0:b0:25d:4fc6:7b4d with SMTP id e13-20020a2ea54d000000b0025d4fc67b4dmr1859128ljn.11.1657286015648;
        Fri, 08 Jul 2022 06:13:35 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id bu35-20020a05651216a300b0047255d211b9sm7410844lfb.232.2022.07.08.06.13.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jul 2022 06:13:35 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Taniya Das <quic_tdas@quicinc.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH v2 1/3] clk: asm9260: use new helper for fixed rate clock creation
Date: Fri,  8 Jul 2022 16:13:31 +0300
Message-Id: <20220708131333.2836900-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220708131333.2836900-1-dmitry.baryshkov@linaro.org>
References: <20220708131333.2836900-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_061338_593161_C376F9EB 
X-CRM114-Status: GOOD (  12.92  )
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

The __clk_hw_register_fixed_rate() is an internal API, which is better
not to be called directly. Add new helper to create fixed rate clocks
using parent clock accuracy.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/clk-asm9260.c    |  6 ++----
 include/linux/clk-provider.h | 14 ++++++++++++++
 2 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/clk-asm9260.c b/drivers/clk/clk-asm9260.c
index bacebd457e6f..0609b661ff5a 100644
--- a/drivers/clk/clk-asm9260.c
+++ b/drivers/clk/clk-asm9260.c
@@ -276,10 +276,8 @@ static void __init asm9260_acc_init(struct device_node *np)
 
 	/* TODO: Convert to DT parent scheme */
 	ref_clk = of_clk_get_parent_name(np, 0);
-	hw = __clk_hw_register_fixed_rate(NULL, NULL, pll_clk,
-			ref_clk, NULL, NULL, 0, rate, 0,
-			CLK_FIXED_RATE_PARENT_ACCURACY);
-
+	hw = clk_hw_register_fixed_rate_parent_accuracy(NULL, pll_clk, ref_clk,
+							0, rate);
 	if (IS_ERR(hw))
 		panic("%pOFn: can't register REFCLK. Check DT!", np);
 
diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index 72d937c03a3e..659ef5a77246 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -439,6 +439,20 @@ struct clk *clk_register_fixed_rate(struct device *dev, const char *name,
 	__clk_hw_register_fixed_rate((dev), NULL, (name), NULL, NULL,	      \
 				     (parent_data), NULL, (flags),	      \
 				     (fixed_rate), (fixed_accuracy), 0)
+/**
+ * clk_hw_register_fixed_rate_parent_accuracy - register fixed-rate clock with
+ * the clock framework
+ * @dev: device that is registering this clock
+ * @name: name of this clock
+ * @parent_name: name of clock's parent
+ * @flags: framework-specific flags
+ * @fixed_rate: non-adjustable clock rate
+ */
+#define clk_hw_register_fixed_rate_parent_accuracy(dev, name, parent_name,    \
+						   flags, fixed_rate)	      \
+	__clk_hw_register_fixed_rate((dev), NULL, (name), (parent_name),      \
+				     NULL, NULL, (flags), (fixed_rate), 0,    \
+				     CLK_FIXED_RATE_PARENT_ACCURACY)
 
 void clk_unregister_fixed_rate(struct clk *clk);
 void clk_hw_unregister_fixed_rate(struct clk_hw *hw);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
