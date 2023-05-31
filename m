Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D685BC77B7A
	for <linux-phy@archiver.kernel.org>; Wed, 31 May 2023 12:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5F7WoE2zdXx6cFZu5+GPjSkya4Zry63WLMXjpQnY0M8=; b=L6w17uuMbChe99
	bB1YGRJJTezxPuOkRsgfaJ0CvFe3T9+q7KKmDyLDPlfX5vqKxcteboMqzD4kRsDg3/cZTcSZtG/Hg
	cim7OArqTlC63ZrwM5lNrupIYWPxF0chH8/C1NhklXZ/HUs5CuIfl3eKPgZdHHp6hDU3BDA5NUqYW
	QWv6XwTepnMcamv6YlDVPzr1TvLVEdqMxqn0zOkaRqAV+2O5WoLpwsMiOceiglI3ize2RUajyT5je
	XzkBMXoTgeblmtXW+sipo4FDjqXswozaM2g9j6X7gorvMfXKs1J7io9fM+Uwo60JuDIIJ+YbKfZM1
	81zeDNYs0t/aDfuh4hTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4KiO-00HKwr-1c;
	Wed, 31 May 2023 12:14:08 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4KiM-00HKvY-0z
	for linux-phy@lists.infradead.org;
	Wed, 31 May 2023 12:14:07 +0000
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-bad041bf313so7998701276.0
        for <linux-phy@lists.infradead.org>; Wed, 31 May 2023 05:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685535238; x=1688127238;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Q2BZSxSP7Pt2y1VcGEto9FJCjPiOTo234JZ/yns0+cY=;
        b=Mz/WpmK5r+Ad4wgQpc9mCecDbBaJv7/vRYI/G9cv2tYbfZRTwArYpbXrsQsIZIwH8v
         sXQInLJ/QaM/CgporF84MR6HmDBNbsubJ/hUndX9hNdvAu+RMQFOYw8zrAmHjTKotMgk
         VXRtBQUjvNk4Uc4KScLYrfFmtktOGswN/7YsiAJQlo02CQl8yOaAmfKE2UZdiBau+leP
         DiLzHDeZ68KHMkXZxSvB2i9eO1PROpNFu3Mqi85yJY5zH6R77CAjg0pR2s0zOg2OlTiU
         10HzSYI7jEqj9XXAH/66rcRLgznqGwrth3kerGGcasQo5CbCNFwXxtfCOl8vWUFyQZAF
         SL1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685535238; x=1688127238;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q2BZSxSP7Pt2y1VcGEto9FJCjPiOTo234JZ/yns0+cY=;
        b=Yl3P1xPXaPNOh5LibPK1hRmoaoGDUBYsUsry2VAYRDZcg1qvwNzw3hJuCeTYP/9M4q
         UAvgiBeDisiJ3IlCa5VZjidxU1pVqKrmGjiUDgvnAiGD4oU++tpmTF0b6mwiREo88RdN
         dVSe+iB//JHDA01Q3LpQjycHYsxBKO1YGW+179tJC8ih0HfGmo6HqxXfC9TAn9CNvXjE
         11K0oz3RFKU9CTf91EKmF4ytVQTdKKGSCDbEpUZOA2ipo8VdU4pNAsLMUItTY1UUfZsx
         jJurAr+EGKQDO+HoEklM/Bv7i+/uFWz2H38gXRTt1/zCku6av0p6fuJR2BOKMbvZsNGt
         /60A==
X-Gm-Message-State: AC+VfDyNasK8dC9UY+gHnJ3AglrL7iz5vEVQNN1RtgoBXF6awYQFrVV2
	14A/4ZbH95XAb6XnzrmMkp3jVbaD/bRgaprl8saZVLjQQ7Fv7pPy8II=
X-Google-Smtp-Source: ACHHUZ7536cxfgOmZ9m64GzW+g/SJ2WDgsfWDV+bhSeNj4JLfmhTi0RfMu55OZxmHYhxl0ybxLX0g+I6SijNSTtrs1w=
X-Received: by 2002:a81:df12:0:b0:565:4eee:a4d4 with SMTP id
 c18-20020a81df12000000b005654eeea4d4mr5498236ywn.10.1685535237693; Wed, 31
 May 2023 05:13:57 -0700 (PDT)
MIME-Version: 1.0
References: <20230531023415.1209301-1-dmitry.baryshkov@linaro.org>
 <20230531023415.1209301-3-dmitry.baryshkov@linaro.org> <47e84a3c-b457-7aff-ad6a-809178c08b62@linaro.org>
In-Reply-To: <47e84a3c-b457-7aff-ad6a-809178c08b62@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 31 May 2023 15:13:46 +0300
Message-ID: <CAA8EJprDPzTQU1j6n17gYAeiXw1t6M_d4CciTtD8mHNksYGHow@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] phy: qcom-qmp-combo: add support for the USB+DP
 PHY on SM8150 platform
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_051406_349759_FDE91A7A 
X-CRM114-Status: GOOD (  18.60  )
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

On Wed, 31 May 2023 at 14:35, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> On 31.05.2023 04:34, Dmitry Baryshkov wrote:
> > SM8150 and SC8180X are close relatives. Reuse sc8180x data to support
> > USB+DP combo PHY on SM8150 platform.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> I'm not sure this is right. Downstream reuses SA8195 USB seq.

The upstream driver uses sm8150 data for sc8180x. So even if sc8180x
data is not correct for sc8180x, it is definitely the one that we
should use for sm8150:

static const struct qmp_phy_cfg sc8180x_usb3dpphy_cfg = {
        .serdes_tbl             = sm8150_usb3_serdes_tbl,
        .serdes_tbl_num         = ARRAY_SIZE(sm8150_usb3_serdes_tbl),
        .tx_tbl                 = sm8150_usb3_tx_tbl,
        .tx_tbl_num             = ARRAY_SIZE(sm8150_usb3_tx_tbl),
        .rx_tbl                 = sm8150_usb3_rx_tbl,
        .rx_tbl_num             = ARRAY_SIZE(sm8150_usb3_rx_tbl),
        .pcs_tbl                = sm8150_usb3_pcs_tbl,
        .pcs_tbl_num            = ARRAY_SIZE(sm8150_usb3_pcs_tbl),
        .pcs_usb_tbl            = sm8150_usb3_pcs_usb_tbl,
        .pcs_usb_tbl_num        = ARRAY_SIZE(sm8150_usb3_pcs_usb_tbl),

        .dp_serdes_tbl          = qmp_v4_dp_serdes_tbl,
        .dp_serdes_tbl_num      = ARRAY_SIZE(qmp_v4_dp_serdes_tbl),
        .dp_tx_tbl              = qmp_v4_dp_tx_tbl,
        .dp_tx_tbl_num          = ARRAY_SIZE(qmp_v4_dp_tx_tbl),



>
> Konrad
> >  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > index 33cc99d9c77d..2bff1bbb8610 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > @@ -3614,6 +3614,10 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
> >               .compatible = "qcom,sm6350-qmp-usb3-dp-phy",
> >               .data = &sm6350_usb3dpphy_cfg,
> >       },
> > +     {
> > +             .compatible = "qcom,sm8150-qmp-usb3-dp-phy",
> > +             .data = &sc8180x_usb3dpphy_cfg,
> > +     },
> >       {
> >               .compatible = "qcom,sm8250-qmp-usb3-dp-phy",
> >               .data = &sm8250_usb3dpphy_cfg,



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
