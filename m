Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F38A2C27C53
	for <linux-phy@archiver.kernel.org>; Fri,  7 Jun 2024 07:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kf5MN3NI7smQreCM/whTL90ePh4igKqnVIfX7j9cCP8=; b=RmLqqGAWmoCIUw
	89jMeFcGlFs3VUDu0DfJckbVsOd3+TC0n+zW/tJSBmcPztvhiRwRJlNRvqCA3crWeVtUOjtw91bJk
	O6WIyodatzn8AgKaQi631X1I1Noc8HZBWstF5HtT/xuD1pJn7e73pb0asc9gZWlwqSuDkndiMuywt
	EmJzbLEJZ2PrK27WRYs7S1eh6FOEV+RfvLzn7JXqHCo07dDQFuUs1j8t9/G6dC6R2s6l/YPyD0uAB
	EkvfM0NXIxkQ4IKDs/qoaFDhjHTdTXsJZyiYb8qNK8i79f8jT+OjQxS7kI+fgbsoYvusGMc7ZjkRD
	6bc1RBchxqJstbnkLHew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFU5p-0000000Cxcu-2yTl;
	Fri, 07 Jun 2024 07:32:57 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFU5n-0000000Cxad-1GN1
	for linux-phy@lists.infradead.org;
	Fri, 07 Jun 2024 07:32:56 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2ea903cd11bso23765231fa.1
        for <linux-phy@lists.infradead.org>; Fri, 07 Jun 2024 00:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717745571; x=1718350371; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UqYi6/TyXsie6XKRZSwpSrdfbRCQyXuW1iK6UpWUpGA=;
        b=YCrLK0+sWmBf3zabR4ILG0ISkqgMiD2JUSOp/wbU6XdvYKfaN/3NUMFczZJQV8WOuz
         eMf4tKmg3oas/CR9VtXluTq63Ag08pMPjZC/94xnIxftqCPVOi41X35IFnNA0H4b6mtR
         8vyoGpZZG9kQp4FmHvq3/EV0HubNUFxn1q1P5R1c4aQsv314kenc9gAUev8CkDgfAY85
         5UroDEBJW1iDD+gPv074/vOgRUec1NiJ+pwIHtR06P/P/AX+Kzv6f21ZL5rHQNCBabkl
         LQ0Q8YCt1nKRrWSvvFRny4v7gLL2pf/pDMJdyikdeqGR6IRlB7afiLrTMG7kvS1NCHOa
         dP1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717745571; x=1718350371;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UqYi6/TyXsie6XKRZSwpSrdfbRCQyXuW1iK6UpWUpGA=;
        b=GxR/nV/XvtgNqCcXuntYV58BHuA0uBMYRh8JZqjB2HfuRVamPYFI+XT6xnEYTqlAa+
         J+vp4+wVod51SybNZNuDhbuT0oSZbDwADnIesrlI3vbSkszDocjxbN/SFssVv1XurLM/
         zzOt1VGIvFerIVsqjo8v8gKpI3QvbnUE0Uq1L0rUktEKoN0qBlTaffxjb9of0Uelzf1n
         AX27l1l3jQuuH3m3YSUo85xm/r96FDnzjrXmf7DuJ9KuYd3rshncHuuzkzdIcy+vx/7a
         riNLznO7ltzR07veyPtAOHYtPY5Y4CVLGNxT71W1HsgQ6DMNSR0IckjaVHIvryISTgf6
         UgHQ==
X-Forwarded-Encrypted: i=1; AJvYcCWnErEuSzTSoB7yYq/SZ4o8v/t2sh33iqqPAcsIJKR4iNKQSSOfucK8WaN6sYaZ/RrlnwcLtEhovBeMgKFTvuxLD6LBSxHf5i2S+ORSGg==
X-Gm-Message-State: AOJu0Yx+DAHsiIpUZTrso91Q/JZrqI9gTGHUspaS+qj0CZTKGRDTMnBt
	CCqsOOtBAnKw+KQwyzBOr36nodMzApA4slq+ddq1dR2gf+EbhLA+kFRj9PUuT60=
X-Google-Smtp-Source: AGHT+IG28HQrJXRwR3UKDPBL8ZjvFq5oTQoYekMAlyCuQZ+jgjGFPoD6PHNh3NUcAihljpkATtWTog==
X-Received: by 2002:a05:651c:1a11:b0:2e7:2d1f:edbd with SMTP id 38308e7fff4ca-2eadce7f8ecmr18873251fa.39.1717745571348;
        Fri, 07 Jun 2024 00:32:51 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ead41dc957sm4492321fa.135.2024.06.07.00.32.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jun 2024 00:32:50 -0700 (PDT)
Date: Fri, 7 Jun 2024 10:32:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/7] phy: qcom: qmp-combo: store DP phy power state
Message-ID: <dwwqfd3uwfrufvgov46egztdjpwfiyiy4x2fmm5najv3jy7n5r@n5efircs6l5b>
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
 <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-2-a03e68d7b8fc@linaro.org>
 <du4345tswno5pfeiux5ks5eo37bbydilvdzw3firnsps2ejgn5@avnoqzxbmzj7>
 <ec78bd64-b1f2-48c1-b1ab-b7e2f0b9e24d@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ec78bd64-b1f2-48c1-b1ab-b7e2f0b9e24d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240607_003255_367328_00B3BB74 
X-CRM114-Status: GOOD (  15.31  )
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

On Thu, Jun 06, 2024 at 03:29:52PM +0200, Neil Armstrong wrote:
> On 27/05/2024 10:59, Dmitry Baryshkov wrote:
> > On Mon, May 27, 2024 at 10:42:34AM +0200, Neil Armstrong wrote:
> > > Switching the PHY Mode requires the DisplayPort PHY to be powered off,
> > > keep track of the DisplayPort phy power state.
> > 
> > How is this different from dp_init_count?
> 
> dp_init_count tracks the DP PHY init, while dp_powered_on tracks
> the DP PHY beeing powered on by the DRM DP driver, those are
> not the same state at all.
> 
> While testing, I figured that de-initializing the DP PHY while
> is was powered-on by the DRM DP, caused the system to freeze and crash.
> 
> SO I've added this to track this state and try to de-init the DP phy
> if still in use.

If you are to send next iteration, please add these bits to the commit
message.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
