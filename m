Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C21FCC636D6
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 19:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AruNanXVK+3nX6MiOf9efJQWdZRz/zFdEgVqlB//U+k=; b=VuvApIIN9dv5rF
	xhb31CJZma1FT/1kOBgRpfLt4x0OAjMlxWZQ7AeKCW7DgH1wPKACEMagIS0du5Twaz/2pTRtV2uTb
	FhMGxEM2t3MDkV5rdzYpkvP0Qc+/aaDMHhhGzXxU1cGGjTdpOo1xEpJ9FHnTTxMnKneOLJT2maTqj
	PejMK3sy4HHghF9Wf1tAM+VvMUsC0AtvPWWxrKmIArN/QAsFIeaWQgGZ2VarQp9AvYrEfDKNaSt1B
	t6BOqIZZ+eYMx4QZ5fFHSkv2nHjrXtIKF+2fR0qf1v4vAL1FaY5dIS5+4tGpKdQ0SKh95wxswhSZS
	96I72gxO1Q5QRyidjR5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPphr-00GhLw-5Z; Wed, 08 Feb 2023 19:02:11 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPphn-00GhKH-TV
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 19:02:09 +0000
Received: by mail-wm1-x32f.google.com with SMTP id n13so14033813wmr.4
        for <linux-phy@lists.infradead.org>; Wed, 08 Feb 2023 11:02:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3A5KG8ddYt3K2NbI6U6lMWAvkEN/aV9gsP0XbAJMpVo=;
        b=KQ/Y2/c3NdJg1E0/3saDg4EN8eLMH/ZHol8lekGfsVkkz7gVSbqot26OEIaD88s6TM
         ZMtr3nipTC3n4XCDBlEeSHWXtBXFXrb/AIGJJrQWHZy4fQwoByMVNmlyduIZ7tbgftBU
         Gh6r0kqwYyNPgLYWijdBIcYitcCw9zxOIO5YauoaVkdR4mKIe0cJ7Xmqc3hzpR6unI4H
         bpz5o4p+3kZBZY9n9u01jb9DsU9mOBmyUc9QPLeHxsXMU7SrQSvPSotw2WXW3eV7rRCC
         lN+4ZWQ/ukr3n46SblitVuvkJAOTlKjHmveC/lZdUtB+pr+e+0DQFs+L45dMk1ES8j+1
         cfgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3A5KG8ddYt3K2NbI6U6lMWAvkEN/aV9gsP0XbAJMpVo=;
        b=yBiLxSHwL+f+bTNobqyo2u4zdYgpGRLUfaDDZm4WwWertLt7pRng4Jfv+5L767Nx7i
         +g9+z++R3zMWW3M4eNX4MkUdg7DPAuoZXoUfVTVI/S8Q3zDzPtg/D99Ux0A8s/yQlSBZ
         /Dsp55DbM3RvE9hMYZx8NQk8UqbjHyJY2MY1YRDyKxMG10wNVaTgFF2wY6ZO2HN732gR
         cAez3X8zYyORA38vHeYytQo3/ZSxB01oVY+tHlM/myvU76j/+wVur+3QDOOXGI+TAa+Y
         JFH3ipyqqLBR5cN/QwwE89m9ddqcuUCE0Pkjiwdolkvt2AY6rFc2WlfMmTCJvL8BMUI8
         F4hw==
X-Gm-Message-State: AO0yUKV6jVW5JWJ/GcY8+AzKLyn1iOoSgC0SqIMCBowY421FXkMRsyzD
	qO1LzD2QxQvGTg17ZRl8lQhdvw==
X-Google-Smtp-Source: AK7set82THdX95O78KDVlFQudiHHASK8Ft9xkYyq9++/erK3Gg4+fmZQAhI3tGjKYsryDyYx4Z6lBw==
X-Received: by 2002:a05:600c:30d2:b0:3dc:4fd7:31f7 with SMTP id h18-20020a05600c30d200b003dc4fd731f7mr7142679wmn.41.1675882923974;
        Wed, 08 Feb 2023 11:02:03 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id n16-20020a1c7210000000b003dc1d668866sm2650327wmc.10.2023.02.08.11.02.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 11:02:03 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v5 0/7] sm8550: Add support for eUSB2 repeater
Date: Wed,  8 Feb 2023 21:01:53 +0200
Message-Id: <20230208190200.2966723-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_110208_069879_AED03710 
X-CRM114-Status: GOOD (  12.80  )
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

This patchset adds support for the eUSB2 repeater found in pmic PM8550B,
used along with SM8550. Since there is no dedicated generic framework
for eUSB2 repeaters, the most appropriate subsystem to model it is the
generic phy. This patchset also adds support for such repeater to the
eUSB2 PHY found in SM8550. Basically, the eUSB2 PHY will have its own
"phy" which is actually a repeater.

This patchset is based on the following patchset:
https://lore.kernel.org/all/20230208183421.2874423-1-abel.vesa@linaro.org/

Changes since v4:
 * added Krzysztof's R-b tag got patch #1 and A-b tag to patch #3

Changes since v3:
 * This time is a normal patchset, rather than an RFC

Changes since v2:
 * moved the bindings qcom,spmi-pmic patch before the repeater schema
   patch in order to avoid the repeater schema validation failure due to
   phy pattern property not being found in qcom,spmi-pmic schema

Changes since v1:
 * the repeater driver is implemented now as a PHY rather than adding
   a new generic framework for USB repeaters

Abel Vesa (5):
  dt-bindings: phy: Add qcom,snps-eusb2-repeater schema file
  dt-bindings: mfd: qcom,spmi-pmic: Add pattern property for phy
  dt-bindings: phy: qcom,snps-eusb2-phy: Add phys property for the
    repeater
  phy: qcom: Add QCOM SNPS eUSB2 repeater driver
  arm64: dts: qcom: sm8550-mtp: Add eUSB2 repeater node

Neil Armstrong (2):
  phy: qcom: phy-qcom-snps-eusb2: Add support for eUSB2 repeater
  arm64: dts: qcom: pm8550b: Add eUSB2 repeater node

 .../bindings/mfd/qcom,spmi-pmic.yaml          |   4 +
 .../bindings/phy/qcom,snps-eusb2-phy.yaml     |   5 +
 .../phy/qcom,snps-eusb2-repeater.yaml         |  52 ++++
 arch/arm64/boot/dts/qcom/pm8550b.dtsi         |   6 +
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts       |   7 +
 drivers/phy/qualcomm/Kconfig                  |   9 +
 drivers/phy/qualcomm/Makefile                 |   1 +
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 259 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c    |  19 +-
 9 files changed, 361 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
 create mode 100644 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
