Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4EEBC4345F
	for <linux-phy@archiver.kernel.org>; Mon, 15 Apr 2024 18:21:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I3f8JjIZnA3YwHRjfLPrzSBj8zQqQP0xGUK601h6FPg=; b=IBsHcBHX4CJA/G
	wtRcDLmzytG03LvriyNJtVC+BrFGNdQ8FONrml6pFGoJxkEt/+zeoz1CB4yFR0Dtj2w8CeGsCXChU
	TxPCJQEFsESQBvPraOtybMduOrZYyMg8qGss9+KbXRvIFuCmGX/ROO5Q2q4DoD7gihLUAY8KZJXRx
	KPxM+1tS4RsHlHHeYIGxT5G+1/7yDGbcAkM+elpta38C6ZynJa0Hin0DK+osBRXLdLHwZas0JAVSF
	eDkvzHb32+bpvxA8oFihySDBlWtSVHhmCt2lEXqJda1bR6FZRJpNV/MIm4ZyR07A/3zAQRk3gym1o
	NOSQvuoYrW8Qc/NyLORQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwQxD-00000009QiN-2eYB;
	Mon, 15 Apr 2024 18:21:19 +0000
Received: from mail-oo1-xc2c.google.com ([2607:f8b0:4864:20::c2c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwQxA-00000009QhH-2o3z
	for linux-phy@lists.infradead.org;
	Mon, 15 Apr 2024 18:21:18 +0000
Received: by mail-oo1-xc2c.google.com with SMTP id 006d021491bc7-5aa25e99414so2376474eaf.3
        for <linux-phy@lists.infradead.org>; Mon, 15 Apr 2024 11:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713205274; x=1713810074; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Y+sACIufw/w8GpGeE4sEiBMvaX1bCTXDGNvgc5Qvf6E=;
        b=DQQTAdMbYLkGj8aL/ijVbe9ec1aP8wa7kAue7dDAsSdNT8rdcHVnEnMbK1Ax1U5RIF
         21+SZ8/CRoanIPevw5PA8XE1NmxGh5j9FiVewY0x3+tcmpmComHSvu3b64Yi3uvrpPW/
         X3zLijwwbzn0iOtsLCxpJk5AcwE+ve0MVpYxh4mG2NTbkz1fTtp6U+U2QA3k170QCS7F
         MWmdQSzHWn4sPzZtpeJvxaoJzuhzViIbLa+9VMG4rZLcI8qZxPMC3pX5jZpZJOx06fBX
         8yK/3DcJwAZd1QlDRlQTesrAXXS3hVKDRF9v5FgC6lv0NSLDPhvAsK70XYszFm+UYz/S
         07YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713205274; x=1713810074;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y+sACIufw/w8GpGeE4sEiBMvaX1bCTXDGNvgc5Qvf6E=;
        b=hvHu6LxPCwiYUjvXUgHAEwhU1B4l4ociFIwoir3wsI9+xfH+EuDdctS9ZCHgM09dLE
         RfqUGZMgAceU/WnyYDB72d+K9x+ez2irXhZTu20nDRV8fdThzJHsh4v3E6/Tb5pCYHq1
         d0uQ55Vi5XuQY2Y9D74BeV8ZMOxRCuFWebFC/HakGpBzsbm6LoZ2xR61DAm98SBskkV5
         fJ246txC1p93K0lHl+KpNEbl47w7iDt8wDJ9pnLUhlvI0hIjeA61wIoTjrS+7D2TIV1v
         DEmXWdnwqw+/v6ie4aFTdUtmrlECX+GufGAP+ZSroTieQ8PaJG0Vq915DnVimbV2VyBT
         vffA==
X-Forwarded-Encrypted: i=1; AJvYcCUbYVaqoQtCPBOzfUch9U4PkjuPjdLVyQvqs2UdqcwxPwvj3wHy7vXR21fGTdGP/9RsNL2tc5wc1F9U1immGQw5IrIsJUQrvZEjg7zuCw==
X-Gm-Message-State: AOJu0Yxs6ar1KQtnMe44Z8Y0lCAE6k4f8KYVMglFnHMwhU2WT+z/uSSK
	t1eVtiJn1OucMSpg94BTIMbdKu6ioX8rhp9fftBMqiYYO/NRQ8Kp
X-Google-Smtp-Source: AGHT+IHWr/WeRMTapkOGUUH5erF0VV7fugiYX43aosyHD6DomWr2AEc2K79AjdmI5lspzTuJFUOGtQ==
X-Received: by 2002:a05:6820:985:b0:5aa:67ac:856f with SMTP id cg5-20020a056820098500b005aa67ac856fmr10305071oob.4.1713205274176;
        Mon, 15 Apr 2024 11:21:14 -0700 (PDT)
Received: from nukework.lan (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id x4-20020a056820104400b005a4dc7abc01sm2177494oot.11.2024.04.15.11.21.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 11:21:13 -0700 (PDT)
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
Subject: [PATCH v3 0/7] ipq9574: Enable PCI-Express support
Date: Mon, 15 Apr 2024 13:20:45 -0500
Message-Id: <20240415182052.374494-1-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_112116_733980_294B66B4 
X-CRM114-Status: GOOD (  10.58  )
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
pcie2, and that's the only one enabled in this series.

I believe this makes sense as a monolithic series, as the individual
pieces are not that useful by themselves.

In v2, I've had some issues regarding the dt schema checks. For
transparency, I used the following test invocations to test v3:

      make dt_binding_check     DT_SCHEMA_FILES=qcom,pcie.yaml:qcom,ipq8074-qmp-pcie-phy.yaml
      make dtbs_check           DT_SCHEMA_FILES=qcom,pcie.yaml:qcom,ipq8074-qmp-pcie-phy.yaml


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
  arm64: dts: qcom: ipq9574: add PCIe2 nodes

 .../devicetree/bindings/pci/qcom,pcie.yaml    |  35 +++++
 .../phy/qcom,ipq8074-qmp-pcie-phy.yaml        |  36 ++++-
 arch/arm64/boot/dts/qcom/ipq9574.dtsi         |  93 +++++++++++-
 drivers/clk/qcom/gcc-ipq9574.c                |  76 ++++++++++
 drivers/pci/controller/dwc/pcie-qcom.c        |  13 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 136 +++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h   |  14 ++
 include/dt-bindings/clock/qcom,ipq9574-gcc.h  |   4 +
 8 files changed, 400 insertions(+), 7 deletions(-)

-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
