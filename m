Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39931C3DA7A
	for <linux-phy@archiver.kernel.org>; Thu, 29 Dec 2022 21:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ReppZWHNnqCsMIVKv0X6By4QZqGHhA6tOB2bHQid2Go=; b=f4ulrdZD1SIyfn
	mItuZwNKOXpHUki7nGZhKk2i2nbg8uKMZt96pyCABG6kCTqD7A+tJh5EB4rXWt31M1ZmsxwZZGHVk
	EMeooz6VawNiq7BadtSEW/gtlkTU2mLPmYfU/pHYShvII1EEVJCtBxol0ZShucwi4M6OhhCu5J8nw
	UewH059mnIez7w6epEPFMoi1n+YJWXBIlhvwaAB4lwmKtyUPnIagbosQdjmDPVJhee517VfjOM8fY
	1zr+ROt3RTUh/Ict/ADu0+15Xyo9JoKSD1BPcqUDNo5e2i1SSSHS9O6arXoGPgsYH1UyHV83tZ0ME
	zhRKMzloB8VZkOs5YR5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pB03U-0023Mg-H4; Thu, 29 Dec 2022 21:03:12 +0000
Received: from mo4-p02-ob.smtp.rzone.de ([85.215.255.83])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pB03Q-0023Ij-SN
	for linux-phy@lists.infradead.org; Thu, 29 Dec 2022 21:03:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1672347783;
    s=strato-dkim-0002; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=NZfdUQnCbwEBRXq8TbX4UmVyB5v891dM32uRb8tYNWE=;
    b=kbo+QtuFEn+EHHL+/lGnR8sLt3Tx20e7+O3ghi/7vU2Ppy8XbE4KkbhFk1Jiu3sBnr
    YNuUASGPN09MnK0JpuGRITxPLccSonqc6F8fC8aAQsPVSP3IB/ZXOoJ8uV1EUsFjqgMX
    v2Ax7GhJ3ttxysksW5Tv7TGTILr5QEZGOioMil1owHAWH4F4Pko3clr1IvCD2xf7/8WM
    tlmZFiIbcIV6htXBET04ji3eDuf9LhkwRXR3zT8GJL6s/iW82sQcnqWl/NFfw8Jon9nT
    Zlv5Ay/kjG5vA566dT6kmUMYxLre+mONgE/LoFLfLHygpqdaNAxQ7944W+DNLRsD7wI2
    4Cow==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u261EJF5OxJAhdlWyvDI"
X-RZG-CLASS-ID: mo00
Received: from gerhold.net
    by smtp.strato.de (RZmta 48.2.1 DYNA|AUTH)
    with ESMTPSA id Yce349yBTL33Xpy
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Thu, 29 Dec 2022 22:03:03 +0100 (CET)
Date: Thu, 29 Dec 2022 22:02:52 +0100
From: Stephan Gerhold <stephan@gerhold.net>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: agross@kernel.org, andersson@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, konrad.dybcio@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 2/2] phy: qcom-usb-hs: Add qcom,dp-manual-pullup logic
Message-ID: <Y64AfHcUw192Pyr6@gerhold.net>
References: <20221229183410.683584-1-bryan.odonoghue@linaro.org>
 <20221229183410.683584-3-bryan.odonoghue@linaro.org>
 <Y63uSgMdP4m6nvhL@gerhold.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y63uSgMdP4m6nvhL@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_130309_167527_88AA0B1E 
X-CRM114-Status: GOOD (  21.26  )
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

On Thu, Dec 29, 2022 at 08:45:15PM +0100, Stephan Gerhold wrote:
> On Thu, Dec 29, 2022 at 06:34:10PM +0000, Bryan O'Donoghue wrote:
> > Downstream has a flag called qcom,dp-manual-pullup which informs the
> > downstream driver if it should toggle ULPI_MISC_A_VBUSVLDEXTSEL and
> > ULPI_MISC_A_VBUSVLDEXT.
> > 
> > Downstream states:
> > 
> > "qcom,dp-manual-pullup: If present, vbus is not routed to USB
> >         controller/phy and controller driver therefore enables pull-up
> >         explicitly before starting controller using usbcmd run/stop bit."
> > 
> > Working with a system that has both an external Type-C port controller and
> > an internal USB Hub results in a situation where VBUS is not connected to
> > the SoC.
> > 
> > In this case we still need to set the DP pullup.
> > 
> > This patch enables and disables the DP pullup on PHY power_on and power_off
> > respectively if the DT has declared the bool "qcom,enable-vbus-pullup"
> > effectively replicating the downstream logic to the same effect.
> > 
> > Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> [...]
> 
> An alternative that I've occasionally used for early bring-up is to
> simply use a dummy extcon driver [1] that permanently reports active
> VBUS. The end result is the same. While it's clearly a hack perhaps this
> makes it a bit more clear that ideally you really should try to assign
> an extcon device, to avoid keeping the USB controller and PHY on
> permanently.
> 

BTW another nice trick that should work in all almost all cases is to
use the state of the PMIC USB_IN pin as VBUS detection. All battery-
powered devices I have seen route the USB VBUS to PM8916 USB_IN. And
even many boards like DB410c seem to do that or at least permanently
supply 5V there. In all these cases the &pm8916_usbin extcon will
report a VBUS state that should make USB work.

Have you tried using that on your MSM8939 board with the Type-C setup?

&pm8916_usbin {
	status = "okay";
};

&usb {
	status = "okay";
	usb-role-switch;
	extcon = <&pm8916_usbin>;
};

&usb_hs_phy {
	extcon = <&pm8916_usbin>;
};

Stephan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
