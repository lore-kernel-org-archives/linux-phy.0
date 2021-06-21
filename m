Return-Path: <SRS0=EqQx=LP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A57CC48BE5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 04:01:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 50BA56109E
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 04:01:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 50BA56109E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YFgRjMdQvmXJnqR7+QPpaCMx3025QnBnU0Ss4MBr22k=; b=psqj6FkZPbwZpr
	2PRIgfMLnSduox1iYbqZ6tEIGX3tdbQinvq7fD8ZnupUAc9rr1e20qD09CdMTWLqofEFDd4h54/PE
	SeSTYWYNW632CcZYXcYS64PNIETKM4lozpRRES+n/tl79Pb99h+TM44cIgb4CO8yNkw+xoeh+nSWn
	g3UqfXQ9z1iA4lnCM5ofabXP6uUooLrjve+4585tH9Bp11v2EaP8l1U9INH3SwuwEQ/rdcbq38ZYh
	BUJAMXC5WVjxOuZYvQ2doID1XZOQnEYX0/iNuYtbwBJ41xqv5f1QYrqnmidD6A65y0BoTZUgjfyNN
	Cd6iqaC9Z477/suYIJEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvB87-0021BF-P9; Mon, 21 Jun 2021 04:01:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvB85-0021As-3C
 for linux-phy@lists.infradead.org; Mon, 21 Jun 2021 04:01:46 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D002F61009;
 Mon, 21 Jun 2021 04:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624248104;
 bh=MGtK5Q8aQv5cOmJha8F0EMM1SwE+xd03W08dLK11hDA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ljax6mjU1oYqOyJmlUcirdeeFHbfv87ldbj0CKVpgzQ73BGgWo1skBfF5azmiJOpK
 sfLPnhMnxAYIsoNQC8/YINANqKAnENw1yREWwbbk7JpaQb7qwJJEln8XMKjDfO96pC
 bNamfH/PKNSN9/Fke6YgGXlOozM2hcVi3JaPp8Op+uWWvNH6Hpm4XcTl/tzQlUVmjh
 6ZFQ7AdZZSkNKOHUhi7LQXD1wMQ3ha7ymcS8lHeYOv4OlAAK6Ey115a1x35zf1nJes
 18De9b4YecvVWDwNdVQf9iEQV6YlPzkaoob/1Uz9A7q9WHibveaHJEt505LWIpgBsO
 Qp8Hfftrvfxow==
Date: Mon, 21 Jun 2021 09:31:41 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Biju Das <biju.das.jz@bp.renesas.com>, Rob Herring <robh+dt@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Biju Das <biju.das@bp.renesas.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH 1/6] dt-bindings: phy: renesas: Document RZ/G2L USB PHY
 Control bindings
Message-ID: <YNAPJZ2nUB7rp0FU@vkoul-mobl>
References: <20210611134642.24029-1-biju.das.jz@bp.renesas.com>
 <20210611134642.24029-2-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210611134642.24029-2-biju.das.jz@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210620_210145_222252_E4E29427 
X-CRM114-Status: GOOD (  13.70  )
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

On 11-06-21, 14:46, Biju Das wrote:
> Add device tree binding document for RZ/G2L USB PHY control driver.

Rob ?

> 
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  .../phy/renesas,rzg2l-usbphyctrl.yaml         | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/renesas,rzg2l-usbphyctrl.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/renesas,rzg2l-usbphyctrl.yaml b/Documentation/devicetree/bindings/phy/renesas,rzg2l-usbphyctrl.yaml
> new file mode 100644
> index 000000000000..5fd316a2e79e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/renesas,rzg2l-usbphyctrl.yaml
> @@ -0,0 +1,50 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/renesas,rzg2l-usbphyctrl.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas RZ/G2L USB2.0 PHY Control
> +
> +maintainers:
> +  - Biju Das <biju.das.jz@bp.renesas.com>
> +
> +description:
> +  The RZ/G2L USB2.0 PHY Control mainly controls reset and power down of the
> +  USB/PHY.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - renesas,r9a07g044-usbphyctrl # RZ/G2{L,LC}
> +      - const: renesas,rzg2l-usbphyctrl
> +
> +  reg:
> +    maxItems: 1
> +
> +  '#phy-cells':
> +    # see phy-bindings.txt in the same directory
> +    const: 1
> +    description: |
> +      The phandle's argument in the PHY specifier is the phy reset control bit
> +      of usb phy control.
> +      0 = Port 1 Phy reset
> +      1 = Port 2 Phy reset
> +    enum: [ 0, 1 ]
> +
> +required:
> +  - compatible
> +  - reg
> +  - '#phy-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    usbphyctrl@11c40000 {
> +        compatible = "renesas,r9a07g044-usbphyctrl",
> +                     "renesas,rzg2l-usbphyctrl";
> +        reg = <0x11c40000 0x10000>;
> +        #phy-cells = <1>;
> +    };
> -- 
> 2.17.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
