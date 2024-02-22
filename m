Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4C38C48BF8
	for <linux-phy@archiver.kernel.org>; Thu, 22 Feb 2024 21:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0GT+s3YvdoRhbCLHnhRv9R5KjAdxTpQZYHEiOtx9Eag=; b=omWkFF97uL5T1w
	zHgYhEwswSgTgAa1SFIpg8fvFlzaRRWykEc4yk6HEqedWQaTv8ixFWcZ0UuYhmH8WQpfdkSYFRgOA
	YIj1AYlB7jynup1/sy7xTOOZBTAENas+Nj9CgYlLM3H0lhrLYFLLS5r0ls6bRHf3CkOV4AGIaUWq9
	pW60SUDX4U53AHDrDCvMZWPl+BTAx/F2g3AILCBgvY6j4pMCSOJMy6KAc7nI1TS/nG7HE54e5n6IB
	wuFWwYjXCXWco3pUlSyjArl6AQuizm3hQPTT4YenNh2Fjuzk8sbYkUWxcGHf8hdTSs7Foe71HvA+T
	9AOXrBcG5olQrmOVq4aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdGB5-00000006aHJ-2U5W;
	Thu, 22 Feb 2024 21:00:23 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdGB2-00000006aFz-3fvm
	for linux-phy@lists.infradead.org;
	Thu, 22 Feb 2024 21:00:22 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-dbed0710c74so140672276.1
        for <linux-phy@lists.infradead.org>; Thu, 22 Feb 2024 13:00:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708635619; x=1709240419; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dmvjj7fhOobzTivUlelD//oyOg39L8TaqEJkHM6CbjU=;
        b=cqbo1PbaG8NDK/tuYNUmT9lrqhwdK7aIq0Aqu9XfP6+u5ewRCVz5lWWeemQRxfNBIh
         VCejbTE6rWojh3q6kXBD67zlmfeyfTNP5BCIaQpELdlzZJKI0XO74y49AK3MofDgpgCs
         A5zJC0TUGGR3u/qNeBZUVmlBltyhiYWjNzk+/cSxjJL6+oDzuu/N4T1VSD1NXa3G2ngq
         dbIE59bjLGJ02wXWxyefVGxe2NbhqXVP1aN3j+TeKKLq51T3hD8cjp91+dclOrSgUjXm
         Z908lkdRE2WG9q+YL0Gq+pXSbeVbVKJQObMu+da5/tFf5BayJfuwCUORwdTUmEqDhYUr
         aSsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708635619; x=1709240419;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dmvjj7fhOobzTivUlelD//oyOg39L8TaqEJkHM6CbjU=;
        b=JZGpyhaJLQGzdosIt0Yg03/Tqc4fEmqckHVCOh/Bad47B5YSP9nb80VASiNB22bdlX
         QEIBDB9H1jgFMJlzbDucftDDBbsMKNieCEYly0Lhb0Ipd/ymp8jh8/jxTpIV4uht+yyt
         l8odTmbNab6BUftjKkPD0mvKrKvh7BKOx7/rTlH9Qc6ZQwGI00xgfovj59qcHWqBdGgv
         lTIgdMcpJKuzjoXwBEOcm474l8l6cPbmjUfB6LcPLHasVqk9Tcq3XzdEGjzpx6yr+BN4
         8ZswjKn34qWsh/l98lnmNuWTns7uN4P9Mq5tXPGthgwwC5Z5PCkHdbsiDZU/luhyX/rs
         w1MQ==
X-Forwarded-Encrypted: i=1; AJvYcCUhSoJ1hLtew7nzRYr6v2WdQc0lBCjSUPU2Hshjr/gpZaSgxCWFmY8gscls3c0zDv8a5obFN1mRLA1v7hTElxQSKk808Pdo1uJgbT1z4Q==
X-Gm-Message-State: AOJu0Ywz6cAOmvsWV+l7bxU9MjVvzXGZHVpxH627uBdk2md1y1BagYQs
	pld1hd7t559KnPbxOq5OVj9fZwC8ON0MhMJ70jL7qccGJhYS9HXw9Tm5+c/abS9DvxyEnjNBjO0
	UsGfOU2smQUN05E7gHTWkJz//mHQ1jzfg7BtHog==
X-Google-Smtp-Source: AGHT+IFdnFEXZ/1Ob2Rd+e7Qs1/dnY3m9z+vfb8chmIF2GjOTnC5mGKNn2WgjovOSKHSnuhiBw7HcB/7y1Jd6eekJXs=
X-Received: by 2002:a5b:d05:0:b0:dcc:8aaa:3ed3 with SMTP id
 y5-20020a5b0d05000000b00dcc8aaa3ed3mr303376ybp.16.1708635619664; Thu, 22 Feb
 2024 13:00:19 -0800 (PST)
MIME-Version: 1.0
References: <20240217150228.5788-1-johan+linaro@kernel.org> <20240217150228.5788-2-johan+linaro@kernel.org>
In-Reply-To: <20240217150228.5788-2-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 22 Feb 2024 23:00:08 +0200
Message-ID: <CAA8EJprBs8ASwZMAHFMQUEg7NN67rzRtUX--8h72-7F9R_=o6Q@mail.gmail.com>
Subject: Re: [PATCH 1/6] drm/bridge: aux-hpd: fix OF node leaks
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Vinod Koul <vkoul@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_130020_940191_5DE7F109 
X-CRM114-Status: UNSURE (   9.05  )
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

On Sat, 17 Feb 2024 at 17:03, Johan Hovold <johan+linaro@kernel.org> wrote:
>
> The two device node references taken during allocation need to be
> dropped when the auxiliary device is freed.
>
> Fixes: 6914968a0b52 ("drm/bridge: properly refcount DT nodes in aux bridge drivers")
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/gpu/drm/bridge/aux-hpd-bridge.c | 3 +++
>  1 file changed, 3 insertions(+)


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
