Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BC66C47258
	for <linux-phy@archiver.kernel.org>; Wed, 17 Jan 2024 14:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I08ozR7blbp0APgWVHcBxAB6o2WKLX0qDIB+O9juIfc=; b=wsO2bf2v6zSM8a
	5zrRyk82/QTqICFchgXr0NQPEENcQ1wUlHNn0xggLw8QJtNaXfIOZxlY4YjL+iSHVcvj+iwna9eeq
	wSds0bN+PYFfPQMnnALsEWUO+RUfND7DuDy5qqfx0VIGBis/Lzs/UFixegywVBftMRRrlJEKB+F+1
	LFIwJOs3eygNXtQpCdkkgQ/nAuhqU30rcj9mssOViF1xEAOa/zCXvAxx4E8VohzZAK1olhZfBihMr
	vAHHeHWgX9pnP/G5qaDMO2h4OCRZC0WxAWj7ed1MGHUh2+3iu6i3sOSiexj1F5HgTSw8sFGnt7ely
	pL6kuuVgkP1o+gOoH+CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ6Ws-00Gr5B-2R;
	Wed, 17 Jan 2024 14:04:30 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ6Wp-00GqzH-22
	for linux-phy@lists.infradead.org;
	Wed, 17 Jan 2024 14:04:29 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-50ea9daac4cso11678398e87.3
        for <linux-phy@lists.infradead.org>; Wed, 17 Jan 2024 06:04:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705500265; x=1706105065; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5/B2R8i2UwNaK6kv0GcOo8eHMF4ro6wVFkh1Kz4AGgE=;
        b=S7Hr7DU8FrOwRJHR31lbnmiiunEVClgp2l7QQanX1uv5qnAF/nDpY1WKjCtPVwg/QC
         gJTxWIqvS6AuRID/7ozEGx52d45olrZLPI1iZoXXB0jvpndPFOaphEnZhQVDxTrjs/2e
         oqvyXWo/wl+W/BF8E57hPrx5eVWs9BAoVWHKgD049QYw0iDVWXPB2vFTFQENXZb+m0Oj
         Zff/iBZcrNPnG/UDqMKOFSg26lwyrV3WE8+Qhx8XRzChxXUccVTgMDVnUWW9dV+sp0LN
         cSAOemD2QtwqaWwFiaEZJsnzvWm6ArP1uIgyEGwnUPr2a5a759YEw6fcwN10ahqNpT9R
         BLxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705500265; x=1706105065;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5/B2R8i2UwNaK6kv0GcOo8eHMF4ro6wVFkh1Kz4AGgE=;
        b=jTGHLescGG7JpDHbQkGnMd0x/uqM72egWW2IBMUnC5UkTGO0qfKqNkjd7R0PkB6R2A
         l5XvI118eJPmWa9ObDvIt1PZiLc+Qfo2FTBG7S5CPMiLsJRgSLElCf3noXMvqiJZ/sTg
         Kv42fxAlLdPbzGlN/Ep5WL8BOPOkVH2naw+RRcK8LWMRdvCvRpd4bvskEqrKLCNQKrng
         lKz7IrA9b8K3xqIMiZjaApeC/CrMi8cZJndq9viPhz2tM3+D2kOGCjfOyP47myucBsOl
         /Ogiv9nEzFXpYnZVQqqce1YRKycW20NiZbK18YEV6OuhNN2wKLy+5j9G2ZVWn/6obyC2
         Sl8Q==
X-Gm-Message-State: AOJu0YxM/xL5yhVr6U0s4rovwuPL0TWRGoWsUGNRsqG1m0XSjyNm+m3v
	7HyThdBA7mqOR8g3Cfi1TOptB9QT5E5uYA==
X-Google-Smtp-Source: AGHT+IErux1sMeAqdhWkaZXehfNGakmpthvwi4xOe9yPto2lwcwykC6xj5+JSWU3lu5Nh2w3eKdPHw==
X-Received: by 2002:a19:8c58:0:b0:50e:812c:1acf with SMTP id i24-20020a198c58000000b0050e812c1acfmr3853287lfj.113.1705500264642;
        Wed, 17 Jan 2024 06:04:24 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y29-20020a19915d000000b0050ec7a26420sm269711lfj.204.2024.01.17.06.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jan 2024 06:04:24 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v2 0/6] phy: qcom: qmp-usbc: properly handle the clamping
 register
