Return-Path: <SRS0=i3rj=L7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 395A5C07E96
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 00:51:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E93DC61CAC
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 00:51:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E93DC61CAC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b40qfFmqHmtCtzUlBxvl7u1JIOE2GaVz8Kx2zOqn26s=; b=gpIKHl8CAPld3I
	albSexDVGbv7TCyNafDa4qw21mXzOTKUZyWNco0aO8I5EuEF3F0l7VgKyWSIH4A3whTqQUeHnHiJi
	Ly4Ryozx9XuZ9+0GWl6Wg79jjeZeQYG25EwaMZgtSmg6vDZCwBL47+idqtY9OldLtlXvdDZRo579D
	mQWoUTbq/92L9sNpBmsyRxE6V7tfmVw77IL/Fk5DlaYgJc3HIf2iVVpU2PjPd68CG485ncwDrVfsU
	UsoqZwK9836f+Mq2nRf+xe3Z3/dOTzxVxkC16l8bYJ/DjjxlPaBASRP2pgWsZ1zxRH6ugSSiWIKMd
	p35Fx4uqqhrsbHHf7DCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0vn3-00D7SV-Fe; Wed, 07 Jul 2021 00:51:49 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0vn1-00D7SB-Cg
 for linux-phy@lists.infradead.org; Wed, 07 Jul 2021 00:51:49 +0000
Received: by mail-oi1-x230.google.com with SMTP id u11so1475396oiv.1
 for <linux-phy@lists.infradead.org>; Tue, 06 Jul 2021 17:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=s1ffWoDxY3VEBE1q35gustTBk0aEjDRruN7MtUPHf+s=;
 b=Ra+wCD0SHtYTko26/J1Cue0W0aDrFn9aSunhan4jY+Ku4VPvSN9WRXcMbnD4rhZnSK
 2QthozXeQcedU9GrmFB43j/jrN0Yjq4HftOf6+yzt+f/zGbx0dyhzSd3tWUdv7JTdBDF
 JzKV+Wwmrvusajw20DvOwGvBXYlZX0YHiojWzy/Q5dgdAG5cGWx3u2koM/EQsJrjcGZf
 Z+w+R2NM5WOr7inBdRWwVg4npDKnw7TAa0YLPv+dwNjlJ2GBJcCvl24SgjfrAmBeKE0p
 NuHc5VZ3iIFXyEW7emO3v17J7GAWUueRKgYUse/4iNJLtUeqyooAfzPdiWCbsD8SuYFp
 pqfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=s1ffWoDxY3VEBE1q35gustTBk0aEjDRruN7MtUPHf+s=;
 b=oghdiBsqVJMymQ309FNp4dduSxvDtdu5u6utU3rmEwK3dMtgn4qlZaUEU+Zn7GQP7P
 vTNMMjO6T5O+6alerX8LFw6WPs/v5zVm+vMaFt/1rR05iFhGdTZsVoJo7Wej/cCayPoa
 gxQaVSNils7XdewklHbRCM8F/x/liJbF3ESD5tYwWugGE3wnpxpZZACE1RCjhDBFLCh9
 EW0zfLUxz574Qbl5c4BKEgn/CeHtxeIknzmftEelZBzuZBnCONnCQLs4oe6UWnWrthZ0
 kPU5FbiWmXUOan4ox2ei47f8l/jD9zAKfrtJ/ykx7e4MGxTXOnDmEWTaoqsrfpMuKCMk
 PnlQ==
X-Gm-Message-State: AOAM531sLajSJ+ND4cZF7Q7RUV9BMt8Omw1QTlF9CmcqosGHfwiV58d8
 SSzzXda4WDLGSR/II/k+n6LoLA==
X-Google-Smtp-Source: ABdhPJyNJiVNErijMnayY3hae/x4q3f+pLPIXDHbJM0FyfNJpF2vVd7vubXKnUQzaS4QdbPu0Hl1pg==
X-Received: by 2002:aca:3a55:: with SMTP id h82mr2706375oia.59.1625619106268; 
 Tue, 06 Jul 2021 17:51:46 -0700 (PDT)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id s131sm3745306oib.52.2021.07.06.17.51.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 17:51:45 -0700 (PDT)
Date: Tue, 6 Jul 2021 17:50:23 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: vkoul@kernel.org, kishon@ti.com, agross@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 robh+dt@kernel.org, jonathan@marek.ca,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Wesley Cheng <wcheng@codeaurora.org>
Subject: Re: [PATCH 2/2] phy: qcom-qmp: Register as a typec switch for
 orientation detection
Message-ID: <YOT6T3YZSz1EysuO@ripper>
References: <20210706230702.299047-1-bryan.odonoghue@linaro.org>
 <20210706230702.299047-3-bryan.odonoghue@linaro.org>
 <YOTuh2hYp7IC+4rt@yoga>
 <9f213505-c118-b6fd-676b-1bafd83d8380@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9f213505-c118-b6fd-676b-1bafd83d8380@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_175147_542295_EE197BA2 
X-CRM114-Status: GOOD (  22.10  )
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

On Tue 06 Jul 17:35 PDT 2021, Bryan O'Donoghue wrote:

> On 07/07/2021 01:00, Bjorn Andersson wrote:
> > In order to perform link training on 4 lanes we need to reset the
> > PHY_MODE_CTRL with only DP_MODE.
> 
> We're only the two lanes for USB on sm8250 and at the moment only USB works
> - not dp on 8250.
> 
> Perhaps you've discovered why the DP times out on 8250..
> 

The way this problem manifest itself in my testing (on sc8180x) is that
the 3rd lane fails to complete link training, although it wasn't
completely obvious from the kernel prints until you look at the
implementation.

I don't know if you're still struggling with the AUX timeout, but if
you're past that this would be a strong candidate. That said, if you set
data-lanes = <0 1> in your DP node then it won't attempt to go 4 lanes
and wouldn't hit this problem.

> > In my efforts on sc8180x I skipped the disable/enable in switch_set() (I
> > believe because I didn't have the init_count check...) and then in
> > qcom_qmp_phy_configure_dp_mode() I issue a reset when we're heading to 4
> > lanes. Perhaps we can do the disable/enable and achieve the same thing,
> > but as written here you won't get 4 lanes...
> > 
> > I will do some more testing.
> 
> Do you have a commit I can cherry pick ? Might be worth testing out with
> tcpm + dp on the sm8250 if its working for you on sc8180x
> 

I dumped my hack-branch on github a while ago and have been working on
cleaning this up to get the patches out:

https://github.com/andersson/kernel/commits/wip/sc8180x-edp-dp-nvme-sdx55-dump

Unfortunately I extended my testing and realized that DPMS doesn't work
reliably.

With my MST hub (and single monitor) I often hit a security violation
when accessing REG_DP_STATE_CTRL when powering down the display, unless
I have drm.debug=511 (i.e. changing the timing of things). With the more
favourable timing DPMS on/off works nicely.

With my direct type-c/dp cable I can reliably power down the display,
but resuming it generally fails immediately - the monitor is waking up,
and then goes back to sleep (probably because the software has given up
on me already).

Trying to debug these two issues currently.

Connecting, disconnecting and reconnecting the cable works reliably
though, so once upstream boots again I intend to send out most of my
cleaned up patches.

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
