Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B667C7EE43
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 20:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQbeqJlOWFkRfoP5vhGPWBvaUQPRpC5doum0X0aYq4Q=; b=1ildci93Xc6Dtf
	U+tHhTdi5VPOCESHF/vXIcCJCfbzOxk/V7s3VHx9FX+DULIwlOvnxok5qA+i29SiM8mtsXNbhnEPn
	nfpZ9EDfaUQSve7T2HQnr2K0RZ2kyEEJv7LEJvWrkxkC6j6NneSyAFlh6I9wBdRloe+BmisnQEE9N
	voZXQLgYfPm3LOrWTD7vkwW5i/1tDa3ttGBRUAFXSjj3UQQ1zh7RuVrN2rNMm0R0lbnJb6tEt2fYM
	ezZTga+5uWem5LUEOwFtCQCozxVl/gr+4iC6BQF5vh9jb1xBVC/KyWBU6muwlPRN48uE+CX1myM5C
	e9WnHi4NnH9WZ4xzeCfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8noD-005Dxp-21;
	Mon, 12 Jun 2023 20:06:37 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8no9-005DwR-1W
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 20:06:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686600391;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=0M/d98x762H4zuN8FNzgVtnMfzxWhlymbFLqT2RC6Mg=;
	b=g7AyH8ga1h7TJJE20uCF79uhqfOlujIC3u+pcK+bSq0IB1SCLGKL/tD8Nr4Hcw07+dq6mg
	ZFXRcDuEu9wKwDBP4UCkdixTwADEANsUNNgzk003vhNDkq3zclEeeOO5qQTeOkTus0Crsg
	sghHDjeaLV5LQpzSWC2nvX17pN9JG2Y=
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com
 [209.85.128.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-152-uswsMlkbMCiAQBEcfMRxjw-1; Mon, 12 Jun 2023 16:06:29 -0400
X-MC-Unique: uswsMlkbMCiAQBEcfMRxjw-1
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-56d4daabd37so11538737b3.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 13:06:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686600388; x=1689192388;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0M/d98x762H4zuN8FNzgVtnMfzxWhlymbFLqT2RC6Mg=;
        b=B0iK7e++EYrI5Ed+b3rFiPa1U4KUHMwOxU6qXxTIP61ooYWtqBAfmD0Ly2zC9Hezr5
         A7LBhq3kYG7rzj6acxb4aJRl1AspViO+6eUGDchG5Irsb51tSOnhgRbUQssqax7WKq0V
         SkEcbk3qvM+Y78YHKO0EfAu22Cwt2JXyX/SM2kiLXxhxOjzRI8oFlkLg6WNqf1NeVCc3
         U81k7+C7jBNrGhUPM+2tyZrQJeFBYO1j/OCTusJP8M36jwHElHo704nGd4X13o+TaE8S
         Nlk4R7f+BddEJd/EAEh6IJzZedZwACF+nVkAJiewOwAw6N54pRnYL9GugdEIPNOzY6Si
         tteA==
X-Gm-Message-State: AC+VfDyOvY6aZakmDnZ0obJx8xxnMb4auAC/AOGhz8mSMkTtP4tecjCc
	vLIO+hFuhktDiO1MzIpCE2DFn7K85NBf3LBD+npyLWrVH7h7K+ASu3AvVPe7dF0qKCfd9iMXh/N
	apAVdUkPOEleUg49bxoIhEun8NA==
X-Received: by 2002:a0d:d914:0:b0:56d:3cb6:8a85 with SMTP id b20-20020a0dd914000000b0056d3cb68a85mr3028348ywe.13.1686600388571;
        Mon, 12 Jun 2023 13:06:28 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ76nT4fsOumxEmo+PTpkq6Cy2kw7r9EpHd6856hkyTJvZHjyfWwkpG7DXRuh3pkEkAcTXM4cw==
X-Received: by 2002:a0d:d914:0:b0:56d:3cb6:8a85 with SMTP id b20-20020a0dd914000000b0056d3cb68a85mr3028315ywe.13.1686600388330;
        Mon, 12 Jun 2023 13:06:28 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::45])
        by smtp.gmail.com with ESMTPSA id q67-20020a818046000000b0054f83731ad2sm2736173ywf.0.2023.06.12.13.06.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 13:06:27 -0700 (PDT)
Date: Mon, 12 Jun 2023 15:06:24 -0500
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
Subject: Re: [PATCH 09/26] net: stmmac: dwmac-qcom-ethqos: add missing include
Message-ID: <20230612200624.jvlyemz7g5aoen62@halaney-x13s>
References: <20230612092355.87937-1-brgl@bgdev.pl>
 <20230612092355.87937-10-brgl@bgdev.pl>
MIME-Version: 1.0
In-Reply-To: <20230612092355.87937-10-brgl@bgdev.pl>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_130633_579172_3A07DF9C 
X-CRM114-Status: GOOD (  13.29  )
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

On Mon, Jun 12, 2023 at 11:23:38AM +0200, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> device_get_phy_mode() is declared in linux/property.h but this header
> is not included.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>

> ---
>  drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> index e19d142630d3..ecb94e5388c7 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> @@ -6,6 +6,7 @@
>  #include <linux/of_device.h>
>  #include <linux/platform_device.h>
>  #include <linux/phy.h>
> +#include <linux/property.h>
>  #include "stmmac.h"
>  #include "stmmac_platform.h"
>  
> -- 
> 2.39.2
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
