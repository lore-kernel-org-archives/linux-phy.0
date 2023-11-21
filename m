Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F44AC54FB9
	for <linux-phy@archiver.kernel.org>; Tue, 21 Nov 2023 11:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tTYTkhk77xqpUyc+7sSlfmCrfbHvbKaEr//LO8JSbHQ=; b=DSagpnmSgnLeoE
	iam36XOK3BgPg0cfDvJiVOAYBkGqRTNPmwRs8jMfKIOdwkJOlROd1ujX+1YC+z2s6c6OZ+zXI0Yf5
	Tbe69n+SzSCeDSQ54bfQoDMWdBAdJfSG4SHHLdiJc0OxI/MGEZRTH0E5jTR+sgznKIqnBbpuUoR6s
	w1Ybdc5XhsaOqW18SI2FIkjUrDQvE0IXDqqXcW7OKtI77ypSxA1Luzvi0cwP6cWRuaBBg4zzp+/RC
	Bhl8OoaMsXyRtaK4DnCJ8kpdhWhDUqUdqNwMW2A9UqjeKNRXH20STseSCUgwmsU2r7OgZIr7+2xCc
	hRMoPb7WC10J1FPqqDcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5OaB-00GMuB-0d;
	Tue, 21 Nov 2023 11:06:19 +0000
Received: from mail-yw1-x112f.google.com ([2607:f8b0:4864:20::112f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5Oa8-00GMtM-1J
	for linux-phy@lists.infradead.org;
	Tue, 21 Nov 2023 11:06:17 +0000
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-5ca164bc0bbso23451917b3.3
        for <linux-phy@lists.infradead.org>; Tue, 21 Nov 2023 03:06:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700564775; x=1701169575; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qAu9KNb55Wcsj1U43w2gm+QY+xIrGUFw9sDuy2hVAqQ=;
        b=rMgcVUkNZxX5L8jdSCxB/CEPXl1zDDxd+7lE5rH14jF2CVoYTjCL0XhuPn8HFJuMT4
         Ibn2aVZuN9O9P3B0qUHhuEBjjpoAZjMKZsFlukMwV4QILeodhw5q4h7RChSG4sg76+8n
         Oe54Mt9gPznchEqQfDWHxk8zsEgJYkuy4QBHkenojbDe4l6bXkVCyUkkco2Ym6nNWo/s
         uJci0heyeTocvAIEc+dTTkMY4fmJy7rVhOq8+/Xg/gYD3EhAT7fIs99f65mNTEIc7sGv
         JTgjj93Gr7G7HjHCmDt0VlNj5PKks+e94RpZqJyFoPG93t4OJM1G7OolaJKDaZB727Aj
         8LiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700564775; x=1701169575;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qAu9KNb55Wcsj1U43w2gm+QY+xIrGUFw9sDuy2hVAqQ=;
        b=bCWCjHfxf+pExzlWb+pivafpGYXaM8KfImVpibNpJp8g2Y2y7v9fci2Z3OTp+rTK22
         Xlwe8NZG4x9QOsLZqL7kLdQ2AbupaSPAv+Qi4bfaLQlns4yIT7svQR4d7L++ORw5nKkC
         DHWstkBIlTuW00ilXUqHajusAZ13ZKnJBWvl2M24rGhNx9OWV7rTlWdElXZYmr5gNnDY
         10dFYTQ394acXOz1m1SVo8GhDTCOociO0B3hPzFX7HF8dtVCzQEDkoFhAsqdvVFBaRz4
         87QLDoHpdllSUK6plMUyxJ7/uOY9mxXO3CYBC3srkxNj/Nb+hDL8mzCsPg3FH+qwLeg+
         NB+g==
X-Gm-Message-State: AOJu0YwAvR1NPiTjmbYgjzhAAcjSD6eAeRS/0B4r1ShZ7E1N6KObaMOP
	NK+UHLo9hJD0xWcwkkzhqXWmF48mvGrmMoeZIaqnfA==
X-Google-Smtp-Source: AGHT+IFXmK6c+goSlc6gqDw81wwgNpcvs80rWrjqvbbbomRseLWccYA6j1JiQT06FrnHqj4stB6xqOa2n/1zntHjuNI=
X-Received: by 2002:a0d:d3c6:0:b0:5c4:3896:7763 with SMTP id
 v189-20020a0dd3c6000000b005c438967763mr10518180ywd.44.1700564775367; Tue, 21
 Nov 2023 03:06:15 -0800 (PST)
MIME-Version: 1.0
References: <20231103230414.1483428-1-dmitry.baryshkov@linaro.org>
 <20231103230414.1483428-7-dmitry.baryshkov@linaro.org> <e67c00fd-37f2-4ede-983f-c8c46bf847f1@linaro.org>
In-Reply-To: <e67c00fd-37f2-4ede-983f-c8c46bf847f1@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 21 Nov 2023 13:06:04 +0200
Message-ID: <CAA8EJprC_9MXyzBETaHO=HcKU+vREvdJewXafqk8+R6bL3vDtw@mail.gmail.com>
Subject: Re: [PATCH v6 6/6] usb: typec: qcom-pmic-typec: switch to DRM_AUX_HPD_BRIDGE
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-usb@vger.kernel.org, freedreno@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231121_030616_445908_EF09C1F2 
X-CRM114-Status: GOOD (  12.86  )
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

On Tue, 21 Nov 2023 at 12:46, Bryan O'Donoghue
<bryan.odonoghue@linaro.org> wrote:
>
> On 03/11/2023 23:03, Dmitry Baryshkov wrote:
> > Use the freshly defined DRM_AUX_HPD_BRIDGE instead of open-coding the
> > same functionality for the DRM bridge chain termination.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
> > +     bridge_dev = drm_dp_hpd_bridge_register(tcpm->dev, to_of_node(tcpm->tcpc.fwnode));
> > +     if (IS_ERR(bridge_dev))
> > +             return PTR_ERR(bridge_dev);
> > +
>
> What is the effect if we never attach any bridged devices ?
>
> We make an aux device that just hangs around and eventually get cleaned
> up on release ? That's the way I read this code anyway.

Yes. That's the point, to untangle the USB code and the DRM bridge.

> Acked-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
