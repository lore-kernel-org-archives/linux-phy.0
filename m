Return-Path: <SRS0=M3Kk=PE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 376D8C433EF
	for <linux-phy@archiver.kernel.org>; Sat, 16 Oct 2021 23:09:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CC99E60F25
	for <linux-phy@archiver.kernel.org>; Sat, 16 Oct 2021 23:09:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CC99E60F25
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zuJZPbocCm0FxP8kZCNJmHtcOZLQUyS97YIV1jWbodA=; b=f+ttw6fDQleJGK
	CbXk7ZToMKDb7tbuzq9FcE5UlGXOflZhzQ1atMyfPb/Es/MPSNk4VK8qzDQrI/Ud4gWHpv4pBgefk
	DoR0zVExtUlPMcyZ2d7IRusOo6CyCd9IeRiiBOY4tTdtarW2t+bw9FJ5lYUS+CPPXS+6B18gtFUNm
	KYg0wqo0kM3icfFnMs+UF32uT1AqEVKpBfAlWbjO4aHMxWRuvHqX4kRf0HXWwPF/afGJ9EY0kRaK4
	Uc+RNCZ+pAEB1f9iwVy7UMl8r+mK14eDDkV6WBMsB/v3451RIWb9pfMpwPsDWyB8iTdQAmrR4oaXS
	0R4BpqAKW9SrxofU2gUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbso8-00BTOm-Av; Sat, 16 Oct 2021 23:09:40 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbso5-00BTOC-4Y
 for linux-phy@lists.infradead.org; Sat, 16 Oct 2021 23:09:38 +0000
Received: by mail-oi1-x229.google.com with SMTP id z126so18784412oiz.12
 for <linux-phy@lists.infradead.org>; Sat, 16 Oct 2021 16:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=XIUuxz/3xR9ZWSjRj8mW7HoeuGTklmNICX1U7YnsKBs=;
 b=eSSfyrfBbl1evd4GA7Pa+K4mPIg5doOQ6t94haIHujWkhVuBWMu2tgi6Fv0mZ8OklN
 2sAfoPKO3ySaVkRxWwf3Mp/DqBSNRfOsiKBw72l7gwzsw8rFuxc+NNjLXjsU001IBnsI
 LUtkgSdZ94bYRfhAooM2APfEuQ59WF+rXpNhL5r21DOa19ks0hn1+M5kgL7kVQQPbz0M
 JSRvs4Nl3Xj/oaKePwGZUrDT2I+Cz/wxvS3yXYfSwMr9aj+DvmGQAVLb2ApjOyVTIH7T
 wpfSz2GODBwYHUfg7NysbEPg64g2+1UwDPTxN9WMoBkn0HEL6Puyk12ihVGtwrJDJ3VO
 CfTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XIUuxz/3xR9ZWSjRj8mW7HoeuGTklmNICX1U7YnsKBs=;
 b=UjBXOLv8tJm22K8Y9/Uyez/u8+a5VPZK6ggneN8MYwR+7hyVgxWEQ2+ptFDmAbEHd4
 B56uYbJ+hiLzfCmat2elhHWlZ+GATZVLDQRh9Fs3lZdUS+26Lh0c8Ni96PY+a9YSIUpb
 0EqaQ53NW1lSltKrNHuYuV8MmHujuK+4tjx2l8WLOKCU6KXmV3/hO5KN0YUbquVmSV3V
 3pEIoSs6jGD2eVitofHW9g/WiKMis2gVE/hyrpoVU/gs9u+BB0FuNAI53s/UyyOKD2Es
 /1ticA5ZLmk+88jKgu1zXG2nNipn98ojGlubvCn5kd2M2CywvpFKA+I92yA71sA9aVgC
 D+5A==
X-Gm-Message-State: AOAM532dzZZoaO50qImcHWynUPE94/aFaH/UAllRo3ack5WNEmpsVckm
 3vwQuZnvkdYqYrdgcPFyqgkT1Q==
X-Google-Smtp-Source: ABdhPJxikg0PiixiDyXxda+GjtGQkG9GOCEnoswQ0EfU9If6Rmt8XfLX1iZeZPdh3OOToOAAtCkU2A==
X-Received: by 2002:a05:6808:1243:: with SMTP id
 o3mr14368224oiv.99.1634425775199; 
 Sat, 16 Oct 2021 16:09:35 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
 by smtp.gmail.com with ESMTPSA id 38sm2098178oti.13.2021.10.16.16.09.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Oct 2021 16:09:34 -0700 (PDT)
