Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2682EC27C79
	for <linux-phy@archiver.kernel.org>; Thu, 20 Jun 2024 16:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AjmbpxX3PqxzXiF+iVFpqBpYm1Q/RZ6+nd/LstdHcuI=; b=dgwtji3LSIcT6P
	WkMvhQLBPdx/HOJDTLCCIJqDruLDwb2OsV6d2hs16CbN5R2rzGdBuCK/cnAGG1GD+3L+qPyC7FrT/
	7d/AxhjncPS26L79YuhKXd4g+C8SYpqRtMnAMsT1kecX82uA0pNRRqubkHoA1+PPY7kTUTyJlliDN
	uRIvcNTQDJbn+HubqXpfdrgJeULZ2DgHY72+3InDNhuHsW5OGEYKXhVR0HPz2Q6hvwzPPspXKBZzQ
	bnPFasgeFyDg481VTOb3KijhC58rlf/jeo1XNlect2IiCVJpgvDjO+cm4GpPMjkUBFQwdfyhlzUWW
	Bmbzcfkkr4cCeFzWhccg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKKgL-00000005rjX-1brc;
	Thu, 20 Jun 2024 16:30:41 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKKgI-00000005rhP-0szd;
	Thu, 20 Jun 2024 16:30:39 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-70109d34a16so1027998b3a.2;
        Thu, 20 Jun 2024 09:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718901036; x=1719505836; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qsyYBnBD4C+9cyxgt//5+wZQ+goYBnLsU/vC89c+kzo=;
        b=gqBEOLFKsfdZmQx1mkM8PAG8Ikf19Wj6rik2NW9fu/5uHnVADiJmq5/5UVnrQqTeBr
         GjyqIQYOvTCcjV7ZEx12HGCSYtqROWYnI2upcXlavF+cOAEGBqH02n39GQa42pP6g/iu
         mhre4qfxbVj7NnvJc+HCMqrIjjB28ivrn+Z2lOEGY59UHr0gxora0sIJzLSwNT5VGbW2
         m1SXscu75jA3y2fLEgDDN60yBzEcFzU3T238+GcR3FJynkBtIDQQpkyLJCrSjZbNCdnO
         powWPTlG+6oNierihURq1ZJUvPehTkxD9v3C3wbMqujQaLDhh0XWP39BrC3VbateNN9+
         ioog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718901036; x=1719505836;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qsyYBnBD4C+9cyxgt//5+wZQ+goYBnLsU/vC89c+kzo=;
        b=AO9aFk0UNOLBUQnOV/euME1t/8RW1Is35QBzV4jPSfxvfx9CJgDs15mlM4Wa5RWxwR
         tQBtaF5DebNRguYf68rbQegOkrYVKZ9RbgWwLQ09rH0n/alGZ1aMUyU4Oh1qz6Nc3GVy
         +1kQx/llqJ8niRGaGMA7d5dlEsQc36T/26BlL+P/10H8Dz/LXeXeF7MiUTzogAPAdUR6
         yZrS/wHrltByGNYJa5j90UaYNKq5LAH8TPmGH5uNZRXbE/ReyfQ7AadPTuKcMX05lRJs
         +r9g4Y4X5ei5lOZ/9PTXj0S9YTPkRoCwTtEFlwe5SadLrR5/ZUkE23XKTrJy6h2BMoUK
         0Yhw==
X-Forwarded-Encrypted: i=1; AJvYcCWPlwq1kw8ckX40xNvrPrRb3gDhZGSXKCYVy39NDUjW98Z4ClMjMvI3N/lnffkfvrGtMwXelfru46zpBuB2D42ZwejMy9fRwsq0cuAy43VXXOBM9NGSJOyZafJ9uD7RV0QQm3wexelRH4UyI73/quPZ27CB
X-Gm-Message-State: AOJu0YyIAiFMLPd7wXqogDNDYyrET9QorbJEiTelNq3CTjLT+oC+8jlE
	u7P+Jm8U7/oJHLtoyJHaQyBWEXIiO2Zh8iU//g+nNf1DaQQzKvZ3
X-Google-Smtp-Source: AGHT+IGndCdN78CF73lLg0AoJ92l4TcuUZFfs+eZAg3UI09VK75VmrkOJNgBpK+jw/bXD4JUtOZVuw==
X-Received: by 2002:a05:6a20:a891:b0:1b8:d79:55f6 with SMTP id adf61e73a8af0-1bcbb40ee1dmr5691357637.25.1718901036424;
        Thu, 20 Jun 2024 09:30:36 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-705ccb67b29sm12936722b3a.141.2024.06.20.09.30.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 09:30:35 -0700 (PDT)
Date: Thu, 20 Jun 2024 09:30:33 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: conor@kernel.org, vkoul@kernel.org, kishon@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	frank.li@nxp.com, conor+dt@kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de, imx@lists.linux.dev
Subject: Re: [PATCH v7 2/2] phy: freescale: imx8qm-hsio: Add i.MX8QM HSIO PHY
 driver support
Message-ID: <2f15baba-68b5-4e99-bdb5-6d2e05b7688b@roeck-us.net>
References: <1716962565-2084-1-git-send-email-hongxing.zhu@nxp.com>
 <1716962565-2084-3-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1716962565-2084-3-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_093038_275994_3AA7E66A 
X-CRM114-Status: GOOD (  10.57  )
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

On Wed, May 29, 2024 at 02:02:45PM +0800, Richard Zhu wrote:
> Add i.MX8QM HSIO PHY driver support.
> 
> i.MX8QM HSIO has three lane PHY instances, and can be bound to the
> following controllers in the different use cases listed in below table.
> - two lanes capable PCIEA controller.
> - one lane PCIEB controller.
> - AHCI SATA controller.
> 
> i.MX8QM HSIO PHYs support the following use cases.
> +----------------------------------------------------+
> |                               | Lane0| Lane1| Lane2|
> |-------------------------------|------|------|------|
> | use case 1: PCIEAX2SATA       | PCIEA| PCIEA| SATA |
> |-------------------------------|------|------|------|
> | use case 2: PCIEAX2PCIEB      | PCIEA| PCIEA| PCIEB|
> |-------------------------------|------|------|------|
> | use case 3: PCIEAPCIEBSATA    | PCIEA| PCIEB| SATA |
> +----------------------------------------------------+
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>

Building alpha:allmodconfig ... failed
--------------
Error log:
drivers/phy/freescale/phy-fsl-imx8qm-hsio.c: In function 'imx_hsio_set_mode':
drivers/phy/freescale/phy-fsl-imx8qm-hsio.c:459:15: error: implicit declaration of function 'FIELD_PREP'

Guenter

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
