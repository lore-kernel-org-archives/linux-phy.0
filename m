Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92539CD5BAF
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 06:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6O7IPL13C6KpyHKHsPyGs72HuhNDLl58q6n8qw0RdsA=; b=DLJrRBfphPva6U
	tOxWs2fSA+YlQv/EDiyCl2/5jhjHWQbIFyayyqgUXI6OnjQrfDKqPYeXhhVcX4P/IFCHiEjv8DSdc
	jugBoU1UAL/u0hq5rF80OvY1H13IsHBuqHNxLIVmz6ozfcl+18VSNSiuTVoWVNprqhN/Nt6blpnEy
	7rMibn5rKPuhvp/f1s2r49Pzq27ODbrXBFrmKag15XkBJbt5XCFfeCLJtoJapt/Qo5Pa5POF2aBRo
	++3kSshkkl8SuHb1kQ3gHHdRvysTy/WYPtFSSIiNX0oqzossRW2z7RyLD0rf2e2YMD41rm2A+OGWC
	vg3882iYl5NzB24TrpTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQJjH-0000000A0i3-0WEE;
	Fri, 22 May 2026 06:51:31 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQJjF-0000000A0hY-22xD
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 06:51:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BF28942A46;
	Fri, 22 May 2026 06:51:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AE581F000E9;
	Fri, 22 May 2026 06:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779432688;
	bh=dDjkxf6l3El40X8q8ClVjELJbsKgRC498N66LV+lbJA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=QxQ2QX2Q0X0pAAIoiFAOyWMK6qki2CPLyeap76YO5/Iz4RHlv8XCNcaBQPB5SDhVQ
	 x3oxPU6lsTiCOo09JKUbYXXV5jhvEn41AWV18L/tqvHY3a2t34OrWgYsP4wUpF27G+
	 eJBgfytqOcnbhuOg5eyNOmUF/nYJaJe7KztZE2Y0jKCgDb/nXuYjJyQDx6mfE4MWcS
	 yP/gRLqwM3R2ptrFn2yVg/m+eXGPyrlKXPr/DhTJySC6BTZQvy8ORdKRZ5kzzCDAe2
	 5HoD0Zt6ONQJYhJs5vxOsl9gxhd6pdUdO3+INnzU63H07Rho1ogb+i51zpHYI29d2x
	 /fTeP2gLhR+RA==
Date: Fri, 22 May 2026 08:51:26 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH 3/4] PCI: qcom: Add Support for Eliza
Message-ID: <20260522-discerning-sympathetic-moth-daa9e7@quoll>
References: <20260521-eliza-v1-0-97cdbe88389d@oss.qualcomm.com>
 <20260521-eliza-v1-3-97cdbe88389d@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260521-eliza-v1-3-97cdbe88389d@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_235129_552425_1828AA6A 
X-CRM114-Status: GOOD (  14.71  )
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

On Thu, May 21, 2026 at 07:35:31PM +0530, Krishna Chaitanya Chundru wrote:
> Add support for Eliza soc, which has two PCIe controllers capable
> of 8GT/s X1 and 8GT/s X2, using the cfg_1_9_0 configuration.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index af6bf5cce65b..40f0a5f247eb 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -2123,6 +2123,7 @@ static int qcom_pcie_resume_noirq(struct device *dev)
>  static const struct of_device_id qcom_pcie_match[] = {
>  	{ .compatible = "qcom,pcie-apq8064", .data = &cfg_2_1_0 },
>  	{ .compatible = "qcom,pcie-apq8084", .data = &cfg_1_0_0 },
> +	{ .compatible = "qcom,pcie-eliza", .data = &cfg_1_9_0 },

So compatible with sm8550. Why isn't this explained in commit msg of
the binding?

Anyway, drop the change, pointless. Look how other devices handle this -
do you see kaanapali here? No.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
