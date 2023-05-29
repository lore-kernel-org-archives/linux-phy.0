Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B2C1C7EE29
	for <linux-phy@archiver.kernel.org>; Mon, 29 May 2023 14:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HH6fRUfd+S2gYlZHTzIHPQaDlemOwlhUBrvthR3Hz7k=; b=J9aFXoB5ZD1poO
	i02PWye7/9/oJmyaVS4d+ToEhsKAXIisS5AsL75kDqD1xhpzI9BIZzOznlZKcZZkS0zzEN0jcUmud
	geSLpqjti6AuLSLByul+B4MaKzeDdBnhjrAZCl1PekfrNkU7f2KfDwupyFPDOEPczYzq24VTBHE1U
	7y+fNQHL68NuKVVrh3EUAG12NuyZMT22/IA+h7vN9sVzNNhVIh132wtPQFqs8/rJ5m1jawa4+bTsT
	XfJtMY9DoPVT8KbkFFfZdKHEP3k2cHeVWSMr37yQ8LDZKQ7L47pYna2q13ap25Pg2qAxPw1epQyc5
	4LvA9DISqa8PPvtoa4KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3doY-00AlNW-2d;
	Mon, 29 May 2023 14:25:38 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3doW-00AlM4-1F
	for linux-phy@lists.infradead.org;
	Mon, 29 May 2023 14:25:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C06156152E;
	Mon, 29 May 2023 14:25:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6ABEC433D2;
	Mon, 29 May 2023 14:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1685370335;
	bh=HXadNXLfa2pbjtGXi2soLzjDLazsmd3HtXkwWcxlYt0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bGci5ftxukNC7rajgrAB0odDczjRsSI1tM9XB83O3u3Qp5ipQeWPupRAzGEkY82y9
	 lGaeFs8LdcFF4Jx60BEDegK2e2cGvNOm82GfW5Wg61wYKzkGo74q7dA3o6LJYQmPaD
	 fXwNoUGhZ6tnRhuV/VT4+PtDZlUk9vNAdCheiGTU=
Date: Mon, 29 May 2023 15:25:33 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Stanley Chang <stanley_chang@realtek.com>
Cc: kernel test robot <lkp@intel.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Bagas Sanjaya <bagasdotme@gmail.com>, Ray Chi <raychi@google.com>,
	Douglas Anderson <dianders@chromium.org>,
	Mathias Nyman <mathias.nyman@linux.intel.com>,
	Michael Grzeschik <m.grzeschik@pengutronix.de>,
	Flavio Suligoi <f.suligoi@asem.it>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 2/3] phy: realtek: usb: Add driver for the Realtek SoC
 USB 2.0/3.0 PHY
Message-ID: <2023052915-repurpose-partner-20a8@gregkh>
References: <20230525022617.30537-1-stanley_chang@realtek.com>
 <20230525022617.30537-2-stanley_chang@realtek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230525022617.30537-2-stanley_chang@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_072536_464105_3C3325BD 
X-CRM114-Status: GOOD (  12.01  )
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

On Thu, May 25, 2023 at 10:26:03AM +0800, Stanley Chang wrote:
> Realtek DHC (digital home center) RTD SoCs support DWC3 XHCI USB 2.0/3.0
> controller. Added two drivers to drive the  USB 2.0/3.0 PHY transceivers.
> For USB 3.0 transceivers, a driver phy-rtk-usb3 is provided.
> The driver phy-rtk-usb2 is used to support USB 2.0 transceivers.
> 
> Signed-off-by: Stanley Chang <stanley_chang@realtek.com>
> Reported-by: kernel test robot <lkp@intel.com>

The kernel test robot did not report that a new driver was needed :(


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
