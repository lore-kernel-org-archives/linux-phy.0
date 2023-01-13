Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B60A4C54EBE
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 12:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nWdc15X+9jdLvfdB8Y+TAQ+CLRRQ1IgWuWx2QGT8/WQ=; b=YwmcFgwbOaqS5+
	thinFVxsIbmoGKXgpCZ+O6UlBWnCO0mLKS9LDs+cdGpQvRr8q5/o/Bbi+FQaUi4YwL/M2kT/ummd7
	OmHP3jpn+1s5Efr/137BE8ZP14U14HbIOS0ZGIHCWSLa4wBJcVNv7715/l3dcwtLkRq/vgVZzNGzx
	giGS9xcS1pr8d3Mg3MeA6c7Et8FDtGPlKRw5V3NCuWZHfMbGmrrNVbYDQ8Qa/RjQEKjaeUIJqZQ9J
	r11vIdOw1j9CWKKNdw7OHd6rsQOdnecynZhDkglEk03JXi2UT1dO4snIGkygTAmbWARvnh1APx8TQ
	ZN67bbjubw9frgUmiaGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGJQJ-002bMk-40; Fri, 13 Jan 2023 12:44:43 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGJQF-002bKX-Kr
	for linux-phy@lists.infradead.org; Fri, 13 Jan 2023 12:44:41 +0000
Received: by mail-ej1-x632.google.com with SMTP id tz12so52068443ejc.9
        for <linux-phy@lists.infradead.org>; Fri, 13 Jan 2023 04:44:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8OOC27K7Y2ptjYPzn9J84UKXhXNaGs+2+3QP8eAlxaY=;
        b=pUA1nJpe3s3/r+1jR/HvDxL86lB35wsDaplQQAp76H6FzBPa7EZIWA82FYqfkw/0M9
         CiC6cJVzRtUBbFyQ67LeiKzQDQQJtY/YnoC3tSDieBHH0IPnp1B1wKAKeLJAbEhqVbSF
         nsmqi32z3hjRFtKNGSJiMCaiAHPhrwPySsulklkIJeMTDMbOMfaMK39XkVai/IW6/nDk
         6+xspbv718zPXAdILY7m6G9/SrNBsaUFDlZG30CeqDjHa5i1Sgv2bCJwywd3LmgH/oTU
         VpRanzfBvGKm040l65LUvwwtxjMlnS+Vy9Nr0B7Chdrd1GocUt6R5nVzI3b4g0xY+g6U
         R7aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8OOC27K7Y2ptjYPzn9J84UKXhXNaGs+2+3QP8eAlxaY=;
        b=yuMhNNTS2KXDAmzBkUco8Xpa6xMxrAgb0/B9gaz4f2EH2wfoA76t/mu4tE5ibkF5ts
         cFpd3pzr8u+qGcGXrBb8v7EUCMc2oRV4E3BpmbbTOF3k4gzh3roLG9HefXpOwTMRJc9k
         th5McGORTm9TqsOmGT+QHArVeZX/nTtKDAwJ8+C6cBc/vVGFF42UOT5KUFOX2jPtHily
         WPPtS9Dtmx13sMUBmPIeZyw/8+bzV1FsG8JrHsQolZxUQ3CNr8ge63V3zYeLV6r88r4U
         TKkRpbhfY+MPIEM+xMIifLoKH9mW5LG6ZEnOEcd8YTu5H8ZhRUO2qlrtZuwouJXuaudQ
         i8wQ==
X-Gm-Message-State: AFqh2koT+EdHhIi77NBOVphoKVPJWf0C6U0bhfw1Y2FY/lu5yVjezGVI
	x4U7Kqf9PY3Kw+v/DmqLicr9xw==
X-Google-Smtp-Source: AMrXdXuox8jSaU89IemSpCgGuF+ll4JguwINiL4epNVqWhEbZZEIWdgixPDtTiIYIAQIxUAntpWlUw==
X-Received: by 2002:a17:907:10d0:b0:85e:f910:71b6 with SMTP id rv16-20020a17090710d000b0085ef91071b6mr9134132ejb.51.1673613875663;
        Fri, 13 Jan 2023 04:44:35 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id k26-20020a508ada000000b00487fc51c532sm8369038edk.33.2023.01.13.04.44.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jan 2023 04:44:35 -0800 (PST)
