Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAA0BCCF9E9
	for <linux-phy@archiver.kernel.org>; Sun, 26 Oct 2025 21:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M5bx9Ud7s7UG3qzs0k4IDEYvFKbXeWjr+TMb/Qr+iiU=; b=VgezG3KQT6VbqS
	IqwP17I21syLiQD5CgFMQvYrZZKta3s++nmtiScSXQBOERGDbZBYEZkECwRyixB2QsRBeaQJxAuZG
	jDNzR2SOBFjvuh2PHesjylI1BFHI14qACWM/9BkO2UmeZfFOhXVKjkukymhEKOH3Z3Cf231TpxiRR
	9cbB7LkQ0UUHu5BptxbwHkdDWRx3o2HdVpvz2Nz2y2QbfAMW7rft6THzu19hOhJMfyb/JKsfv8NRa
	7UKeThLSotz9qwGHr017BD/PBmF87AbxEbRVUDSTQ2223+SGniQ04sfzINaaSD3Xv4CtNjikADvWS
	Syx+a/G9Rk3RRlrvtmVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vD878-0000000Cktd-1bHQ;
	Sun, 26 Oct 2025 21:17:22 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vD876-0000000Cksj-1kbr
	for linux-phy@lists.infradead.org;
	Sun, 26 Oct 2025 21:17:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 60BFD40358;
	Sun, 26 Oct 2025 21:17:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F542C4CEE7;
	Sun, 26 Oct 2025 21:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761513439;
	bh=nVTMFH3So27LyHQuXMPPHtrd7ND7ymeCK1tF644Emr0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EfvI2uaWg0oFtOyOp9EHzv19qKi5Bdo4XPoLVZcsEMcNvyV+gnReiAbGIOWTIFgQZ
	 zz8Wc75t0gIVEAe0slC5iTe59xyJFdEIcsd3HzCwvOdnkknVF/elduigL6VBWxkwuD
	 wpiHMFe+8CuelQkJDjdutxAo5LYqa/SIw4imxsC9adg0MsoW8qqJZqmaaw9EgXGh/k
	 cXSV5leN3urw27mGAhHgptJjvR7+vHLW6rP+Ckdxt44r+0MKf6LY2aQgvRYJt9HZ9X
	 iGINGrAEL7WO9a00ihuUtkI6NTTjah3rSHHUHAnEemv736TgSYV+vLk+198LM89Fi/
	 wwlOHB5L208EA==
Date: Sun, 26 Oct 2025 16:17:17 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Restrict
 resets per each device
Message-ID: <176151343423.2959050.2808385809411398103.robh@kernel.org>
References: <20251017045919.34599-2-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251017045919.34599-2-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251026_141720_503634_88DCD70C 
X-CRM114-Status: UNSURE (   8.28  )
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


On Fri, 17 Oct 2025 06:59:20 +0200, Krzysztof Kozlowski wrote:
> Bindings should be complete, thus complete the constraints for the
> resets by adding missing compatibles for devices with two resets and
> "else:" clause narrowing them for all other devices.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml          | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