Date: Sat, 16 Oct 2021 18:09:32 -0500
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 linux-phy@lists.infradead.org,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Abhinav Kumar <abhinavk@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2 2/2] phy: qcom: Introduce new eDP PHY driver
Message-ID: <YWtbrAlV9x3rLTsQ@builder.lan>
References: <20211015221312.1699043-1-bjorn.andersson@linaro.org>
 <20211015221312.1699043-2-bjorn.andersson@linaro.org>
 <CAA8EJpqGbiy_d1_RUoPiT0Jz0CgC5WaekkuJFXyzU7z7rkZChw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpqGbiy_d1_RUoPiT0Jz0CgC5WaekkuJFXyzU7z7rkZChw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_160937_242927_5FB5C6FF 
X-CRM114-Status: GOOD (  25.53  )
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

On Sat 16 Oct 11:36 CDT 2021, Dmitry Baryshkov wrote:

> On Sat, 16 Oct 2021 at 01:11, Bjorn Andersson
> <bjorn.andersson@linaro.org> wrote:
[..]
> > diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
[..]
> > +#define QSERDES_COM_SSC_EN_CENTER               0x0010
> > +#define QSERDES_COM_SSC_ADJ_PER1                0x0014
> > +#define QSERDES_COM_SSC_PER1                    0x001c
> > +#define QSERDES_COM_SSC_PER2                    0x0020
> > +#define QSERDES_COM_SSC_STEP_SIZE1_MODE0        0x0024
> > +#define QSERDES_COM_SSC_STEP_SIZE2_MODE0        0x0028
> 
> I think we might want to use register definitions from phy-qcom-qmp.h,
> so that it would be obvious, which generations are handled by the
> driver.
> 

I reviewed the all the registers and concluded that the QSERDES is V4,
so I included phy-qcom-qmp.h and used the SERDES_V4 defines instead.

The registers found in the PHY and LANE_TX blocks are specific to this
PHY, so I'm keeping these here.

[..]
> > +/*
> > + * Display Port PLL driver block diagram for branch clocks
> 
> Embedded DisplayPort
> 

Sounds good, I also updated the drawing below where suitable.

> > + *
> > + *              +------------------------------+
> > + *              |         DP_VCO_CLK           |
> > + *              |                              |
> > + *              |    +-------------------+     |
> > + *              |    |   (DP PLL/VCO)    |     |
> > + *              |    +---------+---------+     |
> > + *              |              v               |
> > + *              |   +----------+-----------+   |
[..]
> > +static struct clk_hw *
> > +qcom_edp_dp_clks_hw_get(struct of_phandle_args *clkspec, void *data)
> > +{
> > +       unsigned int idx = clkspec->args[0];
> > +       struct qcom_edp *edp = data;
> > +
> > +       if (idx >= 2) {
> > +               pr_err("%s: invalid index %u\n", __func__, idx);
> > +               return ERR_PTR(-EINVAL);
> > +       }
> > +
> > +       if (idx == 0)
> > +               return &edp->dp_link_hw;
> > +
> > +       return &edp->dp_pixel_hw;
> > +}
> 
> You might want to use of_clk_hw_onecell_get() instead of the special function.
> 

Yeah, that looks slightly cleaner.

> > +
> > +static int qcom_edp_clks_register(struct qcom_edp *edp, struct device_node *np)
> > +{
> > +       struct clk_init_data init = { };
> > +       int ret;
> > +
> > +       init.ops = &qcom_edp_dp_link_clk_ops;
> > +       init.name = "edp_phy_pll_link_clk";
> > +       edp->dp_link_hw.init = &init;
> > +       ret = devm_clk_hw_register(edp->dev, &edp->dp_link_hw);
> > +       if (ret)
> > +               return ret;
> > +
> > +       init.ops = &qcom_edp_dp_pixel_clk_ops;
> > +       init.name = "edp_phy_pll_vco_div_clk";
> > +       edp->dp_pixel_hw.init = &init;
> > +       ret = devm_clk_hw_register(edp->dev, &edp->dp_pixel_hw);
> > +       if (ret)
> > +               return ret;
> > +
> > +       return devm_of_clk_add_hw_provider(edp->dev, qcom_edp_dp_clks_hw_get, edp);
> > +}
[..]
> > +static struct platform_driver qcom_edp_phy_driver = {
> > +       .probe          = qcom_edp_phy_probe,
> > +       .driver = {
> > +               .name   = "qcom-edp-phy",
> > +               .of_match_table = qcom_edp_phy_match_table,
> > +       },
> > +};
> > +
> > +module_platform_driver(qcom_edp_phy_driver);
> > +
> > +MODULE_DESCRIPTION("Qualcomm eDP PHY driver");
> 
> Should we mention that it's a eDP QMP PHY driver in contrast to the
> old eDP from 8x74/8x84?
> 

Sure.

> Also MODULE_AUTHOR seems to be missing.
> 

Okay, I can add one of those.

Thanks,
Bjorn

> > +MODULE_LICENSE("GPL v2");
> > --
> > 2.29.2
> >
> 
> 
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
