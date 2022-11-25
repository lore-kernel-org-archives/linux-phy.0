Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76ECDC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 25 Nov 2022 10:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+LhsutQmP/nKeNASVP2wIVLitsVm+OWATItwf1lNhaw=; b=S9UIjAz21TlCBY
	k7zJUwY1vHGfmbjGG9ISe9iBdYgAakY4Ng2ib7hvawIwDJB7U7dL/nQ82yLRIRAQ/PJjDYU/pYPaj
	NlbDMOeTef0ZHOoAVzpEE2CakIk4oo71ancE4s1RbOdlhtTJeUvbv2ryvAqtn+PMe0d8dFht6/L88
	XS0P/X2YjXABz5vADkgTiyUoeogMK+ha1cHPw0+28c7beMhj0nbiXJC5Ru5sK0urdIiO5CvltENIo
	uSveVatT8xPQ03w3VyWTNdQS3cJghPATGa+KwoDOi/+8hyAFXnAj6kuQpmU3+Z6n9UOWcGd6dS4Md
	57Srt6Fy+1g67vWjdGNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyW2i-00FVK5-Fu; Fri, 25 Nov 2022 10:34:48 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyVjW-00FHiv-Et
	for linux-phy@lists.infradead.org; Fri, 25 Nov 2022 10:15:08 +0000
Received: by mail-ej1-x632.google.com with SMTP id vv4so9301439ejc.2
        for <linux-phy@lists.infradead.org>; Fri, 25 Nov 2022 02:14:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ze5X8K96YfolEUWWp2wCAL1o2UJfqLaO6LuOkhe2Dy4=;
        b=3kqsMN0E75aV/kEY5vMRA5bg9o31oG86MoG8NvHZ9c4/nwFwofyI94Gu+HzALfI4EJ
         IEulqc8dsKqapsQcx2ZhwLjtFH3uaNonEI0w0S3QobW3JWovjD0sDn8RcLDqjLTy3XMQ
         GzMQP6XDaERvYJtxwFnUVnzUPXZgTe4iIpNY/07lxFwSJDP0YMo8N8wJ/OSF017SfeTp
         FAiyNKGUMtYNc4taNYr/7ZesoudRa/U7QOtcZJUAtYQt3YGYN2Ll3BMoBuatU8P3RDx5
         3Id2EUM6Ll7QSKKSF75g5r9DLgqvWTKMTuykKe+TJVBT9H7R6bCXMPewmEgnly/20owq
         p9vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ze5X8K96YfolEUWWp2wCAL1o2UJfqLaO6LuOkhe2Dy4=;
        b=LVOj83bghNr1I2CJmeQzXjZVn3jRgkcS34tNyz/ZKI4Xn7dZWccvm6DEXdUIgGbzK4
         V2Jqez/5GhZwb8gO+zevW1RhB1OvZEBDJhjJj/fNOjCQiDb1v2Th2VPCEYaWNRPP/v2L
         /lkJJs02svQOhyy4YqvLwsPR6Hf5yyjPjGHiNJVAcSHKU5yO106wBQ5ILfV73cjJ8O59
         285S1sdbjCxwq614Ege1yAWN/RXkpO++WKyCM45gBqxYbUF0AaywdrQTx30kS4x24T+k
         MKnfM7J3+wCPYa5WhwbIxz9eDi2P6o0LovqE3bAXTcM59mgEJr2oWdOUpXt/XVlKLAEZ
         8xEQ==
X-Gm-Message-State: ANoB5pk6Bl1eNMkftuEqYSEeJVN2sdVk1kirqYLPQFESv8F7M8jzvM9y
	F9YL8wMEBfMURZyvcvhLxzw1+A==
X-Google-Smtp-Source: AA0mqf4675WzDMOUMScJ0UA/aMo//uxK5ar9n6RaKb/OqUwLT5aZ4pEdBMFilFPhv2GkUj2o+wxtIg==
X-Received: by 2002:a17:907:1a53:b0:7b2:b15e:86e6 with SMTP id mf19-20020a1709071a5300b007b2b15e86e6mr18620960ejc.410.1669371294644;
        Fri, 25 Nov 2022 02:14:54 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id be14-20020a0564021a2e00b00463597d2c25sm1598979edb.74.2022.11.25.02.14.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 02:14:54 -0800 (PST)
