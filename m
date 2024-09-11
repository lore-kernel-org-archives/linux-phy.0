Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 565ECEE4990
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 10:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KklGMUp1kQNMANuuJ257H6ycimvleBtXx57RG/hZs78=; b=n9ZQUSuNfcpf00
	dxgqKFCKJLW1E53UnWvWB+e6zXLnzprtTEdOs5ycASn/DW8ArwiMzisizk2ApuWSUaCEBsVx5WcgT
	Bfj3L1ZmOmOvle3YgxJDEPExpT4S/zbtGG6fqV/Y13fOn81QfD4RuVgtBNCE0KuLpZpBhFabi7c/i
	G68uX1erY4bm3qZSHAiAqfTqnxGAZd7Fg3F5BVOx+NQ6rLfkdQFNO30zcUYVCy7brxXcA4Cwgfh/B
	6bXLQ7Ssknlilu4fCsOeqB1PItcwN1O/6cpV+xtGJZqoAVV9UAyMP5APoeBslHoNL2QpkTLyiOIEX
	qYlccofXtLENlvexRO1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soKgo-000000096cS-06U8;
	Wed, 11 Sep 2024 10:35:10 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soKgk-000000096bU-3t4E
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 10:35:09 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-6db449f274fso49499087b3.2
        for <linux-phy@lists.infradead.org>; Wed, 11 Sep 2024 03:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726050905; x=1726655705; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pguXKho2iGtNY7bbPN64vthkTwD/qntrSgD7BpHG+7Y=;
        b=d/8tfdAeze63x3y2kHHnOct1Ujxh+TmdPXG7ets5JvboF4mOa3QltMYE/3Ldi3ekma
         SjJoIGJpmccDR7Lr8Dehf+1Ks9jX+HfaB0SnZIzYP8lE+QppOXbOUKLDsqCfRhnR/70N
         dwm5JDv7AQgrTkif9r0hCIMNTl2H4XWdeTNi4OXlmuKTE0PMbXLRN2sK3viHLVtmAOQY
         k71AWIg9C+Qn5Ibh3RNEZ6nUWsP92zaY0uozu+Z+Q1E9UVUSHvurz4BvQ4x7BAxSL488
         TQrWnikotEBtG95BOE79WdCZxbrUnAV5eYolsVWX9RtUzB9VL2Ork2TZFa1zqv7IkcJ6
         Gr8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726050905; x=1726655705;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pguXKho2iGtNY7bbPN64vthkTwD/qntrSgD7BpHG+7Y=;
        b=KBuptRAYCTVFsmQKakYrGfACu0D+WxqsrtEJ3zGpb8I2DHfC0ocuOvUmNUSiZBa+F3
         xClQ+eEa0/bfsSz8km/eUuC00Dt8XuI2PTcG/VqrjIPJVcWKhL+mc7Zrt2eSaJe4/6wH
         E7hnIyiemRsDiB78n6a32b4vme+SSU6JLB4DYh2BnYl8BQrH9GPtldhD4HhoU/TEBHbl
         lULPdHSTYmvnTPK/eJDHkJvbA3/SXkRb4Eg7wDwh5dLY9EqjURA5/p3S4PX9FgWccj+E
         2dy0iGcHVEm+DSYyZR65DuDETZd0mazN3DD5SLDH022pXegcMViB78wBjkmmQbQg+3Tc
         Jk9A==
X-Forwarded-Encrypted: i=1; AJvYcCXFQMl/GtyCBsQfjj1kcFFSW6+rv4Mw9TepZxt4zzrZrTnlD9LFs0h9HZxsKV7OXO0OUuKkPnPOVLg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyX6nQmWLU/guf/pjCuj1n7HaTStnOWKKVSuUo8mMRFZ8cBKgRL
	Lzyx1Rz4uliXjlA/kdXPqLetm7l9MGn+rYlVn6GRR4WZWTjJlz7yf7cgdDyLK8mjgYp4IGBSnjX
	A9RN/J5DS84hBN/CxFtwRffQnERVIWPCvBwxXZQ==
X-Google-Smtp-Source: AGHT+IEXGUo8iYr83kd7B9iECVwc8bdMpc/xy3+lDcZrAKDkVX5G5H8kLtfBabKLQx3cToAQvvvkY6Dr2nHmCs148Lw=
X-Received: by 2002:a05:690c:2889:b0:65f:8209:3ede with SMTP id
 00721157ae682-6db452740b1mr148903587b3.44.1726050904691; Wed, 11 Sep 2024
 03:35:04 -0700 (PDT)
MIME-Version: 1.0
References: <20240911100813.338-1-quic_mukhopad@quicinc.com> <20240911100813.338-3-quic_mukhopad@quicinc.com>
In-Reply-To: <20240911100813.338-3-quic_mukhopad@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 11 Sep 2024 13:34:53 +0300
Message-ID: <CAA8EJppLFWpf0QSmzAo5nqu=iMALyKzxEvy7sD5R0LDYSbA_7w@mail.gmail.com>
Subject: Re: [PATCH 2/5] phy: qcom: edp: Introduce aux_cfg array for version
 specific aux settings
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
X-CRM114-CacheID: sfid-20240911_033507_041578_1CF85148 
X-CRM114-Status: GOOD (  17.22  )
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

