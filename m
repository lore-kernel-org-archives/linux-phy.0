Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8B9FC36000
	for <linux-phy@archiver.kernel.org>; Tue, 17 Sep 2024 09:41:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Da2KvXxwWJCiWn1N6HOj43NzOB9U9+2Kz1VwZaD9Pl4=; b=mYp8thPDxKhkr7
	rMa0wm2ZllI3hvC20WYUHUkqUMrMz9UtuqMTd6M6Kcm05/aF+dATB+IZPOz/O00XptCqS9pJvXIIn
	QEIn1lL36YvjfSWWEq53txo3f116Akpk2GBhqs0bHYOWmTqfLXZJZnuDQmzb89CzA4QwJprCHACMl
	enX60HG8+J5GvKXZ2CQq8r3PfnOn43rAhA+yV807zkIRrXu8EmLEeRMv1yEawWInegMnOpx4Ks8QF
	X7ATTXcQiTk3ttF0KCJGT2S3pBfPztROGglWUOJzOkuFMV2uROd04XpcnaSobvFhBxJ7oRModRTrn
	7+slTzroIt0ngXik7SWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqUiD-00000005r4T-0DkQ;
	Tue, 17 Sep 2024 09:41:33 +0000
Received: from mail-yw1-x1133.google.com ([2607:f8b0:4864:20::1133])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqUiA-00000005r3H-0IQe
	for linux-phy@lists.infradead.org;
	Tue, 17 Sep 2024 09:41:31 +0000
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-6dbc9a60480so34435077b3.0
        for <linux-phy@lists.infradead.org>; Tue, 17 Sep 2024 02:41:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726566089; x=1727170889; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YUQo1bSSq8kX3HOSdvvfhK2hzhUvDoWKXHhQXYw0D7Q=;
        b=p9bgCNW2ePp48jstWqXIfqzurXXEU+q1904t0+IcsqMqXE+zLDUTkDf3ZwkgNOLURi
         DA/guMSZJJ/8whcfOUB4v3lAN7PytAYMyjXs3qWRFroo6Iut/m99Q+A5Cr/UiwrkvD3G
         ph5L3P3TO1MjEcwyVh72VZd/iwt99OCbX7dDDCuR3OejKVVsv46d8VKpLgPzXB15+/X0
         IQYHRALQrDpSmIMjCkIQX015P0hXd0tgYT/Fz1WYNGwmpoMW0yudhVNIJVt+UXuHE+4f
         V4Z4SkjLWTXC66rxrQahWFISFzBmEEnXYlFGNVxH8LH8jMaj2k+/XL7u5PDIIahuVn5G
         8kcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726566089; x=1727170889;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YUQo1bSSq8kX3HOSdvvfhK2hzhUvDoWKXHhQXYw0D7Q=;
        b=U67R3HknjSNCZzoS/zAkWRjTQsYuwbxbtADSEl9/d7ENTpbX9d2ChYEPXiluoi3NCC
         FEo89n0hXEGGLVgf8diSfe67biSaY6PVMInfNQej3ZOFI46vultESJR0DRcLNgvnxFJX
         EkKB6YwWjXsvWqbYpHc7GEImv6Ga+4j0UfJGbqbVvNUJk9DlQvTlALcD72z4SQjCCdvt
         Yq/PPjsx4CO41+4KYXvNMpaZADgJxDEUdT5tUTTxLOQ1VY2g9aF++b1s9C5kHBtstP0k
         wIH+wX9QpcW4U+vb8MjIhzlXlVva5qXRljfMVQqGGSac28r3KolVeRXio/BSNw30on2J
         8zSg==
X-Forwarded-Encrypted: i=1; AJvYcCUVTpV4c5o8uDWZtw1sgmmpg/GkBYYFsAwGqNRgWuJqiCP5OC0jiDxXD4ho5ShVI9HiqKkBrTZ+wWE=@lists.infradead.org
X-Gm-Message-State: AOJu0YyIKkJCXnmAiU7ADE9lY2Rvh3urYizzF2ZDQndoDVQOOt0N64zR
	9NzVaMwYm8+Fv+FFMURkYqviWxZcbjCmrlXnXi0IlieW8Lb/8vsmTdrYeTB24n8OHbYeUMzujMS
	be6yBH9uzdPhpuNONsSf/ZwrNWLAdI6gTP2zgmQ==
