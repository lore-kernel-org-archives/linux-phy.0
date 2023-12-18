Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC78EC35274
	for <linux-phy@archiver.kernel.org>; Mon, 18 Dec 2023 12:07:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z0KJD2pA2lbUdIBHhjr4qlyrQ5dK2rnpfxFyezwrOT0=; b=SlX9FlJzO9ym4r
	btzIjPvk/Gooxsz8aXP0EajH+yz0rNx3MTpDfpSat+HVosY9LBphCN8ZeG/UVj+3x3Br3C76Jkoz2
	eNbr5To9iSds245Dfaqc2frGsApzi/0qucSQEfMeJfsklvhm9pUIZJC4tSWub/WKP9Fk67ABzJYdb
	+PMBf9s06i/jEVtLTQOvETA55QTnmBZB6gAS3rIXaxAN6rBYL/ABx+NpDsVngT1JuBvv7pP+KTLBb
	VGKY7eWJ8xIYBkWEP3DKUOTau2OhkZ9EvYxxyGphLyOIDRikvwEYcabPDmHfsCG/AcMR/FgtNjgJZ
	OcwLcmD/OdgEjHXObnIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCPE-00AYF3-1O;
	Mon, 18 Dec 2023 12:07:32 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCP9-00AYDd-34
	for linux-phy@lists.infradead.org;
	Mon, 18 Dec 2023 12:07:30 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1d098b87eeeso24944565ad.0
        for <linux-phy@lists.infradead.org>; Mon, 18 Dec 2023 04:07:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702901246; x=1703506046; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YIT2xVBZqZYxPQc446/fiLF5Jt+cT22dHCDUQGgryDo=;
        b=TMdnl/txdXnH9M5iZyWzOXA10OV2oA8QuCQ+Lwvn2bGpiNVXjzRpJWcbZ1ec2v77Yi
         OyoQ4ILFyuP6jUGcH6GeMqVLW3SQtSoE4eB5M4IffvWB/kG+nljifaAChVqaJuJaYQb3
         wggvQnoQVNZZVXadJUijHprDiVxXaZRmMkGYkzf0Mgpzb5/YkcUEmRwd5hmQgPgqz0aA
         FDqZQpAgWMTxYIOt7tvMG9PUTgGnNIi2J3E+dam8UpZTc2fXJJIJNsM/WoS1MPHb/08j
         2mx6C/JWMhoikpLGx97aDYxf+0MVg3IX5wy3TItAdXkiaZXOacaOmJI2rB/psiMaWOWH
         nvxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702901246; x=1703506046;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YIT2xVBZqZYxPQc446/fiLF5Jt+cT22dHCDUQGgryDo=;
        b=V6QySnY6qVYAlXdy1t/6EMigTWxa5/4xdN6ebn5r93FqQv52rIp23Rjwk8slh2ASxB
         bsEq9nXJXvM0HufKmNFz4LD7At3hFCN7IASyCj3AO72noU5DZiEDXlGmtkyg+9JOe8WW
         GaMWP5XqhWaot1epBPjdhm+xWu24QQLXkKTy2yxDWQfm775DNaNwdUFlR/oHNwEtfQcg
         tOixCwbTi5UxRMfrWWnzHGkXsrFw1nA9jCfHjzz5sUDK3So4TSipT/wmHThfaui8NRBU
         9w7+XdEolQuWZ8RMLmICJ45MV8gFwv65eA+EoG+x4XUX/Jq/PExbDlmX8lTDsZhjQqgt
         pNcw==
X-Gm-Message-State: AOJu0YxU2Cn8WeJ8QZRcYVDxQ7wUG7/IQGR0fzVbJlkoWT0wzSX0g3L7
	n3gUIaG6cFPDWPC5Z8nPc7+5
X-Google-Smtp-Source: AGHT+IF62LWkz3lwkpu0WCkUeFg/+ogOnQjhslOLrme1tMp/qFPlFNc7VzU99h5VQR80pJvwZd0X6Q==
X-Received: by 2002:a17:902:ecc1:b0:1d0:60cc:7ebb with SMTP id a1-20020a170902ecc100b001d060cc7ebbmr19506524plh.25.1702901245929;
        Mon, 18 Dec 2023 04:07:25 -0800 (PST)
Received: from localhost.localdomain ([117.207.27.21])
        by smtp.gmail.com with ESMTPSA id j18-20020a170902c3d200b001d368c778dasm1285709plj.235.2023.12.18.04.07.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 04:07:25 -0800 (PST)
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
	quic_cang@quicinc.com,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 00/16] Fix Qcom UFS PHY clocks
Date: Mon, 18 Dec 2023 17:36:56 +0530
Message-Id: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_040728_026812_3AF3733D 
X-CRM114-Status: UNSURE (   9.20  )
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

Note that the clock topology is not based on any downstream dts sources (even
they are not accurate). But rather based on information from Qcom internal
documentation and brain dump from Can Guo.

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
