Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB248CA100A
	for <linux-phy@archiver.kernel.org>; Fri, 30 Aug 2024 23:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZbbriXGU+kstpEMSn5HGEiRzKSs+58c95CYYD6gBRYQ=; b=qzSIk+uabNzQli
	gQV4sTMkcOUH+2NgfBgkJOehAJncnQyCih4bSlvQAqFWlis2btVlYwDFcHqHSWFEE3Mw526ayZcht
	tnViI9j8FMVwJRpSSN8RfhLZwCr1EaA0OyHIGBI0pOIBmUYlMEqsOQwpHOUvc+kGyhS3ZHQR7MK2O
	8vauC7NevctnL0aK7Im/VNRsvxXQEmT0FDhZjPoAe69bWcRnoGDRVAQT/YCfmh55jhyZwS4HHM8aw
	53ccOiyht54Eogf3akzkv1hKdXfmRN3ukOPteMA938w2/9Z0dIQwUGD7vzdj/BLp1bh+qdogUIiMW
	bI75iKLCSTcpjmQrmapg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skBIu-000000082de-1mvG;
	Fri, 30 Aug 2024 23:45:20 +0000
Received: from mail-yw1-x1133.google.com ([2607:f8b0:4864:20::1133])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skBIr-000000082d5-3FRN
	for linux-phy@lists.infradead.org;
	Fri, 30 Aug 2024 23:45:19 +0000
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-6c130ffa0adso23738547b3.3
        for <linux-phy@lists.infradead.org>; Fri, 30 Aug 2024 16:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725061516; x=1725666316; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=s6RDRV/2cMLBxQkdzyFPsx7+tarsO2IXXvRThC1aAb4=;
        b=ZjdMNz8zILh2D65wOhS4xGduVitB7wFsAi9t8KGaWJumKvZFFBlCRuGx0AyAMUAfmz
         t2I3mdOfinzh7C8igZ3r0RKES/tWFbDTZyZ+f/ZuY+n5MuhDR9+iqaWmlSrEZIhWoQJ0
         8XiIxf5Kh8We+dHHGx1e86fEUbfGBrZ5NOavjkvaapQSXEGEUOwhvdVA/0JRRrK50pit
         BJPV3JNYBx9eDNRjP25eT8+uIATlI6Dh+01z7iKnydYaZyktr2oaVsPqLVrDK+PIdbCP
         Qg3SB4wJKqamUXrMSDpf8FiXelpEofxWGHnFGJOUkfXXvACzw46iVWTiA6hbscYNjwZx
         tnIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725061516; x=1725666316;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s6RDRV/2cMLBxQkdzyFPsx7+tarsO2IXXvRThC1aAb4=;
        b=tO0PLA8sdD9HoiQFSq4wK7tMAUiVszxzTvk/gkE7MmJAEsUWPwg4yqW9gylTGjg1Dn
         Qnp1saxsJcdIH/QsPd+qKHb3DoeL5F4DJ4kjM/nGnHCrPg6cbkkmhy/vL7NBiZmp6/7t
         gfpL7RUCS+wdy1hLWpc7Q6EiEJF3MMQD6fWR4/jSLIoKYXW5IG0LPQv83NQmLPPzNGOX
         Zd4XWLU8jpKlqoAviKcHJY7nt0Ms4jTa/9hgtVAQ/w7TWOjbaisUOWx+miWURNUrO5H7
         xzFz+sqxftp5frjvN3aj7x4KsXNiYf9BDM/C7rL6bkXn7ACeBfVdMNyPKlvbLEir9egL
         3OIg==
X-Forwarded-Encrypted: i=1; AJvYcCVgoG/YNiM05T554dF9jOxEhBv2vFbzFHLKGEwrUA7bkl0a4DU3/1JFsAAv3s8Nf+DArsARBpbGNFs=@lists.infradead.org
X-Gm-Message-State: AOJu0YwLyOVTdKxZRON+AXKkIhMqM+ASNF3pwwaPdNo0lIPAXg+xZ5aY
	8v2fwk4209+ll+vUArLzbY4wCervD9zXGLW3A0xwcuoqO9kbwWgxK9rzGXGgD03OZkA5qTFH2Qa
	i2V9vKYX1d+PiXtAfyxiZQm7C2JVvUgyZ6Vdi6g==
X-Google-Smtp-Source: AGHT+IHfhSbm43+Kc4Ly206lcH17lzoQ0MsCuKhc2fSpqgnSY7QJASQeQlrIK7n1P7aXyz3Fk75oT++EVgArwU/kRyY=
X-Received: by 2002:a05:690c:660b:b0:6be:28ab:d873 with SMTP id
 00721157ae682-6d40d88b9e1mr47313387b3.2.1725061516161; Fri, 30 Aug 2024
 16:45:16 -0700 (PDT)
MIME-Version: 1.0
References: <20240830-nxp-ptn3222-v2-0-4c6d8535cf6c@linaro.org>
 <20240830-nxp-ptn3222-v2-2-4c6d8535cf6c@linaro.org> <6fcaa893-70a4-44f4-afc0-853799e30774@quicinc.com>
In-Reply-To: <6fcaa893-70a4-44f4-afc0-853799e30774@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 31 Aug 2024 02:45:05 +0300
Message-ID: <CAA8EJpoTb_-HtBPv2=FecHvtHYQD4ipqfq3C98ky=qXEXB=_6Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] phy: add NXP PTN3222 eUSB2 to USB2 redriver
To: Song Xue <quic_songxue@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_164517_852139_2C73B277 
X-CRM114-Status: GOOD (  17.97  )
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

On Sat, 31 Aug 2024 at 02:13, Song Xue <quic_songxue@quicinc.com> wrote:
> On 8/30/2024 4:20 PM, Dmitry Baryshkov wrote:
> > The NXP PTN3222 is the single-port eUSB2 to USB2 redriver that performs
> > translation between eUSB2 and USB2 signalling schemes. It supports all
> > three data rates: Low Speed, Full Speed and High Speed.
> >
> > The reset state enables autonegotiation of the PHY role and of the data
> > rate, so no additional programming is required.
> >
> > Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> > Tested-by: Konrad Dybcio <konradybcio@kernel.org>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >   drivers/phy/Kconfig           |  11 ++++
> >   drivers/phy/Makefile          |   1 +
> >   drivers/phy/phy-nxp-ptn3222.c | 123 ++++++++++++++++++++++++++++++++++++++++++
> >   3 files changed, 135 insertions(+)

[trimmed]

> > +
> > +MODULE_DESCRIPTION("NXP PTN3222 eUSB2 Redriver driver");
> > +MODULE_LICENSE("GPL");
> >
> The I2C driver just realizes the function on reset and PWR. What about
> other I2C driver function like I2C interface operations,

I don't quite understand what you mean by this. Could you please clarify?

>  auto-suspend,

I think you mean pm_runtime here. It's a valid case, but granted that
it should stay enabled when USB controller is enabled, the gain should
be pretty limited. I'll consider a followup patch implementing
pm_runtime for the sake of being able to disable I2C host if DWC3
controller disables the PHY.

> remote wakeup,

Not supported by design. PTN3222 doesn't have IRQ pins to report
events to the host.

> memory maps etc.

huh?

>  Who will enable these? I think it is not
> incomplete I2C driver, if on someday, ptn3222 is used as I2C device.

Well, I'm using it as an I2C device.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
