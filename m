Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C52ECC43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 19:22:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=NWj6i2GOqQ9+iaTtY9G5Ul9OtpyorRCFvXnPZ/d/BLA=; b=wr27c4oqZymYQL
	Pfwm5AEnByxBat8jIHzeNxEvXa3YHn5kDkvZozP5Q0zzzVCgrz/3icJEzhJ14NIFkFn/SJoxtcrvO
	b5gh0htLENiUhG0dIjRMEC+2v2HlsRpEnDjvymq24HHrSu9ZRYQstVC7jYL3sMaE7Jm1tMBryrj8h
	cHsMYR6Dj63MYmRwPIk2pKnRl6zEgnPbAkx6tplFlAJDGIxaeXZyQWrx61ZixRV9ONo1rVlRnllz+
	/Xn0AuE1MxVq3o8I/lg0qDHg/FJSJpvu57uWxL66KXbqBFh1L84zJjvTxkD+1nbF0+C0+MMwTslx7
	NCJ02jwRPlhhUg7nAxWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wee2g-0000000075b-2Kxx;
	Tue, 30 Jun 2026 19:22:46 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wee2X-0000000072r-3ZpQ
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 19:22:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8B44543F34;
	Tue, 30 Jun 2026 19:22:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EF2C1F00A3A;
	Tue, 30 Jun 2026 19:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782847357;
	bh=93+khCzYAxSuZ6LAEDHQmhDcBOzCoIbxXWmUh6yplEs=;
	h=Date:From:To:Cc:Subject:In-Reply-To;
	b=nz0M/7vsVhwb0KqueOLLKIaOEdw/r77pfoDWR/QRvJRlF9Lso4B/URWwYHVsWxXOm
	 p95jCHvlo9k0RPeP+2NDP8OI7dIj6TZ3N3zQ50um+qzPLwwW/vo/AG5yzelDF6w8bM
	 YunrhVD746DO8HyOajx7JbmLqf+UhrtZAn+x0yNjwbc6fVeWnC85AhRcN1CsYiSb00
	 391uAs5DSybPVvI+QoxOGett5drXd63ntnXxZXSGB1Ydh2pgQl4BHwYJaencGZlKiU
	 EkLbIxout9q3KhhqryruTvRLvi3wKtROK1N+RXQQEYqBROFN1aBM+FKC+8nH0yMkty
	 sMRHi/HqTj2yA==
Date: Tue, 30 Jun 2026 14:22:36 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH 3/9] dt-bindings: PCI: Add bindings for endpoint gpios
Message-ID: <20260630192236.GA222338@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260701-shikra-upstream-v1-3-e1a721eb8943@oss.qualcomm.com>
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

On Wed, Jul 01, 2026 at 12:32:45AM +0530, Sushrut Shree Trivedi wrote:
> Add devicetree bindings for TC9563 GPIO's which are
> used to control endpoint power and reset.

Include context in subject line.  Regrettably, previous commits to
toshiba,tc9563.yaml don't include that either, but I think something
like this would be good:

  dt-bindings: PCI: toshiba,tc9563: Add endpoint GPIO bindings

s/GPIO's/GPIOs/

Wrap to fill 75 columns.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
