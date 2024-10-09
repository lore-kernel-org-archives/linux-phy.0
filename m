Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2134CEDDA3
	for <linux-phy@archiver.kernel.org>; Wed,  9 Oct 2024 14:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kHcJxEjM6+Kq1iowvnigrPQPUJUy7zbXvtiAuf/4amc=; b=wAPSwWrwg3zsmK
	45wuEX+NlYxEhR2gof1lEVqdegf64gHnSwAOp+ihdjHrj5SW2Mq2TOzX64+70ESgHZ9Km3rKoNX4P
	p7pMQHEpx2E1RqtlPV1Yn5Z5uk2UvIwGF7sw6kBNY0c7Ds30ek9t+3/NrjvMcvDS0ofvapCRaBBV7
	kGh4zQurgaEng4ehapqQYe++yM+Ui/xOB2IQVmwPtarO5AxXxBfRjx/72k8KDfTUyVRn0qnHiIdLo
	9q6/0Wm2wtD+MDbaf9VvAdmORNTybUhgeKF7CgLx9D0hFAWzC+1Y/rWHoSsTnqdhLVXGxcidCU1jq
	cvOi6yAuTi916rBrDKDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syY0a-00000009fAP-23NJ;
	Wed, 09 Oct 2024 14:49:48 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syY0X-00000009f9H-0bi9
	for linux-phy@lists.infradead.org;
	Wed, 09 Oct 2024 14:49:46 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-431137d12a5so5101745e9.1
        for <linux-phy@lists.infradead.org>; Wed, 09 Oct 2024 07:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728485382; x=1729090182; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=W57EVEdRC/Melvgphr74WZFGUZg5zsL69X6rPgnjboU=;
        b=fcRaKp8HfF8ijIGJNtt8dSLra5sjaFZoAQ6I00czqdm0nnWuhfOwnW8BdSLhJtNgki
         nHKA9uUCIVy+g3ZnBY2p9EvUM3J5GryhE2kUQ8mZaiVesXk204YV5TAwe+c/IkdzcSbg
         bq8wFfz+/RJ3Rmt1Wm/BIVcwUJhHrvxfyqkDNvXntB5rpo6oBRf+T6Mke2N6D9v2uw/9
         JXy6FFKGXdZkOCwwKxpM9BStuK6uWtnO42HZ5kQez2DNDYuoIZzdJi0/1ctKxCNW3DOj
         Hfz+z3b/Owk+KUghrBCXzsaBnmtXjXVS4pp8eOLY/n8pN1+l7HSBcwk8NqoyGR6hKMyQ
         sX+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728485382; x=1729090182;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W57EVEdRC/Melvgphr74WZFGUZg5zsL69X6rPgnjboU=;
        b=baTFPEMYDa4WUGkQWa5NH/h2JaBLr7Q5/Xiw+pKSFq40URSvtZkOM+75ik0zeyeOfN
         FTNK7NN8zUrgso8kz1wmyt9R0dGyA3BpvyqvP1DwBdUSF6fFAoYFvPRILS0pMxVUKScw
         SXoake6VuY+u5wfUaIPsrIz1Qi7nCFbulYWAyIDuVCQCk0PqgteBZtMgPnxD/wB+s98w
         m99ox52Nptrvw4kwKKZWNYH4rbsLla6dZbmwvLxX+NA1HWr8P1aVwdKX3uZJm+ie6dxs
         v5BN2NI4sJFamro7MkbNzlpzetrJJUujVHl4Ebs/dyPRvY28XcmWc5Na7z+UJhWUkzIk
         p4Hg==
X-Forwarded-Encrypted: i=1; AJvYcCVrfaXqPMbZ0icNPXJeGzAu+veOO0xZY46AX8MkqoYiykudutxhZrBZdv6ZnHlyPuejbRIabtc7NAg=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywr+YRy9Cy/vFiCOYIh+SfC+R2MxRIpjeuqOvaM/fYlGY5BmoKo
	a2MG5IzhlRKHgVR8MKGl98oyE+wATKDFctT87+uzd7fN6I9R9wk4/AEJ9SrFDAM=
X-Google-Smtp-Source: AGHT+IG8lQlSrbDZ+GnOoRNnzmoSfZFSnsDqQssE7hw5pITsIWWfL/VJLC4SiGTGQTR7CJAM1wuBFw==
X-Received: by 2002:a05:600c:3b87:b0:42c:b5f1:44ff with SMTP id 5b1f17b1804b1-430d6facb85mr23077635e9.24.1728485382199;
        Wed, 09 Oct 2024 07:49:42 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-430c908b8f6sm22933035e9.0.2024.10.09.07.49.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2024 07:49:41 -0700 (PDT)
Date: Wed, 9 Oct 2024 17:49:37 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: oe-kbuild@lists.linux.dev, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, lkp@intel.com,
	oe-kbuild-all@lists.linux.dev
Subject: Re: [PATCH v2 2/3] phy: rockchip-pcie: Use devm_clk_get_enabled()
 helper
Message-ID: <20f261b3-5917-4e3e-96be-7dbb993c5a80@stanley.mountain>
References: <20241007035616.2701-3-linux.amoon@gmail.com>
 <a86437f6-1f62-4f44-bff1-f1203d04edda@stanley.mountain>
 <CANAwSgQObCHr19fmwuc2BfQmoiV3ZgDTFumtfCH8PP_9VbQw+w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANAwSgQObCHr19fmwuc2BfQmoiV3ZgDTFumtfCH8PP_9VbQw+w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_074945_216550_EBB3468B 
