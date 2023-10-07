Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A07AE95A6B
	for <linux-phy@archiver.kernel.org>; Sat,  7 Oct 2023 14:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zgC45e3E2aqwQXo1jNdLbREMW0ScTNF3LdJJCSWQqfs=; b=fZT+dF6ExpQ+lN
	aDSpV8IEtIsVz8GU+3F7GCz+6OLHN2CzRZwG5kOyiDd0eRvPjC/GXAUtQ12B6/lKEwUTr4ZuK/cEA
	rIeGALYUgMGi6LVdUifV2l5IvTdgoepXndOYBHzHP4ooZbgyCzpmwm5c+OAI2gIb9K2LLTlcU/RDN
	VFtI0b+ituSPGtJKqRD4ICUu8yxy4SjU3S84gWZPPjD3he3m3c+Eed34ufCUlQ4ynu56T+K9zEKL2
	1rTQNZzsBCJp1xMNsyWniVsnivY+n2CeZaHOUuhcUOCvfxbXtCsW41W+BD9QwctEXF0jiBsoa7Zw9
	KX0T8Idpm844ToU/KJeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qp7re-007ciW-0J;
	Sat, 07 Oct 2023 14:01:06 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qp7rZ-007cfo-2h
	for linux-phy@lists.infradead.org;
	Sat, 07 Oct 2023 14:01:04 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40651a726acso27864105e9.1
        for <linux-phy@lists.infradead.org>; Sat, 07 Oct 2023 07:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696687258; x=1697292058; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JA8pNS1sjO+SvOcd9f6aWXsYXEvGmALJgnPRfN+5ZZI=;
        b=L99QwvjNg86O8ZW5wPk+DOrFxSiu6T700xcZAISmPVWrFL4rk0+3AsH0QssuD9jO03
         6I3Z/mKfBI3pOGEehWvYmVQcnOP2gSQBdAH7XA8R0tjOBycvVhzp2hsoB5Mse8iO4pK6
         HZDcrLegz94fAJDg2ErBiABQf097ArzgwNcDms9YXJPb0/4dbc3SCk/ATTMpzGRXxYzC
         qh44LIG7zXdFzgmZZS34BsM+f7LP03S6e42TnmjhjH2dFcbNfKclCs47kkX7cfqxnSbI
         LQN/rlE1OJWF3CNoqw/OumTY22jtbQciE6fJesMQJSqLDeej1Hxvhtc8Mq43DoGuBcgc
         F/Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696687258; x=1697292058;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JA8pNS1sjO+SvOcd9f6aWXsYXEvGmALJgnPRfN+5ZZI=;
        b=i8JfuHanO23CZwCxsKDh1qNorRSZZ8pCSxR3raqoghz7GZJnCfitm16tp+Qdh2zjgz
         caNtsiZMVsV/SrZb1/qEZ4uvldzj2YBvauVpQ7aGbcsbQMKrxDzAgfMaNg8RN3A9pXi5
         8yIa5MBsY5NvuKhCcefq0pO0kvhvdCw60BsSODtblPaIVBL+38Zzxd+yANatx5O3UXct
         h+eknvMfTYlelyPBKDyN3UBjUx9DW6B62Vsb2nbvztjM5aS4A+OpZ0Y893jRRqvr17cL
         goMFYO13fTYz67AU6QFDIsZrP0jQaAiq614yn3R4rzRys6q4rmGym4VVAeIyLx9Q8DO+
         2D6w==
X-Gm-Message-State: AOJu0YxtPrye+zUcDWTKy7nQ5E9O2zWKukH+c5dkY9w4h+qO34AWGfTa
	p+kx7jKvVxUQOvlOg6ol+gE=
X-Google-Smtp-Source: AGHT+IGw5xKTNOEryOEGkm2GmWpAQMQ7XWxlFiwFmem0T2DEt25XxN9BwEq7jE9+BmH9cReNhqOUuQ==
X-Received: by 2002:a1c:4c09:0:b0:401:b204:3b97 with SMTP id z9-20020a1c4c09000000b00401b2043b97mr10662857wmf.4.1696687258088;
        Sat, 07 Oct 2023 07:00:58 -0700 (PDT)
Received: from david-ryuzu.fritz.box ([77.22.112.104])
        by smtp.googlemail.com with ESMTPSA id q8-20020a05600000c800b0032415213a6fsm4332043wrx.87.2023.10.07.07.00.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Oct 2023 07:00:57 -0700 (PDT)
From: David Wronek <davidwronek@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Joe Mason <buddyjojo06@outlook.com>
Cc: cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	hexdump0815@googlemail.com,
	~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	David Wronek <davidwronek@gmail.com>
Subject: [PATCH 0/7] Add UFS support for SC7180/SM7125
Date: Sat,  7 Oct 2023 15:58:24 +0200
Message-ID: <20231007140053.1731245-1-davidwronek@gmail.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231007_070101_910050_3633A4A5 
X-CRM114-Status: UNSURE (   9.43  )
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

This patchset introduces UFS storage support for SC7180 and SM7125, as
well as support for the Xiaomi Redmi Note 9S.

David Wronek (6):
  dt-bindings: ufs: qcom: Add SC7180 compatible string
  dt-bindings: phy: Add QMP UFS PHY compatible for SC7180
  dt-bindings: arm: qcom: Add Xiaomi Redmi Note 9S
  phy: qcom: qmp-ufs: Add SC7180 support
  arm64: dts: qcom: sc7180: Add UFS nodes
  arm64: dts: qcom: sm7125-xiaomi-common: Add UFS nodes

Joe Mason (1):
  arm64: dts: qcom: Add support for Xiaomi Redmi Note 9S

 .../devicetree/bindings/arm/qcom.yaml         |  1 +
 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |  1 +
 .../devicetree/bindings/ufs/qcom,ufs.yaml     |  2 +
 arch/arm64/boot/dts/qcom/Makefile             |  1 +
 arch/arm64/boot/dts/qcom/sc7180.dtsi          | 70 +++++++++++++++++++
 .../boot/dts/qcom/sm7125-xiaomi-common.dtsi   | 16 +++++
 .../boot/dts/qcom/sm7125-xiaomi-curtana.dts   | 16 +++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  3 +
 8 files changed, 110 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sm7125-xiaomi-curtana.dts

-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
