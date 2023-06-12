Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9197ACA9EAF
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 21:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uf4p2jPegSgQxPGZgfghJ/5IGhX/8pk1f3s7BxAM8zw=; b=QO/koca7/D3cOl
	t0qVrB0sFqzhpCiNLLN9l1pnHx2ZZTZCEIqrITHoTl3SiwIkYb6q39PogrYGzr4Wd0jHMy8vONXmF
	8SrWzRcqcc9ayyKesYPqHeLuQo5nEBEt9prUBMDJZq8js2HEf0XhECr6sGgCn9JsGEU1pYj7znPxQ
	T9AHX4sipGw4Gr1qxm56Q0qYCCupF0AS+w6lYa/ewmvMGWzGmKy8n3ikPeLmO+Oz75n5F5bqUAW3Z
	haOd434So+vgoVdjcPyHbh5yUEAR3CSwT0rw8/hAD0Y59O9BZ+aWqpGCR4KfRxgPpD1GGUBeUF8rk
	GWs3NFEh36pPjlN6cmYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8olz-005QrK-0C;
	Mon, 12 Jun 2023 21:08:23 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8okJ-005OqH-1S
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 21:06:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686603997;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=UVvZ3v/vxKNyCI7w7GwLJIJ0X+T6wDAbj+0uoM6y2a8=;
	b=LFYTuFbWbL0geGciVMTuOBOpR5KU+ErMFNDZKjpl7toJN45j8AZSmrPg+KQsVHNTk273EO
	c8UhBaXiGnDjuwKTahUkmWzFjYLB/ejFePDofmxujE0kxedz7x7nQErNjSfUIclhAK5qwy
	4NVmkAKNV9GDhvjIudFrBAd+vNQDlX0=
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com
 [209.85.160.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-495-IRoKmV3qOTeYJP0QaUyNWg-1; Mon, 12 Jun 2023 17:06:36 -0400
X-MC-Unique: IRoKmV3qOTeYJP0QaUyNWg-1
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-1a36e3f83c8so3166652fac.0
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 14:06:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686603996; x=1689195996;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UVvZ3v/vxKNyCI7w7GwLJIJ0X+T6wDAbj+0uoM6y2a8=;
        b=FR7wvUBLvGBmI5talB0w/Z/hyR5+fqMzsNs5hVpWyZpmXrPODPlkrZedtEaNq6Jef7
         TG/IBPbxQr7o5MgtP0RvrKZLqED+Leg7CGRywnw4zM4TKUeiw9Ej2TbrRAIRTx2qAyt0
         pBAqU8EJ2PCt6MR9iAOWnoPh/M90vA8vfLfTfXjmZduXniQNnw/XWB9UWZ/Ss/e6YA0E
         EtrdIy6QGearDwuat12e2SDUkdAMdzNSGl7HAFoKgmVdg2ad8a/kaj8QfVXJcNIjGGXR
         A7Im/552wtVUo0AmGNRhC6Hg2/oRqqAoimXV9Vk8kYfo46Fm39N5pIauzRIrJf3NPQNB
         WU1A==
X-Gm-Message-State: AC+VfDy57zSgcQiyF0rwK4uaU5FwUobda64cCVU2Llj4IJZQdja8LwhZ
	E8GfXvWPp3aITQovizP1ZgOa1P2aQFhXIynvMyOl9mKkOT9wlL1Qgz1gijHLoFGlbc3L5nhesqi
	x4/lTEWIqVcsVy42BH9R8do0LBA==
X-Received: by 2002:a05:6870:770d:b0:1a6:7ae5:8e31 with SMTP id dw13-20020a056870770d00b001a67ae58e31mr2707685oab.15.1686603996096;
        Mon, 12 Jun 2023 14:06:36 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5l8CIOc/fjbn/4dLBsqStqDJVa3ICb/fLC7IjnpwzGvy8FQcOZ753YVKUTI3PaLVSqB/0bAw==
X-Received: by 2002:a05:6870:770d:b0:1a6:7ae5:8e31 with SMTP id dw13-20020a056870770d00b001a67ae58e31mr2707670oab.15.1686603995860;
        Mon, 12 Jun 2023 14:06:35 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::45])
        by smtp.gmail.com with ESMTPSA id nw27-20020a056870bb1b00b001a6825ed5cfsm2251974oab.4.2023.06.12.14.06.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 14:06:35 -0700 (PDT)
Date: Mon, 12 Jun 2023 16:06:32 -0500
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
Subject: Re: [PATCH 15/26] net: stmmac: dwmac-qcom-ethqos: add support for
 the optional phy-supply
Message-ID: <20230612210632.agp4ybeseujblao2@halaney-x13s>
References: <20230612092355.87937-1-brgl@bgdev.pl>
 <20230612092355.87937-16-brgl@bgdev.pl>
MIME-Version: 1.0
In-Reply-To: <20230612092355.87937-16-brgl@bgdev.pl>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_140639_583697_E9AB7C3E 
X-CRM114-Status: GOOD (  19.88  )
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

On Mon, Jun 12, 2023 at 11:23:44AM +0200, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> On sa8775p-ride we need to enable the power supply for the external PHY.

Is this for the external phy? It doesn't seem like it from the board
schematic I have... the regulator never makes it out of the black box that
is the SIP/SOM if I'm reading right.

My (poor) understanding was this was for the serdes phy that's doing the
conversion to SGMII before hitting the board... good chance I'm wrong
though.

> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> index 2f6b9b419601..21f329d2f7eb 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> @@ -8,6 +8,7 @@
>  #include <linux/phy.h>
>  #include <linux/phy/phy.h>
>  #include <linux/property.h>
> +#include <linux/regulator/consumer.h>
>  
>  #include "stmmac.h"
>  #include "stmmac_platform.h"
> @@ -692,6 +693,10 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto out_config_dt;
>  
> +	ret = devm_regulator_get_enable_optional(dev, "phy");
> +	if (ret < 0 && ret != -ENODEV)
> +		goto out_config_dt;
> +
>  	ethqos->serdes_phy = devm_phy_optional_get(dev, "serdes");
>  	if (IS_ERR(ethqos->serdes_phy)) {
>  		ret = PTR_ERR(ethqos->serdes_phy);
> -- 
> 2.39.2
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
