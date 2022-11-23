Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81283C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 10:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZuQ93gWdBNMA830rYgcFl44cV9ZcPgQPNbMHFj9M8D4=; b=u3OFjQ7CN98if1
	dpJaPXDmCPo+CKTtEUBCrmp2YBRKLWGu6KEWRQin4CF1do9p7R2mrjNa5iuv4gk+GTmxCd1Im8TRx
	wMHDfSqh8Wmedy59p3vXVrtI2+AQfj01RSJ8448DwYVqCM91SEqJCNpmggt+RH5kY1hkGcNkyxIQ2
	hL22OBumleX4rsdObfUaZs1kW2oAv94vLd/d3JqBhARa4JFv4nIpfB+jWMWxylgUMlA5Il3GoLbCK
	4H4Zbf+/i2H1cWhgtWuPc3IIL2iRATC5vznZicwPTUmEH1WvGjJSSMXOmur5CphTIn46u6o3qoMsf
	FMggFI3NYXJWs+0QGv2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxnCx-00GPsq-Ok; Wed, 23 Nov 2022 10:42:23 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxnCu-00GPpG-4H
	for linux-phy@lists.infradead.org; Wed, 23 Nov 2022 10:42:22 +0000
Received: by mail-lj1-x22a.google.com with SMTP id z24so20923686ljn.4
        for <linux-phy@lists.infradead.org>; Wed, 23 Nov 2022 02:42:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YF9nXGIHmq/lAYQEKmHO/iVT/Vstl98BtvDe9TMyGGQ=;
        b=gVAdc5EGfSByHOB4D30oEvuiho+nMw72g5qPkyNizyB5g0DtLhDz+1MfuRHtUfw6F7
         u+mdvDE4mZTpmOR3a559CjyfsxI/fO390T3UbKgnKRBjaTTsJkOgWZr5hij04dYuJoMC
         3QYBFUA6cBhZfdxqQ1qudbiFhEOJXOSctNcKobjH6nXRZwO7IZ2lekwG0WL/JkfnIFAk
         CKXkqzE9ZaSJb6vSifbM7eOAv5oE+QeXwr2jSjwjh9AN3vo3bl9r/QXR5ytyVJWpzpCx
         sjn672XS4099JhfMQD1wDFnxlZ9dSXicoJvv662eImXnGSp9rd19RrP+RUbKVyPLA4Fn
         NMQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YF9nXGIHmq/lAYQEKmHO/iVT/Vstl98BtvDe9TMyGGQ=;
        b=gR+2wwZkYtaVL5F+7sJqpZ8Kiv7VQXMebl6Vi08xZnaVbFbdBgWIBYFSsUo4TD8Wdc
         RlFr99gtgtYF9Iv2o8/c/saYoc4Ky+FI6VUfaAPXm8sGv0cqCdCnvK5C2v/YpF9J/HRT
         LVoD/cF3wtP/7VheQWqBIFipfzT87odwx3OqxH6RPj5p/+2kwg8PUUusZzn3HsbDH3ZF
         36Iu/fPKWZqOk7PzsBftjyafUgJ+Qt+p1ihRqIqhhb/qUaw7hVtNrXLpGo0QfrWs4UZn
         oNJDx5nGK3MmXDuqi/MrOkmQmmr9DI0+SkFgYY9xJmIqCrPdLLK/Sx9UwAU0Fvd20VEx
         bDvA==
X-Gm-Message-State: ANoB5pmSXMjlL/15AaejzkT6L8qSmgw2FAhRttymbnYkjsgumAhANi1l
	hnUxEuOM5K+Msdn/cvjTqNVhqQ==
X-Google-Smtp-Source: AA0mqf52T8CV2bruamVh89OGSC8zH2FkHaYTMJXoCPcXlDKLoMjF4ZyxrojGkAJ5CO1NCHu54lUo/A==
X-Received: by 2002:a2e:b631:0:b0:277:890a:f1cc with SMTP id s17-20020a2eb631000000b00277890af1ccmr8851591ljn.395.1669200136132;
        Wed, 23 Nov 2022 02:42:16 -0800 (PST)
Received: from eriador.lumag.spb.ru (dzpbg0ftyyyyyyyyyyyyt-3.rev.dnainternet.fi. [2001:14ba:a302:5f12::1])
        by smtp.gmail.com with ESMTPSA id n5-20020a05651203e500b00498f570aef2sm2862908lfq.209.2022.11.23.02.42.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 02:42:15 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Johan Hovold <johan@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v8 0/4] phy: qcom-qmp-ufs: add symbol clocks support
Date: Wed, 23 Nov 2022 12:42:11 +0200
Message-Id: <20221123104215.3414528-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_024220_199369_1A60ACC6 
X-CRM114-Status: GOOD (  11.86  )
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

Register UFS symbol clocks in the Qualcomm QMP PHY driver. Some of the
platforms (msm8996, sc7280, sm8350/sm8450) expect them to be defined (to
be used as GCC clock parents).

Changes since v7:
- Rebased on top of phy/next
- Renamed the clock registration function (Johan)
- Dropped rogue qcom_qmp_ufs_ops (Johan)
- Fixed the comment following Johan's suggestion.

Changes since v6:
- Added bindings change (Johan, thanks for the reminder)
- Added corresponding dts changes for msm8996 and sm8350/sm8450.

Changes since v5:
- Rebased on top of phy/next

Changes since v4:
- Rebased, dropping merged clk patches
- Fixed whitespace errors
- Added linebreaks to fit into 100 chars limit

Changes since v3:
- Rewrote asm9260 clk driver to fix the TODO item by using parent index
  rather than calling of_clk_get_parent_name().

Changes since v2:
- Added error handling to phy_symbols_clk_register() (requested by
  Johan).

Changes since v1:
- Added a macro used by clk-asm9260, so that the clk-fixed-rate changes
  do not affect the driver
- Changed registered clock names to be unique (as e.g. SC8280XP will
  have two UFS PHYs).


Dmitry Baryshkov (2):
  dt-bindings: phy: qcom,*-qmp-ufs-phy: add clock-cells property
  phy: qcom-qmp-ufs: provide symbol clocks

Yoshihiro Shimoda (2):
  dt-bindings: phy: renesas: Document Renesas Ethernet SERDES
  phy: renesas: Add Renesas Ethernet SERDES driver for R-Car S4-8

 .../phy/qcom,msm8996-qmp-ufs-phy.yaml         |   3 +
 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |   3 +
 .../phy/renesas,r8a779f0-ether-serdes.yaml    |  54 +++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  64 +++
 drivers/phy/renesas/Kconfig                   |   8 +
 drivers/phy/renesas/Makefile                  |   1 +
 drivers/phy/renesas/r8a779f0-ether-serdes.c   | 417 ++++++++++++++++++
 7 files changed, 550 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/renesas,r8a779f0-ether-serdes.yaml
 create mode 100644 drivers/phy/renesas/r8a779f0-ether-serdes.c

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
