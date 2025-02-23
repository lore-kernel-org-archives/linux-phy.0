Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D19A3C021B3
	for <linux-phy@archiver.kernel.org>; Sun, 23 Feb 2025 23:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lbDqiMyeigdu1QnaAw6m8Atp7dxl7ivqE7AgFHGWgTw=; b=IFvo++203KmvQa
	EjGkgTzXNEEyzcdaZbUhHMQMm/Wg8mnoF+P+5iIKTZXpfO96xl2zOyQqJxjFLCsVzcbQSJK1F6CGY
	MIn9sxvx7MCZtsKVilaM/o9wMxLiip0t91bvRlsBIJQsY+M/HBEPppfEQ20Gwm7EeDff2nrQcqv9b
	xs4yPGYIHIs3vsg//8o6NGn6Ezi1cIlIeERgFMGmweumH4W7FFmWmLo0KPORDK5g+MZEVx/nJiiDX
	kuTFUbqG+3cOYGmXUaSGKFlNQ+/70+XwnVM+Y+QcsIHG+6VSgw4cWExP54I/YCfaACxeSQ4t3UGBU
	Oe6MhddXIA+r5Ing+rpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmLhn-0000000BzMz-2REK;
	Sun, 23 Feb 2025 23:48:15 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmLhl-0000000BzM7-0Ooe
	for linux-phy@lists.infradead.org;
	Sun, 23 Feb 2025 23:48:14 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-54622e97753so3557524e87.0
        for <linux-phy@lists.infradead.org>; Sun, 23 Feb 2025 15:48:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740354491; x=1740959291; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9wcnMV7bCjw+onbQP13XkDfLLYTKBRINzQvJtc5RrEM=;
        b=oCvCtweQlRFMIqOFgr3Ml4mK7U/vp8B14Hv9+iHNOiJGUsMuInu2USSMMEKsV/bQZR
         lmhjUgHTPFZCu2pF1my3QKbuR75M7G17xg9ATMJW1GIcbIWUUQhRpsiaR1Hzq72kuyvK
         mnWfGZUubmTlHW5M1nceVfclteyGDaIH2ddlyzwJ8ovMjbrpy9jqc3IWoD5seXkrbN7U
         vbdPrXNnCgaODimj9mMY6HZTkqY5GI4VbyEohoAdGO+WZl/cZvO8vPbFOesL5ABH4AeQ
         ken/U7GZpkNg+TtGw9jVuej63f+ndLwY0+KjlzxmG/XDF59Z4tols6tD9sgu+NjvjjDG
         N8/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740354491; x=1740959291;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9wcnMV7bCjw+onbQP13XkDfLLYTKBRINzQvJtc5RrEM=;
        b=jnXAFZPL/hoe0KJnrhZomaunTK0C4OlI7QnS4G8NAO5fiqyoEVcbtn1Ah0SoiCA3fN
         PfPVFU0GmHRLct5JrnOi14T8MJWpThNTqF8KeTgMXdL9esX4DryKkUZkd4JRVSgI5Yhi
         grNQQ0vEe/RRW535I3rJpxNFs+76sNdgYjWXcuL9Jj6QSa5cnBtmqKlVxP/0Tw2yaRWE
         mYyJeQ0KjDxFiO3LXgruJ17VQMeKi8YcFCNkfW+JvY78yDHzspRGga4q4As3d6W0e0ZY
         0rDn7A1pyaZ77Tl3lGLUUow5PWlu/hqjzvpTuc8ymLuZXUq1YlD3cI5mDlHZreGY5pZL
         awug==
X-Forwarded-Encrypted: i=1; AJvYcCXumzOoZCTRcb0Gwot+o1BOLWUOMxOtdROz71G383cNMvxtUSt2To0jFqG+3sFF6MQnp5b2AZGtsQE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxm4S4F2GQ8Dy8D1lYAXt68L9I0Vpy0vCEx7S0IInv36MWK/KFb
	tttIYS6a5rKGDUglD33qPPooktpYGLi86schHnCzBYM23g/Vk1hBwEVBqft/qIc=
X-Gm-Gg: ASbGnctjKQKZlwWlzApcRB+U06MlA8dlixGJh2gBRhVUxmX4DFnMI4wAumi6/PXQN/B
	WOf/YvC885wtQDAft4OJ0Utcwnh77acnme3wVpyoydsEDH2/+lPmA078XnaF4cAcWWgf0v/8ILX
	XcleCKt2Vgt3NZSm4kbf/rlnx+t6Zm+eKT8QPJRId+MTobVE50zUzT6TXPBRHkZQqobmuMyjjOK
	2K/p1ww/wOzpRtjk/RjWAQ3/a5tqFUbfqDaL0uEMIUgA+G+wd6XVn1N7M40Af5+0m91XFw1ZWP9
	FATgasPdUHYMcVdTvR59SfjkcObGLJhQ6MOSBdXDmBI3v2mo3sT6KP/tvs+4Z2bCV8Syb5Ma6O9
	PV1NFzg==
X-Google-Smtp-Source: AGHT+IGXmEWcaphU72erBHimrC5JqF3fr1E4pBz3cUxisqWzEmoQZicuyftwCeCY3akeN/V+TAZxhg==
X-Received: by 2002:a05:6512:3f29:b0:545:1049:eb4f with SMTP id 2adb3069b0e04-54838a00232mr4288474e87.0.1740354491225;
        Sun, 23 Feb 2025 15:48:11 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5452a67e6c3sm2955721e87.1.2025.02.23.15.48.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2025 15:48:09 -0800 (PST)
Date: Mon, 24 Feb 2025 01:48:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 6/8] phy: phy-snps-eusb2: make reset control optional
Message-ID: <rcny5iaxs6gr6vcxmjep6hwtkt2fvtgzhbxlpu3ax6vj7maure@n5bg5y74vwc7>
References: <20250223122227.725233-1-ivo.ivanov.ivanov1@gmail.com>
 <20250223122227.725233-7-ivo.ivanov.ivanov1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250223122227.725233-7-ivo.ivanov.ivanov1@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250223_154813_143077_88353DE2 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
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

On Sun, Feb 23, 2025 at 02:22:25PM +0200, Ivaylo Ivanov wrote:
> Some SoCs don't provide explicit reset lines, so make them optional.

Is there an external reset or some other signal?

> 
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> ---
>  drivers/phy/phy-snps-eusb2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
