Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22A7CC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 09:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TISN44s0sfAV6IEWLsdetxDijAHdJlZEFl36Te6Zvqc=; b=hEPMlDndUDB0ZD
	xcLRgdthsD4S97qVSfgK+VJC6wvZL3t5gnxEaD4mh+xOwL9WjiwJdfP62DNwu539ZHiLMCpAzQdIK
	5W8DYuZ+86Xcebpq9CKHcBOha/GKbWOAcWn4YXasgQ06bqYmodSfaFxTUQocI3C4r1vqIQTROV8dA
	1BfKyyB0lGnsLgwd4DNLKQM9BfSAVIsX3TvFa4W9vM3C/bqnOOodfVEBipM6WE9wRL4+2cHch48db
	YYxsiBNHJiYyGswPzi2PZw/Y8IglF95AX7x6a28ent9I2brN2+/5vf1z0o+5bU9pVDBuFo2fF6649
	rnDeYvu4CcXGBsKgklSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhkd-00HJWq-2l;
	Thu, 14 Dec 2023 09:11:27 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhkY-00HJVn-05
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 09:11:25 +0000
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-77f524597c3so363325985a.3
        for <linux-phy@lists.infradead.org>; Thu, 14 Dec 2023 01:11:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545078; x=1703149878; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fAhAJU5yP9YNumHSLe8ZpA4RAtCq2Rb2d15S/ucYWeo=;
        b=laYXto8ELqJoQ2XMHPv4PdtrANB56ZjYbHaJovt7jPFxNPVZMcAvDXDQoQ8uROhF8c
         QfZhO4JwA4DUePQ9VFB3Ie9zzJXuupp/1CvF1pEU4fjb7Aywu7WX7cF0z4VIm38aCFlF
         SrFNTQcAoxKGfQDXZgbJuWpwn7pnE0ak42ArU911WRn+MitTSkBG49+cmZf4ftPI6HVL
         IVDwmiNSEJ7ZE3lWx6WLCORdl5uHmb/ofBFG4yf9F89Mh3LVgqirkw3fsfIjdBRzmEd9
         keiYnfwH7Jsr6Na00Roz/N9LJPN1rnly1iL/B8C87RovUOw9eMGn2HwEgk5DcHyOF3DR
         7Y2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545078; x=1703149878;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fAhAJU5yP9YNumHSLe8ZpA4RAtCq2Rb2d15S/ucYWeo=;
        b=fdhyYx5tmX22Bg4OSTWzsCenb/pdeXjcpIHmSDYHhoiwaNOkGJvaV56V6jCpE6GMd/
         ExVCSp84+uKROZVNNdCQuZVhXjMsxoujQktW2dDxfjG4sSzTPzGLTJ6ofyGPXOZRh0nK
         zZM5fOGuU/2c3Yu+YGWP7yFEN9scHVP0BBX+WZtUZbcP4+qjdfU70W+snnhsJ21Rllkv
         AnFgKcXR3vLznL8fIdobwu9ULK56utPs20ZXP/8u3npJruA50qX0pRvLWRHf4NbberH+
         p0yoQ3iGutxJHGCKWoKRu65rE96nulEGA1I94CJBiCW5SfgzIKzql8NKIUT7mvb4N2Jm
         SyJQ==
X-Gm-Message-State: AOJu0Yyc3wctRehd5gYtiB4CP+9o1KbUka7+j4BHEqpYstTe7LavaQ8x
	kJSoN7HCv+fe1tmEdsQ1zEFm
X-Google-Smtp-Source: AGHT+IG/Re2qE2ey+m/qkbqpMLsYm5+OUKhCYWWHNlVIfYfzMWRf+NwwVM2BQnGRuNjT6j5kJqDtSQ==
X-Received: by 2002:ae9:f810:0:b0:77f:55b6:7d00 with SMTP id x16-20020ae9f810000000b0077f55b67d00mr10371015qkh.46.1702545077885;
        Thu, 14 Dec 2023 01:11:17 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.11.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:11:17 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 00/16] Fix Qcom UFS PHY clocks
Date: Thu, 14 Dec 2023 14:40:45 +0530
Message-Id: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_011122_065067_20222BFC 
X-CRM114-Status: UNSURE (   8.60  )
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

Hi,

This series fixes the clocks supplied to QMP PHY IPs in the Qcom SoCs. All
of the Qcom SoCs except MSM8996 require 3 clocks for QMP UFS:

* ref - 19.2MHz reference clock from RPM/RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC or TCSR (TCSR since SM8550)

MSM8996 only requires 'ref' and 'qref' clocks.

Hence, this series fixes the binding, DT and GCC driver to reflect the
actual clock topology.

Testing
=======

Tested on Qualcomm RB5 development board based on SM8250 SoC. I don't
expect this series to break other SoCs too.

- Mani

Manivannan Sadhasivam (16):
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

 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        | 47 +++++++-------
 arch/arm64/boot/dts/qcom/msm8996.dtsi         |  4 +-
 arch/arm64/boot/dts/qcom/msm8998.dtsi         | 12 ++--
 arch/arm64/boot/dts/qcom/sc8180x.dtsi         |  6 +-
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi        | 18 ++++--
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |  8 ++-
 arch/arm64/boot/dts/qcom/sm6115.dtsi          |  8 ++-
 arch/arm64/boot/dts/qcom/sm6125.dtsi          |  8 ++-
 arch/arm64/boot/dts/qcom/sm6350.dtsi          |  8 ++-
 arch/arm64/boot/dts/qcom/sm8150.dtsi          |  8 ++-
 arch/arm64/boot/dts/qcom/sm8250.dtsi          |  8 ++-
 arch/arm64/boot/dts/qcom/sm8350.dtsi          |  8 ++-
 arch/arm64/boot/dts/qcom/sm8550.dtsi          |  9 ++-
 drivers/clk/qcom/gcc-sc8180x.c                | 28 +++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 61 +++----------------
 include/dt-bindings/clock/qcom,gcc-sc8180x.h  |  2 +
 16 files changed, 124 insertions(+), 119 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