Mime-Version: 1.0
Date: Fri, 13 Jan 2023 13:44:34 +0100
Message-Id: <CPR2LS3SJQ3I.Z7UY505COG3@otso>
Cc: <linux-arm-msm@vger.kernel.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 "Andy Gross" <agross@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>,
 "Konrad Dybcio" <konrad.dybcio@linaro.org>, "Kishon Vijay Abraham I"
 <kishon@kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 2/3] phy: qcom-qmp-combo: Add config for SM6350
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>, "Vinod Koul"
 <vkoul@kernel.org>, "Johan Hovold" <johan@kernel.org>
X-Mailer: aerc 0.14.0
References: <20221130081430.67831-1-luca.weiss@fairphone.com>
 <20221130081430.67831-2-luca.weiss@fairphone.com>
 <Y6xP4YRAp68TfxFi@hovoldconsulting.com> <Y8BIX+js1ircJyb9@matsya>
 <cf968a25-02f7-d402-530b-eb379b707e54@linaro.org>
In-Reply-To: <cf968a25-02f7-d402-530b-eb379b707e54@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_044439_986178_9B230497 
X-CRM114-Status: GOOD (  27.47  )
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

Hi Dmitry,

On Thu Jan 12, 2023 at 8:33 PM CET, Dmitry Baryshkov wrote:
> On 12/01/2023 19:50, Vinod Koul wrote:
> > On 28-12-22, 15:17, Johan Hovold wrote:
> >> Luca, Vinod,
> >>
> >> On Wed, Nov 30, 2022 at 09:14:28AM +0100, Luca Weiss wrote:
> >>> Add the tables and config for the combo phy found on SM6350.
> >>>
> >>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> >>> ---
> >>> Changes since v2:
> >>> * Drop dp_txa/dp_txb changes, not required
> >>> * Fix dp_dp_phy offset
> >>>
> >>>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 126 ++++++++++++++++++++++
> >>>   1 file changed, 126 insertions(+)
> >>>
> >>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> >>> index 77052c66cf70..6ac0c68269dc 100644
> >>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> >>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> >>
> >>> @@ -975,6 +1039,19 @@ static const char * const sc7180_usb3phy_reset_l[] = {
> >>>   	"phy",
> >>>   };
> >>>   
> >>> +static const struct qmp_combo_offsets qmp_combo_offsets_v3 = {
> >>> +	.com		= 0x0000,
> >>> +	.txa		= 0x1200,
> >>> +	.rxa		= 0x1400,
> >>> +	.txb		= 0x1600,
> >>> +	.rxb		= 0x1800,
> >>> +	.usb3_serdes	= 0x1000,
> >>> +	.usb3_pcs_misc	= 0x1a00,
> >>> +	.usb3_pcs	= 0x1c00,
> >>> +	.dp_serdes	= 0x1000,
> >>
> >> I would have expected this to be 0x2000 as that's what the older
> >> platforms have been using for the dp serdes table so far. Without access
> >> to any documentation it's hard to tell whether everyone's just been
> >> cargo-culting all along or if there's actually something there at offset
> >> 0x2000.
>
> usb3_serdes is 0x1000, so dp_serdes equal to 0x1000 is definitely an typo.
>
> Judging from the downstream dtsi, the DP PHY starts at offset 0x2000. So 
> dp_serdes is equal to 0x2000, dp_phy = 0x2a00, ln_tx1 = 0x2200, ln_tx2 = 
> 0x2600.

Can you share how you got to the 0x2000 offset? You can see my
(potentially wrong) reasoning for 0x1000 a few messages ago[0].

The only 0x2000-something I could find now while looking at it again is
"#define USB3_DP_PHY_DP_DP_PHY_PD_CTL 0x2a18" which becomes
USB3_DP_DP_PHY_PD_CTL in the driver but this is seemingly not used at
all in my msm-4.19 tree.

Also if you have any idea on how to test it at runtime without actually
having to get all the type-C functionality up I'd be happy to try that.
Unfortunately I believe there's still quite some bits missing to
actually get DP out via the USB-C port - which I imagine would trigger
the PHY setup.

[0] https://lore.kernel.org/linux-arm-msm/CPDIYQ3SSY3E.I0Y0NMIED0WO@otso/

Regards
Luca

>
> >>
> >> Vinod, could you shed some light on this as presumably you have access
> >> to some documentation?
> >>
> >>> +	.dp_dp_phy	= 0x2a00,
> > 
> > No sorry, I dont have access to this version...
> > 
>
> -- 
> With best wishes
> Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
