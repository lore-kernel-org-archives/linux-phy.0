Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B356C7EE2E
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 20:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+/dda5IPuis8pKeg3HTlxWsjjuLUqhwoLAaCUt70ayU=; b=nsDAf+9+uGYt0A
	j+inpa1FHhu0LWz/vQFff850xI1knqMRYfIjsVvX6tA+5RAjkKMj140wUtEn9TsYgxjNcHe3hanGU
	2Yx/DDGlAoRJJjhalCFFKv18L5DV0F2gb+5eIM7L4M7PxScFCfWf1iBuRUPJyuUocaXsv1TR0qjha
	sy3STvggB2+kAK8jSZJnzcpHUiB2ShI48InzuBupOTpSW1UVv9iRi7OsGS4KmUPdXHAlLX5Tdfw/u
	2KWmx9k6A0moArVutlBNajdFODFKvToLkUmxf7mWkOzXD3vakNxBpmByyglpmx8IWVcMHe6o9eJn3
	S42XhpkshFAIDN1FhilQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8oDp-005HaB-2f;
	Mon, 12 Jun 2023 20:33:05 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8oDm-005HZB-1k
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 20:33:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686601981;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=43J77l2MjvOeufIj2deKwRG8u6kAZJyfknPdAW9w59s=;
	b=eBMuakVeMcC3eJgG5Srv803mdjUq+MiQNbICVR9CFATsN7bs5PiH8N9HBpWsW5Ptfjk0kU
	diXw7VK5JvY3PSuNcv2DYlAeYvLsr1QleXvhcPPE1UwUnJ2bD90YJaXiNx7nYE8HpbVUJH
	UG+ptB9jN0lWuhlsMfebI61vZusdmpc=
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com
 [209.85.161.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-159-sQYl0IGNPWu_6mMTbs1HUg-1; Mon, 12 Jun 2023 16:33:00 -0400
X-MC-Unique: sQYl0IGNPWu_6mMTbs1HUg-1
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-558b7c65e3bso2551623eaf.0
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 13:32:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686601979; x=1689193979;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=43J77l2MjvOeufIj2deKwRG8u6kAZJyfknPdAW9w59s=;
        b=JnWU43U6YA/EmHohKP0PfHxfUblvfsJAGqV+sAjfGCl1pD5BC20cP48KmQahMXC/TO
         +wsAphinyaHE43KAzAyoZ7HchosyEi0hR8Mf8nOtlRJLoHt+2ontoKFlMK8/l3dADE4x
         6enYGacE7LHLBOxtJDWtaWhvsILYIpHQHrKPuOQjdOu2TPT0nByenYggGSJJtXZmiuCt
         844QZoA0dsVS5Gzp1O0CCTM1GDwyJOMjftp+IjR/n+ZdyiaBtCGw6jW7uvqDF8dtEaum
         fBWAQaC68nklEeW45D3UpJ6GPOIo5EGcBL0rqBnTUmSYIo5JOZ6dJLQ2m/UWo91Qj5CZ
         IKxw==
X-Gm-Message-State: AC+VfDxJITgU3HQQkpSkvGpcJhsfBJySAL2xSccc6QtUc46O61U8EnBA
	n8ue36YU6CCwueHLoa6QrX7xmeQo9wdMWbmwbTtYmiHvKtLtdTXJ+u1HmP1emd5i4vMrIcMpjSb
	Uy83VqTrMqq7IrKlhMLR2RUr9Tw==
X-Received: by 2002:a4a:eac3:0:b0:558:b3f1:1081 with SMTP id s3-20020a4aeac3000000b00558b3f11081mr5365960ooh.9.1686601979256;
        Mon, 12 Jun 2023 13:32:59 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4vKyZqmPyAlZrIvh+fzGMNtvVVMAbuUA5odR16L7SaZeByU3UDtpAZGSfSXxbwRc/TkU6rpw==
X-Received: by 2002:a4a:eac3:0:b0:558:b3f1:1081 with SMTP id s3-20020a4aeac3000000b00558b3f11081mr5365934ooh.9.1686601978975;
        Mon, 12 Jun 2023 13:32:58 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::45])
        by smtp.gmail.com with ESMTPSA id o4-20020a4aa804000000b0055affd1ca3csm3556530oom.1.2023.06.12.13.32.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 13:32:58 -0700 (PDT)
Date: Mon, 12 Jun 2023 15:32:55 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Vinod Koul <vkoul@kernel.org>,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>, netdev@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH 12/26] net: stmmac: dwmac-qcom-ethqos: add support for
 the optional serdes phy