Mime-Version: 1.0
Date: Fri, 25 Nov 2022 11:14:53 +0100
Message-Id: <COLAQH772WXW.P442ICY46TDR@otso>
Cc: <linux-arm-msm@vger.kernel.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 "Andy Gross" <agross@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>,
 "Konrad Dybcio" <konrad.dybcio@linaro.org>, "Vinod Koul"
 <vkoul@kernel.org>, "Kishon Vijay Abraham I" <kishon@kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [RFC PATCH v2 2/3] phy: qcom-qmp-combo: Add config for SM6350
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Johan Hovold" <johan@kernel.org>
X-Mailer: aerc 0.13.0
References: <20221125092749.46073-1-luca.weiss@fairphone.com>
 <20221125092749.46073-2-luca.weiss@fairphone.com>
 <Y4CSYZE+3fZCV4Z3@hovoldconsulting.com>
In-Reply-To: <Y4CSYZE+3fZCV4Z3@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221125_021458_570176_B88902C5 
X-CRM114-Status: GOOD (  24.93  )
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

Hi Johan,

On Fri Nov 25, 2022 at 11:01 AM CET, Johan Hovold wrote:
> On Fri, Nov 25, 2022 at 10:27:48AM +0100, Luca Weiss wrote:
> > Add the tables and config for the combo phy found on SM6350.
> > 
> > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > ---
> > @Johan Hovold, here I've added dp_txa & dp_txb, I believe otherwise
> > qmp->dp_tx would be wrong. Is this different on sc8280xp or was this a
> > mistake on your side? I think this should probably be split out to
> > another patch to not mix things up too much.
>
> Yeah, that's a difference in sc8280xp which does not have dedicated TX
> registers for DP.

Good to know.

>
> This is probably best handled explicitly when parsing the DT by using
> dp_txa/b if they are set and otherwise fallback to txa/txb (e.g.
> instead of hiding it in the v5 table by using the same offset in two
> places).

Are you thinking about something like this?

if (offs->dp_txa)
    qmp->dp_tx = base + offs->dp_txa
else
    qmp->dp_tx = base + offs->txa;

if (offs->dp_txb)
    qmp->dp_tx2 = base + offs->dp_txb;
else
    qmp->dp_tx2 = base + offs->txb;

This wouldn't handle ".dp_txa = 0x0000" but I don't think this should be
a problem, right?

>
> It can be done as part of this patch as long as you mention it in the
> commit message.

Ack.

Regards
Luca

>
> > I think other than that this patch is good.
>
> Indeed, looks good! Nice to see this working out as intended also for
> the older platforms.
>
> >  static const struct qmp_phy_init_tbl sm8150_usb3_serdes_tbl[] = {
> >  	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_EN_CENTER, 0x01),
> >  	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_PER1, 0x31),
> > @@ -809,6 +873,8 @@ struct qmp_combo_offsets {
> >  	u16 usb3_pcs;
> >  	u16 usb3_pcs_usb;
> >  	u16 dp_serdes;
> > +	u16 dp_txa;
> > +	u16 dp_txb;
> >  	u16 dp_dp_phy;
> >  };
> >  
> > @@ -975,6 +1041,21 @@ static const char * const sc7180_usb3phy_reset_l[] = {
> >  	"phy",
> >  };
> >  
> > +static const struct qmp_combo_offsets qmp_combo_offsets_v3 = {
> > +	.com		= 0x0000,
> > +	.txa		= 0x1200,
> > +	.rxa		= 0x1400,
> > +	.txb		= 0x1600,
> > +	.rxb		= 0x1800,
> > +	.usb3_serdes	= 0x1000,
> > +	.usb3_pcs_misc	= 0x1a00,
> > +	.usb3_pcs	= 0x1c00,
> > +	.dp_serdes	= 0x2000,
> > +	.dp_txa		= 0x2200,
> > +	.dp_txb		= 0x2600,
> > +	.dp_dp_phy	= 0x2c00,
> > +};
> > +
> >  static const struct qmp_combo_offsets qmp_combo_offsets_v5 = {
> >  	.com		= 0x0000,
> >  	.txa		= 0x0400,
>
> > @@ -2641,8 +2767,8 @@ static int qmp_combo_parse_dt(struct qmp_combo *qmp)
> >  	qmp->pcs_usb = base + offs->usb3_pcs_usb;
> >  
> >  	qmp->dp_serdes = base + offs->dp_serdes;
> > -	qmp->dp_tx = base + offs->txa;
> > -	qmp->dp_tx2 = base + offs->txb;
> > +	qmp->dp_tx = base + offs->dp_txa;
> > +	qmp->dp_tx2 = base + offs->dp_txb;
> >  	qmp->dp_dp_phy = base + offs->dp_dp_phy;
> >  
> >  	qmp->pipe_clk = devm_clk_get(dev, "usb3_pipe");
>
> Johan


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
