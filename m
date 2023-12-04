Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73AE8C4167B
	for <linux-phy@archiver.kernel.org>; Mon,  4 Dec 2023 12:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xuh5W+M751iZYV5xh6cHKyZzcj3jyPF57G+knd3vPSE=; b=yJOSWQL66kCWNP
	Jz2uYcWmQ4gE8tEBudPDQywmfoh9XTEutsIero32XyA44QmiCHKxCZp79CcI+Tkgdej8tM4Kh1q/J
	+D1KJ9M18/IGJYUbwJ75414TRQLQOoPUHC+CJxAxc701vNcv9IUfBozMyKDWXDH6Aw1r5sDOI+BjA
	Tt9cUmkF8VY4Rf/egzfL5kK3wdFh43HAHYVsyTrGYm8KbuQGDxWrOLjepmAefDx95apKQjzwhB8uT
	zH4QzONP7aVxsri7MuLkawnWqtac89KFIaa/qcahsC7hz+mdVnOw/uaOmSSO34CCMG/a8N+M0Ov8T
	4uqtAT0r1tE5L6NN3rXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rA7ce-003lS0-3D;
	Mon, 04 Dec 2023 12:00:25 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rA7cb-003lP6-1a
	for linux-phy@lists.infradead.org;
	Mon, 04 Dec 2023 12:00:23 +0000
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-db538b07865so2744384276.2
        for <linux-phy@lists.infradead.org>; Mon, 04 Dec 2023 04:00:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701691218; x=1702296018; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=AxQa10ALTFJrtePQUNooIdnJ7/2/V51IMg2dt+kkdtw=;
        b=vhgzJhLEP/zRrXfZK+mV8a7WhFraobvLAxYq9MzW4nmDkK3poUwKnPy2zA7yPUrdPI
         S1U7rq74oqkH+rk8rok4gUturcbi1aBU4QiJymtdejyIGjp1e7QvUH1EVI0NiKeM8r3o
         +nU3ixI1zmvyBHBNoW8lg5ydTOKNHIg71FPAYAKUzQvmsOIdeZBbbFoIwpRqModsQ4M7
         4D2tAXKzGE4AxDrC0knEvVt6+pJjsh7nBzP0O11mJ0izvuhmiXaZzxeOGDNrLXsxHCqd
         APRIVc48N8NaywSDcQ20ziGDBPm3KRD72gH9JiHUWoGTGPV4h/7nnw4M0qu2byXO2Mcp
         VCwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701691218; x=1702296018;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AxQa10ALTFJrtePQUNooIdnJ7/2/V51IMg2dt+kkdtw=;
        b=nO3wtFiQ9KeDI8heKFjdzNx+yqVyYkNI9fX3Zs7HE+dhy3uyaYI9whoXYQRLclbSUi
         enf1kp8XlVOQLLCml9ehpIwl0F57JOi/8XB4CQIV3IqDNh+ErUeNOVoTDtNLchYaH7lW
         pe2dPhf10OxrCu66Pq8DsZGDs40v6eX4+NtmL7i1WJ7K+I3ir3bmQgzE6BVWcKANtevi
         gMtrOJix/eDoA03xeY7L0fe8lA6AcMQ08sh84XGXGl4ccDyhIZwwBRV1KtRqZ8td/4Lm
         Wpz8opmFPt4yvBDi6qgir7sZiNqOCut4uL5P85uUyqSCxdn3E/OkVkK9kTPk5qWwL1uv
         E0Vw==
X-Gm-Message-State: AOJu0YylgtNDawnjQu9VL64Igo7uxUCQOwdP8plLJA4l3AB3X7PaOFe3
	pzVXOIsKR5jzHox5DO465AVigexB/GGYocuQ+wL34A==
