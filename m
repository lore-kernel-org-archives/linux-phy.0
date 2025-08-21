Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACA5ACA0FE1
	for <linux-phy@archiver.kernel.org>; Thu, 21 Aug 2025 09:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VNOxRRbzX/4lJYRaTSpzDJvX1GxPIPoETI5+fL31NOo=; b=CwIIL1Lkl7wUYj
	dFuUNonuPjbN//shTZwbZOqz4AnpEQm8V9kVjliIy7MdUcTEOqGLZnYRBh8QqBDvDVPBapZmjJsXI
	o48VeOcbWKp5wf/B7a0IFerFHtZnOSd9n3wYdMBTzB2daHbNzwY2FMpBMmz87mkyXmGoqDL7ssSyT
	DiRYmHZjpeXf08LovUA51KTIo6r+a1Yioj2LVtSerUCfjWw0396kmww3f7UN9cFCt7FTHBObaPu7Z
	kAztFNNM8F4FLNGg9auj+rQ2u0J5eBuaJzoIX4Z5xsuHOoQjac2wZ04EOZjH/eqVzSKoU05vI1XZH
	s0ObSbZkq9oKyBaNihwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up1mi-0000000GRnW-4A4Q;
	Thu, 21 Aug 2025 09:40:40 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up08t-0000000GA00-0O1x
	for linux-phy@lists.infradead.org;
	Thu, 21 Aug 2025 07:55:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 26EFA61142;
	Thu, 21 Aug 2025 07:55:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4016CC4CEF4;
	Thu, 21 Aug 2025 07:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755762925;
	bh=pMS9gP/Ze9Ud12GLJb+Dmughd0PMFtQsq8Kbf0UAy34=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d0p16hkyE+Eg6qGPHp5MPJ/nwO/uk5BcFw6OGLAEsEcv/Bv4EWX9MRb9P7N6fNBMR
	 DglM0SXOJhJxSTDkEhIl3IGd965bdK2+Kk1trtPtTxoSlyDTGU5sXFkHR9yMt2zc31
	 FzJ/VgWm/ZQdyupUbFl9zjXhNc5PQFUleXde9bpLBl8BL04Q5UyAogrJzrWbpc1BjG
	 IzIVVxR1KRsNyWFuLHwjgV9q3tgNWpmos8K7Ulqh2maHXtr9pu+Iq+GXh0H7+YVjh5
	 TngHLh/clLjA0x17o6wj5MSBM2wwUbrMIVAsaR+X1fVXeAGBCyju8TbLSBjyHFRnQG
	 2U7Vwep2GWMqA==
Date: Thu, 21 Aug 2025 09:55:23 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yulin Lu <luyulin@eswincomputing.com>
Cc: dlemoal@kernel.org, cassel@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-ide@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, vkoul@kernel.org, 
	kishon@kernel.org, linux-phy@lists.infradead.org, ningyu@eswincomputing.com, 
	zhengyu@eswincomputing.com, linmin@eswincomputing.com, huangyifeng@eswincomputing.com, 
	fenglin@eswincomputing.com, lianghujun@eswincomputing.com
Subject: Re: [PATCH v2 2/3] dt-bindings: phy: eswin: Document for EIC7700 SoC
 SATA PHY
Message-ID: <20250821-precise-delightful-lyrebird-6b4275@kuoka>
References: <20250819134722.220-1-luyulin@eswincomputing.com>
 <20250820092758.803-1-luyulin@eswincomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250820092758.803-1-luyulin@eswincomputing.com>
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

On Wed, Aug 20, 2025 at 05:27:58PM +0800, Yulin Lu wrote:
> Add document for the SATA phy on the EIC7700 SoC platform,
> describing its usage.
> 
> Signed-off-by: Yulin Lu <luyulin@eswincomputing.com>

You already sent this patch separately (!!!) and received review.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
