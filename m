Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA5A7C636CD
	for <linux-phy@archiver.kernel.org>; Tue,  7 Feb 2023 11:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jj6DszzUeNV0+P3lN8JLsDx5n3mSYFgCIaRkn6fXfr0=; b=bv2Pyp9kvaqwxY
	IrVU13x3hPEVIuVE2MdUKt/oFO6jsAMhc4ysIwSv4yzk2O+dh1+PjBSDBc6d4ryUhAwayDK1D409w
	YjkUt/ygV9mZKgM0wuXeXB6AZUruvRlWX53fY2P4D+rLQbQW+C9HyCyKOZOc2IOyjhKo3MAF1WP0F
	0tpzRfWy5X5oePMiwbj3EJ4VkkT7bmiG8QsuRlz8OxAiurnl9fEV6WJDrvKZRvJfdIYoazkrcGR6a
	zxbvJXUrpjuDsXrv4PfJAg8NShXPvC55DsjJnZh7UliekRDsVGsyL5xA2DTgdMYoOXcyl0kG/y7Ey
	fx9LqeZXNpjdm3XDFQKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPLwv-00Bvmr-69; Tue, 07 Feb 2023 11:15:45 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPLws-00BvjX-6D
	for linux-phy@lists.infradead.org; Tue, 07 Feb 2023 11:15:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id DD37FCE1D6F;
	Tue,  7 Feb 2023 11:15:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29046C433EF;
	Tue,  7 Feb 2023 11:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675768535;
	bh=zpfS5ZRX3k0O75MjZxoCoF2L/bPP8+dq0m4PA9fXSrg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YKSvnUbIyCdY2ldGpZSRbX0QkgAGzNyqjFavHEI0C0VEgDkkIxxnL11fgtnG7VdPe
	 5XQKE7InKJufIqUL8EKXz71OSNeTHZl7DsaM2gO42giI39xpRzRmk3sPOUgoBjr5MG
	 EuhkLhqsxd+UJ1v7cYwCXaVNfsdevoi9CtNq2LhXphNwJ+ncyEkJTdjdM4c2Egf2fy
	 2HVhMdDYWAhDUndFAS9F1JSYA+bcaLA8obGT347Zy+Pgmryd4kMORV3jKqASZhRsss
	 4/TNwVln/HVT+MwwdQ/3Awk3oG+o9bdmCpNXtSuWl8Up7CL4VtEhkzeyXpI7xuSu5K
	 FfMsqksuMCGSQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pPLxH-0001eV-LF; Tue, 07 Feb 2023 12:16:08 +0100
Date: Tue, 7 Feb 2023 12:16:07 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
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
Message-ID: <Y+Iy9/82q9eWMMbn@hovoldconsulting.com>
References: <20230202132511.3983095-1-abel.vesa@linaro.org>
 <20230202132511.3983095-8-abel.vesa@linaro.org>
 <Y9zoD/eVG8zjMYNx@hovoldconsulting.com>
 <Y+Iv/s7V5PYkRI8D@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y+Iv/s7V5PYkRI8D@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_031542_495215_BE1A4377 
X-CRM114-Status: GOOD (  19.55  )
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

On Tue, Feb 07, 2023 at 01:03:26PM +0200, Abel Vesa wrote:
> On 23-02-03 11:55:11, Johan Hovold wrote:
> > On Thu, Feb 02, 2023 at 03:25:10PM +0200, Abel Vesa wrote:
> > > Add USB host controller and PHY nodes.
> > > 
> > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > ---
> > > 
> > > Changes since v3:
> > >  * none
> > > 
> > > Changes since v2:
> > >  * none
> > > 
> > > NOTE: This patch has been already merged. It is here only to provide
> > > context for the rest of the patchset. There is a change with respect to
> > > the clocks, but that will be sent as a separate/individual fix patch.
> > 
> > I believe it was because of the 'phy' and 'common' resets, which have
> > been switched below.
> 
> No, the resets haven't been switched, at least not compared to the
> already merged version.

The resets were wrong in the merged version just as they are below. I've
already sent a fix here:

	https://lore.kernel.org/lkml/20230123101607.2413-1-johan+linaro@kernel.org/
 
> > > +		usb_dp_qmpphy: phy@88e8000 {
> > > +			compatible = "qcom,sm8550-qmp-usb3-dp-phy";
> > > +			reg = <0x0 0x088e8000 0x0 0x3000>;
> > > +
> > > +			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
> > > +				 <&rpmhcc RPMH_CXO_CLK>,
> > > +				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> > > +				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> > > +			clock-names = "aux", "ref", "com_aux", "usb3_pipe";
> > > +
> > > +			power-domains = <&gcc USB3_PHY_GDSC>;
> > > +
> > > +			resets = <&gcc GCC_USB3_DP_PHY_PRIM_BCR>,
> > > +				 <&gcc GCC_USB3_PHY_PRIM_BCR>;
> > > +			reset-names = "phy", "common";

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
