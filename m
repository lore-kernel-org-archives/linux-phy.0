Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 621A4CD8C88
	for <linux-phy@archiver.kernel.org>; Sun,  7 Jun 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y0/Mnd88p04OL+0P55mSIW3TqZPAwUb4nAo6ynO3lSQ=; b=l4YbObMzocenUL
	IgQc6BHAyt3L9a3fUZsGRLZmE15bQFrI6AAYFR/Pzo/vweIGMXrsxJpHyRZlP37BX92vLG1mFhPZ7
	g68KiFrlUpO8XzheHo3FpVYpX9PdZLD/j8eJ9TO/Qy+kaHMP+D+YhE0Obgh4G/1GacHuzR7M+qt7W
	BCFI1Jjsz4P/0AuAw/6vaxjEXT2y01WWwk/Q3fb/bCrHXYJjmL2NPIzqFkJmMELHp65XaSCaPqhWJ
	bVCThKcy2McZ7ayoej+V0910p95GXRFWGy+bGeRacVUdrQqf6rbfK7mLuNbeOwKxsoGnlWgGVVVfT
	e5A8U4U//bRwBmBIb3gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wW9BJ-000000029R5-0X6f;
	Sun, 07 Jun 2026 08:48:33 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wW9BH-000000029Qz-44kq
	for linux-phy@lists.infradead.org;
	Sun, 07 Jun 2026 08:48:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 36A0444265;
	Sun,  7 Jun 2026 08:48:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9CC11F00893;
	Sun,  7 Jun 2026 08:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780822111;
	bh=kZgPsZB4Y7dtuhyYaS+8LCL1SC9e7xH6JgOGoG8isGA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=U4UdCNYyss7mbf96SJnjIE9hiG17oZb/DVjMdxkUROaHqSoziNNReXH5Ul4zQWcO8
	 9BfUadQ6M3sGXO+YuOZ4s3nenx74cFEzMLvetFg+xUBeb3US+imB0hZtuxW2YEZXsx
	 H+h49By0jqi+Of/8u1qtxQLHQL4oQLn4MrWxtZ3E+pydxNTWAr3B7AwbxDNEI1tdsb
	 sS2HlayNB6v16d0zL4GWDY5k3RAS4slYXNWLlMUlVTdleACJ8YusiFlE+BqOxz2pmT
	 2sbKK2XLmI6EC1r3WZFOKXRT9gMwaKu/x1alFGhlFp2uK6zn5IeY7YAQdyz4U4k6lB
	 OtnzQy2vUR21A==
Date: Sun, 7 Jun 2026 10:48:26 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: PCI: qcom,pcie-sm8550: Add Eliza
 compatible
Message-ID: <20260607-devious-active-bobcat-1078ab@quoll>
References: <20260601-eliza-v2-0-6b44c9c23d5e@oss.qualcomm.com>
 <20260601-eliza-v2-2-6b44c9c23d5e@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260601-eliza-v2-2-6b44c9c23d5e@oss.qualcomm.com>
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

On Mon, Jun 01, 2026 at 10:59:45PM +0530, Krishna Chaitanya Chundru wrote:
> PCIe controller present in Eliza SoC is backwards compatible with the
> controller present in Eliza SoC. Hence, add the compatible with SM8550

Eliza SoC is compatible with itself?

> fallback.

Why reg, clocks and interrupts are flexible? Are there different
variants within Eliza SoC, e.g. one without msi?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
