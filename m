Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24BE8C48BF6
	for <linux-phy@archiver.kernel.org>; Thu, 29 Feb 2024 15:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5+ayyBWjB4JJyN5mn8Yu8aRADDe0OJcGaxkIxfnGWE=; b=DUDCUvGNdpLVYQ
	b355hvuGtNhpmPLJXRaiAO8mphVmqg21mRQ2SSW4tlFcYnVA54rTrTgtrmm4Efs17e0HEfQxOD2rK
	v+n/J6gUnM1Ud2uHM2mduHjmOvFGz0dnGSzY+nXzwSMUPwbo5mMfQn8hrCGjsfXtNafYWvpdbx9B1
	xG8BPw+7s7ruEuXEvbS2ZUqS8LS0US5gcKs6cqAJP87bkFTML+9oEK928NB9oiypboYcykni1rovI
	5+qzjqJCDT7oSI54qiUuZxSyPFvmrqw2r1o+TyrUDN8MnBTRgbQKGzhd0F0Pny2tH0nhQWv86XaQt
	ZuYBT2TKBJStonbyuRQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfikK-0000000E9ZH-1rF2;
	Thu, 29 Feb 2024 15:54:56 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfik9-0000000E9Tk-0EyL
	for linux-phy@lists.infradead.org;
	Thu, 29 Feb 2024 15:54:53 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-dcdb210cb6aso1181377276.2
        for <linux-phy@lists.infradead.org>; Thu, 29 Feb 2024 07:54:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709222082; x=1709826882; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Srh+6tdz7RM48Lhk9oPRVhCIVS8iBO4HPXxfynqBJNE=;
        b=XCqIB/uhuC7BzWvrC7CSbpwq2BdYEwGWD4dhW5m7S72R5u5DnKc43nV9ZUtvAbkT9O
         ogjXlnlThufZKXSyLRgtKOANMlK4VyX+Y408SogAJs/FOC4R0ksd+8gNIyqUhjJDTupe
         K+dTfxgztaD3qI0G8LRDV2aa85CCk74NSWt2IJR3B4P7P2p/lzkGklP4ZU1HH9UhD+2b
         4nz20tQcZC+xs2/JjHJ3sNhv2X/R46XM9LOIqtENaTW+IQBfqM9IAMB0M/eJm1qB0H5Z
         QfGaUIb5CmPhFjEPEopf2JuugZIT7lCIECyadh8dQ6xEd6w2z3Me3xPpWkEJeKBQA5pc
         yfKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709222082; x=1709826882;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Srh+6tdz7RM48Lhk9oPRVhCIVS8iBO4HPXxfynqBJNE=;
        b=VrpNsdVSxgz/nNFaLJuo29aIxSi/hK8tsAPmJenDDFK3hHtjj84y5hu8tHoIdyj9vy
         NkUzxBw6VW4GYthH197vqDF1eYVtrQ1RDJAdR/P5WiWYsnHuTOk9ZOKeUma3YyXhuFU4
         mTeuFnK5l7+rS05Lsr1RGLIaqz19pszAOOZ4qgW1B7S10no2vdU3A5clkCZ4WnUAeA+q
         9nOo68Rdowg4vRbn7UFZLN0tXq5nA0993gRquEveFElKAG3/CyLLXPEGx4aRsFaf3/oR
         rQDm24MJtuGeZih9wZRUvF+7lk27F7JWeIShK19v1adN9IcrP/Z+feBlk9zWh7FO5vFt
         8wWg==
X-Forwarded-Encrypted: i=1; AJvYcCXxPEUluxdIaTDzh9WtzT66XSvMlxYZJtkUoUAV9xP+R6AE3YFRrPo+XPW/v7fP4/XWgkAiEk5z5iDF/ZDE21bcIImQsoEiPg9bvjLuhQ==
X-Gm-Message-State: AOJu0YzlpizZDo01QkW0z1zE/KZ0jPB2y7swqrfXeTGDHcqgA4HeInmm
	ia81RYuADcruUd3umXChaB5k9fVkABK+HWVEmbVc/asrTyvg8QS4KbuigtL7/iqUJ7Zvu7tdXCa
	I+wfhLHyitmpxS32c9KlkmSxxpVuwf+5JRHqr5g==
X-Google-Smtp-Source: AGHT+IGrY7X4RTDo8QjDtQgZG99mLAi+VyuWqElpCArGZNMLwpnq8A2MweEnHlDSd6Qps3WvhnJlp7ZvAlcScgpu2bM=
X-Received: by 2002:a25:2e46:0:b0:dc6:e622:f4e with SMTP id
 b6-20020a252e46000000b00dc6e6220f4emr2493033ybn.14.1709222081918; Thu, 29 Feb
 2024 07:54:41 -0800 (PST)
MIME-Version: 1.0
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
 <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-4-07e24a231840@linaro.org>
 <CAA8EJpoZn5V8N3=4x4AfYM91XBuCZx47vSS8tB-nCP=LvVsD6g@mail.gmail.com> <d50ca4c0-8954-4e4c-9ce9-2c40ebacf8b0@linaro.org>
In-Reply-To: <d50ca4c0-8954-4e4c-9ce9-2c40ebacf8b0@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 29 Feb 2024 17:54:30 +0200
Message-ID: <CAA8EJpq0E_t6bi4TymtpxdX0ZHHNJgBU2gFEEZDWSUZg27pEvw@mail.gmail.com>
Subject: Re: [PATCH RFT 4/7] phy: qcom: qmp-combo: register a typec mux to
 change the QPHY_MODE
To: neil.armstrong@linaro.org
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_075445_536634_0F6DE87F 
X-CRM114-Status: GOOD (  19.14  )
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

On Thu, 29 Feb 2024 at 17:47, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> On 29/02/2024 16:25, Dmitry Baryshkov wrote:
> > On Thu, 29 Feb 2024 at 15:08, Neil Armstrong <neil.armstrong@linaro.org> wrote:
> >>
> >> Register a typec mux in order to change the PHY mode on the Type-C
> >> mux events depending on the mode and the svid when in Altmode setup.
> >>
> >> The DisplayPort phy should be left enabled if is still powered on
> >> by the DRM DisplayPort controller, so bail out until the DisplayPort
> >> PHY is not powered off.
> >>
> >> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
> >> will be set in between of USB-Only, Combo and DisplayPort Only so
> >> this will leave enough time to the DRM DisplayPort controller to
> >> turn of the DisplayPort PHY.
> >
> > I think this is not fully correct. Please correct me if I'm wrong, but
> > it is possible to switch between USB / USB+DP / DP-only at runtime.
> > See the Status Update and Configure commands.
>
> Yes, but the current implementation is still valid because we need to
> have the DP powered-off before changing the PHY mode.

Even for switching between 2 lane and 4 lane modes?

I'll check how my USB-A+DP dongles work with respect to the altmode
configuration.

>
> I never encountered such setup and I have no idea how to test this.
>
> >
> >>
> >> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
