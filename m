Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FE3CC7EE2A
	for <linux-phy@archiver.kernel.org>; Sun,  4 Jun 2023 06:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cskp54QXOMpEk8TSWwZOfA2sPbqiXdNdE2b0PUR0rS4=; b=mbPhYww8q4M0z5
	IdcYFwmJuGiy0dXo3tmiiHppxgqJyYBBDY57ozlf+OhcPtMeMKcTthQ1p6VFNpOpcsaq5yt29oSd3
	aEV7U/Uy3UKh6A90Y3NhrKAgEWlnkEvxOCHleQrOnq4sUmKqohyD153qlfatb1CqBfAB+B9v6ZsVh
	jbasqn0KdRyCfg/ImQOX/jLLk7r/cqDTHqsffa5oDLbkH1m8692LI1ewnkF0B93MpdI8DPcLXEbdd
	syR3Mg0oSe/c2yzalYYxRpFXW7YoGb47PcIz6NSGM9q2pHwsFHvGnzvTxDy5xn6h8ozLS9JAeoZck
	yiW19kw6LxSQcWDCce2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5hGR-00BS9D-2l;
	Sun, 04 Jun 2023 06:30:55 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5hGO-00BS7U-1t;
	Sun, 04 Jun 2023 06:30:54 +0000
Received: by mail-qt1-x82b.google.com with SMTP id d75a77b69052e-3f6a494810fso31942691cf.1;
        Sat, 03 Jun 2023 23:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685860241; x=1688452241;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SbqYJAHskzU5DpmVfI7uhOaA6IbRO1C4pvsLQyJWA6o=;
        b=n4wXNxl+K400gB1Ir/Qmwa1PG4A0CdCHuO3n26/m7JRfeqUYaC6QmPPeFE+sHuy9ER
         3FkmS/JP9ThGJws0SVJl8IZxnjyLtmPPUknFTJvflPMGlbMFws+2TjVRm217Sy9rV8x5
         bP/aBOFOfuZ+d/JWFg33GFlBZKXMFAzCsUS7Tq61FLWbir7XaY8KqwHV3oX3cHyMhsv0
         qQmRoJJvGfFExjXQdLe3rELNFYFPH/97TD0Xcxi23Rgv8xecAlJ71eySA5mvqSD21Om3
         egN8WTiBKBh2FSzGd3iRe/b6RbUH28UYaZ1ii/k/FcC6xW24YZT+rSrdfDU1ji8/uAhM
         9qyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685860241; x=1688452241;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SbqYJAHskzU5DpmVfI7uhOaA6IbRO1C4pvsLQyJWA6o=;
        b=TEWa+YEbwh6a1BosHU3GiF03eDDy48on0cgm1NZ+edpygdLFbNXbsaLWGLT6/gS2kT
         H6omakizNtAw4vg5Ld2+KBduERoSGL5mrrYS0RkoAinkYZ+5lJWIYw1Kf31btQWZE8ns
         46I/Bw6/InLJWugJ4JQKgyKtSp7OaN2CVnzxMcbGuBO8wnRD2ety/N2KVQ/n8vK2G4JT
         x0nDIPl/yphHyhNNpCd65dm1MPpEaH2SnZxMsNuOyVtbDXZfzRXZii7mbL8zKEEcz4ta
         nys5tdyS8zZQOd5VdTKhyxwvdHBCt+qefVJK0Qs5aRmyNn672Y/ysEOwBuGY/cBWUcZ/
         ufbA==
X-Gm-Message-State: AC+VfDwRkKF3Q1Zd7z1xRbKm9oUgV+5nBty5GBeBj64e4VQMOWtTiGpX
	ldViuqv7UburlsZnwZoKxLQ=
X-Google-Smtp-Source: ACHHUZ6IUiD2zJzv9IRX3p+2i7RHR6TC4L//qeKiNXgoHsvBjkZf4Y2adSGmxeR2gcKQg2LBugYnqw==
X-Received: by 2002:ac8:5812:0:b0:3f6:a015:d9d4 with SMTP id g18-20020ac85812000000b003f6a015d9d4mr4419511qtg.65.1685860241025;
        Sat, 03 Jun 2023 23:30:41 -0700 (PDT)
Received: from Latitude-E6420.mynetworksettings.com ([2600:4040:2007:9800:ab78:dd77:aea4:8d1a])
        by smtp.gmail.com with ESMTPSA id e10-20020ac85dca000000b003f018e18c35sm3044163qtx.27.2023.06.03.23.30.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jun 2023 23:30:40 -0700 (PDT)
From: Rudraksha Gupta <guptarud@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	soc@kernel.org
Cc: Rudraksha Gupta <guptarud@gmail.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/4] Samsung Galaxy Express SGH-I437 Support
Date: Sun,  4 Jun 2023 02:30:17 -0400
Message-Id: <20230604063032.365775-1-guptarud@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230603_233052_649908_2530DD65 
X-CRM114-Status: GOOD (  13.93  )
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

This patch series adds support for the Samsung Galaxy Express SGH-I437.
Currently the following things work on this phone: UART, eMMC, SD Card, and
USB.

version 3:
- Added Ack
- Fixed compatible in qcom,usb-hs-phy.yaml. `make dt_binding_check dtbs_check`
  no longer complains about USB
- Fixed formatting in qcom-msm8960.dtsi and qcom-msm8960-samsung-expressatt.dts
- Fixed the spi1_default node in qcom-msm8960-samsung-expressatt.dts.
  `make dt_binding_check dtbs_check` no longer complains

version 2:
- Combined patch 1 into patch 4, as the sleep_clk label is specifically needed
  for the USB node.
- Reformatted the commit messages to align with the style used in other commit
  messages that modify the same files.
- Included a cover letter to provide an overview of the patch series.
- Slight refactoring of the device tree source (DTS) file.

Rudraksha Gupta (4):
  dt-bindings: arm: qcom: Add Samsung Galaxy Express
  dt-bindings: phy: qcom,usb-hs-phy: Add compatible
  ARM: dts: qcom: msm8960: Add USB node
  ARM: dts: qcom: Add Samsung Galaxy Express support

 .../devicetree/bindings/arm/qcom.yaml         |   1 +
 .../bindings/phy/qcom,usb-hs-phy.yaml         |   5 +-
 arch/arm/boot/dts/Makefile                    |   1 +
 .../dts/qcom-msm8960-samsung-expressatt.dts   | 331 ++++++++++++++++++
 arch/arm/boot/dts/qcom-msm8960.dtsi           |  34 +-
 5 files changed, 370 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boot/dts/qcom-msm8960-samsung-expressatt.dts

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
