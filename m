Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47B6FC48285
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jan 2024 07:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D+miOB4RD4u7+Bpvx2bJ9xeQVk7S07TH5zlFFjibIvw=; b=10MgRWJckOs22F
	CCFCdBXJ1XJ6NBPK3wwNC3kBV7/aNnJ6vB3i4xQPmRlNpEy1GwPn2k2nC1EtffVSb6hMw6jMXNpyp
	ZVu5GIIAdiThfcqsW8CGQq4nLIZXhpgAuAc36SBnBAxROEGe5REkSldCT8KF6nzE9Mdt2N3ZVYacB
	+9nVXkvSDLQAWU2rHCCJvqFYEhVVALCanHSycQ9mfwtIOr2UJ15DmUVq93W317SSsiBhhiJxy8cFh
	Y+/M+lKw5o+ourkxylkDzd48BuNb6b+25mRSBmyZwiOFvAWNfPWqDJBlBISK9mIkWhKLnHO+sb/To
	8GKoLuxSrgjm3nXVL0Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4ho-00000001j9U-40hy;
	Wed, 31 Jan 2024 07:08:20 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4hk-00000001j3D-2GMw
	for linux-phy@lists.infradead.org;
	Wed, 31 Jan 2024 07:08:18 +0000
Received: by mail-pg1-x536.google.com with SMTP id 41be03b00d2f7-5cedfc32250so2924718a12.0
        for <linux-phy@lists.infradead.org>; Tue, 30 Jan 2024 23:07:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706684870; x=1707289670; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dOSkO6Y4FYd8fxupP96Kte1aY7D/V2g1zrYc1jxvyPQ=;
        b=GUeP8MFv3emjpRPVS9eYnDvFngQUncy03EYrNl4m3St+5YfqL9wEfk+SNyWjw+PxQ0
         GLYl6CLuUZgehrwdfYgNnzStM+FajMid8A4ruQl/CyEpPoOtOSHduT5lsw0m31C3pFHG
         LRX5OHJ4JHp9eF9/tZRVt1nbGLdugTSBuJZSmnGcoUDBvtzP27drsmMCTxhE8rGyxj8Y
         axxcHUjyIF+JXLyj9seyv9qpEcWJVxxlkEY/P1Be5AfmU6489HHPi4S7JRgQDeNh2c10
         BikD0WZ7vefZlqu1FFYYc5VVrRjo+itlJr9rSn/kcO29Z+82xhNi0tM7D1gfnsQsuIbE
         99Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706684870; x=1707289670;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dOSkO6Y4FYd8fxupP96Kte1aY7D/V2g1zrYc1jxvyPQ=;
        b=fzJ3Fl16BqUYLAQXBpX0ykIqEmLdJ0eL5lEwBldLUYXgAqDHi1a5GTg++yj/YiGkZ1
         ijIxcvkQlShP9ul8ig30mVVEenz6N2rvEGm13Wd8x52apD7d5lHLVBFAomZFz0/hl0BK
         FsnbSIM5V/u3bKdcXd1L4XMl5IuCZOf3lCxMsfJm5jctp9+pHwGAHbgXBhcJ0dlLiQwq
         jXKd6m3jqmBSzReU3D8LQh+IYcaTL9yUEbJO6G+QkT0Iy8mxt9C/ggMu4Xee8kxld/2k
         C/zL3f4T5LrVAEIaDLPerlkrZUZoN95pl27NcpfwP7yEGkJiqQhMmedKoRuzSxLXvHUX
         wp4Q==
X-Gm-Message-State: AOJu0YxvneAZrM8bN2il8ZsYgqZnAQnTpQX1WzoBLEjj+qwl+EmHV034
	w95vH6liI988lBwTuqIq7RdqRnjd9faCKbPj7j4idARR8kSYCyh9dV7N9eJOtw==
X-Google-Smtp-Source: AGHT+IGq4Dd3fKbHGpJ491lSOAvBvsjx9O1WWxRttsPouRtdA4cN3NaV7/uiBsxKoB69XgDHDdyI+w==
X-Received: by 2002:a05:6a20:9e91:b0:19c:a7c0:acd8 with SMTP id mq17-20020a056a209e9100b0019ca7c0acd8mr719947pzb.0.1706684870039;
        Tue, 30 Jan 2024 23:07:50 -0800 (PST)
Received: from [127.0.1.1] ([103.28.246.26])
        by smtp.gmail.com with ESMTPSA id lp17-20020a056a003d5100b006ddd182bf1csm9087956pfb.46.2024.01.30.23.07.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 23:07:49 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 00/17] Fix Qcom UFS PHY clocks
