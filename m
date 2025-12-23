Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E15D4E6F09B
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 15:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=twr6aksgqtWax1EYSAuoYUXFKjCxaJg71VascNIq10k=; b=4oIpalmUCkx/uE
	F+xICzT7E5TV7KGR6YW5KO7guZsMZzGkB7IKzXtzDm52b4j+godWRT8BAcutrzNoc359P5wFyu0l0
	3IYr1eZ6cVGwf+RuH+cSYfY4H9iRqePw3PCNOUmcuYfrKvAsGwcITI8qLMKsJfuxGVZ3N2Y3toEXu
	QfIj8FxRYHbKkV1FPjRWLtxmOOp1LnD8erk3jIibKYWwgtt5/T4feMmW8AL2ysJVZod09h9T22QNq
	hZogmCE27d8WcUlOT5IvyWnJTIjMwQdA4hT4ehVYfJSOkKv6raP12fByA85ijx+jvxJtRb1vjIbTH
	LfKylmmbBnv+j7Xe6ndA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY4OS-0000000FhyW-2ggR;
	Tue, 23 Dec 2025 15:33:48 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY4OP-0000000Fhy6-3FlF
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 15:33:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 32F624067B;
	Tue, 23 Dec 2025 15:33:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 584F0C113D0;
	Tue, 23 Dec 2025 15:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766504025;
	bh=2DVRrk++tpb6Jms48QLSo8E9mB5dFTs95V9wz2vjVMk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Moq8GR81iOv/pHAs7cDjtW0BfaXCADsOId11ocr0i9RMoe8VV3vOO0wDRDD01NtdI
	 nyZd9NuD29Oqmx2ZqA58YHaJi4OvPPThNFlOmINLlIzuqbQaJn0c4vqJjek7DH3lzg
	 61wSvURt0cFdSFUarXsEfT2HhxTK8LXVjajXTMZyIngZJyqt5y8XgTtHDUzp78gnuc
	 jHZKrTyE32aLxMtlWv457oK9DON4Cr1AXfgAfxqjwnOUGybovZMLYFFpyYWlnf6GbA
	 I/03k4X6/GwjNlarsWE2go/cojSE0f5uRjaWHlMh4PsR8EEni34Mhsp8Wdww08id9k
	 QhZRMyznE0iYQ==
Date: Tue, 23 Dec 2025 21:03:41 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Abel Vesa <abelvesa@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 0/2] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen4x2 PHY
Message-ID: <aUq2VWecmWRNX139@vaman>
References: <20251216-phy-qcom-pcie-add-glymur-v2-0-566a75672599@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251216-phy-qcom-pcie-add-glymur-v2-0-566a75672599@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_073345_839592_2555D76F 
X-CRM114-Status: UNSURE (   6.40  )
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

On 16-12-25, 10:25, Abel Vesa wrote:
> The Glymur platform comes with two PCIe Gen4 2-lanes controllers.
> 
> Add support for their PHYs and document the compatible.

It fails for me now. I guess I picked up bunch of patches which is
causing this. Can you please rebase on next tomorrow and send

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
