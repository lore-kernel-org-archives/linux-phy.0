Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3925ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 14:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DSlMvMMrZ1mC9dWDD0e4QxpQyXTsDXQLVhfq11tIQt4=; b=c3NfBpPJcPZ0bD
	fGKfhvo/BEa2ldbce2HNzoCx8xg0KwsA7seIHgyY7adWKyfvDYcFiC+v5E/l+b1QH+opx9XPN1IH/
	mi8G0HFiPEpIbX5JMW4ysXpCBqUu2YgEDFsOAjp0aQPVJDdY4RfUQh/O0fhySa6bFsWqaYzcbnzfh
	4XzVzo6jto63VIs+1QKkfxPVyMusW4EOkTbtzt/3gHljFQBMZ8KK5djxtnOpWa0tdNQ4gMi8g+t8V
	QWWANCJlYYnRYDVBPiEynWnSl7V92MEjN3Tbx4HpURTSWg4wd+mWPz30A2okWiGjviZDzRnaqZPhn
	rUq2dVN+ToKHYtFajObw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooQ6H-00HYuR-5w; Fri, 28 Oct 2022 14:12:45 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooQ6F-00HYqi-0v
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 14:12:44 +0000
Received: by mail-yb1-xb32.google.com with SMTP id z192so6323462yba.0
        for <linux-phy@lists.infradead.org>; Fri, 28 Oct 2022 07:12:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Q6z80PFwyq5zF4sE798rB0h2XoymCmatv0a4gNGnqVA=;
        b=Wp/DSxUFZO65+GOpkFzMjak1zC2fi/t9MD6/d3fyiCZlWUxsnkCGWZsxJIbMIWfLJj
         b9Kl7Zki0zOAUjXd7DR5nRjJ8RBot7DuoQD2YpDgBQQ9nl+NIUEbqesT2OJh2a8B0DI7
         IOlKay0atm8kzc/RW2GgHga7waU9LxLN4UToG65UUrmwqRPk7hUTYkBxU+IeMd0nAYDD
         R1mFhGqnOCX7uXO2Y2HYnW9rp3Roa0OSX69EdMwHXuHzMJOhjMZEPZ6w0e09yvlAPhU9
         8mTKacyLeXbdo56I0rWI2a9YL+nvx5+5vp0q2eDGK0BKjFuA88+1vYDnbaJ78zyexlHO
         J3OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q6z80PFwyq5zF4sE798rB0h2XoymCmatv0a4gNGnqVA=;
        b=rm/gj7CDvU9oe81FIPmUEbtudtxj7iDPGc6gHeXSxpBwa3bQhS1hZnXf3F3PfNe27L
         7N17VjgIWd2ZQU3Txe54QlFh+MQass2Ql63CGyjofa41EBayRNA6i0HP3xZp11W5XB7q
         6k2Fzf33UlqmuVpjv+c5TL6zcOKUVNafAkWkV+n3JMxaQf+W1LNkN+ey0h9TK3T5tjrP
         0L8m6cmTc3huypDeEUB2SOrF4d3+rDVDWoEyVwHuPEyDvCgi8K6E708+Zi8WkNUEWdJp
         LqGJZN3dpxLJ+4HBCw2XnYeGTkErmCJH2C4fERdKnMON79wrfNhquoURs8T2GOz7RKfs
         nz4g==
X-Gm-Message-State: ACrzQf2dBiFO3JZw/BQbwD6c/iI0g4a2yWPkfGbpo1B9l2Wq5MpGW1/9
	GqcQsVn7fZ1zqa3+mGjy5hLiLiFXT6UOcFjcAa1zzsNLfNc=
X-Google-Smtp-Source: AMsMyM6OwOcDdtyjMOjpE0CUWcvsWyuJLrnqqc7RWsg5FE+k5sEhC+q8bkBat3SxJGLVKTTd6TjkANKUE5/8lfxZF18=
X-Received: by 2002:a25:dac3:0:b0:6ca:3133:8d58 with SMTP id
 n186-20020a25dac3000000b006ca31338d58mr41892617ybf.516.1666966358681; Fri, 28
 Oct 2022 07:12:38 -0700 (PDT)
MIME-Version: 1.0
References: <20221028125148.264833-1-dmitry.baryshkov@linaro.org> <20221028134036.s3sunt7loa2gcq6s@baldur>
In-Reply-To: <20221028134036.s3sunt7loa2gcq6s@baldur>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 28 Oct 2022 17:12:27 +0300
Message-ID: <CAA8EJprxt3qKTDBi2t=yw-j-1rs_xOpS66C0r7FCEW3pRW5teQ@mail.gmail.com>
Subject: Re: [PATCH v5] phy: qcom-qmp-ufs: provide symbol clocks
To: Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Konrad Dybcio <konrad.dybcio@somainline.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	Johan Hovold <johan@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_071243_161958_02BCBC59 
X-CRM114-Status: GOOD (  18.24  )
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

On Fri, 28 Oct 2022 at 16:40, Bjorn Andersson <andersson@kernel.org> wrote:
>
> On Fri, Oct 28, 2022 at 03:51:48PM +0300, Dmitry Baryshkov wrote:
> > Register three UFS symbol clocks (ufs_rx_symbol_0_clk_src,
> > ufs_rx_symbol_1_clk_src ufs_tx_symbol_0_clk_src). Register OF clock
> > provider to let other devices link these clocks through the DT.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >
> > Changes since v4:
> > - Rebased, dropping merged clk patches
> > - Fix whitespace errors
> > - Add linebreaks to fit into 100 chars limit
> >
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 61 +++++++++++++++++++++++++
> >  1 file changed, 61 insertions(+)
> >
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > index e28c45ab74ea..f60e29c68c26 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > @@ -1067,6 +1067,60 @@ static int qmp_ufs_clk_init(struct device *dev, const struct qmp_phy_cfg *cfg)
> >       return devm_clk_bulk_get(dev, num, qmp->clks);
> >  }
> >
> > +static void phy_clk_release_provider(void *res)
> > +{
> > +     of_clk_del_provider(res);
> > +}
> > +
> > +#define UFS_SYMBOL_CLOCKS 3
> > +
> > +static int phy_symbols_clk_register(struct qcom_qmp *qmp, struct device_node *np)
> > +{
> > +     struct clk_hw_onecell_data *clk_data;
> > +     struct clk_hw *hw;
> > +     char name[64];
> > +     int ret;
> > +
> > +     clk_data = devm_kzalloc(qmp->dev,
> > +                             struct_size(clk_data, hws, UFS_SYMBOL_CLOCKS),
> > +                             GFP_KERNEL);
> > +     if (!clk_data)
> > +             return -ENOMEM;
> > +
> > +     clk_data->num = UFS_SYMBOL_CLOCKS;
> > +
> > +     snprintf(name, sizeof(name), "%s::rx_symbol_0", dev_name(qmp->dev));
> > +     hw = devm_clk_hw_register_fixed_rate(qmp->dev, name, NULL, 0, 0);
>
> Wouldn't it be desirable to provide a non-zero frequency for these
> clocks?

Is there a stable frequency that we can provide here? If I remember
correctly from my tests, UFS symbol frequencies vary depending on the
workload (but I might be mistaken here).




-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
