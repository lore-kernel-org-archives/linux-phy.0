Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B812C88CB2
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 20:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CanAn/Tekdr6Ab9Z3g6BYmouiNqb1FWKqWyOqlRiv+k=; b=RfezueVrakcMvH
	qPudNMl/cLyJtZJJjU7o5uz836rQusdMLZHgXb5opp68TARsFYSC/EEcRHSTEoB51PUgFyQvdu4it
	OSS2aYxOumMfm+XerdAos3Z8CSqsyRI+rQkTban2ioI+Ri+8++QJ0VtnrT0n+eXyLX6ff70gzJ1bI
	TkAxBEdbaPBKydiTGyv/gRu3oWSPGfYSfBjCC78d36WwVIJZCg2Mr2SxC7lNGpbN/UTnRrFuGzZO7
	XflS2nt8DkiNUmA1SUwItu5jB/CEZ1Pj2u2xPunqELl24MRZcM5hCDJvHOYfl8/wBZACGpas6dOB/
	nPeBhBq0g0dngyzuc/EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8noh-005E4t-0n;
	Mon, 12 Jun 2023 20:07:07 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8noc-005E3F-2c
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 20:07:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686600421;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=X+0noFHcj2yLtNYh9uCwW0uaG8SfjbhqsP5is69vjY8=;
	b=Nmq5ShtWfiH5S3rXoXpJaLp6mSEgV2TNAh2iPKimY7+ZUHZKBM3zJnYBJZIw01ePcomypf
	Zp0Z+9/wEuX76JFoPckgIgvrpESXiC8LcKDyC4fZxasPOZ8/9Hnd2sQtd/4Oux21hgoBon
	MU8OEc/8fFopiX8p4JiOMHvoIU7UlkQ=
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com
 [209.85.128.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-161-gYopEQLON0uuhAguUUdDNw-1; Mon, 12 Jun 2023 16:07:00 -0400
X-MC-Unique: gYopEQLON0uuhAguUUdDNw-1
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-56d1d3726a2so26578597b3.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 13:07:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686600420; x=1689192420;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X+0noFHcj2yLtNYh9uCwW0uaG8SfjbhqsP5is69vjY8=;
        b=lXBl3kWKWtyO1coP2diYA6InmdPlm3DUdKXVCzsR8YycXIQ1O7YuE/VLsCdlXQpgv9
         8GuL25GpKeN7zh3Jk79Vss/9L3ME8BjIRMhf68MXsqUh5myjc1SIDXqrpONB5AIU9zRJ
         SzjilLj3pjGLtEG/qBZtxhWNy25tCXiaHyW7R/kh5wx+Nnb/8B2tgUhpCd8XA8C1Fsac
         ZItysZwz2eNYT92AfgcIKOL+WgPom48kdIYfZx3zucbbmQ52aDCGzCIFOD1s55XSO3MC
         wAGjjZIX6icgIcgJLMyR6F6DJD+9JO+QMcgUx8wL3QKrTXc7akg9/3glDVb+JJX6WYBN
         e3FQ==
X-Gm-Message-State: AC+VfDyHTFb0HLKSSGDxq3kthZLtS/gB+MuGYzo1q2MqdPudUiCRYD82
	ek6wDhcsXZvUp2fzrfHllimCi05Ex694CBFKrIjITbPIdH30P9xZidaq/AGgpo3bbCiUJwBg7Tn
	ZZOI50RgSYX17EPHbEQ9p0CFfyg==
X-Received: by 2002:a0d:d142:0:b0:569:feee:3950 with SMTP id t63-20020a0dd142000000b00569feee3950mr12226036ywd.2.1686600419885;
        Mon, 12 Jun 2023 13:06:59 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7PzolWatF3tOgmfa9XBAGwXjOlATUx5vSje4PclwYgketu3avPNRnBzek6n0LaOUY30qXC9g==
X-Received: by 2002:a0d:d142:0:b0:569:feee:3950 with SMTP id t63-20020a0dd142000000b00569feee3950mr12225997ywd.2.1686600419621;
        Mon, 12 Jun 2023 13:06:59 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::45])
        by smtp.gmail.com with ESMTPSA id m14-20020a819e0e000000b00568e7e21db7sm2713928ywj.96.2023.06.12.13.06.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 13:06:59 -0700 (PDT)
Date: Mon, 12 Jun 2023 15:06:56 -0500
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
Subject: Re: [PATCH 10/26] net: stmmac: dwmac-qcom-ethqos: add a newline
 between headers
Message-ID: <20230612200656.ndt5pwhi3gqj42a5@halaney-x13s>
References: <20230612092355.87937-1-brgl@bgdev.pl>
 <20230612092355.87937-11-brgl@bgdev.pl>
MIME-Version: 1.0
In-Reply-To: <20230612092355.87937-11-brgl@bgdev.pl>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_130702_919627_A9157A0A 
X-CRM114-Status: GOOD (  13.56  )
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

On Mon, Jun 12, 2023 at 11:23:39AM +0200, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Typically we use a newline between global and local headers so add it
> here as well.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>

> ---
>  drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> index ecb94e5388c7..5b56abacbf6b 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> @@ -7,6 +7,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/phy.h>
>  #include <linux/property.h>
> +
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
