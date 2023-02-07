Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40EE1C636CD
	for <linux-phy@archiver.kernel.org>; Tue,  7 Feb 2023 07:11:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kynsnBVieF6lA3H/0p0w8kaPgpBWDfj9QOKUpCSxpqM=; b=XEi6gCzDInF9/A
	CbXxHGTKRrEx/GDMK2XHZfur79vyMKQVz54PfyZKEoyivRNud4lD1k8PVZd977QVskCFa6r8au9y/
	7+iAMMeo/M9UDYjsVC709Jk+zQNnf7v15s9fR9r3fITUJf8oLOnJ+TystOdl8D2YoYznHoQBn7bBv
	s7pSS3V+hb+C8+9f8My+BCnZkpSeFm4epis2hK1CdIkDD7oPdcKmkJSdlRIDdP8RPVyDsBHunBfWf
	oMMcCVWJUqLMmTE4RHXLFD2JwcjADwx/nRZBaBoqr6qoAxNX92Pt8PzAGK+eG9feg+Q0ofqFi0VQB
	BIffpYYJnIPwHH4BtUAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPI8D-00B67R-M9; Tue, 07 Feb 2023 07:11:09 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPI8B-00B66v-C9
	for linux-phy@lists.infradead.org; Tue, 07 Feb 2023 07:11:08 +0000
Received: by mail-wr1-x430.google.com with SMTP id j25so9034305wrc.4
        for <linux-phy@lists.infradead.org>; Mon, 06 Feb 2023 23:11:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZS0V+GLlaD2KUKWgU7WfhuI+UXfHxHE5nFGEqvgoxzY=;
        b=KDG8DY2Z+0qWLkniGX8jdRJcYQ4jrZLIdgu6z5KFhaDyVVS+un3nIKhRVjkwt8sXE1
         4YvoBlmjNv/tjFXKfJrA55qERO0Werbaybh9iv1rhaaDmnWcJ8zDxNSTylFlNQ34Dz5q
         LYHDt4pDa+EetASYqbdQE0iShp7LIDpITQ/onsyR2Nh2oaUcBZKbjNc9a0fQueNi4UF7
         5VhLe+13xufFfUNG7rsLdL/fmXLIeQIh9eZKM107+8QO+NcAH2P6UwWOpMAWyiDRjPb8
         DZMLmdXtXisjFRARgnvOxb9Xzzq0U8j4Jk7NXoLUxA6ytmM0oO4hY/WMsj0gX5FOo9K9
         68AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZS0V+GLlaD2KUKWgU7WfhuI+UXfHxHE5nFGEqvgoxzY=;
        b=qCFH9Y2YyYQovPfADHXQ5CeR2MROTiELXH/MsP/jOKJWnyK/5WHxfZE9i/hfpyk6Zb
         lsng7qAfDgzS+yND23hFsyUAW1Znk2aKQBO/uNELioYeDMGu0MR+eLzNfToOXlWo/3zb
         D4vqIT2LsQQg4MtmS4/sKT/6Mnj6ZX4bZnoyABuqozrpIKkwQK3u2FptS6+7F3evxYJ0
         qjoP6SIBYdwqp//l/9UMQdFxwDsUx4gwGuePdge9lBSk7XuluEe8V1UVuguMQ4qTXGE7
         ckw22vS7Wu4VXjbyChTUuoUmgb7wwWkgoKPhXwllkG5TezbNhjKb0hPea2sWU+4qtKR1
         b9Pw==
X-Gm-Message-State: AO0yUKVbklT3qY6ARRiHKVluVIqjXWKkfdfr7QwgtICZ1uSsypB8L6zc
	yGvz4YXTUkYHwqtvJO2Fo3QqDA==
X-Google-Smtp-Source: AK7set/+DJI2TrZhXfy4vttaEra/sZ7v5Prc0mU2ulprWaz5rtIS9fkzlWRBcRotXQsQA5THKFnzzQ==
X-Received: by 2002:a05:6000:1081:b0:2bf:d333:219d with SMTP id y1-20020a056000108100b002bfd333219dmr1862710wrw.17.1675753865767;
        Mon, 06 Feb 2023 23:11:05 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id d13-20020adffbcd000000b002c3f6cd1f0fsm471504wrs.83.2023.02.06.23.11.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 23:11:05 -0800 (PST)