X-Google-Smtp-Source: AGHT+IHT1V3PeZZNewflXjW3i9JRWZQTKzirw4DGT5uyJzF4Av2YmvMp/sQpcgwEf52Fa8aoOQlE9ZuHN9AEzEooIwQ=
X-Received: by 2002:a05:690c:3687:b0:6dd:ba9b:2ca7 with SMTP id
 00721157ae682-6ddba9b2dbemr60897387b3.46.1726566088694; Tue, 17 Sep 2024
 02:41:28 -0700 (PDT)
MIME-Version: 1.0
References: <20240913103755.7290-1-quic_mukhopad@quicinc.com>
 <20240913103755.7290-3-quic_mukhopad@quicinc.com> <CAA8EJppddLmzJ9WSkLLr-nwM-qe647Sm6jV8SpHdB=0vRQT-=Q@mail.gmail.com>
 <3ea1189b-8b06-45bb-9d60-178f69ee407d@quicinc.com>
In-Reply-To: <3ea1189b-8b06-45bb-9d60-178f69ee407d@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 17 Sep 2024 11:41:17 +0200
Message-ID: <CAA8EJppKrOVi3B7g9dUMXwCDWR9GKUVD2BgSnNy+PkC5fq3GGA@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] phy: qcom: edp: Introduce aux_cfg array for
 version specific aux settings
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, konradybcio@kernel.org, 
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
X-CRM114-CacheID: sfid-20240917_024130_135735_9F92E10D 
X-CRM114-Status: GOOD (  24.34  )
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

