Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1A1ECD1288
	for <linux-phy@archiver.kernel.org>; Mon,  1 Apr 2024 19:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zGOLDnjJgAjWJTi1R6VZrpLHpJKmYtNZCoqP6JC4EeU=; b=sBEtK35zuApr0v
	D8HTypNgzh5jE3SuB91UrJH5hFWBJVfzzJabS8rkVv8YyecGpc2LY4n6SwTZjal7I7ZtckPGAbVk6
	rM+Gzbly1z9CcZ2NCHfjenyQLCeyCnCPwf71jgys1wTk9+4JK8czn20ASbiVSLjSnRBQWR+CrDnzn
	C3FCoBb74wC7lravzOGKrrokDCWnSD26z4foo1WUVHPAilxeobNvv7jwTpfTWXY7QjWTw3xcgG2oE
	M1AkBgEvHZGKdcvec7ex98b9RJS9jhZ60zqOFRWGzNjfSxwhkP7C9CAxAvaKUYMmS5uagR4YAnUlK
	5ooVrzI6IdkJU7DKqsbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrNLF-00000008gF9-2Ro2;
	Mon, 01 Apr 2024 19:29:13 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrNLD-00000008gBm-1ooM
	for linux-phy@lists.infradead.org;
	Mon, 01 Apr 2024 19:29:12 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-6143c158b95so24877437b3.1
        for <linux-phy@lists.infradead.org>; Mon, 01 Apr 2024 12:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711999736; x=1712604536; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xv+8f59G1ydE+wI15KfA8QF9QXVEjYWWFV8IUCQnbFc=;
        b=M1K7TaxKrTpeJWiREIeEUThJ/rTTo4kMd0cvNx82kLZuT6o5YR9teEKyUj68g96Dhj
         Uum2inUNCXqOst2IviMg0/7TAAcLZDFEZqMIC8JOO6AEGV5FNbU7QInxFISPzliSnxZ8
         fGJ7D2orER8xvvmBp+i1Da1snMDBGT0hcdjpmhGPkhse7oCb1AwOsamdeUEkEHyjkN8V
         BnXqKSdfgrZsub1jXILzqcvTTbJ9GivwCFZYs+9gAADCVTXmm0YTub6OYB7mw85IPI+6
         kt98YuDxScQoeS/3BxRsuIJeSKBh7P2SLnYXVtTtkUjvvKH/T3x8+4VdBHWAn74T/7Q1
         ez/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711999736; x=1712604536;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xv+8f59G1ydE+wI15KfA8QF9QXVEjYWWFV8IUCQnbFc=;
        b=GyB6jcgymzeJRKVrCYWAk9nEvWyD/N1wtdRu46R3mSuUY90VU/wnkladhwffdRCsjy
         2zRvAu8LgrYOHQiuOfPetB8SzhI9wXo0BsKkvuSRY3cbxT86VPhO8yL1TnTD6tUrUqfG
         13fJ9jOIr2PbBcwHAzfwZiY+c55FgI2OXXGOedXqP7lDMGV+7jXsQURndeuxG8fhmag3
         vkTQ5cllP2ZHsM8TE7OAzo3KV+6SZm8G71Ni3zuKeY1U7M5K3ETvJc0aQuPcVRGRIP0h
         jC7/QkPhvqlegMfRY3+iiYxJiiCJWJXrtYY6MInTqWKos760Q4qhUI6Z+ggjDrBDV3fB
         mduw==
X-Forwarded-Encrypted: i=1; AJvYcCWcrm0BGOtpK/K9bpyiTD80sO8FVSvIuHEigYlpLoLqqjQX6C6xuLHURkGxXeWxokwXI8GVum7+pn/L2Gs1H5yd8tX6jDBFHG3d3garmA==
X-Gm-Message-State: AOJu0YzqZxG83QheuCKfS4LidRfoxvUNrjwlMAsMQ6THkemLr2uy3KU3
	hK2Z9LQEoIVwgFljMyujlIqtylrMcLQbGtbuNrbWhSR8gdD71V70bXj7GpnbkQtTV5+wfNQ4xqp
	k2pM+zmZqUvCKTKnVjPJRWyD4M2g7bFif5paZkw==
X-Google-Smtp-Source: AGHT+IHWm5qMWsxo63k0eY6EYUiYPYuVMGXukv5t8HOOBs5noEUjCJ1wrRq1JKnYeS/rT1vhe03lP/9VxfD5xrb3lMs=
X-Received: by 2002:a25:8a07:0:b0:dd1:3cc1:5352 with SMTP id
 g7-20020a258a07000000b00dd13cc15352mr7406533ybl.15.1711999735796; Mon, 01 Apr
 2024 12:28:55 -0700 (PDT)
MIME-Version: 1.0
References: <20240401182240.55282-1-danila@jiaxyga.com> <20240401182240.55282-3-danila@jiaxyga.com>
In-Reply-To: <20240401182240.55282-3-danila@jiaxyga.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 1 Apr 2024 22:28:44 +0300
Message-ID: <CAA8EJprM596sjqSt8DSqM5yn2s6uN98o1SixVaMnFg6mpfVhZw@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sc7180: Fix UFS PHY clocks
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org, 
	kishon@kernel.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, cros-qcom-dts-watchers@chromium.org, 
	manivannan.sadhasivam@linaro.org, davidwronek@gmail.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240401_122911_547701_1A30957D 
X-CRM114-Status: GOOD (  10.03  )
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

On Mon, 1 Apr 2024 at 21:23, Danila Tikhonov <danila@jiaxyga.com> wrote:
>
> QMP PHY used in SC7180 requires 3 clocks:
>
> * ref - 19.2MHz reference clock from RPMh
> * ref_aux - Auxiliary reference clock from GCC
> * qref - QREF clock from GCC
>
> While at it, let's move 'clocks' property before 'clock-names' to match
> the style used commonly.
>
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


--
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
