Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BC8BC433FE
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 14:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M4OuqYz8z+uyaQNxoh8zUjNJr+ROQwkdch866+mML3c=; b=mUjkTjpdJsJJAr
	Fr5KXW1CLK7YvG0VBPPx1lXq2631/Rg2JToDLiikgXHUu0E5klsW+lEb2rmLYdksxyuEM1aLxhJjE
	HdjUwNKUYe63l8IlWOfDnZ1bu4Vb797JghP25w/Q24aJpAnaqzgybhzFFyxco3ARVFsYTx08E6lgr
	OlqRXPwSsbqHhzKJSpbeXhNhlESI9dmtdQolVh0txhHf00VVH7aVg9WdV3hzwOCJKBp8n/hEvQT/K
	ki2yCV66RztF9nCeUSFhOCORChOVioa/81iu0IJD4trj5zpofSIerjtDgOjqcYwoyMU4q7wAct7iZ
	+/jf8U3y3WcR4YRcuFBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orKHx-006iDb-GD; Sat, 05 Nov 2022 14:36:49 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orKHn-006iC8-JV; Sat, 05 Nov 2022 14:36:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 0FAE3B800C1;
	Sat,  5 Nov 2022 14:36:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D78FBC433D6;
	Sat,  5 Nov 2022 14:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667658996;
	bh=52TKqIbhnS62Q/72czcmLXuVPsKn8wYMZw9uC8i06Ks=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JlLT3q1RETlC0q1kSaJZlmL0yRjHKpzr4uMdnW3YBisdDg4apo+yn8oDhbFsjFnr+
	 8e+SZh/2UNV5qFXhfnLskoJ9IA/8R6h98bNPbWo7NiTOBTCx7UaBiBfAu4cdnBGyQE
	 zvRQVJBZDAD3Is6NOuc7jDJio1+Kxh4NWKzPXyYukgWy9neXi8Ou/np0MmVldmbG+j
	 uWwtOxkExRZP+vwrzFttDbBcNSy3BK1Zd+/chOA7TdHIa8aCWPflH9GfALI2Q5oDxf
	 VVy12aQwEun5liImB0oAHOiM+LheKziyXZsFZwd/lGrD7Mq3YooUJnrUk9A5lILVlG
	 tkcAwoFaoylRA==
Date: Sat, 5 Nov 2022 20:06:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: robh+dt@kernel.org, lee@kernel.org, krzysztof.kozlowski@linaro.org,
	krzysztof.kozlowski+dt@linaro.org, kishon@kernel.org,
	dan.carpenter@oracle.com, rogerq@kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 0/3] Add support to PHY GMII SEL for J721e CPSW9G
 QSGMII
Message-ID: <Y2Z08OqiY2aYmgbN@matsya>
References: <20221026074532.109220-1-s-vadapalli@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221026074532.109220-1-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_073639_810524_FB159E40 
X-CRM114-Status: GOOD (  10.57  )
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

On 26-10-22, 13:15, Siddharth Vadapalli wrote:
> Add compatible for J721e CPSW9G, which contains 8 external ports and 1
> internal host port.
> 
> Update existing approach of using compatible to differentiate between
> devices that support QSGMII mode and those that don't. The new
> approach involves storing the number of qsgmii main ports for the device
> in the num_qsgmii_main_ports member of the "struct phy_gmii_sel_soc_data".
> This approach makes it scalable for newer devices.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
