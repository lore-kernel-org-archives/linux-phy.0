Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0FAFC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 23 Nov 2021 05:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QwhUS+JoXkAt9xNqNzhN3W1WlhebVy0Vnv6ubrGa2hU=; b=cEmPiBQLC8bddu
	RzEaBSusZ2tp/y0di+75svfB9jps6xbt/RIYYi9iQ7KNxmjiWyZ7xCZp/5DV9K7Y24dfWZOryf3Hs
	DmImBmAulqcRI9yPoxpQ0Zztv6530kT8UwaRvLEgEy5myO3yJvm/kUswJT9ZvbSNNbSLk9L36+MNr
	GQnuzKY0xBY0yUNvpi/a7kMTxNKPE/TJOkB/jR1R2weP30BC/EtLZoTMJ6WnR7hmBqCk5lDGO0kDU
	bPBeR9OFfPtjSruRhgUAHj9e4i1m4KFrhwJLtLDsdr9JuiAZGXris6IIS3VRzVdiMhopV9zine/A8
	RBAfiF3We8j885Zj3h1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpO62-000p6b-5s; Tue, 23 Nov 2021 05:11:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpO5q-000p5F-1J; Tue, 23 Nov 2021 05:11:47 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id CE1E960187;
 Tue, 23 Nov 2021 05:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637644305;
 bh=pwCsV32PddfqKxDNCQ85J0Dw/5UwXakf4JnoU0OOMUY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PcyE1h4jBIU+Tp4uxwSpOmM48ssx6zW869/ImXd6Il/y9d8BZBBZMSGvE9yJSvekv
 ZtOHq+cFwi2UNNuuvOm4aFP++h3KtT99rZOZSs/Ch8yOngOgcg4bwtsaWcemBqk3Lg
 qQ3yZDqrB6+v2ERFCcZAdMm9UJovxPfeMr27AgBBKxyBMYO4EfJW5QIutn8G/NOr89
 T7agXKRIXin+zee459rS70hovvj3PysssCP3jSrLHAd41/6kDQvOTzPdsFaNBcmH1B
 3s4Mou4EAPrkr6W2bGfzJ/J7bTwgzmRedPkr9WYU9d+3QzXS/pTNckoZRM0IY6dhUt
 Viar+uD2q9edA==
Date: Tue, 23 Nov 2021 10:41:41 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Liam Beguin <liambeguin@gmail.com>
Cc: Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 Liam Beguin <lvb@xiphos.com>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] dt-bindings: phy: zynqmp-psgtr: fix USB phy name
Message-ID: <YZx4DfXl+OBxwKKD@matsya>
References: <20211117003841.2030813-1-lvb@xiphos.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211117003841.2030813-1-lvb@xiphos.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_211146_150429_841A00A2 
X-CRM114-Status: GOOD (  13.02  )
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

On 16-11-21, 19:38, Liam Beguin wrote:
> PHY_TYPE_USB is undefined and was added as PHY_TYPE_USB2 and
> PHY_TYPE_USB3 in 2fbbc96d1600 (phy: Add PHY header file for DT x Driver
> defines, 2014-11-04). Fix documentation to avoid misleading users.

Applied, thanks

> 
> Signed-off-by: Liam Beguin <lvb@xiphos.com>
> ---
>  Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml b/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml
> index 04d5654efb38..79906519c652 100644
> --- a/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml
> +++ b/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml
> @@ -29,7 +29,7 @@ properties:
>            - PHY_TYPE_PCIE
>            - PHY_TYPE_SATA
>            - PHY_TYPE_SGMII
> -          - PHY_TYPE_USB
> +          - PHY_TYPE_USB3
>        - description: The PHY instance
>          minimum: 0
>          maximum: 1 # for DP, SATA or USB
> -- 
> 2.34.0

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
