Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42E58C43334
	for <linux-phy@archiver.kernel.org>; Wed, 20 Jul 2022 14:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0f+B7r7j7T2LsZiyDDwWPH3hJ+hqmYGkPMe27JBAXzs=; b=QHSjBZOKm0Uxo2
	mtfjCdgqKFTGQuU6VDIUkdHJTjLE6qwq3/99/920Wx25L4yza6NihEg84kMzgi7fIJPAg/H5ImSHN
	YGdMGsa/i1OLcBfM1ymhktVp3qilmQBxsZlzOqmwK11oVpJpnnkHXANa+GUGgH3AUwVRYX3x9G9gp
	/xMVoUBYwYwsZr0fHGMgSAw3VXRex0+v71O7UQPwnOy6nrR6qW/JHnHJVifJzUorpjLdVCVSLqypl
	ptRfznJCqlxtm4IDyPEeiSrno5flEtZc+jnZNS1CIi3x5pEA9crlc5AN70rDl+f46+ZO1elbFezdX
	6eUYIZskk2evWN09+Cgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEAW8-006gtw-Kr; Wed, 20 Jul 2022 14:17:36 +0000
Received: from mail-io1-f47.google.com ([209.85.166.47])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEAW5-006gmP-8A
	for linux-phy@lists.infradead.org; Wed, 20 Jul 2022 14:17:34 +0000
Received: by mail-io1-f47.google.com with SMTP id r70so13220025iod.10
        for <linux-phy@lists.infradead.org>; Wed, 20 Jul 2022 07:17:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=fTbHuzNk788olqUHrliPvBvFbjERGU5VKnP1jkIeETE=;
        b=lt1kl5E7Gjv+809IDc5M0ev8S55hEVJMT4JxmxTztgedRSJYg5QTVX200+1dzHAqN7
         c564w59OGM9nmjNcDCTH8HKYImB7mozkNMpuq1plTMUg4j3NzKd7LfM5045ZI66RBd/O
         uCQEM2iczDnkeekR+dOva9/J4FYY4YIXH2qTDcdD1Az/Ns4RQd+QHbpKgMF6vntnEHL+
         fPqwaHfNSNEb3UTsE+RZobwWKOW1uF+CvlqlBn/xH4p/z/PrhgMArvn5uH3Co63MIcly
         /c5ckOqh+VT4RtwRxJubrLNFO0+S9mYrAQ1OI8f+ZcoenlHlJG7T2ksezidwV9QcXT1V
         K2Dw==
X-Gm-Message-State: AJIora9cbME/WdVNdX1w5ocaUYti+CpAbuDxeuMG4bIUx59rfl9NE8ah
	Iz6l6oHzkwi8qgZfJ4k7jQ==
X-Google-Smtp-Source: AGRyM1v1gxgKIvHOMxLR/VgWQI1MqZ7vRACS7FQYPq1C8bqyEIFjCWJ6rX5JLcQbBrttPj2w905law==
X-Received: by 2002:a02:cea6:0:b0:33f:774f:5267 with SMTP id z6-20020a02cea6000000b0033f774f5267mr19939966jaq.274.1658326650262;
        Wed, 20 Jul 2022 07:17:30 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id m15-20020a056e020def00b002dce9ddcb08sm3619740ilj.30.2022.07.20.07.17.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jul 2022 07:17:29 -0700 (PDT)
Received: (nullmailer pid 3267382 invoked by uid 1000);
	Wed, 20 Jul 2022 14:17:27 -0000
From: Rob Herring <robh@kernel.org>
To: Wangseok Lee <wangseok.lee@samsung.com>
Cc: "kw@linux.com" <kw@linux.com>, Sang Min Kim <hypmean.kim@samsung.com>, Yeeun Kim <yeeun119.kim@samsung.com>, "jesper.nilsson@axis.com" <jesper.nilsson@axis.com>, "lars.persson@axis.com" <lars.persson@axis.com>, "kernel@axis.com" <kernel@axis.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "kishon@ti.com" <kishon@ti.com>, "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Dongjin Yang <dj76.yang@samsung.com>, "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>, "bhelgaas@google.com" <bhelgaas@google.com>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "vkoul@kernel.org" <vkoul@kernel.org>, Moon-Ki Jun <moonki.jun@samsung.com>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
In-Reply-To: <20220720055436epcms2p63896ebe4e2131e3844044d0112288570@epcms2p6>
References: <20220720055108epcms2p563c65b3de6333ccbc68386aa2471a800@epcms2p5>        <CGME20220720055108epcms2p563c65b3de6333ccbc68386aa2471a800@epcms2p6> <20220720055436epcms2p63896ebe4e2131e3844044d0112288570@epcms2p6>
Subject: Re: [PATCH v4 1/5] dt-bindings: pci: Add ARTPEC-8 PCIe controller
Date: Wed, 20 Jul 2022 08:17:27 -0600
Message-Id: <1658326647.075453.3267381.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_071733_313102_1EF5B9C1 
X-CRM114-Status: GOOD (  12.88  )
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

On Wed, 20 Jul 2022 14:54:36 +0900, Wangseok Lee wrote:
> Add description to support Axis, ARTPEC-8 SoC. ARTPEC-8 is the SoC platform
> of Axis Communications and PCIe controller is designed based on Design-Ware
> PCIe controller.
> 
> Signed-off-by: Wangseok Lee <wangseok.lee@samsung.com>
> ---
> v3->v4 :
> -Add missing properties
> 
> v2->v3 :
> -Modify version history to fit the linux commit rule
> -Remove 'Device Tree Bindings' on title
> -Remove clock-names entries
> -Change node name to soc from artpec8 on excamples
> 
> v1->v2 :
> -'make dt_binding_check' result improvement
> -Add the missing property list
> -Align the indentation of continued lines/entries
> ---
>  .../bindings/pci/axis,artpec8-pcie-ep.yaml         | 138 +++++++++++++++++++
>  .../devicetree/bindings/pci/axis,artpec8-pcie.yaml | 148 +++++++++++++++++++++
>  2 files changed, 286 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/axis,artpec8-pcie-ep.yaml
>  create mode 100644 Documentation/devicetree/bindings/pci/axis,artpec8-pcie.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pci/axis,artpec8-pcie-ep.example.dtb: pcie-ep@17200000: Unevaluated properties are not allowed ('#interrupt-cells', 'bus-range', 'interrupt-names', 'samsung,syscon-bus-p-fsys', 'samsung,syscon-bus-s-fsys' were unexpected)
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pci/axis,artpec8-pcie-ep.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pci/axis,artpec8-pcie.example.dtb: pcie@17200000: Unevaluated properties are not allowed ('samsung,syscon-bus-p-fsys', 'samsung,syscon-bus-s-fsys' were unexpected)
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pci/axis,artpec8-pcie.yaml

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
