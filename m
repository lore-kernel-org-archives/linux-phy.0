Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FB30C43458
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 09:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:MIME-Version:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5aoZMMB71n6TayCTGV2pgF/fdB65ue9YVmvik4HL9wo=; b=21LUnwMrGp0CksqEiDRTou5Bwx
	Ye2p5wffd7iOwX751p+176gWZg/l/5d4zbhKNjzx5Z9USWoVsy1tRPc9H7KR7Bm5yoiCyqFUMgpfz
	YVsE80cfJaoTiT8QGiioYydxQ3s7y8jiHnAq+Zem3UmNKVX8HoVTEFMUya6azpcnad4nPhWNJ+VJO
	iKL934drzwT4Tl6ap02h9cQ8lCWx5L2MdHEaZMnFvV67/EEMS3xXt6LQbRCvk89YLnPOlMlkEpO2p
	MQyAz3irM3dSrohNcXKxKxLGPw7guHY1ncqfzpFki0ZyGUDMm5iQIYrqYsmdNBk/GVrJxHdkHpSc7
	XsMhleeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1werbF-00000001Ex5-035d;
	Wed, 01 Jul 2026 09:51:21 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1werbD-00000001Ewy-3fZY
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 09:51:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2382A4179D
	for <linux-phy@lists.infradead.org>; Wed,  1 Jul 2026 09:51:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 080461F00A3D
	for <linux-phy@lists.infradead.org>; Wed,  1 Jul 2026 09:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782899479;
	bh=ShGWDXttH5/Ho+7oUrait9j1SNVndDs13zI0h4c4YmQ=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=AdVObgKrM+PoufyZXyhVAsgOOYwZakJfmCDNeuqGAjgsZyzlmt3aY6OgrEyxETmYb
	 gIzH9DBIfHTLWqqCB7ii4mgd5Baa9tJ0j/ijIDOzmYfoXET/GR54AVFGwde5OQ8h4B
	 0ZFsBkOWN85yRKgTApUYVptBhHGdkfOTD64JefqqcHG3ma6Uydd0IwapVRONw2JYEe
	 udw+vIIjzwMYyX0u8kOGrfVOlLdZ2FfRnLgsbJdj5wsnAIBAF/ze2wiHH9j+YWsm6m
	 UATxmlniD01vqYMVplB40UjniY+sY2InGx8O/NQXMXKBFN30nd/KElYytgjH6ihAIY
	 iX44KLSqQJsMg==
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-39b19e7d6fcso3873721fa.1
        for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 02:51:18 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Rp9SyKdVuhn/zHnXcyLbW+fSWUf3jiQ1aTsUxtN/OsNwqx7k0NU77AGP+SAJN+zlKjXkKqghvFB2jU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwicjpvEcl5DXV7Mdm1TDjnX7iVbzrU0HIXzfBKAKH3tjmGUeqY
	+jAuTwQq1jbnA0Cg17iT+c3KtSXetIsuFN20vFdwCtsyTQVIWX28Jb5LnVPNIDBZWXbGhEpkuk6
	XNllyfbF1FfFWqfLN/hht4I0zPv5nqN8+Vt82S6s1pQ==
X-Received: by 2002:a2e:a988:0:b0:39b:be5:6d95 with SMTP id
 38308e7fff4ca-39b341228fbmr2172921fa.29.1782899477765; Wed, 01 Jul 2026
 02:51:17 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 1 Jul 2026 04:51:15 -0500
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 1 Jul 2026 04:51:15 -0500
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260701-shikra-upstream-v1-4-e1a721eb8943@oss.qualcomm.com>
MIME-Version: 1.0
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com> <20260701-shikra-upstream-v1-4-e1a721eb8943@oss.qualcomm.com>
Date: Wed, 1 Jul 2026 04:51:15 -0500
X-Gmail-Original-Message-ID: <CAMRc=McsmvR5SaBcr3FNjQLvp46MdG-mj8bgYnjvWn2yG-oSEg@mail.gmail.com>
X-Gm-Features: AVVi8Cc_rp-y3aP8VcLiH5YFSe4JsqHhLKXDLZf5g-tl8E57HeVVA8iw88E74Ag
Message-ID: <CAMRc=McsmvR5SaBcr3FNjQLvp46MdG-mj8bgYnjvWn2yG-oSEg@mail.gmail.com>
Subject: Re: [PATCH 4/9] PCI: qcom: Add support for Shikra
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, Bartosz Golaszewski <brgl@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>
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

On Tue, 30 Jun 2026 21:02:46 +0200, Sushrut Shree Trivedi
<sushrut.trivedi@oss.qualcomm.com> said:
> Add support for the single PCIe controller on Shikra platform
> which is capable of Gen2x1 operation.
>
> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index d8eb52857f69..19daadee65f7 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -2309,6 +2309,7 @@ static const struct of_device_id qcom_pcie_match[] = {
>  	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &cfg_1_9_0 },
>  	{ .compatible = "qcom,pcie-sm8550", .data = &cfg_1_9_0 },
>  	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_sc8280xp },
> +	{ .compatible = "qcom,shikra-pcie", .data = &cfg_1_9_0 },
>  	{ }
>  };
>
>
> --
> 2.43.0
>

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
