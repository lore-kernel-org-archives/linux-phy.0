Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DFC1CCD195
	for <linux-phy@archiver.kernel.org>; Wed, 22 Oct 2025 08:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qJHJpqLlfiSI0jR0S18VufuUOOkkzPZR3Ss3Rb/Cx04=; b=IL8VKAC0APZuW6
	3H1Ru5SReuoU1Holsv/2KGPqHSNrQ5WIKzCc2DNObvMorJzdZ05GVsFszQYq0tv9tSa9JgEIoP17m
	mT39dw4wQTdGyionFEZvurZna/iMSG0BAWP+v1JeVUbvwXsi9GY7lGCl86Fdxsm1AEHhu8OZZIcKz
	0eDKR2b8a56P5YhZBBoKCsHWk6DOBLQ7eRvObhzDhY7Ovl8Gmc47y9Zx4ibJp2/11rRENOGpOwfgw
	/P1DdT3zZHVeFCFwL9XArRbDwMR03M+ylNpx9BdpsIVGdzw3r80/NaNwuocYTVHw70+E0HoWNiIeM
	ZhRAF1TQQbCBRQXmRqMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBUai-000000029Zi-2rww;
	Wed, 22 Oct 2025 08:53:08 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBUag-000000029Yn-2oJt
	for linux-phy@lists.infradead.org;
	Wed, 22 Oct 2025 08:53:08 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-46fcf9f63b6so36703175e9.2
        for <linux-phy@lists.infradead.org>; Wed, 22 Oct 2025 01:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761123185; x=1761727985; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1VMT8mKYgwMl8yULjLBpYiH70IVjoTMUBL7pjvnp2wU=;
        b=J1cjrVQvewqtxKP4POhrOiLLwjkPikaGs0lpKoO1QuYAjfwQCjXKgj6eBs3HTkYcoQ
         y5BxGoR5Xsb3lyJwRfRVIpCf/2oT1CHrjRSwiWdsjAM5ITGLdcAZmDFYNnM9/A0/XHFT
         RBXiHI961DUBVrmVf4NW5NaXxu2Xne+iPNUW2OqwSgruvT4aUKffLyNVtHmRiugVxt+k
         o0KVimL7Rmaxq71hOQCcKEkuc8hHrBS1FVLEUNgyDxMJ0e8eLN2mNUTK2Vrje4jc152N
         iZiPx4v7bsiACC8rV5/GvIXn9f/NU0fqDxZVhwHAZ2KhygPYLNMGLH9C1ACMKjK1fJc0
         7ZBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761123185; x=1761727985;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1VMT8mKYgwMl8yULjLBpYiH70IVjoTMUBL7pjvnp2wU=;
        b=MmzmsQdxzKxf2mvtUR8rU8SVRXocfoE9moL+CByLVKd61qVhrYmkKGHS41cJrgeAHX
         j9MD/8/005yoFcaUl8omdtdQ+t/YR+FifBbLcNT1HXiAW5+xqqE46G5c8nBISkawOTeE
         B3kAVolrNNYxH5INmCKBtu52sR452yaKq9agz2VrHP6cTbSjIEvnWqwmjxU+V5MalT5Q
         7+inOeoRqGynghNd4nap4jYR0c1fgFmybbUnf2mDfJFsKwY70lLIrEzK49E7j3VoMNX8
         1UX/oN0gsglqiinCZI9HV3Z00i7KXhopV4wm6wNlr1J03sotoGVoMyjfjgdmZI+TtNGp
         G1mg==
X-Forwarded-Encrypted: i=1; AJvYcCVadH89Pjbx0LAw/2xqB8+XbOar2lB0NyLvnS80vdZPHpg3Ly+8jCGGDoJIetbIFSewK2YrbPeEyf4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+XgpJkyP0z+EmWBWQW7b3rO6hg6DGj0vJwMwZsRM4JlW7n/CG
	bwKxYEASgRjevBsqO11Em8BLqnFOFL+jpq2WV1hizSvnOcRjM9TLLsa8QAQ4jtvmJDA=
