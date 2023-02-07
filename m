Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46EC2C636CC
	for <linux-phy@archiver.kernel.org>; Tue,  7 Feb 2023 13:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KUvzPbn54BYIp1ytxMeWUqvkzJBEvZq+vEyiKHE2xxg=; b=IoS53WbMGGNOwj
	ksO69PG0QLz1ZDFV5kZAx2nSQ/9yFLBWvGS16J3CrFqvUAP/ZwVDEOCqJ49//Xn1v68USzP5cCSrA
	TDjIjZjfVJCBnzyFhZDwDxXbyV+oLjB1PgoT6x+fSGB5ki4evYIX15lH0Z7bymiJJuB8GTAeExzAo
	hiKMi0i0/O6HAwNvJvH4z+zdBFevSMpdX3IXyVOGN9NJc+/gRmHvDFz0Ymc46SBjZPxfssEXIvzcQ
	8KidV9rmIDpsQd69Y+oTi9/JNGb6YJg7EXkoUf+EVB/zQNwLdiBuXuOIKIct5911RI37la+UFya1U
	JVJuSUOd+QGp2rV7lMIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPORz-00CMni-LD; Tue, 07 Feb 2023 13:55:59 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPORx-00CMmo-Ec
	for linux-phy@lists.infradead.org; Tue, 07 Feb 2023 13:55:59 +0000
Received: by mail-wr1-x432.google.com with SMTP id k13so6225878wrh.8
        for <linux-phy@lists.infradead.org>; Tue, 07 Feb 2023 05:55:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JZVy6UETjo48T8sbWkjn8fWSpf7jaH8RRC1DRDpNkX8=;
        b=DXafruirc1KWzQxIKCu5wqiV6RseMKBRfEAUw6h4nDf9bvj5qF5DuxctY42EIn8PBP
         DSF11ev9bfgds55L88Umbi5Vx1TS4tH1Hgu2PTu2NubZUUJFquouZ5qadV9tl0Dcm6Vq
         2fQfVkxkHGCX4wqK1ViBYx950Rfp2WZt1/o89xbICzO+1RwerYLAxtfM3cAO0LJIYRgG
         FH/XGH3YOfCnViE5eqhxuxToliylvf9d/M+ivvvR8u86cPZhJGkWlz4WhD+PHBNbjXeW
         lrSkvlCF9MjmDIYBbr+/YPUXTkQBm5Ufs4jNai3TWNXn4m3WvXXrEYW+XVJo4bB/oTy8
         1Hqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JZVy6UETjo48T8sbWkjn8fWSpf7jaH8RRC1DRDpNkX8=;
        b=m+7FhbIa0wUhXxYtpOeIyiPBXa/lLBSBAnaQ0ROVENopP97IEP0QL0RPZ2ZV8iv6N1
         ymJ7mOWTM3Z2fsLRcqq8+s0GavgQW17jRKa3ABk2Y/iEFRxOc5IlTF7JdzaiIEPkxFWe
         bmGJwMijs9EjUlUQdDaLvkwlwoYWXCb/icRvKd4OLDxdomUEABy10lRpdPrtXP2YOXX8
         75zw5xZ727UOzp5LeGOHaKEI4MomVCz0tSGjWONqAacSPUznTcnzFQSWsYGxba0AfPgE
         6gbaMNujrOin9uEMHCyb40iVT/0/aFRGLj0sPSc9D1Z0PvVImMXtkaQHR0CGv2tdCtr9
         KrLg==
X-Gm-Message-State: AO0yUKXEwfMLghZM2EXGDzGk8GMkj7x8eW0UlkewFnXSKuHDyj4z7iPs
	y1omnZu2g8c4ijdPExwnULupIg==
X-Google-Smtp-Source: AK7set91Op9UQN4lc/XoWrfKxdUUccdREuCUJsx0iI1vqbpMl3cZEbxrNCdDV0wR7zpkr7cLv4vfsw==
X-Received: by 2002:a5d:5745:0:b0:2bf:e528:336b with SMTP id q5-20020a5d5745000000b002bfe528336bmr2881141wrw.38.1675778155250;
        Tue, 07 Feb 2023 05:55:55 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id p10-20020a5d59aa000000b002be5401ef5fsm11611312wrr.39.2023.02.07.05.55.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 05:55:54 -0800 (PST)
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
Subject: [PATCH v4 0/7] sm8550: Add support for eUSB2 repeater
Date: Tue,  7 Feb 2023 15:55:44 +0200
Message-Id: <20230207135551.1418637-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_055557_518282_CC751177 
X-CRM114-Status: GOOD (  14.39  )
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
https://lore.kernel.org/all/20230207114024.944314-1-abel.vesa@linaro.org

Changes since v3:
 * This time is a normal patchset, rather than an RFC
 * reversed the order of patches 1 and 2, in order to make the repeater
   schema available for the pmic schema update

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
 .../phy/qcom,snps-eusb2-repeater.yaml         |  48 ++++
 arch/arm64/boot/dts/qcom/pm8550b.dtsi         |   6 +
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts       |   7 +
 drivers/phy/qualcomm/Kconfig                  |   9 +
 drivers/phy/qualcomm/Makefile                 |   1 +
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 259 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c    |  19 +-
 9 files changed, 357 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
 create mode 100644 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
