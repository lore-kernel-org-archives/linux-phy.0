Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B814C25B6B
	for <linux-phy@archiver.kernel.org>; Thu, 26 Oct 2023 21:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qIN3p93VY05eusRrjhaqGvS7oKvj4A4YvSu2nSiFbDk=; b=VWfr7XOnNzf453
	fWwEEhz/U+yXulNvV/e7+tFrVOsWMgD2qzm59mOFAEMkgUhoY93WNpqZgvHEZVsnqjpxnwXarvQh8
	pTm0jJ9/nVf0QYPaMc4hg2VPwYcDB5ovdqWNsI9jlHkUI844LNFt6hyILNBc416SWMxVZsuIlJNxQ
	zCHnf1/wCtKD9k4CjvXofOhajpj7aEHE7zQA03Yj/nwMHRAokBx/Wp78AJeAwA4pVFWrW7rJMyg8W
	4iA/7c3NCBWls17AjZf1XsrwnH6UA2eFXw7wWFerDg4fmoD3v5UNxo94LJY9zdeVCRXp3lMVzDAQE
	k6iqao9ZN6E89Xtzd5uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw7W7-00F9jj-3C;
	Thu, 26 Oct 2023 21:03:47 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw7W5-00F9ig-0L
	for linux-phy@lists.infradead.org;
	Thu, 26 Oct 2023 21:03:46 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-5a7afd45199so10890467b3.0
        for <linux-phy@lists.infradead.org>; Thu, 26 Oct 2023 14:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698354217; x=1698959017; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Zs0BNJRXsqWeQVO5EP1NdVB6zhate3LzWauL+0ezX08=;
        b=Hq5tJV6jVbQqF6dhlHQRwcl1OAiaTCw9UG018h6fX4RPWIafCjcIZIfsz5YewnUvSi
         zjW9WUeAVjsNSIg2QvD54JDWD15v6UKP8tYwJZ76YfN5NT756JQq8My7ru4w6W/EiSpd
         gzyBarrhf+OQEzXuRHSO8wIRbWJYnCjkeBBVzqLCpuYAAGxytLtI33pxc3mLDXTZ3+ZV
         M9t3KFCedn0BRf7p7qJoh0uPBXt3XkFkNVcA466wqgu9nXrx9dtrAHUXmPv3s31oZSE3
         IWdzD7HPIyJ4Ri1KNyxQwDSGL4z1ADP8F3W25kU5vKrPKWBCeyYvR4lz52/tT4KUzNN+
         7UTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698354217; x=1698959017;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zs0BNJRXsqWeQVO5EP1NdVB6zhate3LzWauL+0ezX08=;
        b=a3i8JIy1UgG7JQbDapqbHKCHdI84+jcfB7pFNhtn8TVHyn0XMHeYcTCBkjp/jAF1j5
         DY0DQp7lpuEECaN9ZhS/m9KlG5vnk50BKb6C7BOpNk+I/+HZl4o3+ayvHUT5+6kw0A/y
         hERHvjB3+D10UpzS3AQ+SCSObivfJ3QKriioi5vktZZsDTevdSVCppFuLvTZEGcnbhWj
         PZZHQ9iku5GMti2vDYMXWIS5ZVfNJ34Ojk4gpdDOrJyhWDap9bITjhW75dN6/jUqBXfi
         R5zZqcYm7TfVdBfSUlZo3KCsicuqKJuLqG50ON5iBc97pDiXHcqM0w9Nwjj9DaZv+qgp
         4r6Q==
X-Gm-Message-State: AOJu0Yynx6+QL0xY0brNWDZB8rygR94N0RzEaXufBs/uorHA04eZ5qV5
	v1XB0pTpLdKj7MgJYSZD+oc32V0pDZpgLndXEEE+cQ==
X-Google-Smtp-Source: AGHT+IGIsaJR47ax6gzi+WxPKaKzmFJWDCzTOh00EWTxuEonpZFhqFrNTeIAYKVTU0ES42JDfdCmgRnw1PCX7ZDNeZ8=
X-Received: by 2002:a81:d209:0:b0:5ad:47ba:fa43 with SMTP id
 x9-20020a81d209000000b005ad47bafa43mr666424ywi.35.1698354217574; Thu, 26 Oct
 2023 14:03:37 -0700 (PDT)
MIME-Version: 1.0
References: <20230928111630.1217419-1-dmitry.baryshkov@linaro.org>
 <20230928111630.1217419-16-dmitry.baryshkov@linaro.org> <b779b911-dff3-420c-9bf9-5b7bef24337c@linaro.org>
In-Reply-To: <b779b911-dff3-420c-9bf9-5b7bef24337c@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 27 Oct 2023 00:03:26 +0300
Message-ID: <CAA8EJppFi6jJ=PKCdwBqM8hXdgp41XTY=QZkdiHkPPJ9KdTfTA@mail.gmail.com>
Subject: Re: [PATCH v3 15/15] drm/msm/hdmi: drop old HDMI PHY code
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Stephen Boyd <swboyd@chromium.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_140345_142416_FE886BF0 
X-CRM114-Status: UNSURE (   9.64  )
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

On Fri, 27 Oct 2023 at 00:00, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
>
>
> On 9/28/23 13:16, Dmitry Baryshkov wrote:
> > Drop source files used by old HDMI PHY and HDMI PLL drivers.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >   drivers/gpu/drm/msm/hdmi/hdmi_phy.c      | 216 -------
> >   drivers/gpu/drm/msm/hdmi/hdmi_phy_8960.c |  51 --
> >   drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c | 765 -----------------------
> >   drivers/gpu/drm/msm/hdmi/hdmi_phy_8x60.c | 141 -----
> >   drivers/gpu/drm/msm/hdmi/hdmi_phy_8x74.c |  44 --
> >   drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c | 458 --------------
> >   6 files changed, 1675 deletions(-)
> >   delete mode 100644 drivers/gpu/drm/msm/hdmi/hdmi_phy.c
> >   delete mode 100644 drivers/gpu/drm/msm/hdmi/hdmi_phy_8960.c
> >   delete mode 100644 drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c
> Uh-oh, is the 8996 HDMI phy accounted for somwhere else?

Yes, it is the QMP PHY now.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