Date: Wed, 17 Jan 2024 16:04:21 +0200
Message-Id: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAGXep2UC/32NQQ6CMBBFr0Jm7ZhOVRBX3sOwKKXQSSptWm0kh
 LtbOYDL95L//grJRDYJbtUK0WRO7OcC8lCBtmqeDPJQGKSQZ0FU4zv1GoNdMLuE2qlnQBJ0bc0
 46JEklGGIZuTPHn10hS2nl4/L/pHpZ//mMqHA5tTLQTV1S/pydzyr6I8+TtBt2/YFtBg4m7UAA
 AA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2555;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=x81CLncY/hIwp8vTAImj73oz1jLkJ9NlHddtBkJ5pxQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlp95mMacSd+CX45gkjTa81604OBU9Jbtyvkuyk
 r/u2D5gRKiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZafeZgAKCRCLPIo+Aiko
 1UHdB/40oZ6ZQjoG9rx7y2T6f4ugeoDywqi7KNkuDTEmJaRcLW/YG2rqMrB0/KUC2Sla5Z9suks
 A0EudD8KkMnCBVDo6TLI/A9fmfCJ9QeFLTI+sXPfsEQLtHDj6nGDHv4QXEiZnX818kRb9ToDaZ1
 riPwXHI4MHSv8sTdOqGtRWJvqPJZIMmpDEoKQl4xt9cm/Cf6Nikhxh9FGwfzo79w2Vq5QOUMduW
 H2HgdzQKXhs24gNbkU0mdQp6i43dZcmGTffjqjVwZGg9PheyS68Ngann5uzk8d2+R4qVb+tfQLr
 dD37J9lHnK0kkumwhsR3kfaWl0L67h3lB7H3ojpPSjli4KK5
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_060427_696091_115563DB 
X-CRM114-Status: UNSURE (   9.49  )
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

The USB-C PHY on the MSM8998, QCM2290, SM6115 and several other platforms
doesn't have built-in PCS_MISC_CLAMP_ENABLE register. Instead clamping
is handled separately via the register in the TCSR space. Make the new
phy-qcom-qmp-usbc driver correctly handle the clamp register.

For backwards compatibility the driver treats these registers as
optional. They are only required for the PHY suspend/resume. However the
schema declares corresponding property as required, it should be present
on all relevant platforms.

At this point I'm not sure whether having a single TCSR-based register
will be enough or whether we will have to add more TCSR registers in
future. In order to avoid repeating TCSR handle (and having multiple
instances of TCSR regmap in the driver) use qcom,tcsr-reg property
rather than someting more exact like qcom,vls-clamp-reg.

Dependecies: PHY-related changes of [1]

Note for the backporters: if the patch is packported to the kernel
before the phy-qocm-qmp-usbc split, the phy-qcom-qmp-usb driver needs to
handle both PCS_MISC_CLAMP_ENABLE and VLS_CLAMP registers as optional.

[1] https://lore.kernel.org/linux-arm-msm/20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org/

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Changes in v2:
- Fixed the TCSR region definitions (Konrad, Bjorn)
- Link to v1: https://lore.kernel.org/r/20240116-usbc-phy-vls-clamp-v1-0-73b2da7691c5@linaro.org

---
Dmitry Baryshkov (6):
      dt-bindings: mfd: qcom,tcsr: Add compatibles for QCM2290 and SM6115
      dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: add TCSR registers
      phy: qcom: qmp-usbc: handle CLAMP register in a correct way
      arm64: dts: qcom: msm8998: declare VLS CLAMP register for USB3 PHY
      arm64: dts: qcom: qcm2290: declare VLS CLAMP register for USB3 PHY
      arm64: dts: qcom: sm6115: declare VLS CLAMP register for USB3 PHY

 .../devicetree/bindings/mfd/qcom,tcsr.yaml         |  2 +
 .../bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml    | 11 +++++
 arch/arm64/boot/dts/qcom/msm8998.dtsi              |  7 ++++
 arch/arm64/boot/dts/qcom/qcm2290.dtsi              |  7 ++++
 arch/arm64/boot/dts/qcom/sm6115.dtsi               |  7 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c           | 48 +++++++++++++++++-----
 6 files changed, 71 insertions(+), 11 deletions(-)
---
base-commit: 3cbd23fa6ef85801574a4b0d3f81fb365e06b2d2
change-id: 20240116-usbc-phy-vls-clamp-10189efdcf12

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
