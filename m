Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 584CEC64EC3
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 13:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jaCqL1cAMUOwSmOKGaBcMuktn1tPLCPoeLLgEYvH4tY=; b=TcWyqlDqrOdegf
	lzL0woNHTwrgc3dkYPnxWfUBZU5VpVvI9U3Dh+D2Iocog2mfFr3qTT7ngmTdvIoD+H97Q/razgpZ1
	Ctf7tVqac6wzH3sFloK59iAKJYpRmGtbXiF/nATwNzLzPtnTA8y3qH/mC64q2j10eN4mByaGQjl3h
	Izpjxa1XFWi+9gZqhi07/PzfZXMJv0iIcTWUoJ3hyK+0/UXdTLQ9UudVkXOFkUXtgnKdv7nEn5ca+
	Lajk1u8vTr78+pfZB2b16lvI7q8nmYlKLQAmkGTP2U9J2E1jxoZubqthyqYXr7oGGEGNgJSLaL02j
	o1oxOUHSBmE0II/UTg5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZnL-00G2VI-Nk; Thu, 02 Feb 2023 13:38:31 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZnI-00G2UF-A0
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 13:38:29 +0000
Received: by mail-wm1-x32b.google.com with SMTP id o36so1421979wms.1
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 05:38:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=C2GNH5vdMMAxeW3/q88hsHEut53C5OA4g89R8Sa30oA=;
        b=sHeLh7rejmRl+Gs2HPwza9sBAUoFpbJedUDKUDHSvVf62Tt9ocWNLHxaEhcWrift9c
         WXietGBQxmTdvzLyoc8L7B3aVXpk7Rm6he0GNmhG6CQEN3iwwIMbR1SxYZ1t0CFfWwF0
         Sr5WK/9m8siRIGJebaEnnl7PchVOqiGUqRzzW+5pmOrlHwqNeLuAK4zoNiCHnaTqnDru
         bnSf9zC402o9bfX4a4QfzUo2befObSYEKoDcevtFqKuStcTtd0POLq1OgDDV45qbPz0H
         BIQZrkO64QCVPHYv0C8YBFMtmmKBrHs2vrVJpgFYMO7lHbiCPqiIQqBK2x2vNAxFlhsX
         rjHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C2GNH5vdMMAxeW3/q88hsHEut53C5OA4g89R8Sa30oA=;
        b=kDeBrH6H4JXOI+S4byVUq/fmTZsauaiK8/bL/6sHGXmeMU9enYsy7fMSk9YBMMPLXp
         mFwIeh0uqfTHT6ZpN2mXGILPQu20E5iWO4F/Acari3xb7G3IY0x8oXZRw6gfyIHpoHmE
         eNJDMy7wdsFm07gKvxQGFOJdb+dtl9JmaMCQn+Hymcmy/IIjNeh6Kj864uTDwAqgWBbS
         AS2V922sODry3m0N/W+zyF+70S57J5mEtSZWeiCHKPXxXODNSXKBnSHcBHHT98C3ylut
         BsqHFJuOJ7X42LAfopTrIdvih0NgmC0ngHfHaREHhIX51vYiqoXxIIBZCUT7/COBqCtT
         PElw==
X-Gm-Message-State: AO0yUKVUAHJOKhExgsNLx/JJ2xlz53NZZdvBUXbxzm0Zu2Xm5+DgRDVM
	pXzGucfQ9N28LoAAZtPqwrXM8A==
X-Google-Smtp-Source: AK7set/pSxSbtteJLy+n0jBpDdMHf8zvoXMVU/bki2S6y/dGnUgfpt3devM6jAVBRRAIgjX33ZWNLQ==
X-Received: by 2002:a05:600c:5113:b0:3df:9858:c02e with SMTP id o19-20020a05600c511300b003df9858c02emr1920935wms.3.1675345106716;
        Thu, 02 Feb 2023 05:38:26 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id y10-20020a05600c364a00b003daf7721bb3sm4672657wmq.12.2023.02.02.05.38.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 05:38:26 -0800 (PST)
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
Subject: [RFC v3 0/7] sm8550: Add support for eUSB2 repeater
Date: Thu,  2 Feb 2023 15:38:09 +0200
Message-Id: <20230202133816.4026990-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_053828_368296_3D0BF7D0 
X-CRM114-Status: GOOD (  12.73  )
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

Changes since v2:
 * moved the bindings qcom,spmi-pmic patch before the repeater schema
   patch in order to avoid the repeater schema validation failure due to
   phy pattern property not being found in qcom,spmi-pmic schema

Changes since v1:
 * the repeater driver is implemented now as a PHY rather than adding
   a new generic framework for USB repeaters

Abel Vesa (5):
  dt-bindings: mfd: qcom,spmi-pmic: Add pattern property for phy
  dt-bindings: phy: Add qcom,snps-eusb2-repeater schema file
  dt-bindings: phy: qcom,snps-eusb2-repeater: Add phy related properties
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
 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c    |  18 +-
 9 files changed, 380 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
 create mode 100644 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
