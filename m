Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52E69C001DC
	for <linux-phy@archiver.kernel.org>; Mon, 31 Jul 2023 10:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UjHHYl0nEcziZHJTxGFhA4KG7JrvKAK3MR2v3B9GqNM=; b=EFdyHpJmlBYh49
	JKPrU6Ae2+Wig/8bZ1wv+H7PHPiuTaBiNrppPR+a7ZRtWt1f5oJk6bF8kPKXNi0EPXS4FvB0ugAWM
	fPcSCDCDpoSLucyl6F+DuZgB61//lRN36yYFP3fRO86gaUeLMPaRjxzs+vi3Cik8sc6MK2FKISe3Q
	T/qsDYE3PJ1I4mrnZNA7v2mr4NV+Dj0bcfN/5zAvFxxr8ndV4xWc/1Y2cV5jXhiG1XElOdm31PShI
	BgDvdwaut/cce6OuRhSq/DzQY+Y01oOL2KiuE3czu9gi3Y81StzpIOFjmc5eEiWIb/ckHcwWyu0jJ
	O0ojZDWFMVY+vKogY9GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQbH-00FCUx-04;
	Mon, 31 Jul 2023 10:58:07 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQbE-00FCQq-38
	for linux-phy@lists.infradead.org;
	Mon, 31 Jul 2023 10:58:06 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4fe0fe622c3so6610974e87.2
        for <linux-phy@lists.infradead.org>; Mon, 31 Jul 2023 03:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690801081; x=1691405881;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MkWLzVZvkVwc4kbg9O6IOFav3DjG7Q36badDvS2EiRA=;
        b=tHUCt0i9d3oi9Rb38U3RCWJIYllh/bEHGj+2OI9WiPfYxe/HNoToWx6m9pNE8JFtuq
         6vqiHe0uE9dYzHp8S5SmF81bZ5FLPnp/NZkM+h8rywKJl1+BHFAA48395+2+hUH1fqX+
         kD2mWbs0ZU6R1A1EX2a1Gf2XPgLL8hXUE7y2/Xq/N2PY7M82+yIqcSJiTUerrqhG4ont
         o69ZtevxJApR0jBEUOELzoCZMeLC/c8n53+eNvWcfk3us4SliaF6HqN3sFkSCrWvGigJ
         rqdXMOMgJAXSVW+F2wu9twAXRM07MkvHvvJT170ChPZ3cIV+HJfISpe395Z/RzffXeYe
         HSPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801081; x=1691405881;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MkWLzVZvkVwc4kbg9O6IOFav3DjG7Q36badDvS2EiRA=;
        b=PiCbXhHbqkqtg362C9CO6NIthA9SjK6gSZiF3jTpBfBmkucOeqVoCrRyfwHXvT+R+7
         6xxwHbWiWwmQEW2Z33JYc3ZkgUsA3e68r11TG2l5ON62YMDC16NYfguxR0oo46GgZVMu
         RP8+M1QFaw2bvGBdZv8ASs/ljeKXHwQW2PY0F3DJxWREphQ2+HNcR/NnSsmWbUPDjNy2
         Y5YSaURUgOI7xbH+YanfP5ie4h6mw6HL8DnCeT6mNwNQN1OJSVczsJeJKgXLWNkfPPhn
         m2+GyyjiDYRuAYAzrNxv71HZ9nJWwyADlkrKTlvuRkVKngmEZDQZ+igwakorvH8R2U2h
         IEtQ==
X-Gm-Message-State: ABy/qLbbcN+G69Jl/MYGdjOVSO1Dyj9GoAx/YkLbJOpBjzrQCipSI0eA
	KnrKDH8xh9iq738L9vs1977wzw==
X-Google-Smtp-Source: APBJJlHixnbIxwRPCZ8VCoGR+kynEHwVm2GhExWQRQpj7EBGGmHNZro5l3hl1viEJEghiMjSP90U+w==
X-Received: by 2002:a05:6512:45b:b0:4fb:94fd:6465 with SMTP id y27-20020a056512045b00b004fb94fd6465mr5167030lfk.15.1690801080801;
        Mon, 31 Jul 2023 03:58:00 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c19-20020ac24153000000b004fb9fe34c27sm2025497lfi.92.2023.07.31.03.58.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:58:00 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 00/13] phy: qcom-qmp-pcie: convert to newer style of bindings
Date: Mon, 31 Jul 2023 13:57:46 +0300
Message-Id: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_035805_082288_1C066DD7 
X-CRM114-Status: UNSURE (   9.80  )
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

Reviewing several patchsets for newer platforms made it clear that
having two styles of QMP PHY bindings causes confusion. Despite binding
documents having notes telling that old bindings should be used for
older platforms, it is too easy to attempt adding new platform with
older QMP PHY binding. Thus let's have just a single documented style of
bindings.

Proposed merge strategy: immutable branch with binding and PHY patches,
which can also be merged into Bjorn's dts-for-6.6

Changes since v1:
 - Split large patchset into smaller parts
 - Rebased on phy/next

Dmitry Baryshkov (13):
  dt-bindings: phy: migrate QMP PCIe PHY bindings to
    qcom,sc8280xp-qmp-pcie-phy.yaml
  phy: qcom-qmp-pcie: simplify clock handling
  phy: qcom-qmp-pcie: populate offsets configuration
  arm64: dts: qcom: ipq6018: switch PCIe QMP PHY to new style of
    bindings
  arm64: dts: qcom: ipq8074: switch PCIe QMP PHY to new style of
    bindings
  arm64: dts: qcom: msm8998: switch PCIe QMP PHY to new style of
    bindings
  arm64: dts: qcom: sc7280: switch PCIe QMP PHY to new style of bindings
  arm64: dts: qcom: sc8180x: switch PCIe QMP PHY to new style of
    bindings
  arm64: dts: qcom: sdm845: switch PCIe QMP PHY to new style of bindings
  arm64: dts: qcom: sm8150: switch PCIe QMP PHY to new style of bindings
  arm64: dts: qcom: sm8250: switch PCIe QMP PHY to new style of bindings
  arm64: dts: qcom: sm8450: switch PCIe QMP PHY to new style of bindings
  ARM: dts: qcom-sdx55: switch PCIe QMP PHY to new style of bindings

 .../phy/qcom,ipq8074-qmp-pcie-phy.yaml        | 278 +++---------------
 .../phy/qcom,msm8998-qmp-pcie-phy.yaml        |  97 ++++++
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  34 ++-
 arch/arm/boot/dts/qcom/qcom-sdx55.dtsi        |  31 +-
 arch/arm64/boot/dts/qcom/ipq6018.dtsi         |  32 +-
 arch/arm64/boot/dts/qcom/ipq8074.dtsi         |  63 ++--
 arch/arm64/boot/dts/qcom/msm8998.dtsi         |  30 +-
 arch/arm64/boot/dts/qcom/sc7280.dtsi          |  36 +--
 arch/arm64/boot/dts/qcom/sc8180x.dtsi         | 140 ++++-----
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |  71 ++---
 arch/arm64/boot/dts/qcom/sm8150.dtsi          |  70 ++---
 arch/arm64/boot/dts/qcom/sm8250.dtsi          | 112 +++----
 arch/arm64/boot/dts/qcom/sm8450.dtsi          |  82 +++---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 162 +++++-----
 14 files changed, 520 insertions(+), 718 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-pcie-phy.yaml

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
