Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABF64ECAAD8
	for <linux-phy@archiver.kernel.org>; Tue, 13 Sep 2022 17:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6BzH82yjdfWXVyfJdIDi6M/j+51Rf18XA2vjQOS1Qps=; b=AthKsmsL5DNHOE
	8YN6oyj+YMlkoP/RLbfwNi6sRh+n4VQwq8z9gRrCHXv5TPrcI1NOHIuv8l5UuYV5LHZ5akS60RKPU
	ETVYSDoDWYUq837YTQxYwODeMMgec7F2EGgo/u07UtUyB+4VskWVPclvO8xG9Pz4AbijQiZtKPSCI
	4iZCaGTMyOygcE2aDwxZC3mOcrWQRy3QG4KwJF2A+rzudiCEtut1ZkcHUH1NjmAxwz3kdzPJZLdxv
	sGfYanmZAY2qF6FmMILcYiDmaM4ceijrddWnfQ2PnIK3/O+5K7ezIEjTqopnBTmO/7GQiuqFBEIeR
	IQ52fvGmim5nfc7l/ZBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY9u9-00E7yT-Lo; Tue, 13 Sep 2022 17:41:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY9tn-00E7kf-Om; Tue, 13 Sep 2022 17:40:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 169186153D;
	Tue, 13 Sep 2022 17:40:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A97B3C43142;
	Tue, 13 Sep 2022 17:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663090838;
	bh=B7oGOaWd2RGDT26f5fnBk21I7+zmp5Eg+smfvCn/Y+A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u7PFeIqCElucLRJP2yjLvSQZq+11WQ/MPIkLHcX+smGJKAA6pPTBTWtL+TI4z6Iur
	 pKes4LpNCe26TZjdBQhatpG7nT0moigtvbcYXSC7++xL1LKtye0jCEVTCamqEE78tB
	 mTntBQXmfxe2fFzUgrwGe052UYIWSTqwe5COO1E2PLwTlyQeG1v6UcwVglu31AEy4U
	 rul6BRxaK/Ve8wF1CEUqU497e40XmYfSgQfArQnw3Y7Fz3XOlSJjiv4xhYvkezHszu
	 uphSnz7eqvXmSsfxJoguaCShWiYpqTso4VB635th+52Y7euZZYuKUaX9Txk60r99Y1
	 MUcecbAm8fL4w==
Date: Tue, 13 Sep 2022 23:10:33 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: robh+dt@kernel.org, lee.jones@linaro.org,
	krzysztof.kozlowski@linaro.org, krzysztof.kozlowski+dt@linaro.org,
	kishon@ti.com, dan.carpenter@oracle.com, grygorii.strashko@ti.com,
	rogerq@kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 0/3] Add support for QSGMII mode
Message-ID: <YyDAkSwaiOdNgUV4@matsya>
References: <20220912085650.83263-1-s-vadapalli@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220912085650.83263-1-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_104039_890374_9EFB0761 
X-CRM114-Status: UNSURE (   8.02  )
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

On 12-09-22, 14:26, Siddharth Vadapalli wrote:
> Add compatible for J7200 CPSW5G.
> 
> Add support for QSGMII mode in phy-gmii-sel driver for CPSW5G in J7200.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
