Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C947C7EE2F
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 20:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJgDnE+29FH/2tkitJ/Ayqi82obf+RApz/TwA/i3mY4=; b=CTXWUjL5CArTI4
	EP0FjXHN5pAgS5MDEH51oH6iwx7ChvlhMImzMDPuUaLcp+UTjSGQoLh+tnNeJORzEwTWQe4RUoJuw
	Qs+bUWK+ZF8vSMf0Rixiot2QbDawosbWVmXFW0DluESOLXBmtjsrxLe1lOdcJnLw9cd8g38HmwM54
	xiwhaeOBIee84iTmkYW2KsOoPxHek+JjgTWlucDezzugXT2KSoOg4ogM69A68ni4O9Jf99lv8P8wP
	dAyM2KA7MVr9lP/tept5H1BYgvUP+WSVKyuxTHc1d76RTmptf/7RBV8tETMfKrjaD/m0skna9hT1J
	+XFtYrafMvNyBZJx7bEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8oNR-005JWC-34;
	Mon, 12 Jun 2023 20:43:01 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8oNP-005JVM-1d
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 20:43:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686602578;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=a+9OvtK97veHl6+HegxVNiurUYmzQbeChvO9xmQ5r5g=;
	b=Ts485w4lML9ghbwKv24vETQLaom97go+R3sL0ohcTO89pjZeIdsmYsgTeurr9a3okibxlG
	QUraewKIswEUJqudvYZBRCWiMVZ0j8rZlSr+FSz7JpCsJ25gGvtOZSzonMblaZngWbqprp
	PeV2pdc4Wxy7We436PdAxx++On+jIFo=
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com
 [209.85.128.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-80-97l04VkMND27sU7-FgIAqQ-1; Mon, 12 Jun 2023 16:42:55 -0400
X-MC-Unique: 97l04VkMND27sU7-FgIAqQ-1
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-565d1b86a63so69925267b3.0
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 13:42:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686602575; x=1689194575;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a+9OvtK97veHl6+HegxVNiurUYmzQbeChvO9xmQ5r5g=;
        b=REmXKWWBL/Nx/Kt3N0Jmu7BOb4wrTA+FLWYhGAU0I1zPrXv6IGf5TYJ39NUqsmUxNI
         chTIfUoqfLaemn6FnFUuZkEt2QEnGcwCzjSP5ADRyyaLLq4wWIpRTDAm2LFBhh7RxAiz
         BmTlWCGP3vPP1gfU6Xiuq6IInFVhMBaDs8EtGpCEq5pUiiDLvEfmGnXUJgQ4NbiLYbhr
         RIi0/demGwaTp6tsRtRr7m9nFgMEy+8i6xNSNTKFxcZ3h2O8LwQg48ya1qS7L1fMwL02
         GLA7HcT7bt5+sRoUSDWHB8V9/fDbXJT+hwVikjKXT0j9jj70pJR9Qts82ByjfnsZlcCy
         OGvQ==
X-Gm-Message-State: AC+VfDxBIcK2XPwNpXzy9ARgm8HFZ+Ov8MGw4XSx5xiiqYyKu+sEksrg
	N56NWd7k9TQwEjeOIjhNzGRt5600/xi1wVCRK2FGG55O7Jun4CqSeL5zsoWHHhQ562h4OEop07p
	peSSZUOKtVCz+Lfpnf11ks2lUCA==
X-Received: by 2002:a81:7bc6:0:b0:56d:3372:71c7 with SMTP id w189-20020a817bc6000000b0056d337271c7mr2596017ywc.23.1686602575040;
        Mon, 12 Jun 2023 13:42:55 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5xUUOwVWCsyVOTXZeMW6GB/UM/A5jZuRMVvmYBzle/O+VHgBsWxsSIEBgDZ0wTd7/cMwI9Mg==
X-Received: by 2002:a81:7bc6:0:b0:56d:3372:71c7 with SMTP id w189-20020a817bc6000000b0056d337271c7mr2596001ywc.23.1686602574825;
        Mon, 12 Jun 2023 13:42:54 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::45])
        by smtp.gmail.com with ESMTPSA id x186-20020a817cc3000000b00568cbb028c6sm2769484ywc.85.2023.06.12.13.42.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 13:42:54 -0700 (PDT)
Date: Mon, 12 Jun 2023 15:42:52 -0500
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
Subject: Re: [PATCH 14/26] net: stmmac: dwmac-qcom-ethqos: add optional
 phyaux clock
Message-ID: <20230612204252.kb57m72ehazt4bco@halaney-x13s>
References: <20230612092355.87937-1-brgl@bgdev.pl>
 <20230612092355.87937-15-brgl@bgdev.pl>
MIME-Version: 1.0
In-Reply-To: <20230612092355.87937-15-brgl@bgdev.pl>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_134259_614393_D494BF52 
X-CRM114-Status: GOOD (  23.89  )
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

On Mon, Jun 12, 2023 at 11:23:43AM +0200, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> On sa8775p we don't use the RGMII clock but have an additional PHYAUX
> clock so add support for it to the driver.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c   | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> index 252dca400071..2f6b9b419601 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> @@ -94,6 +94,7 @@ struct qcom_ethqos {
>  
>  	unsigned int rgmii_clk_rate;
>  	struct clk *rgmii_clk;
> +	struct clk *phyaux_clk;
>  	struct phy *serdes_phy;
>  	unsigned int speed;
>  
> @@ -604,6 +605,13 @@ static int ethqos_clks_config(void *priv, bool enabled)
>  			return ret;
>  		}
>  
> +		ret = clk_prepare_enable(ethqos->phyaux_clk);
> +		if (ret) {
> +			clk_disable_unprepare(ethqos->rgmii_clk);
> +			dev_err(&ethqos->pdev->dev, "phyaux enable failed\n");
> +			return ret;
> +		}
> +
>  		/* Enable functional clock to prevent DMA reset to timeout due
>  		 * to lacking PHY clock after the hardware block has been power
>  		 * cycled. The actual configuration will be adjusted once
> @@ -611,6 +619,7 @@ static int ethqos_clks_config(void *priv, bool enabled)
>  		 */
>  		ethqos_set_func_clk_en(ethqos);
>  	} else {
> +		clk_disable_unprepare(ethqos->phyaux_clk);
>  		clk_disable_unprepare(ethqos->rgmii_clk);
>  	}
>  
> @@ -669,6 +678,12 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
>  		goto out_config_dt;
>  	}
>  
> +	ethqos->phyaux_clk = devm_clk_get_optional(dev, "phyaux");
> +	if (IS_ERR(ethqos->phyaux_clk)) {
> +		ret = PTR_ERR(ethqos->phyaux_clk);
> +		goto out_config_dt;
> +	}
> +

Similar comment to the prior patch about whether or not this should be
optional (or selected via platform compatible and required),
otherwise looks good.

>  	ret = ethqos_clks_config(ethqos, true);
>  	if (ret)
>  		goto out_config_dt;
> -- 
> 2.39.2
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
