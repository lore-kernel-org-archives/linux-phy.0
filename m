Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C7AACD98E2
	for <linux-phy@archiver.kernel.org>; Wed, 17 Jun 2026 07:01:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2jTzW9jRz3Q4Sw/GDg3Eyv914jNZHq04ByeZ/trOHnc=; b=nw7OImiGWO5IDv
	IRZ8GS5jTIDPgqL4rgJGnraTb0WuRFQPpnXaTV1AYuaUMetz3tVQ3QeA2ybGAuxzvFTgkUNdUCf7R
	3hA9Cb4q+Q1sm/BPoxk1B44SrrIS5rhT+5MTdTSLphi74FK/K+KPZzh5TWWe6AZ924jeguoNZ8qwX
	BDwVnNqyytXX89Qw1Nbinozb14zV3Hh+b1u79/YUdFFx5SPu7J6uVEbHo/Hr1m1MOQnuCTINUa8fT
	PHLWSIzQ21xTMK8xX9JHTVydNTpZlnWbD5os0UOW1uniChHpFOkb5H4IWlwNZxaGjPxN1rNEwB0V4
	bfoVlo5aevmyKX3kanfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZkH1-0000000GmBd-39Tg;
	Wed, 17 Jun 2026 07:01:19 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZkGz-0000000GmBC-2IOw
	for linux-phy@lists.infradead.org;
	Wed, 17 Jun 2026 07:01:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3A49E43C2B;
	Wed, 17 Jun 2026 07:01:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C6D71F000E9;
	Wed, 17 Jun 2026 07:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781679677;
	bh=5cP3ZjuvlgY3MK0mjyMxLKDOV5/e/Yce0WqJYxlF6L8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=YFt2Onbae9dFb0xLVhdVNSyCawe/a+3kWd1G2fyWPTVi60Os9MIei9k6zQWONwCx8
	 UOm4FuTTSSoal7O45nKRnYyAlqnC9u4zFUfU3nFH0Hx+54e8XMiHWFpnDnmNdFtBa5
	 l9hI/XdkdX50Z/D0m7B/jdbccP5mSPrw4dvHgFwJPNnAru4jAGjxpOcjE11nARuufJ
	 LPRTr2ouwZL2THdEVAeC4wtvMZ/cqE3bhE7RamDdh5w20ywuq4yJHG7IPYbfaZdGWg
	 vx4/rKEExwjOBCGtFvNbyqhtwwWZ7VLm7QoPF5wCpj/KGRUmkAnvjwJRe3YsrQxqkY
	 OSH45Axt8toYw==
Date: Wed, 17 Jun 2026 09:01:13 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: qcom,ipq8074-qmp-pcie: Document
 the ipq5210 QMP PCIe PHY
Message-ID: <20260617-musical-trogon-of-conversion-cabea0@quoll>
References: <20260616-pcie-phy-v4-0-504677c3d727@oss.qualcomm.com>
 <20260616-pcie-phy-v4-1-504677c3d727@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260616-pcie-phy-v4-1-504677c3d727@oss.qualcomm.com>
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

On Tue, Jun 16, 2026 at 10:34:41AM +0530, Varadarajan Narayanan wrote:
> The ipq5210 has one dual lane and one single lane PCIe phy.
> 
> The dual lane phy is similar to the dual lane phy present in ipq9574. Hence
> qcom,ipq5210-qmp-gen3x2-pcie-phy is documented with ipq9574's dual lane phy
> as fallback compatible.
> 
> The single lane phy (qcom,ipq5210-qmp-gen3x1-pcie-phy) is documented as
> specific compatible as it uses a combination of its own initialization
> tables and some of the existing tables.
> 
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
