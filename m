Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73721D3000E
	for <linux-phy@archiver.kernel.org>; Fri, 18 Oct 2024 13:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/jtwdYLMDGp5vb4Rv6oVW7g1OrB92LerIvJXeGr9Kfw=; b=lKhcCBzpH57W/a
	V5cH9ZRE0AaV6HovVfuf4/i++WWOCLFx73vYwqXdR6jBhk3rLXHSz20R6/U9+Tr+z33/B7SvFLltn
	OWaZ9SdpqBHWs1Nt1l7XrQbMOmL2QKeZ7k8wYljK70oZvvvRVFHotvyGpYDURaZjDX9PLGOBPK4Oh
	UtE/pGEJSYlAEUvAnKTHaQXmk12M5fjryHia2SQDejzxM5crH/cALsMhdL+XNDURyKzGrrTFgjrnk
	81Kt+STWVX93PHk0l02kvDK+mw/1mY4DPsKHbI/BTn4UFIAZ4QUDyogeFQHQyx0c0/R2UB2uQdE4t
	2iy5GKwWOenxbrRvMPkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1nP9-00000000xry-0ETK;
	Fri, 18 Oct 2024 13:52:35 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1nOw-00000000xns-1758
	for linux-phy@lists.infradead.org;
	Fri, 18 Oct 2024 13:52:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C11195C5FE0;
	Fri, 18 Oct 2024 13:52:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0279C4CEC3;
	Fri, 18 Oct 2024 13:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729259540;
	bh=ZM4EDtbQIRuZYDRskOrejqQI6sGJWvB8V8K3e9Fncdc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SgDX+vTqqkFga5WU8i8c3F/ctmp7ocpvgizN+L8I9kjsLnNX/2UTfv5w5Dm04vOqb
	 zDWSSzoLxJeFzLSqzvUkJCjnejljiJ0qy5nd//5aSYDGTPJX3cusTlLLvd3tWOopVg
	 eXQxOy+2Nc50uxE+b/s4Sqdfhckc+tlz1nDngmYCIol8zzvOXloWN9Mr89Sar2C2/6
	 tTrUc9XLJhyOkZdi2rAQNs/nyfO/gtj78WUybeO2iyDQyvldfyCUJXCZoWVHYkvfnw
	 DnjiNuWfDoDaQMd+I4NBMwQJtDLy+YQhsGEjjWH56Z2i7qT2rrPFoVvHX29xo0+HAJ
	 PwGiMaoo6ENhA==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1t1nOX-0000000072J-0XfD;
	Fri, 18 Oct 2024 15:51:57 +0200
Date: Fri, 18 Oct 2024 15:51:57 +0200
From: Johan Hovold <johan@kernel.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
	johan+linaro@kernel.org
Subject: Re: [PATCH v7 5/7] PCI: qcom: Remove BDF2SID mapping config for
 SC8280X family SoC
Message-ID: <ZxJn_Xf4NO3eAfey@hovoldconsulting.com>
References: <20241017030412.265000-1-quic_qianyu@quicinc.com>
 <20241017030412.265000-6-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241017030412.265000-6-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_065222_426210_D0FAD73D 
X-CRM114-Status: GOOD (  19.40  )
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

On Wed, Oct 16, 2024 at 08:04:10PM -0700, Qiang Yu wrote:
> On SC8280X family SoC, PCIe controllers are connected to SMMUv3, hence
> they don't need the config_sid() callback in ops_1_9_0 struct. Fix it by
> introducing a new ops struct, namely ops_1_21_0 which is same as ops_1_9_0
> without config_sid() callback so that BDF2SID mapping won't be configured
> during init.

The sc8280xp PCIe devicetree nodes do not specify an 'iommu-map' so the
config_sid() callback is effectively a no-op. Please rephrase this so
that it becomes obvious that this is a clean up rather than fix.

> Fixes: 70574511f3fc ("PCI: qcom: Add support for SC8280XP")

And drop the Fixes tag.

> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 88a98be930e3..468bd4242e61 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -1367,6 +1367,16 @@ static const struct qcom_pcie_ops ops_2_9_0 = {
>  	.ltssm_enable = qcom_pcie_2_3_2_ltssm_enable,
>  };
>  
> +/* Qcom IP rev.: 1.21.0 */

Is this the actual IP revision on sc8280xp (and not just the revision
used on x1e80100)?

Please also provide the Synopsis IP rev like the other configs do.

> +static const struct qcom_pcie_ops ops_1_21_0 = {
> +	.get_resources = qcom_pcie_get_resources_2_7_0,
> +	.init = qcom_pcie_init_2_7_0,
> +	.post_init = qcom_pcie_post_init_2_7_0,
> +	.host_post_init = qcom_pcie_host_post_init_2_7_0,
> +	.deinit = qcom_pcie_deinit_2_7_0,
> +	.ltssm_enable = qcom_pcie_2_3_2_ltssm_enable,
> +};
> +
>  static const struct qcom_pcie_cfg cfg_1_0_0 = {
>  	.ops = &ops_1_0_0,
>  };

And try to keep these structs sorted by revision. At least put this one
after ops_1_9_0.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
