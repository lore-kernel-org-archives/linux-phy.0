Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83984F30956
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 13:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bXyMt5hdntc1r4oNNvKvaMYt9qy0AFLLyMgAix1D78Q=; b=UHvKNVAxLhtWBC
	ExaIkI7PrEP7RhFPvM/0zM/lI27UEIc4GBwPAAwj9ivfiJU3NZGU5Su/zqMtr7qrWnXFgdhtGDyWT
	VElLmar3uFlxCO2RI5k99ICisvadCkjLFcOhtNLmjpwYDdISV1DmUhMrtHeLWjwZ84NZclLp+5CV+
	LAgNvq/VRRYynfV/0i9H5wOSp9ZGXFGKF/B9d271PNC92e0oxRJPMAxhi5myQj+U6AKgDhMX4+SxY
	jBbWD8LSfrDrpj2/OJHjDariH9H8b50PJO/5YA8OsAgFrrvnKA7l05fDPh3vxbEVmZKVr8SvgCxts
	fZOMHaoozp5ZJPgQxaFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy8PC-00000001qh1-0VNY;
	Thu, 05 Mar 2026 13:06:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy8PB-00000001qgQ-0dcn
	for linux-phy@bombadil.infradead.org;
	Thu, 05 Mar 2026 13:06:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=z/3ao61LTSp6jCCF+e+2SF+gp23jwVu9a+x2K0Dcxpg=; b=f6ST+bVCfEQwGVRvubOmAomrqS
	w6swzlTkFZfQ/A/a02mkZSC6OBFK59JgfC34cr6tyD1KIzonJAXEU1CtR0tLBSeo0hby/JkfM5cee
	ORWTzFoTPnJNTsIxPwV/u/t1gfOAk6U8xtu4iziBL0p2PWI5jOTeN+8D3V97qVS0r8FyVGdTT7GVU
	Dm6JAIvXeXPbQvl8o1WCRChDTupti0tbmkq4o5DjPJgCUq08rrlOMwd1XVIYI4OzEsmSTgpDRwqCw
	0UBb0dJ8Q6bzLzheSHHmv/lbWLSs9E1aLAIW0PpnJ3aGujhMZ7X9b1ZE6IT5ocJp7pUrnx41Y2i9D
	Totzr3dQ==;
Received: from mail-pg1-f173.google.com ([209.85.215.173])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy8P8-00000006npg-1RMH
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 13:06:16 +0000
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-c737d3a51bdso674658a12.3
        for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 05:06:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772715972; x=1773320772;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z/3ao61LTSp6jCCF+e+2SF+gp23jwVu9a+x2K0Dcxpg=;
        b=nNv3PmtqXeynWM3JrFcMOIkZSzoh1+0umC2sq6cSZ1OgJCY2C5tBjbYbzEl6LIwS6w
         Pit91ztxzwmgDLFxJXgQZpm0TSLyZPJt1wwy9sUAaozk5cElklLdJZELjYIvLBtqAMYE
         kHV/M8cA81tH/6FWHXkMUSbFjqC0F4/lvA1LVaGQg/D41ZY70Sj0wgiwjycZqptYxbHg
         LH69HssV4hUFQqZlwcQKxIoIJoxlCp76zXbagf/IC4W9Uv1cRl8atHGL3rKDCtUbO5jZ
         wllIhnNo2RfDilCc9NDSBvGcA9lGKOKS/nLPz1w0rAEV3f0huy3a2IFueP5tTHXLJ2Zk
         vNOw==
X-Forwarded-Encrypted: i=1; AJvYcCXhjfhu84RSF9v+gI4gjvnUxYhzXP+dic419sdpwR3d5kgb2wydCywTATu2GHqftYTac4MLiSLY6x8=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywf1KuFfzTCqheIyVddKkofckCPXUmY8eqX2Zu79y8WfjvtlirW
	5AxFNk5F83QAaw8edjPBhrC1USBBwqWwsN39WSd++78RrXSorAP3LjWA
