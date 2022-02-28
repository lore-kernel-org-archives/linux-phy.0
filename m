Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E018C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 28 Feb 2022 12:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T4IRObf1PkCg+gHQJgpXkX9HVjFZhYWT+BiMnIbaEwE=; b=2r3yv2hcaaLkpq
	VfaYW5oZzi7ELVZIJ/MpNbt5thl0qbdTEiASCmKYjCqXHY8zqbRhrB9pllRBnvHEcuv36rqfsbv/2
	47A/0E/dyTLaFOQxBf9qBwT1EpC7oUDKdEFPEP4deB2+b2HIwzTFKVAbj3bJm83ogBeAdRlycwthh
	Ao7o3Xhz4FiwHdoNklgxS/LGAYcSm7jwAiltqYdgoz2qvvIcnBaUryO0XHKANQWETnawtf8xC+D6k
	4uKRADfnyCBaibY0yWg55Qk+S9js4Zz676IyqWc+YTgAixL+AI7nHDK8HZENFK4HzbD8TVbAuluGU
	iamiGmaozb8pJc/dgP3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOfSS-00CKTJ-8q; Mon, 28 Feb 2022 12:48:56 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOfAe-00CDTR-TF
 for linux-phy@lists.infradead.org; Mon, 28 Feb 2022 12:30:34 +0000
Received: by mail-pj1-x1035.google.com with SMTP id gb21so10986121pjb.5
 for <linux-phy@lists.infradead.org>; Mon, 28 Feb 2022 04:30:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F524H+EHCjRDkj4aTyqwy6bl6HAQXd0c5ZEF3tVd+W8=;
 b=J4l4CpOFtsLzHHsE+ZVUXy7AVfFawxAzlpF90pkRnTNV0xCjEx8yA7bxEPtzZFADfK
 qsAU7jdu3Lxt6M/oQ2ps6vtVVR7816vjM/MBhEnvTYoS1qn28bgwiy1nEvqMZsXCHJvv
 e5gtfN6IcJryJI9TzFLhtoFfaSsX8uCKoqjQatLkHA20b5mDiUeUB/5GJBtjNEnkrC0y
 4qce5iigKPgCp1lfkatJX1s9eBkwHhcmsXSoxUOKQp6FQeo5kGyqN345dSHjA+jbHNEP
 D70dujbrXrTzYFg4n66TnrUsIutJ9aBLqbB3LrBS3yRzSRsqroRfGxIqvNdJEuEUiuQ2
 Gymw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F524H+EHCjRDkj4aTyqwy6bl6HAQXd0c5ZEF3tVd+W8=;
 b=OjZZVShRs0c8G7rgK4AOvxZTPmIitTm48bUeRLlS1W9x54nQ5VDHkBZWgo2dCRnn+O
 hLIr7thuA1xIPFsYOMrZSvuVA/epb0p3667PnqPN0+ABNvY+sSWQ8jTv/hszjCV+vu9p
 iWukGnW+8nk8NxdE3Ul4etxjB0Qxed+M1+uKTu0iXmVZ7kvjQkND9dzlK1+64iykdN4E
 qNorXEzRCR1D4WGNVGNqPOdbaqauTrpwBg76dwade+YDqarInz6AY62MtRWULozFgTbt
 DvmmWchvEVxt3Ik77g2Du+AAgr/OSK1JDrXtxq5jBDvx96oh6/6C49Kbne3nQ7WfdKta
 3NIA==
X-Gm-Message-State: AOAM531rxrD7ArUB2FJYT5lG6lqh0fWaHwwCc3aJFu1DPpuiJsl6FIrr
 jZHEtblRyYZxci0yhRi5Ihy2Zg==
X-Google-Smtp-Source: ABdhPJwHPNuDlX09dyPhCHJdYfRFs24vD4evbbRVf2AIlQ27k2Nd9/5N7B4rUGXwXCxlhLAwF1krsQ==
X-Received: by 2002:a17:902:b589:b0:14f:3f88:15e2 with SMTP id
 a9-20020a170902b58900b0014f3f8815e2mr19875896pls.171.1646051431532; 
 Mon, 28 Feb 2022 04:30:31 -0800 (PST)
Received: from localhost.localdomain ([223.179.136.225])
 by smtp.gmail.com with ESMTPSA id
 f7-20020a056a0022c700b004f0e9d686dcsm13790001pfj.137.2022.02.28.04.30.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 04:30:31 -0800 (PST)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org
Cc: bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com, agross@kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 shawn.guo@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org,
 robh+dt@kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v2 0/8] Fix  dtbs_check warning(s) for Qualcomm QMP PHY
Date: Mon, 28 Feb 2022 18:00:11 +0530
Message-Id: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_043032_995434_4843F018 
X-CRM114-Status: UNSURE (   7.37  )
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

Changes since v1:
-----------------
- v1 can be found here: https://www.spinics.net/lists/linux-arm-msm/msg104871.html
- Addressed review comments from Dmitry.
- Addressed the remaining dtbs_check warnings rasied by Rob's bot on v1.

Shawn Guo recently fixed a large number of 'dtbs_check' warnings
on Qualcomm DTS files for qmp phys. However a few warnings are still left
(possibly due to new dts files being added over time).

So, I decided to clean them up.
After this series, '$ make dtbs_check' leads to no warning for QCOM
QMP PHY.

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh@kernel.org>

Bhupesh Sharma (8):
  dt-bindings: phy: qcom,qmp: Mark '#clock-cells' as a 'optional'
    property
  dt-bindings: phy: qcom,qmp: Describe 'vdda-max-microamp' &
    'vdda-pll-max-microamp' properties
  arm64: dts: qcom: msm8996-xiaomi: Drop max-microamp and vddp-ref-clk
    properties from QMP PHY
  arm64: dts: qcom: sc7280: Fix qmp phy node (use phy@ instead of
    lanes@)
  arm64: dts: qcom: sm8450: Fix qmp ufs phy node (use phy@ instead of
    lanes@)
  arm64: dts: qcom: ipq6018: Fix qmp usb3 phy node
  dt-bindings: phy: qcom,qmp: Describe phy@ subnode properly
  dt-bindings: phy: qcom,qmp: Mark 'vdda-pll-supply' & 'vdda-phy-supply'
    as optional

 .../devicetree/bindings/phy/qcom,qmp-phy.yaml | 26 +++++++++++++------
 arch/arm64/boot/dts/qcom/ipq6018.dtsi         |  4 +--
 .../boot/dts/qcom/msm8996-xiaomi-common.dtsi  |  5 ----
 arch/arm64/boot/dts/qcom/sc7280.dtsi          |  2 +-
 arch/arm64/boot/dts/qcom/sm8450.dtsi          |  2 +-
 5 files changed, 22 insertions(+), 17 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
