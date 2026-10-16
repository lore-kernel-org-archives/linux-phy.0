Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB9A0CCA462
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 09:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fce7HP5CFkrzZJ0amLc5Jo2u35lRud7QVVmfeWlktIg=; b=OkO+XGKGCLJZW9
	JSGGHoQAK8Y/khslQXFGNchEaHSeGv26I/9Il4iSnqNRGzbmP/oqKLIt32nH323bp1kpXvx/Qs4Bf
	W5nCYK6J0GNZGoPRf50JNfY6ql0V6HHJGEoDvXe4bNainehqiTeU7JFrbSC5QWF8AlIAdbs31KHxz
	HMwpOVVX/uDz7woZ9yGj3ppvUHmvLRREO3o3EqcFHfjQlLUGRBPHiVPwjhcl8jPaDHs+QwyT7Zqgb
	ntNq60WAZKd84pyurtvRQVFPRt3yWI72gKj7AE0pO2tpfnI684V8fSFRDVCZ17fLobIfuODd0D4Nh
	k9hnYYBiATZAV7so/t1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHe0d-00000002Rz9-1wch;
	Fri, 16 Oct 2026 09:13:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHe0c-00000002Ry1-0wLB
	for linux-phy@bombadil.infradead.org;
	Fri, 16 Oct 2026 09:13:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=1yIHWFqFvTEQhLbqkq1xydFjXcFxrGagw9+5Eh0/eio=; b=WwSs7PWiLaZemppM3kI94FVt15
	2wQaWMernQHsq94i6ZB5HDf6fGhGc3v3IMCiF68Bj/VE9/WlMhv3YxCJtN4V2wkP++vqUOwhiXcEI
	VrrG+ugdNzrs+vD0PnA8182gZkqVVRMnmzJzC8AVFNkg5QDRXu0iN3Mz/JQAOH1/qhIHmZE04IrFq
	iTno8eta4UTFwyFwWzRsrWIgIpDxJY3mkl2SvDkjzX1hlXTsCEkl5GoAmveq9/gwGbk/w/XpmIpvH
	yRn1fmRFZO92RcZMORPfNWsX56ymnaAE8ZfgZccPdbx7UeNiTDzk16iC9Mlb4OMwibKQcXT5KPL7O
	DpjW7elg==;
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHe0Y-00000001J92-3Iyr
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 09:13:48 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-48e011d370dso219922f8f.0
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 02:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1792142024; x=1792746824; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=1yIHWFqFvTEQhLbqkq1xydFjXcFxrGagw9+5Eh0/eio=;
        b=M2gECJhiATUO8TklTLg4VfcI0xhg6rXINEa1Pdmk1m0SKqm6QXB559GOxRX4sAImHf
         tdhReezDarftpGCnl8DTb8/iskPwPmx6YV5dAmIzp+42XgvXMgEGfocRptm5KhY+TW10
         4GJHmRLWvqr6qhRfzkm2oUFrPcc1NrTGawEK+P8PinQ4otYiBkNktzY7AceaHPYIw/Rr
         +w9XYMOX+7+zS8A3gmT2mXok6Q2ikhwNHZYThcvvecSsrprhG0ZUPPFr9Vh0Mr6tZW18
         5HVxFoSlB25G6VFvQ2LxrlZ1GK9gYmp0txSTdJpDeImJQeEXI5t14d39qs469t44fHrf
         CnSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792142024; x=1792746824;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1yIHWFqFvTEQhLbqkq1xydFjXcFxrGagw9+5Eh0/eio=;
        b=t8L0QOR4oJmo3KbUSuNZrN5duJu65UZDdBd7D/wmy7LeUJs7XjaomQbd21dnT026ws
         hT8ywDDLWqlTTGNkFoZhLNfQ0oRy7Pr0OFILO5aUg6xHTFptQ3ZIk7vuaDSBC9Dits9F
         fFZurBu61J9FVM35gYFCTjwkjnBSNgpd/spunE28agPZqKx/uO9VhkJL12BvNK87iHpw
         IUJsaJ6EawdOrtpNIYXpZnzQfInTGip1jQ+pNJRIM9owGdN0/TvlWRpLjzL4AQhhR3zL
         sjs5AqY8l4k27PeaIYWHm8RsJ2ShIZRYRgW7DWxxy5gZV7h+GME0On5fazeFLvKM1IJT
         XxkA==
X-Forwarded-Encrypted: i=1; AKwUvByaZ/L9zjghsePveG2rYkqCmsI+ntcMvfa4rvD2SSmWl5Lgr4DH/n+WTd+99JZLG/pUPVMem7XS2uQ=@lists.infradead.org
X-Gm-Message-State: AFq9FYI85FYWRj764OkqTi186nuL1nWjisPmDEJO4kENxW9SKyrCeBLQ
	85LnsqAfK1vIzx6bBD7d2tM/nO6VdLmk4PJVDWsE9808r7oY/e67EJm8M5BFpdIpmtE=
X-Gm-Gg: AYBFou2emu+8dQb9wKj0XwEK/JS4kAUg1JgVE4cegzRuFbvl+Te48R0PFyOFL755dcI
	7Gt7rU+Z9vAEPy9QwJ4JiPIWVHHiE6WoQX/++ECsRHpujfdrUoJMag/qWOVtQsrsh3gYeioHXab
	v/nLDYeoerENkQ1jhmPeqs8foul+dhDeCNUssAPr9uKxXH5VoepPy16vmITN8vNU/5QkDzKdI5h
	UI0zOcNJS/+DX8nMlvKbWpcr3/gscCroapjCvpnL2G5q94eLdx2QBhSvHmQrDUi+o29SkLMwo/W
	QA9ella4GlBoArkF6RE9WwlHkE8IsjPmlauSqcyY1/zc5szWiyl5jGEXeRuQMbwULRvel+YMXkc
	4VZgyQP3ucFjBqlIPlUtMlZSfV4MuhmP5iIIjwzbIhL13po3YU3BJq+dqTnSWbPLSVlQyk68pRZ
	uMB0ZYsWwn+rxzSMhd68juwMsS+npbUV3NaxPDjmbKodcvMSMANg1t6crePur+Q6cI+0m2tx2QQ
	HvRNeLEgzE=
