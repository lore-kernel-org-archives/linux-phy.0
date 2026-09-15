Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01BE4C982C1
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 14:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DCJT0+nhNVPiJoThB2bHfx0STt8VVc6VC/niaJzno6I=; b=00X00fFRaoAu8W
	DuHnpRBaOiKHxsZFyLUzUOzes4epzPth9VJvEsBQdfK5d93nUIg0638tsuTb1leocdvc6HB4M0QpY
	ILy7jXA3HFqjLFaKdz7QM6i8PF9mfZW+gDEy+lk3qxkrmiuSyIabpCaXrydY/IzsNKJtXH/oiUUwl
	e57AFkxaHSuD1bTFYCd4iteMTJ3r9+pXpNpzrkfvenGzD6NVnXOexRFoawWPXNVSRZ2iw0ToVimOP
	2pAOiWdLK88Uwnm7aJOH8cei9x/m++TnorzF8szeou9Err0GKKw8sAqeGfU6awO5qzbHtE7uLGQI7
	mGGFP3IuSzhn7+D5103w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6UJ4-00000006yO3-2GYV;
	Tue, 15 Sep 2026 14:38:46 +0000
Received: from mail-ed2-x10.google.com ([2a00:1450:4864:33::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6UJ1-00000006yMV-0ST5
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 14:38:45 +0000
Received: by mail-ed2-x10.google.com with SMTP id 4fb4d7f45d1cf-6a9984f9adcso6560066a12.0
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 07:38:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789483119; cv=none;
        d=google.com; s=arc-20260327;
        b=Z58L+jalUOnTDX1tPXFMrza8u/I1D71wIbksDogoH+tuGe0C4V4OHWOVGMGuTNphqS
         Qs8eOJlQU28CiAw8rWSI9d9CjEvsg+ZrOHyoo9I4IQTDYGm4bjdUgRPrxuAmw1xEs13g
         a/zMNYP5qhWh/gekuHzOgfwfFQNaqHbKdomZD+8NSeazrLojaqnQOQxw6hDndHhvImdk
         237g8dMxDSliJlBvU3kKGZPa+PoNkfIBozOn8O5uJp2Nc9w3qj+NURhF2bJvfdvjVC1E
         SqZ0FlQQbOpkluj0hGC9cQ+B3n+v7X51EQk/2TcVZfRd2gJeOWG5/WNHP3Dmzx3xW6Ce
         z0YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hJD9UyfEwkXA50QAdx7qCZZmHoP06c3J8prX9fzshMY=;
        fh=AmEMdV2gmzELWPKED+W2PCqxx/2HZ/HBUDk9b/ml5CM=;
        b=BJ1TZlnpgje28+WlUpttLw6a2xcRMm1j3GrjmQfWiam/ExvFOroCg8KvdreU5dAFfT
         yDmH/0Aqmw6gLA4xrIdFUNKc6MnrkgWINWYYjioTnSpn19kp7shnNCFX6rHW0tnNdjbZ
         JS+n/oGWsKB4ecrh78dtvK4J6+B1flgqILHfj4QJuazxEmPfPP4WXC5vfmK5PYokadIM
         549itCkIqDBE110pngo5N4NRyoy28oEynD259I1zOIVYBDHmJhN+f/PUj3zSlmjOBH3Z
         2btwZ5u2XD8pnx5m8ZgUWQQ10YhOQaQgvE/j26B2ausOOPkjEveNh6GjUTdN8boqutsB
         SiAQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789483119; x=1790087919; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hJD9UyfEwkXA50QAdx7qCZZmHoP06c3J8prX9fzshMY=;
        b=Groi7SYlq9muxXE0NICBIXeYdBoG0NdGwNOzaDqgGcrLeaw0Fr4juI+0l0NWWWIhEI
         SaOWFktALwKqW0h/+LmZM/QuqgGJfb3tygEn8KZWFNmwzbVKW9n33Do7aP+QMKtOWxyJ
         Ds3XTepnhqLUlDvWdS7kKbBj2hhl3HF4PoRUsjoypGdocU+55mHOta+e8aFaQVG3E73a
         VCKLA+QTPbE/CEOpsdQ7OFDiB3v9S9lShTcr9bKRqSHdQkNmG0Z+T8IMwBOsjWy/G9Bl
         JIpR9OBwZ8BoZw8YbMrr+CiDrxF7yWpV4yMhXC5/PkygL6oU3/OdPW5bCPqwalzm4wdo
         XPtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789483119; x=1790087919;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=hJD9UyfEwkXA50QAdx7qCZZmHoP06c3J8prX9fzshMY=;
        b=IL9fuibUSCDcQHEcsIRZYimRaK9VLEqTH/cpeG2hfm7nej+pH6tSr5egRPOehZEcDa
         SLzJGr+vNDKAnAVkUd86arax/kobETHwwXBJLcMoMP/+GyTOJmCDgSelVziqQqdi5eEx
         YqcCVxgQbxAqBiNR/oXqcqRO7TKgUkE4Awuy7HmBHs/Xddz+mXGIIkIyQdApQNZZqfVd
         CoPxrkIcS8dKWlKXHHjtPaJHeKb3v6IV7abMC5DrQNPXhBzbY/O3gCV8KAwN5GaAV8Gp
         d8EfLYdo/5XY6NgWnZV5tVfEoZb5oVIQ16OH1j9mJxK6pyvz6WlCPW03iDeqtZ9Vic/+
         r34Q==
X-Forwarded-Encrypted: i=1; AKwUvBwuukyo1DzSc4ZEPTg2+6L8MZxlMrBNwckGK+dag0YSP5RTW+JocLw8G1zEHE9+vOxpFS7mwu7wm7M=@lists.infradead.org
X-Gm-Message-State: AFuF++n+1pkfJZQ8k9uB1UailoY3jD4u6Tt+2TArSoBVfgTmi4JkkCGI
	prCejuXLyDTLN7GXbqt4Jc8svvmWaEhDL5gpwZ41Waq9Ptv5viZNLnLNnIaBvEtK4sdFV9Ei5kE
	0vN5RikapKpG5gBEn5SZxxHOhnrhX9CYqCHWLdWhZIA==
X-Gm-Gg: AYBFou17fLO7XyjBuWNOcN0Tyt8WSsA4NWCrdqhifqnDy4fhD15epGLU73Fy2ysx/KH
	LCeHCqMTDA5tsyMg2uv4Ri821FFcgEscTtZ/jbg/ixyIA1JPjSAtQDlVIQc2Lj+1BypzIk3kTUM
	qo+uewBe6I6owW+pe2lxWfdsOUzxGz/LyqlHmisBIGgQFawCM7QH7Zg19iajw3SLYRdLuwkXR/3
	H6/gbbeAsgq0UEmhakjOgziRNOFHPoYZYx00gU11J1apT5nPY3BH9Az6nSWacvJCQlg4XqwX7ig
	tHy6zdRJEQMEuNNhMvoJQBrXeffc8agyGGE3LR6NfSDeQH4mcvPeq/5c+UpuI+JGxCjyDrXiJlX
	hLd2HPN3yRZVp4g==
X-Received: by 2002:a05:6402:518b:b0:6a7:f7f3:66d4 with SMTP id
 4fb4d7f45d1cf-6a9f63d1831mr4622791a12.24.1789483119518; Tue, 15 Sep 2026
 07:38:39 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20260831070349epcas5p4c62a4e46592dffe95723ddd51a6068e0@epcas5p4.samsung.com>
 <20260831070309.158069-1-selvarasu.g@samsung.com>
In-Reply-To: <20260831070309.158069-1-selvarasu.g@samsung.com>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 15 Sep 2026 15:38:27 +0100
X-Gm-Features: AcwNN1Xw208DqxP9opmiR8ULGxXcGVSbiimmOgDikZLNDndPPFL37ybJKwgPW5Y
Message-ID: <CADrjBPq9v8brtXt0y-FJhSPMQQirkRLSK4QkcafWO+UdbBH92g@mail.gmail.com>
Subject: Re: [PATCH] phy: exynos5-usbdrd: Use dynamic phy_cfg size to prevent
 OOB access
To: Selvarasu Ganesan <selvarasu.g@samsung.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk@kernel.org, 
	alim.akhtar@samsung.com, pritam.sutar@samsung.com, andre.draszik@linaro.org, 
	kernel@lvkasz.us, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, jh0801.jung@samsung.com, dh10.jung@samsung.com, 
	akash.m5@samsung.com, muhammed.ali@samsung.com, thiagu.r@samsung.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_073843_224694_4EF18A91 
X-CRM114-Status: GOOD (  24.25  )
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

On Mon, 31 Aug 2026 at 08:03, Selvarasu Ganesan <selvarasu.g@samsung.com> wrote:
>
> The probe loop currently iterates using EXYNOS5_DRDPHYS_NUM (2),
> creating both UTMI and PIPE3 PHY instances regardless of the SoC
> capability. Several SoCs (Exynos2200, Exynos7870, Exynos850, Exynos990,
> and ExynosAutoV920) provide phy_cfg arrays containing only a single
> element.
>
> On these SoCs, when the loop reaches index 1, the driver reads past the
> end of the rodata array, populating the second PHY instance with garbage
> data. Since the configuration structure contains critical function
> pointers (phy_isol, phy_init, set_refclk), any subsequent access to this
> PHY instance via exynos5_usbdrd_phy_xlate could result in a kernel oops.
>
> Fix this by adding 'n_phy_cfg' to struct exynos5_usbdrd_phy_drvdata to
> store the actual size of the phy_cfg array for each SoC. Update the
> probe loop and the xlate function to bound their access against this
> value instead of the hardcoded EXYNOS5_DRDPHYS_NUM.
>
> Assisted-by: Claude:claude-sonnet-5
> Signed-off-by: Selvarasu Ganesan <selvarasu.g@samsung.com>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

>  drivers/phy/samsung/phy-exynos5-usbdrd.c | 17 +++++++++++++++--
>  1 file changed, 15 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
> index 8711a3b62c8e..311d1c25eb3e 100644
> --- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
> +++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
> @@ -477,6 +477,7 @@ struct exynos5_usbdrd_phy_config {
>
>  struct exynos5_usbdrd_phy_drvdata {
>         const struct exynos5_usbdrd_phy_config *phy_cfg;
> +       int n_phy_cfg;
>         const struct exynos5_usbdrd_phy_tuning **phy_tunes;
>         const struct phy_ops *phy_ops;
>         const char * const *clk_names;
> @@ -1164,7 +1165,7 @@ static struct phy *exynos5_usbdrd_phy_xlate(struct device *dev,
>  {
>         struct exynos5_usbdrd_phy *phy_drd = dev_get_drvdata(dev);
>
> -       if (WARN_ON(args->args[0] >= EXYNOS5_DRDPHYS_NUM))
> +       if (WARN_ON(args->args[0] >= phy_drd->drv_data->n_phy_cfg))
>                 return ERR_PTR(-ENODEV);
>
>         return phy_drd->phys[args->args[0]].phy;
> @@ -1993,6 +1994,7 @@ static const char * const exynos5_regulator_names[] = {
>
>  static const struct exynos5_usbdrd_phy_drvdata exynos2200_usb32drd_phy = {
>         .phy_cfg                = phy_cfg_exynos2200,
> +       .n_phy_cfg              = ARRAY_SIZE(phy_cfg_exynos2200),
>         .phy_ops                = &exynos2200_usbdrd_phy_ops,
>         .pmu_offset_usbdrd0_phy = EXYNOS2200_PHY_CTRL_USB20,
>         .clk_names              = exynos5_clk_names,
> @@ -2006,6 +2008,7 @@ static const struct exynos5_usbdrd_phy_drvdata exynos2200_usb32drd_phy = {
>
>  static const struct exynos5_usbdrd_phy_drvdata exynos5420_usbdrd_phy = {
>         .phy_cfg                = phy_cfg_exynos5,
> +       .n_phy_cfg              = ARRAY_SIZE(phy_cfg_exynos5),
>         .phy_ops                = &exynos5_usbdrd_phy_ops,
>         .pmu_offset_usbdrd0_phy = EXYNOS5_USBDRD_PHY_CONTROL,
>         .pmu_offset_usbdrd1_phy = EXYNOS5420_USBDRD1_PHY_CONTROL,
> @@ -2019,6 +2022,7 @@ static const struct exynos5_usbdrd_phy_drvdata exynos5420_usbdrd_phy = {
>
>  static const struct exynos5_usbdrd_phy_drvdata exynos5250_usbdrd_phy = {
>         .phy_cfg                = phy_cfg_exynos5,
> +       .n_phy_cfg              = ARRAY_SIZE(phy_cfg_exynos5),
>         .phy_ops                = &exynos5_usbdrd_phy_ops,
>         .pmu_offset_usbdrd0_phy = EXYNOS5_USBDRD_PHY_CONTROL,
>         .clk_names              = exynos5_clk_names,
> @@ -2031,6 +2035,7 @@ static const struct exynos5_usbdrd_phy_drvdata exynos5250_usbdrd_phy = {
>
>  static const struct exynos5_usbdrd_phy_drvdata exynos5433_usbdrd_phy = {
>         .phy_cfg                = phy_cfg_exynos5,
> +       .n_phy_cfg              = ARRAY_SIZE(phy_cfg_exynos5),
>         .phy_ops                = &exynos5_usbdrd_phy_ops,
>         .pmu_offset_usbdrd0_phy = EXYNOS5_USBDRD_PHY_CONTROL,
>         .pmu_offset_usbdrd1_phy = EXYNOS5433_USBHOST30_PHY_CONTROL,
> @@ -2044,6 +2049,7 @@ static const struct exynos5_usbdrd_phy_drvdata exynos5433_usbdrd_phy = {
>
>  static const struct exynos5_usbdrd_phy_drvdata exynos7_usbdrd_phy = {
>         .phy_cfg                = phy_cfg_exynos5,
> +       .n_phy_cfg              = ARRAY_SIZE(phy_cfg_exynos5),
>         .phy_ops                = &exynos5_usbdrd_phy_ops,
>         .pmu_offset_usbdrd0_phy = EXYNOS5_USBDRD_PHY_CONTROL,
>         .clk_names              = exynos5_clk_names,
> @@ -2056,6 +2062,7 @@ static const struct exynos5_usbdrd_phy_drvdata exynos7_usbdrd_phy = {
>
>  static const struct exynos5_usbdrd_phy_drvdata exynos7870_usbdrd_phy = {
>         .phy_cfg                = phy_cfg_exynos7870,
> +       .n_phy_cfg              = ARRAY_SIZE(phy_cfg_exynos7870),
>         .phy_tunes              = exynos7870_tunes,
>         .phy_ops                = &exynos7870_usbdrd_phy_ops,
>         .pmu_offset_usbdrd0_phy = EXYNOS5_USBDRD_PHY_CONTROL,
> @@ -2069,6 +2076,7 @@ static const struct exynos5_usbdrd_phy_drvdata exynos7870_usbdrd_phy = {
>
>  static const struct exynos5_usbdrd_phy_drvdata exynos850_usbdrd_phy = {
>         .phy_cfg                = phy_cfg_exynos850,
> +       .n_phy_cfg              = ARRAY_SIZE(phy_cfg_exynos850),
>         .phy_ops                = &exynos850_usbdrd_phy_ops,
>         .pmu_offset_usbdrd0_phy = EXYNOS5_USBDRD_PHY_CONTROL,
>         .clk_names              = exynos5_clk_names,
> @@ -2097,6 +2105,7 @@ static const struct exynos5_usbdrd_phy_tuning *exynos990_tunes[PTS_MAX] = {
>
>  static const struct exynos5_usbdrd_phy_drvdata exynos990_usbdrd_phy = {
>         .phy_cfg                = phy_cfg_exynos850,
> +       .n_phy_cfg              = ARRAY_SIZE(phy_cfg_exynos850),
>         .phy_ops                = &exynos850_usbdrd_phy_ops,
>         .phy_tunes              = exynos990_tunes,
>         .pmu_offset_usbdrd0_phy = EXYNOS990_PHY_CTRL_USB20,
> @@ -2629,6 +2638,7 @@ static const struct phy_ops exynosautov920_usb31drd_combo_ssphy_ops = {
>  static const
>  struct exynos5_usbdrd_phy_drvdata exynosautov920_usb31drd_combo_ssphy = {
>         .phy_cfg                = usb31drd_phy_cfg_exynosautov920,
> +       .n_phy_cfg              = ARRAY_SIZE(usb31drd_phy_cfg_exynosautov920),
>         .phy_ops                = &exynosautov920_usb31drd_combo_ssphy_ops,
>         .pmu_offset_usbdrd0_phy = EXYNOSAUTOV920_PHY_CTRL_USB31,
>         .clk_names              = exynos5_clk_names,
> @@ -2659,6 +2669,7 @@ exynos5_usbdrd_phy_config usbdrd_hsphy_cfg_exynosautov920[] = {
>  static const
>  struct exynos5_usbdrd_phy_drvdata exynosautov920_usbdrd_combo_hsphy = {
>         .phy_cfg                = usbdrd_hsphy_cfg_exynosautov920,
> +       .n_phy_cfg              = ARRAY_SIZE(usbdrd_hsphy_cfg_exynosautov920),
>         .phy_ops                = &exynosautov920_usbdrd_combo_hsphy_ops,
>         .pmu_offset_usbdrd0_phy = EXYNOSAUTOV920_PHY_CTRL_USB20,
>         .clk_names              = exynos5_clk_names,
> @@ -2687,6 +2698,7 @@ static const struct exynos5_usbdrd_phy_config phy_cfg_exynosautov920[] = {
>
>  static const struct exynos5_usbdrd_phy_drvdata exynosautov920_usbdrd_phy = {
>         .phy_cfg                = phy_cfg_exynosautov920,
> +       .n_phy_cfg              = ARRAY_SIZE(phy_cfg_exynosautov920),
>         .phy_ops                = &exynosautov920_usbdrd_phy_ops,
>         .pmu_offset_usbdrd0_phy = EXYNOSAUTOV920_PHY_CTRL_USB20,
>         .clk_names              = exynos5_clk_names,
> @@ -2863,6 +2875,7 @@ static const char * const gs101_regulator_names[] = {
>
>  static const struct exynos5_usbdrd_phy_drvdata gs101_usbd31rd_phy = {
>         .phy_cfg                        = phy_cfg_gs101,
> +       .n_phy_cfg                      = ARRAY_SIZE(phy_cfg_gs101),
>         .phy_tunes                      = gs101_tunes,
>         .phy_ops                        = &gs101_usbdrd_phy_ops,
>         .pmu_offset_usbdrd0_phy         = GS101_PHY_CTRL_USB20,
> @@ -3020,7 +3033,7 @@ static int exynos5_usbdrd_phy_probe(struct platform_device *pdev)
>
>         dev_vdbg(dev, "Creating usbdrd_phy phy\n");
>
> -       for (i = 0; i < EXYNOS5_DRDPHYS_NUM; i++) {
> +       for (i = 0; i < drv_data->n_phy_cfg; i++) {
>                 struct phy *phy = devm_phy_create(dev, NULL, drv_data->phy_ops);
>
>                 if (IS_ERR(phy))
> --
> 2.17.1
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
