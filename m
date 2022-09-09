Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DC89C6FA91
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 13:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N10KS6lLEPQg7VhHMqdtZ6cQTLgsnNcBRNwB6dlNjSs=; b=4jSw2/m2ml1+rv
	sijTw0dk383LsZ51c4JBWfLxtvkL4sXOIWJe/Lm982KXAmKP2U5zglkm33Cax0X6kNtN1WvM831+K
	s/oRWBGW5pDsC9bsbP7NP0fqlvxi9McmWfevEmVwzDNOX7UxlVg8ldvOMJC1hhexgkqy3KWsXEAiz
	FD+QTyl3wSJMgn6wiwFMG3jEVrzGcfqv4FOV0E1UTF4oJiCmXRgZQShTBis9SPeuHbk+aEbuAkZ5g
	vKW/C+4SU4DN8v1/LEfVeMGQo/94mKFc4SnZRwDnqKmKknCK//4DUAs4M7iNuf2cfD8QEFoi+8qu/
	EHLJvNuxO6KygdUibX8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWdve-00GIA4-Od; Fri, 09 Sep 2022 13:20:18 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWdvc-00GI74-7K
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 13:20:17 +0000
Received: by mail-lj1-x22a.google.com with SMTP id y18so1772502ljh.12
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 06:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=Wd0dLX4RoIQz4F553heILe9/hGLsfSdsBsSpc437liA=;
        b=o61kjP3KIBTm0M3eAdFlAoiGyJBMm5g72Syq4C1anFkLNdLpCuBwguA+kMm1SnFqjd
         0eteJIq+IUxAqS8lBGfNPCjMp9K3r3MC6oHF8ycFsPcJCUliQbHKADQhn2b4ER7FVXUI
         rpjU2UcBdo2Mds6ezQijKdbxojMVwwm0CN0SnRewO5FWb9/fw99glpuvr9QMCCEO12I9
         qCPQg9aRyr0A1U0H7E9qTDPvol6Nwnl5rnz3iQtR5V20DOhrEOTcThxAKmSa1O3cHVu1
         J3HpCwdlae92sYet3G+Fb17tt3dEnYwTuWmCNi0ok9O/RFuTAP8VCsXi2+ZRPSAUQVjV
         X7kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=Wd0dLX4RoIQz4F553heILe9/hGLsfSdsBsSpc437liA=;
        b=Ouy1JNNLoVQjugD7SNFML4DOkDONtDTvKShTZAEJzCtvFjFAmhJSRUdqsGlOXd8ENl
         OqO0Etpk5NSfoNXU5uylmd0GKowPJv0xy1vOHlZojCkMdQS5xPSV/5szxugpQNqizh6M
         1hLi9f57DKhJby1X9ffG4IQFiO6gd0RpZZJ4dbd+eJKarTmv6+mnnumwTdefm6Og/iHS
         +MuoGsfNHHx5UfQ0SQr76Yvib9tZOT5mk7Nf6ZdOE0nLKBCyC0Y0/tTbFTxwci1DrDhT
         szIMJqhh+iBMnp8QuPnNW1cjFR5SDnvGx1+LJVirfMGTfwm+Mn+0olwseU03TpEZsdH1
         mPyw==
X-Gm-Message-State: ACgBeo2Z8rhv/TCQQsxSHQTJLVNhLpvIeim3ke14yEEgngQolnvqti+X
	22nV/aygB5vuXfr36r3EvF6iTA==
X-Google-Smtp-Source: AA6agR4IN0U9QlG9nGkTzwgl9TIcf7+DA9SPXWjc9Rx6V3Wt3cYbPH63oqkMVR31jHDWSuRwlESccA==
X-Received: by 2002:a2e:b04a:0:b0:26b:da87:8a72 with SMTP id d10-20020a2eb04a000000b0026bda878a72mr2446280ljl.233.1662729613945;
        Fri, 09 Sep 2022 06:20:13 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v10-20020a056512348a00b00498ff4ae746sm71729lfr.294.2022.09.09.06.20.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 06:20:13 -0700 (PDT)
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
Subject: [PATCH 3/6] drm/msm/hdmi: switch hdmi_pll_8960 to use parent_data
Date: Fri,  9 Sep 2022 16:20:07 +0300
Message-Id: <20220909132010.3814817-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220909132010.3814817-1-dmitry.baryshkov@linaro.org>
References: <20220909132010.3814817-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_062016_290171_F43AAD76 
X-CRM114-Status: GOOD (  10.94  )
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

Replace parent_names usage with parent_data. Note, that this makes the
PLL default to board's `pxo_board' clock rather than just `pxo' clock,
as we are on a way to deprecate the global cxo/pxo clocks.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c b/drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c
index be4b0b67e797..c3e7ff45e52a 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c
@@ -406,14 +406,14 @@ static const struct clk_ops hdmi_pll_ops = {
 	.set_rate = hdmi_pll_set_rate,
 };
 
-static const char * const hdmi_pll_parents[] = {
-	"pxo",
+static const struct clk_parent_data hdmi_pll_parents[] = {
+	{ .fw_name = "pxo", .name = "pxo_board" },
 };
 
 static struct clk_init_data pll_init = {
 	.name = "hdmi_pll",
 	.ops = &hdmi_pll_ops,
-	.parent_names = hdmi_pll_parents,
+	.parent_data = hdmi_pll_parents,
 	.num_parents = ARRAY_SIZE(hdmi_pll_parents),
 	.flags = CLK_IGNORE_UNUSED,
 };
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