X-Received: by 2002:a05:6000:60b:b0:487:b28:c82a with SMTP id ffacd0b85a97d-48dbace40damr43712737f8f.47.1792142024343;
        Fri, 16 Oct 2026 02:13:44 -0700 (PDT)
Received: from [192.168.0.167] ([109.78.92.136])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48dfd4f5177sm3626767f8f.30.2026.10.16.02.13.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2026 02:13:43 -0700 (PDT)
Message-ID: <7e5d951a-6e50-4dc7-b9fa-79146ad7c773@linaro.org>
Date: Fri, 16 Oct 2026 10:13:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/4] phy: Add MIPI C-PHY mode and configuration
 options
To: geocausa@gmail.com, Vinod Koul <vkoul@kernel.org>,
 David Heidelberg <david@ixit.cz>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20261015-x1e-cphy-rfc-v1-0-1f3fa9af940a@gmail.com>
 <PoiQ1yKIrL603-Vkg8cV-j80USThOheuNuXcG_ZhEPuSRP-KLZBYJoj9ormog-3yCjbGRt0kKRXOGrahJOpNMQ==@protonmail.internalid>
 <20261015-x1e-cphy-rfc-v1-1-1f3fa9af940a@gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261015-x1e-cphy-rfc-v1-1-1f3fa9af940a@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_101347_446516_D2C16B61 
X-CRM114-Status: GOOD (  21.82  )
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

On 15/10/2026 23:20, George Neacsu via B4 Relay wrote:
> From: George Neacsu <geocausa@gmail.com>
> 
> The generic PHY framework has a mode and configuration options for MIPI
> D-PHY but none for C-PHY, so a CSI-2 receiver has no way to ask a PHY
> that does both for C-PHY. Add PHY_MODE_MIPI_CPHY and struct
> phy_configure_opts_mipi_cphy. The options are the two values a receiver
> knows: the symbol rate on each trio and the number of trios.
> 
> The first user is the Qualcomm CSI2 PHY, whose X1E80100 instances carry
> the C-PHY front camera of the Surface Pro 11.
> 
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: George Neacsu <geocausa@gmail.com>
> ---
>   include/linux/phy/phy-mipi-cphy.h | 27 +++++++++++++++++++++++++++
>   include/linux/phy/phy.h           |  5 +++++
>   2 files changed, 32 insertions(+)
> 
> diff --git a/include/linux/phy/phy-mipi-cphy.h b/include/linux/phy/phy-mipi-cphy.h
> new file mode 100644
> index 000000000..e3f0a8257
> --- /dev/null
> +++ b/include/linux/phy/phy-mipi-cphy.h
> @@ -0,0 +1,27 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef __PHY_MIPI_CPHY_H_
> +#define __PHY_MIPI_CPHY_H_
> +
> +/**
> + * struct phy_configure_opts_mipi_cphy - MIPI C-PHY configuration set
> + *
> + * This structure is used to represent the configuration state of a
> + * MIPI C-PHY phy.
> + */
> +struct phy_configure_opts_mipi_cphy {
> +	/**
> +	 * @symbol_rate:
> +	 *
> +	 * Symbol rate on each trio, in symbols per second.
> +	 */
> +	unsigned long		symbol_rate;
> +
> +	/**
> +	 * @lanes:
> +	 *
> +	 * Number of active trios.
> +	 */
> +	unsigned char		lanes;
> +};
> +
> +#endif /* __PHY_MIPI_CPHY_H_ */
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index c480d6cb4..f12337834 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -19,6 +19,7 @@
>   #include <linux/phy/phy-dp.h>
>   #include <linux/phy/phy-hdmi.h>
>   #include <linux/phy/phy-lvds.h>
> +#include <linux/phy/phy-mipi-cphy.h>
>   #include <linux/phy/phy-mipi-dphy.h>
>   #include <linux/phy/phy-thunderbolt.h>
> 
> @@ -42,6 +43,7 @@ enum phy_mode {
>   	PHY_MODE_PCIE,
>   	PHY_MODE_ETHERNET,
>   	PHY_MODE_MIPI_DPHY,
> +	PHY_MODE_MIPI_CPHY,
>   	PHY_MODE_SATA,
>   	PHY_MODE_LVDS,
>   	PHY_MODE_DP,
> @@ -69,6 +71,8 @@ union phy_notify {
>    *
>    * @mipi_dphy:	Configuration set applicable for phys supporting
>    *		the MIPI_DPHY phy mode.
> + * @mipi_cphy:	Configuration set applicable for phys supporting
> + *		the MIPI_CPHY phy mode.
>    * @dp:		Configuration set applicable for phys supporting
>    *		the DisplayPort protocol.
>    * @lvds:	Configuration set applicable for phys supporting
> @@ -78,6 +82,7 @@ union phy_notify {
>    */
>   union phy_configure_opts {
>   	struct phy_configure_opts_mipi_dphy	mipi_dphy;
> +	struct phy_configure_opts_mipi_cphy	mipi_cphy;
>   	struct phy_configure_opts_dp		dp;
>   	struct phy_configure_opts_lvds		lvds;
>   	struct phy_configure_opts_hdmi		hdmi;
> 
> --
> 2.53.0

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
