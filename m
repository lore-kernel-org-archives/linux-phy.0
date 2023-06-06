Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C1E5C7EE2F
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jun 2023 04:05:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/+N1bU04dS4xdk9SDdsYQa+8ffoiukZuV6r1h8UntrE=; b=idw0OBwhmYYIFs
	C+cfZzlR16D4aSvuYsD2I7QnFzFTuuKj18wAlcBNPeIpEHByaVJv6GRBWpjm84CuEU61VmuJmxL/D
	rLP45YuJ1aT7lmwsp/uAJiYcXkbltbpBH62B7If5LIAk6noJYvtoHvL46yOe7GHIcUBKciUHprd//
	tTj3Z1cHLOclxFlzPFrfyR62ghPrv7kvXLZQyDwlRpimj6K33edUg1N9miAMXxyiP/Scy61mmpyik
	qDpJoyH1w4BVwrQ/vHH2iEMOF+MCavCIVdd3fNEsat0aGWE7HXtuBF5JgMbwScErcuRQQYWVNKUTF
	oWWI7mk4N43s+oGJazJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Nx1-000585-0U;
	Tue, 06 Jun 2023 04:05:43 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Nwy-00057E-0j;
	Tue, 06 Jun 2023 04:05:41 +0000
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-75ec6ae7ffaso99931885a.2;
        Mon, 05 Jun 2023 21:05:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686024339; x=1688616339;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZYhswQiRt1WsRhH2+UJS4EAOlVs+4YtiTEvdONDNyWM=;
        b=BtHZ1AlOOj/vG4h1Rnh/9nHPW2BHrVUgJvzOSOKj/iM1SBLLQPoT7l0xjaKzdF3z+x
         ThgkPrOK5vFvdtNA+9cP4eb5vdozupnDpmdc5QCZrBCtGqHPnHctWK+wtvX5yow+SQS9
         tqqyCeZcbjOrBmdFGGzgQH0mzfspVNxvtcHmTE0F6zINae5vVyhh6z5213Qv3R6XYzGU
         J+WbrSl79pGKBs9z8u1XliCwQa3oWccz4jIYDczYTJhg7/qBFfIhjezDM8tqSSf2Yazm
         G+g4fbxzrP4giT6INSHqdtL+KaeEX2HsLmc+NMWMu9ylcLX6HmThYdnrP8XmC5ZAaVjH
         YewQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686024339; x=1688616339;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZYhswQiRt1WsRhH2+UJS4EAOlVs+4YtiTEvdONDNyWM=;
        b=etTUGEavQWWsJm0ls5PzXExIPYJ1oyZNV9TzbGVTIymNp53EPR7qYwc/unFmz6BfmL
         snvZkZ4bIcukXEYfl63tb7n3hqzHQ93j7EkWb9EBGJwqgdxLgNpN0tWMvAOEX4PTzf2P
         chHIUUvGfpsJ1O2VLPZn5nV3omZwoxFHY26jpIh0gU4J/pH3oD0IqQLkQM/UOYKUF7Io
         SHhJPidlfOHryLBIQFONF+Zln0XWMieWj7mWp4AtatG7yuQK4GGne3zZZU/6GHWO0sh0
         g8qElfTgToJwVTZtMLpT3FzhUyBWgjFVw4I/HrO40fZ3YldeTeMHmVkdAzd+Bl8aqQvk
         Et/g==
X-Gm-Message-State: AC+VfDx5s5dfYtvAPW+QOr87IliaNmNfz2BGTKVwUv1BvVhAcyWghEru
	UAC4mZaWS3eqIUJAx7WF/bU=
X-Google-Smtp-Source: ACHHUZ5ZjW8Lgt8vljRskIoL0Pq7bwAOEFKuBRFF/VtJSVNzmAcxf4EOO0i8RN6aZbg99iOCiB27JQ==
X-Received: by 2002:a05:6214:2423:b0:61b:7115:559e with SMTP id gy3-20020a056214242300b0061b7115559emr1228066qvb.1.1686024338736;
        Mon, 05 Jun 2023 21:05:38 -0700 (PDT)
Received: from Latitude-E6420.mynetworksettings.com ([2600:4040:2007:9800:aac8:d62:35cc:958c])
        by smtp.gmail.com with ESMTPSA id e2-20020ac84b42000000b003e388264753sm382980qts.65.2023.06.05.21.05.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 21:05:38 -0700 (PDT)
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
Subject: [PATCH v4 0/4] Samsung Galaxy Express SGH-I437 Support
Date: Tue,  6 Jun 2023 00:05:23 -0400
Message-Id: <20230606040529.122433-1-guptarud@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_210540_265345_EDD44900 
X-CRM114-Status: GOOD (  14.57  )
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

version 4:
- Rebase onto rc1
- Fix qcom,usb-hs-phy.yaml patch so it doesn't break other devices

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
