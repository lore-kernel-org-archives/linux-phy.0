Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6248CD343F
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 08:20:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gLUSlEGLKiQCzwkPRnPF3SKlzKHIUa3pgMlUEdVvSxo=; b=rMI48YGYVv5uzJ
	e4Tu/478DC+cY93jm9+gRzt2TrtM4zkW6+gHQQJEhzVP95pIG3QooHC7ArCRLj/Fh/fasUtpn0Ymj
	lUCToBUtZ0aJZCSHmhyM+lFSFwsaBpCDAkkISS5NtYMVOwz9x88863XbcwoYaRHEfLqvK3zIk8ziq
	sbLbJdgbnfP05LbNOQya0Peph1CR4mhB2fQ9GrOTdeCTvKQk92ffQZd5Od3YZsB3Yjl4Ylc/VdZvI
	swkl9BQlSxoOfl2IU63mWakFFJm0peoW+F20w7D4R/HA2bthp0GBGlSLsQnt4tTB2JBBWc0ovDZkp
	sfP01yIHpl52/m7XgCTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNnmn-00000007ijv-1VmE;
	Fri, 15 May 2026 08:20:45 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNnml-00000007ijQ-2n6b
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 08:20:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CA6C743250;
	Fri, 15 May 2026 08:20:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27086C2BCB0;
	Fri, 15 May 2026 08:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778833242;
	bh=UXJ65w8VdygtsSiOLKk+/N2cT36BTANVHhYswQ/RPdQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TdGnmdzUXmRp4XyIhXkGePu9VPDDqo2q/PTIRIoTZP5jf7K1nghUkUrVS2LeWr3cN
	 zLLo2vmjFdoh06UoDcKYF3sBtFA/5EcmZkdBVwNyLPS1Q8Vpj0FDYrITPX0N7qEEN1
	 Vj5iCzRXFVwiDkvBdCdMp1VPQGLQ20deQTl/4PvQaowW7yJIgdjpgpAD8QgDcEUxIH
	 GAeQ7s10v77TCsa2t+WnKFkElHQnyiKP+5pDIZxD6K86X2508Q65BeKAbXiVcg9RTw
	 Ee5igPbNo+hJEBJIJhf60iuwwFqU9odPnKXKrSqgBtq5Zv2H2IW/q5mYhIYnJDtOSe
	 He7EzmFGR7JlA==
Date: Fri, 15 May 2026 10:20:40 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Thierry Reding <thierry.reding@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Peter Chen <peter.chen@kernel.org>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v1 5/6] dt-bindings: phy: tegra: Document Nvidia Tegra
 XMM6260 PHY
Message-ID: <20260515-utopian-malamute-of-patience-367e8e@quoll>
References: <20260511135703.62470-1-clamor95@gmail.com>
 <20260511135703.62470-6-clamor95@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260511135703.62470-6-clamor95@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_012043_729032_950DB8F5 
X-CRM114-Status: GOOD (  14.63  )
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

On Mon, May 11, 2026 at 04:57:00PM +0300, Svyatoslav Ryhel wrote:
> Document the XMM6260 PHY used by various devices based on the Nvidia Tegra
> SoC, describing its usage
> 
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  .../bindings/phy/nvidia,tegra-xmm6260.yaml    | 58 +++++++++++++++++++
>  1 file changed, 58 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/nvidia,tegra-xmm6260.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/nvidia,tegra-xmm6260.yaml b/Documentation/devicetree/bindings/phy/nvidia,tegra-xmm6260.yaml
> new file mode 100644
> index 000000000000..0346433c9772
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/nvidia,tegra-xmm6260.yaml
> @@ -0,0 +1,58 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/nvidia,tegra-xmm6260.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Nvidia Tegra PHY for XMM6260 modem

XMM6260 is Infineon modem, so any combination with nvidia,tegra is very
confusing.

> +
> +description:
> +  A hardware configuration used in Tegra SoCs to provide proper interaction
> +  between the application processor and the modem, as well as control over
> +  one of the SoC's USB lines for the modem.
> +
> +maintainers:
> +  - Svyatoslav Ryhel <clamor95@gmail.com>
> +
> +properties:
> +  compatible:
> +    const: nvidia,tegra-xmm6260

Also here.

What sort of phy is this? So far looks more like a software construct.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
