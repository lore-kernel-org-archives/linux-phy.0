Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE492D21690
	for <linux-phy@archiver.kernel.org>; Tue, 15 Oct 2024 12:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aiVJIlOgQ9gHOhr+JmmsDqFyGOK/aqk+KtJl5HhXrUM=; b=Y501/N5mfGZ1D3
	4k9mvAXUeFfvrKfiQtWZTYr/cFTQBHLS2jbYwhKkQzN7L5wGmVr5p9EDVOuZQE1R7YTk26TQdNwUe
	NHZuXUzKYV+kv438gNfJa2M4Tnzlk00icgVq7H7W/OI5uKro6GI51umc36tMUOnMeXxdipBV/DryL
	xoOq84YbQfrTem4AoMF2m/6F0QzM7VjG3RO0BsL1T9exr29B168BhSybK0DMZ8xYxy7SLFYQuLPvb
	NvF1QPYAn05kPSvK1lA8gbxKMKIEeEuNAszUWXdQ2H+5XrMZN0C29ZXbu8u8ruQ9jm70USbOjCW3q
	JeyGaR0S/+h4QEwTuMAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0goB-00000008Buu-2KOm;
	Tue, 15 Oct 2024 12:37:51 +0000
Received: from mail-yw1-x112f.google.com ([2607:f8b0:4864:20::112f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0gcU-000000089oF-3YnH
	for linux-phy@lists.infradead.org;
	Tue, 15 Oct 2024 12:25:48 +0000
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-6e35f08e23eso27798867b3.2
        for <linux-phy@lists.infradead.org>; Tue, 15 Oct 2024 05:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728995145; x=1729599945; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+Go8RY3f3g+YNRtfmTAreeRvEns8DfLxEuJL0kCvf+w=;
        b=TeQlFaQ7LyWXMJQZOJ7XEMr0zpnEuwzqm63gZt0BGPQr02q/mjzbKjZrt07JFqc2V6
         m+Aw5NGtkScKCmUB9ZgwZjRmj6LeKVv9Nxa9zDLjoKsaEaakj6c3tREz7TLynQ7gkYaa
         2GdmjFLKKUxPemfvxv0O01cGrDvle0sB6Pdb1HICD+RsEEifo/ZszIkTEzeRXAT9ZksW
         B8OXEE9GSmgo993YmGHC4sfbZQxydflhVTQRWXtzZIRQeDmwfAwhe5TDH/sy8RnwTPNW
         x0/C5dcQSz0p+4DZ0qm4BEUqG3ZYpliwO1sbPE7XZFG0MD6mK8SCKUUqZmV8Q7nNuDbA
         0/8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728995145; x=1729599945;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+Go8RY3f3g+YNRtfmTAreeRvEns8DfLxEuJL0kCvf+w=;
        b=jX2ybbJ+XduKRC/vQvO/8Ndz6sHSPl9A+GO5fy4M6KVyY69equw8b+F0Eglxv2r8NW
         y90xC8iuJcyggz3SbcbsbhM02tOi9vD60B/Uyft7n75i9bv4MHCGrGXrK+6/sGf+crW3
         ofGM0QTeW9NtKH3HwNV1efVrNYG3/u25exwvfUz9OTM25HD5RK3Z0MdHNMmxOttAxh/t
         NUrSjF2luZbzPs6UlLf4OGuchOe83CoiaC5nYFzatp+91K8Qg0pm3ANxXiD1j3G6OcvJ
         iXlCuaoPFD1Ke97oQtSGflaRkGjklGtYTlHNKwhp2r5B0sykBIEw0oNXMLOxS1JJJOpJ
         hRsQ==
X-Forwarded-Encrypted: i=1; AJvYcCWXl+ZDlDy971lqHQfkiH5WlGgOr7RAuEjfPFwr74J8X+vK904+2RceXT34L6GmFcljLPml7iVKbUw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyN47Q6Xza8jd4HB67lTjaOcrzzzNPhjjihR34o62az3zShmjB7
	YTAs5Z5yhatVsUu8WScda+YOA6wyRdINzETnFxYFqwQ59iuyPF8yHsdLUOThpmckLNu5GJeZLO/
	CkJakFxZObLLY8PbCI9FZWTJLH0q5n99IhLGClw==
X-Google-Smtp-Source: AGHT+IHZzOhozWT/zaACpirlbBqkB9AePGlI8+Gi4sFzG1jRzDW+IwnQjZ8DWZzBKqIJX+L8fdHUbM4O+vIm2GvBe4E=
X-Received: by 2002:a05:690c:4c04:b0:6dd:b7e0:65b2 with SMTP id
 00721157ae682-6e3d40d174cmr2743727b3.24.1728995144733; Tue, 15 Oct 2024
 05:25:44 -0700 (PDT)
MIME-Version: 1.0
References: <20241004103046.22209-1-quic_mukhopad@quicinc.com>
 <CAA8EJprNz-Byy6T3qkkUyZnTkyb_7osyuevP8E-xYzzPSmQjUw@mail.gmail.com> <2a2b1373-6cb4-4813-8736-dd7b12c90c0a@quicinc.com>
In-Reply-To: <2a2b1373-6cb4-4813-8736-dd7b12c90c0a@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 15 Oct 2024 15:25:39 +0300
Message-ID: <CAA8EJpoM5d=NgcugVdXfSNDAWp+nfDVV+jaLAqk1pEg7RvoM4g@mail.gmail.com>
Subject: Re: [PATCH v4 0/5] Add support for DisplayPort on SA8775P platform
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
X-CRM114-CacheID: sfid-20241015_052546_912112_BEC63086 
X-CRM114-Status: GOOD (  21.39  )
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

On Tue, 15 Oct 2024 at 10:02, Soutrik Mukhopadhyay
<quic_mukhopad@quicinc.com> wrote:
>
>
> On 10/6/2024 8:30 PM, Dmitry Baryshkov wrote:
> > On Fri, 4 Oct 2024 at 12:30, Soutrik Mukhopadhyay
> > <quic_mukhopad@quicinc.com> wrote:
> >> This series adds support for the DisplayPort controller
> >> and eDP PHY v5 found on the Qualcomm SA8775P platform.
> >>
> >> ---
> >> v2: Fixed review comments from Dmitry and Bjorn
> >>          - Made aux_cfg array as const.
> >>          - Reused edp_swing_hbr_rbr and edp_swing_hbr2_hbr3 for v5.
> >>
> >> v3: Fixed review comments from Dmitry, Konrad and Bjorn
> >>          - Used a for loop to write the dp_phy_aux_cfg registers.
> >>          - Pre-defined the aux_cfg size to prevent any magic numbers.
> >>          - Added all the necessary DPTX controllers for this platform.
> >>
> >> v4: Fixed review comments from Dmitry and Krzysztof
> >>          - Updated commit message.
> > For which patches? How?
>
>
> We have removed the "reviewed by" and kept only the "acked by" for patch
> 1. We have updated
>
> the commit message of patch 5 , to mention specifically about the
> validation of 'only' MDSS0 DPTX0 and
>
> DPTX1.

All of this must be a part of the changelog. It's not enough to say
"updated messages" or "fixed comments". At least please let the
reviewers know which patches have changed and which didn't.

>
>
> >
> >> ---
> >>
> >> Soutrik Mukhopadhyay (5):
> >>    dt-bindings: phy: Add eDP PHY compatible for sa8775p
> >>    phy: qcom: edp: Introduce aux_cfg array for version specific aux
> >>      settings
> >>    phy: qcom: edp: Add support for eDP PHY on SA8775P
> >>    dt-bindings: display: msm: dp-controller: document SA8775P compatible
> >>    drm/msm/dp: Add DisplayPort controller for SA8775P
> >>
> >>   .../bindings/display/msm/dp-controller.yaml   |  1 +
> >>   .../devicetree/bindings/phy/qcom,edp-phy.yaml |  1 +
> >>   drivers/gpu/drm/msm/dp/dp_display.c           |  9 +++
> >>   drivers/phy/qualcomm/phy-qcom-edp.c           | 74 +++++++++++++------
> >>   4 files changed, 61 insertions(+), 24 deletions(-)
> >>
> >> --
> >> 2.17.1
> >>
> >



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
