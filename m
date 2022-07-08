Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5CE6CCA47B
	for <linux-phy@archiver.kernel.org>; Fri,  8 Jul 2022 13:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K5APhde9zmrFShxRX2PdN42qmj0iy9AzE0fDeSD0gzw=; b=deu/zBiSVcjBP2
	ml3NSvZB7+ZV+CVz7xb2+xJs9LWzADsjr1OLpx0bV0+t2vP07FKEaOLXpWPnlnTxD+3pa7BMB1zAJ
	HBpZrKSrFgLKK2nlJk6aYqqsV0FNQbJ8Q6YWFw3gLqHjLVyLT+6mlMK9DrN4I4qBMAdYu4RQnWKM8
	svWVL6ONcmqJ8Pg9lm1VgxwD0jcg983geupOBTfnXX/VXD6zovPsBHcattyPoM4F8Nv2kS3pleQcC
	OSXtVPeNC9mWHY3FM+gCybomm2IXto4xLBx2juPevUUXI3OPnGqOOQrl1jlXeWqqAY8SwQX839WhC
	bhc/yN48fN31hx934pQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9nng-003skU-A7; Fri, 08 Jul 2022 13:13:40 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9nnd-003sid-QK
	for linux-phy@lists.infradead.org; Fri, 08 Jul 2022 13:13:40 +0000
Received: by mail-lj1-x236.google.com with SMTP id u14so25917582ljh.2
        for <linux-phy@lists.infradead.org>; Fri, 08 Jul 2022 06:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=v6/PCW5WRbzPZN02phmsvBdyayCNpfl8Zb3T8MmgeGc=;
        b=iKiqZFrK3BS6sQC5nrTlmwt3NnZd4cUx/MBTVfs2e+got39YBiKpi9Qe4WDmC7ojyr
         CIrKaDPDo5heACWSoTVUmQnVTohdFk5P6qJ4S0o1DdJQoBFemCLle5S3VvBdh+yi7bpy
         EuVyrNAoQAqm2oooz6f973dzd37Kl5IrUHFGoqueydRWKAErukWU38ddvlnsCV+mQHtt
         y5jDb20yclSDKU8TLBfft0nuCWk1p1LdjIwfQbXaV64ywlAfY5IjQcKYP9AVuFDrH2cT
         12j33DCZC8jUOP1hbfZeSLT3EcqaMktR4A39oFT7maR6uqP4LB1OPATmZXBiRp6a+l5K
         bquQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=v6/PCW5WRbzPZN02phmsvBdyayCNpfl8Zb3T8MmgeGc=;
        b=qCiNQW/N50ZgeSfpPDB4d/aJXAzriZCBJ2y2bzGZKTonCTYL9F+LOenFlRdLrSypu3
         zi8cX/z/007icRwpyWJO5T+AZsM57nkxzjyU1zZVbNbJECEI5hHZxVhciXviTKGjyyYD
         LpP3O6LkR61hhtIJ34pZdFtIhZviN3SndTh5dx33VX6WtNpGt4gg3O8e+/QbQ6klC4wo
         GbdrJMHS31YRK4xju4Gem5UJ+nGz+aebA9BivM6rabpAfIXVLUxkRlS/v2oHSkhrYDSj
         LGhTJi7JeJRXEh5cY0U64EGe8GbXiN4a4JS41CvmkIDrukemiIMILlfKPo1RSaUPpQSh
         qO4A==
X-Gm-Message-State: AJIora8InfTNlxb8FuftcRN2K9NAk2CaXjUjSOzMLOA1WDvyzML4VrV9
	RWtHu/Sbr9zmbEx+LiCmUTDfbA==
X-Google-Smtp-Source: AGRyM1vffmcfCTZuyPN85KWpI/SicQtx6Zz4UnQksr1NwxLiUcF19Wx7+PpLpTNeleYc6hVNsFiORQ==
X-Received: by 2002:a2e:b703:0:b0:25a:93d0:8a57 with SMTP id j3-20020a2eb703000000b0025a93d08a57mr1964890ljo.487.1657286014824;
        Fri, 08 Jul 2022 06:13:34 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id bu35-20020a05651216a300b0047255d211b9sm7410844lfb.232.2022.07.08.06.13.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jul 2022 06:13:34 -0700 (PDT)
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
Subject: [PATCH v2 0/3] phy: qcom-qmp-ufs: add symbol clocks support
Date: Fri,  8 Jul 2022 16:13:30 +0300
Message-Id: <20220708131333.2836900-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_061337_878328_FBAD3120 
X-CRM114-Status: UNSURE (   6.90  )
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

Changes since v1:
- Added a macro used by clk-asm9260, so that the clk-fixed-rate changes
  do not affect the driver, requested by Stephen;

- Changed registered clock names to be unique (as e.g. SC8280XP will
  have two UFS PHYs), suggested by Johan.

Dmitry Baryshkov (3):
  clk: asm9260: use new helper for fixed rate clock creation
  clk: fixed-rate: add devm_clk_hw_register_fixed_rate
  phy: qcom-qmp-ufs: provide symbol clocks

 drivers/clk/clk-asm9260.c               |  6 +--
 drivers/clk/clk-fixed-rate.c            | 28 +++++++++++--
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 56 +++++++++++++++++++++++++
 include/linux/clk-provider.h            | 41 ++++++++++++++----
 4 files changed, 116 insertions(+), 15 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
