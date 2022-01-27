Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14E1DC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 27 Jan 2022 06:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YMhpoYX8xG0tF2Y+pLswi1SZR8VeSgHhvm19JXxED0Y=; b=a+Vpi9Ys8UciMX
	ssGi6siFFC3TN1YUuLwBDkFGxtlxrT/02vWm5P4hqEVPk/U34aeJkOhJtKqQpLvT+ske7iFWtmvBQ
	q5duhHPK4cksYhQll0YPTa0qmj7aXjma9zLRDRcDVgpXvCOTxjQ3TQNb6NH6FPNo5toNeZTlKC4F7
	xQ6H3DA2vIfh6ilSuwQKe98qHZHyoY5q1TTrBNHPLhScyBA/ND2eemU3nd2QK6u65qrVhc63rk0hA
	MDPR0kpa/UZaopvmcI89WEA9IYewyS7OrsfIpb42q679729bIGVrozfOdPTxrJjFisVnclrTkjNf1
	0jKx3sd67TUY6X1jhdlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCyFa-00EVPm-G8; Thu, 27 Jan 2022 06:27:18 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCyFX-00EVNL-Bo; Thu, 27 Jan 2022 06:27:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 47360CE20C7;
 Thu, 27 Jan 2022 06:27:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C0B0C340E4;
 Thu, 27 Jan 2022 06:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643264831;
 bh=QGqOz4ZDf4nVB8gL1AxXDvBSwWaWQERKk7xslRGJ8rQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=N8g/ED00AlAbfrHbrjW1D6kuHCe75G7Xly3p68HemZwwRPYWHYrX8WEtcGLzgrKPP
 /5MFO93D8fkkai/b3aylIb0Yp2bmdtSSvKmqsutvH7I5T64NlqAPEf1a5/jgZyMam2
 sG2n+9lmxc9u+inuFV3dVPv68gEOuYy+q8UKN8ZxyPIDEF6M0yfTUScmDYkGKXsGij
 hhVm611wRHGhvRGKZ3z4MFUKV7DULybRKHCW8BTURRUMs9ULDYGQjHHhJfR82ad0/Q
 1N4/DevuBv7nCdqlLGIhg2Iufc/ve03MxR6VnugwlU+lkBQ6PxTZMvlQqxjovKbxgJ
 qHCd1R2tOD8jg==
Date: Thu, 27 Jan 2022 11:57:07 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Amjad Ouled-Ameur <aouledameur@baylibre.com>
Cc: kishon@ti.com, p.zabel@pengutronix.de, balbi@kernel.org,
 jbrunet@baylibre.com, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-phy@lists.infradead.org, khilman@baylibre.com
Subject: Re: [PATCH v6 0/3] phy: amlogic: fix shared reset control use
Message-ID: <YfI7O5EvRI+m+QAj@matsya>
References: <20220111095255.176141-1-aouledameur@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220111095255.176141-1-aouledameur@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_222715_663714_D2656D8F 
X-CRM114-Status: GOOD (  11.73  )
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

On 11-01-22, 10:52, Amjad Ouled-Ameur wrote:
> This patchset fixes a usb suspend warning seen on the libretech-cc by
> using reset_control_rearm() call of the reset framework API. 
> This call allows a reset consummer to release the reset line even when 
> just triggered so that it may be triggered again by other reset
> consummers.
> 
> reset_control_(de)assert() calls are called, in some meson usb drivers, 
> on a shared reset line when reset_control_reset has been used. This is not
> allowed by the reset framework.
> 
> Finally the meson usb drivers are updated to use this new call, which
> solves the suspend issue addressed by the previous reverted 
> commit 7a410953d1fb ("usb: dwc3: meson-g12a: fix shared reset control
> use").

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
