Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78528C25B4E
	for <linux-phy@archiver.kernel.org>; Fri, 20 Jan 2023 14:13:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iq/auojWfDDRPFvcOcv2cmNy7X7q0MnG2j/O1xeNI1w=; b=iKhL/AFgAtPuyQ
	P0wasqoJyxaBGdhdVN+3oZsyBLQJgVvN8NagVrfXJFdfpqCHBfbXNUgC6a2m1Kt8WGjkb3DGMa4oY
	P0x8D0QeX0AeqgdUt6qMU7M8mtHlXJkN9sURpegxhsG81YSc2L5zUkZGFkUuQ/aOwd+AEHbsEhFMf
	6Bhm7jKuKy06lMTyyjXH6dE0owIqVnFcIs2qpcM/z2FKIActV2OOkqDQnpLnWoOC68kvkr+ayQcLu
	RzwJmFj2oNTCG6ekDV7pa1hZuxpAiHtY5Tv7377k+WHygpGldjYMFd558hLv5OT/IzX6xs/x2ydPX
	cmxT1wFcMxaUB7D0gBpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIs9U-00AdMw-2d; Fri, 20 Jan 2023 14:13:56 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIs9N-00AdIX-Dw
	for linux-phy@lists.infradead.org; Fri, 20 Jan 2023 14:13:51 +0000
Received: by mail-ej1-x630.google.com with SMTP id mg12so14301100ejc.5
        for <linux-phy@lists.infradead.org>; Fri, 20 Jan 2023 06:13:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ilLx6O6YT20nFcUZQCZceyzwkMlq9jdKRHFVcmAsl2w=;
        b=ayEpP7xMy4TXl7+XiO8ro4Txa0MJS/99a9JhC3ahSwucSr+pp8+JT7uj14K3WxO9Nb
         RIc5SGeLH1XIKcd+7X4Qcl/YIMwm+VApTHcgrQdFJw8ZP24HqoAMJkxdYH2SeOdQ7XIk
         nkouY/TYeIKfYx7l6/RoZknFBPgPe+9Lub3HncGUaPxnM0IFo3L4BrrRmi5mm9z62LID
         ZatLCWTGQ2w0EiSGU4HJCXi0B++LXBaZCcsJrVSL0SqwNLmBepU+2VIp0+kpZI0P+qwU
         xay2fhZ6JGajmJVUIRxTvYn5cnBBa5kn6gIZ98wCC9K6UC8lhr2FCWuAoqD4ixPId8kd
         2uvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ilLx6O6YT20nFcUZQCZceyzwkMlq9jdKRHFVcmAsl2w=;
        b=s+V6/II35VjA9AA3267e+vkcWwZO/Qs77MnsHLffsI+i4dE+fNitZ+OO5P3utZ/9DF
         ElBI0SgE2bIa35PvvarNOZwx0CBlPY3HzM0U38nCyCVz9pkhQp6SLiFIEsmOqJ/IZas7
         pW+8o5QurmwEJer3EdFZGa6X7Gppou0klgs0JUKJAZ+J+bjTDktoCiCk8m0HuW9nRt8h
         NjUL5leg/FLxSM8EhSxU5NghIg8hxvv4q9yL1Kft3fDPbsMR/Vr6IMDl3cPE1oeXuPmx
         RqX79FykwM2P3Hi/L01Xw4IT6QdUeWobmXege8QGXjK2LDjNe1itVBaI6KsHICHtvXP1
         q1QA==
X-Gm-Message-State: AFqh2kpJAQwdDyD0f3h4SV11gzzUgDlNXEIi4C97JqFhZIPfxWTooJxt
	WBDlbZig4kuM2xJ9qdSJroDoZQ==
X-Google-Smtp-Source: AMrXdXtSS2bkT3pSmtQPIneqvBLkh4z0QahUWsvsrzmDs10I/OhZz7loxD1lwHY6/y7aklLQNAsNlA==
X-Received: by 2002:a17:906:eb13:b0:869:236c:ac43 with SMTP id mb19-20020a170906eb1300b00869236cac43mr15283207ejb.32.1674224027081;
        Fri, 20 Jan 2023 06:13:47 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id y20-20020a170906559400b0084d44bff4a2sm15840508ejp.39.2023.01.20.06.13.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jan 2023 06:13:46 -0800 (PST)
Mime-Version: 1.0
Date: Fri, 20 Jan 2023 15:13:46 +0100
Message-Id: <CPX2VVT5EUDV.2LH6VI2586F02@otso>
Subject: Re: [PATCH v3 2/3] phy: qcom-qmp-combo: Add config for SM6350
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>
Cc: "Vinod Koul" <vkoul@kernel.org>, "Johan Hovold" <johan@kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <~postmarketos/upstreaming@lists.sr.ht>,
 <phone-devel@vger.kernel.org>, "Andy Gross" <agross@kernel.org>, "Bjorn
 Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konrad.dybcio@linaro.org>, "Kishon Vijay Abraham I" <kishon@kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.14.0
References: <20221130081430.67831-1-luca.weiss@fairphone.com>
 <20221130081430.67831-2-luca.weiss@fairphone.com>
 <Y6xP4YRAp68TfxFi@hovoldconsulting.com> <Y8BIX+js1ircJyb9@matsya>
 <cf968a25-02f7-d402-530b-eb379b707e54@linaro.org>
 <CPR2LS3SJQ3I.Z7UY505COG3@otso>
 <CAA8EJpoOMMALHz7ysft6KvQaYhGWPD+xZiUjOTrC8CA_y81n-w@mail.gmail.com>