On Tue, 17 Sept 2024 at 10:40, Soutrik Mukhopadhyay
<quic_mukhopad@quicinc.com> wrote:
>
>
> On 9/13/2024 5:12 PM, Dmitry Baryshkov wrote:
> > On Fri, 13 Sept 2024 at 13:38, Soutrik Mukhopadhyay
> > <quic_mukhopad@quicinc.com> wrote:
> >> In order to support different HW versions, introduce aux_cfg array
> >> to move v4 specific aux configuration settings.
> >>
> >> Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> >> ---
> >> v2: Fixed review comments from Bjorn and Dmitry
> >>          - Made aux_cfg array as const.
> >>
> >> ---
> >>   drivers/phy/qualcomm/phy-qcom-edp.c | 37 ++++++++++++++++++-----------
> >>   1 file changed, 23 insertions(+), 14 deletions(-)
> >>
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> >> index da2b32fb5b45..bcd5aced9e06 100644
> >> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> >> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> >> @@ -90,6 +90,7 @@ struct phy_ver_ops {
> >>
> >>   struct qcom_edp_phy_cfg {
> >>          bool is_edp;
> >> +       const u8 *aux_cfg;
> >>          const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
> >>          const struct phy_ver_ops *ver_ops;
> >>   };
> >> @@ -186,11 +187,15 @@ static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg = {
> >>          .pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3,
> >>   };
> >>
> >> +static const u8 edp_phy_aux_cfg_v4[10] = {
> >> +       0x00, 0x13, 0x24, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03
> >> +};
> >> +
> >>   static int qcom_edp_phy_init(struct phy *phy)
> >>   {
> >>          struct qcom_edp *edp = phy_get_drvdata(phy);
> >> +       u8 aux_cfg[10];
> > Please define 10, so that there are no magic numbers (and less chance
> > of damaging the stack if it gets changed in one place only.
>
>
> Sure, we will update this in the next version.
>
>
> >
> >>          int ret;
> >> -       u8 cfg8;
> >>
> >>          ret = regulator_bulk_enable(ARRAY_SIZE(edp->supplies), edp->supplies);
> >>          if (ret)
> >> @@ -200,6 +205,8 @@ static int qcom_edp_phy_init(struct phy *phy)
> >>          if (ret)
> >>                  goto out_disable_supplies;
> >>
> >> +       memcpy(aux_cfg, edp->cfg->aux_cfg, sizeof(aux_cfg));
> >> +
> >>          writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
> >>                 DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
> >>                 edp->edp + DP_PHY_PD_CTL);
> >> @@ -222,22 +229,20 @@ static int qcom_edp_phy_init(struct phy *phy)
> >>           * even needed.
> >>           */
> >>          if (edp->cfg->swing_pre_emph_cfg && !edp->is_edp)
> >> -               cfg8 = 0xb7;
> >> -       else
> >> -               cfg8 = 0x37;
> >> +               aux_cfg[8] = 0xb7;
> >>
> >>          writel(0xfc, edp->edp + DP_PHY_MODE);
> >>
> >> -       writel(0x00, edp->edp + DP_PHY_AUX_CFG0);
> >> -       writel(0x13, edp->edp + DP_PHY_AUX_CFG1);
> >> -       writel(0x24, edp->edp + DP_PHY_AUX_CFG2);
> >> -       writel(0x00, edp->edp + DP_PHY_AUX_CFG3);
> >> -       writel(0x0a, edp->edp + DP_PHY_AUX_CFG4);
> >> -       writel(0x26, edp->edp + DP_PHY_AUX_CFG5);
> >> -       writel(0x0a, edp->edp + DP_PHY_AUX_CFG6);
> >> -       writel(0x03, edp->edp + DP_PHY_AUX_CFG7);
> >> -       writel(cfg8, edp->edp + DP_PHY_AUX_CFG8);
> >> -       writel(0x03, edp->edp + DP_PHY_AUX_CFG9);
> >> +       writel(aux_cfg[0], edp->edp + DP_PHY_AUX_CFG0);
> >> +       writel(aux_cfg[1], edp->edp + DP_PHY_AUX_CFG1);
> >> +       writel(aux_cfg[2], edp->edp + DP_PHY_AUX_CFG2);
> >> +       writel(aux_cfg[3], edp->edp + DP_PHY_AUX_CFG3);
> >> +       writel(aux_cfg[4], edp->edp + DP_PHY_AUX_CFG4);
> >> +       writel(aux_cfg[5], edp->edp + DP_PHY_AUX_CFG5);
> >> +       writel(aux_cfg[6], edp->edp + DP_PHY_AUX_CFG6);
> >> +       writel(aux_cfg[7], edp->edp + DP_PHY_AUX_CFG7);
> >> +       writel(aux_cfg[8], edp->edp + DP_PHY_AUX_CFG8);
> >> +       writel(aux_cfg[9], edp->edp + DP_PHY_AUX_CFG9);
> > Replace this with a loop?
>
>
> Can we use below approach for this :
>
> #define DP_PHY_AUX_CFG(n)        (0x24 + (0x04 * (n)))
>
> for (int i = 0; i < 10; i++)
>
>      writel(aux_cfg[i], edp->edp + DP_PHY_AUX_CFG(i));

That's what I meant, thank you!

>
>
> >
> >>          writel(PHY_AUX_STOP_ERR_MASK | PHY_AUX_DEC_ERR_MASK |
> >>                 PHY_AUX_SYNC_ERR_MASK | PHY_AUX_ALIGN_ERR_MASK |
> >> @@ -519,16 +524,19 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
> >>   };
> >>
> >>   static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
> >> +       .aux_cfg = edp_phy_aux_cfg_v4,
> >>          .ver_ops = &qcom_edp_phy_ops_v4,
> >>   };
> >>
> >>   static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
> >> +       .aux_cfg = edp_phy_aux_cfg_v4,
> >>          .swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
> >>          .ver_ops = &qcom_edp_phy_ops_v4,
> >>   };
> >>
> >>   static const struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
> >>          .is_edp = true,
> >> +       .aux_cfg = edp_phy_aux_cfg_v4,
> >>          .swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
> >>          .ver_ops = &qcom_edp_phy_ops_v4,
> >>   };
> >> @@ -707,6 +715,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
> >>   };
> >>
> >>   static struct qcom_edp_phy_cfg x1e80100_phy_cfg = {
> >> +       .aux_cfg = edp_phy_aux_cfg_v4,
> >>          .swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
> >>          .ver_ops = &qcom_edp_phy_ops_v6,
> >>   };
> >> --
> >> 2.17.1
> >>
> >



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
