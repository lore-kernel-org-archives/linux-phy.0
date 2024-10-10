Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E89D3CF07A9
	for <linux-phy@archiver.kernel.org>; Thu, 10 Oct 2024 06:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I+rUBB+iPLk1bh3YC/LbB0VtQwtd2Hp4kCMhKgwB5CA=; b=Fsi1n5OjwU+r9x
	NVCASJznpY1T2nM+NmACSHMmtDJkDPjQCO73E4KMBqK5T5gfJYi7emv6HYkFHURQQ/cTuOdNR6oUL
	oJA78FtGDnI+jAz1/bbdegoDKvM9xdIg5t7dyVdWcJIJaEjqxEmga92wLOxKLDLRzo38Yf9TY2s0Q
	yH85P07PLmcZNzBjGB0UXhw8PdPmlp+utp4mkJDFDKMNAcixkvRyLfY1IhFMFMcsyQ7SR90T7Spzr
	saJg8YSFlF2KyUNKCf2osMBIJyHHtB17osudvF2T3zrTvnBeW0TmlnX3GZCrB6CjqfrvYvEtoQwol
	uz+UyAjCck6v3DQJWTcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1symS0-0000000BdjI-2B1h;
	Thu, 10 Oct 2024 06:15:04 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1symRy-0000000BdiZ-0ZPz
	for linux-phy@lists.infradead.org;
	Thu, 10 Oct 2024 06:15:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D2B655C5F68;
	Thu, 10 Oct 2024 06:14:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16A70C4CECE;
	Thu, 10 Oct 2024 06:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728540900;
	bh=GOnmLWrFgzrOd+f0EQl6aCDszrZ23nW8rO9vc93Vbyk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Grk7exM+qqT3LT56kTnk/kp2ohFJDeZaoefTO3m3Iogb4fCiC91syqVKOchaRbZ1X
	 yieSxr7u+yIvqgubZbTjbKgSRnOCpxrP4d2xq8xYNcJMZ+XxyOubqG7YFeYpeuLdpa
	 0xrQ3D1lNdtTetS2NjomuFoHI/9/tPZSlq/WRRQj3qeCVJhvnK0XK3J6nmuGorDv4v
	 vVVOpZ66P+uz2oSHzDdxllUPYge/zrW2+tJFqgITjiGJKadVB6qGTR1M3KE9jfn6DP
	 uGUnQ/VefRqq1zHZEwd/l0aMBZG+qwS9tem7i83JiV7sHDcsmuzJUwLxDz5AiQMS8J
	 uOlWyuJo3CXKw==
Date: Thu, 10 Oct 2024 08:14:57 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yijie Yang <quic_yijiyang@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bhupesh Sharma <bhupesh.sharma@linaro.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com
Subject: Re: [PATCH 1/3] dt-bindings: net: qcom,ethqos: add description for
 qcs615
Message-ID: <24b46siwlah4omyqbr4gn4mrc3h3753yslwndr4v7zyvqr7dz6@6n4b3jbcxs6p>
References: <20241010-schema-v1-0-98b2d0a2f7a2@quicinc.com>
 <20241010-schema-v1-1-98b2d0a2f7a2@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241010-schema-v1-1-98b2d0a2f7a2@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_231502_248646_E82610C0 
X-CRM114-Status: GOOD (  10.00  )
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

On Thu, Oct 10, 2024 at 10:03:43AM +0800, Yijie Yang wrote:
> Add compatible for the MAC controller on qcs615 platform.
> Since qcs615 shares the same EMAC as sm8150, so it fallback to that
> compatible.
> 
> Signed-off-by: Yijie Yang <quic_yijiyang@quicinc.com>
> ---
>  Documentation/devicetree/bindings/net/qcom,ethqos.yaml | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
