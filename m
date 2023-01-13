Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48522C678D6
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 17:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ppKpEfvJAOR6nKmspLTn/tiehyfg/tCvYTi1a/aox5A=; b=cm8iwXOoXOUBQJ
	y5fK4OUB6RwP1c8DeQDLjh7QUEUE63XmXj2fjIeL45YwndKF05YFSP0mnkDzgCyXidsUV05ZJvgyC
	hKba/Ys+yOD4i5O8jPkVyifcUlCa4nZerO01TrOBHLH/yjfR/XbpJuxrb6Pe+aWPPQ3m3OSosEBEV
	ZvIYO31iI7QtM1IIh0RxOo43J01+tPjkhs75qIP522e/aUQx3miIdY1er+gJ5M575xuu4z4zCMLif
	DbaNsJO3hFCvG5LwmHzUW2c3iqgqC18QBB3jYce4+A61BiQ67SimfTQNnWaDej+EKqXjnbWm4hPp4
	Z1coasWQRhggyzQ8a2Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGNxD-003nkI-Cn; Fri, 13 Jan 2023 17:34:59 +0000
Received: from mail-oo1-f42.google.com ([209.85.161.42])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGNda-003cYX-Mo
	for linux-phy@lists.infradead.org; Fri, 13 Jan 2023 17:14:44 +0000
Received: by mail-oo1-f42.google.com with SMTP id m23-20020a4abc97000000b004bfe105c580so5711859oop.4
        for <linux-phy@lists.infradead.org>; Fri, 13 Jan 2023 09:14:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JHq6/tYDyN/pAINWJ5Rbv3uWB7irgrVWcq37RauemwE=;
        b=MpkzIM94pKWnxr1ejwOiLaaVsobfOjcORkcRDOqgS3Ui6fXxeTswB1N+ZncxM2n/oi
         jTTQffz7yJoVV8x0LF6cb8Ntw9fIdPEWYOOSx0gi4tbXm3yI++11XfzKsVz+Dv0KSwAe
         iK7/dVnT+CGya6UVgt0zoXDCxged3w7XBpsjRo7wZjIY6e+Pk1/HhR1/ABYU7/rCtccn
         cjip3PhNryXLWSw6yAg+ZhlUMnrIKSRTJIFAC3JAtGJ4EYciE+T15U1jtkuWAziIOeqz
         yE04kOTfuT4+92ILJQfKaRyMe9Oa/t26VpNGGsC545cg/mCGvIEOxXBNsXbxGvXaGWVt
         FLEw==
X-Gm-Message-State: AFqh2krj9Y7Mrn2g8hAnxvvDvRQ04RHJueNoDCvWdRH3qm/rxYV8g1Cb
	WWukkw4g8Tqn6988BQPodQ==
X-Google-Smtp-Source: AMrXdXsAciTa3kC0ArhVzqoF/QaPDMxYBCzM8+8GnXbEi1RBXZ9lPOjUcyLSpQZP71oTATHGYnWQ0w==
X-Received: by 2002:a4a:3c16:0:b0:4f2:cf1:c3db with SMTP id d22-20020a4a3c16000000b004f20cf1c3dbmr7004450ooa.1.1673630080384;
        Fri, 13 Jan 2023 09:14:40 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id m48-20020a4a9533000000b0049fcedf1899sm10127278ooi.3.2023.01.13.09.14.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 09:14:37 -0800 (PST)
Received: (nullmailer pid 2505066 invoked by uid 1000);
	Fri, 13 Jan 2023 17:14:37 -0000
Date: Fri, 13 Jan 2023 11:14:37 -0600
From: Rob Herring <robh@kernel.org>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: linux-usb@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org, Thierry Reding <thierry.reding@gmail.com>, linux-tegra@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, waynec@nvidia.com, Thierry Reding <treding@nvidia.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH V6 1/6] dt-bindings: usb: Add NVIDIA Tegra234 XUSB host
 controller binding
Message-ID: <167363007663.2505014.5823592035658449614.robh@kernel.org>
References: <20230111110450.24617-1-jonathanh@nvidia.com>
 <20230111110450.24617-2-jonathanh@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230111110450.24617-2-jonathanh@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_091442_789419_77F1ED38 
X-CRM114-Status: GOOD (  12.16  )
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


On Wed, 11 Jan 2023 11:04:45 +0000, Jon Hunter wrote:
> From: Wayne Chang <waynec@nvidia.com>
> 
> Add device-tree binding documentation for the XUSB host controller present
> on Tegra234 SoC. This controller supports the USB 3.1 specification.
> 
> Signed-off-by: Wayne Chang <waynec@nvidia.com>
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> ---
> V5 -> V6: Updated main description and register description.
>           Corrected 'dma-coherent'.
> V4 -> V5: No changes
> V3 -> V4: minor update to the power-domain description
> V2 -> V3: nothing has changed
> V1 -> V2: address the issue on phy-names property
> 
>  .../bindings/usb/nvidia,tegra234-xusb.yaml    | 159 ++++++++++++++++++
>  1 file changed, 159 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
