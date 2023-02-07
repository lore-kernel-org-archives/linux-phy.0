Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F257C636CC
	for <linux-phy@archiver.kernel.org>; Tue,  7 Feb 2023 11:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tRQ/G5a4hbaRH5e1HQc6PaoRJuiOv8p1QI4vQSOruwg=; b=d4YT3W0V3TOgnK
	ONo5TJGXl0NAItR1iFCcabWe6SYOf4uO+ACfrJsNWbfuxOI4MXhmdPRox7O55KqYZ/ns4FG6svURr
	EjcrDu05KxX7q64v3/aVBB5Bm4Qn1P8JqL7dcX71IgcQa4CJDwsG6h5tGprxfGwU0HqSWX27b9iaq
	7byUoxypG3KrxfPySFgQNULH4Mg7fc7qmfqkGqix3w7GjXlV+l+2g9vnml8S7cWI5wjjzuNIPF0bu
	/dgYk7S+VTFQIVaOiytLwS9V2uBXf92WFwTeCpcWq0m7QCh4DO4yh7D/wFu+GgKWFxs9Sfw4/COE0
	gleX79nY2+1WMHWNMaFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPLl7-00BrnI-0W; Tue, 07 Feb 2023 11:03:33 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPLl3-00BrmK-RR
	for linux-phy@lists.infradead.org; Tue, 07 Feb 2023 11:03:31 +0000
Received: by mail-wm1-x329.google.com with SMTP id q8so10741415wmo.5
        for <linux-phy@lists.infradead.org>; Tue, 07 Feb 2023 03:03:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WJ93a5Pn7pV9qf9vPyQI+os80WkoEdvC0T6foUnk8Mg=;
        b=INmIU2NouIzVm1jjPfdrm53AB5JjOg8/iz3jZE+fI1b7pLAYBvKC7TMLsXvXEmMnZQ
         tvcX16TPZzl8SlvyqiF5TxNKUMYyM5yxTebfEAX2rlWAA+HUitsAujtgmlJ4a0OcbvKp
         8E5zmSXqfdwXT0d4KY3ZDO9k4vXuXxN9PyBOyRPm+3wnJPCfpXAh5V/4V8UB4b9tOHuU
         K7pSJDwrBk41FSY187xils4uDkG/6SBfJQGcBUbIf4WTIakcMUO5FDDxVvwxRqszTNr5
         oK/eoxuZQpvWPGGUUZgVSbTt9YU2fw93GINQrZoiQBQZRluPERuKlrOsol0IIiu+xtLd
         k0pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WJ93a5Pn7pV9qf9vPyQI+os80WkoEdvC0T6foUnk8Mg=;
        b=RH08WUGlGiX4PgDndF4onzcCBfSnqTXkCnnpQkxGqeQkgmPdAlvDoC9NhNoyzijhKi
         mCEPKsPP+2mssoYKqo2212X2h3rqlP2DCWnuYN+ucqWSqeGOcXu4xYMCAPfpwbuH0pPB
         080KT9d3IRYQEKyyTPNdZW0rJzIIsAyuvOokan7mz/0MUxt50YwR7RX+f8HTuPWK4uWd
         G2iYTlx/NFCoKdGNrIo0Xh4jVFlIQmDnzcYBWBPmogcFOysIGXXXMpyj3asaM7HulC0X
         hT/fYVbFWkKenXR6NyAae1ex9PFs8zsMC2GCGvxjDQbDTNaTXu0f1c5sacln/ODeMkML
         5zGA==
X-Gm-Message-State: AO0yUKUOL/fFOFvyEJc+AkRWtcb1ghElwdgm2U9YoHoImBjZ2pQANrvQ
	HU0kxj3bmZkFimF79QpbbOUtpw==
X-Google-Smtp-Source: AK7set+9m5mhPHjw7qowGtSxwYkGbks55ol9xKSpV7ArSxwhymRP73uRItp25IcvPAhrZonE5E9JbA==
X-Received: by 2002:a05:600c:4da2:b0:3dc:51f6:8f58 with SMTP id v34-20020a05600c4da200b003dc51f68f58mr2766884wmp.6.1675767808312;
        Tue, 07 Feb 2023 03:03:28 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id s22-20020a1cf216000000b003dffe312925sm6761960wmc.15.2023.02.07.03.03.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 03:03:27 -0800 (PST)
