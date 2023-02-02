Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68F2BC636D6
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 13:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LmTf+LMNSg9jf82NYz8KN60iRU/Q2rXrbcOFRjHxdBg=; b=Bjvg2AFJ+BNNhw
	0fGjHJ6NsweCW4WheTCPZRJk15U4E/FZPmsKKtlbnKOZxcGkcNmS43Kn4KRrYIyp+NOOkOs3gwe+c
	qw+OOlnGlvX+cFhIwbVqzyhiEtJoGZmnk/ryNDrqHCa9pRgMavi4iZlXLO2tbgyxysu3jpuV0M2V7
	//Mk5GieVF5XoxCLiLxIaCSO7it0BWmI+3qooHvuHagMBex7LlcXPiDXRc1sNvKJ0rQI8OuyJlysd
	yYtM+VOd1V+J2PcSy1E13g/WLxL/8DK4QgeEE2lS0kC6akmTfyZyS8ZA/1h2jppn5Q0kqR7qBA2/o
	f58XBRSEDY5Tyl7uRv0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZaZ-00G08n-RX; Thu, 02 Feb 2023 13:25:19 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZaX-00G06a-7D
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 13:25:18 +0000
Received: by mail-wm1-x32d.google.com with SMTP id c10-20020a05600c0a4a00b003db0636ff84so1410623wmq.0
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 05:25:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kW5GxFMKVLm3HHfRK3v8PPMjbddlT4O3IPT99HE/Mdc=;
        b=CBIqXA7Kgxrf8BHQf5K/34k0csj53P975JOjOt0SDNjojgK3zm6MlxAIjprO/6JQvh
         18ArNoWT+GZTk5CWBXr7gaoehYMyWpAN0Vc/lcTpGf+Ym/Zf08hyaPA93XYZvPfNiLxF
         eJHMcGk2sqvgYFBmj3+JK7huj4YSiuhvnz/W7jvyimf/eAtstRhhMdNHJU4QW7QEaksR
         e1imYZm9BoUYw/2YPiRdB6/+kqZCuCzf/OaNKZlGwUpW4V+QLH1S2+lbppyAWOuDtx7x
         6qJM9SZmaLkA8Y2jcYwDsJzZVfJHYOG4sdTDuvDHAHW8PHq+6jaud66JtGDUGfp72i0z
         ur+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kW5GxFMKVLm3HHfRK3v8PPMjbddlT4O3IPT99HE/Mdc=;
        b=UegPDWHvFOjiKJ5IX2YKqHrQe8cQgGGEVI/n78SK7qdUGTQpcZehzxeMxj3XuaVzn+
         CDTCEqP3lvRjYIkO603MjH0XX37v0kZOEDmudayYsjDGyOj7cNFVZs2hxcWaVVZFjjGr
         OUbK/OOm2QBT+frYtJhx9Sxg/vPdrjMCrjEZXgOfeSDNl7ObEwvPzFjC17YjErFVvgQ1
         WxStngox7Ius0+I1TPisXsZ7OnoJLtcCuIFQMv2A1IcnbysuczMIUHhw9MD1+yerTQI6
         ocBY8Idt+a0SOmBEe/GLiF3P8MztYPxCltdxW7YybrWDCCFKcMABUYw5bFkuJeTVZqbw
         wjyQ==
X-Gm-Message-State: AO0yUKXSMMuYlltYtygPOOeDdbJ3/nef9w5mEiL480sJBFsKwDZmBnZT
	wVZsasileL0Eo5e+/qDawHPkvw==
X-Google-Smtp-Source: AK7set/umYm3AxRIMiTJLCmzwgUPXHfzHXF9tHlRDDK11lrloBCjQJgDoa+gvL7INbbSCP7tQZIbCA==
X-Received: by 2002:a05:600c:b8e:b0:3da:fa42:bbf2 with SMTP id fl14-20020a05600c0b8e00b003dafa42bbf2mr6088694wmb.28.1675344314431;
        Thu, 02 Feb 2023 05:25:14 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id e22-20020a05600c449600b003db06224953sm4690943wmo.41.2023.02.02.05.25.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 05:25:13 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 0/8] sm8550: Add USB HC and PHYs support
Date: Thu,  2 Feb 2023 15:25:03 +0200
Message-Id: <20230202132511.3983095-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_052517_278029_D5C41305 
X-CRM114-Status: GOOD (  11.06  )
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

This patchset adds support for USB for Qualcomm SM8550 platform.

This patchset is based on top of the following patchset:
https://lore.kernel.org/all/20230202123902.3831491-1-abel.vesa@linaro.org/

Abel Vesa (8):
  dt-bindings: phy: Add qcom,snps-eusb2-phy schema file
  phy: qcom: Add QCOM SNPS eUSB2 driver
  dt-bindings: phy: qcom,qmp-usb: Document SM8550 compatible
  phy: qcom-qmp: pcs-usb: Add v6 register offsets
  phy: qcom-qmp: Add v6 DP register offsets
  phy: qcom-qmp-combo: Add support for SM8550
  arm64: dts: qcom: sm8550: Add USB PHYs and controller nodes
  arm64: dts: qcom: sm8550-mtp: Add USB PHYs and HC nodes

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |   1 +
 .../bindings/phy/qcom,snps-eusb2-phy.yaml     |  74 +++
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts       |  22 +
 arch/arm64/boot/dts/qcom/sm8550.dtsi          |  92 +++-
 drivers/phy/qualcomm/Kconfig                  |   9 +
 drivers/phy/qualcomm/Makefile                 |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 410 ++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h    |  31 ++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   4 +
 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c    | 423 ++++++++++++++++++
 10 files changed, 1061 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
