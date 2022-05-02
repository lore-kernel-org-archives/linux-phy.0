Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5D7AC433EF
	for <linux-phy@archiver.kernel.org>; Mon,  2 May 2022 10:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hMLuUd7PlsYVNkOvbRSvZ8t4AVWZYMc5OCKJJ4uVpR0=; b=BSlqK4FFuLWWDe
	pYUwsyWEKCEkyu1vAjrNS/Yan15WDg6S1XDx20X3Mat4uO60ukQ4Te71ZYXPiOMmH9jkhfIW9zzrl
	ymskJgqZV44rabYiBZBxjHe7QnaKFLkxGrGsUqI+4ozS/uSJ8WlvgxJTAf0I/Ik00cj2CX9wgjJwI
	pEF6UM83PG7wh3K/tn/SleSBx0h38ipDRvyS2BYuOThSZ+OU++hxEibXqIFesiCVxeQefP4qZVD3V
	gEOM9BYINTT86oqyEC1mYUTwEUOfY8nBN//MDvx48x4jT8b99JbG5N1xA/YITQB8cgBk8psc5Lz6w
	a4e8EtkSfH5saGLaXF8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlTMu-000pe8-6f; Mon, 02 May 2022 10:33:28 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlTMr-000pdJ-NY
 for linux-phy@lists.infradead.org; Mon, 02 May 2022 10:33:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0CDE261249;
 Mon,  2 May 2022 10:33:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6C2CC385AF;
 Mon,  2 May 2022 10:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651487604;
 bh=uInsqV5BbF1hPLVD4K6DOp7gnW8sCVYRtV1ONPWaw3A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bUulD2gXfQRbTqbLi8zEhJCtzft3nldTQw73H5suSvw9gzMU2NixVVr7zd3uOMR0z
 I+lZGawqROAd1Qz5qzuI/OfQuHsTJ+k92FjTZG6088pEIOGHk2kFNPUI5dQxgN45Lr
 fiQBJCUlsbwOwf+GFi5aJ1lTRjltcV5eNSwadh917X5U2ILpNBBQ1Kp5smrcaXnXBY
 5pkBZKEtk21p6aYJ2EJJN9MXGc9ttdL9WVutp1IixBipeZGmLEnP+enq3K2Qy1pcTp
 V6Lsq0voaalT51W4/EQPgePLsSotmVEogyHWuD+1juAAuSZM1fNMwii2QljIEmnpJX
 sDVMRfTetKwmw==
Date: Mon, 2 May 2022 16:03:19 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: marvell, armada-3700-utmi-host-phy: Fix
 incorrect compatible in example
Message-ID: <Ym+zb4dUTM8vwgL7@matsya>
References: <20220422192054.2591093-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220422192054.2591093-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_033325_948485_C9610F82 
X-CRM114-Status: UNSURE (   6.86  )
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

On 22-04-22, 14:20, Rob Herring wrote:
> Fix the example using the incorrect compatible string.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
