Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C28BC41535
	for <linux-phy@archiver.kernel.org>; Tue, 19 Dec 2023 11:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NCOCXMwMsKugKow1qIt85ykSEro8NKy3oppA3DjW/HU=; b=S4xvjQSjAU2FRd
	o5dfs4/sfTw9x5ktCqcAMBOw/qOgkY7DQ1AKCMCpfMkdj9cifi4nAjynBNOJ+QUmphrpsiqhf9xmm
	VRt+nusY64zLkiv6B/sxX+i158HYn++2e7ORjwgQEyt+ZM5q4po+NSK23BOd1/6nZclEmFlQDdRMQ
	yBY/z23BLd1Q/B0+Ez3wl6M/zI6ywNChkMwnfundEzNWTMlHmavzF7ldE2iX3/FYb8JZ5gFwGGO0G
	WgXzVUqPdx/OH4ilE/HDdSbZ1G64a/AUVlG/jmR8KE4W6n0XmDWW38Dvqod59AmwPe+Kct4s8LUUe
	h+PBXilvb2xjfOq5SJFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFYky-00DwEm-0y;
	Tue, 19 Dec 2023 11:59:28 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFYkv-00DwCM-1N;
	Tue, 19 Dec 2023 11:59:26 +0000
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-dbd722b55afso85605276.2;
        Tue, 19 Dec 2023 03:59:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702987163; x=1703591963; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6trWxke37j1/2plXPHEONP9RITP/DcQdhm6Irg77dp0=;
        b=krSys0iAvBQIjQGwm2KugH+MkM9a+ThYWjzt5NKfQ3kXGTUCsUqH+ayPEMPEyFd7jM
         1rsLe+EPeuk0PBQnU+RRBHrTIK/ugf1bg2Q8pJQcuVj/Y8yrJwLY4CR059emr7o3dtII
         jhP+u7J2cAWb7Up3CAewCNn2oKyoascpLz/dS6Lw5Y0+htvkSSILpXHs5LlGvXTsr/Jo
         GS9Cu5kxTQuJQMhdvgMQCMyEeSDae34enn7427N0zpLOyHr3wXbFkE8WvUd9Pp8BIgKk
         UqZugnTUurrJV6r8yu+L7FRnUQiyysrXBQw06dLAUYQwHAAtPr0ejsm6s51jAXWYf1nk
         okOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702987163; x=1703591963;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6trWxke37j1/2plXPHEONP9RITP/DcQdhm6Irg77dp0=;
        b=dmhRdfrH554lCvNI9xKt+Xd8wMIuvZooznaDUJJs/hOSY+8FamWNnt8OKtDDDz+Lwk
         XXYSxEQ7oX0vibioW6hrMAKOzK15ZX0SCBsEoGX+PrZk/UXM9a/u6KtGNqj8cJJf8Sf5
         utFkvq0sMxl1Pmiu9+Z5GCv3hELa9pknw0EXBJ7C+VR+xkzKPg///41b3zS7X6Y57RKD
         ooTj1JYsa6Cy5dahMARVfTXSD0w20wyRKnjceeHFQ7LpG5HTiWMg5AphAdb1y1E4UgjB
         zMktiQ8s1bJq/mqG34CJ5AxQI3+lKb90+C68GkuDfg/eXtG3thrSCF4xmCvo7OdUObxA
         pF6A==
X-Gm-Message-State: AOJu0Yw36p+QWcDMXUxErZtn4hFt3sZOe/bnQ2rEOzOwqKLW41xLqD6Q
	3lX1OzPS8hhVx1DgYLHXtKOx+KUSMum+1A==
X-Google-Smtp-Source: AGHT+IHmaFF9770ekQzoifC62Q9/CBbXjiBuMNAewmg8BuCyxj1laL8Mc3fM4nEDKz6pP1TDD+4Z+Q==
X-Received: by 2002:a5b:783:0:b0:db5:449c:5ebf with SMTP id b3-20020a5b0783000000b00db5449c5ebfmr10193276ybq.38.1702987162908;
        Tue, 19 Dec 2023 03:59:22 -0800 (PST)
Received: from skbuf ([188.27.185.68])
        by smtp.gmail.com with ESMTPSA id r3-20020a5b0183000000b00dbd58d94691sm290627ybl.7.2023.12.19.03.59.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 03:59:22 -0800 (PST)
Date: Tue, 19 Dec 2023 13:59:17 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Liu Ying <victor.liu@nxp.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] phy: freescale: phy-fsl-imx8-mipi-dphy: Fix alias
 name to use dashes
Message-ID: <20231219115917.44egjhs7pypcx7cs@skbuf>
References: <20231219090248.3317500-1-alexander.stein@ew.tq-group.com>
 <b01e05ac-8b28-49ad-8a1e-9cd667e5f1ec@lunn.ch>
 <4858990.GXAFRqVoOG@steina-w>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4858990.GXAFRqVoOG@steina-w>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_035925_461897_00E56AE6 
X-CRM114-Status: GOOD (  24.40  )
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

On Tue, Dec 19, 2023 at 10:13:03AM +0100, Alexander Stein wrote:
> Hi Andrew,
> 
> Am Dienstag, 19. Dezember 2023, 10:09:24 CET schrieb Andrew Lunn:
> > On Tue, Dec 19, 2023 at 10:02:48AM +0100, Alexander Stein wrote:
> > > Devicetree spec lists only dashes as valid characters for alias names.
> > > Table 3.2: Valid characters for alias names, Devicee Specification,
> > > Release v0.4
> > > 
> > > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > > ---
> > > 
> > >  drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c
> > > b/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c index
> > > e625b32889bf..0928a526e2ab 100644
> > > --- a/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c
> > > +++ b/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c
> > > @@ -706,7 +706,7 @@ static int mixel_dphy_probe(struct platform_device
> > > *pdev)> 
> > >  			return ret;
> > >  		
> > >  		}
> > > 
> > > -		priv->id = of_alias_get_id(np, "mipi_dphy");
> > > +		priv->id = of_alias_get_id(np, "mipi-dphy");
> > 
> > Are there any in tree DT blobs using mipi_dphy which are going to
> > break because of this change?
> 
> You are right, I should have mentioned that already.
> The alias is only used when used on a combo-PHY, which is only i.MX8QXP. Up 
> until now there is no DT node in-kernel which uses the fsl,imx8qxp-mipi-dphy 
> compatible. So no there should be no blobs at all using the old alias name.
> 
> Best regards,
> Alexander

This seems correct. The NXP kernels have this revert commit which
reinforces the fact that this driver does not probe on the
"fsl,imx8qxp-mipi-dphy" compatible string even downstream.
https://github.com/nxp-imx/linux-imx/commit/daf4e70d081a2672ac4a22ff39f6712798a0cc3b
Adding Liu Ying.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
