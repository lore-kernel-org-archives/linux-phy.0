Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCB02C3DA4A
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 10:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RQqlf0Vz0ocBbU2D19sPG5mgN53Lj0n7Dck6FLuKrcI=; b=0qsLBM28rZhNa5
	QUnveMWGT4KMgCWydGjmsmvupDzAJBW/aE2cdmJsXo/qQc8ekJdY8oEMfktp/pKcjehtKZRGdVpWp
	OKctNuZ3hQMo35QYWgbtzI+d62vSlchTgOLWTRoxsCqURDOKdIXvdWVgucW0ovU5L1MDHcwqKY9QJ
	wyRND2ii4LSuz+BzfqX5DlZHjgY8YFS1oB6IPope6KJBOjLy/7Za3KIdy4YWFQBIfTSmCOklKxUlK
	axXGJNxzVKCusqqUX/d1e/a4eiOXkYvrKzk5t/TfjtymDQcL56MDkNGjhgEG7uvSHUGjzAIp8Roge
	5RJtBAWk1f/vPtXweqVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZT7w-00000004lQv-1Z1d;
	Thu, 01 Aug 2024 10:33:44 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZT7s-00000004lPS-3J54
	for linux-phy@lists.infradead.org;
	Thu, 01 Aug 2024 10:33:43 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-428101fa30aso44812655e9.3
        for <linux-phy@lists.infradead.org>; Thu, 01 Aug 2024 03:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722508419; x=1723113219; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2DZ9JRnL0e7KpbgL/FSZ6b64iFFZz5Rvxbediv3ijJ8=;
        b=Vd6py+kauc2Oo6R2wF+8DfKvtkGYSmE0YHvF93ufpRqcpY/tLmVtTNzRDvD1qYmRYP
         ZsXwPK8xIIT9CRvQLv88tYYGKhNIXNBPhL9A3oKyb+3nFIBA7yVei04OCYQG6vKq6anx
         9DxpWy+7hpWFftiGmN0lbqHWBGTYNjYjUx1CrGtBjs6YsTU+ZjXgjYqyA5RbvgW+0FWo
         086grGxYNoXzoEPXo4SFYjbOoCCZil2Ry1wUwxvJXCEaqIGmHn1nChwF+yUV+ALdN20Z
         z8CutSEeUqhNMwwyN8xEi4c7pB9cUgdXAY4I5HWrfVd5J3HAW4vxcx8cffw2iJyudoqB
         v2WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722508419; x=1723113219;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2DZ9JRnL0e7KpbgL/FSZ6b64iFFZz5Rvxbediv3ijJ8=;
        b=Ae43Wn6rM4LdBRRgBVDkDVJ4EzyIFM7q9O56lzBmaxpTEGW3bR6yPDkSJwdicsSKwb
         y23c5i19ttMoZTos9opgeL9cTsbESpYlYMciwuPBWf/Z32yIn+Wr5Nydf/dSxgZbaThi
         WRgczM2ped3XFOhVq7BjwXaLQNun/zVyU/JDFbGSXPwceRTDHbFYY+NKhJ7Q2yqmQEpS
         spWE4Yx/XDny4K+fIFbnDrN0RwdZX6Tri8ISJFpbvejIlV/Gxe8I2LQkmFCXL8ZLIDVM
         LpzBarVivpQrfuH1uAgp/vj495Fp/y8UNFOJF6toWGVqNtkwcMf4/xXF7Vi8L68TZWV3
         1Tjw==
X-Forwarded-Encrypted: i=1; AJvYcCUj7SbbZIxvKJ6V4VSH8COeE/yRoSQ6XyNS/GqTmEAjd+pCo7G8sgUN9arIX5MFPB7pWBfyoDBGP2RN1oODon8RG6XRkmi1YHV0ZXgukA==
X-Gm-Message-State: AOJu0Yxw89UNkWzZ4+2cSgyGlhlUyili3YeOw20uJBDhLNPStOlIgtAk
	cp4PAX+fJIBYjZwgAJdu+lcqWJiANuPj/VUqDiawEwPrJh6Gk9ykV70+3oswqdK5zOLppKkn1Q/
	f
X-Google-Smtp-Source: AGHT+IEQgVTcNKj105V6VOej2nknnx4vup+h7CU4av90EuoPVBm6nZUMtPvjq53uwkUNQcyJVXl21g==
X-Received: by 2002:a05:600c:3ca7:b0:428:150e:4f13 with SMTP id 5b1f17b1804b1-428b4ae2222mr14059125e9.33.1722508418390;
        Thu, 01 Aug 2024 03:33:38 -0700 (PDT)
Received: from linaro.org ([82.79.124.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-428240b2d65sm44538315e9.0.2024.08.01.03.33.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 03:33:37 -0700 (PDT)
Date: Thu, 1 Aug 2024 13:33:36 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-qmp-pcie: Fix X1E80100 PCIe Gen4 PHY
 initialisation
Message-ID: <ZqtkgPf+JOP+im1s@linaro.org>
References: <20240726-x1e80100-phy-qmp-pcie-fix-config-v1-1-b569f03c0c48@linaro.org>
 <ZqOysDk0LqwxG4OF@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZqOysDk0LqwxG4OF@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_033340_854279_35C319DB 
X-CRM114-Status: GOOD (  18.21  )
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

On 24-07-26 16:29:04, Johan Hovold wrote:
> On Fri, Jul 26, 2024 at 10:16:56AM +0300, Abel Vesa wrote:
> > Update the PCIe Gen4 PHY init sequence with the latest based on internal
> > Qualcomm documentation.
> 
> Any hints about what these updates imply?

Usually, there is an updated variant of the same document.
I've been told that this values are fine-tuned over time.
I'm assuming these updates should help with link stability, but it's
just a guess.

> 
> > Fixes: 606060ce8fd0 ("phy: qcom-qmp-pcie: Add support for X1E80100 g3x2 and g4x2 PCIE")
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 23 ++++++++++++++++-------
> >  1 file changed, 16 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > index 5b36cc7ac78b..8b624afbf014 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> 
> >  static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_tx_tbl[] = {
> > @@ -1286,12 +1287,15 @@ static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_rx_tbl[] = {
> >  	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_DFE_1, 0x01),
> >  	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_DFE_2, 0x01),
> >  	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_DFE_3, 0x45),
> > -	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_VGA_CAL_MAN_VAL, 0x0b),
> > +	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_20_RX_VGA_CAL_MAN_VAL, 0x0A, 1),
> > +	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_20_RX_VGA_CAL_MAN_VAL, 0x0B, 2),
> 
> Please use lower-case hex consistently.

Sure. Will fix in v2.

> 
> > +	QMP_PHY_INIT_CFG(QSERDES_V6_20_VGA_CAL_CNTRL1, 0x00),
> >  	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_GM_CAL, 0x0d),
> >  	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_EQU_ADAPTOR_CNTRL4, 0x0b),
> >  	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_SIGDET_ENABLES, 0x1c),
> >  	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_PHPRE_CTRL, 0x20),
> > -	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
> > +	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_20_RX_DFE_CTLE_POST_CAL_OFFSET, 0x3A, 1),
> > +	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_20_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38, 2),
> 
> Ditto.
> 
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
