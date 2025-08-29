Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 956F4CA0FF0
	for <linux-phy@archiver.kernel.org>; Fri, 29 Aug 2025 16:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=is60fJKVmovvkK2dWxDuluS8WhUem6yW2SMMNGf3jF8=; b=d9DYiglbyWQuMcv6I4lnwVwk1a
	2BDcmqPZDmHj3mmBkQIH7jRQ9X15j+zsZboQG/HxBtXoNufk47qjygaiJCI0EAOY8yOT6QajB/U6A
	9xNTlo3F8IO8UUvPc3vhqMAJ63Xsro1gvpQ6Tp2vOQdYjK/Gmfsj3c7/DPh/WLYNpl0YpWBzVVPoS
	suaw4WrydTt6EFCRmeNZiqhXJlqdlAmRhI0cYO/nZgINJ/LgssPZxIVc0Od1swEgVgyKOoNLskSuT
	+soLqWynTT86EngjBD4uwFGoxmWxbFd3FUgVLfKj3Fm+iRptawTxxJz0ofE2bR7HR1ElobkkQnlUy
	yBqvSTaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us2GH-00000006Rph-13ug;
	Fri, 29 Aug 2025 16:47:37 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urzVN-00000005uaj-2Jzc
	for linux-phy@lists.infradead.org;
	Fri, 29 Aug 2025 13:51:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id F243660193;
	Fri, 29 Aug 2025 13:51:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80197C4CEF5;
	Fri, 29 Aug 2025 13:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756475460;
	bh=OBzkyZTISMayaZ8Cyos03TZvoAM7tbY8jXJS1KHHvT4=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=u21tUjf1YOV9Av9A5wWtcdnQyUAjgJgLyxbSAepV7rWJhKzFk51vUjB25yNuw7SJd
	 DnElto4V0p+hll6zA2pfaA6aL1+MAr8u+dPFDc8BZkCDx3gZ79QjmLVZY/56udVqcG
	 LGZWXcUU/Xq0TYJGUPr5monvH24ChEqHRBQM8qvyWwnw4lCYjr6ZhRLV1e4dz7IFjT
	 fjADXD2HEdMcrEyrrDiFyrLPdZU1CJNBpKG1vTkLd72DR0xHMUuOEo3vW05CZYKt66
	 uhaWnBZePm6d9wNCd8iZWhWwBqUvCKHUt3P47l5gkARcxF4c802b/89DWntc+RFHd+
	 ek6hUBDmJ4hjw==
Date: Fri, 29 Aug 2025 08:50:59 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Dimitri Fedrau <dima.fedrau@gmail.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
 linux-can@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
To: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
In-Reply-To: <20250829-tja1145-support-v2-1-60997f328979@liebherr.com>
References: <20250829-tja1145-support-v2-0-60997f328979@liebherr.com>
 <20250829-tja1145-support-v2-1-60997f328979@liebherr.com>
Message-Id: <175647456257.394630.17282056537152186661.robh@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: add support for NXPs TJA1145
 CAN transceiver
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


On Fri, 29 Aug 2025 11:19:58 +0200, Dimitri Fedrau wrote:
> Adding documentation for NXPs TJA1145 CAN transceiver.
> 
> Signed-off-by: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
> ---
>  .../devicetree/bindings/phy/nxp,tja1145-can.yaml   | 79 ++++++++++++++++++++++
>  1 file changed, 79 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/phy/nxp,tja1145-can.example.dts:21.21-33.15: Warning (unit_address_vs_reg): /example-0/spi/can-phy: node has a reg or ranges property, but no unit name
Documentation/devicetree/bindings/phy/nxp,tja1145-can.example.dts:21.21-33.15: Warning (spi_bus_reg): /example-0/spi/can-phy: SPI bus unit address format error, expected "0"

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250829-tja1145-support-v2-1-60997f328979@liebherr.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
