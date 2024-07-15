Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E926BC3DA4A
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jul 2024 14:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QCzn1EI+aaOwlBRIjTG4ALFVSA+6m/0wD2Dht0Ma5LQ=; b=dyGbKlCrNacd3K
	5aNoS5qJhZKPkhgscRUnSQQx3CTyzn6h5rqx+4Lc/ne3MuIRmhEu/+FEuvGRHyeuov/ukM1Wal5Y+
	Kq2Ke8yYPRoy7rxkoir09YMTSwOH9BxZsvBGFP+mkGr3PBGsIWD1VCXV7CDlzLlq4zDxq51Vf98hX
	+SFC1pN+XSxADTECmkUn2PImJURK9F/qxtOdRzD0X4CUxEVG9+zMbdjxBvVTZ16YtAKvMGcoH0WXm
	cDPxD799Vhy66hU+Cum/kVOlKjgy8k0RxePv/XIwfOIhlQhuwTHoRo68F20tFkJYMqemHtUh7t2M0
	uGPGqLBEsmOl7XitF1fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTMno-00000007OkI-2n1c;
	Mon, 15 Jul 2024 14:35:44 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTMnm-00000007Ojm-0q5Y
	for linux-phy@lists.infradead.org;
	Mon, 15 Jul 2024 14:35:43 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-52e9c55febcso5644780e87.2
        for <linux-phy@lists.infradead.org>; Mon, 15 Jul 2024 07:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721054140; x=1721658940; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4CA0j0qYgma9RsWWWam732StHneIHgNV9F5zSymaHAA=;
        b=GWblGKHTehV4TSafEODHibdIwO9HKYWIIeYz6mvKqj7Gc4KyUztUHVXmudxibictXT
         PnAKYXQhiL9344ZwXxOYhjjJWU+k0Wz1+tgPYARo1002pF86CURNGIRSkYx6WzEPaFeD
         MqYdeN8nrgoJxDWq/7XFA7c8AzqR1ulsitNHyIyHx2ivnzuD7qsm/OQ7X4sI9RK+EV7A
         CT5bt/9pvK+fqJFMr9kgnWqMSIoiZr/BGR4HBN+kiIEGLTgAcJBrsk4AHMIeL527sEh0
         /xTJu0E6M5gqF0Jv22t11dgkFF+ehl9U1cuFoMljUR0trHNiNtFFlzZGF1bsBOEllHWa
         vYQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721054140; x=1721658940;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4CA0j0qYgma9RsWWWam732StHneIHgNV9F5zSymaHAA=;
        b=KmS6ZwMZf+HK8mgi7IkIAhIdpclsScSpvGvNAexYHqXwkcWks0Z04z6bc4XmBz8rXM
         mc9m8DkMpSf9f0opusEQ4L6tH54SA+XPfkgIuPIR9csd44W8EXxl3e/N6C/FXpVKq/kT
         aHQsiGUBp4EeeasM9b5S5NvkTDGew4itvJwVClnxP5csZxe15DI9mefNeovPnnBbbfVN
         z+DDd5HtU5Wj79EVlsv6JRL0+gOE9kuEj7QMQ/ZMUinmhZHl6Y5hmYffZePEEQJi4EHf
         s1+hhjPaUAEeWJeyRnkh/q07qIz2mKivb0Ecy/P+aCyvhTQyM4/EK8p3pWk3GlElscdi
         V2ZA==
X-Forwarded-Encrypted: i=1; AJvYcCXibUx7QFIOugZZRClEkythwQmYXOFmKmEW+oywaxyGNIXZYt0ZIiherYF3CazjYHIp+8Fvc09if6jgzyuN47rbCKTBNlKH/A6u6ziTBw==
X-Gm-Message-State: AOJu0YwcUtvKv4OVA3jE/jufFvtgykI1IKSHq1S9M+sCMNcmUps5djm/
	nz+92j29glja2cOieCD99X1O1f/RUP62mheE8v2whPhW3NifPJXm7kWYrMtKcOY=
X-Google-Smtp-Source: AGHT+IEBt3FSZn+bEEmg7cFHAOhGiDVl/Yrs6OE8f3qL4sJht2Gmf/gnilyQCrhbXPJA9//YuXWhDw==
X-Received: by 2002:a05:6512:e92:b0:52c:dfa0:dca0 with SMTP id 2adb3069b0e04-52eb99d323bmr15414936e87.43.1721054139884;
        Mon, 15 Jul 2024 07:35:39 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ed2539b80sm863331e87.299.2024.07.15.07.35.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 07:35:39 -0700 (PDT)
Date: Mon, 15 Jul 2024 17:35:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>, 
	Jeffrey Hugo <quic_jhugo@quicinc.com>
Subject: Re: [PATCH v6 3/6] drm/msm/hdmi: add "qcom,hdmi-tx-8998" compatible
Message-ID: <ai4d3hmxomr4kavhbqgpi5olsq4r6r5abttjkvhn77lrepfbmj@qq7ytgkswe2i>
References: <20240715-hdmi-tx-v6-0-d27f029627ad@freebox.fr>
 <20240715-hdmi-tx-v6-3-d27f029627ad@freebox.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240715-hdmi-tx-v6-3-d27f029627ad@freebox.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_073542_263778_03147EB1 
X-CRM114-Status: GOOD (  10.48  )
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

On Mon, Jul 15, 2024 at 02:21:16PM GMT, Marc Gonzalez wrote:
> Current driver already supports the msm8998 HDMI TX.
> We just need to add the compatible string.
> 
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> ---
>  drivers/gpu/drm/msm/hdmi/hdmi.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
