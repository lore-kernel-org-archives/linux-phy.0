Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6732FC54791
	for <linux-phy@archiver.kernel.org>; Thu, 22 Feb 2024 21:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BmIRCPsFmHtRXYvaX1/OZAsxEjQglB859Qkl3Qoyg+A=; b=SNYrgktMqAGxSV
	8XG3mrFw/tClfYSMvp6LiuB2TQw/7xrXbe/DHwQNhKwUmYL2dgv6FNzCTP3Eid5XFzuJ+zaUp8ZsN
	n73yBo3rSYvBkPho+JYK5UlF2jsHkdmJH4nYvKRs0kjCmg3/UOvt+oJMBYp3nDEDBLd0O2qwPRsjS
	cL7FXQK4bz0j3OocqIUeCptVuFUraWxUF7u6oN2+tO+QYgKE3Q9hqVEfBCZ4xOCGp6wTwm1S0U/af
	oQ3TxLX+ZdQ3P5fVkZII3govMb2GmADbmvh/StNGYCQ9/xk9TbmY31LB4g1GUsYxS2dSSvWpzfWty
	iLr1Zs5TOMEZ8IgwshIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdGMs-00000006c4T-0I3C;
	Thu, 22 Feb 2024 21:12:34 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdGMq-00000006c2x-0K60
	for linux-phy@lists.infradead.org;
	Thu, 22 Feb 2024 21:12:33 +0000
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-dc745927098so117045276.3
        for <linux-phy@lists.infradead.org>; Thu, 22 Feb 2024 13:12:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708636350; x=1709241150; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fenjTlVOLcRdKZFsqaTFAV94+jNqh66pMdN4WeCK6m8=;
        b=OxCIl+21Vv/cdDq9FFIt+COF4tt/mzM5Rco3izukfHK7JjoHuTx1Z6N+GAlP9WGmvd
         ZI2TLhZ5iMtUf06Hh/7i7fir3+zYYSeUyL4ZdZejdH5ZaADtm5kiQhW+WroVgx2pCcv3
         ImCkkSTJDnt7KR5AAYK79g3cBjrt8CmqSPrJkCA3a/HRJ9/54+WWWEuaFqyWMW42oQSQ
         hX310djhnXO/xf5N3VkGJPgSWw/imWFYb6fv/or/0MVW3Pi1477I7N2iLCqVi96h5DBX
         tAmqU3Ywg/cvwD8PrcqM4Zhu+7NNXgzm8bPn8kWGec3Ul72NMnSdRNp7Zc8FCpkcPsyt
         5UFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708636350; x=1709241150;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fenjTlVOLcRdKZFsqaTFAV94+jNqh66pMdN4WeCK6m8=;
        b=Jod69xMSSCk8daHPblcOcvLmByD315As5UuOOfyBk+Z6XjQCCcWx0ZGrAh6FFKxsaR
         IT2Ns86jJFp5Rj6/+OucM1EwO3J+Lx/3Gbwckm9o728/JeMyguiaMeHDzcMiaZ+S+gZV
         6RjZidADC8Hj6HaMmyZpn6ygY/toYCdYcoiYZ+pVvRJqT6PsTH9VmyP3i5XOZgNNUwtM
         6lkfYrpONFcn7rPD38Sk+WryJBw9MaEQDC5aOmvTTPSI24d3ioawvK6/oiF9/w3OKGzC
         aQkV/YjcVKqTE2HycPBDHn/3eaMdbrdX80DAXaxJeCU9MCSlZnj3n0qjkWlimvlraKlu
         eCWA==
X-Forwarded-Encrypted: i=1; AJvYcCVxK5gQd4AnZi9ObT5/E1yJLvr+jgV5eDi+ekEm0q32a6am5AZwH6QsOdWzjgaqe9i2i1Mg6E1LionL8hywbZFGFIRNNfRBt619GwdhUw==
X-Gm-Message-State: AOJu0YxMoa0VEDsBJlWDncnYNVmcPQD1VP4JClYL9X49QTUd5JUOA7kV
	3+cTqSMofrOaSzDy+i7tN0bpo358QFrdQjeBocW+wok4wKYnVd/9ik9Uvg+aaqZeAUEPcOXNemo
	gfo700N4F9+mKF6mLdDa0vTz7hinfYftszgPL1w==
X-Google-Smtp-Source: AGHT+IFh2TAl89Hutu4vqCYOc5+0AJ9qQayg9ScjNq2n3H/zD5V2O2sGDJBBs2zipfHmjaQpRtAUdHsgH00u4T387Jo=
X-Received: by 2002:a25:2747:0:b0:dcd:3338:a3c5 with SMTP id
 n68-20020a252747000000b00dcd3338a3c5mr382880ybn.33.1708636349969; Thu, 22 Feb
 2024 13:12:29 -0800 (PST)
MIME-Version: 1.0
References: <20240217150228.5788-1-johan+linaro@kernel.org> <20240217150228.5788-7-johan+linaro@kernel.org>
In-Reply-To: <20240217150228.5788-7-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 22 Feb 2024 23:12:18 +0200
Message-ID: <CAA8EJppPg7b-DsPJ4W=2G-_rRq+xTux9kJ3oJhD2ws+FoJvkKQ@mail.gmail.com>
Subject: Re: [PATCH 6/6] phy: qcom-qmp-combo: fix type-c switch registration
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
X-CRM114-CacheID: sfid-20240222_131232_145093_A1A982E8 
X-CRM114-Status: GOOD (  20.55  )
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
> Move registration of the typec switch to after looking up clocks and
> other resources.
>
> Note that PHY creation can in theory also trigger a probe deferral when
> a 'phy' supply is used. This does not seem to affect the QMP PHY driver
> but the PHY subsystem should be reworked to address this (i.e. by
> separating initialisation and registration of the PHY).
>
> Fixes: 2851117f8f42 ("phy: qcom-qmp-combo: Introduce orientation switching")
> Cc: stable@vger.kernel.org      # 6.5
> Cc: Bjorn Andersson <quic_bjorande@quicinc.com>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Note to myself (or to anybody else, who has spare hands), we should
probably implement the same changes for phy-qcom-qmp-usbc.c

>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index e19d6a084f10..17c4ad7553a5 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -3562,10 +3562,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
>         if (ret)
>                 return ret;
>
> -       ret = qmp_combo_typec_switch_register(qmp);
> -       if (ret)
> -               return ret;
> -
>         /* Check for legacy binding with child nodes. */
>         usb_np = of_get_child_by_name(dev->of_node, "usb3-phy");
>         if (usb_np) {
> @@ -3585,6 +3581,10 @@ static int qmp_combo_probe(struct platform_device *pdev)
>         if (ret)
>                 goto err_node_put;
>
> +       ret = qmp_combo_typec_switch_register(qmp);
> +       if (ret)
> +               goto err_node_put;
> +
>         ret = drm_aux_bridge_register(dev);
>         if (ret)
>                 goto err_node_put;
> --
> 2.43.0
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
