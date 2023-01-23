Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CFB8C05027
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 11:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T7TSaK/Ed41gBkKGw4gE8GDAhC3MX4Z9NBNwCyrlCTA=; b=kAeawAJuQZMSmk
	sHzpSKNAUpnoG/96aSiQeOceH4wKuZ3Kk5qMalQPK7MmBXXudx0pC7xFgMCRn4JYA9QVQhGVvYu7/
	mTmdSXUAeqNZNvFi6jQmrbVhhVNMBZl0VTIg8OR6qXSo4jKEYMJNRUEHvOxV6IRr2ARap9VFJUHMO
	L3cIQIcEGNvoCBMM14KFyLIXPToxi9m2qKBhdFFmF7Kp2NzAHKhe1eMRCKNTEpJcTAgpTOVEXM/iW
	STNwdBrgd1LLhnQ7yLzpjRaOpEDaLfTyZjaod8Yrf9biSFyUCsGskK+5mH/VFEN+HOWziFaBprgat
	uAPCGRWzRC6C706XU+Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJuuS-00Gx31-PR; Mon, 23 Jan 2023 11:22:44 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJuuO-00Gx1V-SI
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 11:22:43 +0000
Received: by mail-ej1-x636.google.com with SMTP id v6so29568285ejg.6
        for <linux-phy@lists.infradead.org>; Mon, 23 Jan 2023 03:22:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2lzGiYJblPTtKdronpDxWVNuUcb29sPEo8arZ8em6q0=;
        b=AxlLvD+8DMKh+wf9BiUSKdDb+sa2rlt4bmvz14FGa9toDn+4zMljNoowKbhRbQdzEm
         qKGk/dnywgteUmH+J1bPz8VdiBfLUHsl8ZLpjM7ni1hHPBa4QAkln4VAO5S07CCJlHHe
         wtuRNC+zeBROd+zQOn9yOWQu0uOY42k5uFCqvC7shKXx9k2ssKO5A5jachXrsahRiSAd
         IMQOODb2Il2E+OamRm9593X78+9t6g10Rvakdcxecze1PzMNfQBNNq1fcwD9jWCxt3vt
         2shLxCrq1NITVByiflYp620F5He2X5yrHb+iGKy+00JiKnCRi2K0XYHi7zNNUOKbXFds
         +bcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2lzGiYJblPTtKdronpDxWVNuUcb29sPEo8arZ8em6q0=;
        b=hqZ4aKJYCGZS92V7p/EirObpfgoQT2AbWhc4UbBqut2xZw1OwGQqmJfnkRijdioK4j
         o55quhWVUSkeyKLtlLqKZH1zm9SxQGiC89gspK+LkXvGDEgs3OF9nyl5xHjVxvxPoPwM
         8RTaMLw/D7Sqwn8rWpJEQAiUvdiLtq2jLEE4vw9bAH2fOMj9ly+Q33uKRD+Z9rqaITva
         RhBB0FuSw0Hvb0pwTnBNEBTk2gnIA+YryAG8zZ7iGNvRhckLBSABKeeaplnvFz3ADqtd
         C1cJaG9IkTux0cuS5c7qrbeYAtTc5TM6wF2PI5/Zmp5xlKTq5mse5d1bXPWJad5cbQsx
         dQ5Q==
X-Gm-Message-State: AFqh2kqsI9HLjy6kVubxdgnh1GdLek+beiBMMbWCLpnBUyViV8CdtIJY
	5nkNZkvnvyEpBCiFko7wV5cJI9ilQ2A8oibF8G022Q==
X-Google-Smtp-Source: AMrXdXvSk0blnMkYUU5+UTAdRbufaMt8iWLi3aJJ3AC0FL/Ef+iJFHEdXA762JO2j4NC2AqdroMFWg==
X-Received: by 2002:a17:907:6a98:b0:855:2c8e:ad52 with SMTP id ri24-20020a1709076a9800b008552c8ead52mr16850357ejc.29.1674472956040;
        Mon, 23 Jan 2023 03:22:36 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id i21-20020a1709064fd500b008779570227bsm5187799ejw.112.2023.01.23.03.22.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 03:22:35 -0800 (PST)
