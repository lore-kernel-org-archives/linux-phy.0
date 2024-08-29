Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE92DC8302B
	for <linux-phy@archiver.kernel.org>; Thu, 29 Aug 2024 10:19:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=spqy7ZRJdCHo4HAeNMntVBS177b8LjEZTNiPGcVXcIk=; b=pHQQA5gHcrqyGc
	qSN3p2QtsbjKHXBKWVpVX3xgYDH3kyJR1HPXDoBSISZkafHW9AvAgD2LhPheyW8MRIJw6M2538RpG
	TD18uRg2DpCUCqtaLIFTeMqCPhgWzh2QfUQZ3dWRt0K4rnsdlkbyflwtM05OymiZtX7TbdE+DfEnh
	14PFyrR35HRgZI84pnuYBopOX9GZWRBs3sIaMUdGAR9jxpkvLJ2canleBqoXayAwefJoPUL6rqHDp
	9hESCre2/4ibybZDoOfgxAOeld9zdD+PO/mIoXuICWF2vgDoO9UNLmnYCyVBg2JOKUkTkklt8Urc+
	KO6RszMgOKyR9cYxtVEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjcFX-00000001Wq0-1vcb;
	Thu, 29 Aug 2024 10:19:31 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjcFV-00000001WoH-0JzW
	for linux-phy@lists.infradead.org;
	Thu, 29 Aug 2024 10:19:30 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-5343617fdddso844372e87.0
        for <linux-phy@lists.infradead.org>; Thu, 29 Aug 2024 03:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724926767; x=1725531567; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dsgEl12pS5/oK+D6m4jiXUFGwYqDk87JRvruFRHJCvw=;
        b=O2iDD2RJqD/0A0SEoxJ7pKaB57BP/OAhYo9ZJvMoV5Nky3EzLN+kChvPqt4a3MYHhP
         vaNOmjlbe4dCPQXGIjVLWrKk4TVM1Ubq9aiwUSmaq5qqJaad9v03SPjTtaoEcDSXp87j
         7kN8B9rkkuCFgCVnkOgLWImcDBC6U7iu1Cnp0D3Q7fnMebXa+3U9xfaEGdSmjYsTtQXV
         6q9QqLIKu8W4je5LmzNPK1fVhYl2Bd6TpGxvjshIrbtBPaE41EwHja8DcCQnyA27qHNl
         eM3UeTzO4zj8sLWaeCm2CrQ6goDAxdnpL3JSUfjoqYF7Abgb8DP7yGNLKvtwF4vy2hXX
         lJlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724926767; x=1725531567;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dsgEl12pS5/oK+D6m4jiXUFGwYqDk87JRvruFRHJCvw=;
        b=dOVMD2orPQ5sigcOgy+P3tFH8q/hBk16KrR6+oHmUib5pX8/pJ3CMK6+JQP6dtubb7
         VadocVaGSWSI5Z23F00FYnxBRnvgZGVd46T0Re/IMthvXZhaXZdWWxGbcvKxycMApJCL
         fYrPQDUJ+1i2yVpfs0FGsE1xqQPCQsX/5cCx7qr3/ZnfvnpQgHszSCGvFgJH5WIWkmtw
         k1vHMDlj36JHyeOf1MagXliOMl7XptrH8JsHPOgUChVm6hhFUGv6fNbFyD504pkRUcdU
         UR5XmM88WS/DPXxmj5E0kqqQup+f2vQ8X21Npij3iG8/hrB6j1HF+58NxuDXA6ETGyB3
         ooAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWiX6+ogU7XJrzlglDH84kp85QjkOIRyTcfe8+q2s/TyHqZ3GqmLZfgB5zdTyQ9WcYr4GhsoskZ7d8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz7psj6IpWMwj59kXfjeTI5JyR3eGk6yfhGfb/MGC4Gix0Y4bgK
	ZfLY5Nx3c3JofGjQ6ge8Rr9NC1PUN65yVEoT0Uyzx3pK+/Lu8KI6qyr8wwdYjNs=
X-Google-Smtp-Source: AGHT+IFI/J4pmYQEU4+SHn18VCyisudN4k2godV3tyoAlPi2LbLETrSD6LA/Lou8PXucHxARCjq3Jg==
X-Received: by 2002:a05:6512:234b:b0:530:b773:b4ce with SMTP id 2adb3069b0e04-5353e575f40mr2138577e87.33.1724926766646;
        Thu, 29 Aug 2024 03:19:26 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53540827af9sm116406e87.170.2024.08.29.03.19.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 03:19:26 -0700 (PDT)
Date: Thu, 29 Aug 2024 13:19:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: neil.armstrong@linaro.org
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: add NXP PTN3222 eUSB2 to USB2 redriver
Message-ID: <izr7linltwo4kbpp4dtls7bahvk4a2hwtqaz3fyuktjuiudqly@ivulir54ktxk>
References: <20240829-nxp-ptn3222-v1-0-46906bc4747a@linaro.org>
 <20240829-nxp-ptn3222-v1-2-46906bc4747a@linaro.org>
 <79a643de-9808-4866-9e41-8bd5ab55ffed@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <79a643de-9808-4866-9e41-8bd5ab55ffed@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_031929_137088_AEA40A59 
X-CRM114-Status: GOOD (  15.90  )
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

On Thu, Aug 29, 2024 at 10:30:49AM GMT, neil.armstrong@linaro.org wrote:
> On 29/08/2024 10:21, Dmitry Baryshkov wrote:
> > The NXP PTN3222 is the single-port eUSB2 to USB2 redriver that performs
> > translation between eUSB2 and USB2 signalling schemes. It supports all
> > three data rates: Low Speed, Full Speed and High Speed.
> > 
> > The reset state enables autonegotiation of the PHY role and of the data
> > rate, so no additional programming is required.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >   drivers/phy/Kconfig           |  11 ++++
> >   drivers/phy/Makefile          |   1 +
> >   drivers/phy/phy-nxp-ptn3222.c | 119 ++++++++++++++++++++++++++++++++++++++++++
> >   3 files changed, 131 insertions(+)

> > +
> > +	ptn3222->supplies[0].supply = "vdd3v3";
> > +	ptn3222->supplies[0].init_load_uA = 11000;
> > +	ptn3222->supplies[1].supply = "vdd1v8";
> > +	ptn3222->supplies[1].init_load_uA = 55000;
> > +
> > +	ret = devm_regulator_bulk_get(dev,
> > +				      NUM_SUPPLIES,
> > +				      ptn3222->supplies);
> 
> Suggestion only, you could switch to devm_regulator_bulk_get_const()

Good idea, I'll take a look.

> 
> > +	if (ret)
> > +		return ret;
> > +

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
