Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B20DC7EE2F
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 20:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=egVqSAGFYzOTwefPvklcFOTq3/2g0abGQ2/tIuOWTck=; b=w9gTgDNleOAsld
	NhNcuDn/nsH+ZlqZc3F6Fq9YTLGURJ1/EeswwwF3XOMmmkye2nmsjCke9J6/hDRdcTKqa5T16bLn6
	QfEF2Y1/EfqvQhMKuLNYx/J7ZlfLr7FhcQIe6L0/yYfxHc1u6XGdM6KvltcpHAkuCaj/fJcD1FTN1
	97FaOJlZmdW4/2LNOigNnqIgmv0oUyLC/VQ8BosuHrsEWyUmqF83Il4JWASZqrqrry0FfK3XJzgoj
	jdOpqhrGdAxesM0KvIGnX4XihCcrC6HgySyjHZpV/3foOrDoTDEV657TWVROMNb0Vbhe5mHq3Hu56
	c0nfbot6NmgSRq7uFYCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0paU-004b8l-2A;
	Sun, 21 May 2023 20:23:30 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0paO-004b75-29
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 20:23:26 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-4f00c33c3d6so6165425e87.2
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 13:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684700602; x=1687292602;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=71fdz92wN7Olzd0bv+uTbHVf/9vgm8eag4K8T+MZ0CY=;
        b=QKF+RvGVlsP++Z1sbNgrtVHTWDKB3SGcpRNaswmSgA+XaQPg/bZsRKqvwGvZ1n27pY
         VIdVHltUcNQyjm3wi9LP8sOMrNE7mpjy6ougedHpX71FhB1EsCO0lXo9CZ1ylitQvamz
         xwpLW/Ijc4TaE3UEqzu1S5FCCkj0XefHnAfGTIOi3aHET9gzHFC7xb8uNs4ZWClb9TKC
         505ateq/dGxVEVsJtDcY7qabSskFVTvWaMdCtjLtbJpNch4L50itrIrAc0Lk7huXSQev
         FwJR7Kc0lxbZPRmkynWJMMb276tvNyjj5JCK0su880n5WHiVLjYkr3w/T6ehzLPB6cIM
         /AIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684700602; x=1687292602;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=71fdz92wN7Olzd0bv+uTbHVf/9vgm8eag4K8T+MZ0CY=;
        b=CP9bYWv3qPvc6NNpS8vi82I8492jUBUs9rMCDE/ymEMbORikB7QBEbTa8tw4sGD/q2
         QTODs38le30QsGTaqo/UHMmdy0QEfgjFzojMmm/xGOetNH9xx0QK0mXV8PVs3GwMou9C
         FchPvTcZBjRgj6ChOMP4tzDwXP++8nvU/va0Q1sUvA8C3D0iHeP487apouxt/KAOoMwM
         wfNc3kDOXHmuXaN6LIlyKc+UHOdajQL8mGiRyYfnJjAcRSRYMwrBMMJbr2A5vwX6FY9s
         XBoeaqJflLiByVpXAfmJfcM6jhfDJPOJWCxqbW0a0hIPtdqZmdQ56xzeWPT382z3DPxN
         CDMw==
X-Gm-Message-State: AC+VfDwtSAYgqwKGFzc51BrMAFfjBHKfC1ZV9VvoQG0ZJJlTMmKr3sml
	JElhZqmMJJI47vmde8NGXkc0jw==
X-Google-Smtp-Source: ACHHUZ50p1i+TCZcMiBDE2spyb6hphxnMynoiNuA5nQv+NmXD42MsBpOsm33jeyQ7pRNR0RBx01Sag==
X-Received: by 2002:ac2:4249:0:b0:4ec:9368:cb55 with SMTP id m9-20020ac24249000000b004ec9368cb55mr2188270lfl.64.1684700602394;
        Sun, 21 May 2023 13:23:22 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u23-20020a2e91d7000000b002adb566dc10sm835589ljg.129.2023.05.21.13.23.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 13:23:21 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 00/10] phy: qcom-qmp-combo: convert to newer style of bindings
Date: Sun, 21 May 2023 23:23:11 +0300
Message-Id: <20230521202321.19778-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_132324_744642_AFFB5A59 
X-CRM114-Status: UNSURE (   9.14  )
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

Reviewing several patchsets for newer platforms made me understand that
having two styles of QMP PHY bindings causes confusion. Despite binding
documents having notes telling that old bindings should be used for
older platforms, it is too easy to attempt adding new platform with
older QMP PHY binding. Thus let's have just a single documented style of
bindings.

Dependencies: [1]

[1] https://lore.kernel.org/linux-phy/20230521195420.12454-1-dmitry.baryshkov@linaro.org/

Changes since v2:
 - Rebased on top of phy/next and updated [1]

Changes since v1:
 - Split large patchset into smaller parts
 - Reworked sm8150 too (following changes in [1])
 - Unified bindings with the existing ones
   - use shared list of clocks,
   - added sc7180 as a first grade entry
   - dropped useless descriptions
   - removed ref_clk_src clock
   - dropped second example

Dmitry Baryshkov (10):
  dt-bindings: phy: migrate combo QMP PHY bindings to
    qcom,sc8280xp-qmp-usb43dp-phy.yaml
  phy: qcom-qmp-combo: simplify clock handling
  phy: qcom-qmp-combo: populate offsets for all combo PHYs
  phy: qcom-qmp-combo: add qcom,sc7280-qmp-usb3-dp-phy compat entry
  arm64: dts: qcom: sc7180: switch USB+DP QMP PHY to new style of
    bindings
  arm64: dts: qcom: sc7280: link usb3_phy_wrapper_gcc_usb30_pipe_clk
  arm64: dts: qcom: sc7280: switch USB+DP QMP PHY to new style of
    bindings
  arm64: dts: qcom: sdm845: switch USB+DP QMP PHY to new style of
    bindings
  arm64: dts: qcom: sm8150: switch USB+DP QMP PHY to new style of
    bindings
  arm64: dts: qcom: sm8250: switch USB+DP QMP PHY to new style of
    bindings

 .../phy/qcom,sc7180-qmp-usb3-dp-phy.yaml      | 278 ------------------
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |  46 ++-
 arch/arm64/boot/dts/qcom/sc7180.dtsi          |  57 ++--
 arch/arm64/boot/dts/qcom/sc7280.dtsi          |  60 ++--
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |  57 ++--
 arch/arm64/boot/dts/qcom/sm8150.dtsi          |  48 +--
 arch/arm64/boot/dts/qcom/sm8250.dtsi          |  49 +--
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     |  79 +++--
 8 files changed, 165 insertions(+), 509 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
