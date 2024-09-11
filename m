Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C46DFEE4990
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 10:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zA79SWCuopGALzz2YLHVLQkhMYuQZKlLn36AC1z7oDA=; b=GGbdrGr9F+9WZb
	MQ24t7LQUft97uB4qQA1gix47FTOpcrrBEEdjQxxb1EPe1E4/zHMsvOTjEKiCwGVMO5uK+XxaP26a
	KPoLY1M9V4nf93mcsSysAoPr057sWzaTnzeMYdSEA/VBl4jyklGC9DbxeJosTBAt6dmXjvN7jS4PK
	zrun0+jTotw1lPTtPGSaaxo9lbP/86636i1shwJGUerwy0PWyzgh2DnLznByQU1Tb78KRj8nX9diM
	7y1KStsao8bV0PIA5MrQ0q0AuQmk/66OasPuKHpz9pQcN75mTz5QeRWsL60dii4d9kSuU5sNqPPGw
	HA3YIBWuUUfagdTqa9vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soKos-00000009953-2Dzm;
	Wed, 11 Sep 2024 10:43:30 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soKli-000000097mx-2Csl
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 10:40:16 +0000
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-68518bc1407so70902467b3.2
        for <linux-phy@lists.infradead.org>; Wed, 11 Sep 2024 03:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726051213; x=1726656013; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=quaLdCg89/Q3ErVCYpGz/S7qzPrQHkWX+pHMVVZKZIc=;
        b=jrYBULDFIHBqwC8lauHW6qffV08iBwVJHHK4huOi58QdPGGm24mzoRI4EzJSXik7I2
         IrxUUX5eVK3RC8jBi8Vd4x7FJ9NCDThdD6O7zLdf0itk/FNcBMOoT82nEAyyrGCw0WpU
         8/oc9hL8kHDzaoHpSef9/ptX9qoC5ikZN0nbqhvsWTh4awka8gUMLe/naNAOfHPK/o2P
         jcf48bXWldf/N/oQ1JimRdaBlMdSnI1pKcCMOYCs4JGxbbXIw7QMmwU61vkPkdMPLUGg
         p+swy+Gn86qzRqUjjgqaUygWwhHWNtqNvkodb79xEunMOBxlAUdPc4pga6LqQjmZkCZN
         0Ong==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726051213; x=1726656013;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=quaLdCg89/Q3ErVCYpGz/S7qzPrQHkWX+pHMVVZKZIc=;
        b=b7uC4glrA/6GeX/3OXTJEE23O+3TuNYYjMCPOx6FNo2O8wuDIH8IMvRxEkeKWmbv2W
         6Rfu653oZioN31Rcn+eTxFSX+qMVfxlnk0gHt30XJZQBiT9UiosnwMZK0bSct4hxGDWw
         mwlP9ABuK3SzJlKI5Q5DN7cAZ9VPwpMyr7Xe/i7UAmh/Q9/MFwxS9UMaVzP4tr9piXuQ
         EC3xFNgm5XspySqBx4d5hly9I/91x9KLvxBiq30mPk/om76H3vsrW7chcDELSZDg+KjR
         E6OeH5k4wh7nhZgO43LJPWfVhHUcBB9dhiyFZMLYaCZ3oYUk++t3smHoCMhuH/SFn0uq
         nBMg==
X-Forwarded-Encrypted: i=1; AJvYcCWhpRKP+Wl946tFXjfVWWY11AvfNCZLLDTxh3TqkxhdL0b7/T0KiASI8FIDqxY/kF20t//mRpxgJK0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxPgxRpP9mkL2V7gYzB9q/Q717OdqcdF/32muvyx8OJ9jEvPSRA
	Bkq/2+qkZPpAx2nhbjyZ5U0DCmbaC3JVHMyeQBVTZfhli9TUlLGTxPdnToixhJ9Uf7Y6cHqxuH9
	1uTpznZNqzpb8mdbu/EtU2P0c81XlEU4BjcoJZg==
X-Google-Smtp-Source: AGHT+IFBbb4wmETvjaXqgLn/MDWKCHL6pj57SkqVhM0/cPEdnbQlphBpHqZfas0PwZIxjI6E5z9qO73trRYEsWxee9I=
X-Received: by 2002:a05:690c:660e:b0:6b3:a6ff:768e with SMTP id
 00721157ae682-6db44a63f29mr197379867b3.0.1726051212892; Wed, 11 Sep 2024
 03:40:12 -0700 (PDT)
