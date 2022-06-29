Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 666E7C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jun 2022 02:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ljR1OlLZ5HRyI3/1UtRm8Q4roj597aor1Bmodk6hkks=; b=t55wDh06pjheBL
	EwwlFwyVqo7CVPGuF+iHH42bYheq+YfGxkGydNleiY3zqq0nvhOl/Xh7V+qu0pR+sd9WW1D7LDD3Q
	X6Xu8Ac8aX1iS8UY4vzPB9rP6r5JfgRdYdhRlUqYarHPVbKUGhDV6oJe57pwDUlcD7JTZoMTuj7dr
	n9H6mWiKtmTYeg+UbHo0iv9Xg4Hqlsa0nEWi/mkgz41+P+jfgX3cH/uxlTacssOq3zztc2A/XcVsP
	NX1nI4aqGn7ZgnLIb6lfuuCe0RcxQqgPXuFK89x/RGneI1T3BnO/ukIY9ihb/Z3kk1KGcJ6q7y6Aj
	VogltzH0Xb/eb7P8N4uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6N9g-00934d-Qe; Wed, 29 Jun 2022 02:10:12 +0000
Received: from mail-il1-f174.google.com ([209.85.166.174])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6N9b-009322-W0; Wed, 29 Jun 2022 02:10:09 +0000
Received: by mail-il1-f174.google.com with SMTP id o4so9370037ilm.9;
        Tue, 28 Jun 2022 19:10:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=akCaK7/6hiO9qiDqUC6BjphM3QTCscKxuIGksCMRv4Q=;
        b=7VzkfONGSmw2NOHW8s4FkU2b/KzASNybgqR3vN6Fk9enBOx3AWofRvdSRcXrkKPrqd
         V6cuPyH+3mE9P2/BvDGj1hC5cuXfueABYhLxyRgGtroWcLq4VWGcEU+I1LzsnFFXvIjo
         tPfvkENe/RsAuup5eo4NN2ZTeVfymJgj9VhQ17E4MCvkJ4vWBCE6eSrm5hy/51kc68Nq
         wvbOO17uz6qAIHJXcWbeY/Lwlc1bIMIJEBO7yptxvLT/LjxpOLDIv8MF/DEoaNsOIKVz
         ZdlOByIA+fDJzjSjuD706Ryclum21e+fQhPuRrSrcDG/JKPFKEUXiV2pu/vZMZqvr76W
         364g==
X-Gm-Message-State: AJIora+sNILa17UGsbZNvPxUIn7+Mq5ftr0Wf9Z2o+qHubl124wEG5k1
	rxMS9WilBpZFwCzwh1NsNw==
X-Google-Smtp-Source: AGRyM1s+vAu0J3FAxJurSCzpU4DCe5h38yk8r+xC7m9WUBJ56dufRl4BRYIH390A+L4jw+4zToyPjA==
X-Received: by 2002:a05:6e02:216b:b0:2da:c09b:179f with SMTP id s11-20020a056e02216b00b002dac09b179fmr659560ilv.0.1656468605851;
        Tue, 28 Jun 2022 19:10:05 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id w18-20020a92c892000000b002d909e3d89esm6515075ilo.60.2022.06.28.19.10.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 19:10:05 -0700 (PDT)
Received: (nullmailer pid 1403684 invoked by uid 1000);
	Wed, 29 Jun 2022 02:09:39 -0000
From: Rob Herring <robh@kernel.org>
To: Sean Anderson <sean.anderson@seco.com>
Cc: devicetree@vger.kernel.org, Eric Dumazet <edumazet@google.com>, Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org, Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>, netdev@vger.kernel.org, Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>, Kishon Vijay Abraham I <kishon@ti.com>, Madalin Bucur <madalin.bucur@nxp.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20220628221404.1444200-2-sean.anderson@seco.com>
References: <20220628221404.1444200-1-sean.anderson@seco.com> <20220628221404.1444200-2-sean.anderson@seco.com>
Subject: Re: [PATCH net-next v2 01/35] dt-bindings: phy: Add QorIQ SerDes binding
Date: Tue, 28 Jun 2022 20:09:39 -0600
Message-Id: <1656468579.935954.1403683.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_191008_087158_CDCA5D5D 
X-CRM114-Status: GOOD (  30.49  )
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

On Tue, 28 Jun 2022 18:13:30 -0400, Sean Anderson wrote:
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
> added for. There is no "generic" compatible string for this reason.
> 
> There are two PLLs, each of which can be used as the master clock for
> each lane. Each PLL has its own reference. For the moment they are
> required, because it simplifies the driver implementation. Absent
> reference clocks can be modeled by a fixed-clock with a rate of 0.
> 
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> ---
> 
> Changes in v2:
> - Add #clock-cells. This will allow using assigned-clocks* to configure
>   the PLLs.
> - Allow a value of 1 for phy-cells. This allows for compatibility with
>   the similar (but according to Ioana Ciornei different enough) lynx-28g
>   binding.
> - Document phy cells in the description
> - Document the structure of the compatible strings
> - Fix example binding having too many cells in regs
> - Move compatible first
> - Refer to the device in the documentation, rather than the binding
> - Remove minItems
> - Rename to fsl,lynx-10g.yaml
> - Use list for clock-names
> 
>  .../devicetree/bindings/phy/fsl,lynx-10g.yaml | 93 +++++++++++++++++++
>  1 file changed, 93 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/iio/temperature/adi,ltc2983.yaml: patternProperties:^thermistor@:properties:adi,excitation-current-nanoamp: '$ref' should not be valid under {'const': '$ref'}
	hint: Standard unit suffix properties don't need a type $ref
	from schema $id: http://devicetree.org/meta-schemas/core.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/iio/temperature/adi,ltc2983.yaml: ignoring, error in schema: patternProperties: ^thermistor@: properties: adi,excitation-current-nanoamp
Documentation/devicetree/bindings/iio/temperature/adi,ltc2983.example.dtb:0:0: /example-0/spi/ltc2983@0: failed to match any schema with compatible: ['adi,ltc2983']

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
