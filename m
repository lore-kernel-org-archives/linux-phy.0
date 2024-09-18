Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29587CCD1A0
	for <linux-phy@archiver.kernel.org>; Wed, 18 Sep 2024 13:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y7cRwyIDAdeFsgo/X1GfnVCT1+zgzqTcpMdh1DAeyfM=; b=Jqwg6XqdPZ++H4
	c+DiVgKfNgcRn5UkqPSNJQrYF2/CDELYC49rHenza3sTuajOJemfGlevJnMD/JmR+sTqk9kDim5g3
	7E/k66cQCnkYQZi9H4+iSpDqBm7p/5ex1hiQfphfNxnr1GFeHLHgofdZhaAxGm5fVbRER0Y3ftFpg
	ecNvgHP97arMFSgud67WOTE/2QBqEL+50yJSgW6L+QS9K3YP6qyoN4rgF8U+UvtKT9LA48bvXMz0w
	IE5SN9WyiLdiWNwdwPZMMjTk7kJrNxWd8SCU7UwE4FVDwJFkJ0+lRjbZdkXl7KtbS7lnWJiS4fr34
	QGMjxqeuKAY3GlGXVYWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1squRf-00000008J2C-3WWy;
	Wed, 18 Sep 2024 13:10:11 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1squRe-00000008J1f-003a
	for linux-phy@lists.infradead.org;
	Wed, 18 Sep 2024 13:10:11 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a8d6ac24a3bso153471166b.1
        for <linux-phy@lists.infradead.org>; Wed, 18 Sep 2024 06:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726665008; x=1727269808; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VVRgT66/mOuXoJrqQ8wh1eZWHMJn1TVCedz1ceMT+pM=;
        b=faO5qL7hcJM/E93wrgiDJS3CLnaI5T8WKlCVKKhUtdO1RTWZu2YquR20cU+hDxFptz
         hIKKGZIEeNTsLFg4gfcOPhVNkUPxhzB3RIlUQWdus6WVe6hUsSucqUOtDWrVrHDFooP+
         agQgyFqPs9SPewgAlYroGE2iZWwMDqy5mpFeoRghBak3iyYC74pLzSVy/2S44f5eMn8I
         52no3lfxxS+VVkPqYbffVDj8UVTofxyriOi949PjPnCSaDqjBKwB1uKjQ4+sJeLbX9Pw
         MWQ1FJxrDEK+9rd3nRdn/nw30TAdyKNjAzbyJBWd2PBleOparAniQikn1q0rfhWXd1h2
         X/0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726665008; x=1727269808;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VVRgT66/mOuXoJrqQ8wh1eZWHMJn1TVCedz1ceMT+pM=;
        b=lLsQdc2AKtwUKxFWXbgprkTdiyz23boo8JHOpiZbgYvFCySIIQWojcqgNNt/9S6Sub
         HHlyK47foWHwu6aoibnSJsPABkP7rV+IgaiwhR9XJPwCnJ+Q2Mb4dFox8Z0atHp8Ch5z
         ukkQLLo9gXWLYG57eibrmY0rbtZkywF96lBsMpEipIzx2jUeCpThzpb3GOUDh/JM2TKL
         zBURS0ik/5nEOPQNSmrH3ZFUKTorQmzcmaVjlkf3/JfGehW/6Skli/2+XaCsivirM8xH
         eSqWmPvtqocy0yU85I7yXOQBesO+A32lkbStJdfg2WXnXwfHXR5+y+tlju1MG+YVoj+/
         S6CQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYfprnh5/Ni6AWJxiiIBIZVpvr5YJCsjGsCZ2i1XJtba97ED7o2SYXtYTvHRTdF7YJ+LI/st5J6Y4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxqYA2J+qa4saAD7ZUu7/e3ds8BKKnEzfiHF9vgtQTHNiEccmdh
	erZQEYnJGTj5HUyn3EdY0KomAP8VknxiPRYqIX9CLOOkramxuWaHpXUAjQlyDdM=
X-Google-Smtp-Source: AGHT+IGHtxlIXrPw47xVhdH8uLboKPn/Kp7bXo6oA0xYfYIupxuqexOncbN9AZZ0BmhjMlNITwnFjw==
X-Received: by 2002:a17:907:1b05:b0:a7a:afe8:1013 with SMTP id a640c23a62f3a-a902a3d188dmr2413879466b.1.1726665007741;
        Wed, 18 Sep 2024 06:10:07 -0700 (PDT)
Received: from linaro.org ([62.231.96.65])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9060f39a8fsm588762066b.0.2024.09.18.06.10.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Sep 2024 06:10:07 -0700 (PDT)
Date: Wed, 18 Sep 2024 16:10:05 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: edp: Add runtime PM support
Message-ID: <ZurRLf8S1j6s8GPz@linaro.org>
References: <20240907-phy-qcom-edp-enable-runtime-pm-v1-1-8b9ee4210e1e@linaro.org>
 <ZuqmB3Cn7mGfA2PU@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZuqmB3Cn7mGfA2PU@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240918_061010_077895_3814FB34 
X-CRM114-Status: GOOD (  19.34  )
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

On 24-09-18 12:05:59, Johan Hovold wrote:
> On Sat, Sep 07, 2024 at 06:25:21PM +0300, Abel Vesa wrote:
> > Enable runtime PM support by adding proper ops which will handle the
> 
> Avoid words like 'proper' here (what are non-proper runtime PM ops?).

Sure.

> 
> > clocks and regulators. These resources will now be handled on power_on and
> > power_off instead of init and exit PHY ops.
> 
> No, this is simply a false claim and indicates that you haven't reviewed
> how PHY runtime PM works. Core will increment the usage count on init()
> and decrement it on exit().

Yeah, I guess the better argument here would be that the PHY needs
regulators and clocks enabled. Anyway, ignore this version as it
was already NACKed by Dmitry.

> 
> > Also enable these resources on
> > probe in order to balance out the disabling that is happening right after.
> > Prevent runtime PM from being ON by default as well.
> 
> And here you just regressed all current systems that do not have udev
> rules to enable runtime PM, and which will now be stuck with these
> resources always-on (e.g. during DPMS off and system suspend).
> 
> In fact, you are even regressing systems that would enable runtime PM,
> as the runtime suspend callback would not currently be called when you
> enter system suspend so the regulators and clocks will be left on.
> 
> This clearly hasn't been tested and analysed properly.
> 
> > +static int __maybe_unused qcom_edp_runtime_suspend(struct device *dev)
> > +{
> > +	struct qcom_edp *edp = dev_get_drvdata(dev);
> > +
> > +	dev_err(dev, "Suspending DP phy\n");
> 
> You forgot to drop your development printks (same below).
> 
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
