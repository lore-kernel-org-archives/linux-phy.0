Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACEBACD98CE
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 15:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=expeRr7mHr2X97vUJ4u6UsaMUF8XsYTtdK5pQ0sYrfU=; b=ls+B+rAhO4cIrI
	wkIwi3KaMvsPljAMglB0Nejbolg7mq0DuAGIcAfuMUkaIieVM98LER5OcJUNi2iW5rClJV97cG+Fe
	/9FxxaOvgAD3xNXeQ99cXfurHB7tIVPp4VV3tTik2vU7X2evwzO1/6JP2Lb0/3gpEfU+OvuKCW5Es
	yvvdheeQHSjQyAEa08fDxbH4G9qZV5i50oZ75G1l3TYVhGlC0wgBPF72naeK5+UCBNX2bTSHNCKcf
	Ij8K9cA1bC3GUaETriEKQ623/HETbR+wT3uvxCKCQdT8icMeyZLV/VPdM8Dc5hFBb0JAW2uIf4SNj
	Ee1LOIGZP8ukVjNH8vFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXhRa-00000009gqx-1kZk;
	Thu, 11 Jun 2026 15:35:46 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXhRZ-00000009gql-2j54
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 15:35:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 686404061B;
	Thu, 11 Jun 2026 15:35:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D3751F00893;
	Thu, 11 Jun 2026 15:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781192145;
	bh=E24s/V0gP4pvIVYXL0IxO3RudIxFGgl7ueNQ5LXIy+k=;
	h=From:To:In-Reply-To:References:Subject:Date;
	b=fYzhtRuYXY1nC5cxz6JrTldD2vkeA0uuqS846tXbE1yFizXlO1kAU6MxOD4briwe8
	 JmUCvVQislDbrwWR1OQ1Vr08MudIb0qsQKH8ueZ5tJTBI1ugGhBpY6YJDAqG4Ztf2J
	 yDRpCisOnqfZZy7ZN97veJfWj7X9CePp2kfyfEZ/i9MIZwtvzhAmksgurmaz5Zj1l8
	 rYwTIS27ouuk2WRqPtMD2WBss01WBByRayUbO2VoTSr6VY81qO4G8QpIpK890zHGQP
	 UgYFxYw6NoXjsT8QiFfK6zje+1DKKn4oTyiSyc1oS8Y0aj8zVSCmcmi9gKsgueLMYN
	 FNRmGdV1T2Rqw==
From: Vinod Koul <vkoul@kernel.org>
To: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
In-Reply-To: <20260608103344.2740174-1-varadarajan.narayanan@oss.qualcomm.com>
References: <20260608103344.2740174-1-varadarajan.narayanan@oss.qualcomm.com>
Subject: Re: [PATCH v2 0/2] Add ipq5210 USB phy support
Message-Id: <178119214219.568088.11214023955554602445.b4-ty@kernel.org>
Date: Thu, 11 Jun 2026 21:05:42 +0530
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


On Mon, 08 Jun 2026 16:03:42 +0530, Varadarajan Narayanan wrote:
> The ipq5210 SoC has both USB2.0 and USB3.0 controllers. The USB3.0
> can connect to either of USB2.0 or USB3.0 phy and operate in the
> respective mode.
> 
> v2: Use ipq6018 and ipq9574 as fallback compatibles for qusb2 and qmp
>     phys respectively instead of introducing ipq5210 as a new compatible.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: qcom,qusb2: Document IPQ5210 compatible
      commit: a9a9bae2174bbad63fc73a0d445b7437f63b2498
[2/2] dt-bindings: phy: qcom,qmp-usb: Add ipq5210 USB3 PHY
      commit: 609878c1b684ea3f77ab72237511eb9bec927102

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
