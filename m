Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4EF8E732C5
	for <linux-phy@archiver.kernel.org>; Thu, 28 Sep 2023 11:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pya+ml83CXP0vic0odOu9wH/yBBwzLLUabwkSTy0tB4=; b=0ud762OoJE5kbi
	z8ouOFYdbCCxVz7WlBrAJB+Kbo5l4kB4YtP1UlrEQD8Uk0/d5Lz9IC+EhB+RMDPw/p5cdw4SKImy/
	0BEXdEW85LSEof9QCvMxAeC6/LiPlXbZ5igTdboHT41G7OjUM3H7prdkpOsTBYs4OsD2q37Ptrzn4
	pqj1joCM1T25drQlwPqDQfKwx1v07yWWbBaeipCniQ+XS37LQpVzX5Y8CHBEopeKTfG0XARoY7C1Y
	1CdmxLJzEH3at7QY9ep3NLduwUrbkl4VokiElU4SuX6QgGD5XiDHbV5w1llE0Ga4FanRzb3uZSedM
	D8mjyyIuSX1gkJmHflBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlp0g-0038YP-1B;
	Thu, 28 Sep 2023 11:16:46 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlp0Z-0038Rr-0C
	for linux-phy@lists.infradead.org;
	Thu, 28 Sep 2023 11:16:43 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-50307acd445so20372500e87.0
        for <linux-phy@lists.infradead.org>; Thu, 28 Sep 2023 04:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899797; x=1696504597; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZUcCOVu6ZaxzHiAf2no1lacr8/uO1deQMwqsfTD0Nwk=;
        b=FAxcjF4wLijPWDaq3W1Cxe2BaozAK6I6Je0nIYs/MRfxWWDvJvsdh5oIw2UBhHW05r
         jrCdx29lQT39sVvss3BHrr1wI9s4OmOWriOcw0SeZQvQnWKT0yfeqSpToaTxTTEV1lsN
         FKcogWZ9qeA3Fy6FUIMl8KEIibKI0oRpYeMheO8CmIp4BQQsi3hTucevDhiP86siU74E
         E//qYBEzZ9WFkwyWtX21ms7UDe6okVkbSfzlTnlPsfLsCI2ZoUeARZD0g5y/Sr46WEIQ
         y2WgEqcNBQKpUZAakJttCEoHaSSjDe52gbFpqU1EpubjWrz4bSGbK9t+tMSNHumyNTfO
         2Z/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899797; x=1696504597;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZUcCOVu6ZaxzHiAf2no1lacr8/uO1deQMwqsfTD0Nwk=;
        b=aRO6GrJyln2C7Bi7j2RZbuTgERmyJcvcmmRgA2aUj4dFT5IWMdgloNOjuKc1xhmTGp
         Sm7Ow+JJg77zR+iBmtmfqrv7Vz36r3u3Po7zM/9l6T4F1OHj1TOMtB3i/ux5aGN/P38E
         EPbPN6OunnNtNwrhzPTN7lYGwgugHp1snSBsxJZ5WDmMLjcyyczw1tAlhyJgK8wWfoCq
         m685SQi4w/Uz1DOmMnvFMkIBgzvwTNRZmEK3osWKGmxBmGeII7hcrgCQ1vwhOctg9mMO
         YhOqyWh3ntBogdozhXWyjMGm3JbVriONIcL7VndNL21sMfqPfwSdbgY95owT424bwN/Y
         8IDw==
X-Gm-Message-State: AOJu0YyXPWIXzDl/yIE0EcLIJLyb0TTpwX5G/eXsYHB3zmr8bRHiuAKZ
	hd/Pp4Q3iJQ2q3nv8BLWV9UfuA==
X-Google-Smtp-Source: AGHT+IGayXiNU18owRcbSjsnuEvUZI+a5/Tg0pK7lvyHa0cMWTUPF+pJZOcVu6K1HD5AKpwp7dZ+ww==
X-Received: by 2002:a05:6512:447:b0:503:9a4:26f7 with SMTP id y7-20020a056512044700b0050309a426f7mr844038lfk.40.1695899797684;
        Thu, 28 Sep 2023 04:16:37 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j18-20020ac253b2000000b004fb738796casm3086623lfh.40.2023.09.28.04.16.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:16:37 -0700 (PDT)
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
Subject: [PATCH v3 08/15] drm/msm/hdmi: move the alt_iface clock to the hpd list
Date: Thu, 28 Sep 2023 14:16:22 +0300
Message-Id: <20230928111630.1217419-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928111630.1217419-1-dmitry.baryshkov@linaro.org>
References: <20230928111630.1217419-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_041639_142146_50FA4000 
X-CRM114-Status: GOOD (  10.90  )
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

According to the vendor kernel [1] , the alt_iface clock should be
enabled together with the rest of HPD clocks, to make HPD to work
properly.

[1] https://git.codelinaro.org/clo/la/kernel/msm-3.18/-/commit/e07a5487e521e57f76083c0a6e2f995414ac6d03

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.c b/drivers/gpu/drm/msm/hdmi/hdmi.c
index b6bcb9f675fe..75644efe23cb 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.c
@@ -250,9 +250,9 @@ static const struct hdmi_platform_config hdmi_tx_8960_config = {
 };
 
 static const char *pwr_reg_names_8x74[] = {"core-vdda", "core-vcc"};
-static const char *pwr_clk_names_8x74[] = {"extp", "alt_iface"};
-static const char *hpd_clk_names_8x74[] = {"iface", "core", "mdp_core"};
-static unsigned long hpd_clk_freq_8x74[] = {0, 19200000, 0};
+static const char *pwr_clk_names_8x74[] = {"extp"};
+static const char *hpd_clk_names_8x74[] = {"iface", "core", "mdp_core", "alt_iface"};
+static unsigned long hpd_clk_freq_8x74[] = {0, 19200000, 0, 0};
 
 static const struct hdmi_platform_config hdmi_tx_8974_config = {
 		HDMI_CFG(pwr_reg, 8x74),
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
