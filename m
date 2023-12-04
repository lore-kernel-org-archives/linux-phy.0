Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5FE2C4167B
	for <linux-phy@archiver.kernel.org>; Mon,  4 Dec 2023 11:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b5L2kRIB2+0fvDq1DTIUzBw3ICivf4fG9OhKjHkGD78=; b=QWo3bYUCyM7YKg
	5huhq2syxtMSpWyTdO7wNuRwuya3fohhYez0cl4PE34W5ldbJKPyS22oFmHDrMi2LMCMTExrReccO
	tj1aK2ex71yx8Nu5kDH9ovdkd+afH28rLmc2LSGwHnT7jn7ccti3rKtPSJQdGfohUXhfBoKJmh+l6
	aHXXbX5Oh/fHf/wzn70WUPwPyR/c5EJ75sw7OD3z9OMzMrD1+aanVHnWGZ9Ylt9QQ2VPyWPXNLSM4
	Y7NTBsTTs89gUClwtLVQA1pt+zFVV/ST95pauLypIUHqW/v1CG8r8GqxVscPD8YbOea2+sIINuSEd
	AvIBCCW07TUkmm/TLlCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rA78R-003eKB-1C;
	Mon, 04 Dec 2023 11:29:11 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rA78O-003eJS-0l
	for linux-phy@lists.infradead.org;
	Mon, 04 Dec 2023 11:29:09 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-40c0873cf84so14592305e9.1
        for <linux-phy@lists.infradead.org>; Mon, 04 Dec 2023 03:29:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701689344; x=1702294144; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9qpcl1LzmxT9f5tQeRRwg71cpVw9T4IVTGE6Uh/UwRg=;
        b=VeE4OfhYZ7UrKvUEMUugBNMeBgvk7T4Mw1VFtOC7Y1VYQeJiAgkUolFJqTHrLPaEFm
         iyQYRdA7rHp65QaaE59R/jDaKD8BwRO1BY5e0h8x7kt8uVWDbSrubESqsB49rBj1EPCM
         PUhqsVPADnm0mbKZQL9cACUMADnbvJNO8q8H6khhxD60vF8bcI8TLXiB1p/dFCMdOPnG
         LPbFlFmvRrZ5bvAu0adyToXyj6ctt0ncG92IT5wmwtjF45HBdluzTf4DyBs+EVGHuiGK
         5SxnzNZt+9qfxCY2j1pMStED58lGHjcHFEt9ozocOLwbFSFv47Nxn9WU+CTZmgvoWk5I
         cDGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701689344; x=1702294144;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9qpcl1LzmxT9f5tQeRRwg71cpVw9T4IVTGE6Uh/UwRg=;
        b=Gt0V1/Ev0T5QlhFIN9E+4wQnJ8ECzV3cw9PIKUZKqUaRQP7PLuoVug1dDbmSt6fy19
         bNi1mRE2C2klbckvfcLb4Tf5xNOL+ZGpMP1fH5bOyliUS1SzAXWGqDhQTpsrJymKxZ3w
         pruphGziQfb/zcIEYhdG9sLUbOsNK1V7R+EU7JWCbKXuqieEbzxt7cnUN0TtbwKnliFt
         H4/CvrxM1kShmg7zNXxb+PEI4TPd51uc4ZmMgyjrAkY2fklTSEKGndiEurQfpXd/1AyK
         IJD0gmh2CPG71k716bLoDJJwsU/brns5rjqv1BIP9rlCNtQl94e2pKGgOkxAENN508+S
         2pVA==
X-Gm-Message-State: AOJu0Yx271jr+p3XGskgyLbbsoUw54Pov8o3mCEVPT5nPH4ks/40SFMl
	l7RyHh5l44ChihQqDUkY5RxFn4XgZ+dSG+p5Qd4=
X-Google-Smtp-Source: AGHT+IFIeHl8tQ97S00ErYokGEb3QRC/5rN0sbxkKGXJpjkxYbsKvilp4T38N4X/ri9J+zArVgE5Yw==
X-Received: by 2002:a05:600c:3ba9:b0:408:37aa:4766 with SMTP id n41-20020a05600c3ba900b0040837aa4766mr2516553wms.5.1701689344331;
        Mon, 04 Dec 2023 03:29:04 -0800 (PST)
Received: from linaro.org ([82.77.85.67])
        by smtp.gmail.com with ESMTPSA id r21-20020a05600c35d500b0040b3e79bad3sm14655959wmq.40.2023.12.04.03.29.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 03:29:03 -0800 (PST)
Date: Mon, 4 Dec 2023 13:29:02 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/7] phy: qcom-qmp: qserdes-txrx: Add some more v6.20
 register offsets
Message-ID: <ZW23/jPxofGw9GnY@linaro.org>
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org>
 <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-2-d9340d362664@linaro.org>
 <CAA8EJpr2HhiXEbp0QsN-qB+L4WQWiV3o2yCc-f5oqdhdKZGL9A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpr2HhiXEbp0QsN-qB+L4WQWiV3o2yCc-f5oqdhdKZGL9A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_032908_293943_83E607EF 
X-CRM114-Status: GOOD (  17.57  )
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

On 23-11-22 12:12:00, Dmitry Baryshkov wrote:
> On Wed, 22 Nov 2023 at 12:04, Abel Vesa <abel.vesa@linaro.org> wrote:
> >
> > Add some missing v6.20 registers offsets that are needed by the new
> > Snapdragon X Elite (X1E80100) platform.
> >
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
> > index 5385a8b60970..7402a94d1be8 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
> > @@ -14,11 +14,14 @@
> >  #define QSERDES_V6_20_TX_LANE_MODE_3                           0x80
> >
> >  #define QSERDES_V6_20_RX_UCDR_FO_GAIN_RATE_2                   0x08
> > +#define QSERDES_V6_20_RX_UCDR_SO_GAIN_RATE_2                   0x18
> >  #define QSERDES_V6_20_RX_UCDR_FO_GAIN_RATE_3                   0x0c
> 
> As a side note, this should be probably 0x1c. Could you please verify
> it and send a fix?
> 

Double checked. The values are correct. So I'll just put the
SO_GAIN_RATE_2 below FO_GAIN_RATE_3.

> >  #define QSERDES_V6_20_RX_UCDR_PI_CONTROLS                      0x20
> >  #define QSERDES_V6_20_RX_UCDR_SO_ACC_DEFAULT_VAL_RATE3         0x34
> >  #define QSERDES_V6_20_RX_IVCM_CAL_CTRL2                                0x9c
> >  #define QSERDES_V6_20_RX_IVCM_POSTCAL_OFFSET                   0xa0
> > +#define QSERDES_V6_20_RX_DFE_1                                 0xac
> > +#define QSERDES_V6_20_RX_DFE_2                                 0xb0
> >  #define QSERDES_V6_20_RX_DFE_3                                 0xb4
> >  #define QSERDES_V6_20_RX_VGA_CAL_MAN_VAL                       0xe8
> >  #define QSERDES_V6_20_RX_GM_CAL                                        0x10c
> > @@ -41,5 +44,6 @@
> >  #define QSERDES_V6_20_RX_MODE_RATE3_B4                         0x220
> >  #define QSERDES_V6_20_RX_MODE_RATE3_B5                         0x224
> >  #define QSERDES_V6_20_RX_MODE_RATE3_B6                         0x228
> > +#define QSERDES_V6_20_RX_BKUP_CTRL1                            0x22c
> >
> >  #endif
> >
> > --
> > 2.34.1
> >
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
