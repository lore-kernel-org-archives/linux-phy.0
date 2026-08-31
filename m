Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CB48C61DE2
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 06:46:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mp/vNg4DcK3D3Y+jUd9nOE/rBsxerEBRDahkrn9pwzA=; b=HC+k6AZNSNqRrE
	nvD7DQ6Xzjr/I7cRrcKTF/SyYrBrKIjIhLes0XcY3osDel8w/ED2vSQ7Pt/qs6jfxELfdhz052mC0
	2ICfIRdvCQDCUTydExSQgIgTzLPrth0z5ZZ/lAk/n2WTf4d8gycMRzeUXQw5sDRInV1Y+AMxUfpE5
	qcsIpbWxTu/ka64l/m2bFfGgV7kpdNbZTuMPM6MEdYjHb4Ahgh+H5h92rytV680N1O2dhGNSP9CCK
	nu0yDtkufYTjIvK7C3Vny8DEDNb9XgizeDtAg/mITTQAkYkUDbQnY/kzOYuRr2c+YXS7QF4BKgoA5
	/j4/ZMU6UGeMbN6SaJOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0vms-00000008dKX-3a14;
	Mon, 31 Aug 2026 06:46:34 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0vmr-00000008dJf-3ZNG
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 06:46:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 599C5435EA;
	Mon, 31 Aug 2026 06:46:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EC501F000E9;
	Mon, 31 Aug 2026 06:46:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788158793;
	bh=yiCZQi/KsfPhos3m9UPBMLZ/6VRkatgenlxPmXeCU1s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=dFWKOF5JBsWRW0Ut0BH3FOS33DP30hPeVz+jynqpgAwHvHvEdyprLdM30wiiUPo/y
	 Wxr6BIyBzbL3bO31f86ZFFPq6rwAUN1Fx5gaGE84JwtpTtRbIztEm8r33Jgx1V7Ixa
	 ifulcECamQVwaC62/36RIFF0Q2OCmmyZzGCnM5SuExtFaDITDipDtGnWITU7urPabU
	 ip2IoqgjnAlnUmyoR1gPNKLWEkWCyLZbgSqNfp+Cpqr/zzwFdrbVSMBsQtZuoiuR8B
	 uYXNr2TbOr5JvUPrs6SW+IBoYbH7aFIuD2MKEiu2V5M5qxmtP/Y0FImDIX5K8oyNHs
	 aDiezMykhuueQ==
Date: Mon, 31 Aug 2026 08:46:29 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v6 1/5] dt-bindings: phy: Add PHY_TYPE_EUSB2 definition
Message-ID: <20260831-visionary-capable-termite-3dae2a@quoll>
References: <20260826-eusb2-interrupt-v6-v6-0-ae2601cfa80c@oss.qualcomm.com>
 <20260826-eusb2-interrupt-v6-v6-1-ae2601cfa80c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260826-eusb2-interrupt-v6-v6-1-ae2601cfa80c@oss.qualcomm.com>
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

On Wed, Aug 26, 2026 at 10:32:51PM +0530, Krishna Kurapati wrote:
> eUSB2 (Embedded USB2) is a MIPI Alliance standard for chip-to-chip USB2
> signaling. Unlike standard USB2, which uses 3.3V signaling, eUSB2 uses
> low-voltage differential signaling (~0.4V) and requires a repeater to
> interface with external USB2 ports. Because of these differences, eUSB2
> PHY initialization sequences, voltage tuning, and register configuration
> are distinct from USB2.
> 
> Additionally, eUSB2 targets handle wakeup interrupts differently
> depending on device speed when operating in host mode. According to the
> eUSB2 specification, remote wakeup signaling in host mode is detected
> via different data-line assertions based on the connected device speed:
> 
> - Low-speed devices: the host repeater drives eD+ to logic '1' upon
>   detecting a K-state on the USB lines during remote wakeup (eUSB2
>   spec, Section 5.5.14).
> - Full-speed/high-speed devices: the host repeater drives eD- to
>   logic '1' upon detecting a K-state during remote wakeup (eUSB2 spec,
>    Sections 5.5.15 and 5.5.18).
> 
> Since the eUSB2 PHY's DP and DM lines need to be configured differently
> from USB2 PHYs, controllers should be able to query the PHY type and
> configure wakeup interrupts accordingly.
> 
> Add PHY_TYPE_EUSB2 to distinguish eUSB2 PHYs from standard USB2 PHYs.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  include/dt-bindings/phy/phy.h | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
