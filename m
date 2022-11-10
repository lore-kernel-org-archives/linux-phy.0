Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B077C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 15:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PgG7SKAgS6cjwM6LHY9ct7p2EVHZYRc/JH7WfT3+89o=; b=Dq/rvc+jXK/ytm
	+qzj1APl62ZAH0xoW8A03SCfPYoGWgnhK9zoJGxTWygy/DSoCAT00sF3y3JW0nHwAFC6pBn3J6TKS
	ovny9Pkkr15OyqoRuQV39QSZo+JZTwuqaJELjAhVDy8LbhWSxeS9CPVjlLtsUS4t9o2L6FiIDbQQY
	E+b/cdicfxJGXMhUG1F5TUOA7rsxe3912wxq4yZPHVGW7w++z8KHhz5hfzWbwptrPv76s7aApFAj9
	0QWbaKBss6jtumMv5WPVsB2Pmr8hufO1nZ8ses3Vv7Hgkaf/kAZWby0tblC2XNACk8z0va1pWyjC6
	pkDcUJiMmvfp1rCy1rhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot9JS-006gFe-Rh; Thu, 10 Nov 2022 15:17:54 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot9JP-006gC3-KI
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 15:17:53 +0000
Received: by mail-lf1-x130.google.com with SMTP id r12so3897533lfp.1
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 07:17:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vMaa02LcomJJCP/AnSBxoi34zHEtqX/cqZcpKw4yuGc=;
        b=JVW2yN9pZsnAYSuuN7A7Q8KX+tgWFwV4AwwNLYYGbr4BA6E6uOlrLhpPFop/AaMY0D
         V8fvJ4fz37ZO3W0u6UFsGLtSRdPDThdiSNl7gKqMMp7b/Twdc7V8Yca1ykI8/f1CIQFG
         Aq0v2Yg8cZQRDZF+x2o51bWaoKdFUhQl+QTouw+J8g/sQA2UUmkneVnn3XFI6/W9AHS4
         soFWF8q0QN6oL6Xz/E5Fd/kZm6WbkBUp/gAYiAEyKFVpMQsJsD7NVaJWTH+544GTqxAO
         wbZ7lWduSbBz+Vb9FlrzLgeRDGKKGCBds6kqwyRMwa5cnmUZiIzZM+Urxmu9zT+h9rDT
         Do8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vMaa02LcomJJCP/AnSBxoi34zHEtqX/cqZcpKw4yuGc=;
        b=YhzBv9bGiLcTsEBv5FBYlkRlsWrbq/H92nqOP0AlGjv/bUYCwkuie2hHN4DdyhTqhP
         3/J8aQNhrKHC/X+E3ZTwaMX4FVF1Cdloief+TLV6SO/xYNWm1P6IJM4Nmhf+Rz+4MsKM
         BQLGIqxynPli2TW1Z8ns0Tzv7UK8Ogklj/isVVOh4uuguYmWLfVqMP6yexi53U85vCsv
         5BkGrYQKcA449o9ldrs+zGz6PcsAbmFtvndSrKkaVTQrv1r/+kDEjS8JJuFBPmUj3EDl
         YM4N9qfHFOTA9JqO5OAl2b7F/Bs2LfMbSVb7wSpFEdD7mPKQxbHsSwon2JmGf/50NN2v
         goCg==
X-Gm-Message-State: ACrzQf3i1O+bLqeWukQK7cp1njxoRltQki1/B20/cpcnVqAmkjr88YOP
	O05gkSooRwM4TGjdQ8BKk4qCBA==
X-Google-Smtp-Source: AMsMyM4XJfbZO2Il2qSGSz2yXZbbN6t9/3LsF0gv3A+arSVTpUKKQg5l3481EUkvHiJGsHImbZrVow==
X-Received: by 2002:a05:6512:1529:b0:4ae:cc0f:4d73 with SMTP id bq41-20020a056512152900b004aecc0f4d73mr1675420lfb.436.1668093469114;
        Thu, 10 Nov 2022 07:17:49 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id p22-20020a2eb7d6000000b002774e7267a7sm2719591ljo.25.2022.11.10.07.17.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 07:17:48 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v7 0/4] phy: qcom-qmp-ufs: add symbol clocks support
Date: Thu, 10 Nov 2022 18:17:44 +0300
Message-Id: <20221110151748.795767-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_071751_738263_C343D5DD 
X-CRM114-Status: UNSURE (   9.60  )
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

Changes since v6:
- Added bindings change (Johan, thanks for the reminder)
- Added corresponding dts changes for msm8996 and sm8350/sm8450.

Changes since v5:
- Rebased on top of phy/next

Changes since v4:
- Rebased, dropping merged clk patches
- Fixed whitespace errors
- Added linebreaks to fit into 100 chars limit

Changes since v3:
- Rewrote asm9260 clk driver to fix the TODO item by using parent index
  rather than calling of_clk_get_parent_name().

Changes since v2:
- Added error handling to phy_symbols_clk_register() (requested by
  Johan).

Changes since v1:
- Added a macro used by clk-asm9260, so that the clk-fixed-rate changes
  do not affect the driver
- Changed registered clock names to be unique (as e.g. SC8280XP will
  have two UFS PHYs).

Dmitry Baryshkov (4):
  dt-bindings: phy: qcom,*-qmp-ufs-phy: add clock-cells property
  phy: qcom-qmp-ufs: provide symbol clocks
  arm64: dts: qcom: sm8450: fix gcc clocks order to follow the schema
  arm64: dts: qcom: use UFS symbol clocks provided by PHY

Dmitry Baryshkov (4):
  dt-bindings: phy: qcom,*-qmp-ufs-phy: add clock-cells property
  phy: qcom-qmp-ufs: provide symbol clocks
  arm64: dts: qcom: sm8450: fix gcc clocks order to follow the schema
  arm64: dts: qcom: use UFS symbol clocks provided by PHY

 .../phy/qcom,msm8996-qmp-ufs-phy.yaml         |  3 +
 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |  3 +
 arch/arm64/boot/dts/qcom/msm8996.dtsi         |  5 +-
 arch/arm64/boot/dts/qcom/sm8350.dtsi          | 25 ++------
 arch/arm64/boot/dts/qcom/sm8450.dtsi          | 15 ++++-
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 64 +++++++++++++++++++
 6 files changed, 91 insertions(+), 24 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
