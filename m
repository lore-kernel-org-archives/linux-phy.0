Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59141C6FD1C
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 02:25:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XWZgyRUt1mj2Q2fDM15nNLuoigfpE5UcFwjwsV+jXVk=; b=ihETvVCN5Y/1Kl
	SLkCt+t9RXB/WX+Vhv7Btpn+rRfYB6v2m78ow9gtFF1Tk84RAiJIR/gqm8IyMe8sJsskW8319Bm9b
	nDDa/1qdZd81ddcIt1jF+ByXf9w9jfz9LTki3ByxxgbI5sH8M1SydEX+PNd6MzEZb4EU3KSPoSP65
	2OoAmUT6AzAiLv6Pwa7uVreJ74J6GP+amo/OKpgqlsDHrYPy/XG/sFwexsLSwf8SDaS0sLnvqT2wn
	m4tRAMP2RP6xpvlasb65N8EmyEYX0vqcsQ/rnXRqOg4WC871sglYlTuaWiFhD77ASCtlurZE1KM29
	EbrnW/UGQ2CuQtq4Fqqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7I-003O7G-30;
	Fri, 24 Mar 2023 02:25:20 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7G-003O6E-07
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:19 +0000
Received: by mail-lf1-x132.google.com with SMTP id s8so395061lfr.8
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624715;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=g4EHu4g4QU7EBCUNP4/kfBGYPPyOMibiZN9FLA8lfOI=;
        b=hGenPXFRiPc/ybQCd7gYjYLvnCZDyMCvZ9kr04It7E7+unCq8UjOkk89RctiP770Xe
         hyT1utLr2llhINSmBBxUs89TNF+Gb4pCS/xeBGsbpxlmFaOCl4zK7eT91qXJ6p2zVNa0
         kSV/kSh1xP8rAHbL1ysIyAJiFHXwjNIFtckCVWkwktso7yOIQxKMQaShMxJkKzoK72c+
         MrzK14AgJWFDrk1KpTPBltEMRxrrh+dKB8RMADaOv9iWWHahDoc+xdy5iVQBp/wlyaEf
         crmvutqbwnOZ2li0E5GL8Zk7XOYPK2UejpN1KzaMsu1DpbvVQpL3THg9O/hUIO83QYuS
         XHGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624715;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g4EHu4g4QU7EBCUNP4/kfBGYPPyOMibiZN9FLA8lfOI=;
        b=XFVTwvWcnitemB7tcJJlHQhvNZTv0f+awsm6/IBwvrAy7VEkxbWDgDn+gYm82VZPVM
         6nFw3awZKt9zBoNAE9FROJoZjmHs637c0lrNv3GSxDmcrhTS2gqxne2/LBBst6p3Dztb
         ZCcoj49Iw7QutBqeEZbZySU0T9259yEXsxI8qfh1I5hTxrgLMGut7kSMF5MzFIKpainY
         orflBamjHSzpDEpPRnP88y6qYcaAdFpfZLP5McIX6WziCtYiRkLLlIDy3cY4HoruskRy
         C1lLAPvrj4jnOfeCDNUirWtmodGPJfElbsjPlv0C78/8NkrcqoSK1zlPFLixl6Urqz5K
         2gpg==
X-Gm-Message-State: AAQBX9d109/GzGaTV/AvAiyyjdqpC8FAg1SmgP4kge8AsYe+8HEZKgwG
	QTXYrTd8oAXgk4zlOe1FHOdwRQ==
X-Google-Smtp-Source: AKy350bEF0dydDWJPmj9mRPOm9Tt20Yx9HiCR1uB4Hn/l0cr1hw+oI88pMXt0Tn0G5xX+MSa7NO/Lg==
X-Received: by 2002:ac2:488b:0:b0:4e9:bdd0:b667 with SMTP id x11-20020ac2488b000000b004e9bdd0b667mr209821lfc.0.1679624715415;
        Thu, 23 Mar 2023 19:25:15 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:14 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 00/41] phy: qcom-qmp: convert to newer style of bindings
Date: Fri, 24 Mar 2023 05:24:33 +0300
Message-Id: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192518_076438_51958BFF 
X-CRM114-Status: UNSURE (   9.39  )
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

To facilitate this, migrate all the bindings, extend QMP PHY drivers
with offset tables and update DTS files.

Dependencies: [1], [2], [3]:

[1] https://lore.kernel.org/linux-arm-msm/20230323144726.1614344-1-dmitry.baryshkov@linaro.org
[2] https://lore.kernel.org/linux-arm-msm/20230324021651.1799969-1-dmitry.baryshkov@linaro.org
[3] https://lore.kernel.org/linux-arm-msm/20230324001752.1768505-1-dmitry.baryshkov@linaro.org


