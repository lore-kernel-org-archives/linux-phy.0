Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D505FC46CD2
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jan 2024 00:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+GOViUPtPBxcQ4i4XYPStD68fGROcQWl/3752S3KSik=; b=hpzV2aeVRyKRPx
	8kzF39yZRDyudP3ic5dQfCFsIQsglu3JRfJ2J3iFqdVp+MH1IiymJwW5FHm4Zepab3d18eWW5cFJH
	BjH/Muo+PrxBTAcZk0luhHhFhRXgfYA2h0rHffNu38ormG1D8ZKcwW3KLR+ERRmCqF9O+ljgmUgO5
	sOPHNlgRFqdBwexRH1mAz6dCTuxbqCvOm7GalSzbvaJpp88AOnsPPW775jE/3fE3JQiGlUakUU/fu
	77QoY72GQMt6TwK4ULMGrOftVTCZTJyNFKST8RLveq6KIgz7IdM6IQd/WLJC7W5hQsSO1dajo2haq
	nLEFLK86GhVAPDivCYOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSnI8-005dcI-11;
	Thu, 25 Jan 2024 00:08:24 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSnI4-005da0-1g
	for linux-phy@lists.infradead.org;
	Thu, 25 Jan 2024 00:08:21 +0000
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-5ff7dc53ce0so46933147b3.1
        for <linux-phy@lists.infradead.org>; Wed, 24 Jan 2024 16:08:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706141290; x=1706746090; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=a9zJESR6jJ2yZin+7bBkOo/7z2GEvxg+haubJzAIAaU=;
        b=gaqJCBiWVwEyTSqK8IX3XIYcgkWdQUfziuj0yqLppzThokIrqRtm4b1K5ICZ6e/4We
         hgJkaSNpugkIaMwzcM2/Zxmt+oTgzuYGEbY6ZAZwIQgVu84yqZA9hv8/hgK98nLMHn0F
         yeCNrn0CHrYIM/StsXyVRhCrenucBW81s2Mouscr+RWdPsHXbo5sRH3BhEUzT4Kp/sy/
         znzWctcTOlMMt40anE169K3x5pK9lbRcKHxjwrjtU7xfTgOR+9xx/jHWGWeH1QyBgB5M
         U1DQ5ZNnw81tTpQsaxhW/c3XTLYUPLoXChPgksnuJ//S2CypY4DgZKDXN6lH0RfW00z7
         7yIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706141290; x=1706746090;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a9zJESR6jJ2yZin+7bBkOo/7z2GEvxg+haubJzAIAaU=;
        b=JE4w0T89x2XUlZLJ6tWnPBKYTJqKUy5WuPY46MvEI8a32Zi17FbyAGKjXLeae3fVqc
         M+LvtZizBfeaRUkOgXRD/LwCrZ/B0zAW1MZsUTMBzIpJiXVRgkny8HGhxXyqg9JBl6XV
         a2+sY8WaQkHbXadPzutyHGvuXdStWurcg/oNQ2oMG+RftWdsr420heTykFtvXFTH+Dly
         d7ndDkCHUnNWf4KzpdN74ydFRkQOJnf21Ty0cf8XobdrM6+MsBAGp3puH2dZX4n1wfNb
         7KszZk6rANdt0uJeuPav5QNmX2J1xqeaTP5/wGLSxrkup6jHKm7d30kG07hcDhsdQedT
         LT4Q==
X-Gm-Message-State: AOJu0YyCq08LBPjLAEoQtbSLnQwAE1aAdrzcBhVrtajhRzONflbksw7k
	nebF8yiLDf5ueYEw2rMgvCMpnFX6GbU74CUlswCGiS/xPjK7vp3WPZMklrhfvv6SIAXXyok8471
	DLzz099t0f5lV/uk2rLWMN1rYVrp+sNZwcay+NA==
X-Google-Smtp-Source: AGHT+IHyZkzZsMBMHXjFP5m3KVk6oKNR1/dMvHgS5VJzm0aLrkrbyapIDbkoVi7IoS1m2aLUZozj3hOStzfoHFNh/+8=
X-Received: by 2002:a81:840a:0:b0:5ff:4d76:e2e3 with SMTP id
 u10-20020a81840a000000b005ff4d76e2e3mr1259447ywf.63.1706141290473; Wed, 24
 Jan 2024 16:08:10 -0800 (PST)
MIME-Version: 1.0
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
 <20240113-pmi632-typec-v2-9-182d9aa0a5b3@linaro.org> <2e07f014-0884-49ca-babd-b89cc90a16b7@linaro.org>
 <CAA8EJpqPqV_nHxxbo2Vzwcp__hvREjF3bhduGhM=7UpuOgBxTQ@mail.gmail.com> <ZaaRZ/xi8vyIKD5d@kuha.fi.intel.com>
In-Reply-To: <ZaaRZ/xi8vyIKD5d@kuha.fi.intel.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 25 Jan 2024 02:07:59 +0200
Message-ID: <CAA8EJpq3LAzrdTXtnCskc0Md1e39Yo1+AQLHmOBVfgax4HEjKw@mail.gmail.com>
Subject: Re: [PATCH v2 09/15] usb: typec: qcom-pmic-typec: add support for
 PMI632 PMIC
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Guenter Roeck <linux@roeck-us.net>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Bjorn Andersson <andersson@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_160820_556753_F54246D5 
X-CRM114-Status: GOOD (  15.24  )
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

On Tue, 16 Jan 2024 at 16:23, Heikki Krogerus
<heikki.krogerus@linux.intel.com> wrote:
>
> On Tue, Jan 16, 2024 at 02:56:11PM +0200, Dmitry Baryshkov wrote:
> > On Tue, 16 Jan 2024 at 14:32, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> > > On 1/13/24 21:55, Dmitry Baryshkov wrote:
> > > > The PMI632 PMIC support Type-C port handling, but lacks USB
> > > > PowerDelivery support. The TCPM requires all callbacks to be provided
> > > > by the implementation. Implement a special, 'stub' Qcom PD PHY
> > > > implementation to enable the PMI632 support.
> > > >
> > > > Acked-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > > ---
> > >
> > > Still not a fan of stubby stubs :/
> >
> > Me too. If there are better suggestions, I'll be pleased to implement
> > them. Greg, Heikki?
>
> Guenter, do you have time to look at this?

Heikki, Guenter, just a gracious ping for your opinion.
Probably another option is to read pd_supported (or all caps) before
checking the callbacks and then instrument all calls to PD with
pd_supported checks.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
