Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF30DCFB424
	for <linux-phy@archiver.kernel.org>; Sun,  6 Oct 2024 15:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CUA6lGkzMfOSOgdKa/Z0vY6OXRvQC/npE1e4nI23o6Q=; b=h/5s45kqCaJ3tK
	WB3/KogqD2TIAJyl+ht0uSgVnLlxTs12dLx/TILO9uB8ooaDCVDwSaESYMGYIhjYFWbtHacj1B8fB
	YmmhF/xaD1effGr0PY15h7BpAWx/aVToC9rqv454bc/3HWYER+Va2hB65uAoZCWY7gGJQVXtrMP9C
	fiaYfq7XynVzhyUpt6qjXQoAzDQ+xnTDu8eHaz9oVTdDWylOqUSI/otnmqUg0GuZRCDCZsoNloDa1
	fmL/r9sa3XVkVkShY9b0TXKibzQjmsvXGPPxOksHdoSZ5GFV6qo/3KUFmLn/dfua1TKBugxmo2stx
	hPiyuFTggZXP8aMXC3dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxSky-00000000C0T-1tzz;
	Sun, 06 Oct 2024 15:01:12 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxSkt-00000000Byk-44lj
	for linux-phy@lists.infradead.org;
	Sun, 06 Oct 2024 15:01:10 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-6e2e4d16c2fso4882647b3.3
        for <linux-phy@lists.infradead.org>; Sun, 06 Oct 2024 08:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728226866; x=1728831666; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sr7kBmgWEcI5rnWGX+RCamDzTizwOpc6au1fxKMuuS4=;
        b=kIPU0SxvpRAf+ehZQga8dUI/O9oTT1BaCVVMYrH1YTYB3/+qEDcsteYxNUqhKIK892
         7dBGYB76bldbXuOQs/w5PW/Qr4R7hxQBke5QPt9h7YWEwVd5ewziviPzx3KCgdr475Mt
         q3MoUVLzQ/C9SyrONvq9+RxHxhHq3G/HejE8QnBJayT/Dc5InhNe+RcwQb8jt2YAQtAp
         ZtA9Li3/NVYTVbW12lz9Ya1CWOmik0fvUStvbUZr1tmxY7AG3BT+JfUk9xmvScaqZn1l
         ZESB6myXwAQNdjjFxHEOWsu9qnxQf/muxizzwtaRt/c55p4ZOHr1elE5RMExdYZh5AQi
         QWnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728226866; x=1728831666;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sr7kBmgWEcI5rnWGX+RCamDzTizwOpc6au1fxKMuuS4=;
        b=A+ECUuoimpCHFZ6CEi7JRJ0aPPH+MXLrYdI5yHJjYBX/R8A5+6IM5rEpTX9CQDLthP
         2uvJL0kN2CtkjSHyBCxX1zNRNMqBPL3YhKonIc5MRiutuxgKNim5athw4tB0QLiWMeBr
         3WehVfkM3a7eeFMaqJ5QpnM+90dP8njAdQcHc3233j0OhVfvLW+NlyleLzqEl19kVMXv
         vuvtcltj5ZVWmP/ixRR2hgO5uV8ChGcwPIEOr6oCHr2hgn0zNakdQTZZz3x6X62ZhM7I
         s0gqsEr+oAPF7EmWuGIUDu9O5X4F/kxIWgu0TMNB5fU7WOyErseWvva+idfsQ5mqDHEj
         GxlQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAk52cMG+0kno09mKdPFbwUe1ffRuBHIpaHWYDbjhTnzjReyBDwaUo2xdU9/1EpjfUPYIPdkuY8t8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxEIEdmVF4Xi5UuleM2JfBHqjVj+XbNLdqbXZ5ii4+2MVAtf14M
	YFV4+u8di0B/j7DzYTX40om9Qs4HkK0kxAMh9EoK0Ps0jEuMUUkWj6RSG3cZZDghInUdBoG9qMG
	G4SWS8I/ab4ycVL8HzUhTfM5vb4cJ9cQs87WvIQ==
X-Google-Smtp-Source: AGHT+IEJycb4R4aw3ReSCNgChwzrEXysCheiplWAjzc1sd3W64fhBUYqqbDLQsAk4nGd84s5GZgRtnV6rDxt3bUR/NM=
X-Received: by 2002:a05:690c:101:b0:6b1:735c:a2fc with SMTP id
 00721157ae682-6e2c72466ccmr69109727b3.27.1728226866169; Sun, 06 Oct 2024
 08:01:06 -0700 (PDT)
MIME-Version: 1.0
References: <20241004103046.22209-1-quic_mukhopad@quicinc.com>
In-Reply-To: <20241004103046.22209-1-quic_mukhopad@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 6 Oct 2024 17:00:55 +0200
Message-ID: <CAA8EJprNz-Byy6T3qkkUyZnTkyb_7osyuevP8E-xYzzPSmQjUw@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20241006_080108_151383_B4940BE9 
X-CRM114-Status: GOOD (  14.79  )
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

On Fri, 4 Oct 2024 at 12:30, Soutrik Mukhopadhyay
<quic_mukhopad@quicinc.com> wrote:
>
> This series adds support for the DisplayPort controller
> and eDP PHY v5 found on the Qualcomm SA8775P platform.
>
> ---
> v2: Fixed review comments from Dmitry and Bjorn
>         - Made aux_cfg array as const.
>         - Reused edp_swing_hbr_rbr and edp_swing_hbr2_hbr3 for v5.
>
> v3: Fixed review comments from Dmitry, Konrad and Bjorn
>         - Used a for loop to write the dp_phy_aux_cfg registers.
>         - Pre-defined the aux_cfg size to prevent any magic numbers.
>         - Added all the necessary DPTX controllers for this platform.
>
> v4: Fixed review comments from Dmitry and Krzysztof
>         - Updated commit message.

For which patches? How?

>
> ---
>
> Soutrik Mukhopadhyay (5):
>   dt-bindings: phy: Add eDP PHY compatible for sa8775p
>   phy: qcom: edp: Introduce aux_cfg array for version specific aux
>     settings
>   phy: qcom: edp: Add support for eDP PHY on SA8775P
>   dt-bindings: display: msm: dp-controller: document SA8775P compatible
>   drm/msm/dp: Add DisplayPort controller for SA8775P
>
>  .../bindings/display/msm/dp-controller.yaml   |  1 +
>  .../devicetree/bindings/phy/qcom,edp-phy.yaml |  1 +
>  drivers/gpu/drm/msm/dp/dp_display.c           |  9 +++
>  drivers/phy/qualcomm/phy-qcom-edp.c           | 74 +++++++++++++------
>  4 files changed, 61 insertions(+), 24 deletions(-)
>
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
