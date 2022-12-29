Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECF01C4167B
	for <linux-phy@archiver.kernel.org>; Thu, 29 Dec 2022 17:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ftXjUl7GCxlyNLSBhlkh29PdB++W50hi9FP2DGeBtuw=; b=TUWQwSln7Z5Oze
	ANhDPTa8lM+EtRijQaSwEl7ZPScFmzbGWRuw35YQt+3Y10bS1AcoYcyxlfKPc4BQO44m0TV5725WW
	ihBEPrB1ZgAtGC06PzxyA49QGIsaQpaOypG8HnPqykK3HRfYLohY9uhVRHprGBhQyptasqUABL1dS
	nioRh1QWKteTasNJ3GyJeSDlNcJbnGRjc0wdWkeZEtEJNbiCbPcL/DxBqyyGV+ZxAPiGFWHLjTKEY
	ERN8/+2Ilx2XBPdBhQ9kxfqu3NeUUjVUOxm2fO3A7UzNAc8igwDoSeMnY8/6zmtXiVNWPyTvFRvYC
	lhfS/q115pQ8gy6rmguQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAwkq-000MqY-37; Thu, 29 Dec 2022 17:31:44 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAwkl-000MmS-VD
	for linux-phy@lists.infradead.org; Thu, 29 Dec 2022 17:31:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 6047BB81A25;
	Thu, 29 Dec 2022 17:31:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2E31C433EF;
	Thu, 29 Dec 2022 17:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672335097;
	bh=j3qG4bGdaEXrYNRPEIJY/y6BAFFyj1LA3ARl7FLkrLc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A4sAGzauvpyN7efg6S4Tt8IiUEpZ0pASvRe3oGUwwaLxVTNcPdlHIqrN58hpmaUUa
	 RiM42MzPJVTqIJe9AaD62iuWZQDB/STAAszJSBI2BMPdbPDzp12xY7nk22is9soD/t
	 qeAX9Bgon5afLZcXNpUckXI7DxqyBeEwUt64BhPYSf+TO3ZMWipEzT9+/gAokNa6Zi
	 OLE8z+ltM47ZoJsjQZ68IRB+FhS46sZIC60r2C2e59Y/m931blIbdT9TWtfKHb428C
	 kUWSuVrFYQNjK6TN89D+dVXgmG2KxR40igx+ARV/vRLI+B3j68ZLaNOBJz5bP5SClB
	 QjsaX0jrHUlFw==
Date: Thu, 29 Dec 2022 11:31:34 -0600
From: Bjorn Andersson <andersson@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v4 3/8] PCI: qcom: Add support for SM8350
Message-ID: <20221229173134.ul2kzupf4yjvbvgk@builder.lan>
References: <20221118233242.2904088-1-dmitry.baryshkov@linaro.org>
 <20221118233242.2904088-4-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221118233242.2904088-4-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_093140_188286_F1F1FA59 
X-CRM114-Status: GOOD (  15.92  )
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

On Sat, Nov 19, 2022 at 01:32:37AM +0200, Dmitry Baryshkov wrote:
> Add support for the PCIe host on Qualcomm SM8350 platform.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Bjorn Andersson <andersson@kernel.org>

Regards,
Bjorn

> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 77e5dc7b88ad..b9350d93b4ba 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -1826,6 +1826,7 @@ static const struct of_device_id qcom_pcie_match[] = {
>  	{ .compatible = "qcom,pcie-sdm845", .data = &cfg_2_7_0 },
>  	{ .compatible = "qcom,pcie-sm8150", .data = &cfg_1_9_0 },
>  	{ .compatible = "qcom,pcie-sm8250", .data = &cfg_1_9_0 },
> +	{ .compatible = "qcom,pcie-sm8350", .data = &cfg_1_9_0 },
>  	{ .compatible = "qcom,pcie-sm8450-pcie0", .data = &cfg_1_9_0 },
>  	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &cfg_1_9_0 },
>  	{ }
> -- 
> 2.35.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
