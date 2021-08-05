Return-Path: <SRS0=nKrG=M4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69E20C4338F
	for <linux-phy@archiver.kernel.org>; Thu,  5 Aug 2021 07:01:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 386DA60F41
	for <linux-phy@archiver.kernel.org>; Thu,  5 Aug 2021 07:01:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 386DA60F41
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=tkos.co.il
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:Cc:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UqLei35g+UJyiRzohQ8okrRNJXAvTxJKm5mj6319M2s=; b=bLIPrDAAR56sRhdEKYnJILieh2
	D6IalVVDynbP5tTGqLMAULSnP59PQc9QZwh/VmDcJs06J9GWroj+uytIMeqQ1++KieLmvwIyd8+qI
	8TTTjTv1pc5LyWb0FS7AHgLDPCuz8mb2ipkTiHWm6GNGqMVQrQacXyR+dZUUlVTkyG3g+FhSOjRCn
	tGNyGBZOQoIxB368u4A/p8KqiHzARNcKUEXOYwTAQCP8Wn862YLhcYbsGLQfCTl4MQFJBZuIy36ij
	K4/Zzz4qNfQhkNudUYJOo/Noeqxgnhp1vgSM8dq6qy1ML3ajRiIFn2ptedHIGSoE+YmvJu0iTWEPL
	aP5Ysqxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBXNT-008Jg0-FO; Thu, 05 Aug 2021 07:01:15 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBXLo-008J6j-5Q; Thu, 05 Aug 2021 06:59:34 +0000
Received: from tarshish (unknown [10.0.8.3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id 98680440AEE;
 Thu,  5 Aug 2021 09:59:04 +0300 (IDT)
References: <cover.1620203062.git.baruch@tkos.co.il>
User-agent: mu4e 1.4.15; emacs 27.1
From: Baruch Siach <baruch@tkos.co.il>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring
 <robh@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Selvam Sathappan Periakaruppan
 <speriaka@codeaurora.org>, Kathiravan T <kathirav@codeaurora.org>, Bjorn
 Helgaas <bhelgaas@google.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, Thierry
 Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel
 <gustavo.pimentel@synopsys.com>, Robert Marko <robert.marko@sartura.hr>,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/6] arm64: IPQ6018 PCIe support
In-reply-to: <cover.1620203062.git.baruch@tkos.co.il>
Date: Thu, 05 Aug 2021 09:58:57 +0300
Message-ID: <87o8acxtqm.fsf@tarshish>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210804_235932_533054_D836B826 
X-CRM114-Status: GOOD (  18.33  )
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

Hi Lorenzo, Rob, Krzysztof,

On Wed, May 05 2021, Baruch Siach wrote:
> This series adds support for the single PCIe lane on IPQ6018 SoCs. The code is 
> ported from downstream Codeaurora v5.4 kernel. The main difference from 
> downstream code is the split of PCIe registers configuration from .init to 
> .post_init, since it requires phy_power_on().
>
> Tested on IPQ6010 based hardware.

It's been 3 months with no comment. Would you consider applying the dwc
part (patches #1 and #2) for the v5.15 merge window?

I tested the patches here successfully on top of v5.14-rc4.

Thanks,
baruch

>
> Changes in v2:
>
>   * Add patch moving GEN3_RELATED macros to a common header
>
>   * Drop ATU configuration from pcie-qcom
>
>   * Remove local definition of common registers
>
>   * Use bulk clk and reset APIs
>
>   * Remove msi-parent from device-tree
>
> Baruch Siach (3):
>   PCI: dwc: tegra: move GEN3_RELATED DBI register to common header
>   dt-bindings: phy: qcom,qmp: Add IPQ60xx PCIe PHY bindings
>   dt-bindings: pci: qcom: Document PCIe bindings for IPQ6018 SoC
>
> Selvam Sathappan Periakaruppan (3):
>   PCI: qcom: add support for IPQ60xx PCIe controller
>   phy: qcom-qmp: add QMP V2 PCIe PHY support for ipq60xx
>   arm64: dts: ipq6018: Add pcie support
>
>  .../devicetree/bindings/pci/qcom,pcie.txt     |  24 +++
>  .../devicetree/bindings/phy/qcom,qmp-phy.yaml |  25 +++
>  arch/arm64/boot/dts/qcom/ipq6018.dtsi         |  99 ++++++++++++
>  drivers/pci/controller/dwc/pcie-designware.h  |   7 +
>  drivers/pci/controller/dwc/pcie-qcom.c        | 150 ++++++++++++++++++
>  drivers/pci/controller/dwc/pcie-tegra194.c    |   6 -
>  drivers/phy/qualcomm/phy-qcom-qmp.c           | 147 +++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h           | 132 +++++++++++++++
>  8 files changed, 584 insertions(+), 6 deletions(-)


-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
