Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6A17E7716D
	for <linux-phy@archiver.kernel.org>; Wed,  4 Dec 2024 23:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=/RsJ1MPhCtOt2/DiWTkR0cmpCnfQG7zq58s7K8o11I8=; b=N5rqwjqeBUV28h
	sCxZkTMBStrrYkliwD3jmC05efLxQq4uht8ccW2YHATH5RJJqJVAM+7BDTFhMtkLSpmYePftGoDPy
	7ir5A/4Oip32wRwiDPBmfVDWKD8kOsJSaZHCl+TN3+XpjECvJdnrTpcMLEhvBRmHH7DwLZrVKgErZ
	r1T6ClSIyEGfvwzMGFfStrCjjUNMDYNy/mDys6fQMgQK7UVQviexh9kbZYBRLbRKsPso+GlRws6xi
	MnKziFLV8/hDcYbjF8odASIKDPEIDIdAld2pS44dqySPxvTNRr7FOz417inus4reZq25ZYbI0Dib+
	rh/VBPoq8BXqC4+Ztzig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIyWM-0000000E6m3-2Jn8;
	Wed, 04 Dec 2024 23:11:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIyWK-0000000E6lg-1hRX
	for linux-phy@lists.infradead.org;
	Wed, 04 Dec 2024 23:11:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4D9295C7087;
	Wed,  4 Dec 2024 23:10:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4CD4C4CECD;
	Wed,  4 Dec 2024 23:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733353858;
	bh=7XpoUhfG8MJEb4Fmy8iGPH/58klFSTC5STKYSZRdPQ4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=YT0nZoWGHpepu2vQiyPAF527lbR3ZNU77EGCUanhHJ0GR2NX7HGuJ2Zcb2mUNzvN9
	 F0vxJRbNdB7uch7LnST0dlKcrNVXV2rRPnX5/pjMkYHsQwObfG416NeTW+IBsCQqPg
	 FniktmAElhIppocLFaR7yyGbgV7qYGKzQdCvHK6ZyRCbMMwBmFKYWcKbGc5s+TCi4d
	 zPcdCptwyvqZBi5y7YdqUYIiIT4OCGmLc5hQpZdZXHLrq2V32fvtkAp/jYIe4iiYp/
	 BO9vfBmSMRdZiJh9024capOJ3W+pTRtag30efwd9yB8ccNh3mb592XD2iyNJKwHaUK
	 teATnJWy4pbJQ==
Date: Wed, 4 Dec 2024 17:10:57 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org,
	robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org,
	conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
	andersson@kernel.org, konradybcio@kernel.org,
	p.zabel@pengutronix.de, quic_nsekar@quicinc.com,
	dmitry.baryshkov@linaro.org, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Praveenkumar I <quic_ipkumar@quicinc.com>
Subject: Re: [PATCH v2 4/6] pci: qcom: Add support for IPQ5332
Message-ID: <20241204231057.GA3026683@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241204113329.3195627-5-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_151100_488049_5D82A623 
X-CRM114-Status: GOOD (  17.38  )
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

On Wed, Dec 04, 2024 at 05:03:27PM +0530, Varadarajan Narayanan wrote:
> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> The Qualcomm IPQ5332 PCIe controller instances are based on
> SNPS core 5.90a with Gen3 Single-lane and Dual-lane support.
> The Qualcomm IP can be handled by the 2.9.0 ops, hence using
> that for IPQ5332.

If you have occasion to update this series, please update the subject
to follow the drivers/pci convention (use "git log --oneline
drivers/pci/controller/dwc/pcie-qcom.c" and match the capitalization
style):

  PCI: qcom: Add IPQ5332 support

> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v2: Removed dependency on [1]
> 
> 1. https://lore.kernel.org/all/20230519090219.15925-1-quic_devipriy@quicinc.com/
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index dc102d8bd58c..68e6f97535db 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -1835,6 +1835,7 @@ static const struct of_device_id qcom_pcie_match[] = {
>  	{ .compatible = "qcom,pcie-apq8064", .data = &cfg_2_1_0 },
>  	{ .compatible = "qcom,pcie-apq8084", .data = &cfg_1_0_0 },
>  	{ .compatible = "qcom,pcie-ipq4019", .data = &cfg_2_4_0 },
> +	{ .compatible = "qcom,pcie-ipq5332", .data = &cfg_2_9_0 },
>  	{ .compatible = "qcom,pcie-ipq6018", .data = &cfg_2_9_0 },
>  	{ .compatible = "qcom,pcie-ipq8064", .data = &cfg_2_1_0 },
>  	{ .compatible = "qcom,pcie-ipq8064-v2", .data = &cfg_2_1_0 },
> -- 
> 2.34.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
