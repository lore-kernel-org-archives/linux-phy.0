Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA5D7D78333
	for <linux-phy@archiver.kernel.org>; Mon,  2 Dec 2024 16:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/JB/PLoUQF4qraJQ+zcBSv27A0BFDpEGJCEpLyYmB9Q=; b=Nz3Z9O4Q+Og93A
	FYIp8Up/fq1DtOakt6yFAq0CuMpweH5wMhKKvOzhFOktn+brS3nVBfZky8nnuh4eRHI7iHDNO8sgb
	lKFxlf3YNit6bTJ8hz6XukbG4nmYmAPGqnz6wLRCXZMghE0+kFatNNhYZvzYJ/jWWTF1bXXuFmLBL
	JJfVQ3SWXyOz2B9/D6wgoD4hK+52j49JorURVaMqiQ5a5SneCoOljtwILPummr4VeIN2M7jdYMFWW
	nFnWU8P/GhO9v1PPre/RDR9a6AH24htPk19YGW2aUqnzbuvRtFpoPsl83iULfvDFZoe3SmOuWfsgU
	+ZgYXXTJ9GwQniIVK8eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI8yn-00000006mml-0TJF;
	Mon, 02 Dec 2024 16:08:57 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI8eo-00000006id5-2EBI
	for linux-phy@lists.infradead.org;
	Mon, 02 Dec 2024 15:48:19 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-53df67d6659so6621870e87.3
        for <linux-phy@lists.infradead.org>; Mon, 02 Dec 2024 07:48:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733154496; x=1733759296; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xfHRG0ckbabpB5WkAOGLFC/tsNXMkX3A9rmcYDbuN4Y=;
        b=LZT4Wkx4kshpftM1jo9I/BqTqFp5mKxd40r+cx+KsI/fTAHedXzflCbBlZmoul2B1A
         dIIe4hzykTdJPvhNGBYu25/6VmM0AZgn1Bzs6+8+BWadqV2bIeJDedtEv3VYln4lFyWy
         +Uw4d8gQvGahVb78XFrIBbOzm2eHnMMiSstmny9pkE3XxVzRV15waYvAeHyuFucSjeSm
         g9F1lSrVoB0og4M3niDcZrk/O4WHOvYbp94Pxhh0QiIj/uKBoSLc7epP4YfyGCTUug1p
         vMQkL/a97+F5FVs/D6qEB/T39yBtVyupF29n4VwPleZu7xKpICiE9RzLKR/c/ZwueDbJ
         jy7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733154496; x=1733759296;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xfHRG0ckbabpB5WkAOGLFC/tsNXMkX3A9rmcYDbuN4Y=;
        b=IGcGQufuAWA+P+3fU6MQAkaJ6NexcVj3XmewxEDevbEo0vlXH79XVDuYlyTxkV+PxC
         KUYiPYOhIT/K4Io5KmTs2US1WA6ea1EpD2WK/knlMzcWNfftZ6RJb4UP8Hc8GHomIW5p
         3bsK3i1fJuR6tykgMg1FFfbS2kai8DHJMCu/F33H+iZOBVljK8C2LvapM7edP8zrfEE7
         ESZ+rVYEc9w1Ndso0XIlhNls/yKXF1OQf/ow5evrjCPPvOKttjSrb/lXxAmWlpHTmiQW
         tuaAn1G1xdc5KWjzssg0Nt31e6eOvXFieByJ/6Xo6GjDIb11Uttac+T3rvZ3g/RJE00p
         V6Sw==
X-Forwarded-Encrypted: i=1; AJvYcCU8QBEUu+cENJyAioTqkOP1rM0x4ee9Y4H0ixYRccuY7BUNudAQu6hnRBmeDMCrQ1rwhreFkwfWAvc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5iOC4gidM6eLCTDav0bLXOrKKeB3He+KulncrMO8aQy0CQiLg
	HzA0LuQbDYRn/XKJIpbst4wHS0PTpBHmEtNXxFoJl4flh1bm7q/4UxNZJTH9f+g=
X-Gm-Gg: ASbGncu6igKdQznDb7jCTsXsezfRbyH/Lze8AsxqTbAy0FIIxCOZDSPYx01G67MipEl
	FNLN0esJiCK2eqFEulKr/FBYHoCYkGJoZ0Kz+ZEr8tKL1hkuxoHeLMGwyO6UnrCUw43I8WBNwUc
	1L06mngsnH4KPLevMvcLx2gTSqf+DpA6Asy30sNyHvCxoFmVjNYLSFoAbUtEj9SA2bsOQGl33Ls
	djFqIUyTy8g1A6EM5mHGa1bgHsNPOd3sRgTTJOnFlxgLqY5u6X8ZdJ8gJPejGGUYp4CF3S4CZVR
	ceOWmcYgy122p9db+VPbrsXu368qAw==
X-Google-Smtp-Source: AGHT+IG0Q5k/W3ed0OQwMlkM6qlSogEM4cPmSjYiJhbwpudSDr/7EC5mlTOxyGWNLuXKmiBWsxS+wQ==
X-Received: by 2002:a05:6512:3b0d:b0:53d:ed95:9bfa with SMTP id 2adb3069b0e04-53df00a96d2mr17148818e87.7.1733154496365;
        Mon, 02 Dec 2024 07:48:16 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df649f638sm1511742e87.239.2024.12.02.07.48.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 07:48:15 -0800 (PST)
Date: Mon, 2 Dec 2024 17:48:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Xiangxu Yin <quic_xiangxuy@quicinc.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, quic_lliu6@quicinc.com, quic_fangez@quicinc.com, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH 3/8] phy: qcom: qmp-usbc: Add DP phy mode support on
 QCS615
Message-ID: <gnrdym5o345fsbtxmfis6ykep7mzvhkxxnizlj5xplrsaaijjq@5465y2oamqoh>
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-3-09a4338d93ef@quicinc.com>
 <b310587f-c6c3-41dd-83bf-6affbcc65730@kernel.org>
 <22600892-3b0d-4b0f-9c46-e74241960dda@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <22600892-3b0d-4b0f-9c46-e74241960dda@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_074818_576381_F15EC6E9 
X-CRM114-Status: GOOD (  14.90  )
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

On Mon, Dec 02, 2024 at 06:31:44PM +0800, Xiangxu Yin wrote:
> 
> 
> On 11/29/2024 4:18 PM, Krzysztof Kozlowski wrote:
> > On 29/11/2024 08:57, Xiangxu Yin wrote:
> >> +static int qmp_usbc_com_init(struct phy *phy)
> >>  {
> >>  	struct qmp_usbc *qmp = phy_get_drvdata(phy);
> >> -	const struct qmp_phy_cfg *cfg = qmp->cfg;
> >> -	void __iomem *pcs = qmp->pcs;
> >> +	int num_vregs;
> >>  	u32 val = 0;
> >>  	int ret;
> >> +	unsigned int reg_pwr_dn;
> >>  
> >> -	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
> >> +	if (qmp->type == QMP_PHY_USBC_USB) {
> > 
> > 
> > Sorry, all this code is unreviewable. Organize your changes in logical,
> > reviewable chunks.
> > 
> Will create new patch list and seperate patchsets.

Please respond to the comment regarding the single PHY vs multiple PHYs
first.

> >> +		struct qmp_phy_usb_cfg *cfg = to_usb_cfg(qmp);
> >> +
> >> +		num_vregs = cfg->num_vregs;
> >> +		reg_pwr_dn = cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL];
> >> +	} else {
> > 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
