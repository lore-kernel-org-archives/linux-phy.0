Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92010606C3FB
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 14:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=czHOAga/;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=RRc7hiqh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=uzVhKt7XbIxsFEaHTWGoui/pYLhWHkvAe6/3KPQrJGw=; b=czHOAga/0ZW2SAm+zpfMCs8M46
	LaRftA9wi1Wzy4tKSEZo/7bK8IYf+tA0mLDVJGjY1c63RODFpRbwWPy6qpNG0ClwxiZ1m+IK26xVK
	D0np54uKVtPqJ7NfUYg2vqWLIrPUkRQm/AxI99q1hz1k0B2zDV0RQByQBUaxknMEXs3DjMv+8H1Bi
	hBGAfxkT4/YJoX6hsqfUSIjx2VfBd2UNKQbbtzWvSXordLl0rNsG88V2Ewe6gv9UXBNr0pgCqM0N/
	woX9xLvgPpDu2LwaHAf0iOtZp7JaXMun72nhrUXmD3Pnv3avgWKl2xB4pzA+y1oyNUHHw67G/Uxy9
	wSmrWVvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNtHx-0000000GsTc-1KbK;
	Mon, 02 Nov 2026 14:45:33 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNtHv-0000000GsT9-0cQ2;
	Mon, 02 Nov 2026 14:45:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5EE7B60DB6;
	Mon,  2 Nov 2026 14:45:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3F941F00A17;
	Mon,  2 Nov 2026 14:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793630730;
	bh=7vvpFbZYF9+EatWYsfyFZjmAL4FqwomgWuTi5Yv6hUQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=RRc7hiqh8QxgBfGnCpjQ5GfLpfJtDbKNTp+S4f+jcYs7aKQiRNt9MyudWdPg9LdF/
	 CgK/Uf9/QQ7mQPSEuMOQXZpDnm4qmmB9cFdu9oFO9wG9Yz6h/4c9hrCW/Hm0J4wjmr
	 kt9kt04KeskZOiY5LXXuA+Hswy+8RdLEH6NxfObkfCJ3RIv7PiTf8wz2Jpaewt3qpp
	 XwG/JJaDdNNYTzoUyiy933ZYLCcSomZIA8Y//PfbGbjkflR7U+FtN3nY3l/4gyNhp8
	 HHTL6fyK+sV7pO2GZ+ri+AqgqNOEN6fxlTNBnXp0gPh1N+xI/f5SA5BjHikgpMB9r0
	 uu0DfftDuebIA==
Date: Mon, 2 Nov 2026 08:45:26 -0600
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: linux-arm-kernel@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>,
	"open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>
Subject: Re: [PATCH 2/9] dt-bindings: phy: bcm-ns-usb3-phy: Describe the NSP
 variant
Message-ID: <20261102144526.GD1232511-robh@kernel.org>
References: <20261021172819.668120-1-florian.fainelli@broadcom.com>
 <20261021172819.668120-3-florian.fainelli@broadcom.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261021172819.668120-3-florian.fainelli@broadcom.com>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Wed, Oct 21, 2026 at 10:28:11AM -0700, Florian Fainelli wrote:
> Northstar Plus uses the Northstar Bx PHY register sequence but also
> requires coordinated USB2 and USB3 core resets and a USB2 IDM interface
> clock enable.
> 
> Add an NSP compatible with a required USB2 DMP phandle. Describe the
> shared PHY relationship with EHCI, OHCI and xHCI so initialization
> finishes before any host starts operating.
> 
> Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>
> ---
>  .../bindings/phy/bcm-ns-usb3-phy.yaml         | 23 +++++++++++++++++++
>  1 file changed, 23 insertions(+)

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