X-Gm-Gg: ASbGnctRhka9k+1vFywenZWE5uOfLifBSB+HqSkl2hrVHqomLhFpT8YT2bdN7s1nl26
	LIlGbfS88Gnr0z/eNBoZdEZQZ0JfSBA/xEzC7qDYeKo/BXTnrHFz7ee2PQev9q4OE5amUyaqxGM
	0kvAeLpbWnwezjZd6jxCSwssycor0/P8rIBcqFamQdiRYWXyKmYfA/0ku7pUSo9MlFzpvNKjFQq
	kWUZ9yOG8aZB8D8wpxhataKxqqj6Nw0gYKUwGzFC8Lw5MZHKyGNqoBYv2AAkIwk4euvzQ83TbXl
	T/9gNWyWxl1IrHCcdEQv5kM7iIitA//KvdNxPWQNY+bsqm7/B8r8LOA3oi3gRh6bnJC8/9Twks4
	UOxKZklSew4hllOCUPEKf0sgt0o4VPSZvzbalktyqqKpcGCKOe4kTbcr9zNwmHpTLpfEsTuUavT
	ouJ6tir2M=
X-Google-Smtp-Source: AGHT+IHwyfFfA2sTV/MUe2VyGQQg2MXtrnaRyMgy8UiRtfTE0dePiGALEoLXmNajHTlU4ohhAIWQFg==
X-Received: by 2002:a05:600c:3513:b0:471:1415:b545 with SMTP id 5b1f17b1804b1-4711786d625mr156424065e9.7.1761123184620;
        Wed, 22 Oct 2025 01:53:04 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-475c428f709sm34692415e9.8.2025.10.22.01.53.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 01:53:03 -0700 (PDT)
Date: Wed, 22 Oct 2025 11:53:01 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	Qiang Yu <quic_qianyu@quicinc.com>
Subject: Re: [PATCH v5 6/6] phy: qcom: qmp-pcie: Add support for glymur PCIe
 Gen4 x2 PHY
Message-ID: <rxju35izazp7zrzs6vyy2cxuynzc6k4i4iot5pjahwl2bfoka5@cutpfodvixmp>
References: <20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com>
 <20251017-glymur_pcie-v5-6-82d0c4bd402b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251017-glymur_pcie-v5-6-82d0c4bd402b@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_015306_892873_CDAC1BFD 
X-CRM114-Status: GOOD (  13.83  )
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

On 25-10-17 18:33:43, Qiang Yu wrote:
> From: Qiang Yu <quic_qianyu@quicinc.com>
> 
> Add support for Gen4 x2 PCIe QMP PHY found on Glymur platform.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>

Since this is something I already sent upstream here and it is more correct:

https://lore.kernel.org/all/20251015-phy-qcom-pcie-add-glymur-v1-2-1af8fd14f033@linaro.org/

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 86b1b7e2da86a8675e3e48e90b782afb21cafd77..2747e71bf865907f139422a9ed33709c4a7ae7ea 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -3363,6 +3363,16 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
>  	.ln_shrd	= 0x8000,
>  };
>  
> +static const struct qmp_pcie_offsets qmp_pcie_offsets_v8 = {
> +	.serdes     = 0x1000,
> +	.pcs        = 0x1400,
> +	.pcs_misc	= 0x1800,
> +	.tx		= 0x0000,
> +	.rx		= 0x0200,
> +	.tx2		= 0x0800,
> +	.rx2		= 0x0a00,
> +};
> +
>  static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_50 = {
>  	.serdes     = 0x8000,
>  	.pcs        = 0x9000,
> @@ -4441,6 +4451,21 @@ static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
>  	.phy_status		= PHYSTATUS_4_20,
>  };
>  
> +static const struct qmp_phy_cfg glymur_qmp_gen4x2_pciephy_cfg = {
> +	.lanes = 2,
> +
> +	.offsets		= &qmp_pcie_offsets_v8,
> +
> +	.reset_list		= sdm845_pciephy_reset_l,
> +	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +	.regs			= pciephy_v6_regs_layout,

Definitely not v6 regs here. Needs to be v8.

NAK.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
