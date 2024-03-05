Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E74ADC54798
	for <linux-phy@archiver.kernel.org>; Tue,  5 Mar 2024 18:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MzFvc/RlKLMCYE8kmF2R/Y2SDVgg4Cyaqm8L4VAzgEw=; b=HhHU5mqdzcye/W
	HSayDlgg5rRISCJ1CPdeIXVJmTfBMAvPhGZ4u0EZd02X62ejyO92ju7rcMxbIqe134toN2Veu4E63
	v1nnHbInfzXc1in3hyk6BnKoM0zhvNgiSfyhP7lslE/4EfGnuSHskjdFKsK3Sm8vrsZPaFxXfYq4Y
	b6l6GJfAgOSnTZyjod/JJKw9xxUv1yrixIJ4qv+KYeWOLO9WDw+ZPRLw4Buk8no2AK8UaLLyPelcp
	xACGGyCVqB/azvOVU6939YL5MswfyALXPrQC7DdErUUhFTQ4bbm9J7lhdipZd8fHJIEExgi7SJBib
	NCKZjRVdgS9iiw6hfaPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhZot-0000000EueL-2MMC;
	Tue, 05 Mar 2024 18:47:19 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhZoq-0000000Eud3-27xU
	for linux-phy@lists.infradead.org;
	Tue, 05 Mar 2024 18:47:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 9745DCE1DA2;
	Tue,  5 Mar 2024 18:47:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D566C433C7;
	Tue,  5 Mar 2024 18:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709664432;
	bh=U5W8rIwEZ8/ChIKj7QRXxLhxjBrC54xOPyhXtwiEsTk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h3jyolA5MxiqDI7nMAztHtXTKc9dynmmnSjCKq/Hlk2c0rTUGdJyqjNLwF97DgKzr
	 6BtUYTrwI1cv0w5+Py6IZr2gNWtkkP3FDYpmxas0QOk38wzrlHlAqPl0nikCFtq1C9
	 SZqjraoFI9twivNW2mn5C9yc2bHo726l0cE4c7gOqCjdVPlp4K0yN/vX18uCz2m0wL
	 j++Igw/AdYme20nxnNm0yMHXUW1xpSTd/g6OgceYhhOhgyF0VII7b5l7ZKhz4V5GRH
	 Ypdr9ComVFoxSK8rgamaueuTmigxDsS9aNAtEsGnKNqgNz8VpDluqyIGZY1h0uBUBp
	 J7W4WxfanWaFg==
Date: Tue, 5 Mar 2024 12:47:09 -0600
From: Bjorn Andersson <andersson@kernel.org>
To: Sriram Dash <quic_sriramd@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	konrad.dybcio@linaro.org, vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, gregkh@linuxfoundation.org, 
	quic_wcheng@quicinc.com, Thinh.Nguyen@synopsys.com, p.zabel@pengutronix.de, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, quic_psodagud@quicinc.com, quic_nkela@quicinc.com, 
	manivannan.sadhasivam@linaro.org, ulf.hansson@linaro.org, sudeep.holla@arm.com, 
	quic_shazhuss@quicinc.com
Subject: Re: [RFC 3/3] arm64: dts: qcom: sa8775p-ride: Enable support for
 firmware managed resources
Message-ID: <qbgyspabmohgwenj3mbpiebyll2jlgvbq5v5fm56mo2ixwgnee@nyjzjrspxrq3>
References: <1709657858-8563-1-git-send-email-quic_sriramd@quicinc.com>
 <1709657858-8563-4-git-send-email-quic_sriramd@quicinc.com>
 <b9142874-0afb-40a6-9008-b33bd8f56840@linaro.org>
 <399555e8-d8fa-46b7-8b15-3d3a4a30809b@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <399555e8-d8fa-46b7-8b15-3d3a4a30809b@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_104717_026462_E1992EC1 
X-CRM114-Status: GOOD (  24.11  )
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

On Tue, Mar 05, 2024 at 11:33:54PM +0530, Sriram Dash wrote:
> On 3/5/2024 10:38 PM, Krzysztof Kozlowski wrote:
> > On 05/03/2024 17:57, Sriram Dash wrote:
> > > Establish the channel and domain mapping for the power domains to connect
> > > with firmware, enabling the firmware to handle the assigned resources.
> > > Since these delegated resources will remain invisible to the operating
> > > system, ensure that any references to them are removed.
> > > 
> > > Signed-off-by: Sriram Dash <quic_sriramd@quicinc.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 96 +++++++++++++++++++++++++------
> > >   1 file changed, 77 insertions(+), 19 deletions(-)
> > 
> > Do not mix DTS patches with submissions to netdev or USB.
> > 
> > Please put it inside your internal guides, so you will not be repeating
> > this over and over.
> > 
> 
> Sure. Will take care. Thanks.
> 
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> > > index 26ad05b..b6c9cac 100644
> > > --- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> > > +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> > > @@ -764,8 +764,18 @@
> > >   };
> > >   &usb_0 {
> > > -	pinctrl-names = "default";
> > > -	pinctrl-0 = <&usb0_en_state>;
> > > +	/delete-property/ clocks;
> > > +	/delete-property/ clock-names;
> > > +	/delete-property/ assigned-clocks;
> > > +	/delete-property/ assigned-clock-rates;
> > > +	/delete-property/ required-opps;
> > > +	/delete-property/ resets;
> > > +	/delete-property/ interconnects;
> > > +	/delete-property/ interconnect-names;
> > > +
> > > +	power-domains = <TODO>, <TODO>;
> > 
> > This wasn't even tested.
> > 
> 
> This is tested with the specific power domains in place
> of <TODO>. SCMI interface is used for the power domains.
> 

So you tested this on v6.8-rcN, but you're not able to upstream this
dependency? The code wouldn't compile if this patch is applied, so what
do you expect that I should do with it?

Develop on upstream, test on upstream, send code that improves upstream!

Thank you,
Bjorn

> > Best regards,
> > Krzysztof
> > 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
