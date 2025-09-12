Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBB83CA101F
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 07:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=449NMR79nQsA9xhjVNVQWKSpZwe0AeSmitybcnWQKrU=; b=RwxoW1xtBbp9ZQ
	zyN2p82Iw5DuWCTuNobouARBZ8X6GAx2UBCoRM1zdE9JgC8/EphNHqvY4J8cYG5KqbvBftCbwSVgn
	BPO+IxQgdSMmwKhXZ1X0SmeFQkiZ5KBB4cDsd6Zt/BDqtGgUpm1cod4a2yaAikridEmas7059EBKd
	ypJhmWZ/9w/3lmq1VlB2+kqCuRIvwky6AiVeLFYxW1gkA5DU+wsxpgaMFWulipj86ADopIjk1fB/0
	IosvrRwaYm0m+iXD4u/Z6n8ik/nYke8/sk2wxUXG38DrQ5U7nTLvjFxasJe/l94fZWpCZsNue1dju
	e059YMTc8laQWi1EUdsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwyRS-00000007iJ3-31yY;
	Fri, 12 Sep 2025 07:43:34 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwyRQ-00000007iHe-0Vob
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 07:43:33 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-3d44d734cabso1306586f8f.3
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 00:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757663010; x=1758267810; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/tlrqWaDX6PzrBsN1xgSiYWgH8yIXX+vr7eFeQ9eV+s=;
        b=TbUJ/OtkOrH3/ZQTRMfq58D4QIdwzKKXNg8xU9ryOZ6517cjnawT/ipRL/qDKjkABO
         5YsMwKndJ8RqFf+UWxVE6RO5MS5NfRTcEgfB9vUUdFk+JeSmqeWIBJnyFqnYGSU7AnEJ
         zUhGDQ6wX7elkL0YM5H/2Let+dSf3DtYwqCX9bxOEjPVACk3e4x2CIndRKfc9Jpz3GyJ
         zClipfh80FtIrC036DaQzQCUyG8EXAKekNaAILrudq1eZfjvqM3IXBCL8J9QmJMl0E0E
         nZhTpx2VkQQdUvDhhbc1I53+XaQqJMZRXpn8zdHHdACNot0JtEVHtFlZH7TMdRmRuol9
         x6ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757663010; x=1758267810;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/tlrqWaDX6PzrBsN1xgSiYWgH8yIXX+vr7eFeQ9eV+s=;
        b=tkcxyrDp2izd1ooQ6WSgJzV6VsvUNXu7+E0DGbTVLgExF2D3Wvj9XBPy/76U0Ct3qo
         Pcpztk+jTXRgGvnod/YismJkSgNX6NgSNx1DYFQ02aEmnLEAqjoEi1QdEl//O+FMq5Jb
         z8mL5EJGaYvoPyf7TcbYe2NRol2j+4fmiv4E8AaN222+A75hVNcXEpesw68OO/M2Gwbx
         2eWF1Cmr6ygCVeBDgI6wTLgTaERPvLskxZeHB7ukyv6rnA2RG7EEpBwqq/r1vuuAORO4
         KBrrAjgcMv63CLQhGyEy2nysNNPGVgdV5VNZjW5Cjhh7dUnp1goZMEOreeDu5BiXNakc
         wCRg==
X-Forwarded-Encrypted: i=1; AJvYcCU/lVOajXTD5l0IvKzviBh0Re7fuQg/HtSts9p5I56TdO4pU66v/uzKBg6a5RjXEAuaps4qCIOrfpE=@lists.infradead.org
X-Gm-Message-State: AOJu0YyhKsk6mGAhRZ/TJ902h+RD3rkQxWLWYMyfDY2LUGDzY14DZpvp
	VO0Qp/oTKi5jqL3i6J1VhB01NF8WWzPRBNYj59DmxBe2FW2HLecpPC8zVZz2Zu/OFfk=
X-Gm-Gg: ASbGncssvZwsyW9TZLQAkhvzxUN0Q9s9i/AUoKa/q7R9qhXn9mfosgmIgWb7+lPrsmF
	+dpdvCLkxkQUEqjWusro/yEA3O1xIfBt1PKNeB+xWXJFzx4Y+fBlonrDOxD4T5MIVsIQGYML6TY
	ZEBg1scsfT6x3G3S0qlyUn2ut4phTwqP3Hll0JqqoYipkkHoosZqe77AqeKDPx01cJheVYCLISC
	EKdHT4nJRAPd6U+pFv6DCIvZrVt0APsOEfwB1AmzDRVDDKWgcbqG0Xtj2Cj2cHPrZopoES4ap/8
	DA4blA68DnLzqhd5Zl+0FRa3VIdb2kS4Zuz7lHZi/C1I/Sscp+Ii/fVoraRhrOfoXqdmdth0Eub
	GK0g1gtL2SFkPL3S7+nmaLg==
