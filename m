Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8589DF30955
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 13:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hw2/36qIbP37XkdSnVIwKExV7X6YX1ttK1uPNYL3WuU=; b=0xF7whPgMBlqgT
	LS+lTtjmDtOtI88gaIP8h0mtzA4tYf5wPCIGwpnXjAlRgmYTjcav1tL5f6Fr3tV1PSu9Uu7bfJ/qP
	p/zabYD4JB4tekmMXB1VYld/J1BW2wXdRrgWpoBl0E7bQshGX/XL8+BxkdCjyNMjmPBZ20RBdCvG9
	4RQq8CZ2A4q1qBSjTADU2pFwRidFZV1QRJLYEo14o41p4siRSvV55ddqcG+rvGzrtYVuplTVSPsWY
	60h0yhwy0527xiCrbURvloGUHX4gdkKzFoersmkGhyUC4BwLKucyGIlmdAOIDllQ1pI07P/7sbQ0h
	kMSVs4Z42cyse1pEEbbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy8Kz-00000001qAX-0rkX;
	Thu, 05 Mar 2026 13:01:57 +0000
Received: from mail-pg1-f180.google.com ([209.85.215.180])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy8Kx-00000001q9G-0jn9
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 13:01:56 +0000
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-c648bc907ebso4974566a12.3
        for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 05:01:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772715714; x=1773320514;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7IxpxVkGnClS/pzWnTPcTEx+bl+pPZR21vGpLksfVXc=;
        b=WUm/ydz0c6WJcmdLSQgi+A59okV1vaJuO5K1/1xMyApjfdDNs+42FSiFwKiy+Ty1fH
         J/pGXmd7VfvbSML+63cQQDyhjnUxMyPi335+I8klqL8Dz9xEJwKxKJMT4YspDeMymb+5
         pxk+WH1A3iu+n7fSLNjlmCUyHDlqsVQuW8rrtrbx6xtcuty7ibCP2zpmBmFDLIR5dqgq
         K06XSsCi7y02/Nzs+pi+D4gKmSHml+kCJUm9IuZrn7YUqjvNeIHXECwq9j2BYYF7cuIK
         2QrZRl3rl7dRXzlZa4l3jSXn9zGnB/+7nGI6+xQPSeGhCZg92y/vLfewEtE5FptC4e3R
         yucA==
X-Forwarded-Encrypted: i=1; AJvYcCVhLcq/nrMTA+v2Q5et3t4+byBYjiZKye+tZ7zc7Xa5pq2nLKgoOsi5b0psOmr1IrXjo9GpLhk6ySE=@lists.infradead.org
X-Gm-Message-State: AOJu0YwATXRex51hiUg468Xa5GSJZoRioe8LudYrz49+trRuMXIYOu8P
	1C9R+WlJvSsO8j5ieSGAjyzMZLpe5hPmXyJ9b/1dKDe5q1+OkTMlW4g0
X-Gm-Gg: ATEYQzwJjUnMFmTlSEvDYCv2Mf0+Aj2rzjR352my8Wgc8rY9O0H6Uhvm692AFTr2i97
	gBEfE3TaJOHNXE3/gizB/RVEcNWDAw8ONkbcfso12/BaCXLPLZ0650hy9o8yzsZkajlPrRf/pgt
	Vg+5Y/oFAh19KmM8fp9OQDt0QWjRp/WlPPCEZ+L+vND/LsJaJojC36kchBlc85iV9qmjFRG0qHr
	ff/N8jeTyxPeed89KjujmwwrS4JZpO6vaGPBA/HwQkRmUZlFUyY2hX6Xln8eXp2jXCPIwbSYrpn
	Auez44AsioOonzu1J14rSCK5atrP9HvPvPh6nXb0gCfgoAANdLv8dfdQItcCzb5gg0u/fAWnuqL
	F6TlVknhBXS8/TUt8BEpaimzh6LwB+/0nfQrHKhrDoO0sVrT0fYbKTiBEr7S7vsD15zUKJSWCWL
	+/Tve3Hy9Y8obwNn7p+B0rt89uJLq1DKTYB89ka1Ossmz3wAlSyTh/j9X84VAsGPolXdeVBa3vW
	jZHakgVflBf3MxKyk6oyRZzCCWtHqETsZDrjNU8+iElcjmcTUEcbw0oenHRvA==
X-Received: by 2002:a17:902:ce03:b0:2ae:5b52:3818 with SMTP id d9443c01a7336-2ae6a9deb2amr60551085ad.8.1772715711782;
        Thu, 05 Mar 2026 05:01:51 -0800 (PST)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae54136b28sm115696425ad.73.2026.03.05.05.01.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 05:01:50 -0800 (PST)
Date: Thu, 5 Mar 2026 22:01:49 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Vladimir Oltean <vladimir.oltean@nxp.com>,
	Joe Perches <joe@perches.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-can@vger.kernel.org, linux-gpio@vger.kernel.org,
	linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org,
	netdev@vger.kernel.org, spacemit@lists.linux.dev,
	UNGLinuxDriver@microchip.com
Subject: Re: [PATCH phy-next 22/22] MAINTAINERS: add regex for linux-phy
Message-ID: <20260305130149.GA1659133@rocinante>
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com>
 <20260304175735.2660419-23-vladimir.oltean@nxp.com>
 <a8fee1cd-1e69-4a9e-8533-c0988c480fb9@oss.qualcomm.com>
 <20260305085148.7cwo3yflp7vcfldf@skbuf>
 <f3a5aa3df78553ffc0fd0024f5fd36a4e2158c88.camel@perches.com>
 <20260305114352.2f7btqixg4tu5bzl@skbuf>
 <20260305121532.GA1649635@rocinante>
 <20260305122957.GA1652563@rocinante>
 <20260305123956.ojkt4k3ly64xz7fu@skbuf>
 <aal6kWDx_3XRGB4K@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aal6kWDx_3XRGB4K@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_050155_208481_C3340AD7 
X-CRM114-Status: GOOD (  10.27  )
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

Hello,

> > > For content match, it could also be:
> > > 
> > >   K:    phy
> > > 
> > > I believe this would match everything of interest?
> > 
> > Yeah, and way more. Think USB PHY, network PHY, etc. Don't want to drown
> > the linux-phy mailing list in unrelated patches, either.
> 
> Also phylink, any memory management / DMA stuff that happens to mention
> "physical", and probably numerous other examples.

Makes sense!  Sorry for the commotion here, then. :)

	Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
