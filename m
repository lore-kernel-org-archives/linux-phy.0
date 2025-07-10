Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AD71C83F1A
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 08:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ENIbgSVi8Jl3vKnjCuxzXCd57iIoIoFXCdk9S5nkNck=; b=3VGp/+FU1rhjt7
	3TcY2MJnPrs7IklryUxI6q515AxaJwQ12XnXFGMNGPDfvEpI9Ys/eROgKIwmyneA9lBspBC3p6bBO
	fTeeTfuCDkY4jOjvSwMbiS1FT65GNHOPo/rebst5G5EmpfjMptVNw1dtLr9v7xpoLiFsmChkHl/XB
	7+g4A+SMlWEtOhE5TIJb1Q4e5wz8dQoluu3iMqXYZ83rb7pQmvl+phZjd1XwNewdQN+KRIZSAgdik
	h5+vRJT2zeUvOEO5hoZGqanPtLKGkvGxzaELPFyoj72mhZT0TcUuMAUJDJUKv0qIC9KZ0kGjQ9JIo
	HLB0xKpaVnKGbu2iPXHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZmSm-0000000B8vj-08yP;
	Thu, 10 Jul 2025 08:17:04 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZldW-0000000AznC-0SoB
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 07:24:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9D7D75C402B;
	Thu, 10 Jul 2025 07:24:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7134C4CEE3;
	Thu, 10 Jul 2025 07:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752132245;
	bh=SFkkw4ctGLrTmBRlu2RlFZWVe6en+oY/fO9F/Li48Z0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HVQKw8Vz982DsUsU73OrlqR9Y55+VP38DzfT2XJLoeZG00lmFYo3E39zm+suCvIKY
	 MvGr4NkqAfQ/nqr5cy4f9Ih6aKjQhz41zdwZNFU5Mxmn7cyp6OLy/BUwh5HuCuR53+
	 WPoe1HX25Lqs2ZuRVvTIEgyuSr1mDZci6QCMIFIOXd4d54YDlENJ3U8Mu+2xmFJ2ZE
	 fd6v1guQRQAru2rySgrmf5dpjXHscCtVX+2Y/XuISEF0/2W3xgBgzvoOzb06kzjmx8
	 mgth7ClVPnUpkbtuFLbMqi9+rKhtHnwTTz8Quv3S1l6j894c5fz9hlkO3JMBC3ECuy
	 zUkLk4k+PR8xQ==
Date: Thu, 10 Jul 2025 09:24:02 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Karthik Poduval <kpoduval@lab126.com>
Cc: jyxiong@amazon.com, miguel.lopes@synopsys.com, anishkmr@amazon.com, 
	vkoul@kernel.org, kishon@kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] phy: dw-dphy-rx: Add dt bindings for Synopsys
 MIPI D-PHY RX
Message-ID: <20250710-dainty-tarsier-from-hyperborea-ecf9d3@krzk-bin>
References: <cover.1752106239.git.kpoduval@lab126.com>
 <7f4b676678b27ea91314c834a297c1e057959b09.1752106239.git.kpoduval@lab126.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7f4b676678b27ea91314c834a297c1e057959b09.1752106239.git.kpoduval@lab126.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_002406_189889_8261C6E0 
X-CRM114-Status: UNSURE (   9.89  )
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

On Wed, Jul 09, 2025 at 07:42:21PM -0700, Karthik Poduval wrote:
> +---
> +$id: http://devicetree.org/schemas/phy/snps,dw-dphy-rx.yaml#

Filename and id should match compatible.

> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Synopsys Designware MIPI D-PHY RX
> +
> +maintainers:
> +  - Karthik Poduval <kpoduval@lab126.com>
> +  - Jason Xiong <jyxiong@amazon.com>
> +  - Miguel Lopes <miguel.lopes@synopsys.com
> +
> +description: |
> +  These are the bindings for Synopsys Designware MIPI DPHY RX phy driver.
> +  Currently only supported phy version is v1.2.
> +
> +properties:
> +  compatible:
> +    const: snps,dw-dphy-1p2

You should rather use SoC compatibles.

> +
> +  '#phy-cells':
> +    const: 0
> +
> +  reg:
> +    minItems: 2
> +    maxItems: 2

List the items instead

And fix the order, reg goes second.

> +
> +required:
> +  - compatible
> +  - '#phy-cells'
> +  - reg

Here as well

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    dw_dphy_rx: dw-dphy@900000040 {

phy@

> +        compatible = "snps,dw-dphy-1p2";
> +        #phy-cells = <0>;
> +        reg = <0x0 0x90000040 0x0 0x20>, <0x0 0x90001000 0x0 0x8>;
> +        status = "disabled";

No, drop. And fix the order of properties, see DTS coding style.

> +    };

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
