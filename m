Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 987F5C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 19:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yBsxgp/DHsrC6gT+nJKzE5VzAr3a8N6yflMnwg8BlhU=; b=Q+NxYnbue9iVkI
	ZrpQ8++UZbCYOTtfq+Rv4CsoU8XVzP9Gh60yj/U7mGTkF2TAAjbH8SMqa5YLM9rXihirN8uxm517v
	D4+G04J3xYtFM/KafqjXPnARQalFVLL1h6adWHZ63ZqwIrN24y3CH5kwi+Cob5rbAaGsqPA8Gbsgb
	GkXQFMtv2gTAv8NBcwPX+gBqix+xjBGJdCbF0lkiefNG751dU9yhA8Ml25iTchCyJNYW1m+giFXbY
	o7mDHWZZ1WywkgeJZGpPv2rtA56a3y5c51oZ9pEIee53qfGmBH85b3xNVcH9NJPqzugKmhQwtHGQ7
	V2fsDn8NeuT72R9eRPZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouewT-0045CX-SI; Mon, 14 Nov 2022 19:16:25 +0000
Received: from mail-oa1-f45.google.com ([209.85.160.45])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouewR-0045Aq-Oa
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 19:16:25 +0000
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-13be3ef361dso13531384fac.12
        for <linux-phy@lists.infradead.org>; Mon, 14 Nov 2022 11:16:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=I4+f1aO3gmprHFq9BhzibsrK6OYsmewgEJsEFY5Pjy0=;
        b=LrWLvVnZsRaqS6TIoYfXjjCtNfBsckFH4NvdIEHZGrERl5bJz1h3amrtXz3OKi6VeA
         kgFBPvD90Lb/BSlSBdobY6F58lAy+abKEEfUrHJmC47JSGgkZMs2GAICMl/Pzwm9ynow
         qpp0392VwOr0heiKKm9ttXXpGJqYQDaKSkD8T5YK+2DsRqc6t9ay9cN9DQP15gkRtG8u
         qkVr67teCM+sLe9aOf02ionMLGphhMbyzzp36ho9FiYWOr+xSocA8ScwmkrIddi7rvGi
         y3EitURQ5DVbaAAvJpl0LV+cvvUzJLrs0580Lg/7cJv381C4N4jRL60cGd8pxpfUbcWs
         tnUg==
X-Gm-Message-State: ANoB5plU3M00BPcUhi0aHS931rwmi1KK+7+pShhdVxvfEge6NiSeOinN
	2YYIOd71J6rVcjdhBQLKgg==
X-Google-Smtp-Source: AA0mqf6j7s/VG/hdXgynB9cq6S6yLO1RAvuKf3dvEzuWl+k5KgAmesbYjYIGgadz69prHluNbWTfsQ==
X-Received: by 2002:a05:6870:9a98:b0:132:a2bd:428b with SMTP id hp24-20020a0568709a9800b00132a2bd428bmr7782000oab.113.1668453381848;
        Mon, 14 Nov 2022 11:16:21 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id eq23-20020a056870a91700b00132741e966asm5344907oab.51.2022.11.14.11.16.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Nov 2022 11:16:21 -0800 (PST)
Received: (nullmailer pid 3190194 invoked by uid 1000);
	Mon, 14 Nov 2022 19:16:23 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Wayne Chang <waynec@nvidia.com>
Cc: linux-kernel@vger.kernel.org, ajayg@nvidia.com, singhanc@nvidia.com, devicetree@vger.kernel.org, thierry.reding@gmail.com, treding@nvidia.com, linux-tegra@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, robh+dt@kernel.org, jckuo@nvidia.com, heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org, jonathanh@nvidia.com, vkoul@kernel.org, balbi@kernel.org, p.zabel@pengutronix.de, mathias.nyman@intel.com
In-Reply-To: <20221114124053.1873316-3-waynec@nvidia.com>
References: <20221114124053.1873316-1-waynec@nvidia.com>
 <20221114124053.1873316-3-waynec@nvidia.com>
Message-Id: <166845336035.3185553.484885991952704522.robh@kernel.org>
Subject: Re: [PATCH v3 02/13] dt-bindings: usb: Add NVIDIA Tegra234 XUSB host
 controller binding
Date: Mon, 14 Nov 2022 13:16:23 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_111623_830089_B405C6CA 
X-CRM114-Status: GOOD (  13.24  )
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


On Mon, 14 Nov 2022 20:40:42 +0800, Wayne Chang wrote:
> Add device-tree binding documentation for the XUSB host controller present
> on Tegra234 SoC. This controller supports the USB 3.1 specification.
> 
> Signed-off-by: Wayne Chang <waynec@nvidia.com>
> ---
> depends on the following change
> https://lore.kernel.org/all/20221003125141.123759-1-jonathanh@nvidia.com/
> V2 -> V3:nothing has changed but added the dependency here
> V1 -> V2:new change for adding nvidia,tegra234-xusb.yaml
>  .../bindings/usb/nvidia,tegra234-xusb.yaml    | 159 ++++++++++++++++++
>  1 file changed, 159 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.example.dts:36.27-28 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:406: Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.example.dtb] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1492: dt_binding_check] Error 2

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