X-CRM114-Status: GOOD (  27.17  )
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

On Wed, Oct 09, 2024 at 07:59:38PM +0530, Anand Moon wrote:
> Hi Dan,
> 
> Thanks for the report.
> 
> On Wed, 9 Oct 2024 at 17:55, Dan Carpenter <dan.carpenter@linaro.org> wrote:
> >
> > Hi Anand,
> >
> > kernel test robot noticed the following build warnings:
> >
> > url:    https://github.com/intel-lab-lkp/linux/commits/Anand-Moon/phy-rockchip-pcie-Simplify-error-handling-with-dev_err_probe/20241007-115910
> > base:   8f602276d3902642fdc3429b548d73c745446601
> > patch link:    https://lore.kernel.org/r/20241007035616.2701-3-linux.amoon%40gmail.com
> > patch subject: [PATCH v2 2/3] phy: rockchip-pcie: Use devm_clk_get_enabled() helper
> > config: loongarch-randconfig-r071-20241009 (https://download.01.org/0day-ci/archive/20241009/202410092019.vGogfPIO-lkp@intel.com/config)
> > compiler: loongarch64-linux-gcc (GCC) 14.1.0
> >
> > If you fix the issue in a separate patch/commit (i.e. not just a new version of
> > the same patch/commit), kindly add following tags
> > | Reported-by: kernel test robot <lkp@intel.com>
> > | Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> > | Closes: https://lore.kernel.org/r/202410092019.vGogfPIO-lkp@intel.com/
> >
> > smatch warnings:
> > drivers/phy/rockchip/phy-rockchip-pcie.c:278 rockchip_pcie_phy_init() warn: missing error code 'err'
> >
> 
> All the functions in this file explicitly return 0 instead of err, I
> will fix this.
> 
> > vim +/err +278 drivers/phy/rockchip/phy-rockchip-pcie.c
> >
> > fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  269  static int rockchip_pcie_phy_init(struct phy *phy)
> > fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  270  {
> > 90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  271      struct phy_pcie_instance *inst = phy_get_drvdata(phy);
> > 90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  272      struct rockchip_pcie_phy *rk_phy = to_pcie_phy(inst);
> > fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  273      int err = 0;
> > fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  274
> > 90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  275      mutex_lock(&rk_phy->pcie_mutex);
> > 90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  276
> > 90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  277      if (rk_phy->init_cnt++)
> > 90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19 @278              goto err_out;
> >
> > Originally, this path just unlocked at returned zero.
> >
> > 90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  279
> > fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  280      err = reset_control_assert(rk_phy->phy_rst);
> > fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  281      if (err) {
> > fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  282              dev_err(&phy->dev, "assert phy_rst err %d\n", err);
> > 3114329651e74f drivers/phy/rockchip/phy-rockchip-pcie.c Anand Moon 2024-10-07  283              goto err_out;
> > fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  284      }
> > fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  285
> > 90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  286      mutex_unlock(&rk_phy->pcie_mutex);
> > 90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  287      return 0;
> > fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  288
> > 3114329651e74f drivers/phy/rockchip/phy-rockchip-pcie.c Anand Moon 2024-10-07  289  err_out:
> > 90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  290      rk_phy->init_cnt--;
> >
> > Now it decrements the counter so presumably it leads to an underflow/use after
> > free.
> 
> I was planning to replace the mutex_lock / mutex_unlock
> with guard(mutex)(&rk_phy->pcie_mutex) in the follow up patch.
> I will add this in the next revision.
> 
> >
> > 90a7612d070d5c drivers/phy/rockchip/phy-rockchip-pcie.c Shawn Lin  2017-07-19  291      mutex_unlock(&rk_phy->pcie_mutex);
> > fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  292      return err;
> > fcffee3d54fcad drivers/phy/phy-rockchip-pcie.c          Shawn Lin  2016-09-01  293  }
> >
> 

Thanks!

> Here are my modified changes on top of my changes for the review process.
> -----8<----------8<----------8<----------8<----------8<----------8<-----
> diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c
> b/drivers/phy/rockchip/phy-rockchip-pcie.c
> index 2c4d6f68f02a..09685dc3fe17 100644
> --- a/drivers/phy/rockchip/phy-rockchip-pcie.c
> +++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
> @@ -248,20 +248,19 @@ static int rockchip_pcie_phy_init(struct phy *phy)
> 
>         mutex_lock(&rk_phy->pcie_mutex);
> 
> -       if (rk_phy->init_cnt++)
> -               goto err_out;
> +       if (rk_phy->init_cnt++) {
> +               mutex_unlock(&rk_phy->pcie_mutex);
> +               return err;

Please make this a return 0.  It's faster to not have to look up what a variable
is.

> +       }
> 
>         err = reset_control_assert(rk_phy->phy_rst);
>         if (err) {
>                 dev_err(&phy->dev, "assert phy_rst err %d\n", err);
> -               goto err_out;
> +               rk_phy->init_cnt--;
> +               mutex_unlock(&rk_phy->pcie_mutex);
> +               return err;
>         }
> 
> -       mutex_unlock(&rk_phy->pcie_mutex);
> -       return 0;
> -
> -err_out:
> -       rk_phy->init_cnt--;
>         mutex_unlock(&rk_phy->pcie_mutex);
>         return err;

return 0; here too.

regards,
dan carpenter


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
