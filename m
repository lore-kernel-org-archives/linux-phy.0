Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26B2FC76196
	for <linux-phy@archiver.kernel.org>; Thu,  6 Apr 2023 16:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oogp0NDvrFhfDu094YR+5ASD215VO+fgJ1ohFqZWyeI=; b=q+QHyrIyeVMm8p
	t+rq4UVmP/z9nKbBslueWXl63qb0nVG4FVIjnRRsZz2YLECZ9b8eBxrIFUioY8YLxMbkWQI65x9no
	keBZzCtcNNFiX8BFnvCc4QqCrbmajev4DozhJ1EwRXXb7Gu3Q1JnV/78Fw8Ji39n2cpZidrCaPfCM
	QUo7y+KN16NZppS2ibtGIL6MhBUfbb6UVGbRF+Iihkke7uw//86oqegxhdChdKBHCY7wkhtFCttdV
	PMb8HFBaVS/sP83Gx5Z5ySqb0wUOfojHSap9DskJiJyOdEassCjfrOHphqvk6+Aom0GJo1/XcqR76
	hF7dM/u/k0PUITt6xrzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkSld-00835j-27;
	Thu, 06 Apr 2023 16:47:21 +0000
Received: from mail-oi1-f171.google.com ([209.85.167.171])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkSlb-00834i-0Z
	for linux-phy@lists.infradead.org;
	Thu, 06 Apr 2023 16:47:20 +0000
Received: by mail-oi1-f171.google.com with SMTP id f14so15937271oiw.10
        for <linux-phy@lists.infradead.org>; Thu, 06 Apr 2023 09:47:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680799634; x=1683391634;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4YfchWdjXjTn0JuMSZJ2W3hFarimqnpUe1TA/nvAeH0=;
        b=ZCumhtTjV8tryajo3u62htLk2hphmfSH5yXLkruAKp9wQWu//JROvTQSXJL/OIHcQk
         /JPqNtPc78mmpwdkmVJIAqp4ildM7wlArhHHPdqaZuJxvU9kDEBRZpEC62HmirngVHYr
         FTwLZli8O6DXY7W+1kmOLtV4JnVWygUiGk082GLgNSkC5D4wy/Y+v9RqASDX4zQdkNDZ
         w6FFr4S4XhNpSuWmcYTsocCZ2phcgrpoOFHRCelSFnDYvDguvz3gqlQ70FZ3NZpAFFAH
         LMMeaiVlKb535So9blEDrO0gI7ZOArBWX8Ut6G8WFMzPGX5x/8KNcB9DX1BshQBVFoIT
         Y6TQ==
X-Gm-Message-State: AAQBX9e5D90dkxHp6+TgHhFosOaCVrZsTkbGisZ/lHAPaymcLRTYflcb
	SUnT+YBjgGtsPOJS5gLihQ==
X-Google-Smtp-Source: AKy350bbuaIAoZEiwjlysJa0+efhJhrgeaPw7tJOM4quQaWsEDJyjqAZugMjUjS4tmDtQcileK3kag==
X-Received: by 2002:a05:6808:257:b0:387:1b0f:c03d with SMTP id m23-20020a056808025700b003871b0fc03dmr4863580oie.28.1680799634503;
        Thu, 06 Apr 2023 09:47:14 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id bj22-20020a056808199600b0038733b00a5fsm856210oib.10.2023.04.06.09.47.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 09:47:14 -0700 (PDT)
Received: (nullmailer pid 3282311 invoked by uid 1000);
	Thu, 06 Apr 2023 16:47:13 -0000
Date: Thu, 6 Apr 2023 11:47:13 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Abraham I <kishon@ti.com>, Yuti Amonkar <yamonkar@cadence.com>, linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org, Swapnil Jakhade <sjakhade@cadence.com>, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 2/5] dt-bindings: phy: cadence-torrent: drop
 assigned-clocks
Message-ID: <168079962419.3282109.11445334016801468789.robh@kernel.org>
References: <20230404190115.546973-1-krzysztof.kozlowski@linaro.org>
 <20230404190115.546973-2-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230404190115.546973-2-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_094719_214000_18B9C19E 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
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


On Tue, 04 Apr 2023 21:01:12 +0200, Krzysztof Kozlowski wrote:
> The meta schema from DT schema already defines assigned-clocks, so there
> is no need for device schema to mention it at all.  There are also no
> benefits of having it here and a board could actually need more of clock
> assignments than the schema allows.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/phy/phy-cadence-torrent.yaml        | 6 ------
>  1 file changed, 6 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
