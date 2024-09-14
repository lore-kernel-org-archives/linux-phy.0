Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88A8EC02192
	for <linux-phy@archiver.kernel.org>; Sat, 14 Sep 2024 12:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EWe89cOg08BSjCCEi3lozvDfwJFNXK3M31PkLy6++sE=; b=Ee81q+ArSZGzH0
	byBmWSW7PjWoB0Cks66oQ2G2+AvjbRZHkVbs1Uyqd7HcasbR9QnBv04h+DbnJ8/Rp/r01tLWHdIqB
	wSqpLay8W/4Tc9ZQ5ms0eHOebliS5y/z9F+pncI/L31pVJfEnIp5f+4e8RFrK7u/K5slQcCPjwNQC
	MIYcjKRmw2IwfqzKDGR5jGTm2kRPObSo/ebUNrDnkNqI5vb7KMsxFqKp6P801NH63PjNTIshpTfz2
	uri1AdOXOP0SDSU1avOUR6ocxyjnQbVC8XZmIoslHBna+zCQuERLrxG21gDUnUdHo+vaMeacDLV1v
	0GJlwYc8bH6vj0YuFZIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spRWS-00000000eSy-0NK5;
	Sat, 14 Sep 2024 12:05:04 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spRWO-00000000eS5-38z1
	for linux-phy@lists.infradead.org;
	Sat, 14 Sep 2024 12:05:02 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-6db9f7969fdso24456967b3.0
        for <linux-phy@lists.infradead.org>; Sat, 14 Sep 2024 05:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726315499; x=1726920299; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=v/BwEPPxE9nFO1CcsZ05pg5b/eN2UhsgUftUMF1y+k0=;
        b=D6t3CnrFZ4G/xxV9RqUVTHCgr692bNvGsz3jgmU+1ZfTSYKKVOU75P9gSLJlNYXffw
         Sn3QQ779VAi/C0KC7uww3QaH5O+jQdXUxfHB2fFXqenZDI39KYyXer543nV25uN23PQ4
         yEOL1RH02LXThrC30E49f5RCE61EzyhymHjy9QJhg+GA/eR1aG+pcvQoYBl2XKn663n6
         Z6y0jqEm/NgQk1DvMwfSE5kfk6tmly0rSIKz+wbaox16Lpx4ZNPT8EeWdKzWqYfPT0Nr
         YWqVm5wM+AnhakWs6QPpKZ0Pcera33hDQgXO6wpXo7h5hs2dPy8X6UzssTwNU8fee82M
         bY+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726315499; x=1726920299;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v/BwEPPxE9nFO1CcsZ05pg5b/eN2UhsgUftUMF1y+k0=;
        b=O/R24WP7cYAbIXtIUd1mUooMBg033uwWIpIwOErONikQ52WQ1RxMBkzji2/8j3tga3
         kF9L1LgALWggOEyHnn2DD76KpYdZAag/u1q4rou2NqRsieXfCez4EcvXbJ7eUkf0OPp1
         pYKm1TOkqDvsPMYKTPYFblSLD2b/oHJqkJGb2OrE/Jbf/FSAEBvP1ob7ltosoKQzmzBC
         ZnCcro/T0Yc/1P4idDqe8COeP2tmO0V/gxTLAsYy7QwL/s8+V7D+yJM3s1/d3MII6P07
         C5vhhxQXI3jDVmHXlPG4j4xEb7PkXWI9uXd6WXR6XcjxxoSyaZs0I+PyznBDRw7k8clL
         l7mg==
X-Forwarded-Encrypted: i=1; AJvYcCX1maJV1/DCZdKY0oLyv+gSR3iw8KlAThphfrKlZCXWKh6CMa85qt2KH8EId4Cfk8KcWGiKcAiR04A=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywf6RpKup4aoKFvZNC3G/Oibg8on1mSrpkyMD0/cjclVx6JWDdR
	rn30GPee13oDlrMI1+tnv2FT6Dia5NKypFhUo6rlvY3o7zGQdUMVfVcwWWfmOw9yHNB1fK2a1os
	zXr3hyew+7ausV4SChhNgQ5kLqep03qtV1eF7Ug==
X-Google-Smtp-Source: AGHT+IFr6ztHkdXR12yHJt9BqfgF+oj8X/upMI/MFEq0hVIM1jdcxlJa5xJkzkTkMIDH+Ri6BPcsmXHfSOGUlyxg2dU=
X-Received: by 2002:a05:690c:660c:b0:6d0:f91e:2ffa with SMTP id
 00721157ae682-6dbb7015a8cmr71152697b3.3.1726315498811; Sat, 14 Sep 2024
 05:04:58 -0700 (PDT)
MIME-Version: 1.0
References: <20240913103755.7290-1-quic_mukhopad@quicinc.com>
 <20240913103755.7290-3-quic_mukhopad@quicinc.com> <9fee28de-24eb-46b1-aa5b-6febc2972a3c@kernel.org>
In-Reply-To: <9fee28de-24eb-46b1-aa5b-6febc2972a3c@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 14 Sep 2024 15:04:48 +0300
Message-ID: <CAA8EJpquBih8jO_Tv8RFLVYN0c+N7KC45VztGSJHV87x22tdcA@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] phy: qcom: edp: Introduce aux_cfg array for
 version specific aux settings
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>, vkoul@kernel.org, kishon@kernel.org, 
	andersson@kernel.org, simona@ffwll.ch, abel.vesa@linaro.org, 
	robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run, 
	marijn.suijten@somainline.org, airlied@gmail.com, daniel@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	quic_khsieh@quicinc.com, konrad.dybcio@linaro.org, quic_parellan@quicinc.com, 
	quic_bjorande@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, quic_riteshk@quicinc.com, 
	quic_vproddut@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240914_050500_821975_A9C4C208 
X-CRM114-Status: GOOD (  15.79  )
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

On Sat, 14 Sept 2024 at 14:29, Konrad Dybcio <konradybcio@kernel.org> wrote:
>
> On 13.09.2024 12:37 PM, Soutrik Mukhopadhyay wrote:
> > In order to support different HW versions, introduce aux_cfg array
> > to move v4 specific aux configuration settings.
> >
> > Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> > ---
> > v2: Fixed review comments from Bjorn and Dmitry
> >       - Made aux_cfg array as const.
> >
> > ---
> >  drivers/phy/qualcomm/phy-qcom-edp.c | 37 ++++++++++++++++++-----------
> >  1 file changed, 23 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> > index da2b32fb5b45..bcd5aced9e06 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> > @@ -90,6 +90,7 @@ struct phy_ver_ops {
> >
> >  struct qcom_edp_phy_cfg {
> >       bool is_edp;
> > +     const u8 *aux_cfg;
> >       const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
> >       const struct phy_ver_ops *ver_ops;
> >  };
> > @@ -186,11 +187,15 @@ static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg = {
> >       .pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3,
> >  };
> >
> > +static const u8 edp_phy_aux_cfg_v4[10] = {
> > +     0x00, 0x13, 0x24, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03
> > +};
>
> How about we only abstract the values that differ? It would seem like more
> platforms reuse about half of these magic bytes

I think it's easier to review and compare the whole sequence rather
than numbers here and then numbers there.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
