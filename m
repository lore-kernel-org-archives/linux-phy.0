Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC62BE77194
	for <linux-phy@archiver.kernel.org>; Mon, 30 Dec 2024 12:46:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=whbhGPKKWUzrmwPUyiGuyz7xrKssdc7LD4ZiS08gXTg=; b=o17VKZWx1WEWOZ
	2J8LZyte18HG37lpdMN619hQ0ZtKXk3fy6QqFGt+MKZZo5b6LsySnb7LujeYDFr5sIT0dms9EnLhs
	j6lrKupoQVtpErBTkSwXx9d+bXyozDEkjaMIjh2mjyMVPHpIDCmxld+RrLd4kd9h5HPrUiDArfqGI
	u8upKrsw+F+Wf1VuKNWeiWe9sLVXCv41kg5EJMkM4fQo3b6Sk1DCgs/hYquSVIEEkYRd7UEo+cp7v
	E3ZdrVhYXi/p6x7qIMTOsVBq1aqLLGYwhK5Bw5B3cqLKZqjIcJryq992QwGlCe2Q1Y4FjJG01y1UB
	1FqnSf1LyRaCjEPYbszA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSFAW-00000005Cws-1x6Z;
	Mon, 30 Dec 2024 12:46:48 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSF9g-00000005CjD-3Ios
	for linux-phy@lists.infradead.org;
	Mon, 30 Dec 2024 12:45:57 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-30227c56b11so106918821fa.3
        for <linux-phy@lists.infradead.org>; Mon, 30 Dec 2024 04:45:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735562755; x=1736167555; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wR+rDjRYRPZhYRjSFOwWeCZzooZ4kP9UqFam3k443z8=;
        b=gFJ0Rr6F+KzhxK4sIP1VsOW/CbaeQJU/xOtiOprNdoprr+eEsfpuMX3n/Q/ypTBM0+
         Kq81v9hWhjmeQB8vQPO6kupcKVs03v+v17hIUjU908BAaoZCoviBpRlT747jNvfXilYY
         VFvVxso/gdwLX4MtX/w97bgZLN41QfoFmsGYBnvzFjIxOpblxMsLPQD/xFwnJcIcS2HB
         aGvFkpQUBaIs/MUrIhEmCaX5iTETu/ZmoaJlEUQ5B+ywFek9vsgIdQLxGJUSFs2+gNar
         DWsUu2b6Mu9v7pMcXN/V4rDsDAD7p0sg3N/ZTIyS4WK+dxnMpgvC1M6Av+Qb204HVv+F
         T89A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735562755; x=1736167555;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wR+rDjRYRPZhYRjSFOwWeCZzooZ4kP9UqFam3k443z8=;
        b=g4J6HPOpYAHDFBISQb4fNPWLkxO6KGq4a8BCrkuS2qfQXJRQXbId8Kl1AuFd9FhAyg
         Lx4xd9pOmpB0UtvbT/L5IdJuhgWCueZ1H8luhuHSgwhVg8io4tcXQwEgcsN0C+wusu0s
         rDII/7s1UDFAsMjTr0p8AgUV+som3Of09c+PoXSzY5f7Qzo/XADLSm2Kg9Ba1ksxNB2l
         PAX2O+nCIXcm2zG4Ghn0OfI5HhIsNnk1PtFDVw/xNAdCvhsonQ6HTdzjAPyQ3pc5DS7d
         MlUO3OTprOI2WYfnHMwHRcUr6DEJyEmwNkD4aK9naM+FVvl40/8hVNL5BPnCSYLmKxch
         kBPw==
X-Forwarded-Encrypted: i=1; AJvYcCXBC826TATqAZxEHFPVkhPGs6FmfSaR6zohm6IF1T5ltMuYFoAn+kGxqSlNPmoGiCpmJhVzSJEHhbA=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywtuv9ydi9IS8JlTOfgkm8V0bOZkb0+HJIWLB36VB290iPtDppe
	1eHEy8h2pEgCOGGUUlYqwES7udyir5PSRZMdIR2kprF8APNTGgEtDEMMW6TxCu0=
X-Gm-Gg: ASbGncuUFRmhNz+HLQevXbROrru7TtOvGaw0fKU4Zj9N+TSV/EZd8cEJwx/5oSsoN+w
	erj8hy8Q/mVhdL8Yux/yPlBkgl7Rf+ZtEnvSInQnhTlj/JnS2W32H7xEz0QQBgbwzEnkxja2Xbc
	oPdXAhZPpzH5PLUIyU3o2fZHvnrYZCD9VJbpkh2XVzBNSuR8DZS0kTpRQivbmbHIb/LKI5+P3kA
	b5Z5apK0kOTSqVYxtLqTjvqhqHGFui3vjLs2B67Zvg3QOe9gNpgY+g9wy/a4rdsjW/wMC5kqVG5
	m9bo6DK7q1evqFYcNNJ3gT4yO/v6gLJzKEj/
X-Google-Smtp-Source: AGHT+IGQKU2FvLR9cA2rX0pjCPif1JwZJgsXfRJ7/tnNeUSB87XImquoxTJIlGTComk+jVqCQS1kGw==
X-Received: by 2002:a05:651c:50d:b0:300:3de4:ff57 with SMTP id 38308e7fff4ca-304685f2d61mr135629341fa.26.1735562754937;
        Mon, 30 Dec 2024 04:45:54 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54244e19cdbsm1240805e87.132.2024.12.30.04.45.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:45:53 -0800 (PST)
Date: Mon, 30 Dec 2024 14:45:51 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 08/17] drm/bridge: analogix_dp: Add support for RK3588
Message-ID: <n7xgy6v7txz56ew3mcinwhnln4jxar5uxtogs3om36ft2y4wz4@ln2uqsfaszbi>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-9-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-9-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_044556_824978_1576ADB1 
X-CRM114-Status: UNSURE (   9.71  )
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

On Thu, Dec 26, 2024 at 02:33:04PM +0800, Damon Ding wrote:
> Add max_link_rate and max_lane_count configs for RK3588.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
