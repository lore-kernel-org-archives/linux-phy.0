Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99AC2C27C40
	for <linux-phy@archiver.kernel.org>; Thu, 24 Aug 2023 21:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UCqcHlVWkjf1gPr8NpWkP6Neo5Ri+cV0nMArF68zxqY=; b=Nc2frYlRYs1cTq
	89IuiJqZPgoS/8yLCyXiwcyf9lsqBCu0uTOCfvmRs2LdyjS0FYoIf73dJKQNVeE2x8XbSxLXl/xMT
	O5XTlf+9gt94jSfqrp1vAjEHO7tqaTC/uy9SLopq8fbbz+1GzJoyoQ6o5fOA857jTNhQEsjfBdIsP
	sKqU2TQCmTxf7Qgg4c8GEgEEWQ2u7nqq79jJSq+mI0A/i7cmAAkbncxQ6BbjJz8RmA5JzXELDzYfP
	iC5+eGFdYpb81/kj0TbzazNtzDc1QAq09DO1YkTjHCRoH0sbu0iAj+0JJZfplVGnbNUShK/Jrj33+
	0Qvh3EXWIOsP/lNl9L6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkH-003omS-07;
	Thu, 24 Aug 2023 21:20:01 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkD-003ojf-1s
	for linux-phy@lists.infradead.org;
	Thu, 24 Aug 2023 21:19:59 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-4fe27849e6aso372929e87.1
        for <linux-phy@lists.infradead.org>; Thu, 24 Aug 2023 14:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692911994; x=1693516794;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aTzbpQhifk1BKKUlbC708++llGqrCxcRyQyiVjC0krk=;
        b=uucc4Bg5IErKfIdTfyGLsCoMRNTQNRw/na+HgrouDIySI0Hd1nuMYGgVT80Wug9G5B
         qgCD910RwbxM88mjD6gtmtpLgS5SiTG8scBiUmcpyam5Drvz1m/vQy6gHRLCrATjqoFg
         C6BA/Wa+e+U3qSvgGxvZhXZ9iHH3XiDSxvuF0Hs7EFHC01PxnI2U48JRO+/H/tyupuPW
         dgi3oNLcuozqS8SX75R9s05JSp8qtjbHcFDQPYjzmvkRyHcSUzawM1bc2bzrjJwmagKH
         NmduGrXGpCBiGxRkb/15YFfC4V2ay+y4Bg9fMnq/vMaUL6V8coGyjMzTppCpeIaPaHZ3
         cCxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692911994; x=1693516794;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aTzbpQhifk1BKKUlbC708++llGqrCxcRyQyiVjC0krk=;
        b=Ko22cU5bsXH9PkqODvzgW7dV2BaLOTbkd4dGs3WNIQd09sdEgnlCBuTWVMx1ZfqEdP
         p5otqcfuFncOqCjNK1uPgMFbcEjmSfgriIRnTqFUXZCsTd7yMsKns+J/34xMaDKbGtJi
         tf6TMwcEo+ABsJcC8siGyijItqo7oyo1wwFhIhjIVaXNAJBYs/P7ClchCrjt53EigxNl
         vypm0RYrkv7oOToWRjGd5zlIJvb9b98yNgS/nYY9tSp480gOmEd+AKCPTFo9bNXle2oU
         kK6qtDTOZBcsmqV6ml0brT2X3Rdr2tlSDJ4Ij44Qt/dBGqQ2OzvCKJpDML3lykadp9NL
         SsUQ==
X-Gm-Message-State: AOJu0YwbUtA0OhknAiF9TheMXkUrcQapbFrrrSuQO8hyH7eFHraFbJrv
	CHw3IGUD/f9DA1Pb1m3EN/GVgg==
X-Google-Smtp-Source: AGHT+IHn0Ik6Nnr229/0R2nkLFvuJscxkIzG6VVS7EQljGN8KogWCOdH4ntHGcm/mZ4IWy+bdkftHw==
X-Received: by 2002:a05:6512:1310:b0:500:96dd:f95b with SMTP id x16-20020a056512131000b0050096ddf95bmr4582608lfu.59.1692911994250;
        Thu, 24 Aug 2023 14:19:54 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j29-20020a056512029d00b004fe4ab686b4sm17690lfp.167.2023.08.24.14.19.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Aug 2023 14:19:53 -0700 (PDT)
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
Subject: [PATCH v3 00/16] phy: qcom-qmp-usb: convert to newer style of bindings
Date: Fri, 25 Aug 2023 00:19:36 +0300
Message-Id: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_141957_626795_0860EB24 
X-CRM114-Status: GOOD (  10.41  )
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
 - Added maxItems to qcom,ipq9574-qmp-usb3-phy / clocks so that the
   clocks array size is always properly constrained (Krzysztof)
 - Dropped rogue PCIe PHY chunk from msm8998 patch.

Changes since v1:
 - Split large patchset into smaller parts
 - Rebased on phy/next
 - Reworked bindings to follow the common standard rather than blindly
   moving the PHY contents.

Dmitry Baryshkov (16):
  dt-bindings: phy: migrate QMP USB PHY bindings to
    qcom,sc8280xp-qmp-usb3-uni-phy.yaml
  phy: qcom-qmp-usb: simplify clock handling
  phy: qcom-qmp-usb: rework reset handling
  phy: qcom-qmp-usb: make QPHY_PCS_MISC_CLAMP_ENABLE access conditional
  phy: qcom-qmp: move PCS MISC V4 registers to separate header
  phy: qcom-qmp-usb: populate offsets configuration
  arm64: dts: qcom: ipq6018: switch USB QMP PHY to new style of bindings
  arm64: dts: qcom: ipq8074: switch USB QMP PHY to new style of bindings
  arm64: dts: qcom: msm8996: switch USB QMP PHY to new style of bindings
  arm64: dts: qcom: msm8998: switch USB QMP PHY to new style of bindings
  arm64: dts: qcom: sdm845: switch USB QMP PHY to new style of bindings
  arm64: dts: qcom: sm8150: switch USB QMP PHY to new style of bindings
  arm64: dts: qcom: sm8250: switch USB QMP PHY to new style of bindings
  arm64: dts: qcom: sm8350: switch USB QMP PHY to new style of bindings
  ARM: dts: qcom-sdx55: switch USB QMP PHY to new style of bindings
  ARM: dts: qcom-sdx65: switch USB QMP PHY to new style of bindings

 .../phy/qcom,msm8996-qmp-usb3-phy.yaml        | 287 ------------------
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   |  55 +++-
 arch/arm/boot/dts/qcom/qcom-sdx55.dtsi        |  41 ++-
 arch/arm/boot/dts/qcom/qcom-sdx65.dtsi        |  35 +--
 arch/arm64/boot/dts/qcom/ipq6018.dtsi         |  35 +--
 arch/arm64/boot/dts/qcom/ipq8074.dtsi         |  76 ++---
 arch/arm64/boot/dts/qcom/msm8996.dtsi         |  40 ++-
 arch/arm64/boot/dts/qcom/msm8998.dtsi         |  35 +--
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |  39 ++-
 arch/arm64/boot/dts/qcom/sm8150.dtsi          |  39 +--
 arch/arm64/boot/dts/qcom/sm8250.dtsi          |  38 +--
 arch/arm64/boot/dts/qcom/sm8350.dtsi          |  39 +--
 .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v4.h   |  17 ++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 225 +++++++-------
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   8 -
 15 files changed, 352 insertions(+), 657 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v4.h

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
