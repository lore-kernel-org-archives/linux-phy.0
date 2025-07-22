Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 013BBC83F34
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 14:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ny7axWrhbVRYiQL45Tmjf15HvLkppCkSWBteYUUwwv4=; b=tWbsch/NdawbvG
	dsxTMpzlGGYcAkZmSMQruuDEJ8eDm4stLTqBqg3P9zwCQetDOubgqdW70ol442ohZa+/LtlbYUIok
	0zFVNgaW5OnbMxck7nAgYJv/kqkp3NOkDm+sqGLkMBdMzPgCumW5Hmm9nADqjU0e3c4vs5x0buzP0
	rDtZNxvkZ7WAtLwvcF8mNPihozHi2s9iDnELY4BFOOvQtvghz9Yhy/gpTXYA/XukYKJSMQOsxEWyz
	pN6zwdRWb3m1eb00bxDy0SC27Rkq6KWLbiLqbJcxlYtvB0uLSQoXoLBtKelS9TZ2Ir+53nBaPJII+
	zGIbBIRJFg2t0AlQvYtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueDoT-00000002fux-3CR2;
	Tue, 22 Jul 2025 14:17:49 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueDBf-00000002ZM2-0JqJ
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 13:37:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CFF1D41A88;
	Tue, 22 Jul 2025 13:37:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 489B3C4CEF5;
	Tue, 22 Jul 2025 13:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753191462;
	bh=19yBFzDmu5QiQTTTGUCqhuUWVhFvwAFT+PqajB6IGqo=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=CPw/Qnszvq4+yQ3ZPOz6ILa0ml8Og4sZI8c6MbhdqAr5DTZSOJJWw/yuazrjnRsOi
	 xOlMXoVe22NsvkEM1Klq6XcJ++E6T5Jd3Lb9GCEvvauorJrnfOZvHnGS9XTZz54yxc
	 Tn/yyASb92EiB+cVyEGxWtnC0yB/0jds/4+EZNofShHYsZ656doefTX7sf8IAUmwzg
	 uHnXOfldzkFUwqdAW1aQzlAXScNlUrSTJs0tI2VQhAw8hYvLp51WRAAdi7g3r+os4i
	 P/hIJ9SWA5j5T4IDzsg82DJ9J4qcSGpgfr8IM7AWdLdHaE5l5ve1gj9b+sMh4LpB7j
	 F28RtDCqPprjA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250701063636.23872-2-krzysztof.kozlowski@linaro.org>
References: <20250701063636.23872-2-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] dt-bindings: phy: marvell,mmp2-usb-phy: Drop status
 from the example
Message-Id: <175319145991.114152.16396253727506565143.b4-ty@kernel.org>
Date: Tue, 22 Jul 2025 19:07:39 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_063743_136204_0A704653 
X-CRM114-Status: UNSURE (   4.78  )
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
> 

Applied, thanks!

[1/1] dt-bindings: phy: marvell,mmp2-usb-phy: Drop status from the example
      commit: a91ec5efde530747c23f3182cc5b53ba99b57051

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