X-Google-Smtp-Source: AGHT+IEZAiE1f9boxOUWUwCm6QWtzQinPI/QYY7rsGgyorpzn3871kCxtIjCpGOMwKr6zoccKgtOdA==
X-Received: by 2002:a05:6000:230f:b0:3e7:4071:188c with SMTP id ffacd0b85a97d-3e765a04970mr1862367f8f.60.1757663010049;
        Fri, 12 Sep 2025 00:43:30 -0700 (PDT)
Received: from linaro.org ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e760786cddsm5695898f8f.14.2025.09.12.00.43.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 00:43:29 -0700 (PDT)
Date: Fri, 12 Sep 2025 10:43:27 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Alexey Klimov <alexey.klimov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 4/4] phy: qcom: edp: Add Glymur platform support
Message-ID: <4a5brcec3knsjtowyju33drs2twq72mtpiwo54dtshsvs22d6v@e7rztm64nmlo>
References: <20250911-phy-qcom-edp-add-glymur-support-v3-0-1c8514313a16@linaro.org>
 <20250911-phy-qcom-edp-add-glymur-support-v3-4-1c8514313a16@linaro.org>
 <DCQAGDC63M8X.3DVH6I9FA0IZD@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DCQAGDC63M8X.3DVH6I9FA0IZD@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_004332_205916_B165B622 
X-CRM114-Status: GOOD (  42.68  )
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

On 25-09-11 22:28:24, Alexey Klimov wrote:
> On Thu Sep 11, 2025 at 3:45 PM BST, Abel Vesa wrote:
> > The Qualcomm Glymur platform has the new v8 version
> > of the eDP/DP PHY. So rework the driver to support this
> > new version and add the platform specific configuration data.
> 
> It is a bit confusing. Subject suggests that it is an addition
> of a new platform but patch itself and description looks more like a
> rework rather than new platform addition.

The larger part of this patch is actually the addition of v8 specific bits,
which is only used on Glymur, AFAICT. So here, new platform means new init
sequence (at least), but new init sequence requires addition of v8 bits.
The rework is rather minor in comparison with the v8 addition.

> 
> The ->aux_cfg_size() rework here reminds me
> 913463587d52 phy: qcom: edp: Introduce aux_cfg array for version specific aux settings
> 
> Ideally this should be split into rework and adding support for a
> new platform. Or please update the commit desc and subject to explain
> why this is the way.

Splitting out the rework could be an option, however, it would not add
any value. Seeing the changes needed by the new v8 version alongside
with the addition of the v8 version makes the patch more intuitive to
read, IMO, specially since, again, the rework pretty is minor.

If anything, maybe I could add to the existing commit what exactly needs
to be reworked for the v8 version addition, but IMHO the rework code is
quite self-explanatory, and we should only describe in the commit
message what the patch does not how the code works.