Date: Tue, 7 Feb 2023 13:03:26 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 7/8] arm64: dts: qcom: sm8550: Add USB PHYs and
 controller nodes
Message-ID: <Y+Iv/s7V5PYkRI8D@linaro.org>
References: <20230202132511.3983095-1-abel.vesa@linaro.org>
 <20230202132511.3983095-8-abel.vesa@linaro.org>
 <Y9zoD/eVG8zjMYNx@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y9zoD/eVG8zjMYNx@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_030329_908110_50D17967 
X-CRM114-Status: GOOD (  20.79  )
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

On 23-02-03 11:55:11, Johan Hovold wrote:
> On Thu, Feb 02, 2023 at 03:25:10PM +0200, Abel Vesa wrote:
> > Add USB host controller and PHY nodes.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> > 
> > Changes since v3:
> >  * none
> > 
> > Changes since v2:
> >  * none
> > 
> > NOTE: This patch has been already merged. It is here only to provide
> > context for the rest of the patchset. There is a change with respect to
> > the clocks, but that will be sent as a separate/individual fix patch.
> 
> I believe it was because of the 'phy' and 'common' resets, which have
> been switched below.

No, the resets haven't been switched, at least not compared to the
already merged version.

> 
> >  arch/arm64/boot/dts/qcom/sm8550.dtsi | 92 +++++++++++++++++++++++++++-
> >  1 file changed, 91 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > index a85d2ae7d155..0262193e2ffe 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > @@ -14,6 +14,7 @@
> >  #include <dt-bindings/mailbox/qcom-ipcc.h>
> >  #include <dt-bindings/power/qcom-rpmpd.h>
> >  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
> > +#include <dt-bindings/phy/phy-qcom-qmp.h>
> >  #include <dt-bindings/thermal/thermal.h>
> >  
> >  / {
> > @@ -746,7 +747,7 @@ gcc: clock-controller@100000 {
> >  				 <&ufs_mem_phy 0>,
> >  				 <&ufs_mem_phy 1>,
> >  				 <&ufs_mem_phy 2>,
> > -				 <0>;
> > +				 <&usb_dp_qmpphy QMP_USB43DP_USB3_PIPE_CLK>;
> >  		};
> >  
> >  		ipcc: mailbox@408000 {
> > @@ -2060,6 +2061,95 @@ opp-202000000 {
> >  			};
> >  		};
> >  
> > +		usb_1_hsphy: phy@88e3000 {
> > +			compatible = "qcom,sm8550-snps-eusb2-phy";
> > +			reg = <0x0 0x088e3000 0x0 0x154>;
> > +			#phy-cells = <0>;
> > +
> > +			clocks = <&tcsr TCSR_USB2_CLKREF_EN>;
> > +			clock-names = "ref";
> > +
> > +			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
> > +
> > +			status = "disabled";
> > +		};
> > +
> > +		usb_dp_qmpphy: phy@88e8000 {
> > +			compatible = "qcom,sm8550-qmp-usb3-dp-phy";
> > +			reg = <0x0 0x088e8000 0x0 0x3000>;
> > +
> > +			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
> > +				 <&rpmhcc RPMH_CXO_CLK>,
> > +				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> > +				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> > +			clock-names = "aux", "ref", "com_aux", "usb3_pipe";
> > +
> > +			power-domains = <&gcc USB3_PHY_GDSC>;
> > +
> > +			resets = <&gcc GCC_USB3_DP_PHY_PRIM_BCR>,
> > +				 <&gcc GCC_USB3_PHY_PRIM_BCR>;
> > +			reset-names = "phy", "common";
> > +
> > +			#clock-cells = <1>;
> > +			#phy-cells = <1>;
> > +
> > +			status = "disabled";
> > +		};
> 
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
