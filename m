Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B9F6CF9C6E
	for <linux-phy@archiver.kernel.org>; Mon, 23 Sep 2024 11:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XJtH+QODtNCF6clIF0OaY3qsQEfCFUgTAfEaxBa3agY=; b=v5f7An3mt5AHXy
	ztvRIlzD9FrIZ7TVeEvcg1MBbrt8l6Vm1BZ9cu7FwYWJZBPcXGs5eDLF6RU6GrtlAuyCV0b44mjMM
	auFaMPipjqjWURh86Gmf/XuizTGCxFHQgkvMWTyM/lJBR1kLUj+ReWlzDc3ajxsDJBs5uNAbYXTuI
	nl1Kjtpu217Hc4fxdFjKxD0E7eWby97Mi0XsjMlw1WwrXI5K9g+78KujeJ/26RtgzTjpTZrPfyJx5
	VATgJ7T7KR4kefbe4X02loYkFKElL5fvOJAc2obGKLc1zVuNgDb5XihHfcMtS3vkC4iYAuqTHYN7X
	woMpAF9xAah09oDL2GZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sshXi-0000000H6HU-02qq;
	Mon, 23 Sep 2024 11:47:50 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sshXf-0000000H6Gc-01FB
	for linux-phy@lists.infradead.org;
	Mon, 23 Sep 2024 11:47:48 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5365cc68efaso22946e87.1
        for <linux-phy@lists.infradead.org>; Mon, 23 Sep 2024 04:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727092065; x=1727696865; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0djd4G/7ZZ9d24oyrx0WPtUTMtYC0XKPiOilllFoMEI=;
        b=kZujFndC3fU1/nCHZXFnSmf7wnjNW1uwzp/N57k8T9sYHyEyuHrv+TKodh9CTZWwwl
         AyHM2rVaGrDZU17arx/l3xjh76Qm893PYiuei33sDJBhiYI1VE+m9+T4iZfQZ9dIeZID
         /nwweKidPe+Q7iS+6r5yCGMqcRJ/ztasDg3VPUC5vgRZNE4Xhxd1OPKzX9xEaw62bGmr
         TZhrXxN7Wk0aYIpsWMX09iPCB+Hx57V4zaesD0PlJN+/UKqFAs3eVe4ptwGAhcXSrp/c
         PwCOWMxOc5fn2W5+tmT0dzrsISBODP3OG5GrAuxkqEC9f1fpkKxdVra+738IF2JSyTtz
         A2pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727092065; x=1727696865;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0djd4G/7ZZ9d24oyrx0WPtUTMtYC0XKPiOilllFoMEI=;
        b=hrlgL3zQNHmu++oGhgY44AtAE/OehVdFk10Uu1cw0aoqgANCneHUjYA3KculratuxE
         +zfUJUSe22MZW3gfW6wXoJp8uKTw2lbW5/HI+sFWqs2G6HGcQkiLmRaYgNsdwMWDMTX6
         F3mv4y0Qw6bIszsMizOOKNI+vvp/if2KRXsBQxmAwbvHijx6mpSI4dT0cDzA41DIy0lc
         hOBzjJWRO0xQ8aD1Efp5yiFcZL0iLLKKNGk34ygpeGujCDqu4cHXsuNQ0+GJKidfzZsO
         iJM8e3KvsyZJvEf4pS8lUkmqSUKkhGlbsAhsGP9koMCI71YbGVDM3HPE+R36SAFkZLzh
         wJyg==
X-Forwarded-Encrypted: i=1; AJvYcCXGyeetMQy2vXf5zlE1Iw9lebmOxqluRAVSWduwsLs9YnuyKcIgXT+Nls+ogcfIVxoEq7v9JU8WwUM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwBT/71Dt7gbVca3V5fkvFKAHvIwxDWKZL0GezQj1jQtkIXQfHB
	tObSv8iacJcXNOxfZgc+oshoXG7oqOQ3HIRYpExMsSy9dA8HIG0a12zQ8dBhxjw=
X-Google-Smtp-Source: AGHT+IGOWlf1E3MK25Ig9GpguOQfG2ei5zN70UwUJJU5oIGPcT/EQOZr978PoKbxaP0b1IeYvBKH9w==
X-Received: by 2002:a05:6512:10d0:b0:52c:df51:20bc with SMTP id 2adb3069b0e04-536ad164335mr5499187e87.16.1727092065029;
        Mon, 23 Sep 2024 04:47:45 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5368704678asm3244982e87.5.2024.09.23.04.47.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2024 04:47:44 -0700 (PDT)
Date: Mon, 23 Sep 2024 14:47:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, konradybcio@kernel.org, 
	andersson@kernel.org, simona@ffwll.ch, abel.vesa@linaro.org, robdclark@gmail.com, 
	quic_abhinavk@quicinc.com, sean@poorly.run, marijn.suijten@somainline.org, 
	airlied@gmail.com, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, quic_khsieh@quicinc.com, konrad.dybcio@linaro.org, 
	quic_parellan@quicinc.com, quic_bjorande@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, quic_riteshk@quicinc.com, 
	quic_vproddut@quicinc.com
Subject: Re: [PATCH v3 5/5] drm/msm/dp: Add DisplayPort controller for SA8775P
Message-ID: <vdzxghgr3uhj36mjqnphagf2mftpsnqg3mubjo7gfiexcrdb55@6i2s7s4a4qr4>
References: <20240923113150.24711-1-quic_mukhopad@quicinc.com>
 <20240923113150.24711-6-quic_mukhopad@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240923113150.24711-6-quic_mukhopad@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240923_044747_077182_8212805C 
X-CRM114-Status: GOOD (  12.42  )
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

On Mon, Sep 23, 2024 at 05:01:50PM GMT, Soutrik Mukhopadhyay wrote:
> The Qualcomm SA8775P platform comes with 2 DisplayPort controllers
> for each mdss, having different base offsets than the previous
> SoCs. The support for all 4 DPTX have been added here, and
> validation of MDSS0 DPTX0 and DPTX1 have been conducted.

I'd prefer if there was a word 'only' in the last phrase, but I can live
without it.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


> 
> Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> ---
> v2: No change
> 
> v3: Fixed review comments from Konrad and Bjorn
> 	-Added all the necessary DPTX controllers for this platform.
> 
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
