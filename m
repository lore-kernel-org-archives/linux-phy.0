Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D634C4345F
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 04:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YWiTKln50kGWH/EEAQi8TOirexlYsyJ6Pe2vNUgQQHk=; b=lFrxEFXENPri1F
	QNmf2mPtRYY8tGisAJ0kbhWdqdUqEziNAiZ+2VsDhh06VQeULjchf3yFbR7bKZDVQiLYc6tDr+Vpm
	UlChlRYPYrTtMJN+O/AE2xO+pFX59quWmnatZM/fuz0WvqSuQjCG6cun+1QNuL/7naH/rRqksu+dp
	hs1a6CGxlRhowfTDkjHyjsnm/QyEWIFDA2d5OQ58AbMAqWlseIcQfcvUxafu968XOnk/TNzg7vYld
	+88Vmz+BsWMCkNBLYenJ0aX8d+yUg4qFdEXKEUgFD0Nau3Rf3ZnQfeEBiLD69dyICc6MHN5bs93EA
	3DevhBhcOK8ufdN3h2vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s21aX-00000008XPz-0Qgy;
	Wed, 01 May 2024 04:29:01 +0000
Received: from mail-oa1-x2c.google.com ([2001:4860:4864:20::2c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s21aT-00000008XPE-3CzU
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 04:28:59 +0000
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-23d1c4c14ceso700895fac.0
        for <linux-phy@lists.infradead.org>; Tue, 30 Apr 2024 21:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714537736; x=1715142536; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Vhu1nMHCA71GGBaV2+JMGbpRXlXwr5X37eEjfglD/n0=;
        b=S1cfsWAYtjFZSozhcsYFN5NaTZDN2HsiBoSUOfMyt/OahKKY6wBXtMjqKhWal+0OGs
         LKvMELBYKFY5TnFSO6XecyylI4DxpVq6gcICID3RknmoVDpT8pETk/JSipOLV4U+Sb46
         pfjEIHnb8/TJXHBHLav63QKJ2KJZPsOdMddaLNiRmo8Gsgd+cVQjtwXU6Lji/VMPKKLw
         j9Pa+uVugR/e6R1GN4YqpoU3AB1dxcS3FrMcPK6442TQmQmc8qOZfULucEhjGtGmQVuE
         qgUfHAp/9VlalhcvwvIK99SlbQDWaQuul0amn9l3Xv+o/IIPztPO+aMVpcYddSTit5K0
         u/PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714537736; x=1715142536;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vhu1nMHCA71GGBaV2+JMGbpRXlXwr5X37eEjfglD/n0=;
        b=nPuvmQRVXtQu7ykkb5PzO+YVSAR3CqAoB9V0ct1LCzTtMahmrz4rh12jcTC7UJLmY9
         gFvsecKftVQWalGvPvm9yOxfkLO7MixXzmrouAzig6YbVrIP/hL7UuJ2ylzrEuMVl6KT
         Ao8BUyefU/hL2rxDrQUnSP/j10F6tExUQ5fEV4ca1w6L3P+KeCrfJ2KkD1jQ/l6hP0D+
         ZMEJLnF/L68ITQiknO0ziuu30llo6BmGE/iNGWpgjri9uhB7yF0ZI/9pelJ77azzo0D9
         kxzSN2R/7drgYgLXmuY2Bb1praZL13MmGOCfXQJsrgK5lmiPjtFAyNF7IXf7M2pP2yYy
         u7qA==
X-Forwarded-Encrypted: i=1; AJvYcCXEygG5C6D+2DLB5ARbmKWYxNiAzbwr4a1fj1LonMHfxgU/9Q5n5LvCejN0I6BauHYkOSHhB0MnKegP5v/9WMh7Ge0PKGqnbm+sXDsBGw==
X-Gm-Message-State: AOJu0YzbYR9x4v5PNsYzCj7rMsU32OB2aCJs4ed6QC1ws+YwaSzR76lD
	96V0rhY0a2rG19iJ3oblrGdZWCT2MKHgUxkr+rvuti0vVuTKpChO
X-Google-Smtp-Source: AGHT+IHQCvg0uGeSX3GSy0SQxhNpekZqlZ25z6AvRqygjxrSbbyPzxWlt83zPr/iyWGd6O5MGRnAig==
X-Received: by 2002:a05:6870:23a7:b0:22e:d4da:f34a with SMTP id e39-20020a05687023a700b0022ed4daf34amr1459185oap.17.1714537735928;
        Tue, 30 Apr 2024 21:28:55 -0700 (PDT)
Received: from nukework.lan (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id do26-20020a0568300e1a00b006ed6dc9fd54sm2719058otb.25.2024.04.30.21.28.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 21:28:55 -0700 (PDT)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org
Cc: Alexandru Gagniuc <mr.nuke.me@gmail.com>
Subject: [PATCH v4 RESEND 0/8] ipq9574: Enable PCI-Express support
Date: Tue, 30 Apr 2024 23:28:39 -0500
Message-Id: <20240501042847.1545145-1-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_212857_883149_59C31032 
X-CRM114-Status: GOOD (  12.84  )
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

There are four PCIe ports on IPQ9574, pcie0 thru pcie3. This series
addresses pcie2, which is a gen3x2 port. The board I have only uses
pcie2, and that's the only one enabled in this series. pcie3 is added
as a special request, but is untested.

I believe this makes sense as a monolithic series, as the individual
pieces are not that useful by themselves.

In v2, I've had some issues regarding the dt schema checks. For
transparency, I used the following test invocations to test:

      make dt_binding_check     DT_SCHEMA_FILES=qcom,pcie.yaml:qcom,ipq8074-qmp-pcie-phy.yaml
      make dtbs_check           DT_SCHEMA_FILES=qcom,pcie.yaml:qcom,ipq8074-qmp-pcie-phy.yaml

Changes since v3:
 - "const"ify .hw.init fields for the PCIE pipe clocks
 - Used pciephy_v5_regs_layout instead of v4 in phy-qcom-qmp-pcie.c
 - Included Manivannan's patch for qcom-pcie.c clocks
 - Dropped redundant comments in "ranges" and "interrupt-map" of pcie2.
 - Added pcie3 and pcie3_phy dts nodes
 - Moved snoc and anoc clocks to PCIe controller from PHY

Changes since v2:
 - reworked resets in qcom,pcie.yaml to resolve dt schema errors
 - constrained "reg" in qcom,pcie.yaml
 - reworked min/max intems in qcom,ipq8074-qmp-pcie-phy.yaml
 - dropped msi-parent for pcie node, as it is handled by "msi" IRQ

Changes since v1:
 - updated new tables in phy-qcom-qmp-pcie.c to use lowercase hex numbers
 - reorganized qcom,ipq8074-qmp-pcie-phy.yaml to use a single list of clocks
 - reorganized qcom,pcie.yaml to include clocks+resets per compatible
 - Renamed "pcie2_qmp_phy" label to "pcie2_phy"
 - moved "ranges" property of pcie@20000000 higher up

Alexandru Gagniuc (7):
  dt-bindings: clock: Add PCIe pipe related clocks for IPQ9574
  clk: qcom: gcc-ipq9574: Add PCIe pipe clocks
  dt-bindings: PCI: qcom: Add IPQ9574 PCIe controller
  PCI: qcom: Add support for IPQ9574
  dt-bindings: phy: qcom,ipq8074-qmp-pcie: add ipq9574 gen3x2 PHY
  phy: qcom-qmp-pcie: add support for ipq9574 gen3x2 PHY
  arm64: dts: qcom: ipq9574: add PCIe2 and PCIe3 nodes

Manivannan Sadhasivam (1):
  PCI: qcom: Switch to devm_clk_bulk_get_all() API to get the clocks
    from Devicetree

 .../devicetree/bindings/pci/qcom,pcie.yaml    |  37 ++++
 .../phy/qcom,ipq8074-qmp-pcie-phy.yaml        |   1 +
 arch/arm64/boot/dts/qcom/ipq9574.dtsi         | 178 +++++++++++++++++-
 drivers/clk/qcom/gcc-ipq9574.c                |  76 ++++++++
 drivers/pci/controller/dwc/pcie-qcom.c        | 164 +++-------------
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 136 ++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h   |  14 ++
 include/dt-bindings/clock/qcom,ipq9574-gcc.h  |   4 +
 8 files changed, 469 insertions(+), 141 deletions(-)

-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
