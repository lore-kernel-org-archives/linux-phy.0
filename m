Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AEBEC7EE23
	for <linux-phy@archiver.kernel.org>; Sun, 11 Jun 2023 20:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3mKdc5a8SD2PK6MBNrP22UhMRRKtns1Wq0lUmKRKuvg=; b=tj6eV3JAo5LO0Y
	Iz0pO85s+NXqLczXMaQIpqzD4kXiS+q4Zxd0uudFfZ1DmWvkTsOHkBZat7LRgSzGnylapPI5PIVau
	boG1qCIFm2g1rGsODhfdP015gKCDhMkFrr6qdONWHM+HcCvVYZTDkakn9IsZQUq3OYFEkHvhnw1qj
	+hQgLGJsnTmaDBoo8hZunC8DTBnYNTWUjbTW+SYBaVvsDXW3xsoWWqYFroYMl6xRbey1i1vjKytrw
	PPnNGy56mg8YJ4wgeM+uoedRCqi77TMdSArTpaBNRDd+9p8kg5z3VebqRHOp6HEe4v2VcblLiHvs0
	7zJTkxaVB96AB0+2IM/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8RLU-001fYR-2W;
	Sun, 11 Jun 2023 20:07:28 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8RLR-001fXn-2s;
	Sun, 11 Jun 2023 20:07:27 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2b1afe57bdfso40981751fa.0;
        Sun, 11 Jun 2023 13:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686514043; x=1689106043;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DPAXUJMl2olgLfel3fMTObIngqSlcX9cwamWvtgEryU=;
        b=U90IpPzzDT1hYVjCAzUYQ8SH+qZ9LJ9b/4gKcgd+QWBGGt4cwKs1AO/LJKvWQOxGdf
         lFFhRDU67j/CuN+5SSBeK8eIyTTICTlp1/3oGlSk2HT0eaheaM8BHDVoxjMsIk1eHdOu
         dxAZhMmOu2UrspCZ0gp2W8G4zac+HtXkoTUJjQfHR8TBAMjPpKWbjM56LVCoWftyshRI
         eE2N7r9tK1tDu9BmGFvIbR/BbkLIaj3al69jy+m/iARqsrLiWBTRA5i5gwHM/HV7YG/E
         CGxrK3sqptY+OvelKMemwVbaehCExCG5iMGDE0kejZGQAWcP/Dsiqpq4AsxCv3FV98R5
         RjSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686514043; x=1689106043;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DPAXUJMl2olgLfel3fMTObIngqSlcX9cwamWvtgEryU=;
        b=g8Mmosw3/ytalDleQoIroraCBAku4WYMOi9kBtz8wS84YtbxpvmTt+Vy+qd6L5yObB
         sMSinRQEZ/4S1V5JqO5BJ6e52UXo2VB/46934d1kKk9xyCfGjUPUxCpZQbTesAfJ1c+u
         6lYOr6DAbOpY+aMCdqKvzee9to7e0rxJWZuzJt1jKfDuQejB3qjUsZuHGudqWY3zSjxM
         NFH2pAoY/8TgKzzKD99YxdJUYCLF53VxU+5SnTgF0VT1q2MKPDlL83s/gY0JlO2rLKRq
         R4J+nPn+sfauQEtPOhZEsYi6gXFq8nHP4FKeYo2yqkrCep7qFz7Vze21L0G1E0fPE9py
         huqw==
X-Gm-Message-State: AC+VfDz/DCdahk/0TFlOTXWBVU5+oMDbrmdBwZj7CfrmSrcTPpBoSZDf
	iez843QMmu3KZL+l+bHT9i4=
X-Google-Smtp-Source: ACHHUZ7TUfI6VgL+wCYiJszZCQaUW35B1SFLTNT2ijeS+m8ypXT3rz4F5aZE/26qGRRhbAtmY3gF9Q==
X-Received: by 2002:a05:6512:1d1:b0:4f3:94b5:3274 with SMTP id f17-20020a05651201d100b004f394b53274mr2903819lfp.63.1686514042768;
        Sun, 11 Jun 2023 13:07:22 -0700 (PDT)
Received: from mobilestation ([95.79.140.35])
        by smtp.gmail.com with ESMTPSA id s6-20020a19ad46000000b004efff420b11sm1235506lfd.181.2023.06.11.13.07.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Jun 2023 13:07:21 -0700 (PDT)
Date: Sun, 11 Jun 2023 23:07:19 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Damien Le Moal <damien.lemoal@opensource.wdc.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-ide@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v3 1/5] dt-bindings: ata: dwc-ahci: add PHY clocks
Message-ID: <20230611200719.exct7r7z5izqzz4t@mobilestation>
References: <20230608162238.50078-1-sebastian.reichel@collabora.com>
 <20230608162238.50078-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230608162238.50078-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230611_130725_934767_6C4EAF65 
X-CRM114-Status: GOOD (  13.38  )
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

On Thu, Jun 08, 2023 at 06:22:34PM +0200, Sebastian Reichel wrote:
> Add PHY transmit and receive clocks as described by the
> DW SATA AHCI HW manual.
> 
> Suggested-by: Serge Semin <fancer.lancer@gmail.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Looks good. Thanks.
Reviewed-by: Serge Semin <fancer.lancer@gmail.com>

-Serge(y)

> ---
>  .../devicetree/bindings/ata/snps,dwc-ahci-common.yaml     | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml b/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
> index c1457910520b..34c5bf65b02d 100644
> --- a/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
> +++ b/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
> @@ -31,11 +31,11 @@ properties:
>        PM-alive clock, RxOOB detection clock, embedded PHYs reference (Rx/Tx)
>        clock, etc.
>      minItems: 1
> -    maxItems: 4
> +    maxItems: 6
>  
>    clock-names:
>      minItems: 1
> -    maxItems: 4
> +    maxItems: 6
>      items:
>        oneOf:
>          - description: Application APB/AHB/AXI BIU clock
> @@ -48,6 +48,10 @@ properties:
>            const: pmalive
>          - description: RxOOB detection clock
>            const: rxoob
> +        - description: PHY Transmit Clock
> +          const: asic
> +        - description: PHY Receive Clock
> +          const: rbc
>          - description: SATA Ports reference clock
>            const: ref
>  
> -- 
> 2.39.2
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
