Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60DAEC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 10:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kyJpxTugkA43oCEOerLXPyTpJvnjyXBy0q6/AN1Ns7A=; b=3Vh5xx79wfztkw
	bt+q8In5C3Wz7RJXwx9H0VrIByeagvBl55nju4NRw11JHD8706tRJfnSXZWmR3387TTZ7vqRApm0s
	dHzmCKOAFJvuFHd/pQK2vHjPvcn1FT0eOuwo3pPcAGzVIomfklRkfYH6qN6ujPsOQvMoyONMknYFP
	H5TPXUKoc6t7DSv10JzebP9bANqoWI5xhX3w7ClVlDHifYvmzDmGZxQDhflOrE3bF5NSSm1Tpziqz
	KsrrzH9FPxaCEiGxKB90c9F2WedFgmENHmxuZcczNiXARbemK79XYi+KPvV0blB64GV8+tY+a7ZB2
	ZjiY4X5f9wE8Dr93wGOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot59n-005947-Ke; Thu, 10 Nov 2022 10:51:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot59l-00592P-48
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 10:51:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0F06761233;
	Thu, 10 Nov 2022 10:51:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 642A4C433D7;
	Thu, 10 Nov 2022 10:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668077494;
	bh=IMm20rn9TBxywBBLQYqPLk5C1JXu1UtC6qBbO6BkG7Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OAfn31a7x766F5utthngYHX9rXLGAi+vBKgdMAyYnr2R+inntRzT0VprnLqHWIXOP
	 KbCpJzDhGdNjHYFUqABN0l6gnQG9wE1cyr4zBS88ndMb2Wzfq+09hjtQTELDJrG+u1
	 yvj33Htr52XPKMiPmB+x/2kvXEV1QrBWXA2G9G8DopQbBeJWqXFzdzFf5ujSjFrp/2
	 FmEf4A7zzkBoQdLqlOYfWeoSP6x2Dk+cU/YRN2H10cuq2uFSEhwKmlC6XlR7F2A3Wt
	 wEIYK30+66Z6Gid2sF6SKQSs7JS3pMk4C+v3sfWcWf6g1dh7ZAVq4VbeTj6wvNB5Eu
	 obmM9q5j77igw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ot59G-0003Xi-G9; Thu, 10 Nov 2022 11:51:07 +0100
Date: Thu, 10 Nov 2022 11:51:06 +0100
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
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
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 8/8] arm64: dts: qcom: sm8350-hdk: enable PCIe devices
Message-ID: <Y2zXmv8d9PIkO2/7@hovoldconsulting.com>
References: <20221110103345.729018-1-dmitry.baryshkov@linaro.org>
 <20221110103345.729018-9-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221110103345.729018-9-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_025137_238644_E5B19912 
X-CRM114-Status: GOOD (  15.28  )
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

On Thu, Nov 10, 2022 at 01:33:45PM +0300, Dmitry Baryshkov wrote:
> Enable PCIe0 and PCIe1 hosts found on SM8350 HDK board.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8350-hdk.dts | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
> index 0fcf5bd88fc7..58a9dc7705a5 100644
> --- a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
> @@ -222,6 +222,22 @@ &mpss {
>  	firmware-name = "qcom/sm8350/modem.mbn";
>  };
>  
> +&pcie0 {
> +	status = "okay";
> +};
> +
> +&pcie0_phy {
> +	status = "okay";
> +};

Looks like the required regulators are missing from the PHY nodes.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
