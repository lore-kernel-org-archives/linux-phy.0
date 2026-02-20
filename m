Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1F87C55162
	for <linux-phy@archiver.kernel.org>; Fri, 20 Feb 2026 08:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OCghyeURjrdtIqoAlh6JPBe9CR4QNnxOqu1+Sddo/bM=; b=qkXS56pAFQ+eEXGBZS/hg1b93I
	apYdjL6oxQPCkGtA3hrMP//HNE1kKIIp3l77Hqy2/oBf4rRihb1Jqi/W68jqduaqQI0q9LT9u4ZKX
	N87UgHw8sJO9aY/Uh1uG974bH69ug289fVRuJF+UUzF6nogmFxXOxXlnP4UNu2HtC3mDT8bk/5RQq
	VbZbcM/a5g02zW6LSJu0vitlYF3M05hIpu7zixP768vsj/Q3g1QtZrqTR7vBf1n3hudJt3sUe2FJd
	g8+2R1K9JsBSrSvvK/zex06/OJG+OeOXxQjPKF3MMwtD/KEWZVriHSdy0/51hk0kN88/XMhlVDz5i
	H9v+fpJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtLuC-0000000DQNa-21vD;
	Fri, 20 Feb 2026 08:30:32 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtLuA-0000000DQMg-1QVi
	for linux-phy@lists.infradead.org;
	Fri, 20 Feb 2026 08:30:31 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-436356740e6so1930974f8f.2
        for <linux-phy@lists.infradead.org>; Fri, 20 Feb 2026 00:30:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1771576228; x=1772181028; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0Qq3S+r4Rhk85CvydKyOggoRE+fgwt5wCw5yPrVvJwA=;
        b=qo961c65TydK1PkXl9QfPoWQ9ovHOtngSnQlvO/qZvA8YsY4wNZ9Ee13qkx3QucS7S
         2BTo/im5obYocHLTMT6xjB6MZRZZQBLg7Mrf2VKROQ0e9Gn5ofmYapIgpihAs84YBWbU
         XuJUxDG4mhtEeuYkQL1omApwip6L/nrhbXIu3PgoayYeZGQp3tBybRT3Hx6jqQEsvoiJ
         nFY+jMc+alq5qZsBD1fDVSjOG2T9SbNNHC4ey94thqxbwBsGRQLUCD6mDNKu5f8hjM9A
         qFldvxHRdWDZ/DkAigjaEwFvD+d9XAaMfHP8ZZsKoI9n7faDG9Z7CkMafiI12riADRG5
         KeNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771576228; x=1772181028;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Qq3S+r4Rhk85CvydKyOggoRE+fgwt5wCw5yPrVvJwA=;
        b=CSR6HZo5WVGSuighKzw2Hd4Hq15GdL4LPIrHMebMNuRf1WWNq0qbdvKAvs6djoACLU
         tnDhi8EA+Y3cRMWwKh8wNiSO5mm90oO0loZkGmXVqlHJ7Cn5jrAaGoUyQIIuc8XKz/K/
         fDiKhfmp0G+a0+v2HqM6bN9Dp55GcFXV0wT1J6VGA2aOMSQ5Hx8zjT9YgbxiOgYkaosD
         crv78Z5zrnl07GOk2mztmXWUiD/AXbUkgWCIBr1v+z8YhVKqA4om/pwUvJZZgeqA8sgC
         wVeaB9FSroi1FQxS8H5Y5xsqXX5jQFue4nGAOjiXnj9Kmg3wo0WhVTznEy4sufP54oL5
         nXAQ==
X-Forwarded-Encrypted: i=1; AJvYcCUKgSLGHBMx41Ek2FajQpgBb23lWNiNw+7514UrWjL9j55XjMato6C7Gw93e6tJ3/PcdUQYyLZiuGA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxYzafBC/2sy2tRQMdMyK0ssXnuvBb+9lzgv+t0w/nt8lwT2NhM
	AxSidT9+/8upftFkxZGgA/k3lOqzwuvi+xeVTVv6bomcQYkBzpiYN5xngLxLSgCTq74=
