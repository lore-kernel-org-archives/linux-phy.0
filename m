Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E35CC433F5
	for <linux-phy@archiver.kernel.org>; Wed, 23 Feb 2022 10:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ennHNPbU/EGnhCLEHaSNuKUuXf/9BzdRdv0nEq9gVzs=; b=bUuMqM++EIz+dA
	MFv1sRU89/X6ghlPEAz/yfx5uaoOVj5NtwpqILu42AdMbcOKCo4l/sidZ6IhwRYG8g0Vuafw6HoXW
	5CTbBkTvilRJt5GldxQd7OVlToUkmlUfVq3R860jYLtUJ5ndjdyV6wNUBnuGGbfFHWitH7v3jrjYu
	EEdUSJ4AylAXGHH5nFPu6XU2CBlTaVpJF1b2F1eV+ru5DUDiooUdUfnykx5TAOC7jAyeiebC8zBic
	aeQqHfilw2anmsDQcIWD0fdmAuJ5uScBxlByrjCsZX8/q3nXhUFtMI+CVLcnvFn5S/Oq34A2MHeE3
	KG1121YNlUFzKjIeE6gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMpLN-00Dm9I-Th; Wed, 23 Feb 2022 10:58:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMpLL-00Dm6z-CB
 for linux-phy@lists.infradead.org; Wed, 23 Feb 2022 10:58:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7DD59106F;
 Wed, 23 Feb 2022 02:57:48 -0800 (PST)
Received: from e123427-lin.arm.com (unknown [10.57.38.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8E89D3F70D;
 Wed, 23 Feb 2022 02:57:46 -0800 (PST)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Stanimir Varbanov <svarbanov@mm-sol.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Vinod Koul <vkoul@kernel.org>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, devicetree@vger.kernel.org,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v6 0/4] qcom: add support for PCIe on SM8450 platform
Date: Wed, 23 Feb 2022 10:57:40 +0000
Message-Id: <164561384675.19157.1017695661693402855.b4-ty@arm.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20220223101435.447839-1-dmitry.baryshkov@linaro.org>
References: <20220223101435.447839-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_025759_492312_26CE8A4C 
X-CRM114-Status: UNSURE (   9.47  )
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

On Wed, 23 Feb 2022 13:14:31 +0300, Dmitry Baryshkov wrote:
> There are two different PCIe controllers and PHYs on SM8450, one having
> one lane and another with two lanes. Add support for both PCIe
> controllers
> 
> Changes since v5:
>  - Rebase on 5.17-rc1
>  - Drop external dependencies. The pipe_clk rework takes too much time
>    to be reviewed. SM8450 works with the current pipe_clk multiplexing
>    code. Fixing pipe_clk will be handled separately.
>  - Drop interconnect support. It will be handled separately for all
>    generations requiring interconnect usage.
> 
> [...]

Applied to pci/qcom, thanks!

[1/4] dt-bindings: pci: qcom: Document PCIe bindings for SM8450
      https://git.kernel.org/lpieralisi/pci/c/dddb4efa51
[2/4] PCI: qcom: Remove redundancy between qcom_pcie and qcom_pcie_cfg
      https://git.kernel.org/lpieralisi/pci/c/f94c35e024
[3/4] PCI: qcom: Add ddrss_sf_tbu flag
      https://git.kernel.org/lpieralisi/pci/c/0614f98bbb
[4/4] PCI: qcom: Add SM8450 PCIe support
      https://git.kernel.org/lpieralisi/pci/c/1c5aa03726

Thanks,
Lorenzo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