Date: Tue, 7 Feb 2023 09:11:03 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [RFC v3 5/7] phy: qcom: phy-qcom-snps-eusb2: Add support for
 eUSB2 repeater
Message-ID: <Y+H5hxaOeGTP+wrt@linaro.org>
References: <20230202133816.4026990-1-abel.vesa@linaro.org>
 <20230202133816.4026990-6-abel.vesa@linaro.org>
 <Y90Q4rDYw9kcXmCQ@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y90Q4rDYw9kcXmCQ@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_231107_439571_C843ABE7 
X-CRM114-Status: GOOD (  21.91  )
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

On 23-02-03 19:19:22, Vinod Koul wrote:
> On 02-02-23, 15:38, Abel Vesa wrote:
> > From: Neil Armstrong <neil.armstrong@linaro.org>
> > 
> > For USB 2.0 compliance, eUSB2 needs a repeater. The PHY needs to
> > initialize and reset it. So add repeater support
> > 
> > Co-developed-by: Abel Vesa <abel.vesa@linaro.org>
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-snps-eusb2.c | 18 +++++++++++++++++-
> >  1 file changed, 17 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> > index 23ec162cc3bd..8d972d49732b 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> > @@ -128,6 +128,8 @@ struct qcom_snps_eusb2_hsphy {
> >  	struct regulator_bulk_data vregs[EUSB2_NUM_VREGS];
> >  
> >  	enum phy_mode mode;
> > +
> > +	struct phy *repeater;
> >  };
> >  
> >  static int qcom_snps_eusb2_hsphy_set_mode(struct phy *p, enum phy_mode mode, int submode)
> > @@ -136,7 +138,7 @@ static int qcom_snps_eusb2_hsphy_set_mode(struct phy *p, enum phy_mode mode, int
> >  
> >  	phy->mode = mode;
> >  
> > -	return 0;
> > +	return phy_set_mode_ext(phy->repeater, mode, submode);
> >  }
> >  
> >  static void qcom_snps_eusb2_hsphy_write_mask(void __iomem *base, u32 offset,
> > @@ -235,6 +237,12 @@ static int qcom_snps_eusb2_hsphy_init(struct phy *p)
> >  	if (ret)
> >  		return ret;
> >  
> > +	ret = phy_init(phy->repeater);
> > +	if (ret) {
> > +		dev_err(&p->dev, "repeater init failed. %d\n", ret);
> > +		goto disable_vreg;
> > +	}
> > +
> >  	ret = clk_prepare_enable(phy->ref_clk);
> >  	if (ret) {
> >  		dev_err(&p->dev, "failed to enable ref clock, %d\n", ret);
> > @@ -342,6 +350,8 @@ static int qcom_snps_eusb2_hsphy_exit(struct phy *p)
> >  
> >  	regulator_bulk_disable(ARRAY_SIZE(phy->vregs), phy->vregs);
> >  
> > +	phy_exit(phy->repeater);
> > +
> >  	return 0;
> >  }
> >  
> > @@ -386,6 +396,12 @@ static int qcom_snps_eusb2_hsphy_probe(struct platform_device *pdev)
> >  	if (ret)
> >  		return dev_err_probe(dev, ret,
> >  				     "failed to get regulator supplies\n");
> > +
> > +	phy->repeater = devm_phy_get(dev, "eusb2-repeater");
> > +	if (IS_ERR(phy->repeater))
> > +		return dev_err_probe(dev, PTR_ERR(phy->repeater),
> > +				     "failed to get repeater\n");
> 
> That implies repeater is assumed to be there for all designs, how about
> older devices, they may not have a repeater?

Well, no other (older) platform has eUSB2 support, IIRC.

And the eUSB2 can't be used as USB 2.0 without the repeater.

> 
> > +
> >  	generic_phy = devm_phy_create(dev, NULL, &qcom_snps_eusb2_hsphy_ops);
> >  	if (IS_ERR(generic_phy)) {
> >  		dev_err(dev, "failed to create phy %d\n", ret);
> > -- 
> > 2.34.1
> 
> -- 
> ~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