X-Gm-Gg: AZuq6aKMs4phUdRtwVofSpzPNuGQvdHj8g+Su5mHfLoZmbXjCVbn6haejnvGmLZkHEl
	nGXqgThi3vV+IQU0R3Kxsr13XNG8WmiYFXN+tk1tYxgzfSp7MpTV8BT9ik1P2FxeHjJc61T/ig3
	lJ1tDYSj2SP+jO9WLJY6eV60xh286Bi5U9rnD4lrAuPXKQda/ATs/tc7iJGOIZe70oU5D78SWZA
	sn/r9WC5iCu9fC939p4/qAbn/deG076KdcXQpvAcVQysT6q1wMuLCxd8irgAsOWmnz8MaG+1APF
	1RAoOpdw5KaCAPA6Sns7Pky8JzF7OBoIxtMQvsnpWqYL2CrPl4sWmyv/4sCSAyecTegJrljX0i4
	+mhLNvCcRY72xIhPpu/XHz7VkRYA+Pla8JQDvq25wIEMIbnDqTloXYixmqontLE17pGQHm1YB2K
	rhrK2LlQNquphFxX6CaJE/uvrLM311HQqxbvGnLvVvGRCtMNnpxGaPmWNps6dsoq+2SSjK3SUQK
	ffJgGOxt4x+GRRH
X-Received: by 2002:a05:6000:22c9:b0:436:1989:a1ba with SMTP id ffacd0b85a97d-4379db31007mr40196308f8f.10.1771576227964;
        Fri, 20 Feb 2026 00:30:27 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:5499:ba16:213c:9028? ([2a01:e0a:106d:1080:5499:ba16:213c:9028])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796abc85csm53586490f8f.22.2026.02.20.00.30.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Feb 2026 00:30:27 -0800 (PST)
Message-ID: <c19858cb-9cbe-4ece-b8e5-93453a3ba932@linaro.org>
Date: Fri, 20 Feb 2026 09:30:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] phy: qcom: qmp-ufs: Fix SM8650 PCS table for Gear 4
To: Abel Vesa <abel.vesa@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Nitin Rawat <nitin.rawat@oss.qualcomm.com>
References: <20260219-phy-qcom-qmp-ufs-fix-sm8650-pcs-g4-table-v1-1-f136505b57f6@oss.qualcomm.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20260219-phy-qcom-qmp-ufs-fix-sm8650-pcs-g4-table-v1-1-f136505b57f6@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260220_003030_444334_446294B3 
X-CRM114-Status: GOOD (  17.83  )
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 2/19/26 12:11, Abel Vesa wrote:
> According to internal documentation, on SM8650, when the PHY is configured
> in Gear 4, the QPHY_V6_PCS_UFS_PLL_CNTL register needs to have the same
> value as for Gear 5.
> 
> At the moment, there is no board that comes with a UFS 3.x device, so
> this issue doesn't show up, but with the new Eliza SoC, which uses the
> same init sequence as SM8650, on the MTP board, the link startup fails
> with the current Gear 4 PCS table.
> 
> So fix that by moving the entry into the PCS generic table instead,
> while keeping the value from Gear 5 configuration.
> 
> Cc: stable@vger.kernel.org # v6.10
> Fixes: b9251e64a96f ("phy: qcom: qmp-ufs: update SM8650 tables for Gear 4 & 5")
> Suggested-by: Nitin Rawat <nitin.rawat@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index df138a5442eb..771bc7c2ab50 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -990,6 +990,7 @@ static const struct qmp_phy_init_tbl sm8650_ufsphy_pcs[] = {
>   	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
>   	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_MID_TERM_CTRL1, 0x43),
>   	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PCS_CTRL1, 0xc1),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x33),
>   	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0f),
>   	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_SIGDET_CTRL2, 0x68),
>   	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_POST_EMP_LVL_S4, 0x0e),
> @@ -999,13 +1000,11 @@ static const struct qmp_phy_init_tbl sm8650_ufsphy_pcs[] = {
>   };
>   
>   static const struct qmp_phy_init_tbl sm8650_ufsphy_g4_pcs[] = {
> -	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x13),
>   	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x04),
>   	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x04),
>   };
>   
>   static const struct qmp_phy_init_tbl sm8650_ufsphy_g5_pcs[] = {
> -	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x33),
>   	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x05),
>   	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x05),
>   	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HS_G5_SYNC_LENGTH_CAPABILITY, 0x4d),
> 
> ---
> base-commit: 50f68cc7be0a2cbf54d8f6aaf17df32fb01acc3f
> change-id: 20260219-phy-qcom-qmp-ufs-fix-sm8650-pcs-g4-table-9d1adf1508fb
> 
> Best regards,
> --
> Abel Vesa <abel.vesa@oss.qualcomm.com>
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8650-HDK

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
