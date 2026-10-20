Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA93B606A321
	for <linux-phy@archiver.kernel.org>; Tue, 20 Oct 2026 17:00:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=X0sFAdJR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d7ye55ugNUMYfOEhO1v00znB5Js4JoluX8YqbIMcEuE=; b=X0sFAdJR5jm7GS
	rOas/7j3Bb8ofx2qYftLNUUQSXj5cFgVCdoYItPonBuxdUr/LmwM9ZP9MQzdDGqE6yeEXpZAO5cjk
	fJh3sII+0jGJuC69fSG25RULdyJN5n49OdxkfyVWVRa0licwpWweGaoIVMvHR27hMoY3Y1c9WsQq5
	RrADFtSr3RLmsoaOA0qL1Ldq3j6ri9nmljCguLvFJRUsG0oJahFuDptG3GPRMcVWD8yi+X4BTUYGx
	esE5fa61LTGoRXtEDzBtEYMgQu7TSzQcGo8oQGu70L3JsOd+5Uhlvn4w5Is1YoFHIhsKaY0GiOh7w
	fPFmczqvXm8X3SCkKQUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJDCQ-0000000AIAZ-1y93;
	Tue, 20 Oct 2026 17:00:30 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJDCP-0000000AI9a-05hb;
	Tue, 20 Oct 2026 17:00:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6C7474129D;
	Tue, 20 Oct 2026 17:00:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 321DB1F000CB;
	Tue, 20 Oct 2026 17:00:28 +0000 (UTC)
Date: Tue, 20 Oct 2026 11:59:57 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: linux-phy@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-kernel@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	devicetree@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: airoha: Document support for
 AN7583 Gen3 PCIe PHY
Message-ID: <179251559688.4163940.7901807887627397046.robh@kernel.org>
References: <20261016071225.2092-1-ansuelsmth@gmail.com>
 <20261016071225.2092-2-ansuelsmth@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261016071225.2092-2-ansuelsmth@gmail.com>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Fri, 16 Oct 2026 09:12:23 +0200, Christian Marangi wrote:
> Document support for AN7583 PCIe PHY used to make the Gen3 PCIe port
> work. Add the required register to configure the PCIe PHY and provide an
> example for it.
> 
> The PHY link to another PHY (the QPHY as described in the YAML) to
> correctly handle Gen2 speed and mode. It's mandatory to have this PHY
> configured for correct functionality of PCIe. The QPHY is a unified PHY
> that both handle USB and PCIe PHY.
> 
> It's also mondatory that the QPHY setup is done in the PCIe PHY setup and
> calibration phase or calibration might fail.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> ---
>  .../phy/airoha,an7583-pcie-gen3-phy.yaml      | 65 +++++++++++++++++++
>  1 file changed, 65 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen3-phy.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
