Return-Path: <SRS0=/0rM=KC=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C953C433ED
	for <linux-phy@archiver.kernel.org>; Fri,  7 May 2021 22:12:12 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8DBF261377
	for <linux-phy@archiver.kernel.org>; Fri,  7 May 2021 22:12:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8DBF261377
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TF2cFy1tnUcdljkJQxxDyhqVcGs8tr5Wl2YiXN1Euz8=; b=QVZSS2mIXH0LuQ8pzvBDbxVNP
	fLpMp7HlolBAo4MUecU5OKdlSpZZs2IDaWv4wN7Y7s3Y5G/7h/T1Em7sEGNvg4qUtUyPfAJm7aGhL
	HxS9m7DwX/9meQ/Zd2noyiBHkVE+/HiamWUGFcxj6wdG7ndyjeQzTdyPw3HoayyUkcapMcgKH2GEY
	HDrxUKFNGSWSYar7TE05MLRnLrAJBQT+sG8/Z4hA3ecDi3iwMJ+rKvTJMq467H0enXj44ebwmatc8
	gQtuwAtjC8Mcn8WvedD1g1XMf0DwhFL82AZK8PAUGxVwCrubkb2N1W/rjzUIq+eiuOECZxdJMAWBw
	zkxmTxuXw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lf8hc-00891G-Jn; Fri, 07 May 2021 22:12:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf8ha-00890r-HY
 for linux-phy@desiato.infradead.org; Fri, 07 May 2021 22:12:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=/rvNcQv5ALxrR0naTewdJhe0quQ9LN/bF0ysksseIEY=; b=YtAySW7MnbCg1HGafGo8++BpdO
 ueaPdl78sfMilqJFTKjtQ/2EIBU2/0A4e+Gmx5kU+z8puD1n/LnboqGZrdsjCE1YRGtJuxsFPYXgD
 CLzm8Kv9VxL7DVyBLF5CcDDp0mSy0rEpQj6sJGaWNCyWrrcY0TvDPsPKauIrmALG5KX3DAJJ0sl6X
 /fn+kEqMqvEK9JYOcEuFi5xbDZdzkHmXJOKwkQZubP1wiwXETveY6LPEa3RR6t3KhbafiJ1SJs4hq
 uhe0QNm+B/UMrtOkC4f22uh/28hsiBtgK+lE9QFIzTu19qunM8M56U723SQWbnNG5TKZO3ZXv2exQ
 4lDcJkvA==;
Received: from mail-oo1-f52.google.com ([209.85.161.52])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf8hX-007DU4-WF
 for linux-phy@lists.infradead.org; Fri, 07 May 2021 22:12:05 +0000
Received: by mail-oo1-f52.google.com with SMTP id
 h9-20020a4a94090000b02901f9d4f64172so2278306ooi.5
 for <linux-phy@lists.infradead.org>; Fri, 07 May 2021 15:12:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/rvNcQv5ALxrR0naTewdJhe0quQ9LN/bF0ysksseIEY=;
 b=FE0bqZhqn+n1Cr6iq3vn1q4HwBEItICUhWCl1W6/mKJ81W2OWgwwXgyQXna3CK6yJe
 SPmEBU4yCM3RdbgWdCK3HXnFKFB0HX13KfCtZYFGyzSIbSuBPqvuHs2PHShqVBO0CZw2
 LAzfjbskpVaumUBG7USYYuBfvhHhou6QhPpvkDOL8UDCcqBOjvUnj3AQvI4xasyeEpHH
 YtSz3dgoaBzxDFWiqSZFvxDZX1MvnSBWLZwp9Rh9oqOkhIvUt30CfaPFjwwGh9Yp3CEE
 aVIL10TuFA/k4IS1rkgLzrbI6rLzx/1k74QhAdsMKlXr47iRQlRP0L4UTjuXEmjhT7Lf
 SSBA==
X-Gm-Message-State: AOAM530uwzEFgjEbC2bzqebgPNX9GRTrZknonOzNvh1JB+OKtqUImA9a
 lcm/Hqh/4DS0sENthsp+Mg==
X-Google-Smtp-Source: ABdhPJzvPtsvbac2Jn5WYp0UEmz6zR4DRNDm3TNvPg3pBSSYiFtETu2wQBHRtLL52BozFDBoXwU57A==
X-Received: by 2002:a4a:d98a:: with SMTP id k10mr9444899oou.51.1620425522176; 
 Fri, 07 May 2021 15:12:02 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k8sm1212467oig.6.2021.05.07.15.12.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 May 2021 15:12:01 -0700 (PDT)
Received: (nullmailer pid 2987891 invoked by uid 1000);
 Fri, 07 May 2021 22:12:00 -0000
Date: Fri, 7 May 2021 17:12:00 -0500
From: Rob Herring <robh@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, kishon@ti.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev, gregkh@linuxfoundation.org, neil@brown.name,
 ilya.lipnitskiy@gmail.com
Subject: Re: [PATCH 2/5] dt-bindings: phy: mediatek, mt7621-pci-phy: add clock
 entries
Message-ID: <20210507221200.GA2984128@robh.at.kernel.org>
References: <20210506111531.21978-1-sergio.paracuellos@gmail.com>
 <20210506111531.21978-3-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210506111531.21978-3-sergio.paracuellos@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_151204_062769_76CEF773 
X-CRM114-Status: GOOD (  17.61  )
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

On Thu, May 06, 2021 at 01:15:28PM +0200, Sergio Paracuellos wrote:
> MT7621 SoC clock driver has already mainlined in
> 'commit 48df7a26f470 ("clk: ralink: add clock driver for mt7621 SoC")'
> Hence update schema with the add of the entries related to
> clock.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
>  .../bindings/phy/mediatek,mt7621-pci-phy.yaml        | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
> index 0ccaded3f245..d8614ef8995c 100644
> --- a/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
> @@ -16,6 +16,14 @@ properties:
>    reg:
>      maxItems: 1
>  
> +  clocks:
> +    maxItems: 1
> +    description:
> +      PHY reference clock. Must contain an entry in clock-names.
> +
> +  clock-names:
> +    const: sys_clk

You don't really need -names when there is only 1.

> +
>    "#phy-cells":
>      const: 1
>      description: selects if the phy is dual-ported
> @@ -23,6 +31,8 @@ properties:
>  required:
>    - compatible
>    - reg
> +  - clocks
> +  - clock-names

Technically, you can't add new properties and make them required as that 
breaks the ABI. If that's okay here, explain it in the commit message. 

>    - "#phy-cells"
>  
>  additionalProperties: false
> @@ -32,5 +42,7 @@ examples:
>      pcie0_phy: pcie-phy@1e149000 {
>        compatible = "mediatek,mt7621-pci-phy";
>        reg = <0x1e149000 0x0700>;
> +      clocks = <&sysc 0>;
> +      clock-names = "sys_clk";
>        #phy-cells = <1>;
>      };
> -- 
> 2.25.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
