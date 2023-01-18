Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58396C46467
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 17:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HRa4dhbGlLwImVsD7a187/nYDPB0jD+/ae2HfWQDGNg=; b=Qd2ZyZ0ilN+Eh0
	obsgDgm1wPVvou/npWn+5zBhqU56zt2pvTG9bxyTR8I3536zxijwgdgFBAcM4KzjnOR2X8loZ/osP
	wUKQm4aFRHSwecKI6xYTn38mSm25aVt4v7A0Nx2ZK29jANCUCsuMU/AYa381ocJvgR7rK9IguNn+F
	+vFYSuU/n86Irt5+KyCGZi7E726AnTqBTS5Mk9pY8BL89BzvFKaNoiZBVWj+pvQv+hCdRgmOPdc5r
	l4ZEEiFsRbbBoRxwl+ObQTL31eYwhE2mbCUPthz2BSpaHPtFqS4v2BixAIOyODariGJE1W7VVAIvA
	ukM4qxHMHmCsTzzJXh+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIC33-001zku-Ov; Wed, 18 Jan 2023 17:16:29 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIC30-001zji-J4
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 17:16:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 2F298B81DE6;
	Wed, 18 Jan 2023 17:16:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21F59C433EF;
	Wed, 18 Jan 2023 17:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674062181;
	bh=7Rm4jQdN1OkFflN97SFAbA4tT29tk5E2fWswez94coM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Fjz+B5WxgjkfjR6nAztq5No92inuDPAf6rMkn0T2Vaz0E1nc9JTl41HUXItM+/cX2
	 Ayqc5eq84USh2Wbyv1BgNaJOKQliXBGRXkMDAgtuBYhCtvDYxlA/ldVplW1Yp5igKS
	 bcFUk+uQ0RbAkRqr21G4Sd9VTqnOv/bM5nHVWni6hH60KIKFFU1ZeSwDQaHUkzfJSQ
	 XeCxE3lJdrMDOm5IlB8SfZioGXRJsYqhmZlHKTdmPvVbFpWwAY2R00BxNcgQ1ahFqO
	 SDUoVqJrfLBwA1M9osIp5iYc2a8h+z6amBJdeW6kHlPkXUHo+Fql+oXp2/9At32uP1
	 z+TmUYWiwkV3A==
Date: Wed, 18 Jan 2023 22:45:44 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sinthu Raja <sinthu.raja@mistralsolutions.com>
Cc: Roger Quadros <rogerq@kernel.org>,
	Ravi Gunasekaran <r-gunasekaran@ti.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Sinthu Raja <sinthu.raja@ti.com>
Subject: Re: [PATCH V4 0/2] phy: ti: j721e-wiz: Add support to manage type-C
 swap on Lane2 and lane3
Message-ID: <Y8gpQExHEVPe0g9j@matsya>
References: <20230113150615.19375-1-sinthu.raja@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230113150615.19375-1-sinthu.raja@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_091626_790135_D0B3F6B0 
X-CRM114-Status: GOOD (  12.40  )
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

On 13-01-23, 20:36, Sinthu Raja wrote:
> From: Sinthu Raja <sinthu.raja@ti.com>
> 
> Hi All,
> This series of patch add support to enable lanes 2 and 3 swap by
> configuring the LN23 bit of the SerDes WIZ control register. Also,
> it's possible that the Type-C plug orientation on the DIR line will
> be implemented through hardware design. In that situation, there
> won't be an external GPIO line available, but the driver still needs
> to address this since the DT won't use the typec-dir-gpios property.
> Update code to handle if typec-dir-gpios property is not specified in DT.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
