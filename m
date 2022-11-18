Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB0EEC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 18 Nov 2022 23:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rDrSvPVHG9FwsB4gHHecKzH/st+3j6xEeTsfW3UpUpw=; b=VgXa0K2ynGjM/5
	izKEyjepPoOEfFptbUyOUC5oxHZelio6R6dz0jvl4oenn4QExqrrd7iATYJnAhpdj3VOrutQ4vBA/
	dZxQynpbm9ysRwHmYFII8ttUbAW5H347GL7smr3+ms8o6mS+cbazWci1SzpEzv2Ipv3ij6rwUocnn
	WViatbaZy55YWpoqrPtz30x0hztTR2x25YafjW4ULZNZqqwV1A8MkBQe68HIb/IEf5ZMQE70cIW7K
	ixDP16oJXSiKa39+cBJ28FjFs2Vya/mF59YYAqOKa5a3rkcLlLDzUQ6k2uOt/T5Wec2B8SNbNHF8b
	6Z5D9B9fShdOCeVOyFDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owAqr-009CH4-3L; Fri, 18 Nov 2022 23:32:53 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owAqo-009CFP-ML
	for linux-phy@lists.infradead.org; Fri, 18 Nov 2022 23:32:52 +0000
Received: by mail-lj1-x22e.google.com with SMTP id x21so8587423ljg.10
        for <linux-phy@lists.infradead.org>; Fri, 18 Nov 2022 15:32:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BlwFEZE/SAxDXRWUzrr/1IUfgQmjEm+H1x3VkOquluI=;
        b=X0ao+8I0u6haCAzn5yuOKeBdxzHATC5OOKak1TebE6SfgnRvUE1V4+eF7xVXd7hB/r
         WS0GzXfaoRvfcGF24IZaD2znSJyKYSK3cbEXhS8I8Hn0F0wQJ13k98c0fhOUek0qICQf
         gC/6i2YPtKLNDFAHnXFrLQQvsfE1i7zRXGDw0eps4vUVrs6h3KLqVj2bV7Z7h9NIkSJl
         PxDFt4p492e8339DBzV3F33y9RBuRcIialNEatgRty+Tvmosy7pWUMDBqnWltKSC1Met
         jYi/LVfPnHttLkCYx/cBXFa1SOKWECHTJ6IzwwDxzVKfeqXt4SJotI+fM+oMFXRTPebN
         4Ehw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BlwFEZE/SAxDXRWUzrr/1IUfgQmjEm+H1x3VkOquluI=;
        b=GG+xUxGVUYganJyG1j9imWZAoiuSHOnizCGL2wXSx2cbX17dFJ+vwH/ehRaFe7waNc
         5REfvbT0e3fDdXacpmFL/qDIxQF77mwa5onDItRVVrU1Q3lOA/N+cm1F4wstG7vZ2KyS
         pax8FUimWEgA+A1YJ+jnmLm4Q3NUm1mLJK2SYGM72TMd3NolO8mNz6ouFb1KpojBD6yB
         k6Y8vVYlNfApe58w3TM8VjRwd0+27x8JZ7aeDnELb934j+qMJh4ZrSk6r4CNhTcVAWqg
         YnqqOEVRsUpXNG2I7Qv0F8f7Qu6nkOH11fBLM+CemR5z1eUqr4xPj2iBRhumOZRQQ/rH
         GoyA==
X-Gm-Message-State: ANoB5plkf4pd3CKcQ6G0VK6B9sWeXita9axyjiUDsLpHaMdsxqWw4pls
	gIHCU48Qsl2oxMs7A1IIcBhLFPF2P4sET+7+
X-Google-Smtp-Source: AA0mqf7LBWSGIUWul+WfPluJ+CKGVl2UNi56U3/ksFaE4HNyoPhWSWv7G5JwzCjcGEfWel7vQReEBA==
X-Received: by 2002:a2e:a229:0:b0:26f:a8a8:654a with SMTP id i9-20020a2ea229000000b0026fa8a8654amr3375031ljm.435.1668814365930;
        Fri, 18 Nov 2022 15:32:45 -0800 (PST)
Received: from eriador.lumag.spb.ru ([194.204.33.9])
        by smtp.gmail.com with ESMTPSA id k13-20020ac257cd000000b004947f8b6266sm843900lfo.203.2022.11.18.15.32.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 15:32:45 -0800 (PST)
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
Subject: [PATCH v4 0/8] PCI/phy: Add support for PCI on sm8350 platform
Date: Sat, 19 Nov 2022 01:32:34 +0200
Message-Id: <20221118233242.2904088-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_153250_793320_A5CBBDE9 
X-CRM114-Status: UNSURE (   8.90  )
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

Changes since v3:
 - Moved all pinconf and -gpios to board dtsi (Johan)
 - Reworked bindings to move the optional clock to the end (Rob)

Changes since v2:
 - Rebased onto phy/next
 - Added voltge supplies to the HDK dts file (Johan)

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

 .../devicetree/bindings/pci/qcom,pcie.yaml    |  32 +++
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  22 +++
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts       |  80 ++++++++
 arch/arm64/boot/dts/qcom/sm8350.dtsi          | 182 +++++++++++++++++-
 drivers/pci/controller/dwc/pcie-qcom.c        |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 164 ++++++++++++++--
 6 files changed, 463 insertions(+), 18 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
