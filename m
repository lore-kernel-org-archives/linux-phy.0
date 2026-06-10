Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20CB9CD98C7
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 07:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YEvqXvsx8sk7McB86UXz/KJy777dOIMscQN0E9eczwQ=; b=Ux+ksZuozDHK+7
	vmTDpnwERsW/AfJ/g57Kc6XVSZgs2/nTJdgl+YZJznwsGtA+tCBF51ShwDv6mBv4Ip7VBznE2gELl
	mqUlxLhlyLTxDZCsq4mB+9bHXf/Ghj9ftNGDQtsjHgBIubc0L7LWzV7YIlfvMlPqzMLAvzAik3dzt
	9HzluP7VynFrRkaNOAuAuq18a5Lxc/Dxk+aA2ZrZckg3yMnoBJS+Cy1JrfNDWnmZeKg2jsvtDBn+Y
	d+15xqnhgFeGoewRV6QPPY9RS7gNrwSCf08XITIuIx6mVi7KzMugokGaAu9WGZcpbcrOo3IWB6PnO
	LvgSkP3fwMyGbQKBmn8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXDqE-000000070TK-2ZhZ;
	Wed, 10 Jun 2026 07:59:14 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXDqD-000000070TA-2XYv
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 07:59:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0D851441B9;
	Wed, 10 Jun 2026 07:59:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F1D31F00898;
	Wed, 10 Jun 2026 07:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781078352;
	bh=EBBdv6Bzg5Y9btu0dO+LKzrTm4K3s9RoMX2AglowUZE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=d8ciimsWBia9bhTpfZ1sbLaLuy3QZrcBTm9h/LMovnPMS6EdiNqvY0hTr97SAJplP
	 neGT8UPuwATuw/0g+n0LvwygPluknhiRRbpFf6wMp20frP3tJsg1hy2Ko1rPsIcyek
	 kquiD1wSP/711ibbJhGPEivM+p1vZ4FT781kQnWH0rybcMiR1BISeR9f2JjwQ3k6R8
	 +gG7HaE4pujYwd+lEwoaMwpOfcPrsiu4l26TIwprOSBRvHnCpbAzj8PP6MthCor3uH
	 /87+93Cu2CZ9F/F6z6uUT/rKkniz5FmADDw2bYDL4JIe8AJqEzk4vYfIEEMJF7aYSy
	 EpTEcAj2cudUA==
Date: Wed, 10 Jun 2026 09:59:08 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: qcom,ipq8074-qmp-pcie: Document
 the ipq5210 QMP PCIe PHY
Message-ID: <20260610-camouflaged-crayfish-of-energy-3da48e@quoll>
References: <20260609-pcie-phy-v2-0-83bc80e79fa6@oss.qualcomm.com>
 <20260609-pcie-phy-v2-1-83bc80e79fa6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260609-pcie-phy-v2-1-83bc80e79fa6@oss.qualcomm.com>
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

On Tue, Jun 09, 2026 at 02:52:12PM +0530, Varadarajan Narayanan wrote:
> Document the PCIe phys on the ipq5210 platform. The 2 lane phy uses the
> ipq9574 as fallback. The single lane phy is documented separately.

What does it mean "separately"? Diffent commit? Explain here the
hardware, compatibility or lack of thereof, not the diff contents.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