Message-ID: <20230612203255.72t52ucry7zzq3em@halaney-x13s>
References: <20230612092355.87937-1-brgl@bgdev.pl>
 <20230612092355.87937-13-brgl@bgdev.pl>
MIME-Version: 1.0
In-Reply-To: <20230612092355.87937-13-brgl@bgdev.pl>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_133302_659378_F5069C82 
X-CRM114-Status: GOOD (  25.02  )
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

On Mon, Jun 12, 2023 at 11:23:41AM +0200, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> On sa8775p platforms, there's a SGMII SerDes PHY between the MAC and
> external PHY that we need to enable and configure.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  .../stmicro/stmmac/dwmac-qcom-ethqos.c        | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> index 8ed05f29fe8b..3438b6229351 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> @@ -6,6 +6,7 @@
>  #include <linux/of_device.h>
>  #include <linux/platform_device.h>
>  #include <linux/phy.h>
> +#include <linux/phy/phy.h>
>  #include <linux/property.h>
>  
>  #include "stmmac.h"
> @@ -93,6 +94,7 @@ struct qcom_ethqos {
>  
>  	unsigned int rgmii_clk_rate;
>  	struct clk *rgmii_clk;
> +	struct phy *serdes_phy;
>  	unsigned int speed;
>  
>  	const struct ethqos_emac_por *por;
> @@ -566,6 +568,30 @@ static void ethqos_fix_mac_speed(void *priv, unsigned int speed)
>  	ethqos_configure(ethqos);
>  }
>  
> +static int qcom_ethqos_serdes_powerup(struct net_device *ndev, void *priv)
> +{
> +	struct qcom_ethqos *ethqos = priv;
> +	int ret;
> +
> +	ret = phy_set_speed(ethqos->serdes_phy, ethqos->speed);
> +	if (ret)
> +		return ret;
> +
> +	ret = phy_init(ethqos->serdes_phy);
> +	if (ret)
> +		return ret;
> +
> +	return phy_power_on(ethqos->serdes_phy);

The docs say (phy.rst):

    The general order of calls should be::

        [devm_][of_]phy_get()
        phy_init()
        phy_power_on()
        [phy_set_mode[_ext]()]
        ...
        phy_power_off()
        phy_exit()
        [[of_]phy_put()]

    Some PHY drivers may not implement :c:func:`phy_init` or :c:func:`phy_power_on`,
    but controllers should always call these functions to be compatible with other
    PHYs. Some PHYs may require :c:func:`phy_set_mode <phy_set_mode_ext>`, while
    others may use a default mode (typically configured via devicetree or other
    firmware). For compatibility, you should always call this function if you know
    what mode you will be using. Generally, this function should be called after
    :c:func:`phy_power_on`, although some PHY drivers may allow it at any time.

Not really dictating you need to do that order, but if possible I think
calling phy_set_speed after init + power_on is more generic. Not sure if
that plays nice with the phy driver in this series or not.

Otherwise, I think this looks good.

> +}
> +
> +static void qcom_ethqos_serdes_powerdown(struct net_device *ndev, void *priv)
> +{
> +	struct qcom_ethqos *ethqos = priv;
> +
> +	phy_power_off(ethqos->serdes_phy);
> +	phy_exit(ethqos->serdes_phy);
> +}
> +
>  static int ethqos_clks_config(void *priv, bool enabled)
>  {
>  	struct qcom_ethqos *ethqos = priv;
> @@ -651,6 +677,12 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto out_config_dt;
>  
> +	ethqos->serdes_phy = devm_phy_optional_get(dev, "serdes");
> +	if (IS_ERR(ethqos->serdes_phy)) {
> +		ret = PTR_ERR(ethqos->serdes_phy);
> +		goto out_config_dt;
> +	}
> +
>  	ethqos->speed = SPEED_1000;
>  	ethqos_update_rgmii_clk(ethqos, SPEED_1000);
>  	ethqos_set_func_clk_en(ethqos);
> @@ -666,6 +698,11 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
>  	if (of_device_is_compatible(np, "qcom,qcs404-ethqos"))
>  		plat_dat->rx_clk_runs_in_lpi = 1;
>  
> +	if (ethqos->serdes_phy) {
> +		plat_dat->serdes_powerup = qcom_ethqos_serdes_powerup;
> +		plat_dat->serdes_powerdown  = qcom_ethqos_serdes_powerdown;
> +	}
> +
>  	ret = stmmac_dvr_probe(dev, plat_dat, &stmmac_res);
>  	if (ret)
>  		goto out_config_dt;
> -- 
> 2.39.2
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
