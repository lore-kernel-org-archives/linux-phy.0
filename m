Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD661C636D6
	for <linux-phy@archiver.kernel.org>; Tue,  7 Feb 2023 12:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ntSTYMsJbDCciq5EWJyMQToLgbQcyuiXTCttYtfbN9o=; b=zxdripBXLdXdlQ
	hWMNeVHKp6t0+QR3cuKOtvwCHCbMXvB7P3476ZQD3TCNDhlf3ziT9Ld0wJmcGEDUKqtQC6x6Px4sN
	7/1StHJAeCgH+20csEeXB3g8C2/GjSCAzjcaSQY0Vz+SQecyYR+2ChjKUaCB7nwg6wSQo6fiazXob
	fWmjKkg5K86jOXAEwO+qTnx3eKS1LYH3ToP6KT/tfu7Oagh+fGFT4EVZXq0+DMKj7h9yTzQGKo83B
	aKgFjsqwt7DEEmXcz39tQdRI/PHd/aXC2MdRYg10fzOIbqi9CvmbXk4HmHlhfoYvfeqb0th8z2hLU
	Snn36inz2CfbHKdVGqyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPN2i-00C5K1-B5; Tue, 07 Feb 2023 12:25:48 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPN2e-00C5I6-Aj
	for linux-phy@lists.infradead.org; Tue, 07 Feb 2023 12:25:45 +0000
Received: by mail-wr1-x434.google.com with SMTP id a2so13101870wrd.6
        for <linux-phy@lists.infradead.org>; Tue, 07 Feb 2023 04:25:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EnZqUDs+vOL9eLigF5zhRBTNLnRQCkndCOjGhTOrE2Y=;
        b=JM441Qqy+1fZmCJblSylYs6tj2fTsSrjmHEBvTFWYOCXkTdIp6bWHaNlTrN/gMI2LM
         +tuwvNETO57Xy5HH6EfrZRKMyVf5msaPShQfmXx5XED+SpBUl7jrNqS6AJwoyd0xTSQB
         bjYsDhCfsOMCJuRHlUUxwP17LalQGdrQgi7aBZ4qtuheMEg3/7vbWf9Z8gU/sWwMqNMa
         llN5umaTQX3fhTYJBh41eGqGHccL+Ui1Zu6pNkua9T54lMbevLn+tj62Or9yLKAdYieF
         PIfUwyWXLHo7TC3hefPdfd6MUo0MXo6dynyMJgFbMAY1tgtBEgreMERHEAgr5+wi/Zjn
         LtOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EnZqUDs+vOL9eLigF5zhRBTNLnRQCkndCOjGhTOrE2Y=;
        b=LQaIjyfIet/TJalBL4I74T+BlGuoCkaVFO3EppTRdzHROf5fsV+j2C7p5aDQIygbzz
         K0uRHQdW3Zda1Vg4AHe4gXFWVUp10+oI+wBGNZwBrT1MlsrovBnhedKxmDdfrgJH/nDR
         7EVa7DW6gSsZMltfhLYAkumsLyZ7FZS0gDTiKKEtPjmJDPJVcx/9DAYqRkCdvMCXznjg
         hVdP0jux7R8KgotbKJCokV3YRlARJy+RIl/d//Nv/2YphNWCjfU5CJbP0+DKK1oGswSm
         gG95tZr1gDqUHD/AT3zAEaEDtOPa7VKd0ft7uDbeDr5M33TmPGp2NTMPWL29pgXPKpA3
         lSWw==
X-Gm-Message-State: AO0yUKXuVGq0nAUPYnPs80Khfa44kWz091Ln1pYMB3Df5ZPvlNIZ1RJ/
	uCNaNBazVC+vv5XH8onjEzk/EQ==
X-Google-Smtp-Source: AK7set96v9kQl3blLgDHsC9KtC7U5aHC8Yd0qc798XB5lCqQIh/WZdWAaO6kvfN+pCiHtWLrDSOvog==
X-Received: by 2002:a5d:4144:0:b0:2c3:e5f5:9fa9 with SMTP id c4-20020a5d4144000000b002c3e5f59fa9mr2444692wrq.67.1675772740668;
        Tue, 07 Feb 2023 04:25:40 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id x18-20020adfffd2000000b002c3f1223059sm2099785wrs.36.2023.02.07.04.25.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 04:25:40 -0800 (PST)
Date: Tue, 7 Feb 2023 14:25:38 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: Re: [RFC v3 4/7] phy: qcom: Add QCOM SNPS eUSB2 repeater driver
Message-ID: <Y+JDQt/T7pXh2/P7@linaro.org>
References: <20230202133816.4026990-1-abel.vesa@linaro.org>
 <20230202133816.4026990-5-abel.vesa@linaro.org>
 <6f326ed7-6799-b965-fe3a-1f046546ed44@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6f326ed7-6799-b965-fe3a-1f046546ed44@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_042544_395762_5EAB6594 
X-CRM114-Status: GOOD (  21.03  )
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

On 23-02-03 18:51:13, Dmitry Baryshkov wrote:
> On 02/02/2023 15:38, Abel Vesa wrote:
> > PM8550B contains a eUSB2 repeater used for making the eUSB2 from
> > SM8550 USB 2.0 compliant. This can be modelled SW-wise as a Phy.
> > So add a new phy driver for it.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >   drivers/phy/qualcomm/Kconfig                  |   9 +
> >   drivers/phy/qualcomm/Makefile                 |   1 +
> >   .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 278 ++++++++++++++++++
> >   3 files changed, 288 insertions(+)
> >   create mode 100644 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> > 

[ ... ]

> > +
> > +static int eusb2_repeater_init(struct phy *phy)
> > +{
> > +	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
> > +	const struct eusb2_repeater_init_tbl *init_tbl = rptr->cfg->init_tbl;
> > +	int num = rptr->cfg->init_tbl_num;
> > +	int ret = 0;
> > +	u32 val;
> > +	int i;
> > +
> > +	ret = regulator_bulk_enable(rptr->cfg->num_vregs, rptr->vregs);
> > +	if (ret)
> > +		return ret;
> > +
> > +	regmap_update_bits(rptr->regmap, rptr->base + EUSB2_EN_CTL1,
> > +				EUSB2_RPTR_EN, EUSB2_RPTR_EN);
> > +
> > +	for (i = 0; i < num; i++)
> > +		regmap_update_bits(rptr->regmap,
> > +					rptr->base + init_tbl[i].offset,
> > +					init_tbl[i].val, init_tbl[i].val);
> 
> I'd move this to a separate function. Then you can use it in the set_mode()
> too.
> 

I don't think this is necessary in set_mode.

> > +
> > +	ret = regmap_read_poll_timeout(rptr->regmap,
> > +					rptr->base + EUSB2_RPTR_STATUS, val,
> > +					val & RPTR_OK, 10, 5);
> > +	if (ret)
> > +		dev_err(rptr->dev, "initialization timed-out\n");
> > +
> > +	return ret;
> > +}
> > +

[ ... ]

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
