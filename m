Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5A2FCFC270
	for <linux-phy@archiver.kernel.org>; Tue, 15 Oct 2024 06:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wygw83gRo0yRTJvcHIkmuYe2X2Erirvck8PLywQYn9A=; b=hyFWzQPi4kxBYO
	NelYlDOpIiPMU2UBziErhTgKdqtd0UfTyX4I9u4Ex4+uXO935MOVvwS6c/NIFlh+Ucpzm31f19H0r
	e3966qBjgUTUnjuDaBtCLqwKJz1gxUYi9QfGKWf9/ODQ4kW//K5HUYm+x7rIZpOlFPsQ7DG7DXBWB
	K/C6UpHmanNh3I71lsU1BxCItvW3rNQ10+hq4gWvdRkaqermekMRMUF/rtwlXZcs6G6r/8xvGMBwM
	lqy1Jn/oSQDNQMxSXnAhwhgd48Rm2YVy7mT6dAe0DwaIbB8jkoTdv6jiMJBYlMuw//bLZCFHNMD84
	pXCpfLxocUW//QK7Y1Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0axu-00000007CWu-1Sl4;
	Tue, 15 Oct 2024 06:23:30 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0axr-00000007CWI-3V69
	for linux-phy@lists.infradead.org;
	Tue, 15 Oct 2024 06:23:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BDC815C1020;
	Tue, 15 Oct 2024 06:23:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF45CC4CEC7;
	Tue, 15 Oct 2024 06:23:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728973406;
	bh=69X/Uq1A2tTUdqIb/0WrWh+7qgAKnfOmdDZTUgq8+yE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XSfdC1Kzj/bItGtCu96rR9w1XOJeXcP1m52bb94lW/QgGGqNKbF066t8D4GV/fe+8
	 RGnYE3ZH65f1hQimmSB0pgJXg7kW5V0QGpjRNDc+9amRNHQrDt436dV8qDj8M0eni2
	 7QjNPfMmhAvoUY1U5tXb118Og7d/U9UO6N0j/4nS+PLCrN8g5lQgs3Pn12dEntdXJ0
	 88/10QFvMdyEG7vDYI2gwmvirSV+Xvx8BJ5BG9qdZYxgGWIQuApYmuBCGLSqFoLHN7
	 g7IR7cNvq35aO89d/HTSE26cHy0kr4h8G7ZmVB7nshtW0SHoE0bvcwlaG55c3j3Q8H
	 vZW8NK3Hn+5EA==
Date: Tue, 15 Oct 2024 08:23:22 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <quic_bjorande@quicinc.com>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Konrad Dybcio <konradybcio@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, quic_ppratap@quicinc.com, 
	quic_jackp@quicinc.com
Subject: Re: [PATCH 2/5] dt-bindings: phy: qcom,qusb2: Add bindings for QCS615
Message-ID: <32zp2wldpqzn5wezcw6hg4cj5n5vc4xs32vl2og5mmsh2hr3fj@jkxg3bafdrd3>
References: <20241014084432.3310114-1-quic_kriskura@quicinc.com>
 <20241014084432.3310114-3-quic_kriskura@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241014084432.3310114-3-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_232327_936183_F216C7B6 
X-CRM114-Status: UNSURE (   7.84  )
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

On Mon, Oct 14, 2024 at 02:14:29PM +0530, Krishna Kurapati wrote:
> Update dt-bindings to add QCS615 to QUSB2 Phy list.
> 
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
