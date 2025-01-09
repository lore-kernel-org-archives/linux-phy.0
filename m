Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AF47E77197
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jan 2025 12:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OmN3moNxKvujEF4aIc2J+uKvJ67QE5x23NdjcCAoLU8=; b=4XauPtAQKum+j1
	H1DyiXif4q+FSnh3YcrEJ21tKM0hAxq2NQnuD2o47fhIQP87Ok1T+m/70KVCZHsyLmbCexqPHTppY
	NnnUtmFEtQCNfxohytTIGlqIv/PpYxZVbTlL2iqm0YgZ6ZsZQORXAJt0dcKh59qLirGYia6ZvyuLM
	oJK1yNRkeDs4+O/HEa5/1vM6p00x65ehqLdd5s83CqfTg8aWjtGjFNBS968TBm0/WBdJLYbOFuhJl
	s+viOUdCjlxe4bz9Xu/3jkfkfY6ijelg2D3ia3MlOvnu48/KCi7GENzpQFSAqwtMA9yivyvs+yrtX
	lFxUOLADli/XhPXzx7QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVrt1-0000000BtCF-1dWY;
	Thu, 09 Jan 2025 12:43:43 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVrrb-0000000Bsvh-2Txf
	for linux-phy@lists.infradead.org;
	Thu, 09 Jan 2025 12:42:16 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-300479ca5c6so6997151fa.3
        for <linux-phy@lists.infradead.org>; Thu, 09 Jan 2025 04:42:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736426533; x=1737031333; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jSa8UzMvzUoVXnoAHj07r7u9fcSmFdWl/qcJ+OAdKWE=;
        b=buNDKL3IDNKNH/4B/iyLOWsBxka8cpsbemBJFsw3tUbo7T7UiJ0fHWHNWesZGmdmDK
         F17/oz6i7maSHYdSL7ST0G5OjDwHryWWYHi3foPtiAbTVTk6wWQRP6Nfnejng1koHViA
         wOomkIgl25LKLZAENP7QVO69FF+EnA8cn0Wh4artf1xh6oEIAw3IEtvB0K4RODJigz66
         UseKNXWTHi2nJSioGkCXy+YLFv9gvwk0a4DLU6PONmAuJgEtG0iHczSFtK4KDbuuQRmg
         OoVVWOiri4/uScQ34k5CnMx//DVKdEfa+b6CKFvdMudfqnc+HGt+cKAnSvT/IGtlUF7Z
         lB4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736426533; x=1737031333;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jSa8UzMvzUoVXnoAHj07r7u9fcSmFdWl/qcJ+OAdKWE=;
        b=JTZrH67tyiire+v6DG57D8pewN0FN9fl5qZd8UgSj3MNL1HLDuFAzYnK1wfduiU4yA
         9FyIRx1fUbpgtzvCZS1fORyFezsEYitGQYSTjRkyL0/GUAn8fDMDvLVIGlJBYX/Gb/F1
         PdevA/sQv4vPBKGv71RKS7QXiQQY8yCEO0pCAl7uofFQ9zzqXx17iNubJHHM4/7zNwn2
         LaRsdflWXdnBLPiH/YkvWCDDCwszGXihWYhhOGbSKAo3am14NufZTJm9mgqxjWatdqZ3
         /6IuXpBlvYC9Bap+lErzJqMhuVHChbdJulP7/JnFP2CcPCBmjKe3Iwa/Iija2xB8GaWu
         eNHA==
X-Forwarded-Encrypted: i=1; AJvYcCUUOkEnCj2jNFPfHgiw2hqIA77vNWqVZdeODIlBMDun6cFsrpeTWswo2AFMRzxrqPgl7S3nIXzeiSI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzMnSi/EGDu64773OwgvOI/sTPo7fPO8sPDexGA8rrh8G8X4toV
	OpOdWDalcf713BUEQPKsxxdyn5qBI05wxcQfNs7iOURuydBA9BYtSVeamVy3YCo=
X-Gm-Gg: ASbGncuypIIJ34YpIL0eu2TjOuwTiKJ0tm7ynHK4SrA2afaMM/8chN6Ttni7vPdfHRj
	RMFngmkt431NvFMgecHR1QzSFrq2EmfxXWBCR5tB/xFW+MyjbdCH0xiWMSbdWhtdCtm8Us7LatO
	Mol+SM0yIYSS6Q8/LmYiT0Z64efOezzfCPBF+oQ9DSv3yYz664W6FjSI88sWrzGypsxwDyxc+Op
	s2lkbOzD9Alb9yr1CuyXoKTWdI9PVUILm3rhv7rlIwmFiWswW9Gj5Cm/847noJYU8om63R1luup
	e9XRnRNv8J5MOaujrp7MyYaJE/q33r7zqcQe
X-Google-Smtp-Source: AGHT+IE1P1UCOivFTvYWWTS/q4LjMLHD5zB9iByIGL1otwhnL6V5dvTRWi82T/q6jI3Oss5lknekTg==
X-Received: by 2002:a05:651c:50a:b0:302:1fce:392e with SMTP id 38308e7fff4ca-305f45e7f69mr24518741fa.25.1736426533394;
        Thu, 09 Jan 2025 04:42:13 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428becb309sm185975e87.253.2025.01.09.04.42.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 04:42:12 -0800 (PST)
Date: Thu, 9 Jan 2025 14:42:09 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 10/20] drm/bridge: analogix_dp: support to get
 &analogix_dp_device.plat_data and &analogix_dp_device.aux
Message-ID: <woyxxwpwuicp7enqkwbquuwpknftc4exkui3wlmkvjcohb3yhj@iv3adwzot534>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-11-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250109032725.1102465-11-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_044215_628682_B7D2681D 
X-CRM114-Status: GOOD (  10.60  )
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

On Thu, Jan 09, 2025 at 11:27:15AM +0800, Damon Ding wrote:
> Add two new functions: one to find &analogix_dp_device.plat_data via
> &drm_dp_aux, and the other to get &analogix_dp_device.aux. Both of them
> serve for the function of getting panel from DP AUX bus, which is why
> they are included in a single commit.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 14 ++++++++++++++
>  include/drm/bridge/analogix_dp.h                   |  4 ++++
>  2 files changed, 18 insertions(+)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
