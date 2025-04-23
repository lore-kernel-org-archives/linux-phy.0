Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91660C369CB
	for <linux-phy@archiver.kernel.org>; Wed, 23 Apr 2025 17:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9o2oiGIJsZ6XGeQUr+Vtq3MQKGmm7Eqbv4Nd+BRDvsI=; b=Tgoec/g1qvwBWe
	Gjz6fKqX7WK2J5/lXdQrOwqujnC0fWKFQnsIbPgAS7EEIlbjAw8c1qzBEwBobHBRi/a1s62jBo3Av
	ompscJa3Y3FfsiqUjNPnc9C1Fnh7nFnr1IPYKR8HoJcQP+U50WUjrd5uYyXg7mSgQJ0aihDAdEZdk
	0CgiDNAA397S3oIp0yeK0itn0vkwdUJNqJpDfF3NYS/G+zFBVKOI8wJmDCXEYM2WLcSf+oiMdRlqU
	Cee/H/lQaMXx7BNgqafqvECWUcZpguMYtlgMbWKc1uLJRNHjab3E4EfG4VTmf5jhQ+dCGqQZsrLgV
	mlW83MDm4x1RO3KmYEaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7e7m-0000000BM9L-0MN2;
	Wed, 23 Apr 2025 17:43:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7bwd-0000000AxGf-25X5;
	Wed, 23 Apr 2025 15:23:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C9F6A5C61FD;
	Wed, 23 Apr 2025 15:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64D98C4CEE2;
	Wed, 23 Apr 2025 15:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745421806;
	bh=ttYFtyupJCMupeSXwyqSaNxnbRiKjhqkBV9hyVnYY30=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fLQsHTSROUAK6ThwkWXhF5VTQtSjbjK5MKQgPWBeAYm3OnQl3xo9vUW3c5NIrFpzg
	 z+lp7GpBGY+WxxQMdQI0S5e9vR73KD0m+fgVfer7oIVylZ0pDaQSMvatCNmhoAYjJz
	 WjC+opRME537JuHl44GZKOV0qEjjp92qrZ18eFetM0akxL79A+P90DDu+CKlRgaKUc
	 +2oRVCZHEj7iQ802qNTm67K8mbY+93IrU7H5otIH+P13xmfpnzMl3ELoTX0YE+MNMi
	 zDHktPncfG76nUvxqFwQANV/QL0RWZHJPaNKtMlkPxd2+oKXeWR5eToaz5f6GmRs6a
	 qhWfSTuHn/N6Q==
Date: Wed, 23 Apr 2025 10:23:25 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Ze Huang <huangze@whut.edu.cn>
Cc: linux-phy@lists.infradead.org, linux-riscv@lists.infradead.org,
	Junzhong Pan <junzhong.pan@spacemit.com>,
	Vinod Koul <vkoul@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-kernel@vger.kernel.org, Yixun Lan <dlan@gentoo.org>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	spacemit@lists.linux.dev
Subject: Re: [PATCH v2 2/4] dt-bindings: phy: spacemit: add K1 PCIe/USB3
 combo PHY
Message-ID: <174542180456.549434.17717366396864684617.robh@kernel.org>
References: <20250418-b4-k1-usb3-phy-v2-v2-0-b69e02da84eb@whut.edu.cn>
 <20250418-b4-k1-usb3-phy-v2-v2-2-b69e02da84eb@whut.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250418-b4-k1-usb3-phy-v2-v2-2-b69e02da84eb@whut.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_082327_591922_870C27E0 
X-CRM114-Status: UNSURE (   6.46  )
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


On Fri, 18 Apr 2025 21:19:51 +0800, Ze Huang wrote:
> Introduce support for SpacemiT K1 PCIe/USB3 combo PHY controller.
> 
> PCIe portA and USB3 controller share this phy, only one of them can work
> at any given application scenario.
> 
> Co-developed-by: Junzhong Pan <junzhong.pan@spacemit.com>
> Signed-off-by: Ze Huang <huangze@whut.edu.cn>
> ---
>  .../bindings/phy/spacemit,k1-combphy.yaml          | 72 ++++++++++++++++++++++
>  1 file changed, 72 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
