Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BD3AC43217
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 09:23:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2WvN4HyrUfIIb/zb3IqQIwxgpqMlmw0Skg5ZRzTMEmU=; b=hS/1ZYs3xztaiw
	TC2TuuP3bzTe2fKsZYZUmSGeENVYayre3snXvkfT2AXywNB/W3x0+SbSIMDDCz4qtqekP/bOR400P
	DEeHQchFHIEQsBfDcWtE21msIUGKqmxFoj+HNYmzC7KtRZwxsZDKB46NN+kGaE2v+yTz66CxlPN/A
	9sE3J1xhDUS2l6zBOW24KkfJgdVUjXQVgVqQd5QRGdNkUv7fUpShWvUE9LpAjI2WKW0QihEvqZjKO
	Rb4qjc2SQraE2jIK1ypvgD4+AoZpL/xRq+xp+uBkyueBHZlsvmS67MhqdYZ+vRuM5+QGWHLRrn5Kr
	LniDh1HOLAQ1fxvY1pIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouVgD-00HAjJ-Va; Mon, 14 Nov 2022 09:23:01 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouVgA-00HAhP-Tg
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 09:23:00 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-368edbc2c18so100099667b3.13
        for <linux-phy@lists.infradead.org>; Mon, 14 Nov 2022 01:22:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YTSPKqKmSzN7Y9ddQTOuim0BwGIV+0OUYKAM+OJAgxU=;
        b=FJ8f0IlKEyuFd9c7FRLCSKtPbw3QibehiiaGqUeq13/pnK5SBl1WAZuZCgYVpNe3k4
         nIFNx26dIzPHHJJMcAJJzbYkpBv9TRwhr8h3Nn85SVR1C4jOzcg9x4IyqLcQQCgUZRaf
         NEdfibo8iCzpRAWzKALEdeq3EuKnP5EKCDNi0FnghnveIVjSVLTcXsD8P19jRerKOAR0
         ifvE9S/xti3oOvKMN5soUdNK9kFamqamD42vr5Zvh0qwFkcRNsLKBvjMFYTdrdI+h4Qf
         0aA2LzoB96c8hAus+8eZ9UtahFBWs+oMBlK+zns8VlU6TeLfhiMzoR6lKDH7k4SaAl2W
         fA/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YTSPKqKmSzN7Y9ddQTOuim0BwGIV+0OUYKAM+OJAgxU=;
        b=6pMcuoVOOthb/d/QpVTse9c27HcA1q4EQPJLwxkmW9NTnugPXw7ZwY9Xgg0PyiSwWR
         dIvAl8cIaQMcuCUC8fUlmiEKGlzstDfjtd9RAKjaH0ki89+jgfM8vg9yBQQLylUnCMSY
         qs7SytfGVHDbxYkEVEkHg4D1HS1I3iOcs2yX0jmkfTGrXmOnEdEuEGmZbvpRa7XKdgkB
         /DIkhHyG/iIPtCZJIPH+wQgvGszx4j4Rte+j11fLSvrQS8VsHZ7k7NXgdJMM7+zEkHfP
         xeUv0KXNGaUAW+fiEmGrvFjpcobj2f4xkMqoMpGBFBzF1AkWTtw4HAe4R+hwag/rgK51
         +OwQ==
X-Gm-Message-State: ANoB5pkpKHVmsllhTat3DTdwvgs52M8b4Uh1j1nQPSvhxMAHPNM6qiIK
	wXLfq0IlqGuLfY4Jhg57PPXjhM2W+Rdo76Cubm0uRerhPSw=
X-Google-Smtp-Source: AA0mqf6Eb3N3yWA9GPPGTDup7DI7EWbsnHCkjc6p+IN70Fp46vORCtD3Crhhj/Vg7Sc8Pa8MQ7wdH5SW7I+84etan38=
X-Received: by 2002:a81:9297:0:b0:370:547a:9d03 with SMTP id
 j145-20020a819297000000b00370547a9d03mr12582358ywg.132.1668417774745; Mon, 14
 Nov 2022 01:22:54 -0800 (PST)
