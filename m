Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 596C5E6ADE3
	for <linux-phy@archiver.kernel.org>; Sat, 23 Nov 2024 16:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0r5w5G5FXx4a+Mu7/wt7GYMG5SPq9GAvqYNas1jMKUk=; b=PU93lxKdiTIDAW
	WLhjqT7+KwmcWi1hk5K8xpRCP3y+pVsoVJnhbTCePaJ9XmU1dHfans5RabRtXeZdSpWyvtYSIyX3Y
	XOHBwQbkCrDrjjdkD49VCDzK5fmnmRNDsSg23LJ0wHPmk1I8sRczvWH0Ie3As0aEQ4ZCSK0ocTyKP
	g+0XY4raneZwjgK6JLxQlkvMtSolebjx0NjiibUpNaX36mFwPDnPxGAxnEb1h7qH3vQJkjwaCgXGE
	9MqhcySnYdiQ034WZ4s6nZCsxNBFlf+F39OSbdnAblIJahsuDMAKNcq6C5FkaWlL55pAJTT8TkFFM
	XvyAI4/J3Bcoi9JEoOOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEt3Q-00000004boz-0Wi7;
	Sat, 23 Nov 2024 16:32:16 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEt3N-00000004boa-36tv
	for linux-phy@lists.infradead.org;
	Sat, 23 Nov 2024 16:32:15 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-53d9ff92edaso3622513e87.1
        for <linux-phy@lists.infradead.org>; Sat, 23 Nov 2024 08:32:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732379531; x=1732984331; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0MxevDa9VlZfQk/6diKJ/RQ0XTFV8JaAse1FnOzuzGI=;
        b=jo+il7kL2EcjyAyGyZrtNjhoTIWgmth9asty0Kkj7I+h6VO22FXYAlnirBZg7ko/Jb
         I8aPGxbmSXu0O3sNv+79ncTtOSM2F6elhdfsufyibRe6t8k59zlSFwc72dkNf1b1eUV2
         2KsxV2abNb51vyd9bOdYASVVtxzHUVSqOK0/TP2wylRZ6NZ+nPBDY8yIPHXfitZIsKj3
         nIuDeJp/hHgMb4mwuKUopiUAhNibKZLq8rlN3DdK3BlojYwQ5rXAINYIUtyiNjiOWVdQ
         cMxwEfj125hXD2xa5T74TCfn2QrEL1UVTU+7NFOpFdvXF8s/ctnsGE5Fph0jMeQ0Sqwh
         swWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732379531; x=1732984331;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0MxevDa9VlZfQk/6diKJ/RQ0XTFV8JaAse1FnOzuzGI=;
        b=tPlDRtmNmHV3DgMBG0seARPZOcxf8ARGjMdUiiDyn0/gxHJZy79KFBd4KsTCTi4Ygm
         JBbhbEOszmIElBg9ON+t+bBMJNCN+Ds9GcW/b/KqkbcvNkcpGsJRzlO4sECngZzWVwB+
         b7j8eFBJRpaQj2Fy7KGkuoR/nAzFan9Ye51uk3+rPF7oTDudnFsxUa5tdfpT15FbHVLE
         EecRXsKY/3omqLRkIX281i57ZznEztTOnYba4PLbS+FMhJ3tbkxdv3R8KEgks44bhmPz
         WAlLBHl15n9luywCL+QtcH/QAbjYfHD3cWrmD6jyOwgyqrRs/bIUo8j3zSKnZZQy/UVO
         DkJw==
X-Forwarded-Encrypted: i=1; AJvYcCUowpBhNPWXpqUfiKU0Z2npGEeG+ZHm2m9qdNQKC8her/EqQUZJ4FawdKuGEk2sfM8r+A7K/TI4p+Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YwqiidqQ02DuAhhHiNvXsmhzBUxImoNd1XRK9qpaUU9iUKaJMX9
	v0NdQ6jYPvTAGOxBmgHvPGzYT69BlDC6BtNUU4ChaIoi+BmL0FdxapC6DXB86htNWCQwC41g8I8
	f
X-Gm-Gg: ASbGncuYV3Qja4beh4h2+ehBcEYgiOlSAPRiAPm1GVSlffHr5F6enlBkR9516u2ewCD
	Jsqr/mSwzuIkr6OaeMaUdUD5RcEE2f7Tkexw0VPSCFE5omnbiemm2kYxijenBoZdD2HTF59Qy29
	aYVt226/VOOEKiWA4rNXAXiDCMAvFNpWgH1mDXkH1CTD5PGKGuXMMAwyphkEpUd06xedfEWRWQX
	zUBDFg3e/lf+QFLcI0JLsvZIOreURpzrhJpHtjjzijF+/9EfLyZTnd6S5DGtqR9zhrXdr2uQxMK
	JRNq+7/Il2BND1lItJseXedgIFXFPw==
X-Google-Smtp-Source: AGHT+IE/kpuKX9Z55uF4fzpcyiUmNjnR2bVsf+7KIIGnKThLK7KcQSqBM0gFxYOZnj/rPZs2stSn0Q==
X-Received: by 2002:a05:6512:3b97:b0:53d:c37d:3378 with SMTP id 2adb3069b0e04-53dd35a5531mr3263454e87.5.1732379531348;
        Sat, 23 Nov 2024 08:32:11 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd2450a7dsm970118e87.59.2024.11.23.08.32.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Nov 2024 08:32:09 -0800 (PST)