X-Google-Smtp-Source: AGHT+IGtx7FZUsk81dL3/t2g6cd3rE+aZFVev88VqUsqsQ+gPdRNsR1xz4Vo1+2JrRUIQSocaOyRYdJiyBQUguClOwM=
X-Received: by 2002:a05:690c:dd0:b0:5d7:1941:aa1 with SMTP id
 db16-20020a05690c0dd000b005d719410aa1mr2935063ywb.60.1701691218139; Mon, 04
 Dec 2023 04:00:18 -0800 (PST)
MIME-Version: 1.0
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org>
 <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-2-d9340d362664@linaro.org>
 <CAA8EJpr2HhiXEbp0QsN-qB+L4WQWiV3o2yCc-f5oqdhdKZGL9A@mail.gmail.com> <ZW23/jPxofGw9GnY@linaro.org>
In-Reply-To: <ZW23/jPxofGw9GnY@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 4 Dec 2023 14:00:07 +0200
Message-ID: <CAA8EJponcVngT5X3+C1nuCd+fX4xMUFYdGoxT+Mdit+BpjEG=w@mail.gmail.com>
Subject: Re: [PATCH 2/7] phy: qcom-qmp: qserdes-txrx: Add some more v6.20
 register offsets
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_040021_596243_BD196758 
X-CRM114-Status: GOOD (  18.02  )
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

On Mon, 4 Dec 2023 at 13:29, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> On 23-11-22 12:12:00, Dmitry Baryshkov wrote:
> > On Wed, 22 Nov 2023 at 12:04, Abel Vesa <abel.vesa@linaro.org> wrote:
> > >
> > > Add some missing v6.20 registers offsets that are needed by the new
> > > Snapdragon X Elite (X1E80100) platform.
> > >
> > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > ---
> > >  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h | 4 ++++
> > >  1 file changed, 4 insertions(+)
> > >
> > > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
> > > index 5385a8b60970..7402a94d1be8 100644
> > > --- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
> > > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
> > > @@ -14,11 +14,14 @@
> > >  #define QSERDES_V6_20_TX_LANE_MODE_3                           0x80
> > >
> > >  #define QSERDES_V6_20_RX_UCDR_FO_GAIN_RATE_2                   0x08
> > > +#define QSERDES_V6_20_RX_UCDR_SO_GAIN_RATE_2                   0x18
> > >  #define QSERDES_V6_20_RX_UCDR_FO_GAIN_RATE_3                   0x0c
> >
> > As a side note, this should be probably 0x1c. Could you please verify
> > it and send a fix?
> >
>
> Double checked. The values are correct. So I'll just put the
> SO_GAIN_RATE_2 below FO_GAIN_RATE_3.

SGTM

>
> > >  #define QSERDES_V6_20_RX_UCDR_PI_CONTROLS                      0x20
> > >  #define QSERDES_V6_20_RX_UCDR_SO_ACC_DEFAULT_VAL_RATE3         0x34
> > >  #define QSERDES_V6_20_RX_IVCM_CAL_CTRL2                                0x9c
> > >  #define QSERDES_V6_20_RX_IVCM_POSTCAL_OFFSET                   0xa0
> > > +#define QSERDES_V6_20_RX_DFE_1                                 0xac
> > > +#define QSERDES_V6_20_RX_DFE_2                                 0xb0
> > >  #define QSERDES_V6_20_RX_DFE_3                                 0xb4
> > >  #define QSERDES_V6_20_RX_VGA_CAL_MAN_VAL                       0xe8
> > >  #define QSERDES_V6_20_RX_GM_CAL                                        0x10c
> > > @@ -41,5 +44,6 @@
> > >  #define QSERDES_V6_20_RX_MODE_RATE3_B4                         0x220
> > >  #define QSERDES_V6_20_RX_MODE_RATE3_B5                         0x224
> > >  #define QSERDES_V6_20_RX_MODE_RATE3_B6                         0x228
> > > +#define QSERDES_V6_20_RX_BKUP_CTRL1                            0x22c
> > >
> > >  #endif
> > >
> > > --
> > > 2.34.1
> > >
> > >
> >
> >
> > --
> > With best wishes
> > Dmitry



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
