Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF213C3DA6E
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jan 2024 10:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=laY3eCvfQAISf5SnYG21gCX9qfAVEei8pe3myetSyxU=; b=U+n8K62v80KgGB
	KmViOchHGHzdDvtMeGb5jXoD5votU1xjadRFZtj0mxXCjeCHqy7T6BV/QDQu+sw7M6d+jPOTfAmF7
	WqcjBPVnSzZXKEew5k+YBx0lbTtM3MjYh5VtPbcUORHEwkh5xLRWv/wtju4hx/ceZCqUtGzS4Xab+
	itwI7EJIXq5EAg9EAz764ErV9S2fOe32/+whOIUbRqTGEK/27a6K2KPcWUTyAbu0jnLOI8omcxjPi
	bbDF9yRA5JX9zZPoy6EgRkumntKqT4XfnKsMSAZaNmK+DfL+QQ6HFYwGAHAQezf/9p/yJNmcqBoFc
	wGVAXpjn6u2Rmfog5zDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMmt0-004c4I-2D;
	Mon, 08 Jan 2024 10:29:38 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMmsx-004c3x-18
	for linux-phy@lists.infradead.org;
	Mon, 08 Jan 2024 10:29:36 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5571e662b93so1344748a12.2
        for <linux-phy@lists.infradead.org>; Mon, 08 Jan 2024 02:29:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704709772; x=1705314572; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=J0INKQiw2jrwahwrMOC10qIoex00EN2Y17N016vNomw=;
        b=E5s6SOM2WjYWWOjA7wxRwEryQg7CmpBKDlx+IN/IAF8L6l0RerTl+xf5MxgOO4quGy
         EwsTDE1k9gNbm1U9ZhVIUIRv3AzYH/Ikvj15goiK8YumcZIzZvgU7uusCfMBuutsIuaO
         rBDd3k0vC+Fp95oTPY8uvYt18GsVe1uMFxJgSEbX/ce8Sbd5xDGuLZ+1D8M8DW5ThRpI
         PnxwHeqq+cLdIwVtLALPsYzneM3UkgB9HtGrwlHo7C0j3oiDvgmUjn63SUlLa9fq5mt2
         BvGpltlsAaY17VH561OPaSURWej8uVBaxFGdM1n8vHWkfd8SXUlcoCjRxpBnGDd/hrTb
         1ZzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704709772; x=1705314572;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J0INKQiw2jrwahwrMOC10qIoex00EN2Y17N016vNomw=;
        b=bJALS2Hycy2qENw1/p/bO8V+jV7siY9ACq/Idr42RJ7H1Qlizel9tHcKw/sjlVqKR1
         +BqOoZqghMtCHAwXmws2NkMrStqyqrKHr35qlb/Dq+5gpFpKr2YyO/OYD/oZPEmsWrUE
         1U+DBanxiJa5AnZwF2BuimqKiOPcCH88vs3ydWBBpAwC9P57rqSRZF1AkyhkqvAGS81V
         4sbfinh+FBiFvhOyUNAqVrnAXj6CWLlqgf7XaGubaO2Cdkf9vao+jLrkuRKAvs2WB+C/
         9ynHdsxlpDP60BobYRjuSjDu3JcqM9g9d6kWo7eYy57m/TUsxURKIG0Qz7o2szz+hURD
         L6mA==
X-Gm-Message-State: AOJu0Yx3E+5KBocpq2/nyjMsFFdEbSHzdvd7j1XPJ1mokDsD5FyUdNH3
	JslIVyq81grRO4YwOQuLW4xrxdSKyvyzRA==
X-Google-Smtp-Source: AGHT+IGZ5RCgxVpuPDDy9Yc9IgdivJoTADBX0bICoB3ZlcPnD70Nyp9tnjnsp7CWxfv8Dn3p9svcuA==
X-Received: by 2002:a50:8707:0:b0:557:1b48:b931 with SMTP id i7-20020a508707000000b005571b48b931mr1961869edb.32.1704709772514;
        Mon, 08 Jan 2024 02:29:32 -0800 (PST)
Received: from linaro.org ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id b5-20020a50ccc5000000b0055504002a5fsm4273174edj.72.2024.01.08.02.29.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jan 2024 02:29:32 -0800 (PST)
Date: Mon, 8 Jan 2024 12:29:30 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Elliot Berman <quic_eberman@quicinc.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] phy: qualcomm: eusb2-repeater: Rework init to
 drop redundant zero-out loop
Message-ID: <ZZvOih+gTTnxPkUr@linaro.org>
References: <20240105-phy-qcom-eusb2-repeater-fixes-v2-0-775d98e7df05@linaro.org>
 <20240105-phy-qcom-eusb2-repeater-fixes-v2-2-775d98e7df05@linaro.org>
 <158df3b2-a7fa-449d-9cc8-1e4cdf6ef49b@linaro.org>
 <CAA8EJpq88bhFFY2RcSEqaecoTw4a_ps6Osx5rJs3s0Mi7toXyQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpq88bhFFY2RcSEqaecoTw4a_ps6Osx5rJs3s0Mi7toXyQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_022935_459140_B89F0100 
X-CRM114-Status: GOOD (  16.17  )
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

On 24-01-05 14:22:50, Dmitry Baryshkov wrote:
> On Fri, 5 Jan 2024 at 13:44, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> >
> > On 5.01.2024 11:16, Abel Vesa wrote:
> > > The device match config init table already has zero values, so rework
> > > the container struct to hold a copy of the init table that can be
> > > override be the DT specified values. By doing this, only the number of
> > > vregs remain in the device match config that will be later needed, so
> > > instead of holding the cfg after probe, store the number of vregs in the
> > > container struct.
> > >
> > > Fixes: 99a517a582fc ("phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs")
> > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > ---
> >
> > This looks good as-is, though I think my proposal of storing the
> > peripheral base reg instead is still better, as it'd require less
> > memory (no kmemdup as the regs wouldn't be modified).
> 
> I'd second this. We usually handle such cases via the base + offset
> rather than patching the data. If regfields can not handle this, then
> the regfield should be fixed.
> 

Sure. Will do that instead.

> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
