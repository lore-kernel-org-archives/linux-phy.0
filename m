Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28C3ACCA47B
	for <linux-phy@archiver.kernel.org>; Fri,  8 Jul 2022 13:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cq4M6Ot9I167gndgcnQjE5JTLvqTdYvLReddxquPCMc=; b=wSxaI9xhDF/Rez
	70Q1KpjHhVSdxjy02DDS4Yn4fvzYpFZ73exzFxPfV6iJscGdmptpbtJMHZnsWXGJZVotKSQk4N5cW
	ypuR9x3PaN1VfJkNjmw5npVNUF0bnaAY73dFCOmahekkifXwiqJUO4TLyoy+j2z/+HMZKHBBRQplI
	MZZOBs91gdmp8cwjqkaSoBTN5AHMymo4KQJVeCtfaq6bGAs+xBbFwG39Zpo0BpBnFO+6kdjsR9nDV
	8PO6ky24Q6SYEsCk+DyLj/3SV5Rtbux268Vrz2M7nkDP3qzWpkMX9zQeDXwVmsLIQYqoxkZBqJCzI
	5D486jI9nDLIOFbLSQXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9oRf-0040qC-JO; Fri, 08 Jul 2022 13:54:59 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9oRc-0040mI-At
	for linux-phy@lists.infradead.org; Fri, 08 Jul 2022 13:54:57 +0000
Received: by mail-lf1-x12d.google.com with SMTP id bf9so13232896lfb.13
        for <linux-phy@lists.infradead.org>; Fri, 08 Jul 2022 06:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IjR+2F8VDVzWZtZbL2H5UO7CpeJEqxrSNDvsv43xJOY=;
        b=tllR9CHKoo+1RaUDvcQwzF7LiqVYGALP3A/a/+Asc6x59lxzNkw5PlKJjIfbvWPAWW
         9CXmwKDcCfaPJiRqylRUxSywesFV5OQNxe7npy51hKnx45vQavBCLzyiRTpaCkErrz0P
         HfoAj7Ldxkz7UlDrza0GGMKyJbBaM3d4jB6V08jecF3hw5nDP85nxNzxop3CkYcG21O5
         eyLoP2ozjmLaTavfx4PT7YoowAPO3sOsbQQQzRxqqQgeROH0n07V6Mwa0Zwl4/gueiGO
         uMST0a8iIkM5g9jq+m2aeX0cjsYoTZHk28gKiDQ4D4Bp2hEvNOOFLb/08I/9OcieqO6O
         X2bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IjR+2F8VDVzWZtZbL2H5UO7CpeJEqxrSNDvsv43xJOY=;
        b=v3FzlVgcqlaqEjU2tId19M8sfzn2A4OrS/e8W1uTHZfcH6ZR8ECO/dYIsCg13EjjM2
         bvqA8lTobw1kyAk/+K5jHSuyGHKds1LDtK5utWLKGx2VPDJ7qCB5ynLAaJi7H4Noq5Ng
         00COQqiiqvRvcJV/xmipKV55yjzxgHWUZ3qm7GvQZi1bnObOBcYUu8zgKPnnVyAvhgi9
         kyQ2IpSrUBVfyAGiIlwOdHiErnw09vC9ej1/p7e/eliZVO7trWjOjSAUKFTfnMmzjpqA
         c1nQT8i12AjcN2ynJj1By3HH7vCQ/oYzlvP/d4qiXqlLZGpW/8equhHx9511VukqiDDd
         JzNQ==
X-Gm-Message-State: AJIora/Dpfx2JcRTkbgm2aveUq2j5adg9JDaArlGesCPDdDB5h5e0PJx
	QHo7gieHIW8b5kZSlP8NEtd80A==
X-Google-Smtp-Source: AGRyM1ueiCl2TJwWKsZU0JOxrMmww4iJVFJmo5yk2nZiJigX7CiUL+rANkwFfa0/dKx/t7m5rW6kcw==
X-Received: by 2002:a05:6512:228d:b0:489:2309:fd63 with SMTP id f13-20020a056512228d00b004892309fd63mr2682898lfu.232.1657288492993;
        Fri, 08 Jul 2022 06:54:52 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id y9-20020ac24e69000000b0047f647414efsm7428352lfs.190.2022.07.08.06.54.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jul 2022 06:54:52 -0700 (PDT)
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
Subject: [PATCH v3 1/3] clk: asm9260: use new helper for fixed rate clock creation
Date: Fri,  8 Jul 2022 16:54:48 +0300
Message-Id: <20220708135450.2845810-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220708135450.2845810-1-dmitry.baryshkov@linaro.org>
References: <20220708135450.2845810-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_065456_386758_4665A7CE 
X-CRM114-Status: GOOD (  12.82  )
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
