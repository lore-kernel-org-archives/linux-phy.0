Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA82CE77188
	for <linux-phy@archiver.kernel.org>; Mon, 30 Dec 2024 12:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/KU+/uX8ezRVn5EvNaAioFaSBkz6zgAnxr+IqAwuYK4=; b=eVgf6Qm90sDURw
	VHDA3uYC5FPYnmLQzfhX8a5r7x3Jr6uisH2XbOYDk0BtEf4zFczGc9aIBA1dil1ND4sIPvymZJE5M
	y7fjwv2JdOuXGpKSGK7Mr4TJihg9AdiP0Wlf3NtBe2onoG1StdX8PE8aQMhWz63xblap+6m0Je3rV
	+fvD6+vtfhlH8YJcUAw9xqvPVhfGikTcBvs1HNBDBzUukx85ZX9uwnfBwOMsliq3QnzO1W35CgCeM
	Jy9Dhg3YoMDATTRS+M2jT3wbYJtuGma7yRd95PNyN0hp32NfOyEujqPT5yKBoh7z2srgkVqOf/Up8
	U4tnrLiPoCEiOkmivebg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSEzl-00000005Bm1-30qT;
	Mon, 30 Dec 2024 12:35:41 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSExg-00000005BQm-31wn
	for linux-phy@lists.infradead.org;
	Mon, 30 Dec 2024 12:33:34 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-5401be44b58so9639530e87.0
        for <linux-phy@lists.infradead.org>; Mon, 30 Dec 2024 04:33:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735562011; x=1736166811; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/KYkN53WI+JNUVPnu1L7iFZzO5YGuruzvwyya/+uFx4=;
        b=rtj6QRcEJJ+7Bl+rqMazt7qlm8G3Fw5Kio+xajrFouuz+e+pmomTBBMjUKK5lWaRsu
         Yh4qVC8o8ox5p+qwj/EB38NguKO02CMo4jArDfbYeVx8AKza3LNlU+yJ/x6uA28aj46r
         l3gCMiDH2E6YNJw//yE4D7RpIr96WuR1ta2xbsmUdB6ZQnOXT6FXfTjYFDY2vGlaVMev
         r+67jCNLvB9RNtqSgmDKp8GsPRrI5sYUh/q893Jx4KbWYTwVeXEUZZXxVUlQ2O+qrTqX
         6jY01KQyLHjg4agJ2/w7q+PJHbD85sHRJLgzagXxUJAHy2+R9mqB/Nvp2PF1cmZEKo49
         vvaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735562011; x=1736166811;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/KYkN53WI+JNUVPnu1L7iFZzO5YGuruzvwyya/+uFx4=;
        b=DIPl4+SIWeLIliOe3OewB8qU7/1v3oxMuhCKXmPW3wm3y0cR1vnjclYkWDNEi2Acbe
         q1jpuPsiI8B9dr8YyfIO1IUoVRaGD0YVT4FKcPK4QTK7z2odY/RZXXzAEC8CwN9M+GLM
         Tnqbuff0fwhrS5VJ43G8ttNSQANlhCuDiCeOIO/WVE2mWBKv0a+eWkffgAsa8B+qm3YF
         6VTV2kfgylHkheEofOhJghwkBQTxC+8vWqeIdcmuDZkeESCUBrz3kDW4ldtlFLKSu2uH
         oAaIqdFiby3woKejbUI59C9OurkUGXSqk6gUeo+zcaFGIBnnHNz0Vlo5ehLYRgoTqej6
         fqSA==
X-Forwarded-Encrypted: i=1; AJvYcCU2IInwGSXH3JjxlmRft3n0NEaqZP+Lki0ewAfEaZKmiPvfz3sD3hq0lDqnqAc/XTKfs3rKrlKwDmI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwdTIdDLwzVMKknNp1BEZFmYRnRYpvIR2uf2k2TNPCu+so4w2fx
	95ONg1MY4/jOGwSja6QRHOI4bhYRfzJRoNprq3OlpVEG6c5qvDwlVU26h7cqavI=
X-Gm-Gg: ASbGncu2/z0KlhYq+3ppSF+GryEIGCstqA/NxCX3XEikJCl/yvUyV0Aum+Y8kaHyuIM
	cZmRNDtyeHA3safV6pvlm/YroZJp5MrA+yT2wDKws2jOecU4U9c0DbCNSB6PcKdgrxJpZmpcDuA
	qvBdJ2J/h64gjM5zgw/7xr5gvV6nEnGbsJm5COrXaXGX/3DGndZVrtAEZLjfoIMaTBvgwFS6ZLL
	QU5SJTuX5vV2Ek5DazN16zHdfwLf+UkFw9tAR+Cw8jTuK/jis7hVtBgHnTAY9uz+HXSSF/MneXa
	JSh+kNemze0bvXxSTw6ulHabrjogVvkva3Jr
X-Google-Smtp-Source: AGHT+IFuphrsUAmtBsapn4MuuZ4zkhPDCYfwZQ1OQx+nK20jXRfJS5fbhwKtwh7lTAQAKIeTPggikA==
X-Received: by 2002:a05:6512:334f:b0:542:2990:722e with SMTP id 2adb3069b0e04-54229907232mr9337220e87.15.1735562010862;
        Mon, 30 Dec 2024 04:33:30 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5423d3b5697sm1688236e87.133.2024.12.30.04.33.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:33:29 -0800 (PST)
Date: Mon, 30 Dec 2024 14:33:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 05/17] phy: phy-rockchip-samsung-hdptx: Supplement
 some register names with their full version
Message-ID: <nr7ilsmyu5kubahmq5pjscgpf5wrnzn456zoohatpftr2zjpfv@fl2mx4y3cel5>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-6-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-6-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_043332_770766_1E0DD668 
X-CRM114-Status: GOOD (  10.50  )
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

On Thu, Dec 26, 2024 at 02:33:01PM +0800, Damon Ding wrote:
> Complete the register names of CMN_REG(0081) and CMN_REG(0087) to their
> full version, and it can help to better match the datasheet.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
