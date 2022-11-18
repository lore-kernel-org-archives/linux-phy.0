Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B228C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 18 Nov 2022 18:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+5I6qvTIBSwj/MO1d29ync9nLSUVbaerABB/fMBk1k=; b=edGwaQ8rnTIFMP
	JG0AQkLOvGTso2hX4t9v3jjGCkG2KVt6D1yVx3yvuc7Ba8UMsJsjaXlYStYmPTrOq8xggkFP9n4OX
	XfMdYQQRPi8eoeku6M/0BtpzLSxXuhkGMjpf9l+EQs8y6UZ1w6BF1hZyNPwdUWEelJgXvRQNQGyEN
	5KxrJxEgftR5Q49MLfM20fh191hYNqM7Rm+kF3y8guogB1AwlUUUH7+GhlSkgcYwv14igcruopYr1
	ehNHgXaetFS2S2gHCiiPYhh7nH4a7BHskaGkgOcgyWzvVO9KwYzeX1WeaNkg4oNFQOlb/3dZKhoth
	XAcPddA7DXxMVALJWjdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow6S5-007J7u-Hl; Fri, 18 Nov 2022 18:51:01 +0000
Received: from mail-ot1-f50.google.com ([209.85.210.50])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow6S2-007J2w-BB
	for linux-phy@lists.infradead.org; Fri, 18 Nov 2022 18:50:59 +0000
Received: by mail-ot1-f50.google.com with SMTP id db10-20020a0568306b0a00b0066d43e80118so3631049otb.1
        for <linux-phy@lists.infradead.org>; Fri, 18 Nov 2022 10:50:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JOLYMjkXXvB/weWZsQxyRISw40hXb3p7LqGqtWVTDyk=;
        b=qfaEL2LFgLwWHdjNW6G9VxAOghXrbondnRFMHNu6K0kp8j0VzE0R31Tsv1Sb2CQTB0
         JmjCaFRqOTE5DHDR8fkW617u2XaPX3w/lOK8h5mM+RDQyI0AcnnmDcISEV449pHVikfh
         oZCtEdEArvPR82jJEq0i8c8VcSW3BPt5paPEiJbKlLDW0ErIbFgFDqax1H6glaxm0NeB
         OQksxvZIV59Vpair786E2ZRa7X+adMBCEH25B8lplYHXZufXIeEveBUL/uSFOFRwxzSR
         wh+0slDgOoWQCyHSZT7cxlpRq8hU+YLdZ+iT8H8SbqG8IDIixOkZMAU13xI8LovwbHx+
         KZeg==
X-Gm-Message-State: ANoB5pkOvlrFCitAQFNclsz8NlMs0N86yiJB3mzJeA7uMCsPy6hmWNZS
	90gEEYk7AnCklH8P7HUY8J1c/uYq+Q==
X-Google-Smtp-Source: AA0mqf7tBcu9Tt0wpRksmHNxtPfG9uapvJ93nee4Ye90gw6t5D9ERUX1LfIp81dsHVG05A5sBN7PqQ==
X-Received: by 2002:a9d:7e9a:0:b0:66c:6096:1878 with SMTP id m26-20020a9d7e9a000000b0066c60961878mr4549610otp.203.1668797452969;
        Fri, 18 Nov 2022 10:50:52 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r25-20020a056830135900b00661c0747545sm1889218otq.44.2022.11.18.10.50.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 10:50:52 -0800 (PST)
Received: (nullmailer pid 856954 invoked by uid 1000);
	Fri, 18 Nov 2022 18:50:54 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: krzysztof.kozlowski+dt@linaro.org, linux-tegra@vger.kernel.org, treding@nvidia.com, linux-usb@vger.kernel.org, robh+dt@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, waynec@nvidia.com, Mathias Nyman <mathias.nyman@intel.com>, vkoul@kernel.org, gregkh@linuxfoundation.org
In-Reply-To: <20221118154006.173082-2-jonathanh@nvidia.com>
References: <20221118154006.173082-1-jonathanh@nvidia.com>
 <20221118154006.173082-2-jonathanh@nvidia.com>
Message-Id: <166879727106.849035.12126185559088998329.robh@kernel.org>
Subject: Re: [PATCH V4 1/6] dt-bindings: usb: Add NVIDIA Tegra234 XUSB host
 controller binding
Date: Fri, 18 Nov 2022 12:50:54 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_105058_403200_9C912054 
X-CRM114-Status: GOOD (  13.30  )
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


On Fri, 18 Nov 2022 15:40:01 +0000, Jon Hunter wrote:
> From: Wayne Chang <waynec@nvidia.com>
> 
> Add device-tree binding documentation for the XUSB host controller present
> on Tegra234 SoC. This controller supports the USB 3.1 specification.
> 
> Signed-off-by: Wayne Chang <waynec@nvidia.com>
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> ---
> V3 -> V4: minor update to the power-domain description
> V2 -> V3: nothing has changed
> V1 -> V2: address the issue on phy-names property
> 
>  .../bindings/usb/nvidia,tegra234-xusb.yaml    | 158 ++++++++++++++++++
>  1 file changed, 158 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.example.dts:36.29-30 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:406: Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.example.dtb] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1492: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20221118154006.173082-2-jonathanh@nvidia.com

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
