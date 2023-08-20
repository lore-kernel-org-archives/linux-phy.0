Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42145EE49A5
	for <linux-phy@archiver.kernel.org>; Sun, 20 Aug 2023 15:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uSNoVhwYCNsyTJK563/2plWL0THhgs4hBp78NkSqo+w=; b=0hA2As2HnDvanD
	obth++FA2enf4+b8dvfrf2aPDdlf3wjGcAwGU9AfZVzch1GU7QPgWvfXZY8kLrAMil1wbxHEGmu7S
	8mSB1rMf7YXZ8C1FVVW6mU9qlIjoD42+eFAPslj+l35KZrA81RJ2MSpbW8bQRxKsJSYBuv4XyDK9P
	NdnGGqIh0SYJZGshlqswiivLtdLN7tuICVLrj66PYY0GstBpOx/VlDF9SXFlrVU1P/YrU/kEpnlAG
	afPLnxDF1bVMPgQA90TuSClBZ5rBpJZk9LGNXb49jSDPhHluFCpDJ9oTeRM9QKJpkAwTKnQnDuK0o
	1YgXsa/c98ZfixQ8B6Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXkNW-00C6im-1L;
	Sun, 20 Aug 2023 15:30:10 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIH-00C198-02
	for linux-phy@lists.infradead.org;
	Sun, 20 Aug 2023 14:20:42 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2bba6fc4339so39510511fa.2
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 07:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692541238; x=1693146038;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9ZErwlA4SFN8xfjVsMunxZG98CnjarXI1zZZ0seeqKw=;
        b=OP1L0IY4u4/WD+sJmJ9BJ2SexgWSc5MU+6CEIbY2hCohje3zO5DwsCoMUi4rB00D8b
         bMRLP2FvPJpbPFaOo8Eo/dYfs6Khz3zp97MPbRf9OLzVIUMeaxQYnrd/nzVxjfJD132g
         2NvjP1dZIuLrTLpsLJtm1f965b60mkuOLokov5EOScPRNL6XLDv1jQPMg2CvYxd7JeFc
         M/yqJdIeJ13Vu+v3/u0KttYPUHnnY5VOM5ciawSJRdcKh8mGesM/ef5EKIfGMgyHAYkt
         TsvgQpjeDGvrefIBXWNQYd/giK3QPgvd9G1RBuyo82v/kx6S0BPe8HXGlzwruQ0TPNQy
         jvMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692541238; x=1693146038;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9ZErwlA4SFN8xfjVsMunxZG98CnjarXI1zZZ0seeqKw=;
        b=BB06cwHggEDLpLKWVq02osi25xv2gaaT70KX2ACJ0dcIiJFjnG4dKgjdbZWJzC8X/H
         ynOVsqh+dEqmSsTRsNf/auEk6xrSMxtwFl/JgWkyufZ2PIX/I1PoIXEyEoxpe9HyNLa5
         QiLjn9XsyKgaOOm+cufRcaNpVZttEGfOJvxELK0N5JC7+AITeh2bEP8cnUv4LtBGm64T
         m4jorLRQC7l3rx291KkWNzHhLDXsaPF3w5s4wfH21ixh/PbJZj1hMQiBlUkHNCVbfJ4j
         EKT1l3Ixec0lutw2WkOnEqqD670vCmPAoK1DVYky/h8Esss0nXoFi5Lvnwi8RL7TZiKn
         lMhg==
X-Gm-Message-State: AOJu0YzpSqAo/IGkgYgvy1Ss6ilv9TfWy0z8NaM9ZOj4FleoLJHvnrqz
	mCN8oEyCyjN8O+ToBYhKasg/cg==
X-Google-Smtp-Source: AGHT+IElG4nucCOvM5CCM85FbztFMgI5vXiqPZG+KdMHS7Y0CEAAzQvGn8ISivtd3uAGP7DWhCP9Wg==
X-Received: by 2002:a2e:9dcd:0:b0:2b6:e105:6174 with SMTP id x13-20020a2e9dcd000000b002b6e1056174mr2971711ljj.47.1692541237207;
        Sun, 20 Aug 2023 07:20:37 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n9-20020a2e7209000000b002b9e501a6acsm1706222ljc.3.2023.08.20.07.20.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 07:20:36 -0700 (PDT)
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
Subject: [PATCH v3 00/18] phy: qcom-qmp-pcie: convert to newer style of bindings
Date: Sun, 20 Aug 2023 17:20:17 +0300
Message-Id: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_072041_055203_E2E94785 
X-CRM114-Status: UNSURE (   8.82  )
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
which can also be merged into Bjorn's dts-for-6.7

Changes since v2:
 - Split away patches for sm8150 PHYs. Add missing driver bits to enable
   PCIe PHY support on sm8150 (were submitted by Bhupesh in May 2022,
   only DT bits were merged)
 - Fixed v5.20 offsets merged earlier. Fixed merge conflict due to their
   addition
 - Fixed clocks / clock-names alignment in ipq8074.dtsi / sc7280.dtsi
   (Konrad)
 - Fixed PHY DT names and resource address for sc8180x (Konrad)

Changes since v1:
 - Split large patchset into smaller parts
 - Rebased on phy/next

Dmitry Baryshkov (18):
  dt-bindings: phy: migrate QMP PCIe PHY bindings to
    qcom,sc8280xp-qmp-pcie-phy.yaml
  dt-bindings: phy: qcom,qmp-pcie: describe SM8150 PCIe PHYs
  phy: qcom-qmp-pcie: drop ln_shrd from v5_20 config
  phy: qcom-qmp-pcie: keep offset tables sorted
  phy: qcom-qmp-pcie: simplify clock handling
  phy: qcom-qmp-pcie: populate offsets configuration
  phy: qcom-qmp-pcie: support SM8150 PCIe QMP PHYs
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
  arm64: dts: qcom: sm8150: add ref clock to PCIe PHYs
  arm64: dts: qcom: sm8150: switch PCIe QMP PHY to new style of bindings
  arm64: dts: qcom: sm8250: switch PCIe QMP PHY to new style of bindings
  arm64: dts: qcom: sm8450: switch PCIe QMP PHY to new style of bindings
  ARM: dts: qcom-sdx55: switch PCIe QMP PHY to new style of bindings

 .../phy/qcom,ipq8074-qmp-pcie-phy.yaml        | 278 +++---------------
 .../phy/qcom,msm8998-qmp-pcie-phy.yaml        |  97 ++++++
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  36 ++-
 arch/arm/boot/dts/qcom/qcom-sdx55.dtsi        |  31 +-
 arch/arm64/boot/dts/qcom/ipq6018.dtsi         |  32 +-
 arch/arm64/boot/dts/qcom/ipq8074.dtsi         |  67 ++---
 arch/arm64/boot/dts/qcom/msm8998.dtsi         |  30 +-
 arch/arm64/boot/dts/qcom/sc7280.dtsi          |  40 +--
 arch/arm64/boot/dts/qcom/sc8180x.dtsi         | 148 ++++------
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |  71 ++---
 arch/arm64/boot/dts/qcom/sm8150.dtsi          |  70 ++---
 arch/arm64/boot/dts/qcom/sm8250.dtsi          | 112 +++----
 arch/arm64/boot/dts/qcom/sm8450.dtsi          |  82 +++---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 177 ++++++-----
 14 files changed, 537 insertions(+), 734 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-pcie-phy.yaml

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
