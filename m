Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 086A6C83F09
	for <linux-phy@archiver.kernel.org>; Tue,  8 Jul 2025 16:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RnqWQjV+yH3iezvwJR9Mi/WBamBtHFVZw0w/GEJamC8=; b=hstea2xTm4AnCt
	CgJ5rGw+Wf9CwZQ4SCn9Iz2HZ9rb3OIhtfVJzEEMDp/9TWkOabLo64QKVvb3svt/GYVd5nR5NGcgV
	55mMHlUZ7Yh/hN4rltfAN9NyZPYcNWihsLRjNH7rvaHqxB+pZYIJmqUgwnUC/6ZsxDIiUUJq5SI+V
	2WxvRudOYpkf3RiuNfkqvoBQI5cRbIo4N23lrm5R/sOAQ8xNR2/nThs7EH7I9L7tlKFDjsGPX00IS
	IEl/Lw9G+OIXz3EF3euze5Nz0wISBX3BFCsWRfpM7NIVXcV0kzqzI3fse30vOwXNz4AbRaLhRPNT+
	7Yp56L/YrjlMLziKIuBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZBYA-000000061LP-2r48;
	Tue, 08 Jul 2025 16:52:10 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZAs1-00000005vD7-18qV
	for linux-phy@lists.infradead.org;
	Tue, 08 Jul 2025 16:08:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E4BC645429;
	Tue,  8 Jul 2025 16:08:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0936C4CEED;
	Tue,  8 Jul 2025 16:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751990916;
	bh=QBTLFLLxhUFAfscAGxdFP/ok+pKAvAu2bYu5mW3qwzo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C+LJ2EdouAD/4xOTwU7lRUtmWU7zj/FuQ/UtIh3caLTa8r0NTSaz/IdxYyiEnDQPH
	 JBnYcCWY+WbYDzD1EEQIZsEYtT0S4iEE48Kcu/UsfOf96YPHngTfdBrVXdJiUsdRe6
	 GEhJa7CSBA7ZGD4SZaMXXPaX9IJBHDRti5zLE+ezpOUnNw4jdYtce68S3tjFcB9/g5
	 Nb/C7U+X7XMvAqpJ7S8jlPaguPEhiQ6IT/4c3/T0FrOFuAxmsaCsMGfRUkRX32xT6l
	 MeDe9LRoQeg8I11T6VV99XOIp/ZGG0ki/r06uXnUYtP0j6+F2TKzxvWPAzIU/obT1q
	 VO0pNFimGLXlA==
Date: Tue, 8 Jul 2025 11:08:34 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	Lubomir Rintel <lkundrak@v3.sk>, devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: marvell,mmp2-usb-phy: Drop status from
 the example
Message-ID: <175199091400.508698.18446134330656414688.robh@kernel.org>
References: <20250701063636.23872-2-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250701063636.23872-2-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_090837_333554_53023035 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
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


On Tue, 01 Jul 2025 08:36:37 +0200, Krzysztof Kozlowski wrote:
> Examples should not have the 'status' property and 'okay' is anyway by
> default.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/marvell,mmp2-usb-phy.yaml | 1 -
>  1 file changed, 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
