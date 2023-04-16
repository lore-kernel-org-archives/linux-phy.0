Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D544C77B76
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 10:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zgaa7H2y+Aw/6C4Ak5G7q5rlk7z7TpR5kPl5XMU0eho=; b=D0+pne9f9N03az
	GoR5ys6bQa7VHufb24LSyYz7ILkczbpv89tFN7F/dBXmzfFVB2v20VBBBM2YxBzEC/86MTzmucg5+
	w2L1Q+LfBL8pjNzhk/vUwD0YkUY20BI22FhdprfFD4CkOYDlxSyjwBdYPOSFPxNx/+zM68kuPLKSn
	R427Vsh9Jv+br9ITrwz4I8QnakA4SCWgt1tDyrZmO4X2ZtjmlINUUqsCwTEfuK9gPKcM7FmsoSvJy
	wM8xFzGRYzWVmP7Yk4SbHSLoK6v6JnTdzVi25Puc0DthIV5x5i2kx4olzxDa2mYG4UM3jxF/YE0HM
	/dQz2ITUlw/tJiaMYQgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnzSp-00DVgh-04;
	Sun, 16 Apr 2023 10:18:31 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnzSd-00DVWZ-28;
	Sun, 16 Apr 2023 10:18:20 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-94f70a552fcso1182366b.2;
        Sun, 16 Apr 2023 03:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681640297; x=1684232297;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AjXGUzPKMMr8ygNmvKTs+ca+O+QBcfL+qA6w2J0vS7w=;
        b=JuDRUCNLbgpuHXyBai4VgEQz2LHyBsvcksieW2gFVZn1a3JvqAN1jKKWnUuYs3tvfX
         gypRLo1FRoF49Ux1fV1yb80Jj9ScWPYMqB0fD/4/5w7+ErAAlHlhUQBj6Q2s0pKbsiAg
         6IUYr0FX/DY4wfSXIO8lPa9kQyEZSEnwa5cWM/FImvQgfCWOTxlwy3sLGFgKrc6338Nh
         DOpHJokg4i1jSlveMw468LNYawjMmZitqX5u6BDdgmwHtwQMVmscPCRbI5mBCyoay/v7
         Oq9bF06b5NQzqCadwQ3/LiZRoaNEeSACd14Ni62ivVWXuXh1En2d3fNC0A1C8LyhMNSB
         g8Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681640297; x=1684232297;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AjXGUzPKMMr8ygNmvKTs+ca+O+QBcfL+qA6w2J0vS7w=;
        b=PRbfw1+5McXQWaotxQ1hhAgvVkCb2MM3am0F0QBPxYRopKYMPpuYSC9drc7KYrq9ak
         /o07QZcVy7On2MD2pvGxAl6xZ6qrQomxTkzD2kGblRSQbdxkC1zNo2NnwhZKcJQX2Uv4
         sehoXSg9AMwO5QqCfc4zr/n07+dwiokQ4qNsDAoiRCa5F9NEoO0JMhQ9OQ2jNA+1T3rE
         8+x5uwF/ZH0NghkABBsAzdqkC1BwhPB1ML70U4DziLzxyScRfPjiHTZxisga1SrNb6BA
         4iAfrZaXQsbp6rFT/CTc8xPRdHmdovs8pwf2sYYFzNyEMWYv8hStkDD1WSJpSMfJaYup
         hdiQ==
X-Gm-Message-State: AAQBX9demzUpG/MvQqga5zEF0yg6j19sFMuU+4R/OAGISZngD3HGjHYB
	u8yzDCkhUOU/dRUH3yyD/Kk=
X-Google-Smtp-Source: AKy350YfVhGOxo4Fyh2YnwO3mRSIj+MpEFHXrWuxS67lJ6XKwts4kom34TO/LfZQGUpsH9S+3YqSHg==
X-Received: by 2002:a50:ed0f:0:b0:504:aeb5:89c3 with SMTP id j15-20020a50ed0f000000b00504aeb589c3mr12648303eds.5.1681640297417;
        Sun, 16 Apr 2023 03:18:17 -0700 (PDT)
Received: from localhost.my.domain (83.8.121.70.ipv4.supernova.orange.pl. [83.8.121.70])
        by smtp.gmail.com with ESMTPSA id r20-20020a056402019400b0050476da5160sm4427443edv.45.2023.04.16.03.18.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Apr 2023 03:18:16 -0700 (PDT)
From: Artur Weber <aweber.kernel@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
	Rob Herring <robh+dt@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	soc@kernel.org,
	Russell King <linux@armlinux.org.uk>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Kukjin Kim <kgene@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-phy@lists.infradead.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Artur Weber <aweber.kernel@gmail.com>
Subject: [PATCH 05/12] clk: samsung: Add Exynos4212 compatible to CLKOUT driver
Date: Sun, 16 Apr 2023 12:16:17 +0200
Message-Id: <20230416101624.15866-6-aweber.kernel@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230416101624.15866-1-aweber.kernel@gmail.com>
References: <20230416101624.15866-1-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_031819_695595_35FCD31F 
X-CRM114-Status: GOOD (  14.17  )
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

The platform was originally dropped in commit bca9085e0ae9 ("ARM:
dts: exynos: remove Exynos4212 support (dead code)"), as there were
no boards using it.

We will be adding a device that uses it, so add it back.

This is effectively a revert of commit d5cd103b06f9 ("clk: samsung:
Remove support for Exynos4212 SoCs in Exynos CLKOUT driver"); the
driver has changed significantly since then, prompting this re-make.

Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
---
 drivers/clk/samsung/clk-exynos-clkout.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/samsung/clk-exynos-clkout.c b/drivers/clk/samsung/clk-exynos-clkout.c
index e6d6cbf8c4e6..326d5fc58727 100644
--- a/drivers/clk/samsung/clk-exynos-clkout.c
+++ b/drivers/clk/samsung/clk-exynos-clkout.c
@@ -55,6 +55,9 @@ static const struct of_device_id exynos_clkout_ids[] = {
 	}, {
 		.compatible = "samsung,exynos4210-pmu",
 		.data = &exynos_clkout_exynos4,
+	}, {
+		.compatible = "samsung,exynos4212-pmu",
+		.data = &exynos_clkout_exynos4,
 	}, {
 		.compatible = "samsung,exynos4412-pmu",
 		.data = &exynos_clkout_exynos4,
-- 
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
