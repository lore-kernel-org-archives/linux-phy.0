Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59C75C982D7
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 21:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g/sxf/udMtoJ7573MMBcqthi8lJ5NnbbbMGpGt71IRo=; b=vS/ODXR0LSaba8
	/Tpb62VB/WpBQdA58uAruW4XgMEN39aYsFk0jJ6OKeeJfEl0N30K8jJa5LsoP778gj2lj8EOj4JYY
	jKMpTBxeg9UOSZFrgT0IxLtOLFym4a0DBGmc/9+GBOKDrFt/ILw5bGHRFay5dlcAKsIwimVF1M4qR
	Z1hTxXlMuCrQ5DrJtwRZOALHsB5V6Sj2RHgZUwy572D7t+NPsyjvz1MWCEcjXp4JQ8q85jTUfiIbH
	APc6HA9sD98KT1QJofpMgv5WbTvnqihjl8QdngZDjCfPnTsL0qpX/48XvGWu25BvUBxOE/nAYFpHK
	Hz+QSlIK2V8CSThxeDdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7gAw-0000000FZYY-3Mut;
	Fri, 18 Sep 2026 21:31:18 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7gAw-0000000FZYP-0ACm
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 21:31:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 217846053B;
	Fri, 18 Sep 2026 21:31:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 961331F00899;
	Fri, 18 Sep 2026 21:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789767076;
	bh=Z+F1Jge/gf40GN3Yo+EVNabMdoX1NFaEc5oX4U7ou/8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=nw2S6CIR9Qn0VzHmdhz7BHlYs9e8iUx4nc2EKnbeOLQTHxgJe2B0BnRzmB8xdNUAI
	 8U5R7aMABBrOf+k5Iyq+78oGnxZ5j5i4eLS41bBMt42tebvCdBcvQpb/xF72rNbLGF
	 8e6gKLMlK1rBwzgaQ60BKvj3branqxw4s5EsG/fl0NWVDILvuQ23FNZJhXqn0hOmqO
	 Tu8FU7rHpjIxLHTpOTlME/n7lK2sXt15+cD48KFhhESucFtMVOS55I5vZWPRQ5HSU2
	 opGpB1TtaCoUhV5yodaLf6GRyBgZnu6n4fFGZ+cgDbWyVwmrABQsZyqqsLFopBKmBR
	 0aiGg3J3pn42Q==
Date: Fri, 18 Sep 2026 16:31:14 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	linux-phy@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Aswath Govindraju <a-govindraju@ti.com>,
	Vincent Mailhol <mailhol@kernel.org>, linux-kernel@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	linux-can@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: ti,tcan104x-can: Fixup unapplied
 constraint to ti,tcan1042 family
Message-ID: <178976707447.2333712.12279602327236946063.robh@kernel.org>
References: <20260918110116.94024-2-krzysztof.kozlowski@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260918110116.94024-2-krzysztof.kozlowski@oss.qualcomm.com>
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


On Fri, 18 Sep 2026 13:01:17 +0200, Krzysztof Kozlowski wrote:
> ti,tcan1042 is also used as fallback for a few devices, thus the check
> in "if:" conditional should use "contains" to properly validate these
> other devices.  The other compatibles used in the changed enum are used
> alone, so it does not affect them.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/phy/ti,tcan104x-can.yaml         | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
