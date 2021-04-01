Return-Path: <SRS0=2YxO=I6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49194C433B4
	for <linux-phy@archiver.kernel.org>; Thu,  1 Apr 2021 05:15:39 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C49D160698
	for <linux-phy@archiver.kernel.org>; Thu,  1 Apr 2021 05:15:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C49D160698
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2juCOU2pp0X+NoBhR1uxrOp3N/RcRiGAGcM3LiUq3eg=; b=eITi4b7gTfn/IW1CiSTuD0nhQ
	sKHSF0lUMCVLXs6/0cho1ULwsydibK2zx8vg5PuMQThS8WOOaQ38JsIDfuZ5UP6dFDW0kAuqY472o
	7Nr43h7VeXmSEFDVyHu/ABTG6FqiRy+c2NpHjSIFFc274Xt2W8GeMlUJAqXdkk4/YC2Y3PYF7d7gF
	QZkXnl9kH8WAMpUYfFfcyNBJkGSJqrM5kqxvOh4/x+LByXz77ASIPtGdmLDOm9AoN6tge8EQWRyut
	HdJVTzI5COU3A4ykfAWmwyyB9jj68n7bGyFAaZ0hF6QF3jTMIsmmeAO20ZYD9Y2aK+66qSqUt1Zzq
	Kcx9KmatQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRpg6-008a3v-9E; Thu, 01 Apr 2021 05:15:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRpg2-008a3H-2l
 for linux-phy@lists.infradead.org; Thu, 01 Apr 2021 05:15:31 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8922E60698;
 Thu,  1 Apr 2021 05:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617254124;
 bh=8NtburFMkGmcAYV5T3rhtkugYAkB42xpELqKvPB6a5g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c+K3dyAAmxgn3sj1E3F05hptmOezBg11CPHGOBpz1YA/FAZx0kJqL4OAtNrM796HA
 9YTao6tY4Hb/dnka8/T86iZfHhnls91vfNiAFkEtjltYMTDulSYcAk2Fb5qUWCeO8U
 fjv/FrfVVKjkiBbg5/PRZnFXA7F8s7dS87bOfczAXJ1cWh73cbFgMPdv9ko/B+d4VR
 shFR4Ik0UV3V78bwVXdQits0ZAzVmCARX7w769pZPw56KhytissJJ1qcQXOMTZfeNr
 ceOhyOON8MPxkAFZFl5brIrEHkEO6ZEFg0ROCrQNIK9vRnFhoC34MHoWL9wev3oAXu
 U8UkRf9jL7jgA==
Date: Thu, 1 Apr 2021 10:45:20 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Mathias Nyman <mathias.nyman@intel.com>, JC Kuo <jckuo@nvidia.com>,
 Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v8 03/13] phy: tegra: xusb: Move usb3 port init for
 Tegra210
Message-ID: <YGVW6LEZM2w+dyJ8@vkoul-mobl.Dlink>
References: <20210325164057.793954-1-thierry.reding@gmail.com>
 <20210325164057.793954-4-thierry.reding@gmail.com>
 <YGMx5cLmX+d48XKO@vkoul-mobl.Dlink>
 <YGSkAcRLByY8zNnu@orome.fritz.box>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YGSkAcRLByY8zNnu@orome.fritz.box>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_061530_334807_FF74BAD5 
X-CRM114-Status: GOOD (  12.62  )
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

On 31-03-21, 18:32, Thierry Reding wrote:
> On Tue, Mar 30, 2021 at 07:42:53PM +0530, Vinod Koul wrote:
> > Hi Thierry,
> > 
> > On 25-03-21, 17:40, Thierry Reding wrote:
> > 
> > > +static struct tegra_xusb_usb3_port *
> > > +tegra210_lane_to_usb3_port(struct tegra_xusb_lane *lane)
> > > +{
> > > +	int port;
> > > +
> > > +	if (!lane || !lane->pad || !lane->pad->padctl)
> > > +		return NULL;
> > 
> > This looks problematic to me, so if lane is NULL, it will still go ahead
> > and check lane->pad which would result in NULL pointer dereference.
> 
> No, this isn't going to result in a NULL pointer dereference because the
> compiler will short-circuit this if the first expression is true. If the
> lane parameter is NULL, then the entire expression is going to be true
> no matter what lane->pad and lane->pad->padctl evaluate to (because of
> the logical OR) and hence the compiler knows that it can skip the rest.

Yes, that is correct. I assumed wrongly, so:

Acked-By: Vinod Koul <vkoul@kernel.org>


-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
