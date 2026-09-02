Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8A93C61DFD
	for <linux-phy@archiver.kernel.org>; Wed,  2 Sep 2026 08:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3MQcq6IdHcqSRB6JJWuwIW55/pxnxUqC8tpya5oL0kw=; b=S5AlCr8OI2b/1Y
	40aX87z8G+huB9vJvaC8J6FAoblXxJO7r+C0qaWIRfKR6TbEgAfeNzD4hT/DZ3vTi6WzlR75QLC8W
	1eYVsKzs2EkTXt0lYNy+Nkuo9q994JP2KPWnUDTOb66n+5/ScEhdaLSWHupnfGKmFHDsIh8Ullw5g
	2/Xy6gkk9dIOY/jezu654BXdZr53cYeLxfMCy8dCUDLln3zgyWJyWFhnQhUUs/cAB9Lqc58yOQUyR
	YuyThk72czwjO4ZUb8v/uj6MqqwVSQD68rizcAFpkEgY7i+KTjt7YQXUE8xZe07MorCct5gkLL7+N
	cLoR/PIkaj/VH8fOLnag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1gO2-0000000E6SU-21s9;
	Wed, 02 Sep 2026 08:32:02 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1gO0-0000000E6Rb-42QA
	for linux-phy@lists.infradead.org;
	Wed, 02 Sep 2026 08:32:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 247D2600C8;
	Wed,  2 Sep 2026 08:32:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 177DF1F000E9;
	Wed,  2 Sep 2026 08:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788337919;
	bh=T9ZeE0QirpKgRV9SeRBgkpSXIWcYubZd5IIxv6IS8j0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=laV5BRAu/DmrwvRGKyDQv+QGUMHyNrZ02642iUfk3zRlTSdvtuk5BfxAWneFTSoJm
	 5+NSPxJZrYr1V+uqk/967KS+FxpbamxfiOcUFnd3VBjaHZ/jdkacoNs3UTGhURIM5O
	 ugDduvlI5D7DB261AKAjDXqbSLSmm9feDToKJfr3KH2wsOr6k4atVNcKXWaM8F7pJz
	 4TKRyAmcclZ5zi3GVdIjzwyPQO0HE6Yc6hLH+/eCj1iWt2FLqKwiPk73x7ARSRzh+2
	 waXvuRs55afUvFbFV3Mi0lO9qD80pUhgmXnW6Rwif6dA4i6F3G+5ZYdRShC4ebo5Ic
	 pZno37jntPdBg==
Date: Wed, 2 Sep 2026 10:31:56 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Mattijs Korpershoek <mkorpershoek@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: Add sa8255p high-speed USB PHY
Message-ID: <20260902-artichoke-gopher-of-serenity-85d259@quoll>
References: <20260831-phy-qcom-snps-femto-v2-8255-v2-0-dc6197ffde1b@kernel.org>
 <20260831-phy-qcom-snps-femto-v2-8255-v2-1-dc6197ffde1b@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260831-phy-qcom-snps-femto-v2-8255-v2-1-dc6197ffde1b@kernel.org>
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

On Mon, Aug 31, 2026 at 11:31:21AM +0200, Mattijs Korpershoek wrote:
> SA8255p platform abstracts resources such as resets, clocks and
> regulators in firmware. The SCMI firmware exposes multiple protocols to
> control such resources which are identified by protocol_id.
> 
> For this USB phy, 2 SCMI protocols are exposed by the firmware:
> * power domain management protocol (protocol_id=0x11)
> * performance domain management protocol (protocol_id=0x13)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
