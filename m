Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4449BC4332F
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 10:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K/sxMNYfmwKF0Az6HW/Y9q0wtmeJTMKyCC9CgHCWMLs=; b=YbyT4dH7nr0+2y
	a27sy47C0w9AF3doxDVQ27s0jZbCZavrTDUz+je0Ll0v974tfRPaIYUqnzGu2mMj71AtTjQrDs8/c
	hEKIrvrfyv6vX3k1/Z5aGMLUxpVjmPoKhm0rWkprdRjGihL1L8Zi70Nz4yNJE5onRz/IYJMs1oabr
	5C123HwVBdTM0++GfIrVKwmWhtJQvQbpQ/vci44qIpbzBjX1FSrCbB5VDOcklRuY/cFtFaYK1UwvE
	BGvPm5gBr0qRuSVvtSXv0GxIiJpTvtXfseiSlQrMZUOOrrg4hgDwUGUrYV9ZWI2sREAh6qJ7lE2Yd
	TYzHBPQnqYx4a+Do6Uow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxnFK-00GQYu-Nx; Wed, 23 Nov 2022 10:44:50 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxnFH-00GQXC-FN
	for linux-phy@lists.infradead.org; Wed, 23 Nov 2022 10:44:48 +0000
Received: by mail-lj1-x234.google.com with SMTP id s24so20879706ljs.11
        for <linux-phy@lists.infradead.org>; Wed, 23 Nov 2022 02:44:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jH4aljA+w1T0Z649dDtQqsVnBdBM341tSjMAtxabFJg=;
        b=YF2kg4wG8959hxA7KOnbUjvEPYuj8EQ6wadfttNzKh9CzDua1m0IF4ZgZiucAM2Qyx
         PZKXmJSCQnTQq5dqbyJS2S8O/GSON5ZBhcxSWjYpDrmJ77jcOwMClmMmERpBni2GGdX9
         nV/E5DIzUBgS6cXQw5wwqt8Qid4geoVlljC/EWdY45To4tvNtLRvvF9qpLqkEvSNINPd
         dla44MGSDudS31oSwCJc79G0QaA9mUGCVCwhyzM8zmWtTfwiWPjrZbYKGLTA+774OQ5Y
         /pH4/TJxZ70XUKREk6snR2sVIWbrywL/3Tly0XfR+KMqeY9oX0dY39B1NCHr8KD9ccpQ
         qoig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jH4aljA+w1T0Z649dDtQqsVnBdBM341tSjMAtxabFJg=;
        b=Yi8fATAT75DA7rKUGKER1Zh0yDe0pViy3YjDcy5iuvOo3lS1imajoU00X+t6Ds0xUH
         NGbXXubn3lcxzbvs7HvYFl7RD5LF1IRHAUy47TLIwQCuW/v9yKd9LS38+70cL+76yw9Z
         8YgFiWdceg58saDzb5yZd/GnIWdD3EwkI9HMTDeFX+I56qcJSf9CmZqSFTRseesFcMeh
         SiBU42O/N5goiqUisiWIbKsAo1gLKzfvKrITmDe3RrABDloW6RDBgIz3zkNwYxg0TPnn
         AMZKfB4HRFj+Vq1UkXYl+xUDvnFxm7euwX5SItsk538RxJBE7kdvL/G07ikOPVc49uH3
         bxeg==
X-Gm-Message-State: ANoB5pmLJxac9ztdlmBGlrx8orHJnjLM1NBmE+3tfCCZyu8ktRH0llyp
	Gz3MxwnyWNxSckWwEwFX4lMAaQ==
X-Google-Smtp-Source: AA0mqf4+o9Lb0WHylI+egb6zgCOsG8itakJoTDMrkVj3qdrA4RFBixayWKNCcRT3kRh9+0jq2+glIA==
X-Received: by 2002:a2e:b88d:0:b0:277:452a:473c with SMTP id r13-20020a2eb88d000000b00277452a473cmr2682008ljp.454.1669200284638;
        Wed, 23 Nov 2022 02:44:44 -0800 (PST)
Received: from eriador.lumag.spb.ru (dzpbg0ftyyyyyyyyyyyyt-3.rev.dnainternet.fi. [2001:14ba:a302:5f12::1])
        by smtp.gmail.com with ESMTPSA id be34-20020a056512252200b0049e9122bd1bsm2869082lfb.164.2022.11.23.02.44.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 02:44:44 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Johan Hovold <johan@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v9 0/4] phy: qcom-qmp-ufs: add symbol clocks support
Date: Wed, 23 Nov 2022 12:44:39 +0200
Message-Id: <20221123104443.3415267-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_024447_529466_0E7607D4 
X-CRM114-Status: UNSURE (   9.71  )
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

Changes since v8:
- Send proper patchset this time.

Changes since v7:
- Rebased on top of phy/next
- Renamed the clock registration function (Johan)
- Dropped rogue qcom_qmp_ufs_ops (Johan)
- Fixed the comment following Johan's suggestion.

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
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 57 +++++++++++++++++++
 6 files changed, 84 insertions(+), 24 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
