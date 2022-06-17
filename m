Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03215C43334
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jun 2022 23:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5pylo2Y1dDaCDFroA0zx5Xe/6qFrCZaugsoIJ7i8RlQ=; b=wdgSr6NUevCKt7
	xw+eKy3DKaU2fJXVja19dtB44GGMs7hjj+G7GqxUjtRGNaWzdOnLIfz2gn5V2sM1qPdyiNvYAoa19
	P8LPn8nqn8cPO/UOy2sEDTEEoO6/QEKHwnI/GMlI9dlcFcfFSwOxOOGD1QOzEfQJbq5GX0z8dG+Nj
	KDIm8B933qe4h5LSXZWCNcrZ5uJMS0sQYVbiu0ddwvx9UVayKtbK5r3QEOea4meFyxgeRuxeDaIBk
	9IOC1dkXYyVBiNoIONopKmBaBPRcrs2uTg9EotyJ/3ZbrH++XdooUPakVIzlMI6M10eFFm9X3cCB6
	5fKSpUvYrmqyohX8aoFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2LND-009dD7-AC; Fri, 17 Jun 2022 23:27:31 +0000
Received: from mail-io1-f46.google.com ([209.85.166.46])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2LMy-009d6q-1p; Fri, 17 Jun 2022 23:27:17 +0000
Received: by mail-io1-f46.google.com with SMTP id q11so5960893iod.8;
        Fri, 17 Jun 2022 16:27:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=mrnGJfuJSJ8KmPJjJNK/2HMET0pHuhxW1Qzfgjvk8ws=;
        b=rZsogEkXbKXYx4Ev+PgB5ScDpx/5WmqwwcEzsjhwMZl5FhsWZ1KpJcY3CJP0TVvIYf
         EfcJ8WioZ/WrTjwu0Z9xtbtTWNARK4VUKxttEqb8zcH6NSKfUz552hmwV/ISUSI4IELq
         NGl12ivpZ6b9LVBpF+D3Oi6EMwOaHZROl5tiO6bP0NjE78S4pCnP6T3c/9fjxOu9UbVc
         FeC0EoUZwATpmz0kA2lyzEDTCjkBLDoI4G7YxnQCUrQkM+cQfsdHRYbAT3ZmzPGhpHUZ
         mkFNnlarjMUa19YvJif6OLywS+pXYse0TwCgM39JV0w8hGz20k1D9wUqEwf8YxjBCa8x
         sbzg==
X-Gm-Message-State: AJIora9+VH+JCgVhIEEQaPrbGekDz0SyeZuBi00c7hz8gSvEoWmNbU5p
	a6J7XY3Pi7ClxNu7rcx71g==
X-Google-Smtp-Source: AGRyM1tifihKpTdp799WxK6Tc+JX6s/X9nrpMyulN4Y0ijrWTb5i6wkhgCyeLD424gLNC7G3gBG1Aw==
X-Received: by 2002:a05:6638:138f:b0:332:1c0:1e81 with SMTP id w15-20020a056638138f00b0033201c01e81mr6550749jad.293.1655508434839;
        Fri, 17 Jun 2022 16:27:14 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id h20-20020a02b614000000b0032e70c4e12fsm2771998jam.28.2022.06.17.16.27.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 16:27:14 -0700 (PDT)
Received: (nullmailer pid 2635209 invoked by uid 1000);
	Fri, 17 Jun 2022 23:27:12 -0000
From: Rob Herring <robh@kernel.org>
To: Sean Anderson <sean.anderson@seco.com>
Cc: Eric Dumazet <edumazet@google.com>, Vinod Koul <vkoul@kernel.org>, netdev@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Jakub Kicinski <kuba@kernel.org>, Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>, "David S . Miller" <davem@davemloft.net>, linux-phy@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Madalin Bucur <madalin.bucur@nxp.com>
In-Reply-To: <20220617203312.3799646-2-sean.anderson@seco.com>
References: <20220617203312.3799646-1-sean.anderson@seco.com> <20220617203312.3799646-2-sean.anderson@seco.com>
Subject: Re: [PATCH net-next 01/28] dt-bindings: phy: Add QorIQ SerDes binding
Date: Fri, 17 Jun 2022 17:27:12 -0600
Message-Id: <1655508432.548094.2635208.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_162716_129611_5DA19DDC 
X-CRM114-Status: GOOD (  23.38  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Fri, 17 Jun 2022 16:32:45 -0400, Sean Anderson wrote:
> This adds a binding for the SerDes module found on QorIQ processors. The
> phy reference has two cells, one for the first lane and one for the
> last. This should allow for good support of multi-lane protocols when
> (if) they are added. There is no protocol option, because the driver is
> designed to be able to completely reconfigure lanes at runtime.
> Generally, the phy consumer can select the appropriate protocol using
> set_mode. For the most part there is only one protocol controller
> (consumer) per lane/protocol combination. The exception to this is the
> B4860 processor, which has some lanes which can be connected to
> multiple MACs. For that processor, I anticipate the easiest way to
> resolve this will be to add an additional cell with a "protocol
> controller instance" property.
> 
> Each serdes has a unique set of supported protocols (and lanes). The
> support matrix is stored in the driver and is selected based on the
> compatible string. It is anticipated that a new compatible string will
> need to be added for each serdes on each SoC that drivers support is
> added for.
> 
> There are two PLLs, each of which can be used as the master clock for
> each lane. Each PLL has its own reference. For the moment they are
> required, because it simplifies the driver implementation. Absent
> reference clocks can be modeled by a fixed-clock with a rate of 0.
> 
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> ---
> 
>  .../bindings/phy/fsl,qoriq-serdes.yaml        | 78 +++++++++++++++++++
>  1 file changed, 78 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,qoriq-serdes.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/fsl,qoriq-serdes.example.dtb: phy@1ea0000: reg: [[0, 32112640], [0, 8192]] is too long
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/fsl,qoriq-serdes.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