Date: Sat, 23 Nov 2024 18:32:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Song Xue <quic_songxue@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Manu Gautam <mgautam@codeaurora.org>, 
	Vivek Gautam <vivek.gautam@codeaurora.org>, kernel@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: qcom-qusb2: Add regulator_set_load to Qualcomm
 usb phy
Message-ID: <3zvstdxhgobn64ttcggmk44ejsroxmwe7y25rraebh3p4evsy6@3g64a5tuvt7w>
References: <20241121-add_set_load_to_qusb_phy-v2-1-1c5da1befec0@quicinc.com>
 <7qj4szkw365ve45hm5w475xs2vlfsfg5pcpc44bo3s5vhrcmuu@bh5swbug4ywi>
 <b8cd1434-8096-4d52-8499-9d25cf3805b8@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b8cd1434-8096-4d52-8499-9d25cf3805b8@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241123_083213_795076_D640BE66 
X-CRM114-Status: GOOD (  35.92  )
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

On Sat, Nov 23, 2024 at 01:07:06PM +0800, Song Xue wrote:
> 
> 
> On 11/22/2024 6:24 AM, Dmitry Baryshkov wrote:
> > On Thu, Nov 21, 2024 at 04:09:27PM +0800, Song Xue wrote:
> > > Set the current load before enable regulator supplies at QUSB phy.
> > > 
> > > Encountered one issue where the board powered down instantly once the UVC
> > > camera was attached to USB port while adding host mode on usb port and
> > > testing a UVC camera with the driver on QCS615 platform. The extensible
> > > boot loader mentioned that OCP(Over Current Protection) occurred at LDO12
> > > from regulators-0 upon powered on board again. That indicates that the
> > > current load set for QUSB phy, which use the regulator supply, is lower
> > > than expected.
> > > 
> > > As per QUSB spec, set the maximum current load at 30mA to avoid overcurrent
> > > load when attach a device to the USB port.
> > > 
> > > Fixes: 937e17f36a32 ("phy: qcom-qusb2: Power-on PHY before initialization")
> > > Signed-off-by: Song Xue <quic_songxue@quicinc.com>
> > > ---
> > > Changes in v2:
> > > - Removed "---" above the Fixes.
> > > - Link to v1: https://lore.kernel.org/r/20241121-add_set_load_to_qusb_phy-v1-1-0f44f3a3290e@quicinc.com
> > > ---
> > >   drivers/phy/qualcomm/phy-qcom-qusb2.c | 13 ++++++++++++-
> > >   1 file changed, 12 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> > > index c52655a383cef008552ed4533b9f31d1cbf34a13..80f0d17c42717e843937255a9a780bbae5998535 100644
> > > --- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
> > > +++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> > > @@ -722,16 +722,27 @@ static int __maybe_unused qusb2_phy_runtime_resume(struct device *dev)
> > >   	return ret;
> > >   }
> > > +#define QUSB2PHY_HPM_LOAD 30000 /*uA*/
> > > +
> > >   static int qusb2_phy_init(struct phy *phy)
> > >   {
> > >   	struct qusb2_phy *qphy = phy_get_drvdata(phy);
> > >   	const struct qusb2_phy_cfg *cfg = qphy->cfg;
> > >   	unsigned int val = 0;
> > >   	unsigned int clk_scheme;
> > > -	int ret;
> > > +	int ret, i;
> > >   	dev_vdbg(&phy->dev, "%s(): Initializing QUSB2 phy\n", __func__);
> > > +	/* set the current load */
> > > +	for (i = 0; i < ARRAY_SIZE(qphy->vregs); i++) {
> > > +		ret = regulator_set_load(qphy->vregs[i].consumer, QUSB2PHY_HPM_LOAD);
> > 
> > Please use regulator_set_mode() instead. Or just fix the mode in the
> > device tree, if the device can not operate if the regulator is in
> > non-HPM mode.
> > 
> Thanks for comment.
> 
> From my point, regulator_set_mode() will change the regulator's operating
> mode including current and voltage, which will also influence the other
> shared consumers. Meanwhile it is unacceptable to fix mode in the device
> tree because it is determined by regulator's device tree.
> 
> According to the required fix, regulator_set_load() simply aggregates the
> current load for the regulator and does not affect other shared consumers.
> Setting the current load is relevant to the issue.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> 
> Regards,
> Song
> > > +		if (ret) {
> > > +			dev_err(&phy->dev, "failed to set load at %s\n", qphy->vregs[i].supply);
> > > +			return ret;
> > > +		}
> > > +	}
> > > +
> > >   	/* turn on regulator supplies */
> > >   	ret = regulator_bulk_enable(ARRAY_SIZE(qphy->vregs), qphy->vregs);
> > >   	if (ret)
> > > 
> > > ---
> > > base-commit: decc701f41d07481893fdea942c0ac6b226e84cd
> > > change-id: 20241121-add_set_load_to_qusb_phy-d1327c797ffe
> > > 
> > > Best regards,
> > > -- 
> > > Song Xue <quic_songxue@quicinc.com>
> > > 
> > 
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
