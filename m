Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C1DDC433EF
	for <linux-phy@archiver.kernel.org>; Thu,  3 Feb 2022 11:55:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3oTeBKDbbvhaXWfILuTb7u3imqbXPgE/cjMqO2BUec=; b=c2mHyTcIgJlBKz
	NbgKQpTI6daTXJMlY7z1YE7jk9NAO5/5GFY3wr1Qrs2EotOOAVbo2AzGEPN2uNs13A8ZFL8ScH2oL
	P6//DMxCOJwVe7/v2SQ9Jubbklo0hlpmNwR+GHKPUQtQB9SwdL3TN6NqTEUwKhHLhvgkusiOVMPtw
	cE9l3hCzzSJfv0CohZe3P/xIRHQaUA045fJIZkK2W24aQmmPbJg1y9A9Q0Aj3q5tUitnUQf3Ayb1l
	NtKVoNDtaxceE5mho3c3wlALwEA1kPaaNwILssJFZEffyNolEoHIGiMctSTcG2dQu/NsgVtX2PtSL
	MpKu7j0AXB7GXXMDyByQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFahg-0013ve-SU; Thu, 03 Feb 2022 11:55:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFah7-0013ca-JD
 for linux-phy@lists.infradead.org; Thu, 03 Feb 2022 11:54:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D699B11D4;
 Thu,  3 Feb 2022 03:54:32 -0800 (PST)
Received: from lpieralisi (e121166-lin.cambridge.arm.com [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 371BE3F774;
 Thu,  3 Feb 2022 03:54:31 -0800 (PST)
Date: Thu, 3 Feb 2022 11:54:25 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 0/5] qcom: add support for PCIe on SM8450 platform
Message-ID: <20220203115425.GA24443@lpieralisi>
References: <20211218141024.500952-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211218141024.500952-1-dmitry.baryshkov@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220203_035433_707542_49AA913B 
X-CRM114-Status: GOOD (  13.25  )
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

On Sat, Dec 18, 2021 at 05:10:19PM +0300, Dmitry Baryshkov wrote:
> There are two different PCIe controllers and PHYs on SM8450, one having
> one lane and another with two lanes. Add support for both PCIe
> controllers
> 
> Dependencies:
>  - https://lore.kernel.org/linux-arm-msm/20211218140223.500390-1-dmitry.baryshkov@linaro.org/
> 
> Changes since v4:
>  - Add PCIe1 support
>  - Change binding accordingly, to use qcom,pcie-sm8450-pcie0 and
>    qcom,pcie-sm8450-pcie1 compatibility strings
>  - Rebase on top of (pending) pipe_clock cleanup/rework patchset
> 
> Changes since v3:
>  - Fix pcie gpios to follow defined schema as noted by Rob
>  - Fix commit message according to Bjorn's suggestions
> 
> Changes since v2:
>  - Remove unnecessary comment in struct qcom_pcie_cfg
> 
> Changes since v1:
>  - Fix capitalization/wording of PCI patch subjects
>  - Add missing gen3x1 specification to PHY table names
> 
> ----------------------------------------------------------------
> Dmitry Baryshkov (5):
>       dt-bindings: pci: qcom: Document PCIe bindings for SM8450
>       PCI: qcom: Remove redundancy between qcom_pcie and qcom_pcie_cfg
>       PCI: qcom: Add ddrss_sf_tbu flag
>       PCI: qcom: Add interconnect support to 2.7.0/1.9.0 ops
>       PCI: qcom: Add SM8450 PCIe support
> 
>  .../devicetree/bindings/pci/qcom,pcie.txt          |  22 ++++-
>  drivers/pci/controller/dwc/pcie-qcom.c             | 101 ++++++++++++++-------
>  2 files changed, 91 insertions(+), 32 deletions(-)

Need an ACK from pci-qcom maintainers, thanks.

Lorenzo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