On Wed, 11 Sept 2024 at 13:08, Soutrik Mukhopadhyay
<quic_mukhopad@quicinc.com> wrote:
>
> In order to support different HW versions, introduce aux_cfg array
> to move v4 specific aux configuration settings.
>
> Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 34 +++++++++++++++++------------
>  1 file changed, 20 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index da2b32fb5b45..0f860a807d1b 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -90,6 +90,7 @@ struct phy_ver_ops {
>
>  struct qcom_edp_phy_cfg {
>         bool is_edp;
> +       u8 *aux_cfg;
>         const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
>         const struct phy_ver_ops *ver_ops;
>  };
> @@ -186,11 +187,14 @@ static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg = {
>         .pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3,
>  };
>
> +static u8 edp_phy_aux_cfg_v4[10] = {

static const u8, please.


> +       0x00, 0x13, 0x24, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03
> +};
> +
>  static int qcom_edp_phy_init(struct phy *phy)
>  {
>         struct qcom_edp *edp = phy_get_drvdata(phy);
>         int ret;
> -       u8 cfg8;
>
>         ret = regulator_bulk_enable(ARRAY_SIZE(edp->supplies), edp->supplies);
>         if (ret)
> @@ -222,22 +226,20 @@ static int qcom_edp_phy_init(struct phy *phy)
>          * even needed.
>          */
>         if (edp->cfg->swing_pre_emph_cfg && !edp->is_edp)
> -               cfg8 = 0xb7;
> -       else
> -               cfg8 = 0x37;
> +               edp->cfg->aux_cfg[8] = 0xb7;
>
>         writel(0xfc, edp->edp + DP_PHY_MODE);
>
> -       writel(0x00, edp->edp + DP_PHY_AUX_CFG0);
> -       writel(0x13, edp->edp + DP_PHY_AUX_CFG1);
> -       writel(0x24, edp->edp + DP_PHY_AUX_CFG2);
> -       writel(0x00, edp->edp + DP_PHY_AUX_CFG3);
> -       writel(0x0a, edp->edp + DP_PHY_AUX_CFG4);
> -       writel(0x26, edp->edp + DP_PHY_AUX_CFG5);
> -       writel(0x0a, edp->edp + DP_PHY_AUX_CFG6);
> -       writel(0x03, edp->edp + DP_PHY_AUX_CFG7);
> -       writel(cfg8, edp->edp + DP_PHY_AUX_CFG8);
> -       writel(0x03, edp->edp + DP_PHY_AUX_CFG9);
> +       writel(edp->cfg->aux_cfg[0], edp->edp + DP_PHY_AUX_CFG0);
> +       writel(edp->cfg->aux_cfg[1], edp->edp + DP_PHY_AUX_CFG1);
> +       writel(edp->cfg->aux_cfg[2], edp->edp + DP_PHY_AUX_CFG2);
> +       writel(edp->cfg->aux_cfg[3], edp->edp + DP_PHY_AUX_CFG3);
> +       writel(edp->cfg->aux_cfg[4], edp->edp + DP_PHY_AUX_CFG4);
> +       writel(edp->cfg->aux_cfg[5], edp->edp + DP_PHY_AUX_CFG5);
> +       writel(edp->cfg->aux_cfg[6], edp->edp + DP_PHY_AUX_CFG6);
> +       writel(edp->cfg->aux_cfg[7], edp->edp + DP_PHY_AUX_CFG7);
> +       writel(edp->cfg->aux_cfg[8], edp->edp + DP_PHY_AUX_CFG8);
> +       writel(edp->cfg->aux_cfg[9], edp->edp + DP_PHY_AUX_CFG9);
>
>         writel(PHY_AUX_STOP_ERR_MASK | PHY_AUX_DEC_ERR_MASK |
>                PHY_AUX_SYNC_ERR_MASK | PHY_AUX_ALIGN_ERR_MASK |
> @@ -519,16 +521,19 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
>  };
>
>  static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
> +       .aux_cfg = edp_phy_aux_cfg_v4,
>         .ver_ops = &qcom_edp_phy_ops_v4,
>  };
>
>  static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
> +       .aux_cfg = edp_phy_aux_cfg_v4,
>         .swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
>         .ver_ops = &qcom_edp_phy_ops_v4,
>  };
>
>  static const struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
>         .is_edp = true,
> +       .aux_cfg = edp_phy_aux_cfg_v4,
>         .swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
>         .ver_ops = &qcom_edp_phy_ops_v4,
>  };
> @@ -707,6 +712,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
>  };
>
>  static struct qcom_edp_phy_cfg x1e80100_phy_cfg = {
> +       .aux_cfg = edp_phy_aux_cfg_v4,

Is this correct? Judging by ver_ops, X Elite uses v6 of the PHY, so
maybe it should also use v5 AUX tables?

>         .swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
>         .ver_ops = &qcom_edp_phy_ops_v6,
>  };
> --
> 2.17.1
>


--
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