Mime-Version: 1.0
Date: Mon, 23 Jan 2023 12:22:32 +0100
Message-Id: <CPZJ4F39LES0.ANG4EP8EUFI7@otso>
Cc: "Vinod Koul" <vkoul@kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 "Andy Gross" <agross@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>,
 "Konrad Dybcio" <konrad.dybcio@linaro.org>, "Kishon Vijay Abraham I"
 <kishon@kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 2/3] phy: qcom-qmp-combo: Add config for SM6350
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>, "Johan Hovold"
 <johan@kernel.org>
X-Mailer: aerc 0.14.0
References: <20221130081430.67831-1-luca.weiss@fairphone.com>
 <20221130081430.67831-2-luca.weiss@fairphone.com>
 <Y6xP4YRAp68TfxFi@hovoldconsulting.com> <Y8BIX+js1ircJyb9@matsya>
 <cf968a25-02f7-d402-530b-eb379b707e54@linaro.org>
 <CPR2LS3SJQ3I.Z7UY505COG3@otso>
 <CAA8EJpoOMMALHz7ysft6KvQaYhGWPD+xZiUjOTrC8CA_y81n-w@mail.gmail.com>
 <CPX2VVT5EUDV.2LH6VI2586F02@otso> <Y85WqDrGXAXp7gS/@hovoldconsulting.com>
 <a18359f8-6495-dbea-2323-8ab73bbfc472@linaro.org>
In-Reply-To: <a18359f8-6495-dbea-2323-8ab73bbfc472@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_032241_772001_CB031037 
X-CRM114-Status: GOOD (  44.16  )
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

