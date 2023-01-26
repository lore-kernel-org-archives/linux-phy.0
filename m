Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C92A0C54E94
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jan 2023 13:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AS3CaHg3dOTL6/pDOiki923FPKspPheYDjAo80NzRms=; b=LWlh8JwHdhmnwy
	L1GS++RtOGrk/yg5J4h3vvZWLS0pdL2F5txxrGrwwqkl5wc2Kc1n8AVfO45E3eImVX+4Sb15/luo1
	FDUt0uVpmVUo6HlKT6Z1ECFymMDcpl6/PByQZz1IKZIctZwhr5sINw8vZYl0Dvb3vwbO5Yc+4SOmU
	1UUgR3d2WmS35Z2CO05+EP5+yQv17bhTml4u1npgtl8IOMW98eKW7pHzRo3q3gM9juIUuhgvbuuN+
	wTVXughR+y+IA3HaYFITo/+gP931yJBSdKTONdU5bkpZ79OTuTWqw67qVO0vfmTuHsVIyWind/ie9
	/TO/M9ybsmjIezvUbAVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2mf-00B5RU-Lj; Thu, 26 Jan 2023 13:59:21 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2mb-00B5NE-Ps
	for linux-phy@lists.infradead.org; Thu, 26 Jan 2023 13:59:19 +0000
Received: by mail-wr1-x433.google.com with SMTP id h12so1840494wrv.10
        for <linux-phy@lists.infradead.org>; Thu, 26 Jan 2023 05:59:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7SXWg/UEnWdCis3IGlYYusZ1AbVRzZgkweMtomL0X34=;
        b=djedN6EI0YjG2TUzDdsbG62EW7QU8HA1GXxJCVD2bFVwf79BU0bI+CjPIJelY+ZgBX
         mQvhucJ8F2KjnYlgjQyAWgGCAVHVAqaa0gGmih50MbDzafLSctkCQ8UEJZ2VIJkNqgfj
         0iZ9OcO3G0DyH3NYtejsq0C06AXaLLEiqeAAH5Guf6i6PSnIRpLMudY5LTFgvRJk31vL
         L5nVCoFdnVtK4VNeVwlj7IjbJDNLHONboUWP9DfollQCDi/yun+FQhNEk3sfGl1pYl3c
         XnIP+iaR0ND2e7ua5GAnYn0Dnaw51zWISiP26CAUBRChaRvn/pzJO3O3Anyz3fTh3iPH
         gvZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7SXWg/UEnWdCis3IGlYYusZ1AbVRzZgkweMtomL0X34=;
        b=oKJ2jZPuHgSzipauclTwkB3O8gEeCqquHVxNyb2LBm9oWT8z/bq9DiKt88444N5zxD
         qShRUTmZZZKy+zhH6NfBcilq37yThbPAH2RoRn4DBq+ovU9+bgaGt7Mj54yN4fYgIbVx
         DkaNVJHTiU0Q/xiesi1O6u84LAjn7rA+wDqpGORDP+pWwOJusthl2UwEHm8tjyqH96oy
         GSpQxe8uqjz8N/QqUDk1i4v07wz56/59ILXLjeJ1tdb2+Vb7cAQzTUvfclXV1N3v7c9C
         46Zqu8xdCgBhpN3sZDu9npP6WtRB/aOIaL1zZlZDcCM1qCj4lpzMxhwy/7lAuEmvYsM2
         e1QA==
X-Gm-Message-State: AFqh2krn+XNBgaZBkoPqzfEbjoBUenZbLNE8OMFhnj65aAOGJKuWKY5H
	gEHT6msnvvW6u5iWnn2zSAI6ZA==
X-Google-Smtp-Source: AMrXdXuR3Tyu/FQyhnmqD9G+QvNGcy6jxD2Hq3AI+tj8JQjhgMZA/Lj8JaQs0NUZIbv9iDi0l9zQwg==
X-Received: by 2002:a05:6000:24e:b0:2be:4639:ee26 with SMTP id m14-20020a056000024e00b002be4639ee26mr20771100wrz.0.1674741554063;
        Thu, 26 Jan 2023 05:59:14 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id l15-20020a5d6d8f000000b002bfb37497a8sm1594067wrs.31.2023.01.26.05.59.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 05:59:13 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: [RFC v2 0/7] sm8550: Add support for eUSB2 repeater
Date: Thu, 26 Jan 2023 15:59:02 +0200
Message-Id: <20230126135909.1624890-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_055917_885113_337CD0D7 
X-CRM114-Status: GOOD (  12.31  )
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
https://lore.kernel.org/all/?q=20230126131415.1453741-1-abel.vesa%40linaro.org

Changes since v1:
 * the repeater driver is implemented now as a PHY rather than adding
   a new generic framework for USB repeaters

Abel Vesa (5):
  dt-bindings: phy: Add qcom,snps-eusb2-repeater schema file
  dt-bindings: phy: qcom,snps-eusb2-repeater: Add phy related properties
  dt-bindings: mfd: qcom,spmi-pmic: Add pattern property for phy
  phy: qcom: Add QCOM SNPS eUSB2 repeater driver
  arm64: dts: qcom: sm8550-mtp: Add eUSB2 repeater node

Neil Armstrong (2):
  phy: qcom: phy-qcom-snps-eusb2: Add support for eUSB2 repeater
  arm64: dts: qcom: pm8550b: Add eUSB2 repeater node

 .../bindings/mfd/qcom,spmi-pmic.yaml          |   4 +
 .../bindings/phy/qcom,snps-eusb2-phy.yaml     |   9 +
 .../phy/qcom,snps-eusb2-repeater.yaml         |  48 +++
 arch/arm64/boot/dts/qcom/pm8550b.dtsi         |   6 +
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts       |   8 +
 drivers/phy/qualcomm/Kconfig                  |   9 +
 drivers/phy/qualcomm/Makefile                 |   1 +
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 278 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c    |  17 +-
 9 files changed, 379 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
 create mode 100644 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
