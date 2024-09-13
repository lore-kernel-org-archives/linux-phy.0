Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B75BFA3746
	for <linux-phy@archiver.kernel.org>; Fri, 13 Sep 2024 11:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bcny0qzJ3vzz5FH2HMvqqB0DA7hayRNAWACNIJrlxm8=; b=UgARJRyntLhtsC
	vpPowXSsVkN3fOxVLzGtc3b1vbgkkMWsXgvcvOD5rcKdWAlCz3EQ3/+y53gp+/NtE+IqobKK9f3Y6
	7Dm8lWbpp1jAcd9NKwhyR30yILwFKF2Wz53tZKKkli0tag/cBnepgC21gk9IGE+SxpWUOh/ye+pxT
	Bqw0glLewkfKojR6VeVt6IPv8ik8jIVT1/hZ5oIk6cg77LMkvLejZJR4aGGge4OSLv+uhGLFg3shm
	6cL7JI5qWR+mWPcFCLoR/07TeYIB4RWJgcMwHUYZIJ4DkCruilAE/BlHr8f4ZhTYJT1WGsrG2Gdj+
	fxAk1zz3JCFZ3ymNht1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp4jl-0000000FmQJ-3KCv;
	Fri, 13 Sep 2024 11:45:17 +0000
Received: from mail-yw1-x112b.google.com ([2607:f8b0:4864:20::112b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp4io-0000000Fm9q-3PX1
	for linux-phy@lists.infradead.org;
	Fri, 13 Sep 2024 11:44:21 +0000
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-6daf46ee332so6712407b3.0
        for <linux-phy@lists.infradead.org>; Fri, 13 Sep 2024 04:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726227857; x=1726832657; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bpGVAz7F68gq4K0wsGbVi84hQs0Zw4wJBgelJinUR+M=;
        b=HcRhMIOLCaLwlY7OeO5YvX2+XwfTv+y0/GSOBp3uUdScZs2jC6a3oDoYnfHEJnhIkQ
         z3pN8VEruQiC4KFlN70ZZWMb2fxp4KSQ3JjuzHGebAyO8Xfpu6B7D48zbQctg6kDS8GL
         33nsSuIvk1fyPgIkQAEED4eM/N3KhLjLguulwCNW8t3LsQ4d0OzWYRB2bVjy/sKiDauf
         prxfKL5uOpt31MNbkxfR68OFtPpkD8At1EskTmAnK0vUxUnhh1BzqA49mRhVlmWN4E8A
         r10CGUFlacOMc3GqzxT2sAPI7k5QJJwufy22S1B86KTpiHYK8fir2Cv1GbGyuFHI2dCJ
         +UEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726227857; x=1726832657;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bpGVAz7F68gq4K0wsGbVi84hQs0Zw4wJBgelJinUR+M=;
        b=dp7qNGywxPYKVqJx93eeuQWIJPvSJU8LsxYqgfuOzjnGtJRgzRWzl8yujKf5dcSo0d
         gmC1E5BF3RtIw+PWlIOXvYms3sP97CnfBxlH77PK6PgXKPB4qGYchBqop0JYqXthMpxe
         DFnVhc9YZX/nw+RtxPqBG2AEoQBaoURArBJpvUefwcXIyEdWAks4v2dJupHK0DCir05G
         vOay4EP72FkwRq5kaUhqjRdXwft08ZHgpVHZw0KRP5c5Ieb3pPmyUEwtqwNAAkTarTG4
         9rfv2i0CRxPsCzzZchnGyFTg2NzERA5Zek+nOCHWN8vS48AV7u3h3c/z433E6FMsNjrR
         VZow==
X-Forwarded-Encrypted: i=1; AJvYcCVxW3M0St7j8ouBr6FS5OWqmuSy2JGxxKXbHoNPqk13iGWaZHoUH8wVgW35zl6v3mmp6rSHDu8R3tc=@lists.infradead.org
X-Gm-Message-State: AOJu0YznmfQM4sp2/PX0pBAveVl9wKNeXMOtbBVlqd1jIb7JRGvLdX9b
	auYlXP5SaXrly7wT6qY6BIyA6GHKzqA3wAGG0moI2b2SOt5qz+MYrc4En0KNfp+cGi13OZylyaH
	8gr2ac0wEtoEXPQLGgoowUBOi+Xe0E8zSthu6mg==
X-Google-Smtp-Source: AGHT+IE+HCTz9/Hpne7uiESMruAIZ8sOYY9ablamvHhKXDnIFQMaJZtzXwjRu+Y8yXtv+wftvk256sWwlMRwxMdIsno=
X-Received: by 2002:a05:690c:3708:b0:62f:aaaa:187a with SMTP id
 00721157ae682-6dbcc26265bmr21823667b3.14.1726227857290; Fri, 13 Sep 2024
 04:44:17 -0700 (PDT)
MIME-Version: 1.0
References: <20240913103755.7290-1-quic_mukhopad@quicinc.com> <20240913103755.7290-6-quic_mukhopad@quicinc.com>
In-Reply-To: <20240913103755.7290-6-quic_mukhopad@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 13 Sep 2024 14:44:06 +0300
Message-ID: <CAA8EJpqyr0b4zUZ3h+bTASru74fm1U9LGJkpqcQhEChH2EexXQ@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] drm/msm/dp: Add DisplayPort controller for SA8775P
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, konradybcio@kernel.org, 
	andersson@kernel.org, simona@ffwll.ch, abel.vesa@linaro.org, 
	robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run, 
	marijn.suijten@somainline.org, airlied@gmail.com, daniel@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	quic_khsieh@quicinc.com, konrad.dybcio@linaro.org, quic_parellan@quicinc.com, 
	quic_bjorande@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, quic_riteshk@quicinc.com, 
	quic_vproddut@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_044418_904927_CF1BB97A 
X-CRM114-Status: GOOD (  17.59  )
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

On Fri, 13 Sept 2024 at 13:38, Soutrik Mukhopadhyay
<quic_mukhopad@quicinc.com> wrote:
>
> The Qualcomm SA8775P platform comes with a DisplayPort controller
> with a different base offset than the previous SoCs,
> add support for this in the DisplayPort driver.
>
> Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> ---
> v2: No change
>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> index e1228fb093ee..e4954fd99eb0 100644
> --- a/drivers/gpu/drm/msm/dp/dp_display.c
> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> @@ -118,6 +118,12 @@ struct msm_dp_desc {
>         bool wide_bus_supported;
>  };
>
> +static const struct msm_dp_desc sa8775p_dp_descs[] = {
> +       { .io_start = 0xaf54000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
> +       { .io_start = 0xaf5c000, .id = MSM_DP_CONTROLLER_1, .wide_bus_supported = true },

Please wait for the discussion to end before posting new iterations.
In this case Bjorn pointed out that this is not the full
configuration. Please add a comment, describing that there is a second
MDSS, which isn't declared here as it wasn't validated.

> +       {}
> +};
> +
>  static const struct msm_dp_desc sc7180_dp_descs[] = {
>         { .io_start = 0x0ae90000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
>         {}
> @@ -162,6 +168,7 @@ static const struct msm_dp_desc x1e80100_dp_descs[] = {
>  };
>
>  static const struct of_device_id dp_dt_match[] = {
> +       { .compatible = "qcom,sa8775p-dp", .data = &sa8775p_dp_descs },
>         { .compatible = "qcom,sc7180-dp", .data = &sc7180_dp_descs },
>         { .compatible = "qcom,sc7280-dp", .data = &sc7280_dp_descs },
>         { .compatible = "qcom,sc7280-edp", .data = &sc7280_dp_descs },
> --
> 2.17.1
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
