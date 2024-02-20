Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75111C48BC4
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 12:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z1PCYfX83pRM0ksRLxs54NrPEijQDyzApB0aww8Quog=; b=dLZ5UicIHe/gz6
	dsBylrPAQM53T0wPZwI2IdWjQkjxUrHFJsXkmCs/1mo31p6NrVwIiLEHw7xItBC3OMM33v2Wx0q21
	3E6lx/QgIjBiwYaSd4UrpX/DEXA7XOVIW59nNBcui90k5L4AxCxnk9fCIS5lRCgtcA92BnJdQDW9t
	vmtJ97PDkPGfYu2K85x89bKO46QBSDWq61teOUu8HtoL9Sj4rx3J0k+VfXCzhZk3WISDyBeE6eKC7
	db4rjv+qIH8eRjdBik2+eXG16pgRgvQ8zD5v7H62SXu0006Qwmv+I9w+MQlAmrxDXZcG/hNDRQZj4
	qqhhJiAM2K1wCyB2mQEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcOzZ-0000000Ech4-0gBt;
	Tue, 20 Feb 2024 12:12:57 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcOzW-0000000Ecfd-25xd
	for linux-phy@lists.infradead.org;
	Tue, 20 Feb 2024 12:12:55 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-608245e549fso23361637b3.1
        for <linux-phy@lists.infradead.org>; Tue, 20 Feb 2024 04:12:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708431173; x=1709035973; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=e6wTR0VmqItODr2yd8HndCQHY6rqvWA1sKIhl9SSx/4=;
        b=Xe+V/XLgLhNRf0GyR+NDhHtccOD2XFn4NOmKj9vzYZxXQLj5d4g7tcshsY4Vw+7yIo
         LGKnSSxROoMYHOf1KMnp0KxZrD5JizAnrd9oTnV4ZmDxTeNyiyIUPfVlwIsS6UgCrYa0
         ixFZSomJTeryg9X2PYfGBZ9pcVU44c8+8FWNafAkUCQpXj5cv1C0vPwkTSTeRK/KxB+T
         cXkmNtg952W3FD/LTsxGxHG8jID4o9x0xiH/Mf+0M+/fK9t0k5Vvgi64Qn8L1HVDFXLJ
         qAU1lg14Fy4rVdTD83XWK82i/RYEDx4R+bGaFc1KBpvKyMFGTctYlu3Si+YPrTo+Swmw
         GpMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708431173; x=1709035973;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e6wTR0VmqItODr2yd8HndCQHY6rqvWA1sKIhl9SSx/4=;
        b=Jn/IAUGtrY6Fx4ZP0N3Dv9DK3shMHXxbQsGyEsdVRjN6OOR+7NF7xvqFP6b6j05fsJ
         T7mCRRA9d085hjJcKR9QrSgJEX/bQwePK/dqnDUGAnmgCELRLSsA4ACepUvzthl7B/vc
         8mraRndVXW2MxzpKaFw3qOhr4QVVi/Eq+gVCFkcWgyxzxfJvdU7nX2iXOxoMUpQcXX1u
         AWrSIYjiSz58BO2yt35TkbIz04kPIIrPGj5yV+kDzFww0+p0nY3XJPaYLR/x3cBqPA32
         wVuPuKANPCtaAouEEwKvTGxyxsm5jvAMZ2jjclMYg2RP6MNldIrhcyNT25vCJdnZMmIt
         8mAQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7o+gBTaiq+3YOYh4cO0KUPoVFqqx0oERjQkiNEpZW21h6Fzi3Lm5bFyKFXf8qvFEfk2YkTyLpYTJMDMYvZ9awISDyDEeJ+GKVcGGeLQ==
X-Gm-Message-State: AOJu0Yz63rdPpj4mIjPSugXu7c/nTQIJGmcYzIP8m0C6B+wPnwVqZq1D
	o6zy6LeFZCG4SirE2HDLW1qgkDTWvRZDFXN2i8IsK2rYbzL5JyXKpRXgstwUjSoDKatZsLU8eqb
	J3ju/0V9QOZiuQJVqMd1paRm7KzKxTCkpC7WdVQ==
X-Google-Smtp-Source: AGHT+IE89QVyewZFZs3o8KYR14F/wdiOB0kpE6qbJHNRXT44hQTbwweqexbkQuL1HRYlWatO5NlcBcrvZUHtw5GjUgs=
X-Received: by 2002:a05:690c:f90:b0:604:9551:f595 with SMTP id
 df16-20020a05690c0f9000b006049551f595mr16185146ywb.50.1708431173276; Tue, 20
 Feb 2024 04:12:53 -0800 (PST)
MIME-Version: 1.0
References: <20240220-x1e80100-phy-edp-compatible-refactor-v5-0-e8658adf5461@linaro.org>
 <20240220-x1e80100-phy-edp-compatible-refactor-v5-2-e8658adf5461@linaro.org>
In-Reply-To: <20240220-x1e80100-phy-edp-compatible-refactor-v5-2-e8658adf5461@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 20 Feb 2024 14:12:42 +0200
Message-ID: <CAA8EJpooQh0v3cvoum94J2AkmUgD=KEiYw6R=2=h9un9bGvc2Q@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] phy: qcom: edp: Add set_mode op for configuring
 eDP/DP submode
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Hovold <johan@kernel.org>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_041254_751977_108B6586 
X-CRM114-Status: GOOD (  11.72  )
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

On Tue, 20 Feb 2024 at 13:58, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> Future platforms should not use different compatibles to differentiate
> between eDP and DP mode. Instead, they should use a single compatible as
> the IP block is the same. It will be the job of the controller to set the
> submode of the PHY accordingly.
>
> The existing platforms will remain with separate compatibles for each
> mode.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 76 +++++++++++++++++++++++++++----------
>  1 file changed, 56 insertions(+), 20 deletions(-)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
