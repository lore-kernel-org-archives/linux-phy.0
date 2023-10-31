Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92E6FC4332F
	for <linux-phy@archiver.kernel.org>; Tue, 31 Oct 2023 13:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HClCsFzcrU7Ue1jDJixjJ3JMbe0b2WGrxHY1iFI8XL0=; b=Vta/umGKcsWIiz
	ILnuldVY9ObQ3XbNtTNDZm9aUwk8qFlLLvBjOmniQYEwQDQT2vKD+XNjaL5I4ySBHqlQtxbLqXf1H
	e0IuKsCgAif00dSBzteMvBVpFMGPysf2/5VObRKOehBsolgrz/9BN6hvzD+ewLCJEavPItvGfzXLR
	pxAb3QQ3Jw8hOWuXJGXlTw9c9Vo4Y+gJZ44CdkMRnO9nqadu1W11AIZECCY+ZgL5Uud1Lwq6XZFVB
	Q1d0nuGo2ZMYiXGwkFlKKL4ptOM3xNs2gA+EWX+wYxqH28/khkkhPrxRskkszfqmFVWlRrD9I17AE
	0t9sfBMKv78/TPaTAkOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxonQ-005LSb-12;
	Tue, 31 Oct 2023 13:28:40 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxonM-005LRY-1Q
	for linux-phy@lists.infradead.org;
	Tue, 31 Oct 2023 13:28:37 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-d9caf5cc948so5106987276.0
        for <linux-phy@lists.infradead.org>; Tue, 31 Oct 2023 06:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698758913; x=1699363713; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Vkk8ZCgsYoi/AnkxKAKmjXFYbNerVSNaR8gjvx3gGLI=;
        b=zdA8PUiA3C5Y5o190UYOWlkKFM1/4imYviN+yjc9d4TppLXcdPlMtjJfCd3qZBM9kR
         4jUPqc/0qMSVsE8jLFyaV96qc6rO7epbH0oRJMCwEElKUtMpNOhs2xMUceoBm5GqmE0w
         VwhGICrUFl3b/2KE73eP837K2lQLnKXhKtbMwJf3NpmQLc8Anc/UhX5NFAbbiHo/zuin
         3YZkybxS+6EBfI5uHgiokrtvYFnDKfOIPoA9F2gMQlqakLB+SKgC3tt2ahWTKp/suUFn
         zUo9MCsc9ZOq7r0G1ZoU4G2ECQDvVUqfe9XGAzyqX/j5eP3cgN6eSwg7lQOrxpqfmkcu
         GprA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698758913; x=1699363713;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vkk8ZCgsYoi/AnkxKAKmjXFYbNerVSNaR8gjvx3gGLI=;
        b=gmtcy2QApy0TsW290kc06fTqxT2U6A839wMhLSYAyMpLLQ2SswPlioceX0TH/gCdyo
         9k6R3/tbv7mCbPDPWxD2lEfV6a2ImitC6REo2K0Rsd+FwGr+m+Ztjn1N8cKmECzUc9pp
         AVpChLFGxOEKfvNkJiNo8loLA9Zj9/O0YkacxKIOJdhGaUS+P6NB7ITJXMawFWZBcM8V
         +FGZw10GY4p68hTWCeu9+YwWHIpkHee+Nk/VgWAc6sn8V8ZTRxbOsuEjo5dyUS0oLHIW
         PIaVGtFAS/mK89EupsWci749y7IjWeALIh4noo3FAlN1Edwh8JYaiOUSFtM/aBaKU/pd
         xVnA==
X-Gm-Message-State: AOJu0Yw7mM0+vraYpCXtdxxorxZmcLqEk1VQvB/irdTjSaVYHntGQgRj
	rxkxfxIXWFoTaQRFLd3WCQ3OFAgNlitYPNSPRl3P6A==
X-Google-Smtp-Source: AGHT+IFxGRQfCveVDXVJVYYAtbgwY6/eAygWWpBIQ5S0HJJ6v7iBgo2Jge7ptyq+gUT1DXQGHLc/CMOxuUr+u443Pmg=
X-Received: by 2002:a25:c541:0:b0:d9a:5ff4:cfde with SMTP id
 v62-20020a25c541000000b00d9a5ff4cfdemr11842307ybe.13.1698758913054; Tue, 31
 Oct 2023 06:28:33 -0700 (PDT)
MIME-Version: 1.0
References: <20230928111630.1217419-1-dmitry.baryshkov@linaro.org>
 <20230928111630.1217419-8-dmitry.baryshkov@linaro.org> <ca3a0d84-befc-4426-8cdb-ea9d55e7fac9@linaro.org>
In-Reply-To: <ca3a0d84-befc-4426-8cdb-ea9d55e7fac9@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 31 Oct 2023 15:28:21 +0200
Message-ID: <CAA8EJpqbMT3+53NndkjvJ67KvURYsbwD6yfT4v6KowsiYdOR8g@mail.gmail.com>
Subject: Re: [PATCH v3 07/15] phy: qualcomm: add MSM8x60 HDMI PHY support
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
X-CRM114-CacheID: sfid-20231031_062836_479905_3EB1D880 
X-CRM114-Status: GOOD (  10.95  )
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

On Tue, 31 Oct 2023 at 13:17, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 28.09.2023 13:16, Dmitry Baryshkov wrote:
> > Add support for HDMI PHY on Qualcomm MSM8x60 / APQ8060 platforms.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> Do you have the PLL working locally? Would it make sense to ship them both?

I do not have APQ8060 / MSM8x60 platforms, so I can either c&p the
existing code or I can drop it completely.

If anybody is willing to donate and/or lend APQ8060 or
MSM8260/MSM8660, we can probably fix that.
Requirements:
 - HDMI output
 - UART available
 - fastboot or network support in the bootloader

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
