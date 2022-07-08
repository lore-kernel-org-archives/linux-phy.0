Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 066BDCCA47B
	for <linux-phy@archiver.kernel.org>; Fri,  8 Jul 2022 13:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vg4LU7fX5UaFVAcsSOupQo1xSm5Y1aprVRm/sOoauZo=; b=oYGmjF877IZLUC
	0rqd5OXQGaUnTMBDL7RLhou2r73VJVAZLutHbkqrPlBt50d6eUl8npU+WM7EjiAUoFNVgAZ0FGcMz
	JxP63Ei9agaWv38BlSNHNwCUUtqJRcVyGRQGRUVCZXVejCHBB81uBdnUsjtJ7im+MB1jMXMtJdFxu
	NldMlcAjUH6MM55Rtzbz/SRXVcgciU+D4+1BFp2EOWxx/hHssG9KVA+VCJGd6Eh7tqeq4DKR4+V2x
	CLT7/nQlWuAREcp93k1jq//I73GJ0Qk0/GMXE1RGwv0ic2eXC49cAgFHKs6Vdvq5gMqyicYJzNxQ/
	HKhL131fUs8NXf0GYMWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9oRc-0040nq-EY; Fri, 08 Jul 2022 13:54:56 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9oRZ-0040m5-LA
	for linux-phy@lists.infradead.org; Fri, 08 Jul 2022 13:54:54 +0000
Received: by mail-lj1-x230.google.com with SMTP id q7so3664871lji.12
        for <linux-phy@lists.infradead.org>; Fri, 08 Jul 2022 06:54:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oBZ6reeyKLnZu1euC93MTf6+D13zsySYlZ/57ITlSLw=;
        b=YVBYUoltBc0ykAUny/Jh48Hq+XAvPrz2KTc7ziz9OlLyJjp7QARaZROASWhZzxHBrk
         4sOQjDNYTYzxlD4fHw2qBPIwm54kh5jrQll5TyAGz0IFAcAGUIcA3Ncyrmp1ioYBmcFE
         E0g+vJGsxO1UIG/swSjWZ3DMhXwLKObUgtI0H9Cb0BTfLzBm9+fk0afVQabAEniOx7HH
         arEgE+U7XfhWHbyi182TlBzThTziXq0SgMMxKDCjhLP/1GfnDnhgt2y36I/MkP6Nqqom
         Em6IBluUT2UmQe3cP+5AjtvX+cH7T3Sq2c0k4tcDffVnV40MUqLgunZuenVuBP9oCaiR
         RfPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oBZ6reeyKLnZu1euC93MTf6+D13zsySYlZ/57ITlSLw=;
        b=UaYKe76uZ3MsLt/XFdw/u4x0emUX0RJ+lzLYi6lTd7bL6OEamMYqp5yilevo4Gy8jT
         Aa38Yb7a1QyGNwfvKhjX1tUr3TP/jp0LiNqcJjKx8Rn7HruCk20uBInONWq1peqfiMr+
         HoOWP5qz2RFxSL7Gx80lz2gGfJYX0IUx0jJwNsLulIv/ITSrBL+5wfCZEIVowqWl7aj3
         1m5a5zjDQvFPnYlr8BM1AsaMxUgDWqLBu22YzSIJIG6elaIzCuXkfPsW3Kb8QEmaKe3n
         ac7lLnUOOnW/q2z2rKabba6Y3vTe1uaQVVl2rNLouFiMrn+LeSZ6fpBvzOhhLOWJix8a
         Zfog==
X-Gm-Message-State: AJIora92IZxXygGVJ730Z9n2J16DVGpO3jYFZjWiFwPyVLs6vJ3wjKSu
	flxp66bS81iKDwIUdW50yt7IDA==
X-Google-Smtp-Source: AGRyM1tRjA2agm7R/j2hqY/ugg7NtFbwGbRKg9vte1R7g02DanxIiuE1HpTeHHE3MtjrjBWefUzAog==
X-Received: by 2002:a05:651c:4c9:b0:25a:9d24:886 with SMTP id e9-20020a05651c04c900b0025a9d240886mr2154645lji.471.1657288492086;
        Fri, 08 Jul 2022 06:54:52 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id y9-20020ac24e69000000b0047f647414efsm7428352lfs.190.2022.07.08.06.54.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jul 2022 06:54:51 -0700 (PDT)
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
Subject: [PATCH v3 0/3] phy: qcom-qmp-ufs: add symbol clocks support
Date: Fri,  8 Jul 2022 16:54:47 +0300
Message-Id: <20220708135450.2845810-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_065453_714348_4187AD93 
X-CRM114-Status: UNSURE (   7.03  )
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

Register UFS symbol clocks in the Qualcomm QMP PHY driver. Some of the
platforms (msm8996, sc7280, sm8350/sm8450) expect them to be defined (to
be used as GCC clock parents).

Changes since v2:
- Added error handling to phy_symbols_clk_register() (requested by
  Johan).

Changes since v1:
- Added a macro used by clk-asm9260, so that the clk-fixed-rate changes
  do not affect the driver
- Changed registered clock names to be unique (as e.g. SC8280XP will
  have two UFS PHYs).

Dmitry Baryshkov (3):
  clk: asm9260: use new helper for fixed rate clock creation
  clk: fixed-rate: add devm_clk_hw_register_fixed_rate
  phy: qcom-qmp-ufs: provide symbol clocks

 drivers/clk/clk-asm9260.c               |  6 +--
 drivers/clk/clk-fixed-rate.c            | 28 ++++++++++--
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 59 +++++++++++++++++++++++++
 include/linux/clk-provider.h            | 41 ++++++++++++++---
 4 files changed, 119 insertions(+), 15 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
