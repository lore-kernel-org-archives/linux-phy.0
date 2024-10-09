Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75C60CEE336
	for <linux-phy@archiver.kernel.org>; Wed,  9 Oct 2024 17:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lVKhu6bbrqftTtVq7r7C6JlTv7cavTU59gnDgRvTp2U=; b=kbbgu1YTS/4YdA
	DvKDuvPf0iwJwirA32Xg12eA6ehRpzpNCzaNxYoMUeZCyB0UHsd5xd5LaP+Jvefpgm7+yQPTvSSVz
	f8vhIIZjanlUByBEhZvsAMjc1oMACd3/gLFofxfc0FnQVyVlALjRBoKuZTjlXxH4KcM5jG1bJailg
	yYs91SQalIu4hNr/ChBWBzIeQOfNQarX82X64j6YQMH9nFVzXo2CexMUyJyJcNbCErn6JXAw5kDzs
	uGPGnc0mYbFKFQUIO5rtHjrxIjuwX3CrCYjjoRH8mOisGgdkBS4GsmRSjy//5qSrNonmxyWKR+/Tl
	gk1QvXAv//hm7yxJxVzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syamy-0000000AFr3-2tfZ;
	Wed, 09 Oct 2024 17:47:56 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sya6f-0000000A6xl-3CN5
	for linux-phy@lists.infradead.org;
	Wed, 09 Oct 2024 17:04:15 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-5398b589032so11113740e87.1
        for <linux-phy@lists.infradead.org>; Wed, 09 Oct 2024 10:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728493451; x=1729098251; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bAgrg9p0IyL/cHjq8NFMqrg11vbFoHJhejVSOZpWnuI=;
        b=UcyK/Z3qkND+1817gxejphCbW8Cu7te/1AenxBsdMmCFqz9g2y8fuOgyHMMOX45OxX
         CHp45T4+l/oP5zkZgQ3P/RnCwAgqp4LyBJl8pLLa/oZO7XGODGV8UxtuE4i1rfRM2o1Y
         kVAeKAdBQkIQr4J5WNQx3NbwgPiYJKOovweBrMw9VJkSAR5C0psW4229DYMbYssH5RwO
         OJ9WqpLv85zeegVqdB+hJfE/RFgM/60c0+NlsjiCFt9Bf1DfJl4FFwVgv9gN0EYSCaCS
         w1H7lpAQM3Za2efp/EYnezliaVjUjxlei3555o/kdYNrGjQedBn1rNjrQQwJ3ygnMxWp
         3Dfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728493451; x=1729098251;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bAgrg9p0IyL/cHjq8NFMqrg11vbFoHJhejVSOZpWnuI=;
        b=EaPqqVIWAIUKPg6Ifkcm+fPjqRJ6sQCcAzLXtDjdIP3VAZCVhseMshfEpuHcJYrcWK
         3zh4LnuUmqXbPLZWAyHVMYSDznCRPtaYSnEsq/KIN3KGXpiDl8TlAkQQXVGhOX2eMaQa
         S5bMnFblyxod6+W+DNxIhWl5XE8IMC1hZYW5mBhv8WRSZhUp7boMt/CQI+e6lCrYtwAY
         9S/ehNmCFlpTtJZD7NxzheDcmbdsNVR0EkJlQhikc0M/VrKR2z2Yds7c2ZEVBShy/qnM
         639pSkFz+UH9bq+apurpeA+mYzOdMu22hD9m8oy+vqzZFlFgsJpKvbotsLSq6svNxT0d
         GygQ==
X-Forwarded-Encrypted: i=1; AJvYcCUvqgU6ekkLPLabwSRQnQ0UcWqdmGxkT0GpRPqD2q3TGdl2ktG7RUvfu5sl0jRFaqi72LGX4+6TIPY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyIwTHyyZyWGi1BbYCVYKyhrzyn/Lau7pDMGqNWaiTXcJhfrR5i
	PkFL5iPVjUo5r5kyeeBI5cWQMHm4CItPJ/DAIIrMl1vskTobwSvsY4gndMlnmRx49DC+q5jaG1a
	IRvHPdXXKRx3rYsYIcnEvRaPeSEw=
