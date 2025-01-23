Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34AB1C0218C
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jan 2025 11:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7aECRIDWFAjXNH/WZIZ6iSfRS3iIu451N28KKgREiMc=; b=kGjysK8mhGcL9e
	aAJ/4QxKV/U9HfbA6IMr0aIxwgJSxBkDJMRTsbkH4iGWLqMRp8UMrgAQHSckN7qqUD3y9kbtF21Xo
	hoqqf9Dds5G2pmNpI4wlYr2Oiqp8jz9SMLpq9k9ualxFurSR5PAeED6TfMpnoaRdtuFVlgKRU51oD
	MBlLe4iS+Ng6mr/zxAy0Lzn8ctstb/iu7jM2hUqCRx3tJb5HgZ3nZ6SGiBbTQWy43awoCHX8N4ugN
	zhvpxO5gsgagaowf8UT9lwcWWp+Aasv2nhHbD4BdpKx7Qb98r1hsNKVlSmyKBzkH9sgfgFjMVHUaj
	zOjmSfc+fB7jCqIEd1VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tavP4-0000000CKTz-41jb;
	Thu, 23 Jan 2025 11:29:42 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tavP2-0000000CKSI-2H7t
	for linux-phy@lists.infradead.org;
	Thu, 23 Jan 2025 11:29:42 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-5401c52000dso839049e87.3
        for <linux-phy@lists.infradead.org>; Thu, 23 Jan 2025 03:29:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737631779; x=1738236579; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ywUpj3PvGs7O6YC27wxHtXRfoNnEiXLhmb6FDXD8qK8=;
        b=womIQ3GEQHk4zmZST5qmfjIOR/a/m3+zlu/o5zxUIBrCq6g3r1faRzfnEzwpbcKoM8
         8EBpPSmLqxBPM+HT2I/WaZN1pir/gJkKJdeG8tUatxIMFCnPT0mM67f00jLI1cml6WtF
         Uu6J6AlxH64AKCF0k2CDCKIhpi0ysf90Gy5pdB0diH5fzQHqezEOYcoaswB90thdNzBp
         1rWPWt+JW/wuO4yd74um4J5GgNK+4Edm7omfRo5gX9PQuOZPB7UUpBW1ER3F8zRQYJbl
         gjCZxO3yGjK08tiebtCHtcHvv/sKszUMi6qx08YbinIc4w1H5To6UG92jSneXeFr1VPr
         +k2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737631779; x=1738236579;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ywUpj3PvGs7O6YC27wxHtXRfoNnEiXLhmb6FDXD8qK8=;
        b=QZOJ2pXe7FPgLKUoVH1fDPdgaenMWXv0BML9EN/2BvqluENhH8+QBOEQK8KJ7zux/J
         FyJpqGMYvKDof2TpENZBTIquYoYZmuZR7SkskLm8AdsNeB1GpKE240yns5CJ1UpIZdiU
         i2D3ZcDzqZWJvGPRwBgxdCa+1SjSx3D0WDV7mH5782CGpJYj7LiKOCXiZgA0zjoIQ1dV
         BQq3tGEQYptpL8dlNDDAzYAzAlMVYJNDMDr7NPVxjV4CwKlCwYe4HVaPfF9vfyZRvrvT
         bYZgm5+H9O+BzjT18XLfF16BzBQZxlCcd+depXuq8Y15WS+0RrDytVab0LpYTFQq3mIV
         rxSg==
X-Forwarded-Encrypted: i=1; AJvYcCUd2H1ef6KqujXvCVJliVnrjic2XXqmTF8bO3zFZTORabrvAeKy1UKwwehuJl4xtNuiQvlhf2otAfU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwEK56k6FhGl2yP9HDthd1Kq7uNe2LmeyCAYvutrJD+yNlZ4xfW
	Tzdm+nN8J8G4Qx2XGiyckPwFqocEjxTfR79SK4XUcA2FjSCevLwfEBACfZCb5y4=
X-Gm-Gg: ASbGncsPxjDSHEap4b+//ybu1SvgTkLOxmtZUL/RL8XRuEyRUskUie3uc7xMunmVdnq
	9Jg/iHxhvYhpqT+za2CPypug5p2V8fcC/yZLTsO7GjV1+voWMjnkaazRW3i9/ltmUaXvZ2irFRA
	Pj6OjwnMHbai6c1CDMCcEmy0AK8n+LeY8mDZuLmSDWNXKH1ljRFa3hcvSbhF44EX5JwW+frqC5b
	wDENaT97bfUJ+RND79hKJVygTvocnX7fqOj+Q/6iJLHHpZQndrEZHHT/7wyaYhJmrbE7cVVKsq6
	gI1Z3qTaIMTVopJ/+OyyIM5Lzn4qaMHz0yIfvwvRMSO/NqqIKr3N+61rEw1S
X-Google-Smtp-Source: AGHT+IH/IRIwigEV36zPfTMvutci/xM95ud1AjoiE5XvAxHbcLlm2/4wSeaGwe0S+EmSvBufcEVLsw==
X-Received: by 2002:a05:6512:2346:b0:542:297f:4f64 with SMTP id 2adb3069b0e04-5439c280a83mr10948852e87.43.1737631778565;
        Thu, 23 Jan 2025 03:29:38 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543bae0ba76sm771974e87.8.2025.01.23.03.29.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2025 03:29:38 -0800 (PST)
Date: Thu, 23 Jan 2025 13:29:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v6 11/14] drm/rockchip: analogix_dp: Add support for
 RK3588
Message-ID: <k4hno2c46ys3unusw4emhkevp3yezhtgyy566vfyfju3efyei2@twict2pypjug>
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-12-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250123100747.1841357-12-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_032940_571996_70EC8791 
X-CRM114-Status: GOOD (  12.12  )
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

On Thu, Jan 23, 2025 at 06:07:44PM +0800, Damon Ding wrote:
> RK3588 integrates the Analogix eDP 1.3 TX controller IP and the HDMI/eDP
> TX Combo PHY based on a Samsung IP block. There are also two independent
> eDP display interface with different address on RK3588 Soc.
> 
> The patch currently adds only the basic support, specifically RGB output
> up to 4K@60Hz, without the tests for audio, PSR and other eDP 1.3 specific
> features.
> 
> In additon, the above Analogix IP has always been utilized as eDP on
> Rockchip platform, despite its capability to also support the DP v1.2.
> Therefore, the newly added logs will contain the term 'edp' rather than
> 'dp'. And the newly added 'apb' reset control is to ensure the APB bus
> of eDP controller works well on the RK3588 SoC.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
