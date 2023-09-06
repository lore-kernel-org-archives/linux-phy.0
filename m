Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B342FEB8FAF
	for <linux-phy@archiver.kernel.org>; Wed,  6 Sep 2023 05:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=87iKlGxg5CDEtaDWX7FgV6ECF8J8vIlFs4mbYo9fWpU=; b=JD9XbHOK8RvlGv
	vchLPj1hMbiqa9HkIhoMk+d6anZCjUMHp4UNnnlfc99A0lD98q6lc3iRJxlDUqfMs12oM5sqi8fch
	pVVFF9VJdRpkgb/JEE0RxO59xmgLb94K2UxWLslPxVbfuCAnJbPIOlBTrkizJk1Tg9whS0vouJV4r
	dwsUCMg3S8UkSwJOOpvcGLu4hXAhG+CQPeiiWaloPH0EaERGliAZibTJI5uK20ZncBXROZxlttYh7
	Z/FxGMWMYEig5VozVUcRDp3BXhmcWSqyLAAv2qzxnYCcwWtN86+ryttCbXIQxNWWXHjEBCcUZFtVo
	HMDOslY/b4w6S6iLNWCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdlIL-007J5e-18;
	Wed, 06 Sep 2023 05:41:41 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdlII-007J5I-1C
	for linux-phy@lists.infradead.org;
	Wed, 06 Sep 2023 05:41:39 +0000
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-d77ad095f13so2469775276.2
        for <linux-phy@lists.infradead.org>; Tue, 05 Sep 2023 22:41:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693978897; x=1694583697; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=848Yrlbrn3zuIhwn1wjj9hZ6f3Wq+iwxUd4Va25dFlA=;
        b=iT9XBoRHfoax3qnERLF5c+nWC5QeU3af6xhd5912l3mS8LMCp4oRw7/DA93P9EHCAK
         /TZ51S9Ebfe0QCPajvApfb+Aw93tcrNU3GA5l6j0/djNuiJYfr7zApz3pKauV7ecS2XT
         m2f63qzeiBaGYJCqkTiwz0UcctyNquwhrfWFcJo0cPrfTXWLdslMXI9rFJ4BDCRVX/Cn
         ZRPboAkK7qJLCkshJVPkvRU1LmFWnib+6LbLHI1r3iB4U9yoww2K415vJzFV9AK8gVjM
         C2lKMprBfv0rbmRTA/pWL/4EVRQN0/NgWVWBcKSXO3/muzRjWdjAXFW+cvUnxrArK5RG
         mOuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693978897; x=1694583697;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=848Yrlbrn3zuIhwn1wjj9hZ6f3Wq+iwxUd4Va25dFlA=;
        b=afCCPyTXlzoRM1zAHvBCtiiA0CPz/VS9zJwd0k5GmcfqA5iJwKTKdSD/Ou2gqLjIOC
         ilOGRPjZStousf6Xh2qcqSgXMRDQVr/OG1upVloEmTPWd8/E0+Bna+eYv/bA9BEUfNhj
         ZyOLgAbhCFL+y4QaJ1WQAXCWEiscpOrWnVeEnlqOmK+kXtgIWqZWUzXHtz26OYyhbFwu
         OI9LnIvcG7Spnp7WqDR6vjNg/hn+Rsr1Rk+URxlc8lKXdM/vZDsL0Osy64neMSDHTDjX
         ME1WZDCXz9sD0wGxmxDgKVII31MghQ2FCGhjJAwkTP9onJC5pKhMfpMqFapqUwVHVRsX
         LwNA==
X-Gm-Message-State: AOJu0YwWMyLCYQ2uvvk1fM9THPSbESL2H6Htn7uTiiMsdG1eq9HkNyO8
	fcq89zOBfQjyjzz1LKmKE7sqGbWCOlLPR9mPldQzmw==
X-Google-Smtp-Source: AGHT+IEp7u7PxVnFYoBuUpVIZhrA9XdvWG3pmhHSaNZy5pGYSfonmCi7U45WvDqyuJfiK9WMmFqrkn927tIhzrbY9zw=
X-Received: by 2002:a05:6902:120e:b0:d74:66aa:a277 with SMTP id
 s14-20020a056902120e00b00d7466aaa277mr17965799ybu.65.1693978897644; Tue, 05
 Sep 2023 22:41:37 -0700 (PDT)
MIME-Version: 1.0
References: <1693909838-6682-1-git-send-email-quic_rohiagar@quicinc.com>
 <1693909838-6682-6-git-send-email-quic_rohiagar@quicinc.com>
 <8aefd8f9-cfe9-4011-a24b-ebb13d28faa0@linaro.org> <0d76f851-ef7a-2d09-a344-9ec31ba581a5@quicinc.com>
In-Reply-To: <0d76f851-ef7a-2d09-a344-9ec31ba581a5@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 6 Sep 2023 08:41:26 +0300
Message-ID: <CAA8EJprS3vxQbOGZnsipRGi4MiyZj3X5HpMan3Q6Z732aWfJ_g@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] phy: qcom-qmp-usb: Add Qualcomm SDX75 USB3 PHY support
To: Rohit Agarwal <quic_rohiagar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, abel.vesa@linaro.org, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, kernel@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_224138_440006_BA0ADB5D 
X-CRM114-Status: GOOD (  22.02  )
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