On Mon Jan 23, 2023 at 12:15 PM CET, Dmitry Baryshkov wrote:
> On 23/01/2023 11:43, Johan Hovold wrote:
> > On Fri, Jan 20, 2023 at 03:13:46PM +0100, Luca Weiss wrote:
> >> On Fri Jan 13, 2023 at 2:01 PM CET, Dmitry Baryshkov wrote:
> >>> On Fri, 13 Jan 2023 at 14:44, Luca Weiss <luca.weiss@fairphone.com> wrote:
> >>>>
> >>>> Hi Dmitry,
> >>>>
> >>>> On Thu Jan 12, 2023 at 8:33 PM CET, Dmitry Baryshkov wrote:
> >>>>> On 12/01/2023 19:50, Vinod Koul wrote:
> >>>>>> On 28-12-22, 15:17, Johan Hovold wrote:
> >>>>>>> Luca, Vinod,
> >>>>>>>
> >>>>>>> On Wed, Nov 30, 2022 at 09:14:28AM +0100, Luca Weiss wrote:
> >>>>>>>> Add the tables and config for the combo phy found on SM6350.
> >>>>>>>>
> >>>>>>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> >>>>>>>> ---
> >>>>>>>> Changes since v2:
> >>>>>>>> * Drop dp_txa/dp_txb changes, not required
> >>>>>>>> * Fix dp_dp_phy offset
> >>>>>>>>
> >>>>>>>>    drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 126 ++++++++++++++++++++++
> >>>>>>>>    1 file changed, 126 insertions(+)
> >>>>>>>>
> >>>>>>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> >>>>>>>> index 77052c66cf70..6ac0c68269dc 100644
> >>>>>>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> >>>>>>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> >>>>>>>
> >>>>>>>> @@ -975,6 +1039,19 @@ static const char * const sc7180_usb3phy_reset_l[] = {
> >>>>>>>>            "phy",
> >>>>>>>>    };
> >>>>>>>>
> >>>>>>>> +static const struct qmp_combo_offsets qmp_combo_offsets_v3 = {
> >>>>>>>> + .com            = 0x0000,
> >>>>>>>> + .txa            = 0x1200,
> >>>>>>>> + .rxa            = 0x1400,
> >>>>>>>> + .txb            = 0x1600,
> >>>>>>>> + .rxb            = 0x1800,
> >>>>>>>> + .usb3_serdes    = 0x1000,
> >>>>>>>> + .usb3_pcs_misc  = 0x1a00,
> >>>>>>>> + .usb3_pcs       = 0x1c00,
> >>>>>>>> + .dp_serdes      = 0x1000,
> >>>>>>>
> >>>>>>> I would have expected this to be 0x2000 as that's what the older
> >>>>>>> platforms have been using for the dp serdes table so far. Without access
> >>>>>>> to any documentation it's hard to tell whether everyone's just been
> >>>>>>> cargo-culting all along or if there's actually something there at offset
> >>>>>>> 0x2000.
> >>>>>
> >>>>> usb3_serdes is 0x1000, so dp_serdes equal to 0x1000 is definitely an typo.
> >>>>>
> >>>>> Judging from the downstream dtsi, the DP PHY starts at offset 0x2000. So
> >>>>> dp_serdes is equal to 0x2000, dp_phy = 0x2a00, ln_tx1 = 0x2200, ln_tx2 =
> >>>>> 0x2600.
> >>>>
> >>>> Can you share how you got to the 0x2000 offset? You can see my
> >>>> (potentially wrong) reasoning for 0x1000 a few messages ago[0].
> >>>>
> >>>> The only 0x2000-something I could find now while looking at it again is
> >>>> "#define USB3_DP_PHY_DP_DP_PHY_PD_CTL 0x2a18" which becomes
> >>>> USB3_DP_DP_PHY_PD_CTL in the driver but this is seemingly not used at
> >>>> all in my msm-4.19 tree.
> >>>
> >>> Quite simple: see [1]. DP_PLL is at +0x2000
> >>>
> >>> [1] https://android.googlesource.com/kernel/msm-extra/devicetree/+/refs/heads/android-msm-bramble-4.19-android11-qpr1/qcom/lagoon-sde-pll.dtsi#27
> >>
> >> I still disagree from what I see.
> >>
> >> E.g. this part of the dp_serdes init table in mainline:
> >>
> >> static const struct qmp_phy_init_tbl qmp_v3_dp_serdes_tbl_rbr[] = {
> >> 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_HSCLK_SEL, 0x0c),
> >>
> >> With this one:
> >> #define QSERDES_V3_COM_HSCLK_SEL                     0x13c
> >>
> >> To write this config qmp->dp_serdes gets used which is set at:
> >> 	qmp->dp_serdes = base + offs->dp_serdes;
> >>
> >> So if offs->dp_serdes is 0x2000, this write will go to 0x213c.
> >>
> >> If we go back to msm-4.19 downstream the equivalent define is
> >> #define USB3_DP_QSERDES_COM_HSCLK_SEL				0x113c
>
> There are two SERDES regions. One used by USB part of the PHY (at 
> 0x1000) and another SERDES region used for DP (at 0x2000). As Johan 
> described below, vendor kernel handles the DP regions in the DP driver. 
> Possibly this caused a confusion on your side.

Ack, I think I got it now. I also see the registers used downstream
now, e.g.:

techpack/display/pll/dp_pll_10nm_util.c:#define QSERDES_COM_LOCK_CMP2_MODE0             0x009C

So now .dp_serdes should be 0x2000. Do I need to change anything else
also? I think not?

Regards
Luca

>
> >>
> >> So there we are at offset 0x1000. And this define is used in
> >> qcom,qmp-phy-init-seq which I already went to in detail in a previous
> >> email in this thread.
> > 
> >  From what I've heard, the PHY driver in the vendor kernel only deals
> > with the USB part of the PHY, while some display driver accesses the DP
> > part directly. So the fact that the Qualcomm USB PHY driver init
> > sequences don't seem to use the DP regions (apart from that
> > USB3_DP_PHY_DP_DP_PHY_PD_CTL register) is to be expected.
>
> Correct.
>
> > 
> > IIRC the v3 layout was also used by the SoC for which DP support was
> > first implemented. Presumably, the separate USB and DP regions do exist
> > and you should include them also for SM6350 even if you can't test it
> > currently.
>
> Correct. sdm845 and sc7180 are v3 and they handle DP and USB3 regions 
> separately inside a single Combo driver.
>
> > We'll convert the older platforms over to use the new binding scheme
> > soon and then we'd need this anyway. And if it turns out later that this
> > was all bogus, at least we only need to fix the driver (and not worry
> > about dts backward compatibility as we had to with the old style
> > bindings).
>
> As you mentioned this. Do you have plans to work on this conversion? If 
> not, I'll probably take a look during next development window.
> -- 
> With best wishes
> Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
