Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F899C76196
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 10:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VbkwUCo+/x8uJaCWBsfZLOUqQ1cxPCVC7pqAfmtNQuw=; b=ZiPRE7VYiiwYVu
	aQe4tZ7qGvslQTiFQKif/26WDDnJyADaDkpL0Gj/0Zrn6r/TItEjDpJAFLmgqsNFlhNz9If7Zf83I
	RCE9ALJdAalweZyUXp05xDWjmRSomU1ZVy6LXNuqh6VO0+GV1Gu/9DJ7KvulixKgOXkqAwB9yOonD
	vp05PpRclH9QDmQTMJc49qjtBR5oAAA6HbT9jmpLW16WJthCQ6Ir7DNm/s/q1CGyOf7FL7GgZGbTL
	Kiw4NznvPBB3ZL8TPQzijREzsLl5dM4XBbtbJypbIb/jaWFmh03rukqNXDQMDAqYMZRwe3CWZV6Mf
	DlbSaJgtyqx45gg0bZMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piBqR-006u6n-1x;
	Fri, 31 Mar 2023 10:18:55 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piBqP-006u5c-00
	for linux-phy@lists.infradead.org;
	Fri, 31 Mar 2023 10:18:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id EB19EB82E2C;
	Fri, 31 Mar 2023 10:18:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E4F0C433D2;
	Fri, 31 Mar 2023 10:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680257929;
	bh=5A3MI1NM5Uq/2OVg1nMJ+OOp//buqxGmoqLAWsIGndg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nFu8EEpL/yc6LfoS3gnG3bmm4mj3ewDjHxPWj9mvPwAM+ZuAZVRh6EhG7X6qmZ5HD
	 l5cAYUlVPq/z4q9mER2jXuIvzGQonzJ8ULQPpBwjMYoZRY5GePZG+o+irlHXOp8vTD
	 DybiTBkdYhiEMqL9fU4xX/j554JNFo3ZxyKdiU+b+4eR37mWDdX3AyotYNrWZGyExY
	 Hpz6gF2ZhRcUsXKXT+FAJrZEbbdG5zOJlZ0SqmF21V+7YsHXJmMEGXHOZYsx2bPivZ
	 heJvpIwi0b11XfAq9jWZbLUsCJrHq1WtlkBHa3Ola2amMkXG/fIyuYP/XTh0FiUG4r
	 /PAYny8iqIpvA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1piBqg-0004es-QE; Fri, 31 Mar 2023 12:19:10 +0200
Date: Fri, 31 Mar 2023 12:19:10 +0200
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
Message-ID: <ZCaznloORtzgioOP@hovoldconsulting.com>
References: <cover.1680162377.git.quic_varada@quicinc.com>
 <c46b542b112b59002ab965be1d3fcae8c372d545.1680162377.git.quic_varada@quicinc.com>
 <CAA8EJpo_ckJtYV4aU613X5L6+wj-1i9vZkud5p72PLdCSnj5ng@mail.gmail.com>
 <20230331092710.GB19162@varda-linux.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230331092710.GB19162@varda-linux.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_031853_362989_8937488A 
X-CRM114-Status: GOOD (  19.60  )
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

On Fri, Mar 31, 2023 at 02:57:11PM +0530, Varadarajan Narayanan wrote:
> On Thu, Mar 30, 2023 at 12:44:40PM +0300, Dmitry Baryshkov wrote:
> > On Thu, 30 Mar 2023 at 11:42, Varadarajan Narayanan
> > <quic_varada@quicinc.com> wrote:
> > >
> > > Add USB phy and controller related nodes
> > >
> > > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > > ---
> > >  Changes in v5:
> > >         - Fix additional comments
> > >         - Edit nodes to match with qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > >         - 'make dtbs_check' giving the following messages since
> > >           ipq9574 doesn't have power domains. Hope this is ok
> > >
> > >                 /local/mnt/workspace/varada/varda-linux/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dtb: phy@7d000: 'power-domains' is a required property
> > >                 From schema: /local/mnt/workspace/varada/varda-linux/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > >                 /local/mnt/workspace/varada/varda-linux/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dtb: usb@8a00000: 'power-domains' is a required property
> > >                 From schema: /local/mnt/workspace/varada/varda-linux/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> >
> > No, I think it is not.
> 
> There are no GDSCs in IPQ9574. Can you suggest how to proceed.

You need to update the binding and either make the power domains
property optional in the binding or dependent on the SoC.

> > > +               ssphy_0: phy@7d000 {
> >
> > Nit: usually the label usb_0_qmpphy
> >
> > > +                       compatible = "qcom,ipq9574-qmp-usb3-phy";
> > > +                       reg = <0x0007d000 0xa00>;
> > > +                       #phy-cells = <0>;
> > > +
> > > +                       clocks = <&gcc GCC_USB0_AUX_CLK>,
> > > +                                <&xo_board_clk>,
> > > +                                <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> > > +                                <&gcc GCC_USB0_PIPE_CLK>;
> > > +                       clock-names = "aux",
> > > +                                     "ref",
> > > +                                     "com_aux",

This is not the right name for this clock so you need to update the
binding first.

Please be more careful.

> > > +                                     "pipe";
> > > +
> > > +                       resets = <&gcc GCC_USB0_PHY_BCR>,
> > > +                                <&gcc GCC_USB3PHY_0_PHY_BCR>;
> > > +                       reset-names = "phy",
> > > +                                     "phy_phy";
> > > +
> > > +                       vdda-pll-supply = <&reg_usb_1p8>;
> > > +                       vdda-phy-supply = <&reg_usb_0p925>;
> > > +
> > > +                       status = "disabled";
> > > +
> > > +                       #clock-cells = <0>;
> > > +                       clock-output-names = "usb0_pipe_clk";
> > > +               };

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
