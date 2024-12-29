Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42F89E7718B
	for <linux-phy@archiver.kernel.org>; Sun, 29 Dec 2024 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=op+lt/1ZRyDQbsfumZmuTp8PbgtMgGm6SEBs2wE4Z1c=; b=MFsRe3M3MJCQ2R
	m2OLrqEnGFhgxsws8EVFNyLIa3wITgX/OlZdUX4MnY8/Nt070pYA/QTAGOCnEdMFMHe2QUz6uG2rT
	fDQH9Cd63gTZ6GgL7NVkibm2Xsp6D8ruF9LuNCp2eWP5pG399Qlx0MO3Tq4vtGl3QFxO7cRk1awon
	5L+gMbtvPZZhOHHK/pw8yE55/G59mtY+6ugkwZHNdy2mP0FM2VD94HFe3+dQg2xiZf1nAirUXg7ld
	/nZqjRuYD0iS8RuYo5BkSFhCQx4qRNKroX+/h7x/ooYwzRRMUcoPm280biNEgyunh+SCrg17wo8rN
	8Et0rDN9vJBXXax9lsRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRlE8-00000002qQd-49eY;
	Sun, 29 Dec 2024 04:48:32 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRlE7-00000002qPX-0bLO
	for linux-phy@lists.infradead.org;
	Sun, 29 Dec 2024 04:48:32 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-3003e203acaso86043511fa.1
        for <linux-phy@lists.infradead.org>; Sat, 28 Dec 2024 20:48:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735447709; x=1736052509; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kmRmow4ij1wj8NxR26ZZrxr/RgEq3MZKXl2c41wGPBg=;
        b=df5sXKv5EdBX0Wm49waYUMeoAbPe+IezdV6BWlbD7OX6I0BT5IdKdnUD522SXkH12t
         MEVaZFE3LCLEMHEKaX2lEcKXqg9ZsovEg1V6ULI3Y+a1LgxKK7D0q4RuIusoN9DbF3eC
         tf3GMfYdG2FoBV295MHS/VzHSuGPItGDQfss9P1rKOfC8nlA5AyjnNFFZDqtnaz8y71e
         cFcs8AQEBh9UR+tUqGoGSZ67MTZfKj/UfeIjWB1j5JPHsB238PIJdVKDYYA3FTNX+U9E
         bDlIDXO8QUg4J+Ja6ZjN9ycTCCkPlqYTIrs3NneqRTd3U2bu4eWEjMrQ6IZFz6mlxlS6
         Az8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735447709; x=1736052509;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kmRmow4ij1wj8NxR26ZZrxr/RgEq3MZKXl2c41wGPBg=;
        b=D6ApF4QGSvhZxmYMIBsznC+b0AkJAHcg0UY8jfEtY52UGbFeQufPQaYwHQe5D5zA6D
         LTL/MjTOpGZXzXDEfLOMiRuZ1KnbLa27u9qMUuR4EniKe4AwoKVPC0V4ywPNfGgE42zg
         1+90gDSycPZ+vosahgYrX7QPqrEGw0cnaCJZa7wMDX2AZg1Jm2/+pemdaAysYfRr6OBh
         iPDXf5IYSwpng17BAhBpt5lRBoGV0g0voW9YKl/Cx3iTj4x60xfeh5Cc71iv3huuo+dA
         yFEkTkhWssagofjFPRWamX5UV78NcnRZuq/ogycG4eS/l0GyUnBbEIdWYnAJuE7pt2en
         k0aA==
X-Forwarded-Encrypted: i=1; AJvYcCVeul9gsg7uqyt6qXLvu8H8Xp6Cr23HQktxTi2IfTmuE+xPBy5RmNpK7/XhU8eCx4hPGIGd6Xc4N4I=@lists.infradead.org
X-Gm-Message-State: AOJu0YwXYdjUSInHvLybVcw/PE0os8aQZsiQqgNM+hCuphCjNjE825tL
	2hnmm0Ii3Aj9Ye4TetCSlPdVzodUIhOFAPZQlVNogd+tA0W/Jiz9tp4qQAN6dkU=
X-Gm-Gg: ASbGncvGFCRBFi51nIMWo1mWHLifHp1Huk5vEOn5TViKWK7HMMUopHs59Hh3eJjZ5za
	DyECrIr3Q/aWqx1S+BjjpZJisnYpSdD3LuWbEB0GvqUlenUK3YmIN/kO3ZXNCjehCg5a52ooOl4
	ciVLaAbW11nWU60p1fISu3hTHURhRFREIomBOVlBvSB0ac7DDHyjMxTeGptvE72xIgerW6lhJRp
	UORchrLHKDXKvMPQS684JDvwgVjfIDfF7NU564UIl4gTyVY0gO59xTIEsEYAXUUcPHVeJpszGNj
	sPeo2EnzRRETeHlXdAH4/V1oawLy8LZ/lBKT
X-Google-Smtp-Source: AGHT+IFLdOShLFUrgmFocbWkVBhAX2agF1zyEDdRzkJIIIUTfHxFHK7o41L90uicbnh2u3edwxhOVQ==
X-Received: by 2002:a05:651c:50a:b0:300:3a15:8f2a with SMTP id 38308e7fff4ca-30468503587mr106112501fa.2.1735447709482;
        Sat, 28 Dec 2024 20:48:29 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045adac821sm30924381fa.59.2024.12.28.20.48.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Dec 2024 20:48:28 -0800 (PST)
Date: Sun, 29 Dec 2024 06:48:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 09/17] drm/bridge: analogix_dp: Add support for phy
 configuration.
Message-ID: <nqbcp4wwvzxh7qpvlobt3mw7clj22bmq72xsaw7sbzfj3dpyll@u5mq5ciijse2>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-10-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-10-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241228_204831_197777_033953B9 
X-CRM114-Status: GOOD (  11.26  )
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

On Thu, Dec 26, 2024 at 02:33:05PM +0800, Damon Ding wrote:
> Add support to configurate link rate, lane count, voltage swing and
> pre-emphasis with phy_configure(). It is helpful in application scenarios
> where analogix controller is mixed with the phy of other vendors.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - remove needless assignments for phy_configure()
> - remove unnecessary changes for phy_power_on()/phy_power_off()
> 
> Changes in v4:
> - remove unnecessary &phy_configure_opts_dp.lanes assignments in
>   analogix_dp_set_link_bandwidth()
> - remove needless &phy_configure_opts_dp.lanes and
>   &phy_configure_opts_dp.link_rate assignments in
>   analogix_dp_set_lane_link_training()
> ---
>  .../drm/bridge/analogix/analogix_dp_core.c    |  1 +
>  .../gpu/drm/bridge/analogix/analogix_dp_reg.c | 52 +++++++++++++++++++
>  2 files changed, 53 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
