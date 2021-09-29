Return-Path: <SRS0=Qt1L=OT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 590E8C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 29 Sep 2021 03:43:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E6DAE613D0
	for <linux-phy@archiver.kernel.org>; Wed, 29 Sep 2021 03:43:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E6DAE613D0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YEY4zgBRz0PkqxVzAhBStAulRnX7qdlC250aL9L9z4M=; b=LKD+P2psByanoz
	YWtOSYoTHQhwtecxWzUuUsBTEpkZUDFLiUUPgdg02k0G+AWxli5AmX1DUNptbEJx1ZW8pDKLaybNE
	Y/TREgtAI5seiqjYxyELNSD5+Q4b8Vny9FphaRJP6HJ2vAe9CuzE4+/nEVOBZ12COulghgAoJy1Zt
	MuhQkmaNwtgON1h9VOFkmADOHp4cg7Aa7fk1GJmWraEslD4b04BLOpL8oCn+jCK+reF8zIEQljiWR
	LEPUmcF+SkmRSKJKlgY+82y0g8DeofcjCcT8/xR/ihxHzphQyEvXtklB/0tkp161gMVtaj7uun2yk
	GblYc/RBE7MfTyohk1Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVQUu-009py5-Gr; Wed, 29 Sep 2021 03:43:08 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVQUr-009pxR-UL
 for linux-phy@lists.infradead.org; Wed, 29 Sep 2021 03:43:07 +0000
Received: by mail-pl1-x632.google.com with SMTP id l6so571723plh.9
 for <linux-phy@lists.infradead.org>; Tue, 28 Sep 2021 20:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=8EIDIG7He/WdJECyN2rIQHoUkf1zGI2sOfErvrjMF1g=;
 b=kuWPmsoRK9qCOXQhyxXQGOqOvNquxsxoUC42Bng3blovL6sX9bC2bYDmImOj+8fTp/
 MySsDJEShHHYqrJpRIpxiCoMuJFm4YwLZ3RXSyz98cml5KghqpxVtVU9x767bZtODKlq
 lTF5sitYWDL+IZHFJFEVfVv4VdSNTKqwvZl3C4j3sSSAnD1M18Y0UF9B9g+IPmj/88+m
 lniW+N1kDEJ9Ou2tSr4VYb4yJfEk8da52G9xjrF/lqM0ThI2ej4t7Pvz0lC6P6RrpaAB
 d8zGgs1PGeTsTBGuzhgQyV9a4SFDxH0TUdfrDpk2UuKvP9c7Tpb68V90EaCqLwxA/QaL
 fP8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=8EIDIG7He/WdJECyN2rIQHoUkf1zGI2sOfErvrjMF1g=;
 b=wFFPT3NnL9vdHDST6w52mCNuIy35iX1fijyV75eiz44Oj+oHtJTuKkcGJ3W5skBpFP
 qXmBdtkw1I2A5Z1GNLwXtAkl9qKs9U8kKpgu/ZwBmG/w3UEJ1u53uIYlAM9JSq97PHeV
 HYJuUXZO+19wbvEIiLTEsGSjhF2TrC95wNzanzYCGwz20fULIK5K62eHzpULyTlLPEG6
 9jbRsJz5QQ/2N5TBBlNaFaCoxtNrbXIllwXA4i/JPW3jwCCgie2fQyHzzp3VX2gX6l81
 UUa7NO4Lalnr6jSxxkPNVTKgvI2UilIVQldBJ+Eg+F9er59+EoqWsc+dNGdYB5M3ANcN
 EOiQ==
X-Gm-Message-State: AOAM532T2pZ4UIxaTjjjbo311yuI+BdjZUOx1tW+HR2EwkT9M5ZH3pP9
 zHKRobJtZZk2iSvSiJspMqppRMIitdfcvA==
