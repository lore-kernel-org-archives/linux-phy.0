Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE54DC54FB9
	for <linux-phy@archiver.kernel.org>; Fri, 17 Nov 2023 20:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LsaJvea5yAB0j5Olwq2vNanmyGpGtAOkRlAEwVotww0=; b=eCUCViT4oS0Ai0
	s0aKmiWdtuJjaLPROTRYHpFXS5a6Fp8MF0BT++U8JYl4/eqGbZlURrJCYjjv4jP5yHLaZgsV123+k
	InWHnBn5USN15Zf4vMJRilO11QjNrgvUHCtJCimcU9J+l4AjXF1YaPxyZaRhH8bHYx2tsG5wsKEgM
	RhG8dsl9BSQaqwsa7BY2IJeDXgXmatepHB7DCynAn3J4yRXr1z6YD38OTTJhD5UQPiSKXc+CUwf21
	VKPnJ+AbbyJcUevuQ4oA5HsYz3pDynotYYv78ha2WmumSikXMx9tAH4Z3SOWxE6L5s50uNtGvXpx7
	jL9wEgwAYgl29Ug14mFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r45Hf-007Dkr-19;
	Fri, 17 Nov 2023 20:17:47 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r45Hc-007Dit-0u
	for linux-phy@lists.infradead.org;
	Fri, 17 Nov 2023 20:17:45 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9e2838bcb5eso341210666b.0
        for <linux-phy@lists.infradead.org>; Fri, 17 Nov 2023 12:17:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700252260; x=1700857060; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jO4FinG60TptnJlL0I/aBKs5ITFw+rqL2aoAvZdWzlg=;
        b=iXu8/xT/rRk4enZH0t1CMnZ/aBM2XFwYxyNg9FodPaepRpsDU62Vcx8UvDMf4sEF41
         j7DUS6DSVwEgBKz5+w8I14INz60nbWAY98aRIZmxwTLJ0FukV2GxrHHPe7sD04apusES
         SCTNJu5cIeLzwh6ouT6Ub4FDzSBlwiZ6Y01KmkwjOaH3l1b5GVSqxzWAbXXMLtOBeL9Q
         36Sd/7RVIFqg00tejoXVkrP5Ami0LBlAOt7uM6s7QMZVsbr7MjMktETrU/1M5+Npo9Q8
         kMLnjeBpvrbYYKs6uDrQzMl7PeD7XJIJV/KogM1SQvUVF3mQciDKJBNo4TOUYLGWptOz
         yAUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252260; x=1700857060;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jO4FinG60TptnJlL0I/aBKs5ITFw+rqL2aoAvZdWzlg=;
        b=aJ5xwoJrcB4CnOKSr0b7ASjECH4ttg2/Paxkba5iK7wl90/PDxwRmW2Xic6p3fAFC/
         8DxWM/0ecoE97DTuC+W1Pps0lwFV0E5hrSFsE5/8XIGTKsyz8zJKTDK8HwgR8ymgjGaY
         Prx5Yh1fRLfIuqeBF+TXJxQ8K5Z74WTMYlHq0r3ewNIh5qmyyPmagfzH2K8UkJdt9sVk
         kWqHuYCrG9jsgRnZ7sDbJL424y3cv3pCAFloxYsRdrwLcN9EmzKptFKaE2RVDQUAnp0X
         f+wyCQi7MpAfosDZEb39rz0+J5FZMdlUKw8B7H2YT1cqqTpN2aNYEZLeCvX68SqB13yE
         mK/w==
X-Gm-Message-State: AOJu0YzUNIW0Pv+w5LdxW9qk/ABaB5DJz0lq3xDV2wwUX8sxMv0Nvc/V
	OvmFQ2zuIHaKCTVD8cXBcLE=
X-Google-Smtp-Source: AGHT+IGBtBUbtAsV/vAYb+ntpU2hrBW9x5wudUtgIOuOFs8V1oWXMInP7DvsvQycY/b65fJ4JKgGWQ==
X-Received: by 2002:a17:906:2ce:b0:9e4:716:4e32 with SMTP id 14-20020a17090602ce00b009e407164e32mr147592ejk.11.1700252259887;
        Fri, 17 Nov 2023 12:17:39 -0800 (PST)
Received: from david-ryuzu.fritz.box ([188.195.169.6])
        by smtp.googlemail.com with ESMTPSA id e7-20020a1709062c0700b0099d804da2e9sm1130630ejh.225.2023.11.17.12.17.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:17:39 -0800 (PST)
From: David Wronek <davidwronek@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S . Miller" <davem@davemloft.net>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Joe Mason <buddyjojo06@outlook.com>,
	hexdump0815@googlemail.com
Cc: cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	David Wronek <davidwronek@gmail.com>
Subject: [PATCH v2 0/8] Add UFS support for SC7180/SM7125
Date: Fri, 17 Nov 2023 21:08:32 +0100
Message-ID: <20231117201720.298422-1-davidwronek@gmail.com>
X-Mailer: git-send-email 2.42.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231117_121744_339917_AC6B9F25 
X-CRM114-Status: GOOD (  11.55  )
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

This patchset introduces UFS support for SC7180 and SM7125, as well as
support for the Xiaomi Redmi Note 9S.

Signed-off-by: David Wronek <davidwronek@gmail.com>
---
Changes in v2:
 - Fix device tree binding for QMP PHY
 - Separate ICE into its own node
 - Fix style problems in sc7180.dtsi

--
David Wronek (7):
  dt-bindings: crypto: ice: Document SC7180 inline crypto engine
  dt-bindings: ufs: qcom: Add SC7180 compatible string
  dt-bindings: phy: Add QMP UFS PHY compatible for SC7180
  dt-bindings: arm: qcom: Add Xiaomi Redmi Note 9S
  phy: qcom: qmp-ufs: Add SC7180 support
  arm64: dts: qcom: sc7180: Add UFS nodes
  arm64: dts: qcom: sm7125-xiaomi-common: Add UFS nodes

Joe Mason (1):
  arm64: dts: qcom: Add support for Xiaomi Redmi Note 9S

 .../devicetree/bindings/arm/qcom.yaml         |  1 +
 .../crypto/qcom,inline-crypto-engine.yaml     |  1 +
 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |  2 +
 .../devicetree/bindings/ufs/qcom,ufs.yaml     |  2 +
 arch/arm64/boot/dts/qcom/Makefile             |  1 +
 arch/arm64/boot/dts/qcom/sc7180.dtsi          | 69 +++++++++++++++++++
 .../boot/dts/qcom/sm7125-xiaomi-common.dtsi   | 16 +++++
 .../boot/dts/qcom/sm7125-xiaomi-curtana.dts   | 16 +++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  3 +
 9 files changed, 111 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sm7125-xiaomi-curtana.dts

-- 
2.42.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
