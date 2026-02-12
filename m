Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9034EB4914
	for <linux-phy@archiver.kernel.org>; Thu, 12 Feb 2026 12:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Px7Gj7cYlNBzJdhyU09120G8+PtZlTghhRn2PGIOYRs=; b=kD9sHmNOwtX6KI
	0mPE5zXd6MqH5U0NJiJMSwWwMwZPxwZgrd+9lGZledFF0Qg0jTpa5wJqr7mRD/gxJ67yyl2gWabp9
	BP4ITYkGBBZYOjfaWYJqu4Nvo6OWK+K5YKe+2I0XATvucb6Ho0M/aN+WSO9Tyq0xfzdXzdCVpHoS6
	EhSj2JWSileVplMslLV4+LFtiBWnjpbM6B2cLIdmANvzPefMS+8+IEzf6tqhIszmUqmMD/KHCazEx
	NwMT7O37asCsx1EJrObf2igz+so9KRDxixPR7RlvzfoNCs5X+zUGIqFfzo4EG2yt6lJ9d2y3CNwMj
	+zt3+6cAPnajzvWour1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqVPj-000000022tL-1Tza;
	Thu, 12 Feb 2026 12:03:19 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqVPi-000000022si-0aFI;
	Thu, 12 Feb 2026 12:03:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 3D35760018;
	Thu, 12 Feb 2026 12:03:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67095C4CEF7;
	Thu, 12 Feb 2026 12:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770897796;
	bh=SZTz8HS9PWKBbdj5b1EMRwXlgepLmkuv69oIrOnPdcY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U+SA3LYAhVdyGRMYNYGEU4GprVv77KQ5bP8VRHPjcMk95kB+NihCUNPMMQYxkudZB
	 1ZKFDz30j0zy67aIfC3as2goYgNs2WvAUbNBX3v4aP+rzwT7Z+sY0UOcXz0m8DapJb
	 2VHMQ4vzdKRTIzs6CqkUhhRS9GIrxKAFMY4C+YtbGWj5gKCV1Y1xyVULpPhwbD0OMe
	 O/+BBougAMDGhGofIQ9bSejxi+pTZWXDE0hrQdjckrQfK8ZxJz/FXNY7R5LdnPs0o3
	 8fHuropl7OXGzqLs8eH5HXkNeagi9IrV1Pc7swD62TPWDCyfNwM4t/Zwo1Wvvfe0zl
	 d4bgQbQzbcQDA==
Date: Thu, 12 Feb 2026 13:03:14 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yixun Lan <dlan@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ze Huang <huang.ze@linux.dev>, Junzhong Pan <panjunzhong@linux.spacemit.com>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: spacemit: k3: add USB2 PHY support
Message-ID: <20260212-rampant-grinning-deer-1eb7ca@quoll>
References: <20260212-11-k3-usb2-phy-v1-0-43578592405d@kernel.org>
 <20260212-11-k3-usb2-phy-v1-1-43578592405d@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260212-11-k3-usb2-phy-v1-1-43578592405d@kernel.org>
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

On Thu, Feb 12, 2026 at 09:38:54AM +0800, Yixun Lan wrote:
> Introduce a compatible string for the USB2 PHY in SpacemiT K3 SoC. The IP
> of USB2 PHY mostly shares the same functionalities with K1 SoC, while has
> some register layout changes.
> 
> Signed-off-by: Yixun Lan <dlan@kernel.org>
> ---
>  Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
