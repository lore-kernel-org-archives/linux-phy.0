Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D28EAC54734
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 11:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQlTaIugV7lvwbRTJl5JrEZumGT2GDzC8ZgD4W+WQ+Q=; b=2zhWTiyYF9Eto1
	MNqCra3TaJw4ga2XqPDUxYOcz66eIritrA7wTRk24o/EBFUyPvN3s4sUvB4lAfjjOCBkzeapeMH/6
	qGzFaoBxP+1N8GSozc/lo/33C3HXYcWvNw+g/CivnTbEteVuzQT5VvLrsXf9o4WBypmmPm0nQW2Y/
	+kuaEODulkceuZ+IFYHTRgtFUaUCwqQg3C0Gi+hVauKrSywsoZ7406xO/fIEYECxDJaGZme9P7JjN
	HoUB6bTNZr/f+x9GSYfyvOWvfsq0ky3b1lXPL2xiN+KGxU+Hjl7D8OAQXDRL+1ls1GB+TsCo7M+WO
	+XvHeuy5JNeoRQwF9CkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siufe-0000000B5kn-1mvC;
	Tue, 27 Aug 2024 11:47:34 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siufb-0000000B5il-2Ubx
	for linux-phy@lists.infradead.org;
	Tue, 27 Aug 2024 11:47:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C171BA418DF;
	Tue, 27 Aug 2024 11:47:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFEB9C90396;
	Tue, 27 Aug 2024 11:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724758701;
	bh=JnETTFa10NtVd06M4aAL6DnRaetukRJe67YPV6Lua3w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pEa86cr4QB5nCj8VLlIdR4fz9rilBPyOxsg5B62kdePkZZbZhXd79wCYz5AZ08cS5
	 i+KzCrXePmMfZMDoDd/mw4kOm7dgiiPXu9WrmoYJqdEmknmVPRGvk/JdVssoVrfAfF
	 MkITjXikRoBmX57A6HT2QD9vAubBEG3mVON0E+qCYwpjl06Kx3l3IG94DZfIHMDn4K
	 0LGrjvcvHxq0x3Lx4U2wa18tRmKjtxxvFxdX2eleGYH8ZH2MJFoR/POqOYwTgJdvMi
	 jsmKe5vX87TxLaA3h9D2OTl68wxhMa8u1biOY4/8X30aLEDbiv9sN8Rku/F3yvCkN9
	 D/xvhQ5hkLURQ==
Date: Tue, 27 Aug 2024 13:38:17 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org, 
	quic_msarkar@quicinc.com, quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org, 
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH 3/8] phy: qcom: qmp: Add phy register and clk setting for
 x1e80100 PCIe3
Message-ID: <3rwkr4tqyki7umt75bgy6wcs2whchw2vb5ckrkqffaizxm3ssp@glkarq76vl4f>
References: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
 <20240827063631.3932971-4-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240827063631.3932971-4-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_044731_708845_554F5C74 
X-CRM114-Status: UNSURE (   8.68  )
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

On Mon, Aug 26, 2024 at 11:36:26PM -0700, Qiang Yu wrote:
>  	if (cfg->tbls.ln_shrd)
>  		qmp->ln_shrd = base + offs->ln_shrd;
>  
> @@ -4424,6 +4641,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
>  	}, {
>  		.compatible = "qcom,x1e80100-qmp-gen4x2-pcie-phy",
>  		.data = &x1e80100_qmp_gen4x2_pciephy_cfg,
> +	}, {
> +		.compatible = "qcom,x1e80100-qmp-gen4x8-pcie-phy",

Undocumented compatible or your patch order is wrong.

> +		.data = &x1e80100_qmp_gen4x8_pciephy_cfg,
>  	},

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
