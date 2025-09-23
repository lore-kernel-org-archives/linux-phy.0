Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB5CECAC5A7
	for <linux-phy@archiver.kernel.org>; Tue, 23 Sep 2025 07:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7R9K427+/RGkM6VxD4WpO4igjCEwQljbvZ5D4X76ZGA=; b=R6Qtk98Ss5MDpx
	gPC9VjgGPU3wHeFoiptjMIhFbRyIRMsmiEAA1TInAOHyIACNEpBuwX5KtvTA68QAO5sk4NLL0pQR5
	itddN6DYYua2+AndoH0OLcAlx82Jisv4GHEiM2LRGxhBAEv/gA1a4+IbHaQanvX8QGKmLQQX3jFxz
	yvbggs2lRaXOKowRidr3ZnFxNm9T0y+8I60BMKu2Fe4k606/GqDZMru0qIZWqwqWEBIfWHjtmD47h
	5e3wTqdEmtvVphu0lobrskHCMzf+6BX3a+SY6K2aIajvDkA4498srnBp5Duj9ft3vPDysi3g6KBEr
	xvkfX4L+kighF3EN2dTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0xQt-0000000Cgmp-27FR;
	Tue, 23 Sep 2025 07:27:27 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0xQs-0000000CgmV-1B6v
	for linux-phy@lists.infradead.org;
	Tue, 23 Sep 2025 07:27:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A961C60252;
	Tue, 23 Sep 2025 07:27:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 520DCC4CEF5;
	Tue, 23 Sep 2025 07:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758612445;
	bh=KeDKwQHVQdiXPUQ8+Nb80zJOIZ1+DrcUy6TSKrXqibM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oNAeZyWj9z+KyZz5eb7jbYDIlZ0amPo6gA4Q5lS/TB0nBA5styzuTLBS7qS8pfipd
	 DsWrYKKauedaMBuTZSiiiXgEa80mNYLTgoXJ9QQz+sXnwCSLg1+CHHAuaxyIvabIJb
	 FkkKsQAkjKOr++6OzJ1l51mNgogh3btwXmUUlkrsyp4KjgHWOUcRnZ9CIJX+3jZM8e
	 3Gznieq8XUCpXFzjzAl8ZbYlf8ZEynQHtdPXdHu3b/S0lV9rml+JPwCnEqs3faYbfe
	 I/esSuYz602PXf2i/y957GNYvN5dk26kTQp4iMXsfIx6tBy2kA4AdGnSfX89qToP/G
	 +zOx1t9Fby+BQ==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1v0xQj-000000001HA-41EB;
	Tue, 23 Sep 2025 09:27:18 +0200
Date: Tue, 23 Sep 2025 09:27:17 +0200
From: Johan Hovold <johan@kernel.org>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
	vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 2/9] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI
 PHY compatible
Message-ID: <aNJL1YEXx6IabTos@hovoldconsulting.com>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-3-wesley.cheng@oss.qualcomm.com>
 <7gvp6pshp4eiugk3qodg2ub3azu365loturidbkxqly6nhtgq7@bxnkxeqzarkv>
 <4116b593-d36d-df10-6101-4e3539b8b812@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4116b593-d36d-df10-6101-4e3539b8b812@oss.qualcomm.com>
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

On Mon, Sep 22, 2025 at 06:00:04PM -0700, Wesley Cheng wrote:
> 
> 
> On 9/20/2025 8:22 AM, Dmitry Baryshkov wrote:
> > On Fri, Sep 19, 2025 at 08:21:01PM -0700, Wesley Cheng wrote:
> >> The Glymur USB subsystem contains a multiport controller, which utilizes
>
>> two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC.
> >> @@ -16,6 +16,7 @@ description:
> >>   properties:
> >>     compatible:
> >>       enum:
> >> +      - qcom,glymur-qmp-usb3-uni-phy

Odd indentation?

> >>         - qcom,ipq5424-qmp-usb3-phy
> >>         - qcom,ipq6018-qmp-usb3-phy
> >>         - qcom,ipq8074-qmp-usb3-phy
> >> @@ -62,6 +63,8 @@ properties:
> >>   
> >>     vdda-pll-supply: true
> >>   
> >> +  refgen-supply: true
> > 
> > You've added it, but it's not referenced as required. Why is it so?

> The refgen clock isn't always required on each and every platform unlike 
> the .9v and 1.2v rail/supply, which directly power the QMP PHY.  It only 
> really depends on how the refclk/CXO network is built for that 
> particular chipset.  The refgen ensures that we're properly voting for 
> the supply that is powering our CXO buffer.

I thought we discussed this before and concluded that this is not an
accurate description of the hardware (even if you now call this supply
refgen instead of qref):

	https://lore.kernel.org/lkml/aEBfV2M-ZqDF7aRz@hovoldconsulting.com/

Given your description above this still looks wrong (at least after a
quick look).

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
