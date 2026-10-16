Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 768E1CC6B38
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 11:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=REyuxe1TagqyMD2CIxhuPaQPXXKQb8WumC7ufgrcS7w=; b=biEgeS0D6W3LWY
	TX/UcG//+EBSbgLdKNBrcjaIg01M55Rt3cWf1t5FjqE0aJ5SifS8BWzNxKPkKMksI8k54DsZtR1eb
	cCLynDSkjGQdYo9cfQK+AlEakUqHIcX7ZfmdM2G/uBBj1bXoVRN4X9Hex5XzWQn28BpiKY6utNUKE
	zobhyr6CuvkOwhpQOka41Br419N2hGGxRyITo3JpoHl5uXjUQP7E6W6o8JOICaALgb9BjXeDBPG+a
	eWU2sNaiao055XtdLcp8ei58QqkCjC/TGsdD0i5lqqIGPvPuudwWTaeDi4oOh8mEu1lwx0tJLHXnh
	BML676vSsZfMhibCPIuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfmd-00000002k60-0kKE;
	Fri, 16 Oct 2026 11:07:31 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfmb-00000002k5X-1Db4
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 11:07:30 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-48870973bddso537717f8f.1
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 04:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1792148847; x=1792753647; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=cJqf2rITdCzziip2V1CcQ4gA2chUDN+IaUybbZl++MI=;
        b=ETLuPFN/cIn4Tq6e6IAM5qnpr60BVrMx4gub5D0Zb9fwut+5fhyRycSTSY9rwhwr1e
         K924DX8rSUbumz8mbbVsEvnh7ghOzZnKqKkqVIL3Ig4FlRrP6GiTOkRyreAWXvgiqEb+
         BB0I0h7KbM+w+kIJk4yXCTrdPQ73+YLKi4FpzHBjgkN7G0aBkE24DfRstidC+lDwF3N+
         QPWYgD9UzIvpWgCYSFZgPMQq2V8aDA2Zm0aQm+GH5uGbzca9XVB5HqQ2UXDcBA05To3J
         xCLl8Py9MF56iuzWUVpJy7gBmIFSlBd91g/UBJWZhiUL1TTSlpKS9HL3MstOidiGpQpk
         y+qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792148847; x=1792753647;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=cJqf2rITdCzziip2V1CcQ4gA2chUDN+IaUybbZl++MI=;
        b=Yt4Ny/aPp4HOfFn4FNasZVdw2nMbwU+h4euDFGntnR3Z0ktMoJv9Wz5qafpRuOjt3A
         +Fh69IPl61cx47qzE/kucoix1PPiY61mtr6YjgD9w9ZgKnQ7Kj3ERcRm1m0+qwykRUkd
         X/OhxfRZ2cM7H3pthpQ0LYTDPzFG1HvLWQYvJu8furS/w5Y2L6WsbUEeeP8cEuEEaOOq
         2D01+69/ZzRvcZtU09TDBgebveq8wgXT50vunHMJB9CZm+RR9/oaqqzk06u1aP33ahhk
         DW/Fny6IqKEFZWjC6Lb7u0ZgDWE4QGxV/NDCaW95dyba+6+ebJ5P6PEmc6s8FZb2MCNu
         GsBQ==
X-Forwarded-Encrypted: i=1; AKwUvByQ/FjRiqZkeHDTetUwJs04BxXIv69+GDc3jUmY+Q1rZr6GNMfSV8C9rw5Tg03CF+9iteFjoLp2bjw=@lists.infradead.org
X-Gm-Message-State: AFq9FYJr5tI6y7DR8d4HitVcIoyW/c08TLrrLQfhCgH6ynwLNIYdKX7H
	TzJVNJLllwyjlqTcUkGsdlUku0Fc/IF/WL+jqPKQrryzWKILzCUTyMZunr6PTu/trl4=
X-Gm-Gg: AYBFou3nR+DqJLLFpuzwH+eQGx228ejN3XofIa5nRIpkwmOy11iUcqZ6GEq+/zkkXfQ
	gfDHLxUaDewWsiZh46uFZRNaeYwe7pEAURMIVhVgyVMboT0w1vR/q3qSIg1bsUZFx1k/UsYavmd
	lDmlFDNzkxMImq52XpEwOmfvCxWD66+CzksX5E84ahBORXMpxLBXv1kXPcXXdTjCEhADyDsHzWX
	mtdr7EuH3s6QGEjzZyFgokduil+uy3O9ng8YUypZWS+SnLt+dcdlV48hTijUgtaPqYzWXxBeYwo
	KX93pKVTCQna3/4SJ8D15ffOzhRfwEIIj+hA2lDLtDghnaZF8OEqqJA4Q0VJIn2ocgbPLhJSORZ
	5F2zo4yQvdv6ipXcPt0V26IdmNkqGtriZ4iWWKmaCBdfkHAd60qs5SGW5doma77qZPgqRbC3twC
	yjcIRxnIOPJLeXJbFO93CufiHBw8XrVXsrajuDVP5J98aOQ2yl4HljcV++78urtwi8E8MW7Iy1e
	gB4nuZp5+k=
