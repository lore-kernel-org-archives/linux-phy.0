Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBD03C001B5
	for <linux-phy@archiver.kernel.org>; Fri,  2 Sep 2022 17:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GoeCcVe4XQB6By7NNa7YRMgamGGKwNTv4GslCoDcL8Q=; b=URlz7bJgH4rJs0
	lTUl3wreuWv6F39fXg34mvid8knYC8aPcIAlTrNAYzJ4gBwREsNMJCcW/tcHui5A3jSAFpFVbB8yT
	xVwZLzLRpP4x3FXqIMQT+UEXR6GvJ6BSclppjsV4ved0iI+8a5h5bRC/35ZLJFND9ZuDbDqI2INtC
	TrRYpaCFVbixifx2p1WBeHAF84FvxrW45fx5JOTOHYk2SE3zhjpJotPhljZ5JVEiFUoN0tUBsDWHQ
	p69+Caj9jPfht40+bB3n7ei1dlbGX/aa740qDkQhpE3f5lPaXmknChmqGJWyew4tjNT9IQod+WBX+
	SQqNtzjZ7rULmRBfEdmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUATW-0087Z8-DE; Fri, 02 Sep 2022 17:29:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUATU-0087Xh-LA
	for linux-phy@lists.infradead.org; Fri, 02 Sep 2022 17:29:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 043DC621E8;
	Fri,  2 Sep 2022 17:29:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B2AAC433D7;
	Fri,  2 Sep 2022 17:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662139739;
	bh=Y4zv07NX7Af0mypsr8VN1DC6DfzrXJ+O+npkp3h71Ho=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LSfjiyiqimzqCPXlykQvTii1/uNQQ7Sc0nX4lQOUJU8+WlKZvMf2cZq3MHoxgmq4r
	 /K1JSGy9NAlDgdvENO7vywavNy1sThPLkMDY0O33LoRCQd2yS04ulV1t3oT3p1HYIm
	 +8TOCMrfp83kQ+MXFmmfUwdty9RwrS0gv7qK06wtQCmyJVL8rdGLpx3jUIQLs7PZxT
	 9WgArCKNopqdnvzfzMKgQ2ResayQKDFrdfQx1K5hVeAwvuLjylq8zDOQ0RFjalhr1E
	 oUpsKbS7BFfUo8tYKv0kASHqEfH1F6CvDgtVHp1Lm+/CwX5nS0WKKLrwb1s0v513QH
	 Wa+1dC8/Inehg==
Date: Fri, 2 Sep 2022 22:58:54 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Pratyush Yadav <pratyush@kernel.org>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: phy: Update Pratyush Yadav's email
Message-ID: <YxI9ViXF7gMc5KcM@matsya>
References: <20220816132131.75591-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220816132131.75591-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_102900_763968_F3D76487 
X-CRM114-Status: UNSURE (   7.56  )
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

On 16-08-22, 16:21, Krzysztof Kozlowski wrote:
> Emails to Pratyush Yadav bounce ("550 Invalid recipient"), so update to
> match one in commit 92714596cdbe ("MAINTAINERS: Use my kernel.org
> email").

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
