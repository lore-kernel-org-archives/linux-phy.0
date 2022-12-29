Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 253D2C3DA7D
	for <linux-phy@archiver.kernel.org>; Thu, 29 Dec 2022 20:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gMCGKromCBkv543kWAQOmRc5HSIAySpNHcsxO15khjs=; b=pWHS4PsTutTT59
	sEjyUxCWhuvlVQfMW+8nDVefYGOeskk4AU3hqE7PGsXkAG1iVrd9UL5e0rxenKj1cwHaLZ5C/8E7Q
	yT0nlRtQc6uK3D3LgSlOkCLFh16uxRoxVvCM8FtdhcZPvDzgpAD2UmLQjfRca5iuP8v4ZrTXlkWWt
	XH0Bj/hbtqcQ1SnxGbIG4L9Vjt7Fg6Jye9svm5sRIenv+Xiv1b3Caia7bkGtbFCaGc2PEQmMeGLxj
	afCpoq09FIc5cUAQskAL1Ebg5JzxEop/wE9K+pHNqq/L+/iVksVXRbGXTKi7KZ1+EXdWfOwLbMZd1
	5eLRMxayexaCoSdMxN5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAzkB-001uLU-Aq; Thu, 29 Dec 2022 20:43:15 +0000
Received: from mo4-p02-ob.smtp.rzone.de ([85.215.255.81])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAzk8-001uJK-8l
	for linux-phy@lists.infradead.org; Thu, 29 Dec 2022 20:43:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1672346588;
    s=strato-dkim-0002; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=8QGE3H6HUAez0GfC25LkzeuSNeAMMalWPYUYYnz225A=;
    b=LDo/68IAE7J0UqYZCI9gfFTGsYjYdFMrvwgqvvJj7jbHoVi5ir+da7X+6v9ptO5bef
    HY8ZVCN7/wuJ2wnR+iZMjWWjerh5ntH7yw6Xp8hmH6FRV9/H+UAmECKkmMEjQ3TVwXhG
    8ocfD7XEJdTwZMJgPJK3rXJwXdczxGK4SYyIoBaEJp8qRJ9haH2Q+ifo2BcglYSMOe3g
    vST2f5xiIkkBEV0KpcilPZFi8aJ0UHdmjlE12amVrQ9KAHzfp5FrKFAP1JkKz9pxmsAo
    ThodkWB/0r2Yxxsj8gthvXABij5vsPsXKG6q+P1QRI9JEnXTe9cIrwBB+5XQlbKNCLq6
    41ig==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u261EJF5OxJAhdlWyvDI"
X-RZG-CLASS-ID: mo00
Received: from gerhold.net
    by smtp.strato.de (RZmta 48.2.1 DYNA|AUTH)
    with ESMTPSA id Yce349yBTKh8Xon
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Thu, 29 Dec 2022 21:43:08 +0100 (CET)
Date: Thu, 29 Dec 2022 21:43:01 +0100
From: Stephan Gerhold <stephan@gerhold.net>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: agross@kernel.org, andersson@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, konrad.dybcio@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: Add qcom,dp-manual-pullup
 description
Message-ID: <Y6371UEjOK4qZ9hh@gerhold.net>
References: <20221229183410.683584-1-bryan.odonoghue@linaro.org>
 <20221229183410.683584-2-bryan.odonoghue@linaro.org>
 <Y63jBu38L/5cQ75S@gerhold.net>
 <d1cd6d30-2142-765b-c201-4d6662576665@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d1cd6d30-2142-765b-c201-4d6662576665@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_124312_559272_CF3AE2E0 
X-CRM114-Status: GOOD (  28.79  )
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

On Thu, Dec 29, 2022 at 07:48:46PM +0000, Bryan O'Donoghue wrote:
> On 29/12/2022 18:57, Stephan Gerhold wrote:
> > AFAIK it is not possible to route VBUS directly to the controller on
> > these SoCs so this property would likely be added to the SoC dtsi
> > (i.e. msm8916.dtsi and msm8939.dtsi) and used by all boards.
> 
> So db410c signals the SoC via GPIO 121 / USB_HS_ID
> 
> https://fccid.io/2AFQA-DB410C/Schematics/Schematics-2816094.pdf
> 
> Which causes ULPI_MISC_A_VBUSVLDEXT to be updated depending on the state
> VBUS.
> 

Correct. If I'm reading the DB410c schematic correctly the USB_HS_ID on
DB410c is actually derived from VBUS on the micro USB port (and not the
ID pin of the port as one would normally expect).

> But not ULPI_MISC_A_VBUSVLDEXTSEL this is the additional register that
> downstream updates when "VBUS is not routed to the controller"

AFAICT ULPI_MISC_A_VBUSVLDEXTSEL is set in qcom_usb_hs_phy_set_mode() if
the USB controller enables device mode? (And disabled again in host mode.)

> 
> I don't have a bit-level description of these registers at the moment so,
> I'm guessing that ULPI_MISC_A_VBUSVLDEXTSEL *is* being updated.
> 
> The reason for that is if I just set ULPI_MISC_A_VBUSVLDEXT then as a device
> a host never sees my SoC via the internal USB hub.
> 
> In other words, for me at any rate I need to see both
> 
> - ULPI_MISC_A_VBUSVLDEXT
> - ULPI_MISC_A_VBUSVLDEXTSEL
> 
> to get the pullup to work and hence the Hub/Host to detect the 8939.
> 

The bit-level description of this register in the public APQ8016E TRM
[1] is not very useful (page 1957):

VBUSVLDEXTSEL = "External VBUS valid select"
VBUSVLDEXT = "External VBUS valid indicator"

But I think VBUSVLDEXTSEL basically means "Use external VBUS state from
VBUSVLDEXT instead of internal detection". And VBUSVLDEXT then contains
the actual VBUS state.

The VBUS state is then probably used somewhere inside the USB controller
or PHY to enable necessary USB protocol things such as enabling this "DP
pull-up" (to be fair I have no idea how the USB protocol really works :)).

[1]: https://developer.qualcomm.com/download/sd410/snapdragon-410e-technical-reference-manual.pdf

> > This means we could just bind this behavior to the existing SoC-specific
> > compatible (i.e. of_device_is_compatible(..., "qcom,usb-hs-phy-msm8916"))
> > and avoid having an extra property.
> > 
> > Thoughts?
> 
> So. I'm OOO at the moment and didn't bring my db410c but TBH to me I don't
> see why we do this whole dance with the pullup on/off with VBUS.
> 
> The right thing to do is to run an experiment statically setting
> 
> - ULPI_MISC_A_VBUSVLDEXT
> - ULPI_MISC_A_VBUSVLDEXTSEL
> 
> On/off at power on/off respectively on
> 
> - db410c
> - My reference where I already know it works
> 
> I'm not really seeing the utility of - partially waggling one of two
> registers with VBUS.
> 
> Why not just push the pullup on with power-on and off with power-off..
> 

I don't feel qualified to comment on this. I'd just follow the
suggestion from the docs here to make VBUSVLDEXT effectively represent
the result of the external VBUS detection (see APQ8016E TRM [1] section
6.4.5.3.3 Software control for SESS_VALID, page 1927).

DB410c and other devices with USB hub are obviously a bit special, but
I think it works correctly for DB410c at the moment because its USB_HS_ID
GPIO basically indicates the incoming VBUS on the micro USB port.

There might be some funky design where it is completely impossible to
detect the incoming VBUS. In that case we have no choice but to force
the detected VBUS state on permanently.

Thanks,
Stephan

[1]: https://developer.qualcomm.com/download/sd410/snapdragon-410e-technical-reference-manual.pdf

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
