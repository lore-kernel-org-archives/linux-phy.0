Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FCF1D37E37
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 14:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b033yDum93uofQcxgxQ0KeHlYxUs1pTDwn0XxqperEg=; b=oAOLNsPmVcr3qy
	7PtIoJsT51W/9lmhGzbcSuXT+0/E6uIhwJOr1pNq9h8KhqExxQAqnYXoxu8fvGBe297jrVPKLZcri
	xt+50R3Xg8v3g1nDPZdHQ2qPAdwVDWW8BRP9rh5lEKpbnEMtniw/7WSgtpQrZ2YQxYvwymwFK/L+J
	r9AuyujgfLJd8/Rg03v7P2DLST95cfqptFrQur17c+NWRw2PJPgZL8fHOlwX3tE9FzqAQrH2h2fo6
	0edY03EJ+56lBgQ8FPb9LM2rDeQMOhyrGn8f9ctaq3BQjcikXQXoZvNscrU+TtlFNVIUJqr0Dy0kV
	mOl6KRz8/cqM7gQQ892Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1Rb-00000009ROv-1Ktq;
	Wed, 14 Jan 2026 14:01:55 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1RZ-00000009RNv-3oTY
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 14:01:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5AD2A600B0;
	Wed, 14 Jan 2026 14:01:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8E76C4CEF7;
	Wed, 14 Jan 2026 14:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768399313;
	bh=MHTXNpJPFQg545t1nBhA5Hxy7M5eBdT3G3Q2/R91vrg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=JfUeG8OSOyzDoS4QPo9ky/aPctN9gJfNsdyjk7jpxexuz61MJXVMw8gnHapVtPMMF
	 wu9c8mZKBdpzDKEFVg8fONBD3CTGM342NEg5jgUtYqkUezB7eIHo/3ijqXd3vKI21T
	 UMEiTMRfIwBVTq1Tsc4oYYFF0pE9EAZhT27ZZz4Z3wyZ/3dknoF/GOnefW183UsRjb
	 8Q48XXVVvZlM2aklxbvo/AgaRmXKPERS7dADnUvKF98XWFEWxjORpuKlVrO1i+oq35
	 3DNY6LIriBPWSeNO8vdjy9RGK01/EcGVh7mhln2ZSGCctnkqd58jpVr8x5fd1siln5
	 FtWU/4GQR/LkA==
From: Vinod Koul <vkoul@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260108052459.1819970-1-krishna.kurapati@oss.qualcomm.com>
References: <20260108052459.1819970-1-krishna.kurapati@oss.qualcomm.com>
Subject: Re: [PATCH v3 0/2] phy: qcom: Introduce USB support for Kaanapali
Message-Id: <176839931031.937923.8605452740220301145.b4-ty@kernel.org>
Date: Wed, 14 Jan 2026 19:31:50 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Thu, 08 Jan 2026 10:54:57 +0530, Krishna Kurapati wrote:
> Add support for the PHYs used for USB on Kaanapali SoCs.
> 
> On v2, the usb controller bindings have been split and v3 was sent and it
> got merged.
> 
> The m31 eusb2 defconfig patch also got merged.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Kaanapali QMP PHY
      commit: 69efc71162b5742381de29f661c913013b254c2b
[2/2] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31 eUSB2 PHY for Kaanapali
      commit: a6a9aeaba36f42ed6dc4cdb865ae6b7ded4e855b

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
