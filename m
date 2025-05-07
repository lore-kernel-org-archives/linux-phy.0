Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA45FC369DC
	for <linux-phy@archiver.kernel.org>; Wed,  7 May 2025 05:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8b0X6dTfuMH/VqHM+0r/7G07Bwg0g63fBdpXfD9bIs=; b=2nxPiROBGKEJO+
	X+ez6S8hP9pH819GOBQEbuaHRMUdg8OqcR/AmNLWoZPgx9s7vFKDCXveD7zR8YgwE/W7A5eejhNBs
	gTOR6RWQv03StjycONA/iVzzUOiVHUnR/xNt3CptUdAhPYQ/ojT9LeZ72EB91RF1WZOczffn7EqT8
	WBx9OYp7j0CI1810lIVqwV7TtrJqzfnRazqeTRENHepcI7e1zV65zojBoG0D3qFOsz6dSLg5DZwKw
	BviRZ/EBbjEfgGLIK8C5k4aGvuAdvXcOuoS78H3/+Eg/bAs67poG4xbbC17XQIGfnMcrjQR8XsIqj
	gRKk6c1wg6KBmeVAfLxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCXB1-0000000EFot-1vxg;
	Wed, 07 May 2025 05:18:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCXAy-0000000EFns-2dPX
	for linux-phy@lists.infradead.org;
	Wed, 07 May 2025 05:18:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BD86D5C4C78;
	Wed,  7 May 2025 05:16:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AC25C4CEE7;
	Wed,  7 May 2025 05:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746595115;
	bh=z17b354Y/3F4nMLFkj3Aypodoceoi0WNTpzaRaaXSiU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=px+PTsjA+ze8bEa8qE6u5Sbm0pz9Z+soy5jTqa15f5DdUk++Kt7wUPQtNehn/zPug
	 aIoVDwDvPpKNY6VKpfZhAgr1I8Zx0t3ZTMFOkRillBtzXBdZ6Q2A2UQ52PxX4QQDEv
	 aDUDPlAk2AXQU1qGaEbQebbXnfOu6eyyHBT6OYqg8M0w6N1ezOqZcq3Vr77JgC1VhY
	 lPODFYI5Ro/e25Ht2GXfq9BGIepA8Ibruvjvg+FbUS+511OKBcNGmOYy6G6IXwn004
	 hzsd5U/GRMsHDF5qv8NPAYIZ9v1wXMURC4gAWw95W6IH1hLjR36eYl6bNHvMeEzxgU
	 QqCIDVEqgbWfw==
Date: Wed, 7 May 2025 07:18:33 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@linaro.org, 
	neil.armstrong@linaro.org, abel.vesa@linaro.org, manivannan.sadhasivam@linaro.org, 
	lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com, andersson@kernel.org, 
	konradybcio@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	quic_qianyu@quicinc.com, quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v4 5/5] PCI: qcom: Add support for QCS615 SoC
Message-ID: <20250507-competent-meek-prawn-72badf@kuoka>
References: <20250507031559.4085159-1-quic_ziyuzhan@quicinc.com>
 <20250507031559.4085159-6-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250507031559.4085159-6-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_221836_706445_841CA1B1 
X-CRM114-Status: GOOD (  15.88  )
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

On Wed, May 07, 2025 at 11:15:59AM GMT, Ziyue Zhang wrote:
> Add the compatible and the driver data for QCS615 PCIe controller.
> There is only one controller instance found on this platform, which
> is capable of up to 8.0GT/s.
> The version of the controller is 1.38.0 which is compatible with 1.9.0
> config.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index dc98ae63362d..0ed934b0d1be 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -1862,6 +1862,7 @@ static const struct of_device_id qcom_pcie_match[] = {
>  	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &cfg_1_9_0 },
>  	{ .compatible = "qcom,pcie-sm8550", .data = &cfg_1_9_0 },
>  	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_sc8280xp },
> +	{ .compatible = "qcom,qcs615-pcie", .data = &cfg_1_9_0 },

Why? It's compatible with other entries, so why adding redundant entry
here?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