X-Received: by 2002:a5d:6750:0:b0:48d:ed2e:6f3a with SMTP id ffacd0b85a97d-48dfacf53edmr4363835f8f.5.1792148847254;
        Fri, 16 Oct 2026 04:07:27 -0700 (PDT)
Received: from [192.168.0.167] ([109.78.92.136])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48dfd503a0dsm4468353f8f.47.2026.10.16.04.07.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2026 04:07:26 -0700 (PDT)
Message-ID: <27382104-14f0-4721-8d76-03fe9f2c1ba5@linaro.org>
Date: Fri, 16 Oct 2026 12:07:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v2 3/4] phy: qcom-mipi-csi2: Rename the D-PHY init
 sequence
To: geocausa@gmail.com, Vinod Koul <vkoul@kernel.org>,
 David Heidelberg <david@ixit.cz>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
 Suresh Vankadara <svankada@qti.qualcomm.com>, tjose@qti.qualcomm.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20261016-x1e-cphy-rfc-v2-0-377654253193@gmail.com>
 <0mIVMmu2iTCn5IeBYzGgIAH1kG2MFMNadT3axJ3D5fX-n2f-sXxmZeicphrhRwRt4YUTZBY-4uEATZz7IiQEGQ==@protonmail.internalid>
 <20261016-x1e-cphy-rfc-v2-3-377654253193@gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261016-x1e-cphy-rfc-v2-3-377654253193@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_040729_357880_319F141C 
X-CRM114-Status: GOOD (  17.35  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 16/10/2026 11:57, George Neacsu via B4 Relay wrote:
> From: George Neacsu <geocausa@gmail.com>
> 
> The init sequence and its size describe the D-PHY mode only. Call them
> dphy_init_seq and dphy_lane_array_size, so that a C-PHY sequence can sit
> next to them under matching names.
> 
> No functional change.
> 
> Suggested-by: Bryan O'Donoghue <bod@kernel.org>
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: George Neacsu <geocausa@gmail.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 8 ++++----
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          | 4 ++--
>   2 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> index 966d79c98..b2d4ec3e8 100644
> --- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> @@ -246,8 +246,8 @@ phy_qcom_mipi_csi2_gen2_config_lanes(struct mipi_csi2phy_device *csi2phy,
>   				     u8 settle_cnt)
>   {
>   	const struct mipi_csi2phy_device_regs *regs = csi2phy_dev_to_regs(csi2phy);
> -	const struct mipi_csi2phy_lane_regs *r = regs->init_seq;
> -	int i, array_size = regs->lane_array_size;
> +	const struct mipi_csi2phy_lane_regs *r = regs->dphy_init_seq;
> +	int i, array_size = regs->dphy_lane_array_size;
>   	u32 val;
> 
>   	for (i = 0; i < array_size; i++, r++) {
> @@ -372,8 +372,8 @@ static struct mipi_csi2_genpd x1e_genpds[] = {
>   const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e = {
>   	.ops = &phy_qcom_mipi_csi2_ops_3ph_1_0,
>   	.reg_info = {
> -		.init_seq = lane_regs_x1e80100,
> -		.lane_array_size = ARRAY_SIZE(lane_regs_x1e80100),
> +		.dphy_init_seq = lane_regs_x1e80100,
> +		.dphy_lane_array_size = ARRAY_SIZE(lane_regs_x1e80100),
>   		.common_regs_offset = 0x1000,
>   	},
>   	.supply_names = (const char **)x1e_supplies,
> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
> index 7e55ae007..0d6031a4d 100644
> --- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
> @@ -48,8 +48,8 @@ struct mipi_csi2phy_lane_regs {
>   };
> 
>   struct mipi_csi2phy_device_regs {
> -	const struct mipi_csi2phy_lane_regs *init_seq;
> -	const int lane_array_size;
> +	const struct mipi_csi2phy_lane_regs *dphy_init_seq;
> +	const int dphy_lane_array_size;
>   	const u32 common_regs_offset;
>   };
> 
> 
> --
> 2.53.0
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
