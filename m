Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 986D2C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 14 Mar 2022 03:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AnUtWmd1K5PdGJiVTaPt2xbNg3MPJ5S0G1MS+6d4OXw=; b=TYXPghavA7dML4
	L6E6pYsr0UNsnFwhZs63P3j8EPaILdGaEjklTM8o+RVOFcWogZYbOUof2x9lk4zaXtEhH1MC3S9KB
	SBUGQtOaJ0SyTeGN/GrkotzvI/t5qvJwfTuqGHFGrhzRpdougz4eTMgOdpJ3hzsT7aG0lmz+7fmu+
	Oe1I6KhQ5mO8FoWOoN5eXzUCorcM5A9E8JHgHIvFcq3VmiP2j+D6yrdNIXPLpHfG+ZQTGHYs/uIG2
	AA0YEfubf9HboV+HrlkTLgT8PHD4xu2V1Sbr04sOs9G5V3vDzd+l0vnAQrNd2c71aXtROIBeN7+yd
	mOtpfOi4KqVEVxgzjhUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTbPN-003j7k-2Y; Mon, 14 Mar 2022 03:30:09 +0000
Received: from alexa-out-sd-01.qualcomm.com ([199.106.114.38])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTbPK-003j6E-0K
 for linux-phy@lists.infradead.org; Mon, 14 Mar 2022 03:30:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1647228605; x=1678764605;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=cTigVYPVCkuHRdanPQILHhd3eQaHPFWGn2HDxmows44=;
 b=hpH4boCbNp99g6TatCf08IeoX4wR+xUppAea29sMTASfmp2HTb+F3R8j
 xYSh6e3Y/v4TThJXsG/T/1Du8GicDgkzb/sCoty8E1Gt4iQL4lzavZV4o
 xN6tPqbsKcdLouA7rUZ17DSpzgjs3hQRHBlqt2bNtBAdKeeTECem6obJ3 Y=;
Received: from unknown (HELO ironmsg02-sd.qualcomm.com) ([10.53.140.142])
 by alexa-out-sd-01.qualcomm.com with ESMTP; 13 Mar 2022 20:30:04 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg02-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2022 20:30:03 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Sun, 13 Mar 2022 20:30:02 -0700
Received: from hu-pkondeti-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Sun, 13 Mar 2022 20:29:56 -0700
Date: Mon, 14 Mar 2022 08:59:52 +0530
From: Pavan Kondeti <quic_pkondeti@quicinc.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
CC: Sandeep Maheswaram <quic_c_sanm@quicinc.com>, Rob Herring
 <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>, "Vinod
 Koul" <vkoul@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <wcheng@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>,
 Doug Anderson <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
 <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-usb@vger.kernel.org>, <quic_pkondeti@quicinc.com>,
 <quic_ppratap@quicinc.com>, <quic_kriskura@quicinc.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom, usb-snps-femto-v2: Add phy
 override params bindings
Message-ID: <20220314032952.GA27561@hu-pkondeti-hyd.qualcomm.com>
References: <1646288011-32242-1-git-send-email-quic_c_sanm@quicinc.com>
 <1646288011-32242-2-git-send-email-quic_c_sanm@quicinc.com>
 <b793195b-1d3d-63b2-19d2-72ae2aec8c0f@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b793195b-1d3d-63b2-19d2-72ae2aec8c0f@canonical.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220313_203006_131060_37720098 
X-CRM114-Status: GOOD (  25.98  )
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

Hi Krzysztof,

On Thu, Mar 03, 2022 at 04:59:22PM +0100, Krzysztof Kozlowski wrote:
> On 03/03/2022 07:13, Sandeep Maheswaram wrote:
> > Add device tree bindings for SNPS phy tuning parameters.
> > 
> > Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> > ---
> >  .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 125 +++++++++++++++++++++
> >  1 file changed, 125 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> > index 0dfe691..227c097 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> > @@ -50,6 +50,131 @@ properties:
> >    vdda33-supply:
> >      description: phandle to the regulator 3.3V supply node.
> >  
> > +  qcom,hs-disconnect:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      This adjusts the voltage level for the threshold used to
> > +      detect a disconnect event at the host. Possible values are.
> 
> ':', instead of full stop.
> 
> > +      7 -> +21.56%
> > +      6 -> +17.43%
> > +      5 -> +13.32%
> > +      4 -> +9.73%
> > +      3 -> +6.3
> > +      2 -> +3.17%
> > +      1 -> 0, Design default%
> 
> Use "default:" instead. Here and in other places.
> 
> > +      0 -> -2.72%
> 
> In current form this should be an enum... but actually current form is
> wrong. You should not store register values in DT. What if next version
> of hardware has a different meaning of these values?
> 
> Instead, you should store here meaningful values, not register values.
> 

Thanks for the feedback.

The values in % really makes the tuning easy. People look at the eye diagram
and decided whether to increase/decrease the margin. The absolute values
may not be that useful. All we need is an "adjustment" here. The databook
it self does not give any absolute values.

I agree to the "enum" suggestion which we have been following for the
qusb2 driver already. 

The values have not changed in the last 5 years for this hardware block, so
defining enums for the % values would be really helpful. 

> 
> > +
> > +  qcom,squelch-detector:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      This adjusts the voltage level for the threshold used to
> > +      detect valid high-speed data. Possible values are
> > +      7-> -20.90%
> > +      6-> -15.60%
> > +      5-> -10.30%
> > +      4-> -5.30%
> > +      3-> 0, Design default%
> > +      2-> +5.30%
> > +      1-> +10.60%
> > +      0-> +15.90%
> > +
> > +  qcom,hs-amplitude:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      This adjusts the high-speed DC level voltage.
> > +      Possible values are
> > +      15-> +26.70%
> > +      14-> +24.30%
> > +      13-> +22.20%
> > +      12-> +20.00%
> > +      11-> +17.80%
> > +      10-> +15.60%
> > +      9-> +13.30%
> > +      8-> +11.10%
> > +      7-> +8.90%
> > +      6-> +6.50%
> > +      5-> +4.40%
> > +      4-> +2.30%
> > +      3-> 0, Design default%
> > +      2-> -2.20%
> > +      1-> -4.40%
> > +      0-> -6.60%
> > +
> > +  qcom,pre-emphasis-duration:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      This signal controls the duration for which the
> > +      HS pre-emphasis current is sourced onto DP<#> or DM<#>.
> > +      The HS Transmitter pre-emphasis duration is defined in terms of
> > +      unit amounts. One unit of pre-emphasis duration is approximately
> > +      650 ps and is defined as 1X pre-emphasis duration.
> > +      Possible values are
> > +      1-> 1x, short pre-emphasis current duration
> > +      0-> 2x, long pre-emphasis current duration
> 
> I could understand encoding of percentages in way of register value, but
> a boolean flag is too much.
> 

Agreed. This needs to be encoded in % as well (100% or 200%).

Thanks,
Pavan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
