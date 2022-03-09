Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA2C3C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  9 Mar 2022 22:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9SGRsh8TpoLKR6bczI585mzozvGTVqpeBO5Sgpq4TJk=; b=wuqigZ5DVDsIx3
	rFQ5dTz3cSGTtPFp7x2T1VQm5H2dtaGHkSuefsj5xfe7Syw/HA7wwvuoWsGvMHTHwER2lHbJj9PWW
	xl09Bsrd3l4ZJXpW6CPsR81Uwjzc6hA247JENGo/IPX4onkG7BgMUfMvG83HKSgvrVZnHnCBvB2iu
	Lcr9xJkubptA+e/jl8JAtOiUn2w6DLaGyp4ZOnLpSCgxc1sKce26pnr9wkR5owC5bEAK3PpMetPy5
	2okkyTNSlFmkejhFFRcNwPbWMe/XLz7OASGxXFbL9UK97JH+B99Na+9yz6Tp7AdSmqOk99MZrowtT
	66DISAa8E/Eln1ckClgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nS4gA-00AeBU-83; Wed, 09 Mar 2022 22:21:10 +0000
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nS4g0-00Ae92-Qi
 for linux-phy@lists.infradead.org; Wed, 09 Mar 2022 22:21:02 +0000
Received: by mail-oi1-f182.google.com with SMTP id o64so4117616oib.7
 for <linux-phy@lists.infradead.org>; Wed, 09 Mar 2022 14:21:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=yF9ediEFayMfZ9+RKb1DdVRXctEVXCbctlmQh++NDoU=;
 b=uyneXBlJfZw4s6qTIDaGOCk03cyeErbdIlsByhN1b7st53Bu0vgjkfV3zATenGe8Yn
 sCSHxIQex5Q+P3kYiqeuuZj8CwpjQNR9W5iBSFDQxk1uXoXlNdcik8x+me1Z7b/TZJMg
 awW5zvKvo76ocCEXwWQ1S6QflOB+gkSi/WkpWdTZUSPeZdAsK/YabGqXbOKV+xDrTEJ3
 eMI5nIrE6wjB8Vq7Uvmg92LtisSLLPhwXEIhY21nie34ZRnfusl8Mi0AFiEigoSOmhQo
 fF8WZQmkZcPwrR2Duh5luoQIijdeCkZs+9SDZh6Fj8Td2AaSNYEJ7Tp/SOM2N/x02AMV
 0Wig==
X-Gm-Message-State: AOAM532myeln8sjwjcFVli/V7FRgdO3egl55PU0JNo0kUkEPUfyrRIAC
 9xn9l3WUfHusZs3Xde8QGg==
X-Google-Smtp-Source: ABdhPJw+dfId+0ndY8HM1NpzRpBMl/Yi9AFqGIRET9W7tu2Mw2RRu3B73M+BSL7CSoIjQlqwsDaCFw==
X-Received: by 2002:a05:6808:2394:b0:2d9:d2ad:c85c with SMTP id
 bp20-20020a056808239400b002d9d2adc85cmr1187861oib.4.1646864459865; 
 Wed, 09 Mar 2022 14:20:59 -0800 (PST)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 o45-20020a9d2230000000b005b2426c3577sm1527948ota.79.2022.03.09.14.20.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Mar 2022 14:20:59 -0800 (PST)
Received: (nullmailer pid 326443 invoked by uid 1000);
 Wed, 09 Mar 2022 22:20:55 -0000
From: Rob Herring <robh@kernel.org>
To: Ioana Ciornei <ioana.ciornei@nxp.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, davem@davemloft.net,
 leoyang.li@nxp.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 netdev@vger.kernel.org, shawnguo@kernel.org, hongxing.zhu@nxp.com,
 kishon@ti.com, linux@armlinux.org.uk, kuba@kernel.org
In-Reply-To: <20220309172748.3460862-3-ioana.ciornei@nxp.com>
References: <20220309172748.3460862-1-ioana.ciornei@nxp.com>
 <20220309172748.3460862-3-ioana.ciornei@nxp.com>
Subject: Re: [PATCH net-next v2 2/8] dt-bindings: phy: add the "fsl,
 lynx-28g" compatible
Date: Wed, 09 Mar 2022 16:20:55 -0600
Message-Id: <1646864455.145844.326442.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_142100_884415_5AE52FE9 
X-CRM114-Status: GOOD (  11.91  )
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

On Wed, 09 Mar 2022 19:27:42 +0200, Ioana Ciornei wrote:
> Describe the "fsl,lynx-28g" compatible used by the Lynx 28G SerDes PHY
> driver on Layerscape based SoCs.
> 
> Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
> ---
> Changes in v2:
> 	- none
> 
>  .../devicetree/bindings/phy/fsl,lynx-28g.yaml | 71 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 72 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/fsl,lynx-28g.example.dt.yaml: example-0: serdes_phy@1ea0000:reg:0: [0, 32112640, 0, 7728] is too long
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/fsl,lynx-28g.example.dt.yaml: serdes_phy@1ea0000: #phy-cells:0:0: 0 was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/fsl,lynx-28g.example.dt.yaml: serdes_phy@1ea0000: '#address-cells', '#size-cells', 'phy@0', 'phy@1', 'phy@2', 'phy@3', 'phy@4', 'phy@5', 'phy@6', 'phy@7' do not match any of the regexes: 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1603505

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