Dmitry Baryshkov (41):
  dt-bindings: phy: migrate QMP USB PHY bindings to
    qcom,sc8280xp-qmp-usb3-uni-phy.yaml
  dt-bindings: phy: migrate combo QMP PHY bindings to
    qcom,sc8280xp-qmp-usb43dp-phy.yaml
  dt-bindings: phy: migrate QMP UFS PHY bindings to
    qcom,sc8280xp-qmp-ufs-phy.yaml
  dt-bindings: phy: migrate QMP PCIe PHY bindings to
    qcom,sc8280xp-qmp-pcie-phy.yaml
  phy: qcom-qmp-usb: make QPHY_PCS_MISC_CLAMP_ENABLE access conditional
  phy: qcom-qmp: move PCS MISC V4 registers to separate header
  phy: qcom-qmp-usb: populate offsets configuration
  phy: qcom-qmp-ufs: populate offsets configuration
  phy: qcom-qmp-pcie: populate offsets configuration
  arm64: dts: qcom: ipq6018: switch USB QMP PHY to new style of bindings
  arm64: dts: qcom: ipq8074: switch USB QMP PHY to new style of bindings
  arm64: dts: qcom: msm8996: switch USB QMP PHY to new style of bindings
  arm64: dts: qcom: msm8998: switch USB QMP PHY to new style of bindings
  arm64: dts: qcom: sdm845: switch USB QMP PHY to new style of bindings
  arm64: dts: qcom: sm8150: switch USB QMP PHY to new style of bindings
  arm64: dts: qcom: sm8250: switch USB QMP PHY to new style of bindings
  arm64: dts: qcom: sm8350: switch USB QMP PHY to new style of bindings
  arm64: dts: qcom: sc7180: switch USB+DP QMP PHY to new style of
    bindings
  arm64: dts: qcom: sc7280: switch USB+DP QMP PHY to new style of
    bindings
  arm64: dts: qcom: sdm845: switch USB+DP QMP PHY to new style of
    bindings
  arm64: dts: qcom: sm8250: switch USB+DP QMP PHY to new style of
    bindings
  arm64: dts: qcom: msm8996: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: msm8998: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sdm845: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm6115: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm6350: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm8150: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm8250: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm8350: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm8450: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: ipq6018: switch PCIe QMP PHY to new style of
    bindings
  arm64: dts: qcom: ipq8074: switch PCIe QMP PHY to new style of
    bindings
  arm64: dts: qcom: msm8998: switch PCIe QMP PHY to new style of
    bindings
  arm64: dts: qcom: sc7280: switch PCIe QMP PHY to new style of bindings
  arm64: dts: qcom: sdm845: switch PCIe QMP PHY to new style of bindings
  arm64: dts: qcom: sm8150: switch PCIe QMP PHY to new style of bindings
  arm64: dts: qcom: sm8250: switch PCIe QMP PHY to new style of bindings
  arm64: dts: qcom: sm8450: switch PCIe QMP PHY to new style of bindings
  ARM: dts: qcom-sdx55: switch USB QMP PHY to new style of bindings
  ARM: dts: qcom-sdx65: switch USB QMP PHY to new style of bindings
  ARM: dts: qcom-sdx55: switch PCIe QMP PHY to new style of bindings

 .../phy/qcom,ipq8074-qmp-pcie-phy.yaml        | 299 -------------
 .../phy/qcom,msm8996-qmp-ufs-phy.yaml         | 244 -----------
 .../phy/qcom,msm8996-qmp-usb3-phy.yaml        | 394 ------------------
 .../phy/qcom,sc7180-qmp-usb3-dp-phy.yaml      | 276 ------------
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       | 213 ++++++++--
 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |  94 ++++-
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 236 ++++++++++-
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 124 +++++-
 arch/arm/boot/dts/qcom-sdx55.dtsi             |  57 +--
 arch/arm/boot/dts/qcom-sdx65.dtsi             |  29 +-
 arch/arm64/boot/dts/qcom/ipq6018.dtsi         |  63 ++-
 arch/arm64/boot/dts/qcom/ipq8074.dtsi         | 123 +++---
 arch/arm64/boot/dts/qcom/msm8996.dtsi         |  57 +--
 arch/arm64/boot/dts/qcom/msm8998.dtsi         |  77 ++--
 arch/arm64/boot/dts/qcom/sc7180.dtsi          |  55 +--
 arch/arm64/boot/dts/qcom/sc7280.dtsi          |  90 ++--
 arch/arm64/boot/dts/qcom/sdm845.dtsi          | 174 +++-----
 arch/arm64/boot/dts/qcom/sm6115.dtsi          |  17 +-
 arch/arm64/boot/dts/qcom/sm6350.dtsi          |  18 +-
 arch/arm64/boot/dts/qcom/sm8150.dtsi          | 153 +++----
 arch/arm64/boot/dts/qcom/sm8250.dtsi          | 211 ++++------
 arch/arm64/boot/dts/qcom/sm8350.dtsi          |  60 +--
 arch/arm64/boot/dts/qcom/sm8450.dtsi          | 110 ++---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      |  84 ++++
 .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v4.h   |  17 +
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  10 +
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 122 +++++-
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   8 -
 28 files changed, 1316 insertions(+), 2099 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v4.h

-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