X-Google-Smtp-Source: AGHT+IH/I2srRvV6OFd9jUWGGQC2LsJXZB49Gad0HgloebLrdtnJxijWTQhwoBydGy2Ta8YUkJfwrY1JaK6EnGhfYQY=
X-Received: by 2002:a05:6512:3da6:b0:539:936c:9845 with SMTP id
 2adb3069b0e04-539c4957e39mr3243843e87.37.1728493451037; Wed, 09 Oct 2024
 10:04:11 -0700 (PDT)
MIME-Version: 1.0
References: <20241007035616.2701-3-linux.amoon@gmail.com> <a86437f6-1f62-4f44-bff1-f1203d04edda@stanley.mountain>
 <CANAwSgQObCHr19fmwuc2BfQmoiV3ZgDTFumtfCH8PP_9VbQw+w@mail.gmail.com>
 <20f261b3-5917-4e3e-96be-7dbb993c5a80@stanley.mountain> <CANAwSgTRWmXbyCO0dOeKSu-C_aXAEVGpzGV8SO-BmouFGiaj+g@mail.gmail.com>
In-Reply-To: <CANAwSgTRWmXbyCO0dOeKSu-C_aXAEVGpzGV8SO-BmouFGiaj+g@mail.gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 9 Oct 2024 22:33:51 +0530
Message-ID: <CANAwSgROrML0zW-G0aPh6qsdCodOv+7pE8hhaSA4ismJP4G=6g@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] phy: rockchip-pcie: Use devm_clk_get_enabled() helper
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: oe-kbuild@lists.linux.dev, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, lkp@intel.com, oe-kbuild-all@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_100413_828260_FD2692B8 
X-CRM114-Status: GOOD (  31.29  )
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

Hi Dan,

