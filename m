Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A935EC38A2D
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 13:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bTBwob+ZgBxvrtl/HY+417lSg3jMftzkzRiLa57ngBg=; b=164c2Y6v1HZqyW
	AyYVvkdTnTcvWM3vQedy9EykOlWDu0iuCo0oZMG5OgO4OHB/uS7WjDEmYWkhrLWrdgBBXPxgkeJi5
	Ofz2I+V3MOdh84+UmN2nDvcy1lqTROfHjFq0XLs7Ye2qLsvDqEy+H4J66OPSj0zqx27izONs+Rsj0
	VWMRqfTdQ6EPeIWiNLddtAWsSjf+fEDIExQ6ViuoK7s86gOHxt3V42gGbFa0egnVCxlWyyaJ9vKup
	KMxA5p5mOLKu+HvOEZpQoWfg8rv54iLTCircurejixY41JjvBlm+CHNKHKtXwggFpy5rW/iU9wHb4
	PG+/LXalDgf+gd8oaFNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxWq-001iEM-1C; Mon, 24 Oct 2022 13:30:08 +0000
Received: from mail-ot1-f52.google.com ([209.85.210.52])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxWn-001iDI-NY
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 13:30:07 +0000
Received: by mail-ot1-f52.google.com with SMTP id cy15-20020a056830698f00b0065c530585afso5903570otb.2
        for <linux-phy@lists.infradead.org>; Mon, 24 Oct 2022 06:30:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qVg+okVBVsVNqz1/oTqCye1j7oYLVkbnznHF/a3NqAY=;
        b=iZWw8Oj7ze9lwBdSbvbExoImwOKTk3IiJQLNRJPdpmpmv3HSm0KRkXL+wvN+MePkyx
         TdWNx5uYgdhkKFqzdRlL4RyoUnjThyXH57426F9rXtDgTknd5+xm8uwrXjGFnbj2U1VF
         Rj9NaHYBUCNReVzoecTYNU28Au5jtZLuOoLf0d+PBGOeq7Mxf7Ce6wyEIBb7T2ugwl7H
         JF6VsXr70+l9LX8ZTDKusJimFox3fwTzMvsGWfGn8YOcgl5k7asrli/bCddaazk3cgum
         AwsuWIcGuFpLPV4FTRilbMveOG/Jj4uVnXTGI4SW2YMOV0TMh0d1MGQykKcqe1czFjqa
         hHvQ==
X-Gm-Message-State: ACrzQf0bBuFeHU9ipIWU/PHPkl+ktv5KDvnBBFCmVkt90SYv3gVHRF3B
	/K3Wb6JA3zoIqVJExwDjVg==
X-Google-Smtp-Source: AMsMyM4AQUZXFNB/vdlLThjKII2zhkC/sXhO+TloBWEatc44pTvPltXHFlhLlkEuJZKFRaMFbLyLtA==
X-Received: by 2002:a05:6830:4120:b0:661:d839:cc63 with SMTP id w32-20020a056830412000b00661d839cc63mr16898634ott.51.1666618203612;
        Mon, 24 Oct 2022 06:30:03 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id j31-20020a056870051f00b0012c21a64a76sm14191930oao.24.2022.10.24.06.30.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Oct 2022 06:30:03 -0700 (PDT)
Received: (nullmailer pid 1686092 invoked by uid 1000);
	Mon, 24 Oct 2022 13:30:04 -0000
From: Rob Herring <robh@kernel.org>
To: Wayne Chang <waynec@nvidia.com>
Cc: jonathanh@nvidia.com, linux-phy@lists.infradead.org, robh+dt@kernel.org, gregkh@linuxfoundation.org, kishon@ti.com, vkoul@kernel.org, linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, singhanc@nvidia.com, linux-i2c@vger.kernel.org, mathias.nyman@intel.com, heikki.krogerus@linux.intel.com, linux-usb@vger.kernel.org, thierry.reding@gmail.com, devicetree@vger.kernel.org, treding@nvidia.com, krzysztof.kozlowski+dt@linaro.org, balbi@kernel.org, ajayg@nvidia.com, jckuo@nvidia.com, p.zabel@pengutronix.de
In-Reply-To: <20221024074128.1113554-3-waynec@nvidia.com>
References: <20221024074128.1113554-1-waynec@nvidia.com> <20221024074128.1113554-3-waynec@nvidia.com>
Message-Id: <166661789886.1678573.2345753570567106623.robh@kernel.org>
Subject: Re: [PATCH 02/11] dt-bindings: usb: Add NVIDIA Tegra XUSB host controller binding
Date: Mon, 24 Oct 2022 08:30:04 -0500
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_063005_788044_C8DD3F00 
X-CRM114-Status: GOOD (  11.08  )
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

On Mon, 24 Oct 2022 15:41:19 +0800, Wayne Chang wrote:
> Add device-tree binding documentation for the XUSB host controller present
> on Tegra194 and Tegra234 SoC. This controller supports the USB 3.1
> specification.
> 
> Signed-off-by: Wayne Chang <waynec@nvidia.com>
> ---
>  .../bindings/usb/nvidia,tegra-xhci.yaml       | 213 ++++++++++++++++++
>  1 file changed, 213 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/nvidia,tegra-xhci.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/usb/nvidia,tegra-xhci.example.dts:36.27-28 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:406: Documentation/devicetree/bindings/usb/nvidia,tegra-xhci.example.dtb] Error 1
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