Date: Wed, 31 Jan 2024 12:37:23 +0530
Message-Id: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKvxuWUC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHUUlJIzE
 vPSU3UzU4B8JSMDIxMDQ2ND3dK0Yt2CjErd5Jz85Gxdc0tjyyRLI1OLJONkJaCegqLUtMwKsHn
 RsbW1AADUe1pfAAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, quic_cang@quicinc.com, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3384;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=8oILixSlZ5urTs1vGCrQlsyLD+Svdi6zXRxdXJ11eVo=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlufG2op3Brs8QxQHR4Lma+anPdMoGprBMDMvoU
 04otxHtgv+JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbnxtgAKCRBVnxHm/pHO
 9WobB/9NZYXT3tglVcat/alW1W2NsBvVeeQMIiTQSkS56WqIl4UHrc0WDixCWSWuq90DVYkkzQj
 DQR93pb3ofsHf4bPUZZv5CGNDYGZCKpMh/5OM+tGYjOElbgJKujYEIJjw50vJRw+7ZDXPKEV4be
 sFNBIU2jj44uXi7+XSbMAvTUX9Ho3lZ2OT4jV4lQMe0cHuUiZbidlw/QOQdhHrtO9tCuZtUlCov
 ZrxHspD4SpPtxp9deLDoG0fBe/cl8tIAIu2EYe0rxn6Mkg4HrbpK/dFVIHH3SB8XnuOGqrZuAyg
 MjZsL5Jw2TXxRS+wnDHx6CxtVTT7I95xGozCN6KUdmV+7jlP
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_230816_606503_BA635F8E 
X-CRM114-Status: GOOD (  12.27  )
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

Hi,

This series fixes the clocks supplied to QMP PHY IPs in the Qcom SoCs. All
of the Qcom SoCs except MSM8996 require 3 clocks for QMP UFS:

* ref - 19.2MHz reference clock from RPM/RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC or TCSR (TCSR since SM8550)

MSM8996 only requires 'ref' and 'qref' clocks.

Hence, this series fixes the binding, DT and GCC driver to reflect the
actual clock topology.

Note that the clock topology is not based on any downstream dts sources (even
they are not accurate). But rather based on information from Qcom internal
documentation and brain dump from Can Guo.

Testing
=======

Tested on Qualcomm RB5 development board based on SM8250 SoC. I don't
expect this series to break other SoCs too.

- Mani

Changes in v3:

* Added a patch for SM8650
* Collected review tags
* Rebased on top of next/20231123

Changes in v2:

* Reworded the commit message of patch 1 to justify ABI breakage
* Collected review tags

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
Manivannan Sadhasivam (17):
      dt-bindings: phy: qmp-ufs: Fix PHY clocks
      phy: qcom-qmp-ufs: Switch to devm_clk_bulk_get_all() API
      dt-bindings: clock: qcom: Add missing UFS QREF clocks
      clk: qcom: gcc-sc8180x: Add missing UFS QREF clocks
      arm64: dts: qcom: msm8996: Fix UFS PHY clocks
      arm64: dts: qcom: msm8998: Fix UFS PHY clocks
      arm64: dts: qcom: sdm845: Fix UFS PHY clocks
      arm64: dts: qcom: sm6115: Fix UFS PHY clocks
      arm64: dts: qcom: sm6125: Fix UFS PHY clocks
      arm64: dts: qcom: sm6350: Fix UFS PHY clocks
      arm64: dts: qcom: sm8150: Fix UFS PHY clocks
      arm64: dts: qcom: sm8250: Fix UFS PHY clocks
      arm64: dts: qcom: sc8180x: Fix UFS PHY clocks
      arm64: dts: qcom: sc8280xp: Fix UFS PHY clocks
      arm64: dts: qcom: sm8350: Fix UFS PHY clocks
      arm64: dts: qcom: sm8550: Fix UFS PHY clocks
      arm64: dts: qcom: sm8650: Fix UFS PHY clocks

 .../bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 48 ++++++++---------
 arch/arm64/boot/dts/qcom/msm8996.dtsi              |  4 +-
 arch/arm64/boot/dts/qcom/msm8998.dtsi              | 12 ++---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi              |  6 ++-
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi             | 18 ++++---
 arch/arm64/boot/dts/qcom/sdm845.dtsi               |  8 +--
 arch/arm64/boot/dts/qcom/sm6115.dtsi               |  8 ++-
 arch/arm64/boot/dts/qcom/sm6125.dtsi               |  8 +--
 arch/arm64/boot/dts/qcom/sm6350.dtsi               |  8 +--
 arch/arm64/boot/dts/qcom/sm8150.dtsi               |  8 +--
 arch/arm64/boot/dts/qcom/sm8250.dtsi               |  8 +--
 arch/arm64/boot/dts/qcom/sm8350.dtsi               |  8 +--
 arch/arm64/boot/dts/qcom/sm8550.dtsi               |  9 ++--
 arch/arm64/boot/dts/qcom/sm8650.dtsi               |  8 +--
 drivers/clk/qcom/gcc-sc8180x.c                     | 28 ++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 63 +++-------------------
 include/dt-bindings/clock/qcom,gcc-sc8180x.h       |  2 +
 17 files changed, 129 insertions(+), 125 deletions(-)
---
base-commit: 06f658aadff0e483ee4f807b0b46c9e5cba62bfa
change-id: 20240131-ufs-phy-clock-7939b9258b3c

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
