Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59929C678D5
	for <linux-phy@archiver.kernel.org>; Wed,  8 Mar 2023 23:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g4kzMiEW8E3Wkelgw8U7TvrZZmi8c4Yj4Q6U9jkqpco=; b=bI6p1bXV3w8p/D
	ui1J6dRrBWjuCfPoB/nmmXJmh8/8rfDYBc4XPsc4V6j47W87nSA/+dBxIUZFePDEAw+5a23jrqKtr
	2VmYCP766BvQN/sGLno97qpTQ0Ag5BgaDuBTNcPGfajLjWYzJvAuT/oJWbSEyetBvAyHFS6xDcNos
	uD8ye6vjAR8G5x0eBS3wnZr04vGdmJhNoK6L7bTwFpY5yHEZfMGnO22Uiu77uB9tX1DTHEhUehGoM
	++FnZAsYjPN1oxoDsSGk5VvFPU2cyP2eoYly+2HACIFojRJ1oE9/noT2s8SfM9/2v3F5QozMSfjKE
	5wal1O4D4OEGxLtcObdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pa2wr-0073GD-M4; Wed, 08 Mar 2023 23:11:53 +0000
Received: from mail-oa1-f50.google.com ([209.85.160.50])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pa2wR-0072y7-Qe; Wed, 08 Mar 2023 23:11:29 +0000
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-17638494edbso459759fac.10;
        Wed, 08 Mar 2023 15:11:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678317084;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sZpzTxP9pW1iBHQk9wRx6hMBRNY1p1JwGR3VDx2jwqk=;
        b=B3si318Fz4ppAq0vQ8xFC8Sffr/saS81/e93dIIA3Z2jHqB3WS8phPPJ7ZYM9/dUkY
         bS96dZVtmDhvzSv0XzeutOtqK+VpBcxQ3cYHCVy8ZDJD0bdqWc1IuLKu5B+hk/fRmUgW
         RoIY4PU0c1tTktVN64UrNCSBE0NjQqu13fJ4xei3DY+3WEsEclDgKfIIlB7GOOxRBKGt
         jNZtq4uuqXYtEkTznaS4bPBIQdaov0rGlig3GE3nBsgo7m6SJIfW6B15ROE0h+eoIyRE
         NmMrBgxuv6kIjomMNDCNex7ZPLgQkXVUwYACnVfJoCjOCAjbUmLfayzEvZzDjTbaoIlV
         jN0A==
X-Gm-Message-State: AO0yUKUxOfy/8FriaYHY3iJSknVa/rt8BsZ8/vqwMZfkd3mZ4mHd8aW1
	SJdPbeBHSFrAgPV40AhbZPQqmHDnEQ==
X-Google-Smtp-Source: AK7set+GQezD3s44J8QbgIKux6j6r+1ND9bRslkRgIszTGTYlsmg8oIPSAKZbv6hx45+kb2D2todPQ==
X-Received: by 2002:a05:6870:b251:b0:176:26fe:d473 with SMTP id b17-20020a056870b25100b0017626fed473mr12265865oam.12.1678317084085;
        Wed, 08 Mar 2023 15:11:24 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id t21-20020a0568301e3500b0068657984c22sm2019932otr.32.2023.03.08.15.11.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 15:11:23 -0800 (PST)
Received: (nullmailer pid 4048309 invoked by uid 1000);
	Wed, 08 Mar 2023 23:11:23 -0000
Date: Wed, 8 Mar 2023 17:11:23 -0600
From: Rob Herring <robh@kernel.org>
To: Sean Anderson <sean.anderson@seco.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linuxppc-dev@lists.ozlabs.org, Camelia Alexandra Groza <camelia.groza@nxp.com>, Bagas Sanjaya <bagasdotme@gmail.com>, Ioana Ciornei <ioana.ciornei@nxp.com>, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, Madalin Bucur <madalin.bucur@nxp.com>
Subject: Re: [PATCH v10 04/13] dt-bindings: gpio-mmio: Add compatible for
 QIXIS
Message-ID: <167831708254.4048249.12955206935149233096.robh@kernel.org>
References: <20230306191535.1917656-1-sean.anderson@seco.com>
 <20230306191535.1917656-5-sean.anderson@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230306191535.1917656-5-sean.anderson@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_151127_898789_64562168 
X-CRM114-Status: GOOD (  11.14  )
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


On Mon, 06 Mar 2023 14:15:26 -0500, Sean Anderson wrote:
> NXP has a "QIXIS" FPGA on several of their reference design boards. On
> the LS1088ARDB there are several registers which control GPIOs. These
> can be modeled with the MMIO GPIO driver.
> 
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> ---
> 
> Changes in v10:
> - New
> 
>  .../devicetree/bindings/gpio/gpio-mmio.yaml        | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
