Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3ED7C77B6C
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 09:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=axA6FCu0KH9M4JJkm0lAomPfR1EfSlTbs13/syDZWE8=; b=plYU2xKnnoU+NZ
	N5x2gwPav57L1riOnPr0+lO7YPPJCUzPXxaFTKRBwjFt8hhqsy3REUg3HOGBSCDJdulHuFoPMEvjP
	Bv4StDdyliXKukvJZUNPPiUX6pwBz5Wq+GMd1h4cfGML+DCtFpW/TK+oDh1xID3L2PnXlO+Iok9p1
	goAxZvKi2KuMbghVXTGKWxm3rTlnJg4htUTkkVG7Mb+6Z6y0HABnB8pZXZwyEj13lpkZbXa5OuIaU
	aFqkVZDBa5WGkiUXpwzi6mPs102ymlhiUXgyA8+P8UJH4R275ncjubjGxCVvkO/gYG88Xkegc57sp
	Upd4xsO1QDWrQazNVuIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjzA4-003u0O-1C;
	Wed, 05 Apr 2023 09:10:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjzA1-003tza-1O
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 09:10:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 43C68621BC;
	Wed,  5 Apr 2023 09:10:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76596C4339B;
	Wed,  5 Apr 2023 09:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680685831;
	bh=l5sX60iJEeJFjkbQM2H90cOtD2sNI6yhbFlyNek5as0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c5fuoR7XGt0dvomYiWEBhKEeQHabvQDQU0uohPQ8wFj7RAAMz7Kf7zfxFZenfhOPg
	 EvqSHrYHA6arxtZ4LB0UbDNC3NHqX4MmWaRk47c2VlMzpMHxViHsg2Lux+BbOxI7hf
	 vXiwPAhdUq9Nu0lgAJNUaONcN/t+t/YniXbMiMv8w9Ee1tvvYO19gj5C+3wNjOZxoA
	 T4m3hJzzhS62QMTtk0PhovTRE4jMirivKLYnq1EmGo/k1S5NGp0KGxDy3jyxj4mEru
	 JPtxyV6LbCtmHNZqIETkgY4f0gLlHexjY+VYIpsURrsZHBUk6cPu5hAKtKO1gKYGA4
	 wEqcBKzXbXaPA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pjzAT-0001xl-G8; Wed, 05 Apr 2023 11:11:01 +0200
Date: Wed, 5 Apr 2023 11:11:01 +0200
From: Johan Hovold <johan@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, agross@kernel.org,
	andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
	kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
	mturquette@baylibre.com, sboyd@kernel.org, quic_wcheng@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v5 7/8] arm64: dts: qcom: ipq9574: Add USB related nodes
Message-ID: <ZC07JU/F46L9Z9y2@hovoldconsulting.com>
References: <cover.1680162377.git.quic_varada@quicinc.com>
 <c46b542b112b59002ab965be1d3fcae8c372d545.1680162377.git.quic_varada@quicinc.com>
 <CAA8EJpo_ckJtYV4aU613X5L6+wj-1i9vZkud5p72PLdCSnj5ng@mail.gmail.com>
 <20230331092710.GB19162@varda-linux.qualcomm.com>
 <ZCaznloORtzgioOP@hovoldconsulting.com>
 <20230405085831.GA26156@varda-linux.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230405085831.GA26156@varda-linux.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_021033_533901_7763633A 
X-CRM114-Status: GOOD (  15.76  )
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

On Wed, Apr 05, 2023 at 02:28:32PM +0530, Varadarajan Narayanan wrote:
> On Fri, Mar 31, 2023 at 12:19:10PM +0200, Johan Hovold wrote:

> > > > > +               ssphy_0: phy@7d000 {
> > > >
> > > > Nit: usually the label usb_0_qmpphy
> > > >
> > > > > +                       compatible = "qcom,ipq9574-qmp-usb3-phy";
> > > > > +                       reg = <0x0007d000 0xa00>;
> > > > > +                       #phy-cells = <0>;
> > > > > +
> > > > > +                       clocks = <&gcc GCC_USB0_AUX_CLK>,
> > > > > +                                <&xo_board_clk>,
> > > > > +                                <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> > > > > +                                <&gcc GCC_USB0_PIPE_CLK>;
> > > > > +                       clock-names = "aux",
> > > > > +                                     "ref",
> > > > > +                                     "com_aux",
> >
> > This is not the right name for this clock so you need to update the
> > binding first.
> >
> > Please be more careful.
> 
> Thanks for your feedback. Have posted v6 with the above corrections.

Thanks for the heads up. But for future submission, please try to
remember to add people that have provided feedback on CC when posting
new revisions.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
