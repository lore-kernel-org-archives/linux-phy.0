Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95C7EE77194
	for <linux-phy@archiver.kernel.org>; Mon, 30 Dec 2024 12:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2jm/lwqLFlnW+zWSBNFC85ovrGH+/hjOwB5+zY2sHlI=; b=F8ozJLGhAy6LSj
	Nk6KnNjRe3VNCnTLdHF1+jCI4WejYCdWF9MWRTiyViyykYOA6CBMIlhAiqO3nokq3rabRUY8XFajK
	BZlxE+oTRhMY6k+cnxqkMQoag5WJBa+dhYL02N998BGnrEi3G9KdllbLDO0Z4vx4oLPUMJP89BVC4
	HQSY/LHgvZO4+cvq2T6KGtEEQhhEC8pg6kbvE6F7FhiMoa5UHlBS51i91RRx2klIvUPAF2RzoX0Jt
	1Tyah9NxGTNNNgsswbsarrWIYH5NNElObf5DDlgRaLIyf0SubCOd2Wn9WZCsBfgTyAGF7M+ke2Bsc
	1kUjzP82ncLt13lB+2uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSEzm-00000005Bmm-1ROV;
	Mon, 30 Dec 2024 12:35:42 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSEyr-00000005BbN-1pDi
	for linux-phy@lists.infradead.org;
	Mon, 30 Dec 2024 12:34:46 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-3003d7ca01cso99226561fa.0
        for <linux-phy@lists.infradead.org>; Mon, 30 Dec 2024 04:34:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735562084; x=1736166884; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YjXNF8u6gFmP3bof4Qnz0c0Cqvunc1cPgbGWTZ/EO4s=;
        b=A4dofS8NBQWmzqBqfys0G9I8MmB4opmha9pP6qleN3I0c8Cb2RgIdBpu2hKqXxY/az
         hBl4LN8YVuoCc0HZNYH64RxVxasJU77vn0UFBdqmeXLiss2WHtQzPPfOv4rVcc2b5DDR
         qbDgK+7eVbdzHuN/Fx3eUvi9s7QBpckSr9rdRa7glQbha1rJbnyHGk41QZSK40zIksvx
         0cZ3t/SjbtNXUUgM/B+cZFI23IMu9cvo3lteCs0De6/ohkH4NXZrn/UXGci70vrk89ie
         CfnWVdKypIKF7BrB/C9gn3q885B0W9Di8xJC+O6Gqr97/+qUGRv1ciHiXpQhAfk+UxJB
         JYWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735562084; x=1736166884;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YjXNF8u6gFmP3bof4Qnz0c0Cqvunc1cPgbGWTZ/EO4s=;
        b=ENd+WFRbDrM9R++2VOdYDsbjSEbNh/S+H5BsZ/P5/VoEcNR80QTdSNTE3vH7+j215A
         vILDNGG943f3N5INOD1hsI9AfeZxIagAft8C/bSDNeIFsn15Oa9btrFOTbRciKduirMj
         56MJ5DrZ/eGyVa7GIfdNQFzxKFgcOfn5j1Z8zbKl3jlHiwRQDkolDYIGrJPNuR3qmvIA
         xZ3/s0m07Recg/NFnyhsuSA0kWexpAmHoBpcAPlEJeKfyTzoz33eEW7Tj5ZwMwT2twTs
         H01Cx5QSdMSNFC0Ho1vCPiWjPgGxztonL2/IyzGQWEM83KLKA+5hAJP5NoAENbvD1Dus
         sUFA==
X-Forwarded-Encrypted: i=1; AJvYcCX85ltc8aw1frIxmfO2MraGGHNP+qlmwb+ZAg9jz0wb0DTc2UVDe+DcKTwCzzucC++Bhbm80Gf/X5Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9IKnwfN7zWouiIli5szuPMFwQ7q7EKs4uQ4X760O7Z0tiXD/e
	4lNKDAUIfqMtUQmuE3KCzZsKS8UhOQ3bqE5RqqPoJwY47cdtlPt9H4VFp77sXjM=
X-Gm-Gg: ASbGncs3izDFE86uovCRHfW5J8HrDNb8g1+p+3RlBehhsDSobCnxGbxTu1DPjh3eKRu
	LMs12wcBkKq6K/II9XOuPYZkWlRMF67ar5MkEUHKypNVTI2e+p+Wu4Vd0zmnivfs7XseG8FaR+S
	DoJhsH2mW2ed8i8HP1mVDLRSYhGqomYMp37TDHj1iygqrX5DjT72lX42mXGvjR1sS8mYWMcHvCa
	xy+YssD2U5zcPCE7tVLtGRb7mHModWNx3heZ0yWMlOoPF3CqsgPNT7nwh5/wpL6tFsWSFqMX+32
	7rvT4bzX9nubYcvy+RoEPX3OwJWCyMKyvJUD
X-Google-Smtp-Source: AGHT+IGALgVEuR6VwAjmraqK3t5VKz84isdY66XsU2c6gkzu6ybhJpLRqnsbX8hjceGwE1pfjHVNsQ==
X-Received: by 2002:a2e:a69f:0:b0:300:377d:2c36 with SMTP id 38308e7fff4ca-30468630934mr83167351fa.40.1735562082309;
        Mon, 30 Dec 2024 04:34:42 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045ad9bbdesm34304741fa.44.2024.12.30.04.34.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:34:41 -0800 (PST)
Date: Mon, 30 Dec 2024 14:34:38 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 06/17] phy: phy-rockchip-samsung-hdptx: Add the
 '_MASK' suffix to all registers
Message-ID: <3dgfsscqpvlqzajjeav6oneeyae2tpc46av7hadgon5uwqibg5@ubziqwztp62m>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-7-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-7-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_043445_501496_0192E641 
X-CRM114-Status: UNSURE (   8.20  )
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

On Thu, Dec 26, 2024 at 02:33:02PM +0800, Damon Ding wrote:
> Adding the '_MASK' suffix to all registers ensures consistency in the
> naming convention for register macros throughout the file.

Nit: usually it would be "Add the '_MASK' suffix [...] in order to
ensure consistency [...]".

> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
