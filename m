Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3727AC5AC7C
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 07:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QjQkIgDa3S223NHbsz0dnS21Vkyd6bg/YakQl55EaNk=; b=4WiC247zOJ+swO
	/9mi994FKCur6OwV6KXuf8Lm+bFOE7twxG3LoQbxg7yZovrg9tUxw09DsLyPSQnAs/m5tsnUydVDe
	q5D/WxGsJoe3zQdANHV81D2aqg093SohIVwUM/GlFwkCwFCl6bPeDmLHoVMg3LwUeH05tc06viCAM
	zfBtRwCIiwNGMa3G77CVFIgrtxEww065TsnHCBVVWOSYW3bx4vOMHCKOzt3NvbJUaGw4UNwyyhNkt
	juP4gUv3YnHsuxYSv0mk5YlRSswnxiE2zoIx4PnWCp7eQMzOm9b0bSt20DiJQ++guLq2iG7PxuPof
	CkwORApKxSXZ31GlSnpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsFIO-00000007IYD-3lxp;
	Fri, 07 Aug 2026 07:47:12 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsFIM-00000007IXq-3RFD
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 07:47:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7D91E435A9;
	Fri,  7 Aug 2026 07:47:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E2591F000E9;
	Fri,  7 Aug 2026 07:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786088830;
	bh=BfMr0s7HAoputFERjTs1A10wPfKvLBl6kvW4bF7N1hM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=gLZpAlI9CYl1PRLy4rN5NbC6rVLytnFNKzKoZa0m0V8nIdU97XtCHGG9mKVBlvF4C
	 +VRX8tEZfrbBrd+yGJxoRT0iXqMDqG4AgvcGCnS8jsVuQXXD4AZEe39pyQy/+eJN4q
	 F3dvE03EiyFtMlSPONRkXLbN5iKdFxC5gPCfCBNWGzXXz4rzRUuCnfCTpghB0n2zdF
	 tcOx1hvrVHRsAtvizNJdA2CZzLqUOGx4rtr7ztFQol5SsDhFzA3zndgiXmKIv82c9G
	 nrqcjCtVDJKokfGJE6SMseXJE0NV1iwBXJEhju/IstovSVrZG04cQBWCtVRVC3c0rn
	 oi+xq7RtBPRZQ==
Date: Fri, 7 Aug 2026 13:17:06 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Esteban Urrutia <esteuwu@proton.me>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] Initial PCIe0 PHY support for SM8475
Message-ID: <anWNemb2WCYUwRJm@vaman>
References: <20260715-sm8475-bup-pcie-v2-0-48bd91a19abf@proton.me>
 <f0c1eba8-c6d9-4831-a460-980bead03c4d@proton.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f0c1eba8-c6d9-4831-a460-980bead03c4d@proton.me>
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

On 07-08-26, 03:27, Esteban Urrutia wrote:
> On 7/15/26 2:37 AM, Esteban Urrutia via B4 Relay wrote:
> > This series adds support for the PCIe0 PHY found in the SM8475 SoC.
> > The initialization sequence varies noticeably when compared to the one used
> > in the SM8450 SoC, hence the need to add support for this PHY.
> Any chance on this series being picked up?
> Kind of related (since both series belong to the same subsystem): I
> resent USB SS support for SM8475 some days ago and this has been picked
> up already.

Already picked up, should be pushed later today

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