X-Gm-Gg: ATEYQzytn8pp6RbZEPNbAkZ8Psizw2ojhmQC+fI0D1Ab5c/aMdI7uWui5/d996vw2E3
	I6cokd8H2KXSgaJCpZJIm8DtjKFAky/tI4HIyGk698mep3c0UI+bD2fSg/7BglRoNm0FumFMHQA
	aPnX8Easz+hE3BZrsbkRmSVj2KJJKYueYY2ZXblpjme6dUXIhMpSP9n9obkfACdAP8ER+GRVweZ
	Wr3AzWa7a0D8zyIBqlYKE4sCHRrbmrAUPQJYpwbUKrBqBXY9bdj7vqws5viotGzZFR2+BnjPuEF
	b1ERwKToliEpUE1/JoxYeD9wvDPXWzuSA/XAYULc0ousNmkQ119XsjJQy1mih7jPSVe/0TjQiFY
	qyZYyWB1jGKxVA6rcj/T/mX6DXgUDyNICzJerYaNzDJjkgmAsHrUCN0f3eYoXVOq6kK05/3l2gS
	D2Y6vaQw97AzuCrrMHjwkHrqbfkiSQBtY0Bui8yHw7BG0HjbSwhZlVn+4pBHX9LJKUlVUsQ/BCq
	x68ITMmoj/aBRwNrQozS0+dFJ/sCUylLvQ8jf0DTFjKuIqgP2o=
X-Received: by 2002:a17:902:f68a:b0:295:560a:e499 with SMTP id d9443c01a7336-2ae6a9cd41cmr53596975ad.5.1772715971749;
        Thu, 05 Mar 2026 05:06:11 -0800 (PST)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae3d19559csm154128355ad.5.2026.03.05.05.06.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 05:06:10 -0800 (PST)
Date: Thu, 5 Mar 2026 22:06:09 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Joe Perches <joe@perches.com>,
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
Message-ID: <20260305130609.GB1659133@rocinante>
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com>
 <20260304175735.2660419-23-vladimir.oltean@nxp.com>
 <a8fee1cd-1e69-4a9e-8533-c0988c480fb9@oss.qualcomm.com>
 <20260305085148.7cwo3yflp7vcfldf@skbuf>
 <f3a5aa3df78553ffc0fd0024f5fd36a4e2158c88.camel@perches.com>
 <20260305114352.2f7btqixg4tu5bzl@skbuf>
 <20260305121532.GA1649635@rocinante>
 <20260305123843.i47asdrjychwlgdt@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260305123843.i47asdrjychwlgdt@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_130614_480220_81A7E6BB 
X-CRM114-Status: GOOD (  10.51  )
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

> > > K:    \b(?:__)?(?:devm_)?(?:of_)?phy_(?:create|destroy|provider_(?:un)?register)\b
> > > K:    \bphy_(?:create|remove)_lookup\b
> > > K:    \bphy_(?:get|set)?_drvdata\b
> > > K:    \b(?:devm_)?(?:of_)?phy_(?:optional_)?(?:get|put)(?:_by_index)?\b
> > > K:    \bphy_pm_runtime_(?:get|put)(?:_sync)?\b
> > > K:    \bphy_(?:init|exit|power_(?:on|off))\b
> > > K:    \bphy_|(?:get|set)_(?:mode(?:_ext)?|media|speed|bus_width|max_link_rate)\b
> > > K:    \bphy_(?:reset|configure|validate|calibrate)\b
> > > K:    \bphy_notify_(?:connect|disconnect|state)\b
> > > K:    (?:struct\s+)?phy(?:_ops|_attrs|_lookup|_provider)?\b
> > > K:    (?:linux/phy/phy\.h|phy-props\.h|phy-provider\.h)
> > 
> > What about
> > 
> >   F:    drivers/*/*phy*
> > 
> > or something along these lines.
> > 
> >         Krzysztof
> 
> I don't understand your suggestion. Is it meant as a replacement for the
> keyword regexes? Your file pattern matches on:

I was thinking more along the lines of using wildcards, the F: was just an
example.

[...]

> There are a lot of false positives, and a lot of false negatives.

Yeah, the "catch-all", for lack of better word, will not work here.

	Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
