Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98A7DC4321E
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 17:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hudk2k/HkDKNSRMlqPqrnlpVi8ICWQmkeFvTOyhsCOA=; b=PuUvcQrmpE9BHt
	BUWFSCfyKEeO7NN/UJ1CjwBszIyIgRcGG+Qv1HLMWPe/CdkFEZNl0K0WS9SnK4Yd8S9DbnJt2LyYF
	MmNaPdAszI/xHZaNFTybZeNa5q/Oh6jUDQwOU22k1pWQcLXsg7I+xFqgkILEdkosTX9wLjmICK0or
	1WvDBbpcP/aia46TJpp6E13ySxL2UPmBHVu8V3lEO7dpsKoFRMUuDDvfV0BaBUeISdu5RkB123X6z
	8eM8NQhSh3ranhnvrYJwks8ovw46a1k3wxSs8qhgf5oqt8VbmyXzBzLmKdypVZTmFXXMuKta3Ruv3
	fgS8vK3SLc5Bdzb/0tiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv0Wp-00Dgr1-TD; Wed, 08 Dec 2021 17:14:51 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv0Wn-00DgoF-Lz
 for linux-phy@lists.infradead.org; Wed, 08 Dec 2021 17:14:51 +0000
Received: by mail-lf1-x135.google.com with SMTP id l22so6894777lfg.7
 for <linux-phy@lists.infradead.org>; Wed, 08 Dec 2021 09:14:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y5DqbsAczzIDbPjb8Q5k9xE5iuuwEbj+RJ3i6IjnaB0=;
 b=MpXwQTluI1THfP0K3jQ8aG7sz9yjvYEm0DF2Oa1EreGb+6TA6HraO0gxv3OfVhwa5D
 eDVzi1TrLwrzYZouGqvSTSdbCKPI915q3PGf51k4xrj7lxBbpp7x80jwW9W5UJOs6PUg
 DbFV5B1GXgK/2s38+XC/cdxYM4DGmN3hebL5XTlEB77o/p3HmVI71OwXvShPPzQBJ+Pj
 b10rDQSUEsImvz4Lu/JLa2dTHcQFsyifmd8YWxaqi/pw7+7xRZrt6GONLhasd6a/vJOr
 MRzZQES1WJcajLnMx4bl1B7Ck7wNSNWS3yh30Bf0cID3ZWtRaVzEuhCpkvnIcGP2mE3x
 xzDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y5DqbsAczzIDbPjb8Q5k9xE5iuuwEbj+RJ3i6IjnaB0=;
 b=BUWZld+anUEP7JW2ccyoJtxnJ9tnQ0omv9KSsbSfsL3Isimg11yMWRp6/myxa7NZWA
 5Ci/HE89SU6dJXGB99RQmlwA/AiezXT484iHySKhF2khd0J9qxW+tjQJFpKGAgM0BKdx
 syKSVcWL7Kxt44/GGRRhnNdDJ5rTbViJw/zWxK1YHEQ7TLQJt9HboAsiIDfegSlTZixc
 oqOSppv+DJCLR+SpWv37eC3l0Mvd2/AiR3ciN7g6gZzEVtawQUggOKkpQG4ZfXXQZx7V
 qWHxgtWhmX2J6Qplreu7u3EZ8RhjYQWLGXiRJACz1cfebL7T9VSXnIgQK9l+pGkcyl+y
 aDow==
X-Gm-Message-State: AOAM532v71jpjbZbP8UXcdyONDn/ipd6bDJjSbCd9jOkQjqUkihqsX0P
 tTqq8JiIOCPOKBjKp7K7SRyUlA==
X-Google-Smtp-Source: ABdhPJwNddYOmUQWWSCyrFz4mrMmtkHCl4efTtefvONi9p1mMLG0kQrDAh7KuusRm3WeD01Fr3TnVA==
X-Received: by 2002:a19:4f02:: with SMTP id d2mr655934lfb.547.1638983686032;
 Wed, 08 Dec 2021 09:14:46 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id t9sm307213lfe.88.2021.12.08.09.14.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 09:14:45 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v2 00/10] qcom: add support for PCIe0 on SM8450 platform
Date: Wed,  8 Dec 2021 20:14:32 +0300
Message-Id: <20211208171442.1327689-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_091449_770765_9277BC4F 
X-CRM114-Status: UNSURE (   8.37  )
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

There are two different PCIe controllers and PHYs on SM8450, one having
one lane and another with two lanes. This set of patches adds support
for the first PCIe phy and controller only, support for the second PCIe
part will come later.

Changes since v1:
 - Fix capitalization/wording of PCI patch subjects
 - Add missing gen3x1 specification to PHY table names

----------------------------------------------------------------
Dmitry Baryshkov (10):
      dt-bindings: pci: qcom: Document PCIe bindings for SM8450
      dt-bindings: phy: qcom,qmp: Add SM8450 PCIe PHY bindings
      phy: qcom-qmp: Add SM8450 PCIe0 PHY support
      PCI: qcom: Remove redundancy between qcom_pcie and qcom_pcie_cfg
      PCI: qcom: Add ddrss_sf_tbu flag
      PCI: qcom: Add SM8450 PCIe support
      arm64: dts: qcom: sm8450: add PCIe0 PHY node
      arm64: dts: qcom: sm8450: add PCIe0 RC device
      arm64: dts: qcom: sm8450-qrd: enable PCIe0 PHY device
      arm64: dts: qcom: sm8450-qrd: enable PCIe0 host

 .../devicetree/bindings/pci/qcom,pcie.txt          |  21 ++-
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml      |   2 +
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts            |  14 ++
 arch/arm64/boot/dts/qcom/sm8450.dtsi               | 143 ++++++++++++++++++++-
 drivers/pci/controller/dwc/pcie-qcom.c             |  89 ++++++++-----
 drivers/phy/qualcomm/phy-qcom-qmp.c                | 125 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  33 +++++
 7 files changed, 389 insertions(+), 38 deletions(-)



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
