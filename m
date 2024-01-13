Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 874F4C4706C
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 14:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OCq6j+Fg/Dep6AFJlL3OZGUpO5+iitP0j+CE5Rw9cTI=; b=sb/U5figu9rvti
	FFQxOKPszyLX6CMzBuweeTlrDar46+gKpRGwJ1PRXDJJrhhrTu72hs4YYey1LKsuIKqm1iFyKljZL
	MSJKLhIZFcHW5l2T5o/YFhTDzIzw8vd12HBGeASwck7n0rTxD1MvD07K62FHCGUsNDupiEbRPLnfl
	bIqPQmjhnZPJ+1dvQAd+ZSjXk3DcV58EyTmpKcyS+1vmJMGb1YnhAD9ZAooGMcNOfGSmT8tBQSnHW
	0jZfy7h3EFvl7suFWeQ27uZuF7Fr1zGb6FY2NNOU0d8Oi1bohdiGCsmPlSFtMrCYyPaPEODY29qq9
	jlGRUQb817iKL6Bfodsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOepl-005EJK-0g;
	Sat, 13 Jan 2024 14:18:01 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOepg-005EIs-2h
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 14:17:58 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-dbe69afb431so6332866276.1
        for <linux-phy@lists.infradead.org>; Sat, 13 Jan 2024 06:17:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705155476; x=1705760276; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FpapplPXSwA8dgQHySDipjmJ1OdA0p6AH2z0SETgUb4=;
        b=GxIDYc8v39GW41JwgwhEUjCSZ0Ny76ZgyPnYHDnGknHFhSclxbB7v2GexaQHD9JUV5
         8HOW11SUY0JTxPxECDhVxXAm6fIo1ZVYYeRYMnUFSv3/OIz+sz5bPGZHosMAG5ixkjRB
         fkk/k+83v6njW8sE70Q6KU7XzfY/kNKwy1h6Q6NoX6/+xNfr6LQKUevkhrI/xEPGMqIB
         B72T1mvlnlq9zQGOTA2zMViWVOxri6a590l4QqB7DHG+es9EGOL3w3cBxpczyTooIA0q
         vP/nilW1NTxJ3zrWlmGpoYNmkgv1sYtbDXWxgNzphhzEYc0Ed39/NeKp1fcKrr9fo9oY
         tyUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705155476; x=1705760276;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FpapplPXSwA8dgQHySDipjmJ1OdA0p6AH2z0SETgUb4=;
        b=aAod9qiMjMeYoO/2bARd8SpP0RSx2eQNWDqbyEQVFV0DzjDnPtl4pCDVpfQwO8favj
         uyHbQfzr4L00Sae3p5vmxp/TB5LnQTQIoEYwYn9tmy85gpPt3/pMoS6SdrK6acuufbUO
         fYUZ8rJoGCZi/S4MgE1hPhNudlWVf9KLdoaBRS/wh5b7DNmeeouuuD5GDyolypOPdFxr
         cxii0vTu1ugrpoemNafe6/XZ1V9raYsN27hlCerVzBlirYyWL+6AkHyJkTIpBU4KC1qd
         wuf0pagQrzsx9hzpQvGIjyoZ+wf51WY2DOug1gfz9fvSte69sH/bt49MEDmsGLSxibs7
         mNew==
X-Gm-Message-State: AOJu0YxFEbCwesh6xVcs6H5e5n6XgfuVn0j+piMwytychq08MOlVXHLQ
	dK0F/pZXvHEt879FcvYXjTB2/ssNZO0dd7+z4BIuu35DR8zAkg==
X-Google-Smtp-Source: AGHT+IEhkGFyRk54+YFnuRK35imOYfuCVpxnEEr5O+Sul0jCRTBmNNZc4z+pQ+B9yz0VzbYYSr8h7Ze0o7qfS0Cs7VI=
X-Received: by 2002:a25:acc2:0:b0:dbe:ac83:6c99 with SMTP id
 x2-20020a25acc2000000b00dbeac836c99mr1573535ybd.124.1705155476011; Sat, 13
 Jan 2024 06:17:56 -0800 (PST)
MIME-Version: 1.0
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
 <20240113-pmi632-typec-v1-10-de7dfd459353@linaro.org> <ed511811-b110-4fa3-b7b2-b2ec512d4061@linaro.org>
In-Reply-To: <ed511811-b110-4fa3-b7b2-b2ec512d4061@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 16:17:45 +0200
Message-ID: <CAA8EJpqR1u_bW=UZoWYhrU2WbOexJSY7ZXaegVp2P8=aqXqROQ@mail.gmail.com>
Subject: Re: [PATCH 10/13] phy: qcom: qmp-usbc: add support for the Type-C handling
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Bhupesh Sharma <bhupesh.sharma@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_061756_919394_834C5B0C 
X-CRM114-Status: GOOD (  13.96  )
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

On Sat, 13 Jan 2024 at 12:48, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 13.01.2024 06:42, Dmitry Baryshkov wrote:
> > The USB-C PHYs on the msm8998, QCM2290 and SM6115 platforms use special
> > register to control which lanes of the Type-C port are used for the
> > SuperSpeed USB connection. Mimic the qmp-combo driver and handle this
> > register.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
>
> [...]
>
> > +#if IS_ENABLED(CONFIG_TYPEC)
>
> I understand some people may want their USB to work without TC compiled
> in, but it looks funky to have a "USB-C PHY" with optional USB-C support..
>
> Should we just depend on it in kconfig?

Well, we didn't for combo PHY. Also both PHYs support working with
just micro-/mini-USB OTG.
I'll wait for Vinod's feedback here.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