X-Google-Smtp-Source: ABdhPJzUqMPiehVu2EGfrsf8/6nW/NInCCQQuRSrplizc06q+EfiDn320mU2cjaSW62oPRAff5W5Rg==
X-Received: by 2002:a17:90b:2358:: with SMTP id
 ms24mr2404501pjb.1.1632886984179; 
 Tue, 28 Sep 2021 20:43:04 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com.
 [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id b7sm533032pfb.20.2021.09.28.20.43.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Sep 2021 20:43:03 -0700 (PDT)
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 00/10] Make Qualcomm QMP PHY dtbs_check warning free
Date: Wed, 29 Sep 2021 11:42:43 +0800
Message-Id: <20210929034253.24570-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210928_204306_026065_58F621CC 
X-CRM114-Status: UNSURE (   9.26  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

As I recently add QMP USB3 PHY support for QCM2290 and touch the binding
doc.  Rob's bot report a huge number of dtbs_check warnings on Qualcomm
DTS files.  Although none of them is new warning introduced by my
change, I decided to clean them up.

The first two patches are fixes on QMP PHY binding, and the reset are
all fixes on Qualcomm DTS.  In the end, with this series, we are QMP PHY
dtbs_check warning free!


Shawn Guo (10):
  dt-bindings: phy: qcom,qmp: '#clock-cells' is not required for parent
    node
  dt-bindings: phy: qcom,qmp: IPQ6018 and IPQ8074 PCIe PHY require no
    supply
  arm64: dts: qcom: msm8996: Move '#clock-cells' to QMP PHY child node
  arm64: dts: qcom: Correct QMP PHY child node name
  arm64: dts: qcom: Drop max-microamp and vddp-ref-clk properties from
    QMP PHY
  arm64: dts: qcom: Drop reg-names from QMP PHY nodes
  arm64: dts: qcom: msm8998-clamshell: Add missing vdda supplies
  arm64: dts: qcom: Fix IPQ8074 PCIe PHY nodes
  arm64: dts: qcom: ipq8074-hk01: Add dummy supply for QMP USB3 PHY
  ARM: dts: qcom: sdx55: Drop '#clock-cells' from QMP PHY node

 .../devicetree/bindings/phy/qcom,qmp-phy.yaml | 57 +++++++++----------
 arch/arm/boot/dts/qcom-sdx55.dtsi             |  1 -
 arch/arm64/boot/dts/qcom/apq8096-ifc6640.dts  |  3 -
 arch/arm64/boot/dts/qcom/ipq6018.dtsi         |  2 +-
 arch/arm64/boot/dts/qcom/ipq8074-hk01.dts     |  6 ++
 arch/arm64/boot/dts/qcom/ipq8074.dtsi         | 54 +++++++++++++-----
 arch/arm64/boot/dts/qcom/msm8996.dtsi         | 14 ++---
 .../boot/dts/qcom/msm8998-clamshell.dtsi      |  2 +
 arch/arm64/boot/dts/qcom/msm8998-mtp.dtsi     |  4 --
 .../boot/dts/qcom/msm8998-oneplus-common.dtsi |  4 --
 arch/arm64/boot/dts/qcom/msm8998.dtsi         |  8 +--
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts      |  2 -
 arch/arm64/boot/dts/qcom/sa8155p-adp.dts      |  2 -
 arch/arm64/boot/dts/qcom/sdm845.dtsi          | 11 ++--
 arch/arm64/boot/dts/qcom/sm8150-hdk.dts       |  2 -
 .../dts/qcom/sm8150-microsoft-surface-duo.dts |  2 -
 arch/arm64/boot/dts/qcom/sm8150-mtp.dts       |  2 -
 arch/arm64/boot/dts/qcom/sm8150.dtsi          |  7 +--
 arch/arm64/boot/dts/qcom/sm8250-hdk.dts       |  2 -
 arch/arm64/boot/dts/qcom/sm8250-mtp.dts       |  2 -
 arch/arm64/boot/dts/qcom/sm8250.dtsi          | 10 ++--
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts       |  2 -
 arch/arm64/boot/dts/qcom/sm8350-mtp.dts       |  2 -
 arch/arm64/boot/dts/qcom/sm8350.dtsi          |  6 +-
 24 files changed, 102 insertions(+), 105 deletions(-)

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