MIME-Version: 1.0
References: <20240911100813.338-1-quic_mukhopad@quicinc.com> <20240911100813.338-4-quic_mukhopad@quicinc.com>
In-Reply-To: <20240911100813.338-4-quic_mukhopad@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 11 Sep 2024 13:40:02 +0300
Message-ID: <CAA8EJpqurbPKjmRH8zdqPkMuze4zwJVu+=W0nP=Ldc6o_4Tu4w@mail.gmail.com>
Subject: Re: [PATCH 3/5] phy: qcom: edp: Add support for eDP PHY on SA8775P
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
X-CRM114-CacheID: sfid-20240911_034014_612077_BD443FF1 
X-CRM114-Status: GOOD (  17.50  )
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
> Add support for eDP PHY v5 found on the Qualcomm SA8775P platform.
>
> Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 47 +++++++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index 0f860a807d1b..34a47cd2919d 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -191,6 +191,45 @@ static u8 edp_phy_aux_cfg_v4[10] = {
>         0x00, 0x13, 0x24, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03
>  };
>
> +static const u8 edp_swing_hbr_rbr_v5[4][4] = {
> +       { 0x07, 0x0f, 0x16, 0x1f },
> +       { 0x0d, 0x16, 0x1e, 0xff },
> +       { 0x11, 0x1b, 0xff, 0xff },
> +       { 0x16, 0xff, 0xff, 0xff }
> +};

Same as v4

> +
> +static const u8 edp_pre_emp_hbr_rbr_v5[4][4] = {
> +       { 0x05, 0x11, 0x17, 0x1d },
> +       { 0x05, 0x11, 0x18, 0xff },
> +       { 0x06, 0x11, 0xff, 0xff },
> +       { 0x00, 0xff, 0xff, 0xff }
> +};

Could you please confirm that there is a single value difference?

> +
> +static const u8 edp_swing_hbr2_hbr3_v5[4][4] = {
> +       { 0x0b, 0x11, 0x17, 0x1c },
> +       { 0x10, 0x19, 0x1f, 0xff },
> +       { 0x19, 0x1f, 0xff, 0xff },
> +       { 0x1f, 0xff, 0xff, 0xff }
> +};

Same as v4

> +
> +static const u8 edp_pre_emp_hbr2_hbr3_v5[4][4] = {
> +       { 0x0c, 0x15, 0x19, 0x1e },
> +       { 0x0b, 0x15, 0x19, 0xff },
> +       { 0x0e, 0x14, 0xff, 0xff },
> +       { 0x0d, 0xff, 0xff, 0xff }
> +};

This one looks fine

> +
> +static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg_v5 = {
> +       .swing_hbr_rbr = &edp_swing_hbr_rbr_v5,
> +       .swing_hbr3_hbr2 = &edp_swing_hbr2_hbr3_v5,
> +       .pre_emphasis_hbr_rbr = &edp_pre_emp_hbr_rbr_v5,
> +       .pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3_v5,
> +};
> +
> +static u8 edp_phy_aux_cfg_v5[10] = {
> +       0x00, 0x13, 0xa4, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03
> +};
> +
>  static int qcom_edp_phy_init(struct phy *phy)
>  {
>         struct qcom_edp *edp = phy_get_drvdata(phy);
> @@ -520,6 +559,13 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
>         .com_configure_ssc      = qcom_edp_com_configure_ssc_v4,
>  };
>
> +static const struct qcom_edp_phy_cfg sa8775p_dp_phy_cfg = {
> +       .is_edp = false,
> +       .aux_cfg = edp_phy_aux_cfg_v5,
> +       .swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v5,
> +       .ver_ops = &qcom_edp_phy_ops_v4,
> +};
> +
>  static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
>         .aux_cfg = edp_phy_aux_cfg_v4,
>         .ver_ops = &qcom_edp_phy_ops_v4,
> @@ -1114,6 +1160,7 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
>  }
>
>  static const struct of_device_id qcom_edp_phy_match_table[] = {
> +       { .compatible = "qcom,sa8775p-edp-phy", .data = &sa8775p_dp_phy_cfg, },
>         { .compatible = "qcom,sc7280-edp-phy", .data = &sc7280_dp_phy_cfg, },
>         { .compatible = "qcom,sc8180x-edp-phy", .data = &sc7280_dp_phy_cfg, },
>         { .compatible = "qcom,sc8280xp-dp-phy", .data = &sc8280xp_dp_phy_cfg, },
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