MIME-Version: 1.0
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-19-johan+linaro@kernel.org> <54d3d1b4-29de-4d18-a39e-bf74a5c61509@linaro.org>
 <Y3ID+jTI4Bf6wvh2@hovoldconsulting.com>
In-Reply-To: <Y3ID+jTI4Bf6wvh2@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 14 Nov 2022 12:22:43 +0300
Message-ID: <CAA8EJpqbrefwFxsudjm=-P8xYSg2Q5tXkvjOSKCt6qqbO5ubPg@mail.gmail.com>
Subject: Re: [PATCH 18/22] phy: qcom-qmp-combo: merge driver data
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_012258_984791_2EDDE3EE 
X-CRM114-Status: GOOD (  24.47  )
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

On Mon, 14 Nov 2022 at 12:02, Johan Hovold <johan@kernel.org> wrote:
>
> On Sat, Nov 12, 2022 at 10:46:53AM +0300, Dmitry Baryshkov wrote:
> > On 11/11/2022 11:56, Johan Hovold wrote:
> > > The QMP combo driver manages a single PHY (even if it provides two
> > > interfaces for USB and DP, respectively) so merge the old qcom_qmp and
> > > qmp_phy structures and drop the PHY array.
> > >
> > > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > > ---
> > >   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 690 ++++++++++------------
> > >   1 file changed, 313 insertions(+), 377 deletions(-)
> > >
>
> > > -/**
> > > - * struct qmp_phy - per-lane phy descriptor
> > > - *
> > > - * @phy: generic phy
> > > - * @cfg: phy specific configuration
> > > - * @serdes: iomapped memory space for phy's serdes (i.e. PLL)
> > > - * @tx: iomapped memory space for lane's tx
> > > - * @rx: iomapped memory space for lane's rx
> > > - * @pcs: iomapped memory space for lane's pcs
> > > - * @tx2: iomapped memory space for second lane's tx (in dual lane PHYs)
> > > - * @rx2: iomapped memory space for second lane's rx (in dual lane PHYs)
> > > - * @pcs_misc: iomapped memory space for lane's pcs_misc
> > > - * @pcs_usb: iomapped memory space for lane's pcs_usb
> > > - * @pipe_clk: pipe clock
> > > - * @qmp: QMP phy to which this lane belongs
> > > - * @mode: current PHY mode
> > > - * @dp_aux_cfg: Display port aux config
> > > - * @dp_opts: Display port optional config
> > > - * @dp_clks: Display port clocks
> > > - */
> > > -struct qmp_phy {
> > > -   struct phy *phy;
> > > +struct qmp_phy_dp_clks {
> > > +   struct qmp_combo *qmp;
> > > +   struct clk_hw dp_link_hw;
> > > +   struct clk_hw dp_pixel_hw;
> > > +};
> > > +
> >
> > It would make sense to keep the kerneldoc here.
>
> I disagree. The above kernel doc is at best pointless and mostly just
> restates what can be understood from the field names.

Well, if viewed this way, 80% of kerneldocs's are pointless, as most
of the fields are self-describing.
In this case I can agree with you though. Especially since the struct
is not a part of the public API.

>
> Note how it also incorrect by referring to "memory space for *lane's*

I assumed that `lane's rx' and `lane's tx' were ugly wording. But yeah.

> ...".
>
> > > +struct qmp_combo {
> > > +   struct device *dev;
> > > +
> > >     const struct qmp_phy_cfg *cfg;
> > > +
> > > +   void __iomem *dp_com;
> > > +
> > >     void __iomem *serdes;
> > >     void __iomem *tx;
> > >     void __iomem *rx;
> > > @@ -899,59 +889,33 @@ struct qmp_phy {
> > >     void __iomem *dp_pcs;
> > >
> > >     struct clk *pipe_clk;
> > > -   struct qcom_qmp *qmp;
> > > -   enum phy_mode mode;
> > > -   unsigned int dp_aux_cfg;
> > > -   struct phy_configure_opts_dp dp_opts;
> > > -   struct qmp_phy_dp_clks *dp_clks;
> > > -};
> > > -
> > > -struct qmp_phy_dp_clks {
> > > -   struct qmp_phy *qphy;
> > > -   struct clk_hw dp_link_hw;
> > > -   struct clk_hw dp_pixel_hw;
> > > -};
> > > -
> > > -/**
> > > - * struct qcom_qmp - structure holding QMP phy block attributes
> > > - *
> > > - * @dev: device
> > > - * @dp_com: iomapped memory space for phy's dp_com control block
> > > - *
> > > - * @clks: array of clocks required by phy
> > > - * @resets: array of resets required by phy
> > > - * @vregs: regulator supplies bulk data
> > > - *
> > > - * @phys: array of per-lane phy descriptors
> > > - * @phy_mutex: mutex lock for PHY common block initialization
> > > - * @init_count: phy common block initialization count
> > > - */
> > > -struct qcom_qmp {
> > > -   struct device *dev;
> > > -   void __iomem *dp_com;
> > > -
> > >     struct clk_bulk_data *clks;
> > >     struct reset_control_bulk_data *resets;
> > >     struct regulator_bulk_data *vregs;
> > >
> > > -   struct qmp_phy **phys;
> > > -   struct qmp_phy *usb_phy;
> > > -
> > >     struct mutex phy_mutex;
> > >     int init_count;
> > > +
> > > +   struct phy *usb_phy;
> > > +   enum phy_mode mode;
> > > +
> > > +   struct phy *dp_phy;
> > > +   unsigned int dp_aux_cfg;
> > > +   struct phy_configure_opts_dp dp_opts;
> > > +   struct qmp_phy_dp_clks *dp_clks;
> > >   };
> > >
> > > -static void qcom_qmp_v3_phy_dp_aux_init(struct qmp_phy *qphy);
> > > -static void qcom_qmp_v3_phy_configure_dp_tx(struct qmp_phy *qphy);
> > > -static int qcom_qmp_v3_phy_configure_dp_phy(struct qmp_phy *qphy);
> > > -static int qcom_qmp_v3_dp_phy_calibrate(struct qmp_phy *qphy);
> > > +static void qcom_qmp_v3_phy_dp_aux_init(struct qmp_combo *qmp);
> > > +static void qcom_qmp_v3_phy_configure_dp_tx(struct qmp_combo *qmp);
> > > +static int qcom_qmp_v3_phy_configure_dp_phy(struct qmp_combo *qmp);
> > > +static int qcom_qmp_v3_dp_phy_calibrate(struct qmp_combo *qmp);
> > >
> > > -static void qcom_qmp_v4_phy_dp_aux_init(struct qmp_phy *qphy);
> > > -static void qcom_qmp_v4_phy_configure_dp_tx(struct qmp_phy *qphy);
> > > -static int qcom_qmp_v4_phy_configure_dp_phy(struct qmp_phy *qphy);
> > > -static int qcom_qmp_v4_dp_phy_calibrate(struct qmp_phy *qphy);
> > > +static void qcom_qmp_v4_phy_dp_aux_init(struct qmp_combo *qmp);
> > > +static void qcom_qmp_v4_phy_configure_dp_tx(struct qmp_combo *qmp);
> > > +static int qcom_qmp_v4_phy_configure_dp_phy(struct qmp_combo *qmp);
> > > +static int qcom_qmp_v4_dp_phy_calibrate(struct qmp_combo *qmp);
> > >
> > > -static int qcom_qmp_v5_phy_configure_dp_phy(struct qmp_phy *qphy);
> > > +static int qcom_qmp_v5_phy_configure_dp_phy(struct qmp_combo *qmp);
> >
> >
> > As you are doing the cleanup anyway, would it make sense to move these
> > functions up to be able to drop these prototypes?
>
> Nah, we want to keep the DP implementation together and for now the
> configuration structs live at the top of the file.
>
> > >
> > >   static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
> > >   {
> > > @@ -1265,11 +1229,11 @@ static void qmp_combo_configure(void __iomem *base,
> >
> >
> > The rest LGTM
>
> Thanks for reviewing all of these these.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
