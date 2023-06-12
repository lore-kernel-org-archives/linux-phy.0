Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07A14C7EE2F
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 18:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0u9dhsicZ0TAPpHbby7iEQl+/N6CyG37uUpK2r0O+vQ=; b=ueVMYkVH2S6cqh
	wfKDeF8srD5PfW5NjUJbQL1tpZNWTZp4WzZ4PI3TiIgE/OptbPeEE6Tv+3wGJjRZEgl2wSIpVlmko
	xhPo6igiqfUJ0zfty/u98ggtVm9kF0VObYB7MuaLCzUnK4dedn8SN+HxP992NcKotNEXBO+KUvAuA
	kQJ4Td9ViEOD8iihr3JHJC0t7Kl3DvnkunHT2MAsM7dz5d/JBGehfXCMcbIMGF2TSIHwHD8d5RfrE
	Ud8RZpJFIZQQq7FCaLLunO+/TFIJuAZFe375MCsfd4vEOH9mP0PAEG7+b5T5XD2W2naynAp5q/f59
	mPi76iazFCQ7HlH4BU8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8mNM-004xyJ-2A;
	Mon, 12 Jun 2023 18:34:48 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8mNJ-004xu5-1l
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 18:34:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686594880;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=fA7PgHsHXUvTzj6r/c+oFo9WuyCUMyzAZAoI7rpa/bU=;
	b=jVBrBOQX3v/JJ/w78PsKXnN+310xNl5Bnw72/2X/fOtT8+0hChGQ5pFj4jHkpsHpcAXMKb
	jkE/eK7bAJUOhzhCH3KtJQLdy/bj56qtTvrCdGXGWNEDMPpDUm9enXych5yWQzPn4VhUe+
	j3BGjX7b6wpV+fnxkRP4G92thAeZA1g=
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com
 [209.85.210.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-470-qAgUKMNWMOGIde2bxXPs5g-1; Mon, 12 Jun 2023 14:34:37 -0400
X-MC-Unique: qAgUKMNWMOGIde2bxXPs5g-1
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-6b2940e84fdso3215095a34.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 11:34:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686594877; x=1689186877;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fA7PgHsHXUvTzj6r/c+oFo9WuyCUMyzAZAoI7rpa/bU=;
        b=GBDtbMIvATPy/u5cHfKWjuBVW7R9b4l5kgmxFHlOy+qAk5ejgGQsIG+2zLb0VpO/cz
         Qf3wN5PR9HGlqT7EQo17qjgg+mJ5WuMHvxn9goA268aRZOO9OgTvWZeRydlDw2yITqOA
         5kM4RG6QSQLX2vTRvgOo1eyImgOxeW+pmVTMhOmkKPVtB5r4UQPe31gaFYiMzJmCar/k
         yZPdDBlO2ZkE2j6rRb1skdwdUkjpcR9CPvqNZeiwyfW2x5m5ENsDZLUerwfALAldIBQe
         lUBYIjN8o4r7j2AEjjviVy3xNpEDgzd04v7g9tKBhhmP8z29YZ8R87LcMw8VAlxraXYI
         9vyA==
X-Gm-Message-State: AC+VfDzWyTN+/Uo4i9JcYZUQe1rrjZYgk40vt+T9RJYH67itgXXnXmLc
	zAkyYU3WePc7SoFknsCoxmjuY+rYLf+KQSmIMHbcpkGO+uRND/p6lI233hN1EaY/91L261/HbR2
	LGrnDGtyBRGR/HXuvnE+0RQ4MZw==
X-Received: by 2002:a9d:6299:0:b0:6b2:b82c:1418 with SMTP id x25-20020a9d6299000000b006b2b82c1418mr6159644otk.9.1686594876849;
        Mon, 12 Jun 2023 11:34:36 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ71QwPMhZSycXjuAG8mCHe8g88dFSFJqGDZsnw2ZprTbOlJNax+lvJcUSmy8K0z+ff8r52HsQ==
X-Received: by 2002:a9d:6299:0:b0:6b2:b82c:1418 with SMTP id x25-20020a9d6299000000b006b2b82c1418mr6159634otk.9.1686594876618;
        Mon, 12 Jun 2023 11:34:36 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::45])
        by smtp.gmail.com with ESMTPSA id q21-20020a056830019500b006b2a31ec95dsm4137128ota.65.2023.06.12.11.34.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 11:34:36 -0700 (PDT)
Date: Mon, 12 Jun 2023 13:34:33 -0500
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
Subject: Re: [PATCH 07/26] net: stmmac: dwmac-qcom-ethqos: tweak the order of
 local variables
Message-ID: <20230612183433.ii23wc2yie5n25vs@halaney-x13s>
References: <20230612092355.87937-1-brgl@bgdev.pl>
 <20230612092355.87937-8-brgl@bgdev.pl>
MIME-Version: 1.0
In-Reply-To: <20230612092355.87937-8-brgl@bgdev.pl>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_113446_093436_47897DA7 
X-CRM114-Status: GOOD (  16.60  )
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

On Mon, Jun 12, 2023 at 11:23:36AM +0200, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Make sure we follow the reverse-xmas tree convention.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>

> ---
>  drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> index 16e856861558..28d2514a8795 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> @@ -594,9 +594,9 @@ static void ethqos_clks_disable(void *data)
>  static int qcom_ethqos_probe(struct platform_device *pdev)
>  {
>  	struct device_node *np = pdev->dev.of_node;
> +	const struct ethqos_emac_driver_data *data;
>  	struct plat_stmmacenet_data *plat_dat;
>  	struct stmmac_resources stmmac_res;
> -	const struct ethqos_emac_driver_data *data;
>  	struct qcom_ethqos *ethqos;
>  	int ret;
>  
> -- 
> 2.39.2
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
