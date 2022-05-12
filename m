Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BE24C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 12 May 2022 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+MXZfX63y9BpMzqFw/s6Yi3VZSZ3d5i/sfgkqAanVvw=; b=Ooo3Hy2uBCPca7
	Y3XUkkKrfcFeIxYMIjpHTWYQtJp5c5l6T5lfjEexHEpOnzyaa73mu6OEqq6qkxG6yucmi0aDmAEej
	VvYGweZCnKPNqhOIlOiBjBDTOrzILLCIcvx/ss/GxHcLQLJ0IMgH9v/sBowU6ns94mayPTisYrPLw
	hLJwx/gcDfmMc62WFM+koUqYVrf+1Texm+HICtUuHL4XiRle8XUi05uABWQFOs/NFUxD72+Jm0o+s
	0CXaBIq9xfYjY8YcAZO1E+xCeNs4ePc98H4fkTBO31U0YuwMEgpfFoV6BLTQCaEkIIlV+zyBUMIbr
	+JJ9cXUrWsHcxhCsLrWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npA0K-00CT8s-Rf; Thu, 12 May 2022 14:41:24 +0000
Received: from mail-qv1-xf30.google.com ([2607:f8b0:4864:20::f30])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npA0I-00CT7W-7C
 for linux-phy@lists.infradead.org; Thu, 12 May 2022 14:41:23 +0000
Received: by mail-qv1-xf30.google.com with SMTP id p3so4469960qvi.7
 for <linux-phy@lists.infradead.org>; Thu, 12 May 2022 07:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=5glS7uZd76ZDuYG8T+JyK/h9FeySdt8lV4erqmgs1dI=;
 b=Fnj14Ih1flSLaJf3Sb3wiw3Kx6b3Gmqup6F21OFYa/PjkOlL7ZZbdPlb+oWbYQLp0a
 K39QgjVzXoTAgSTmWzLdlEbrPjzJi5pnzNYL0cziZZiCCI50wgWgcPqVVydJAEku6oMx
 ixd1J+9LhzTJB+515dm0poCh7iiPWFE1Ua9G5S8qrqgVHIOWiJdkgfnvcRScplAeSO3X
 KxlZbjo9WAvJd4SYVHHM2nSPgywSncOj89zIdenammpW8s+HKzS9fbnz4Vz0TOYetpg2
 AauxoGnagnwAq94V3ofsT7fzGlR5TPPmUC1G46qjxbl3JMoJRaE3tsLphQwpceloOSqY
 eR2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5glS7uZd76ZDuYG8T+JyK/h9FeySdt8lV4erqmgs1dI=;
 b=Yzv6dePZM0bb51fPkqVLNk3pdQOIjrB+mwmR4AqjoE4aTDUDvhl33AL8XuJrmAJ6sC
 PuuVf03D/D8FqaMw2k8z42U1IzDIgmjf2MJZgErjkjZeggHfRRWYNh/sVEtUp3Fh1QeK
 30vmicUbx98pooBeCnFsRlfHAebMrVQCbXPa0gm1h0mLckOCqLRzO03uAm2JJl9gz6Nt
 pK9b47L9LuqLGsqn4Dlx0bc5bO/c+/KVPVB0Fomwoz800+mg5Okjo+NtmQj24xld+SUD
 kKsyYVhCxThxujrMYVDTGlZJXygVaG11O7Rkftqii93mNaRLMX/KDLvkSENp3Wn3asAJ
 OOLg==
X-Gm-Message-State: AOAM531BNQeptSNEUx4i/t6/ODStC6vU1ov+UJsQaRcabFVUvkvt2C9f
 VOm5bZBSo6icJ3fd6Q8Efh0=
X-Google-Smtp-Source: ABdhPJxTOrWLUEqkRknLwLE7F3yYQ5+iQTsGI/rPnaW0KEt7l46C4L3hxqMRuw+Z7czCdxVnwTmQEg==
X-Received: by 2002:a05:6214:5292:b0:45a:80bc:c642 with SMTP id
 kj18-20020a056214529200b0045a80bcc642mr57015qvb.30.1652366479314; 
 Thu, 12 May 2022 07:41:19 -0700 (PDT)
Received: from shaak (modemcable055.92-163-184.mc.videotron.ca.
 [184.163.92.55]) by smtp.gmail.com with ESMTPSA id
 t4-20020ae9df04000000b006a09faf5c1asm3082820qkf.30.2022.05.12.07.41.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 May 2022 07:41:18 -0700 (PDT)
Date: Thu, 12 May 2022 10:41:17 -0400
From: Liam Beguin <liambeguin@gmail.com>
To: Miaoqian Lin <linmq006@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Roger Quadros <rogerq@ti.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: ti: omap-usb2: Fix refcount leak in omap_usb2_probe
Message-ID: <Yn0cjaaqfr5wphh3@shaak>
References: <20220512043238.63252-1-linmq006@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220512043238.63252-1-linmq006@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220512_074122_299825_D4EB214D 
X-CRM114-Status: GOOD (  16.77  )
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

On Thu, May 12, 2022 at 08:32:33AM +0400, Miaoqian Lin wrote:
> of_parse_phandle() returns a node pointer with refcount
> incremented, we should use of_node_put() on it when done.
> Add missing of_node_put() to avoid refcount leak.
> 
> Fixes: 478b6c7436c2 ("usb: phy: omap-usb2: Don't use omap_get_control_dev()")
> Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
> ---
>  drivers/phy/ti/phy-omap-usb2.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/phy/ti/phy-omap-usb2.c b/drivers/phy/ti/phy-omap-usb2.c
> index 31a775877f6e..98133e5fc9de 100644
> --- a/drivers/phy/ti/phy-omap-usb2.c
> +++ b/drivers/phy/ti/phy-omap-usb2.c
> @@ -421,6 +421,7 @@ static int omap_usb2_probe(struct platform_device *pdev)
>  		}
>  
>  		control_pdev = of_find_device_by_node(control_node);
> +		of_node_put(control_node);
>  		if (!control_pdev) {
>  			dev_err(&pdev->dev, "Failed to get control device\n");
>  			return -EINVAL;
> -- 
> 2.25.1
> 

Reviewed-by: Liam Beguin <liambeguin@gmail.com>

Thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
