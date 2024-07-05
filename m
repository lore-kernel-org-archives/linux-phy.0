Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14B74C38150
	for <linux-phy@archiver.kernel.org>; Fri,  5 Jul 2024 14:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vDkzmIL8eDBENtxhsXvptduQNaLZTYN1PYrJJJtJCy8=; b=Wnnoun+w6eDf99
	Wf7cNDv3rujN9DxUJId+cHP3es2m+QU5wZcyIgj4INZujl1aIPxWFvIIuxL57RWPXDJw6KcXevBvA
	ze8Dq2u+P+xbK9L88TgqEvOT/nXy9rPP0AwCaUEVzDemtzcVyNSOYt1OO0NcHLh21XtdcUN0rUE0K
	1fHfDPdLGg3s02OC8QpbfoqRaEfx4vynAvkuxNeiQvOz1uUuReGCGR85Ei5NLv/5YhYmAZcLxPKQu
	6JqL5fV5hIa+5z6sUPoasF9kS2GI5qE85hhMhQ5FpbviwXLHy+4isZSTBfp+AB7UXCI8/4BxBQkej
	WIsmyeEoHtLA+9VTVA9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPk1H-0000000GDdA-2709;
	Fri, 05 Jul 2024 14:34:39 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPk1E-0000000GDbx-2wIW
	for linux-phy@lists.infradead.org;
	Fri, 05 Jul 2024 14:34:38 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-52ea33671ffso1204197e87.3
        for <linux-phy@lists.infradead.org>; Fri, 05 Jul 2024 07:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720190074; x=1720794874; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LEJHO7rkl+xJJJhR/OlOUSXNtS4l+Ak5HXkZa8xkzw4=;
        b=cgr5RkuvgJozRAZMHHI6Ox3zP/eAvUCqeQlVdCxxLV0ssHVwUdVz8S+V6tl6oT5MQC
         sybCSZZ29xyjuArdZBXUMDObudL7bjrKytVOCFuJdnZ+B5pQd1bx5BdOWpu9jf2PLz1b
         YLL78FdQz0PgYP0E5iz6pYob/HJPIhrhSuQUCzaMRbyhCopV8cDKHzZ8drb6LgZ5/Z8a
         eizhczmM41aqyIYm22AuFxhS5h0VGm1ct4fLVGKmfGW3ihPhpsnruCrnNFanC/1PVLDu
         BWC5svZ+alr8jvJWShCy2jEM2qR2S84OeKECj+ht7exO6KlC7NqvH45/RgA7ZJXlwGlC
         eYMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720190074; x=1720794874;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LEJHO7rkl+xJJJhR/OlOUSXNtS4l+Ak5HXkZa8xkzw4=;
        b=UkPGcdclSUFIyL4zWRRtyfDgPL4h/+hMuOmxTrn3RQ8cBAlaTIhKgEJjlt+aoK4S+7
         rWNzVrfBQbOHVxU7t27Lsq6boeZym3OTKyzR+hVYPBptbfXHMLeKeT7FaXG9rqes0x7K
         SwRh6usXMzs4HAL+Vpw3sHjj58IdLvNpl7UgWDFgRv9HfdlNiJOz9s6e4aFpe7TyVUMo
         DjH0qJaJs1f4hqA1UmXEom6VLv1TIGaK92YkaC6WtDrqp8O9O0hiHCbk3I+OWem8B9fq
         M59DeAUoQo5qFBIuoHRLhoGpsfu8hNQ9Bg77NEmq81MHRmKAosE+1zPyF3LRJm5JQKo1
         /LQg==
X-Forwarded-Encrypted: i=1; AJvYcCXITVUoKWkCKFa8ldq2kqPkLq75AlQLQapN+MBoT+zsMmd5jGng+gdsOfD+j6nm5Okj4CKBXJNvTRbx28Ub5oLpEIPfoK+Hq8vkiJ7s5g==
X-Gm-Message-State: AOJu0YwDHaqxMvtpnuRPwE0LN5+FarJk2eiJsfK8xucK7letM/HIlwFY
	6jenTOPBUBDlONg4EYLd4Z50PRltZKMbk4cUwa4NfxCEOTOGWQw/3pnfWovwxQU=
X-Google-Smtp-Source: AGHT+IExpSPLbhdfXO79t1NxOiXDtAHEROuoPPAPjqvX+SJpApir1f2/GJTe7nfTqsNHoDT+/oAc+Q==
X-Received: by 2002:a19:6a1a:0:b0:52c:f521:9423 with SMTP id 2adb3069b0e04-52ea064ee3dmr2962725e87.26.1720190073677;
        Fri, 05 Jul 2024 07:34:33 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52e9f183e00sm575303e87.305.2024.07.05.07.34.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jul 2024 07:34:33 -0700 (PDT)
Date: Fri, 5 Jul 2024 17:34:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-phy@lists.infradead.org, Arnaud Vrac <avrac@freebox.fr>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>, Jeffrey Hugo <quic_jhugo@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: Re: [PATCH v2] drm/msm: add msm8998 hdmi phy/pll support
Message-ID: <5lbtymde3plfiqkvnd2lrjzxhengmsw242uqapnzpvfd5jrm25@x2ik2h6vrdxm>
References: <20240704-hdmi-phy-v2-1-a7f5af202cb5@freebox.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240704-hdmi-phy-v2-1-a7f5af202cb5@freebox.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240705_073436_766903_033BDA73 
X-CRM114-Status: GOOD (  11.75  )
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

On Thu, Jul 04, 2024 at 06:45:36PM GMT, Marc Gonzalez wrote:
> From: Arnaud Vrac <avrac@freebox.fr>
> 
> Ported from the downstream driver.

Please write some sensible commit message.

> 
> Signed-off-by: Arnaud Vrac <avrac@freebox.fr>
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> ---
>  drivers/gpu/drm/msm/Makefile                   |   1 +
>  drivers/gpu/drm/msm/hdmi/hdmi.c                |   1 +
>  drivers/gpu/drm/msm/hdmi/hdmi.h                |   8 +
>  drivers/gpu/drm/msm/hdmi/hdmi_phy.c            |   5 +
>  drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c       | 789 +++++++++++++++++++++++++
>  drivers/gpu/drm/msm/registers/display/hdmi.xml |  89 +++
>  6 files changed, 893 insertions(+)

- Missing changelog
- Missing a pointer to bindings. Ideally bindings should come together
  with the driver.

I'm not going to check the math, but it looks pretty close to what we
have for msm8996.

> +
> +static const char * const hdmi_phy_8998_reg_names[] = {
> +	"vdda-pll",
> +	"vdda-phy",

Unless you have a strong reason to, please use vcca and vddio here, so
that we don't have unnecessary conditionals in schema.



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
