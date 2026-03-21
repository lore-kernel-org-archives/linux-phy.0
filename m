Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8751A1094486
	for <linux-phy@archiver.kernel.org>; Sat, 21 Mar 2026 15:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ooHIGSpZwoHCmcuub8Qm5Bm5RgXv+oAwS4sujPAoVo=; b=sT3sfuyLy9pERr
	MqZ7XNy/w3N1EJWIt3fjMUwSA5iV44ZvCNNRUXSaB26812Zab80iHcpYsZbIeOni6T+8ChWgfUgFV
	wIUEMZ33lnrd+coPFBBoGzAJ0liFGz2n/jp7zjz3UwJBHgF4H5+hhgQoRgEUa6kpTU7ZAOKFyx/Xz
	KO6dkjE87rEfJ9r5OuliQ58byD5l0pAhIZboyGENjFg2BWDSD4WtrDluHzIaBfpJlpmq/LaWrzWb+
	EAt82Q2eUJhogjNf3klBLXtqzV8avATbVhzNeus/eEw4ljvhW2XipwcI8HOr34dOpMfSsu5WcFP0Z
	SVuxLeqGWUhWwA5cSt5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3yZ3-0000000Ec2t-3qKE;
	Sat, 21 Mar 2026 15:48:37 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3yZ1-0000000Ec2Q-39LZ
	for linux-phy@lists.infradead.org;
	Sat, 21 Mar 2026 15:48:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=3Fy9gUHzgMAPEEFZcrvLxRVy4kJkdP/QasYLigMTp9E=; b=wzSjnSKES2i78CHWgQKAo8KXVE
	LcSCYCMxzge3wiJaRr7jExiPJRTJWjYSrVByWrdbDftLI3A2JwF/8TwwfVt5cnzZPkW8sFOpN7bbO
	fXTLpcuFNg5UFpBKTF5QHPBRXi4uaiNJKJthkrQImnDtCRc+tuGxNb6uU5UdCW28iAoM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1w3yYu-00Cj6o-C6; Sat, 21 Mar 2026 16:48:28 +0100
Date: Sat, 21 Mar 2026 16:48:28 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, netdev@vger.kernel.org,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH phy-next 1/3] phy: lynx-28g: use timeouts when waiting
 for lane halt and reset
Message-ID: <3d9b524b-bb61-4e64-a655-3fa70d8b64ef@lunn.ch>
References: <20260321011451.1557091-1-vladimir.oltean@nxp.com>
 <20260321011451.1557091-2-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260321011451.1557091-2-vladimir.oltean@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260321_084835_808859_0E60D5AD 
X-CRM114-Status: GOOD (  21.09  )
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

On Sat, Mar 21, 2026 at 03:14:49AM +0200, Vladimir Oltean wrote:
> There are various circumstances in which a lane halt, or a lane reset,
> will fail to complete. If this happens, it will hang the kernel, which
> only implements a busy loop with no timeout.
> 
> The circumstances in which this will happen are all bugs in nature:
> - if we try to power off a powered off lane
> - if we try to power off a lane that uses a PLL locked onto the wrong
>   refclk frequency (wrong RCW, but SoC boots anyway)
> 
> Actually, unbounded loops in the kernel are a bad practice, so let's use
> read_poll_timeout() with a custom function that reads both LNaTRSTCTL
> (lane transmit control register) and LNaRRSTCTL (lane receive control
> register) and returns true when the request is done in both directions.
> 
> The HLT_REQ bit has to clear, whereas the RST_DONE bit has to get set.
> 
> Any time such an error happens, it is catastrophic and there is no point
> in trying to propagate it to our callers:
> - if lynx_28g_set_mode() -> lynx_28g_power_on() times out, we have
>   already reconfigured the lane, but returning an error would tell the
>   caller that we didn't
> - if lynx_28g_power_off() times out, again not much for the consumer to
>   do to help get out of this situation - the phy_power_off() call is
>   probably made from a context that the consumer can't cancel, or it is
>   making it to return to a known state from a previous failure.
> 
> So just print an error if timeouts happen and let the driver control
> flow continue. The entire point is just to not let the kernel freeze.
> 
> Suggested-by: Josua Mayer <josua@solid-run.com>
> Link: https://lore.kernel.org/lkml/d0c8bbf8-a0c5-469f-a148-de2235948c0f@solid-run.com/
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
