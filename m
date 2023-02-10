Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 879CEC636CD
	for <linux-phy@archiver.kernel.org>; Fri, 10 Feb 2023 16:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ELdRYvElYXYLEm18tvg33JVBJ2xN+gYC7bIg2lmo8VQ=; b=wJjaKkpwuUh4aq
	4T6oj8GOqNt5Vwi7DwZ+diytTzFHN26hntbPaoiu0bzOgAZxQ0YPqs2NQKtTg97JIVfGRBBfuGmVN
	7hOqUNv4i/hwLL50il63LOWXvdNg6SolaVdRo68EmuaBLd9aclnzzh8aMfzT2V0l4TKTlI2+fucAa
	LdKdBkkpVm/yKDj2jHkZTO73BIe50Xbdkr3yzPIKUh9tjgFzbUKD1kl1y8rEG4T7EyTxWPfW0kaZ9
	jgbmoZs3emFOOzF864l7OHt3Gsr9Sh1rea4S3bbxrPw+TKmhCCE7Bt3CdkyquJfWt2HlbDSmPw7wS
	MNUmZVvb5PRD2bHlSnVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQWjH-006cbW-VV; Fri, 10 Feb 2023 16:58:31 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQWjD-006cYw-1a
	for linux-phy@lists.infradead.org; Fri, 10 Feb 2023 16:58:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 426D4B82596;
	Fri, 10 Feb 2023 16:58:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05647C433D2;
	Fri, 10 Feb 2023 16:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676048303;
	bh=vK5LExH2oZzKUBw84FeZA7l2Jodx4gUrefk1caRsn6M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IgTDU9cvSj60RHQKt8IGHFDJrdnn/QpCrdnFc4BkGA9TFfnvOaNZv0p31oEu5nb0J
	 y275iDwKqKWh4vNwfDABcn/TN32/RD4wglk1YO0FESDatpeDqCCS/a/RHrhe7B7SXQ
	 nSOxQYOjfxjMci/1nquZA4hDtXRatmkVNlXmXGnsJmZ2n6Mr2tKcsVmg2ahTmneqBF
	 BRTSaGMKaA9lCdFkUxiz20SMkgLoJF97z5HXuBaDQj/zip9W2YyVOQSPAfZQbIBBo+
	 1kc0S535rnJzRWR6CXQp/7qDbdAs9zetZqnSyF/suxRbQgT/CcfkLYHZfRD9B8yGFX
	 THQWWykTpPzWg==
Date: Fri, 10 Feb 2023 22:28:18 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v9 00/11] sm8550: Add PCIe HC and PHY support
Message-ID: <Y+Z3qs3uuad4ViIu@matsya>
References: <20230208180020.2761766-1-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230208180020.2761766-1-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_085827_428196_289F670B 
X-CRM114-Status: GOOD (  11.97  )
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

On 08-02-23, 20:00, Abel Vesa wrote:
> For changelogs please look at each patch individually.
> 
> Abel Vesa (11):
>   dt-bindings: phy: Add QMP PCIe PHY comptible for SM8550
>   phy: qcom-qmp: pcs: Add v6 register offsets
>   phy: qcom-qmp: pcs: Add v6.20 register offsets
>   phy: qcom-qmp: pcs-pcie: Add v6 register offsets
>   phy: qcom-qmp: pcs-pcie: Add v6.20 register offsets
>   phy: qcom-qmp: qserdes-txrx: Add v6.20 register offsets
>   phy: qcom-qmp: qserdes-lane-shared: Add v6 register offsets
>   phy: qcom-qmp-pcie: Add support for SM8550 g3x2 and g4x2 PCIEs

Applied to phy-next, thanks

>   dt-bindings: PCI: qcom: Add SM8550 compatible
>   PCI: qcom: Add SM8550 PCIe support
>   arm64: dts: qcom: sm8550: Fix PCIe PHYs and controllers nodes
> 
>  .../devicetree/bindings/pci/qcom,pcie.yaml    |  40 ++
>  .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  30 +-
>  arch/arm64/boot/dts/qcom/sm8550-mtp.dts       |  10 +
>  arch/arm64/boot/dts/qcom/sm8550.dtsi          |  52 +--
>  drivers/pci/controller/dwc/pcie-qcom.c        |  25 +-
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 346 +++++++++++++++++-
>  .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h   |  15 +
>  .../qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h    |  23 ++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h    |  16 +
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h |  18 +
>  .../phy-qcom-qmp-qserdes-ln-shrd-v6.h         |  32 ++
>  .../phy-qcom-qmp-qserdes-txrx-v6_20.h         |  45 +++
>  drivers/phy/qualcomm/phy-qcom-qmp.h           |   6 +
>  13 files changed, 611 insertions(+), 47 deletions(-)
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v6.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
> 
> -- 
> 2.34.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
