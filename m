Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBFDAC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 30 Nov 2022 17:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R0HreYzUvsZAiCArqTgSYk0Y9uv2pM60i9ehYYqVaQI=; b=O6Q/RPLTr1HoQ1
	Q7iJj714A78wuQcYIN76z9dU4+KyHbZtyszSMkMJhrLgMmRXr0uxWmYGAh4/Jts4v3uYRvWUGFbfa
	/sKKGKKHoktWDICRSjAr62cs8dVuS/bL/xeQP6eEJDvaaBb2cBAds18qI0WSnjWIs2E4AsanCwhnG
	K4ZqYpZ4hU+MdiQR5+c6K0zNONdd6EfuoE6CojFfmjHO2thnp04fBpaAkdEva6ZHGide87VkYM5+B
	ffOlhtVcgmhIJg7/4gHjI6Lu8efwl6cLnyKa89mlCIxD2rA/efltifVfI1OpWo0w2URiBauPfW6Bc
	YuD1ja2jWFVk9Ea75WPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0QYo-000ox2-RV; Wed, 30 Nov 2022 17:07:50 +0000
Received: from mail-ot1-f41.google.com ([209.85.210.41])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0QYD-000oiT-Oa
	for linux-phy@lists.infradead.org; Wed, 30 Nov 2022 17:07:15 +0000
Received: by mail-ot1-f41.google.com with SMTP id a7-20020a056830008700b0066c82848060so11627222oto.4
        for <linux-phy@lists.infradead.org>; Wed, 30 Nov 2022 09:07:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+yCvE4xL7PcYhApAjLTDVKWvyzIVUevfInfC0cACAe0=;
        b=43ylufygsRt7W6L4wfm2CVs3uuBRWSFke8fktjuV5mtSvDZbFfzzYn6ifumjjVyodf
         04IRtmPtBubOAYTI5IUnUBoh9LHjRt9k7ZEJf8b6ONiQqkA+SAUQjAWRKLfKnGybHGD8
         /WyVNMLXqlOlStXe1RuK48+rfd5hWaQCOG1VgqwA1KlgTk9l0C32u+U8pXovroDf7H48
         jXTIuMAE1IwcNL8r4v6M3mvFmCQta9S0e7IpwJ8sPn3BFSE46hAvzoNIh0d0WsPVIXXW
         +Nua+rLrysSGc5QA+Ux2b8+Kr7CGOP6mVl3Ra7qksqLR0R/6Ukj0J+Ww1iyPZOXE1YRj
         iSmQ==
X-Gm-Message-State: ANoB5pn/ntD/6nlrzV6kjdSAfF/AnB8OmyK7cq0ss4K09n84Lz4c8MXI
	SZkJmNy4ximuzqXhLYuqsA==
X-Google-Smtp-Source: AA0mqf5G3ILqf43J74PC7Uy/K6RqK5iaFw5vp7nG4FRXL6eWEQbc8SiS1NqktAkhS98cdBFbxbK0GQ==
X-Received: by 2002:a05:6830:412a:b0:66e:69f8:93ba with SMTP id w42-20020a056830412a00b0066e69f893bamr1651849ott.334.1669828031398;
        Wed, 30 Nov 2022 09:07:11 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id h17-20020a056870171100b00136c20b1c59sm1393711oae.43.2022.11.30.09.07.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Nov 2022 09:07:10 -0800 (PST)
Received: (nullmailer pid 2456583 invoked by uid 1000);
	Wed, 30 Nov 2022 17:07:09 -0000
Date: Wed, 30 Nov 2022 11:07:09 -0600
From: Rob Herring <robh@kernel.org>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Mathias Nyman <mathias.nyman@intel.com>, gregkh@linuxfoundation.org, krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, treding@nvidia.com, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, waynec@nvidia.com
Subject: Re: [PATCH V4 6/6] dt-bindings: phy: tegra-xusb: Add support for
 Tegra234
Message-ID: <20221130170709.GA2454510-robh@kernel.org>
References: <20221118154006.173082-1-jonathanh@nvidia.com>
 <20221118154006.173082-7-jonathanh@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221118154006.173082-7-jonathanh@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221130_090713_860766_167FCF17 
X-CRM114-Status: GOOD (  17.19  )
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

On Fri, Nov 18, 2022 at 03:40:06PM +0000, Jon Hunter wrote:
> Add the compatible string for the Tegra234 XUSB PHY.
> 
> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> ---
> This is a new patch in this version of the series. This patch is
> dependent upon the following patch.
> 
> https://lore.kernel.org/linux-tegra/20221118144015.3650774-1-thierry.reding@gmail.com/
> 
>  .../devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml  | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml b/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml
> index 1c570ff65eb4..5302fdb0949c 100644
> --- a/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml
> +++ b/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml
> @@ -42,7 +42,9 @@ description:
>  
>  properties:
>    compatible:
> -    const: nvidia,tegra194-xusb-padctl
> +    enum:
> +      - nvidia,tegra194-xusb-padctl
> +      - nvidia,tegra194-xusb-padctl

Did you test this because I'm pretty sure you would get an error. The 
bot didn't test because of the dependency.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