On Wed, 9 Oct 2024 at 21:38, Anand Moon <linux.amoon@gmail.com> wrote:
>
> Hi Dan,
>
> On Wed, 9 Oct 2024 at 20:19, Dan Carpenter <dan.carpenter@linaro.org> wrote:
> >
> > On Wed, Oct 09, 2024 at 07:59:38PM +0530, Anand Moon wrote:
> > > Hi Dan,
> > >
> > > Thanks for the report.
> > >
> > > On Wed, 9 Oct 2024 at 17:55, Dan Carpenter <dan.carpenter@linaro.org> wrote:
> > > >
> > > > Hi Anand,
> > > >
> > > > kernel test robot noticed the following build warnings:
> > > >
> > > > url:    https://github.com/intel-lab-lkp/linux/commits/Anand-Moon/phy-rockchip-pcie-Simplify-error-handling-with-dev_err_probe/20241007-115910
> > > > base:   8f602276d3902642fdc3429b548d73c745446601
> > > > patch link:    https://lore.kernel.org/r/20241007035616.2701-3-linux.amoon%40gmail.com
> > > > patch subject: [PATCH v2 2/3] phy: rockchip-pcie: Use devm_clk_get_enabled() helper
> > > > config: loongarch-randconfig-r071-20241009 (https://download.01.org/0day-ci/archive/20241009/202410092019.vGogfPIO-lkp@intel.com/config)
> > > > compiler: loongarch64-linux-gcc (GCC) 14.1.0
> > > >
> > > > If you fix the issue in a separate patch/commit (i.e. not just a new version of
> > > > the same patch/commit), kindly add following tags
> > > > | Reported-by: kernel test robot <lkp@intel.com>
> > > > | Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> > > > | Closes: https://lore.kernel.org/r/202410092019.vGogfPIO-lkp@intel.com/
> > > >
> > > > smatch warnings:
> > > > drivers/phy/rockchip/phy-rockchip-pcie.c:278 rockchip_pcie_phy_init() warn: missing error code 'err'
> > > >
> > >
> > > All the functions in this file explicitly return 0 instead of err, I
> > > will fix this.
> > >
> > > > vim +/err +278 drivers/phy/rockchip/phy-rockchip-pcie.c
> > > >
> > > > fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  269  static int rockchip_pcie_phy_init(struct phy *phy)
> > > > fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  270  {
> > > > 90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  271      struct phy_pcie_instance *inst = phy_get_drvdata(phy);
> > > > 90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  272      struct rockchip_pcie_phy *rk_phy = to_pcie_phy(inst);
> > > > fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  273      int err = 0;
> > > > fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  274
> > > > 90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  275      mutex_lock(&rk_phy->pcie_mutex);
> > > > 90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  276
> > > > 90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  277      if (rk_phy->init_cnt++)
> > > > 90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19 @278              goto err_out;
> > > >
> > > > Originally, this path just unlocked at returned zero.
> > > >
> > > > 90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  279
> > > > fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  280      err = reset_control_assert(rk_phy->phy_rst);
> > > > fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  281      if (err) {
> > > > fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  282              dev_err(&phy->dev, "assert phy_rst err %d\n", err);
> > > > 3114329651e74f drivers/phy/rockchip/phy-rockchip-pcie.c Anand Moon 2024-10-07  283              goto err_out;
> > > > fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  284      }
> > > > fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  285
> > > > 90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  286      mutex_unlock(&rk_phy->pcie_mutex);
> > > > 90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  287      return 0;
> > > > fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  288
> > > > 3114329651e74f drivers/phy/rockchip/phy-rockchip-pcie.c Anand Moon 2024-10-07  289  err_out:
> > > > 90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  290      rk_phy->init_cnt--;
> > > >
> > > > Now it decrements the counter so presumably it leads to an underflow/use after
> > > > free.
> > >
> > > I was planning to replace the mutex_lock / mutex_unlock
> > > with guard(mutex)(&rk_phy->pcie_mutex) in the follow up patch.
> > > I will add this in the next revision.
> > >
> > > >
> > > > 90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  291      mutex_unlock(&rk_phy->pcie_mutex);
> > > > fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  292      return err;
> > > > fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  293  }
> > > >
> > >
> >
> > Thanks!
> >
> > > Here are my modified changes on top of my changes for the review process.
> > > -----8<----------8<----------8<----------8<----------8<----------8<-----
> > > diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c
> > > b/drivers/phy/rockchip/phy-rockchip-pcie.c
> > > index 2c4d6f68f02a..09685dc3fe17 100644
> > > --- a/drivers/phy/rockchip/phy-rockchip-pcie.c
> > > +++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
> > > @@ -248,20 +248,19 @@ static int rockchip_pcie_phy_init(struct phy *phy)
> > >
> > >         mutex_lock(&rk_phy->pcie_mutex);
> > >
> > > -       if (rk_phy->init_cnt++)
> > > -               goto err_out;
> > > +       if (rk_phy->init_cnt++) {
> > > +               mutex_unlock(&rk_phy->pcie_mutex);
> > > +               return err;
> >
> > Please make this a return 0.  It's faster to not have to look up what a variable
> > is.
> >
> Ok.
> > > +       }
> > >
> > >         err = reset_control_assert(rk_phy->phy_rst);
> > >         if (err) {
> > >                 dev_err(&phy->dev, "assert phy_rst err %d\n", err);
> > > -               goto err_out;
> > > +               rk_phy->init_cnt--;
> > > +               mutex_unlock(&rk_phy->pcie_mutex);
> > > +               return err;
> > >         }
> > >
> > > -       mutex_unlock(&rk_phy->pcie_mutex);
> > > -       return 0;
> > > -
> > > -err_out:
> > > -       rk_phy->init_cnt--;
> > >         mutex_unlock(&rk_phy->pcie_mutex);
> > >         return err;
> >
> > return 0; here too.
The above warning " missing error code 'err'"
so it's correct to return err. here.
> >
> Ok. I will update the patch.
> > regards,
> > dan carpenter
> >
>
Thanks
-Anand

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
