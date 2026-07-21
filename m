Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 243F5C44529
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 06:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DW93s4Rwiuge6Y7wC12Oz0y6dICjqZoY6r1E3zHYTps=; b=xt8Fnntbnh5c7g
	kKljT2HneR+EdZVy+YJjarcKQGQlfv5adQZQXVBbYcJm6L9ZK2GLy84l9Gtpy0NtfFImW4TVoBBD5
	YMecpqHRi+qdxnQe38rHs3C1zc4GSfCJf9FgnIyUwalmSjRHIL5U6wrVsJ7JfW4vTKTYyWutXknOJ
	Wnrc7cKnDKEQnKOS1F/DOQd7M0EVJrh60aV6VfFSy/UkYvHUSN/6je5jSOuPzwZHywwrqBkwxUiGp
	lGNvNhfWiOW1bRrG1pMCS//SVXWALd3AAEgn8skXGOz4Ujvz4xSHuOej2tD5SFLzEOSEgSiIT5p2V
	LhbgFlhLU/Xn9RWBayVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm4BS-00000008YeJ-3V1G;
	Tue, 21 Jul 2026 06:42:30 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm4BR-00000008YdW-0gAD
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 06:42:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8A4CE40A53;
	Tue, 21 Jul 2026 06:42:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BC5A1F000E9;
	Tue, 21 Jul 2026 06:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784616148;
	bh=8CbiBV5aOWrj46L9ZurcKtFkuOur0vzKkTHkO/3S6oQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Wy3BsUFREu+NHQ2PkiX1/f8b+FzHxsP5EUQnPQgBD9pVxDq+aXc0f4mwliH8oI3Ec
	 kmnPjn3BB7bAZ3p5HdCk66gU6P0BE1UbD2wG9nMLD7YvwKXx8i/L17E7I1vjVQKIoG
	 +rgYFNvgvSDsjVJehQQDiPPAbUvjEi30wLmWJsQLNfNkuehTQVRHDHtabvfXwVB3al
	 6Q3Pl1G2HoWjCojsT2g8xoMdh9aN0q+pBi62ByDKbYiOAYh7l0g+JmNRyyILzb/aED
	 4qJH1XPQSGXc0XQfI/JxnGRh+E9qHw2/IgU0r/TeW8CLbIWNBCyzsb9DEgTCf5T6FV
	 MfU+fJSBnH4cA==
Date: Tue, 21 Jul 2026 08:42:24 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 2/4] dt-bindings: phy: qcs615-qmp-usb3dp: Add support
 for Shikra SoC
Message-ID: <20260721-sloppy-subtle-perch-dd921b@quoll>
References: <20260712-usb-shikra-phy-v6-v6-0-1b3e51bf1541@oss.qualcomm.com>
 <20260712-usb-shikra-phy-v6-v6-2-1b3e51bf1541@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260712-usb-shikra-phy-v6-v6-2-1b3e51bf1541@oss.qualcomm.com>
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

On Sun, Jul 12, 2026 at 08:58:35PM +0530, Krishna Kurapati wrote:
> Declare the USB-C QMP PHY present on the Qualcomm Shikra SoC. Shikra uses
> 3 resets to be programmed before initialising the phy. As per the hardware
> documentation, the third reset is PHY_PRIM_SP0_BCR, hence naming it "phy".
> 
> Also, add remote endpoints and orientation switch support for getting
> Type-C orientation information.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  .../bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml   | 49 +++++++++++++++++++++-
>  1 file changed, 48 insertions(+), 1 deletion(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