In-Reply-To: <CAA8EJpoOMMALHz7ysft6KvQaYhGWPD+xZiUjOTrC8CA_y81n-w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230120_061349_523358_E81C9CC4 
X-CRM114-Status: GOOD (  36.93  )
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

On Fri Jan 13, 2023 at 2:01 PM CET, Dmitry Baryshkov wrote:
> On Fri, 13 Jan 2023 at 14:44, Luca Weiss <luca.weiss@fairphone.com> wrote:
> >
> > Hi Dmitry,
> >
> > On Thu Jan 12, 2023 at 8:33 PM CET, Dmitry Baryshkov wrote:
> > > On 12/01/2023 19:50, Vinod Koul wrote:
> > > > On 28-12-22, 15:17, Johan Hovold wrote:
> > > >> Luca, Vinod,
> > > >>
> > > >> On Wed, Nov 30, 2022 at 09:14:28AM +0100, Luca Weiss wrote:
> > > >>> Add the tables and config for the combo phy found on SM6350.
> > > >>>
> > > >>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > > >>> ---
> > > >>> Changes since v2:
> > > >>> * Drop dp_txa/dp_txb changes, not required
> > > >>> * Fix dp_dp_phy offset
> > > >>>
> > > >>>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 126 ++++++++++++++++++++++
> > > >>>   1 file changed, 126 insertions(+)
> > > >>>
> > > >>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > > >>> index 77052c66cf70..6ac0c68269dc 100644
> > > >>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > > >>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > > >>
> > > >>> @@ -975,6 +1039,19 @@ static const char * const sc7180_usb3phy_reset_l[] = {
> > > >>>           "phy",
> > > >>>   };
> > > >>>
> > > >>> +static const struct qmp_combo_offsets qmp_combo_offsets_v3 = {
> > > >>> + .com            = 0x0000,
> > > >>> + .txa            = 0x1200,
> > > >>> + .rxa            = 0x1400,
> > > >>> + .txb            = 0x1600,
> > > >>> + .rxb            = 0x1800,
> > > >>> + .usb3_serdes    = 0x1000,
> > > >>> + .usb3_pcs_misc  = 0x1a00,
> > > >>> + .usb3_pcs       = 0x1c00,
> > > >>> + .dp_serdes      = 0x1000,
> > > >>
> > > >> I would have expected this to be 0x2000 as that's what the older
> > > >> platforms have been using for the dp serdes table so far. Without access
> > > >> to any documentation it's hard to tell whether everyone's just been
> > > >> cargo-culting all along or if there's actually something there at offset
> > > >> 0x2000.
> > >
> > > usb3_serdes is 0x1000, so dp_serdes equal to 0x1000 is definitely an typo.
> > >
> > > Judging from the downstream dtsi, the DP PHY starts at offset 0x2000. So
> > > dp_serdes is equal to 0x2000, dp_phy = 0x2a00, ln_tx1 = 0x2200, ln_tx2 =
> > > 0x2600.
> >
> > Can you share how you got to the 0x2000 offset? You can see my
> > (potentially wrong) reasoning for 0x1000 a few messages ago[0].
> >
> > The only 0x2000-something I could find now while looking at it again is
> > "#define USB3_DP_PHY_DP_DP_PHY_PD_CTL 0x2a18" which becomes
> > USB3_DP_DP_PHY_PD_CTL in the driver but this is seemingly not used at
> > all in my msm-4.19 tree.
>
> Quite simple: see [1]. DP_PLL is at +0x2000
>
> [1] https://android.googlesource.com/kernel/msm-extra/devicetree/+/refs/heads/android-msm-bramble-4.19-android11-qpr1/qcom/lagoon-sde-pll.dtsi#27

I still disagree from what I see.

E.g. this part of the dp_serdes init table in mainline:

static const struct qmp_phy_init_tbl qmp_v3_dp_serdes_tbl_rbr[] = {
	QMP_PHY_INIT_CFG(QSERDES_V3_COM_HSCLK_SEL, 0x0c),

With this one:
#define QSERDES_V3_COM_HSCLK_SEL                     0x13c

To write this config qmp->dp_serdes gets used which is set at:
	qmp->dp_serdes = base + offs->dp_serdes;

So if offs->dp_serdes is 0x2000, this write will go to 0x213c.

If we go back to msm-4.19 downstream the equivalent define is
#define USB3_DP_QSERDES_COM_HSCLK_SEL				0x113c

So there we are at offset 0x1000. And this define is used in
qcom,qmp-phy-init-seq which I already went to in detail in a previous
email in this thread.

>
> Anyway, having DP serdes at the space as USB3 serdes would mean that
> one would be setting USB3 PLL when trying to enable DP. So I could
> have said even w/o looking at the dtsi that dp serdes can _not_ be at
> 0x1000.

I don't know enough about these PHY/DP/etc blocks to say anything there.

>
> >
> > Also if you have any idea on how to test it at runtime without actually
> > having to get all the type-C functionality up I'd be happy to try that.
> > Unfortunately I believe there's still quite some bits missing to
> > actually get DP out via the USB-C port - which I imagine would trigger
> > the PHY setup.
>
> Unfortunately, I don't have a recipe to test this.

No worries :)

Regards
Luca

>
> >
> > [0] https://lore.kernel.org/linux-arm-msm/CPDIYQ3SSY3E.I0Y0NMIED0WO@otso/
> >
> > Regards
> > Luca
>
>
> -- 
> With best wishes
> Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
