Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4D14C48BC4
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 22:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jjAd30ag4x++bdAqWdhw8Kf6/sCTV7vKJa8WBkt4Thg=; b=yB3F/iVHsmMY8E
	tR0+TyPb5cGzGJ4J2XyaLAvHcA8BkfaWWKNEtvG2tpN7ughuCp5Ey2lbixHtjUvWnX3S8ow46fpxu
	s3o2MoEuotHzBj9oQ29RFrgbCZ3EPQ6IFJ+JVOm26fVsv4REpQsA5if+Ja27U4uQRVOieY5TLUei8
	VOIa+J+dMB200sAYOhX/4dbEW3/9IROC5uElevvAvSTvKqTbwjhkLcq7unVgIx+0WN4abmibiQIV6
	TIpAVp5Hf60hoyk7yob+iGyjJFQtu6THNweRabB9sSmwe5VxaWiNubRdeKlB2gWHkaG8/362jFmk7
	h48pFM/UoBHj012sQScA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcYqy-0000000GOXy-2eEB;
	Tue, 20 Feb 2024 22:44:44 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcYqw-0000000GOXc-0vJH
	for linux-phy@lists.infradead.org;
	Tue, 20 Feb 2024 22:44:43 +0000
Received: by mail-yb1-xb31.google.com with SMTP id 3f1490d57ef6-dc6cbe1ac75so4633589276.1
        for <linux-phy@lists.infradead.org>; Tue, 20 Feb 2024 14:44:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708469081; x=1709073881; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Er5VAYhNSWIzSdSLpbthmXT3VmJJOcraX1chMlaJ038=;
        b=YI8/jB/OOs9RhJirPgWuv7/JSQAnZoayss5ZnfMkZOlw1jbiQR1AUNI1atRF8QX86w
         xI2mU/FUYQmNKZ2Y9Fs5eyh4KJUwnAx9cf0+JGczX0lT6eTIJVfQRgYduRC/4Vb5iPMy
         F2cssiqGdq9+pNDQIUCdaKQkfAN4qH/hkEnma3lPBehgPiDJmUL/lhK5uR8gT6YxXgB5
         2t26CC8RKqOPTQlYsOUjj0vCqt4YpuvCTYJrb8WrVeku1bN9UQPR2XUPFKau1ufJS0zx
         ElQsnpGnWFk3sz0i0jhFIhnuYdGC83om/u46O8htGSAVaP9SknJ/KWWknwhpc0x/lfO6
         D/EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708469081; x=1709073881;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Er5VAYhNSWIzSdSLpbthmXT3VmJJOcraX1chMlaJ038=;
        b=uoILwULecV3jgaAenBa4rpG93MSZ5EBefg1sasAyeGgXc+frHpvdo1qCHGiEAgppGQ
         5tn5Uy7S+aSQ1Sve00gk6Rv7TUwVz57O2XMiZDbN/VtL6Dy8jA9/335xfn6k138gXpmM
         RMCdaOpCRsrivpjoWcddnJ2NUBUrJX4R9isIfB2EcqiVA2mwOx3/3YMQTcGS9Fr2Ie1k
         9IIylZq0kGCHwuia502x4Y7sETM97D1mKsa4+Xf4O/sE3uEzNbasB3YHwOsrCB1BTUhf
         Yy7kf2PpZoVcOPkWmkEJZGcnL8T/JZn1wDLW6S46aZ3GnHDlW/Tv+eXVXrBjmLECJ+RH
         SY2Q==
X-Forwarded-Encrypted: i=1; AJvYcCURm2LfCzOnOkzCIZAQI3AA3KhS+cDU8KoOEeO65GgV4jxnerUvQRB5XVJgy1xirP74iffhOqGzl39fxaA8PhwU1IahaEaGmpyfqylprA==
X-Gm-Message-State: AOJu0YzM/RL6Umz2xl2vEzld7c64CQVL6HXXELTq5JK0xsfle4TL8/F6
	XMT0z0reie8sgGzh9mQmHiuauGRM/cNTiazbIGzu7hHodK3nTfjPRhypKZqz9g6PI8u2eOH1NKr
	TL5QHg36v34nbZnbRWopLsbeoLB1pVDUeECo/sA==
X-Google-Smtp-Source: AGHT+IGck60Ujjz3YKtMApNGN0o7Q3lIs5rKyd+3XwSWjBY5bnHdduoZvVu6VAT2sswGZi36nYAlChFKILL3g+wOCIk=
X-Received: by 2002:a25:d6d6:0:b0:dcc:7ad6:24de with SMTP id
 n205-20020a25d6d6000000b00dcc7ad624demr15259122ybg.0.1708469080739; Tue, 20
 Feb 2024 14:44:40 -0800 (PST)
MIME-Version: 1.0
References: <20240221-phy-qualcomm-edp-x1e80100-v4-0-4e5018877bee@linaro.org> <20240221-phy-qualcomm-edp-x1e80100-v4-2-4e5018877bee@linaro.org>
In-Reply-To: <20240221-phy-qualcomm-edp-x1e80100-v4-2-4e5018877bee@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 21 Feb 2024 00:44:29 +0200
Message-ID: <CAA8EJprDzKJgU5OfMoDG47KDp224mT8V+-q3cVvGjQmPjho8rA@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] phy: qcom: edp: Move v4 specific settings to
 version ops
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Johan Hovold <johan@kernel.org>, 
	Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_144442_280703_1D0DD157 
X-CRM114-Status: UNSURE (   9.16  )
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

On Wed, 21 Feb 2024 at 00:05, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> In order to support different HW versions move everything specific
> to v4 into so-called version ops.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 183 +++++++++++++++++++++++-------------
>  1 file changed, 118 insertions(+), 65 deletions(-)
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