On Wed, 6 Sept 2023 at 08:35, Rohit Agarwal <quic_rohiagar@quicinc.com> wrote:
>
>
> On 9/6/2023 2:08 AM, Dmitry Baryshkov wrote:
> > On 05/09/2023 13:30, Rohit Agarwal wrote:
> >> Add support for USB3 QMP PHY found in SDX75 platform.
> >>
> >> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> >> ---
> >>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 158
> >> ++++++++++++++++++++++++++++++++
> >>   1 file changed, 158 insertions(+)
> >>
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> >> b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> >> index 0130bb8..57b8b5b 100644
> >> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> >> @@ -23,6 +23,7 @@
> >>   #include "phy-qcom-qmp-pcs-misc-v3.h"
> >>   #include "phy-qcom-qmp-pcs-usb-v4.h"
> >>   #include "phy-qcom-qmp-pcs-usb-v5.h"
> >> +#include "phy-qcom-qmp-pcs-usb-v6.h"
> >>     /* QPHY_SW_RESET bit */
> >>   #define SW_RESET                BIT(0)
> >> @@ -858,6 +859,134 @@ static const struct qmp_phy_init_tbl
> >> sdx65_usb3_uniphy_rx_tbl[] = {
> >
> > [skipped the tables]
> >
> >> @@ -1556,6 +1685,32 @@ static const struct qmp_phy_cfg
> >> sdx65_usb3_uniphy_cfg = {
> >>       .has_pwrdn_delay    = true,
> >>   };
> >>   +static const struct qmp_phy_cfg sdx75_usb3_uniphy_cfg = {
> >> +    .lanes            = 1,
> >> +    .offsets        = &qmp_usb_offsets_v5,
> >
> > v6?
> Since the offsets for v5 and v6 are same, I did not introduce a new
> struct with the same values.
> Please correct me if I have to introduce v6 offsets.

If the offsets are the same, it's fine to leave at v5.

> >
> >> +
> >> +    .serdes_tbl        = sdx75_usb3_uniphy_serdes_tbl,
> >> +    .serdes_tbl_num        = ARRAY_SIZE(sdx75_usb3_uniphy_serdes_tbl),
> >> +    .tx_tbl            = sdx75_usb3_uniphy_tx_tbl,
> >> +    .tx_tbl_num        = ARRAY_SIZE(sdx75_usb3_uniphy_tx_tbl),
> >> +    .rx_tbl            = sdx75_usb3_uniphy_rx_tbl,
> >> +    .rx_tbl_num        = ARRAY_SIZE(sdx75_usb3_uniphy_rx_tbl),
> >> +    .pcs_tbl        = sdx75_usb3_uniphy_pcs_tbl,
> >> +    .pcs_tbl_num        = ARRAY_SIZE(sdx75_usb3_uniphy_pcs_tbl),
> >> +    .pcs_usb_tbl        = sdx75_usb3_uniphy_pcs_usb_tbl,
> >> +    .pcs_usb_tbl_num    = ARRAY_SIZE(sdx75_usb3_uniphy_pcs_usb_tbl),
> >> +    .clk_list        = qmp_v4_sdx55_usbphy_clk_l,
> >> +    .num_clks        = ARRAY_SIZE(qmp_v4_sdx55_usbphy_clk_l),
> >> +    .reset_list        = msm8996_usb3phy_reset_l,
> >> +    .num_resets        = ARRAY_SIZE(msm8996_usb3phy_reset_l),
> >
> > Clocks and resets are gone in
> > https://lore.kernel.org/linux-phy/20230824211952.1397699-1-dmitry.baryshkov@linaro.org/
> >
> Sure.
> >> +    .vreg_list        = qmp_phy_vreg_l,
> >> +    .num_vregs        = ARRAY_SIZE(qmp_phy_vreg_l),
> >> +    .regs            = qmp_v5_usb3phy_regs_layout,
> >
> > This must be v6, if the rest of the PHY is using v6 register names.
> Same, Shall I introduce v6 struct?

Yes. Otherwise it becomes hard to add offsets for different versions.
Generic rule: the name of the struct should match the Vn found in the
register names inside.

>
> Thanks,
> Rohit.
> >
> >> +    .pcs_usb_offset        = 0x1000,
> >> +
> >> +    .has_pwrdn_delay    = true,
> >> +};
> >> +
> >>   static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
> >>       .lanes            = 1,
> >>   @@ -2256,6 +2411,9 @@ static const struct of_device_id
> >> qmp_usb_of_match_table[] = {
> >>           .compatible = "qcom,sdx65-qmp-usb3-uni-phy",
> >>           .data = &sdx65_usb3_uniphy_cfg,
> >>       }, {
> >> +        .compatible = "qcom,sdx75-qmp-usb3-uni-phy",
> >> +        .data = &sdx75_usb3_uniphy_cfg,
> >> +    }, {
> >>           .compatible = "qcom,sm6115-qmp-usb3-phy",
> >>           .data = &qcm2290_usb3phy_cfg,
> >>       }, {
> >



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
