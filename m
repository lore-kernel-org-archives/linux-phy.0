Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6F4EC5478C
	for <linux-phy@archiver.kernel.org>; Thu, 22 Feb 2024 21:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9AMKj1ky6kog1FQxuhRnkoZgB6zN0BJ6J6YX2BRF2w8=; b=wioF7b2IDvUo4i
	GIrcUm0ptIalecxo0voIB07dUs19sb/cIWZ5cTneTAEPg9Eu5WBpZrt3K6UQ3T0LxJejAdRj4cy+5
	eI+Eq0o+c+vvelhSuZPiQdCN/ccI243BwU+1fHjIkq/M5n4CjQ9DXm2B8tste3xGNJeAkWs91qS+s
	Un0Ba6sw7rugWoWI11fZMsb/3IY94gfnYf8cwtiW7Xb/PRGEZfd/ejNWanP5ckgw8puNxBqNGjLB8
	/22S3MF1WdcrVmytDMZirVdoHMUqzzn8hJSwFQ9g9sWrBf1c9I1MoesTUki6euscz2ZJlvscPlFv7
	D1DVjgOvFCrr1Hs0TLzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdGLw-00000006bt0-1X0r;
	Thu, 22 Feb 2024 21:11:36 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdGLr-00000006bq0-0qXx
	for linux-phy@lists.infradead.org;
	Thu, 22 Feb 2024 21:11:35 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-6084e809788so11221637b3.1
        for <linux-phy@lists.infradead.org>; Thu, 22 Feb 2024 13:11:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708636289; x=1709241089; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6LQ9AKd6x9Ppr8V8DrGvzfthJpW9UNBDUhPwgck2Wa8=;
        b=hOc3cp1AAvpqFU5En0iwipnvuidBY6YX8iuIg+wejYFlFtZ4782Rn6gr82M8e/t7uQ
         RjqDxjCkzSbayy4Ag28WCSV0AM8y5fdbB9CclpKeNYEZ3/5d/nF5LR8k7M2pzBpmRdOB
         bQh0/aVZQHOZf+Nzi13XNv+5mRMu/Uugz2d5KOEF5jLGO5rR9z+TvFL2x4biX/APVzyC
         PrtU4oRbSNpk/V+Qo/PQ6WmMr+ZO0vDB3lQsQr6TtkCAF0522v/MPMs2G9QNDNBDxHpm
         Qf38zbSw+QDJca28qOeOMc9xC6UdbV9rkbwXeEay6249TrKtQBrIKAc8QJOjHkD5fZzH
         jB4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708636289; x=1709241089;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6LQ9AKd6x9Ppr8V8DrGvzfthJpW9UNBDUhPwgck2Wa8=;
        b=ZX/KupCvwptnuybze7NhVdGFoO2eXjGoWrqq1R8bwlqHC7tsqJjB5Rg/kOkfyiJlfK
         PC0k7aKKehEpiPIpPXpNA6Jlx14RQrCn8P5a+rY08UaO/hCDo1Zp3iwEeBURNMT071vx
         Wq13vDpEorCh7u12xo/FU03O0X6lCX9TBh91JupFbzIxuwHigfS96xGkchU50zEK8Gf7
         hx1h0ghsXa6eIJ8Laz53yiN3VyTbsqZjcdxWLcpdpzLYCxMUWwBa7YXQ1xG5EI7knppE
         80ILWWHNk4V3r5x/WaQ24zuTzfQRsqtFwvYtSBim96hnLpnUM8p3dQxrcqUVsU59kr4i
         avnQ==
X-Forwarded-Encrypted: i=1; AJvYcCXMiCUuR6qKs4MooKEZlMH5+HLNxsEhsEHR/6KH06BBMfHpbwxu8PupOApc+X6QgwKMMYZlqGtOT9nQPcW9xsdoiyovONRikXbIeb+xkQ==
X-Gm-Message-State: AOJu0YxqimLFIhvFwKMscsoPeCzoUyxc4P3bFJKYrITPI+sNBTgIt7x0
	FTsrkJ8P302bVHQR1QAsow6C8sjYnSrJ8MyK/tRzgbqRULGtqsdu3HhDpFvj0fjL70Hqlcj0Q3I
	8gyM5fcr6BlDrGm1/NB0VpRa4mnrXEeQdGrGTUA==
X-Google-Smtp-Source: AGHT+IGr40bVHUaWXhi2S3xmL6UJgO5Qya3+KW1Y3uj1TASqY4EfBpznUda1BUrj++1QaDRzC2B4Zta0+WKsL88FVd8=
X-Received: by 2002:a81:451a:0:b0:608:821a:15e1 with SMTP id
 s26-20020a81451a000000b00608821a15e1mr146315ywa.9.1708636289156; Thu, 22 Feb
 2024 13:11:29 -0800 (PST)
MIME-Version: 1.0
References: <20240217150228.5788-1-johan+linaro@kernel.org> <20240217150228.5788-6-johan+linaro@kernel.org>
In-Reply-To: <20240217150228.5788-6-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 22 Feb 2024 23:11:17 +0200
Message-ID: <CAA8EJppnHY=jDYjgTn+2dF_zmGwM9+KsUS6vOyPB_wa9W0v-UA@mail.gmail.com>
Subject: Re: [PATCH 5/6] phy: qcom-qmp-combo: fix drm bridge registration
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
	linux-phy@lists.infradead.org, stable@vger.kernel.org, 
	Bjorn Andersson <quic_bjorande@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_131131_269506_A58F66DA 
X-CRM114-Status: GOOD (  15.10  )
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
> Due to a long-standing issue in driver core, drivers may not probe defer
> after having registered child devices to avoid triggering a probe
> deferral loop (see fbc35b45f9f6 ("Add documentation on meaning of
> -EPROBE_DEFER")).
>
> This could potentially also trigger a bug in the DRM bridge
> implementation which does not expect bridges to go away even if device
> links may avoid triggering this (when enabled).
>
> Move registration of the DRM aux bridge to after looking up clocks and
> other resources.
>
> Note that PHY creation can in theory also trigger a probe deferral when
> a 'phy' supply is used. This does not seem to affect the QMP PHY driver
> but the PHY subsystem should be reworked to address this (i.e. by
> separating initialisation and registration of the PHY).
>
> Fixes: 35921910bbd0 ("phy: qcom: qmp-combo: switch to DRM_AUX_BRIDGE")
> Fixes: 1904c3f578dc ("phy: qcom-qmp-combo: Introduce drm_bridge")
> Cc: stable@vger.kernel.org      # 6.5
> Cc: Bjorn Andersson <quic_bjorande@quicinc.com>
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
