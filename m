Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3721C54EED
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jan 2023 08:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=auKl//7QGOrBrthzcvASwmS7DS0p8bdyfmp3YME6bso=; b=2+GzLdE9WCaAnq
	/1y0wd7dpNGt1GitWIS7mwuYqNZMWi/0aPcwx4dZ8yjIFzbink25jV7CVy57Bj3LZJqTyJbWE5OFS
	NTFKE2ZRyqpRmpBbTbKKF0FlYtz29ZjkxDHEiVAjLP1IolM9sBQNx1ElSiLsccFHsRtk6JjXRYlqM
	NPexmKqtsh9R+7FQAC/7ru6YwkwLgj1zocXMJcRDI0ag+Yh/CR2SdiPp2hj2IyWLzxxxFyw8Sutkz
	krNEVTmT7cwU7oaYvBVMbUBfpgLaORUZBmprKaA8GGGfAT96SN4eUSs9OUo4RS8sJMRKKd9RgFFzC
	T8a761O+nZnDBFhuv8Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKxKn-009x5s-Vw; Thu, 26 Jan 2023 08:10:14 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKxKk-009x5D-W5
	for linux-phy@lists.infradead.org; Thu, 26 Jan 2023 08:10:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 9D13FB81CB7;
	Thu, 26 Jan 2023 08:10:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26FD7C433EF;
	Thu, 26 Jan 2023 08:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674720608;
	bh=8N0004Ksl54/+9j2hPsSyRkAcDEsg7JhyNVs9HdSx/U=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Nb1qE0LYFJSdahhI/hjhx4Bn+9N0xfzHaKzF78swyiLpJLX+Ja5NgGpNlqrQjZxE7
	 lajWN3P8d3tnkP8Pku3FZZX55RKBdvsgA6OYgr0RnnNntPOd98VD2/AYwgUD2Qkp/Z
	 Vd9C13vVHavMCWQWtYJBwPgmKQyawP5YBNTQvgkMkIfBs2Oslzh8n9H9uqQh9pgDGG
	 IA/5TLw7ug62ADl9GJ0GPI/y90j0msxPH4yVfmKi2/c5zDAozBGOCfS7A4FSWUZU2N
	 Llgp5rveODYs0zWCgaYCamrtbi++OVn16f1MHH3EtHmk9dnGECdk5/FIu10YzSAvVC
	 kucg3GPA1sbnw==
Date: Thu, 26 Jan 2023 09:10:02 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Yu Chen <chenyu56@huawei.com>, Binghui Wang <wangbinghui@hisilicon.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Carvalho Chehab
 <mchehab+huawei@kernel.org>, linux-usb@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: hisilicon: Fix
 'hisilicon,eye-diagram-param' differing types
Message-ID: <20230126091002.01f58b94@coco.lan>
In-Reply-To: <20230125221444.3058631-1-robh@kernel.org>
References: <20230125221444.3058631-1-robh@kernel.org>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.36; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_001011_184724_23444935 
X-CRM114-Status: GOOD (  14.68  )
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

Em Wed, 25 Jan 2023 16:14:43 -0600
Rob Herring <robh@kernel.org> escreveu:

> 'hisilicon,eye-diagram-param' is also defined in
> hisilicon,phy-hi3670-pcie.yaml as a 'uint32-array'. Unify it to use
> 'uint32-array' everywhere.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>

> ---
>  .../devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml         | 3 ++-
>  .../devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml         | 3 ++-
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml b/Documentation/devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml
> index 20b79e2e8b82..b11d9873854a 100644
> --- a/Documentation/devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml
> +++ b/Documentation/devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml
> @@ -27,7 +27,8 @@ properties:
>      description: phandle of syscon used to control usb tcxo.
>  
>    hisilicon,eye-diagram-param:
> -    $ref: /schemas/types.yaml#/definitions/uint32
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    maxItems: 1
>      description: Eye diagram for phy.
>  
>  required:
> diff --git a/Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml b/Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml
> index 1cb00dbcd4c5..3c69aca6c7eb 100644
> --- a/Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml
> +++ b/Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml
> @@ -32,7 +32,8 @@ properties:
>      description: phandle of syscon used to control phy deep sleep.
>  
>    hisilicon,eye-diagram-param:
> -    $ref: /schemas/types.yaml#/definitions/uint32
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    maxItems: 1
>      description: Eye diagram for phy.
>  
>    hisilicon,tx-vboost-lvl:



Thanks,
Mauro

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
