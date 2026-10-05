Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 864F5CA5FCE
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 09:36:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/BqO3dx7WIlW94dKJVkzF9a9G3bvl4oAg5zLKeEWLfo=; b=ay9QsF5wga45OF
	ObMDsFSVsk/YdvFW5jBE2XkYGp9ObZFLMJDpLphwYNgfMf0/90QgWpVactoq0qlp8aVvAeEecnfJb
	me/VQA1WnfXwTd2ZeApzOB4+9vxHno8oZ/WMrseFwF0UygZ59VhDhWVJBVXXDRtoOhFpw5rXldO5N
	8i0fIbf1LxxqpWwg3oYcPQvpr+GG2g7Ddb/7h/4l/kHhd5FXLMGXCgBHbLLmeEoxAcNfr9GSl9Jv5
	n+zS9lKscwa1mkt3Ufr9JSk1dWU2v+avwnRaLaBiIj1o5B4SUTTtKpDqW8MhkdSPK4HbmSe3S7s/r
	6n6qSh6W059vrqWwbtaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDf78-0000000G17k-3wOA;
	Mon, 05 Oct 2026 09:36:06 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDf77-0000000G17Z-1CBo
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 09:36:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 548FC60A87;
	Mon,  5 Oct 2026 09:36:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D67F1F00898;
	Mon,  5 Oct 2026 09:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791192963;
	bh=0Ao/mLNTjmSkWmcOamQdcSXL9pFAvIeKIenqzfFwDYE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=MkAVn3g+inmSBSz5Fzu0VGiuBrdRC72Erc14Fo1fRXNMasfI6jc0ioFi29XAC4WUb
	 e0EMo8YHg0iO5T49/1QOyhu7gzVXYTKh1Ra03l2yI1N5pDAWyfWZGXnpgl/lkbc55/
	 /4VmY1qRBi0mp2CzzTYl2NnJxFED1hhZetH9teyAcddp5gm5QnYXPXWGJZV/4QHkia
	 XAzd7keTIL4Jh5vl2AFjtM5xzaF+4ZrTujk54/pMK4cdJIWOLzKKLGhX8DTxGdD4zq
	 Savyadu6JZABjEYih4G0DUtpL2Nxu0+8kPyqyfA9i5gEWMqPf/sl1/p+oNpRAfal6D
	 EaRDByI2FZxmQ==
Date: Mon, 5 Oct 2026 11:35:59 +0200
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aswath Govindraju <a-govindraju@ti.com>, linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: ti,tcan104x-can: Fixup unapplied
 constraint to ti,tcan1042 family
Message-ID: <asNvf1LZET8i7UoQ@parshuram>
References: <20260918110116.94024-2-krzysztof.kozlowski@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260918110116.94024-2-krzysztof.kozlowski@oss.qualcomm.com>
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

On 18-09-26, 13:01, Krzysztof Kozlowski wrote:
> ti,tcan1042 is also used as fallback for a few devices, thus the check
> in "if:" conditional should use "contains" to properly validate these
> other devices.  The other compatibles used in the changed enum are used
> alone, so it does not affect them.

looks duplicate of c7f2322431cb ("dt-bindings: phy: ti,tcan104x-can: Fix
property constrains") ? if not please rebase on this and send

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
