Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B69DBC004D4
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 08:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kV/0l8ecF9qOF9Bmb5Kc2ytZGY99+upF9P7mEOYSUu4=; b=LaGdTnaGenTrP6
	ynIT10dGQLuQxQDZHdVIPel0aiQK2Q1UCpAzIrB6lEmOTT+5IV9grGms4gYfq45NhnRptkpEDSQkP
	SHgEJWNYXbOwnWN2rkuPqqSVWvwaHfYmWtkEh3mtl6yZUez9VwNIgde2KFUVY5bD3NaTGVNO2KVGf
	dH+ujfIBD1weoe4QfNECl7e7yS3PbaKVZl5p/rVHC9r5SovnH0DSX7XPdSZqqe4hh92QS+zMXapYx
	72RfgAciM/eAx6pVo6loOOcuI2d9f2tNAaz/eiT2ydt00yjlQWdtpmItVDG7FJUuNatgrpf9nVAnQ
	rszPup/i4UizMeZkv0GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI3Y9-00HQmO-4x; Wed, 18 Jan 2023 08:12:01 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI3Y6-00HQlq-0d
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 08:11:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4D72F6168D;
	Wed, 18 Jan 2023 08:11:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A985BC433D2;
	Wed, 18 Jan 2023 08:11:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674029516;
	bh=fLeRuQVxiw9tI+APR9Y667hU7+gwUKduzbj3LXSGHSA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IsCICPXwLinPf+G54q3VEBv/bfjrnmeq8gDvENV6ITJQUO/FPkdBX6BZvZan4WWPO
	 Lhr2kDVBzWgr7OlPznLcxBbTj+cF5zJk3Qrz9VVK4anYBaus4USGiVUZp43C4sau/K
	 GNWJJcApq37VdoOO9UsNjFtiU5YfxqYK71H6iem3lzR44FFI4iruG+fhurOC59qbZs
	 wGXoHJkUD9YjMfLAZyFi0eb6+PgxMSqJrRm+Si5KzKJJanzXQAFf2zRwmInWTY7Zyo
	 B7cgQROkfDSXTqB1/k7X0qN8M3EGhsjqZdnvmj7Cqz8B2zI7rZ/QUcdhw1uwKOGeSJ
	 j00VZPN2Y9aaQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pI3YM-0000aA-Je; Wed, 18 Jan 2023 09:12:15 +0100
Date: Wed, 18 Jan 2023 09:12:14 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v5 1/6] dt-bindings: phy: Add QMP UFS PHY comptible for
 SM8550
Message-ID: <Y8ep3jXNRPSIVwUy@hovoldconsulting.com>
References: <20230117224148.1914627-1-abel.vesa@linaro.org>
 <20230117224148.1914627-2-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230117224148.1914627-2-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_001158_112106_3C18A789 
X-CRM114-Status: UNSURE (   9.29  )
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

On Wed, Jan 18, 2023 at 12:41:43AM +0200, Abel Vesa wrote:
> Document the QMP UFS PHY compatible for SM8550.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
