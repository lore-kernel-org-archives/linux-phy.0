Return-Path: <SRS0=nKrG=M4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2078C4338F
	for <linux-phy@archiver.kernel.org>; Thu,  5 Aug 2021 09:43:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7563660F22
	for <linux-phy@archiver.kernel.org>; Thu,  5 Aug 2021 09:43:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7563660F22
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PpK6uoqjU9nzs6ZRZY1nevb2NtNyqH/w6QDBwKiz2IQ=; b=se88BN5PwGvnVt
	i8SiMAbtFvfbfAWQdxzAJDWXt2erXldhJLn6uAPttXov88Zi3POU0SibpxEPiG+fvy+kA2/oJuGiL
	9jw6kKFMUO9xe20hZ6Uq/5slKX5f3crWBqctLr+IBy+KPV/yCwRvmgJ7fRU34vRt0QerAv3rf4WRN
	XB/wB1/IBdkCaV0mOmjtdZGO7CfZkuG7pxmpv5BCywrTXA2dJ7EwKGWyMHmFJGuvZvEEtLlrc3Lxi
	EBahF5qx9dqPe7isYStaGW6MakuymQ2VcUQYXEWQX4WkRA4u+oooaiiWRoU78cei9+bbtJd8FSoyh
	PgsU41kPxMuFiOrFJIWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBZuo-008wVy-QM; Thu, 05 Aug 2021 09:43:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBZtp-008w8Q-LS; Thu, 05 Aug 2021 09:42:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 342BA6D;
 Thu,  5 Aug 2021 02:42:45 -0700 (PDT)
Received: from lpieralisi (e121166-lin.cambridge.arm.com [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7B7A73F719;
 Thu,  5 Aug 2021 02:42:42 -0700 (PDT)
Date: Thu, 5 Aug 2021 10:42:37 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Baruch Siach <baruch@tkos.co.il>
Cc: Rob Herring <robh@kernel.org>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>,
 Kathiravan T <kathirav@codeaurora.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Robert Marko <robert.marko@sartura.hr>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/6] arm64: IPQ6018 PCIe support
Message-ID: <20210805094237.GA18330@lpieralisi>
References: <cover.1620203062.git.baruch@tkos.co.il> <87o8acxtqm.fsf@tarshish>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87o8acxtqm.fsf@tarshish>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_024249_843092_D6A6BF5D 
X-CRM114-Status: GOOD (  23.11  )
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

On Thu, Aug 05, 2021 at 09:58:57AM +0300, Baruch Siach wrote:
> Hi Lorenzo, Rob, Krzysztof,
> 
> On Wed, May 05 2021, Baruch Siach wrote:
> > This series adds support for the single PCIe lane on IPQ6018 SoCs. The code is 
> > ported from downstream Codeaurora v5.4 kernel. The main difference from 
> > downstream code is the split of PCIe registers configuration from .init to 
> > .post_init, since it requires phy_power_on().
> >
> > Tested on IPQ6010 based hardware.
> 
> It's been 3 months with no comment. Would you consider applying the dwc
> part (patches #1 and #2) for the v5.15 merge window?
> 
> I tested the patches here successfully on top of v5.14-rc4.

You need an ACK from the respective drivers maintainers. We look into
overall pci/controller drivers structure and common code, it is up
to drivers maintainers to review and ACK your patches, I will certainly
pick them up when that's done.

Thanks,
Lorenzo

> Thanks,
> baruch
> 
> >
> > Changes in v2:
> >
> >   * Add patch moving GEN3_RELATED macros to a common header
> >
> >   * Drop ATU configuration from pcie-qcom
> >
> >   * Remove local definition of common registers
> >
> >   * Use bulk clk and reset APIs
> >
> >   * Remove msi-parent from device-tree
> >
> > Baruch Siach (3):
> >   PCI: dwc: tegra: move GEN3_RELATED DBI register to common header
> >   dt-bindings: phy: qcom,qmp: Add IPQ60xx PCIe PHY bindings
> >   dt-bindings: pci: qcom: Document PCIe bindings for IPQ6018 SoC
> >
> > Selvam Sathappan Periakaruppan (3):
> >   PCI: qcom: add support for IPQ60xx PCIe controller
> >   phy: qcom-qmp: add QMP V2 PCIe PHY support for ipq60xx
> >   arm64: dts: ipq6018: Add pcie support
> >
> >  .../devicetree/bindings/pci/qcom,pcie.txt     |  24 +++
> >  .../devicetree/bindings/phy/qcom,qmp-phy.yaml |  25 +++
> >  arch/arm64/boot/dts/qcom/ipq6018.dtsi         |  99 ++++++++++++
> >  drivers/pci/controller/dwc/pcie-designware.h  |   7 +
> >  drivers/pci/controller/dwc/pcie-qcom.c        | 150 ++++++++++++++++++
> >  drivers/pci/controller/dwc/pcie-tegra194.c    |   6 -
> >  drivers/phy/qualcomm/phy-qcom-qmp.c           | 147 +++++++++++++++++
> >  drivers/phy/qualcomm/phy-qcom-qmp.h           | 132 +++++++++++++++
> >  8 files changed, 584 insertions(+), 6 deletions(-)
> 
> 
> -- 
>                                                      ~. .~   Tk Open Systems
> =}------------------------------------------------ooO--U--Ooo------------{=
>    - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
