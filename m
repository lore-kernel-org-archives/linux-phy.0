Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2072EDF052
	for <linux-phy@archiver.kernel.org>; Thu, 12 Feb 2026 08:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=254V9S0c28LMPR+0Ymkzn/5UD1OpOWUDYw/tiStcxhA=; b=vMiYcS28T6ARod
	rIr+wy9bEyb1ejYEy0R+yWgNyAYoFa4zeK0rcyTyPaqxYiw9tzDE858RoziWzwO4GQsNzaeyqeThI
	l9iQ+ON3+M/rigS7TEzOEePo+/RfnYK4yLH/kQaMj8/yQVTMFbEQvaIAaakFt75OVP5ZzNtfTo48N
	gPZMxsQg7kK4uJs0Yghg/ZMy6yLn4sbSrf4/v2q3yFd0AzNh2alXAGC3BUvkg3H0OlR+HhWeDXpnN
	QLO8ygl9koSvaV6++yCiGEJrvyUrzc3+RlLbkXN78diHHw3wOvg7q8xAK20Wy5Ww/sA4jBm6st+rm
	rPBPRXSRGq625BFRCwGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqRfZ-00000001k2u-2cpB;
	Thu, 12 Feb 2026 08:03:25 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqRfW-00000001k20-3Mwv
	for linux-phy@lists.infradead.org;
	Thu, 12 Feb 2026 08:03:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1770883402; x=1802419402;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=MR6WNFmUEHASiZvvoTw7fDE9RhCGXyWLjg4xM2TFK08=;
  b=gHPrTDixtCyo2Ox65ZnCaYFkK63Pc6egCMsyckLlIpj3lkhlUzHoBo8A
   7t5diqYn3OwM2Luv8+hTm64AgZ2TX64BnDi86H9OZ4tXlqUHGY8bSWuz5
   HkEDz+dfanN4q4I7nOdF83qfcuJzCmhIk3nbcy8akbVjVaN7yCnDq8y0t
   Wq+N+sWzy2YueAs/LKNNPsgO1PD1q3wU68tIIY5gKJI+SyXnxhNly577R
   0eV5adOaxx6gfckycHiUti+tIMwcDFRrCZwHtbvVf7g+k56ALBlXSAH6c
   xqaQbop0w1JxGSVLWpvVxghaFDGOJJHZvlrcOvzmri8gJ3jN44okn1oJg
   w==;
X-CSE-ConnectionGUID: oKJcZJgbQ9i1jXLlpVQDxg==
X-CSE-MsgGUID: iNvjuQNhSlqusIWwUZZGKg==
X-IronPort-AV: E=Sophos;i="6.21,286,1763449200"; 
   d="scan'208";a="52575919"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Feb 2026 01:03:21 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.87.151) by
 chn-vm-ex3.mchp-main.com (10.10.87.32) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.35; Thu, 12 Feb 2026 01:02:46 -0700
Received: from localhost (10.10.85.11) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2507.58 via Frontend
 Transport; Thu, 12 Feb 2026 01:02:46 -0700
Date: Thu, 12 Feb 2026 09:02:45 +0100
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Vladimir Oltean <olteanv@gmail.com>
CC: Vladimir Oltean <vladimir.oltean@nxp.com>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Daniel Golle
	<daniel@makrotopia.org>
Subject: Re: [PATCH 0/2] phy: microchip: lan966x: Allow to invert N and P
 signals
Message-ID: <20260212080245.nitoya2fmu6d57fe@DEN-DL-M31836.microchip.com>
References: <20251110110536.2596490-1-horatiu.vultur@microchip.com>
 <20251110114216.r6zdgg4iky7kasut@skbuf>
 <20251111095016.42byrgj33lp4bouo@DEN-DL-M31836.microchip.com>
 <20251113163023.syl6nxq2mqkxpz4z@skbuf>
 <20251114103411.rzigaoictyinmx66@DEN-DL-M31836.microchip.com>
 <20251119192326.4bflaqkh4zvz2rib@skbuf>
 <20260211122254.4mwzmi5auxddsm5k@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260211122254.4mwzmi5auxddsm5k@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_000322_944744_1AC0AE87 
X-CRM114-Status: GOOD (  12.47  )
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

The 02/11/2026 14:22, Vladimir Oltean wrote:
> 
> Hi Horatiu,

Hi Vladimir,

> 
> On Wed, Nov 19, 2025 at 09:23:26PM +0200, Vladimir Oltean wrote:
> > > Anyway I can wait with this patch series until you get your changes in.
> >
> > I will keep you copied to the patch set which I hope to send later today.
> 
> The generic description I was talking about has been merged as commit
> e7556b59ba65 ("phy: add phy_get_rx_polarity() and phy_get_tx_polarity()").
> This set should be dropped from Patchwork. You can send a new version
> after the merge window closes, or an RFC at any time.

Thanks for doing this worked. Unfortunately I am currently stuck on some
other issue, when I get out of that I will try to update this patches.

-- 
/Horatiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
