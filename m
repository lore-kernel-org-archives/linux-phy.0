Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE6F0C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 10:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Rh3XVeDujroOVWlxRnFAK/a6JW09vUhx7I9+Qw1M7P4=; b=xalkAj/WjZ/+UL
	vKMSeckrSn5li+/m9PjkqbLxACmOQWZuOqA6pl4TLt7NQue+IwGfm6STch9zbdOFZm4jB7uKrgYGb
	k7MK1OQOhyUblpn9geiOADPp9zuHVkhJAj6OK4WcqAEcp5s6LuPN/HJ8nMZpsWQvPp49JKX8gfDJu
	7SOouTOUoPwyxfMfBRrKNrjtqUPsG0OM4BByQWk7pVypWPY2U/Lr/Q2UzpKzqvqlx2AQObDhnYwwe
	+GtxUu5ivkopKEul0fTikR3G5iKAjuvYqA/1r7nMytP8UBIUTMnbHYA9lloICGJs/AlpzlfwXmUHe
	9LNXwemON++W+rUYcizw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot4sa-0053aI-4I; Thu, 10 Nov 2022 10:33:52 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot4sX-0053YX-LH
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 10:33:50 +0000
Received: by mail-lf1-x131.google.com with SMTP id p8so2325407lfu.11
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 02:33:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PmHaFFuqPlWBZ7a9hnHHjYy0tkKVCkmXGUK6hn+sk4k=;
        b=epDRvrPaps44f/b/JtYIpWhtSLsnBTf+X6LbmqrGi1rP+Cmw1SbFXewNjGAZkhLzLl
         TIoSGS9kU0R78tc1bd4MOiTcj0eIUN/4ukQjVSjAzbLE6zByIhuQJiP8MN8qnN+Tu8zf
         JUZ0egxSpeIH5vRcgSILKh/3QpYV+yD0s71KpLi584u9kDDXm0DG2jTqbMeAs/h6DxkX
         wlqXfB/qAc4TPJqed4HzvYLa5tiJ8jwRjYPHtFCbY1l1hMqjc4FBYNSCLJiWyQsWdhbw
         N633tazgUv9tScmtoHap3gowuZ9EM57tW9uxaQmq9tKJw1oZPzng+OyBA4md6TWL2JfY
         YL1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PmHaFFuqPlWBZ7a9hnHHjYy0tkKVCkmXGUK6hn+sk4k=;
        b=YTTRCCGhDGWBFnCusPUHfxonQbbSmmdQ7cOTVLFga907TlRA6J6IDizAa0+7vG0EdY
         zeBM0DWatQYnECeRwtM7b/59FYvptAXNIDWEReh+RENjEPcH3NsLIz65W41u1RJXamKP
         DWhW0kKwbH8CockppSBFwuykhpQYt+72ZmF1QS0UErfrWqZYxQi0svTIUmae0Y+HDaTZ
         MnzzhG8e6l0tzrzZjfOWVXD4L120SHR+ZcPF+xd3SEowSiQEF4J03Se/PVkTWxMwbcZa
         wWGz88mL4Urg4ZI/yopaOzg4wdvf0Yv0JyFG7p8YHwXf9+tIVWXipnrM8NjarOacjisK
         3R2A==
X-Gm-Message-State: ACrzQf0Ixz5w4mxqb+cpWrMBZ/sFJQlK+vgS0Iq84UH/rkuTnPT05kCx
	WEhP2hObodmsXgnEvlIHizyZZg==
X-Google-Smtp-Source: AMsMyM6BNtMBJ8+iIxA3EIgwGLU1L5ewA1cPO1EOjClZjd/YBgY3L5NySoSxVl/s1h8z1BjL2RSeMQ==
X-Received: by 2002:a19:5048:0:b0:4b1:3856:e422 with SMTP id z8-20020a195048000000b004b13856e422mr13624125lfj.368.1668076427405;
        Thu, 10 Nov 2022 02:33:47 -0800 (PST)
Received: from localhost.localdomain ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id p22-20020ac246d6000000b00498f32ae907sm2687837lfo.95.2022.11.10.02.33.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 02:33:47 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/8] PCI/phy: Add support for PCI on sm8350 platform
Date: Thu, 10 Nov 2022 13:33:37 +0300
Message-Id: <20221110103345.729018-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_023349_717407_2D011F6E 
X-CRM114-Status: UNSURE (   9.11  )
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

SM8350 is one of the recent Qualcomm platforms which lacks PCIe support.
Use sm8450 PHY tables to add support for the PCIe hosts on Qualcomm SM8350 platform.

Note: the PCIe0 table is based on the lahaina-v2.1.dtsi file, so it
might work incorrectly on earlier SoC revisions.

Dependencies:
- phy/next (for PHY patches only)

Changes since v1:
 - removed pipe/ref clocks from the PCI schema, they are unused now
 - split the sm8450 tables commit into separate split & rename (Bjorn)
 - cleaned up the dtsi file, removing 'power-domain-names' and fixing
   gpio proprety names.

Dmitry Baryshkov (8):
  dt-bindings: PCI: qcom: Add sm8350 to bindings
  dt-bindings: phy: qcom,qmp-pcie: add sm8350 bindings
  PCI: qcom: Add support for SM8350
  phy: qcom-qmp-pcie: split sm8450 gen3 PHY config tables
  phy: qcom-qmp-pcie: rename the sm8450 gen3 PHY config tables
  phy: qcom-qmp-pcie: add support for sm8350 platform
  arm64: dts: qcom: sm8350: add PCIe devices
  arm64: dts: qcom: sm8350-hdk: enable PCIe devices

 .../devicetree/bindings/pci/qcom,pcie.yaml    |  46 ++++
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  22 ++
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts       |  16 ++
 arch/arm64/boot/dts/qcom/sm8350.dtsi          | 246 +++++++++++++++++-
 drivers/pci/controller/dwc/pcie-qcom.c        |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 164 ++++++++++--
 6 files changed, 477 insertions(+), 18 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