> 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-edp.c | 240 +++++++++++++++++++++++++++++++++++-
> >  1 file changed, 234 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> > index 7b642742412e63149442e4befeb095307ec38173..b670cda0fa066d3ff45c66b73cc67e165e55b79a 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> 
> [..]
> 
> >  static int qcom_edp_phy_init(struct phy *phy)
> >  {
> >  	struct qcom_edp *edp = phy_get_drvdata(phy);
> > @@ -224,7 +241,11 @@ static int qcom_edp_phy_init(struct phy *phy)
> >  	if (ret)
> >  		goto out_disable_supplies;
> >  
> > -	memcpy(aux_cfg, edp->cfg->aux_cfg, sizeof(aux_cfg));
> > +	memcpy(aux_cfg, edp->cfg->aux_cfg, edp->cfg->aux_cfg_size);
> 
> So, if I understand this correctly, when or if init sequence will
> span beyond DP_PHY_AUX_CFG9 and DP_AUX_CFG_SIZE won't be updated,
> then we might end up doing something fishy here?

So, usually you get an init sequence that gives you register names and
registers value. This means will never get anything beyond the AUX_CFG12
as part of the AUX_CFG array. At least not on the currently available
platforms. In case a new platform will come around with AUX_CFG13 and
beyond, then this whole thing will need to be reworked heavily due to
variation in size of the AUX_CFG register layout, not because of the
variation in size of the AUX CFG init sequence, as it is the case now.
But this fits into the 'future problem' bucket.

> 
> Maybe add an if-check or even
> BUILD_BUG_ON(edp->cfg->aux_cfg_size > sizeof(aux_cfg))
> or something like this? Or kmalloc aux_cfg eventually at least,
> however it seems to overcomplicate things.

Definitely not BUILD_BUG_ON !

And adding a check for the size it's pretty pointless since we currently
hardcode the size of the array when defining it.

But maybe I'll outvoted here ...

> 
> [..]
> 
> > +static int qcom_edp_com_configure_ssc_v8(const struct qcom_edp *edp)
> > +{
> > +	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
> > +	u32 step1;
> > +	u32 step2;
> > +
> > +	switch (dp_opts->link_rate) {
> > +	case 1620:
> > +	case 2700:
> > +	case 8100:
> > +		step1 = 0x5b;
> > +		step2 = 0x02;
> > +		break;
> > +
> > +	case 5400:
> > +		step1 = 0x5b;
> > +		step2 = 0x02;
> > +		break;
> > +
> > +	default:
> > +		/* Other link rates aren't supported */
> > +		return -EINVAL;
> > +	}
> > +
> > +	writel(0x01, edp->pll + DP_QSERDES_V8_COM_SSC_EN_CENTER);
> > +	writel(0x00, edp->pll + DP_QSERDES_V8_COM_SSC_ADJ_PER1);
> > +	writel(0x6b, edp->pll + DP_QSERDES_V8_COM_SSC_PER1);
> > +	writel(0x02, edp->pll + DP_QSERDES_V8_COM_SSC_PER2);
> > +	writel(step1, edp->pll + DP_QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0);
> > +	writel(step2, edp->pll + DP_QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0);
> > +
> > +	return 0;
> > +}
> > +
> > +static int qcom_edp_com_configure_pll_v8(const struct qcom_edp *edp)
> > +{
> > +	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
> > +	u32 div_frac_start2_mode0;
> > +	u32 div_frac_start3_mode0;
> > +	u32 dec_start_mode0;
> > +	u32 lock_cmp1_mode0;
> > +	u32 lock_cmp2_mode0;
> > +	u32 code1_mode0;
> > +	u32 code2_mode0;
> > +	u32 hsclk_sel;
> > +
> > +	switch (dp_opts->link_rate) {
> > +	case 1620:
> > +		hsclk_sel = 0x5;
> > +		dec_start_mode0 = 0x34;
> > +		div_frac_start2_mode0 = 0xc0;
> > +		div_frac_start3_mode0 = 0x0b;
> > +		lock_cmp1_mode0 = 0x37;
> > +		lock_cmp2_mode0 = 0x04;
> > +		code1_mode0 = 0x71;
> > +		code2_mode0 = 0x0c;
> > +		break;
> > +
> > +	case 2700:
> > +		hsclk_sel = 0x3;
> > +		dec_start_mode0 = 0x34;
> > +		div_frac_start2_mode0 = 0xc0;
> > +		div_frac_start3_mode0 = 0x0b;
> > +		lock_cmp1_mode0 = 0x07;
> > +		lock_cmp2_mode0 = 0x07;
> > +		code1_mode0 = 0x71;
> > +		code2_mode0 = 0x0c;
> > +		break;
> > +
> > +	case 5400:
> > +		hsclk_sel = 0x2;
> > +		dec_start_mode0 = 0x4f;
> > +		div_frac_start2_mode0 = 0xa0;
> > +		div_frac_start3_mode0 = 0x01;
> > +		lock_cmp1_mode0 = 0x18;
> > +		lock_cmp2_mode0 = 0x15;
> > +		code1_mode0 = 0x14;
> > +		code2_mode0 = 0x25;
> > +		break;
> > +
> > +	case 8100:
> > +		hsclk_sel = 0x2;
> > +		dec_start_mode0 = 0x4f;
> > +		div_frac_start2_mode0 = 0xa0;
> > +		div_frac_start3_mode0 = 0x01;
> > +		lock_cmp1_mode0 = 0x18;
> > +		lock_cmp2_mode0 = 0x15;
> > +		code1_mode0 = 0x14;
> > +		code2_mode0 = 0x25;
> > +		break;
> 
> These sections for 5400 and 8100 rates seem to be the same. Is it correct?
> If yes, then maybe join them together and drop duplicating lines?
> 
> There is probably similar thingy in qcom_edp_com_configure_ssc_v8() above.

I agree. This is a good point. I'll do fallthrough instead. In the
_configure_ssc_v8() above as well.

> 
> Best regards,
> Alexey
> 

Thanks for reviewing.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
