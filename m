Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDE51CD5BCB
	for <linux-phy@archiver.kernel.org>; Thu,  5 Sep 2024 15:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iwch9l+XMoVRqx2FohUck31nT3p0+yw1ERwcjhzazYU=; b=RNSAoDrT8NwJOD
	2jK19/eldJCvKX1cGOlJgwb5h/A6/ixgE0To2FWGIJENcbdhGw9Gq4a8TYaLq7nXRrZT1cvYMh7ea
	+dtDUBa6/FJY2fgTayiALhZ9vfOIeHLrpFqUaGGODxUSUrPPmP+dgX0mGkN1uZI8PRMbrUNcUKdaE
	6AxwNeLke39focQZb3EaElMMLVqpdDkJ4FNGKQf28h95dKjf556vwm3G33oAm2GKqEo8rgFtKOH1W
	trWpdzV3xqWhz4RsZfIrMX7eS/jmNiuL417ygqESMzFB3Y9815IBQL3bi+bmBLPFBa30ZSQRReWdd
	5hPjQ48tyM2gLloWNmpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smDyw-00000008qoj-0yfr;
	Thu, 05 Sep 2024 15:01:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smCq0-00000008aZp-2bjj
	for linux-phy@bombadil.infradead.org;
	Thu, 05 Sep 2024 13:47:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=ZiBOKaL6onW9Pbfwy4gZAp+8pRnbcEgUuVRuT9Lh37M=; b=a5TR4HAhJnYtV0HLH1/enelZpG
	EsesSDraZrgLAvv7oJ9WhyNsKt0ZHpaGvjE+BAT/VpLbK3gFZK/eo9R7J2k/CohL8L+DktYv8CWl4
	lA4FwN3QKwRG26Pnv5pbfcgJYcrpElR7IRBZoae1WUm0jsjVeIMxIoUaP3zauO6M1uK3wlgQcthzi
	r5xmDDNGflqv0TGp3iV9X+hYSiheOxXiJ6LCYmlVwufAYsL1g4lw0eKKMqzCglqMgYI8ZPrvZxBWJ
	6TrgxY8D2zNc3ITH8q7ee3gCPpzK+YoTso+38JqKfKaiwkvcFPqR4DR14Gc4E7pa5DAkQdUc9r3f0
	A68rVVtQ==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1smCpv-00000000UVr-3S5H
	for linux-phy@lists.infradead.org;
	Thu, 05 Sep 2024 13:47:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7D4E35C5CB0;
	Thu,  5 Sep 2024 13:47:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A9B8C4CEC3;
	Thu,  5 Sep 2024 13:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725544063;
	bh=71k1Ochv2FC5okt+9RprHRdYfaZu9bLcTVyeNCoL8r0=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=Ic4Ek1ZWVl2lJ8st6GLtIkODrTBG+tf6NAuQKe0HntNEZtlPOU3NhnbxBEqQsxEeO
	 lojnuwiLsh4fDvhuRdQ3RNPP9n0j1LUmqXE9Qa5p94Dl7aVI1DUSU/eb+VD2kiVKDR
	 nqLceoTE0a2E4rrvsOVxdOF1xtjNfyAoYv2fQ5owncvVeq56Jyi50hLnUSBUkAb+8D
	 9bJub1/7+0vLx17fpJxoJ2twc9u/YJ3tcXmpR1afOUaUni6SYKwcglEg9B6h+F/cVB
	 lFKYgWngayZyCwCJzcHx+jea01T583hMuwAhVq4qsqkyCt9fHmnYmYZKZZpV26P54B
	 sArasEpU95tMA==
Message-ID: <bf114807-c56c-4209-ab26-9e90ac00cedf@kernel.org>
Date: Thu, 5 Sep 2024 15:47:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 3/6] phy: qcom: Introduce PCIe UNIPHY 28LP driver
To: Sricharan R <quic_srichara@quicinc.com>, bhelgaas@google.com,
 lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
 kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
 p.zabel@pengutronix.de, dmitry.baryshkov@linaro.org,
 quic_nsekar@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 robimarko@gmail.com
References: <20240830081132.4016860-1-quic_srichara@quicinc.com>
 <20240830081132.4016860-4-quic_srichara@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <20240830081132.4016860-4-quic_srichara@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_144748_002757_1F760616 
X-CRM114-Status: UNSURE (   8.39  )
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

On 30.08.2024 10:11 AM, Sricharan R wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Add Qualcomm PCIe UNIPHY 28LP driver support present
> in Qualcomm IPQ5018 SoC and the phy init sequence.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> ---

[...]

> +static const struct qcom_uniphy_pcie_data ipq5018_2x1_data = {
> +	.lanes		= 1,
> +	.lane_offset	= 0x800,
> +	.phy_type	= PHY_TYPE_PCIE_GEN2,
> +	.init_seq	= ipq5018_regs,
> +	.init_seq_num	= ARRAY_SIZE(ipq5018_regs),
> +};
> +
> +static const struct qcom_uniphy_pcie_data ipq5018_2x2_data = {
> +	.lanes		= 2,
> +	.lane_offset	= 0x800,
> +	.phy_type	= PHY_TYPE_PCIE_GEN2,
> +	.init_seq	= ipq5018_regs,
> +	.init_seq_num	= ARRAY_SIZE(ipq5018_regs),
> +};

As krzk suggested, the difference is just num-lanes

[...]

> +static int qcom_uniphy_pcie_power_off(struct phy *x)
> +{
> +	struct qcom_uniphy_pcie *phy = phy_get_drvdata(x);
> +	
> +	reset_control_assert(phy->resets);

Is the reset line supposed to be kept asserted?

[...]

> +MODULE_LICENSE("Dual BSD/GPL");

Was that intended?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
