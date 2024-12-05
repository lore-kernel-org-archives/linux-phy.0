Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92C43E77171
	for <linux-phy@archiver.kernel.org>; Thu,  5 Dec 2024 08:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PfEvQMntWMJg0nnKOkUuQxijKlkNztDBwkPkWTM9EtU=; b=oSzqnZpDU9S3Ce
	VWplvJ5AjBQMuJnYg3pR9H6EGsQdjMj44yaaVFcATTyYDWadQy9NoLEQJZd/UDA/4UB2sJ05UJ+ot
	toDMJ5veY9hyydRJIKo7vhi4EYyPvHnGN9QgsqmSpcuCsqadpkjJp7tywD2WmY9IFKZ6SHmCp9CcJ
	a5vj2djzAtxQpHOYGulsgmhk/6+Mw/ihpX880KJX8fIH5gCp/16q3SYE5NBHPEnxb/5ndXSLotHK8
	zRuboyfbqCS3zO9hrTrGK038kdylm5d5/uKlZr9TF/pP4Ohe5GrL3VBaW7nedUv4KehJFM/zpylPN
	nMvb8N/3foaYLn9zMWAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ6rH-0000000F7EJ-2q8E;
	Thu, 05 Dec 2024 08:05:11 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ6qF-0000000F724-4BYc;
	Thu, 05 Dec 2024 08:04:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 2D560A42A97;
	Thu,  5 Dec 2024 08:02:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F234C4CED6;
	Thu,  5 Dec 2024 08:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1733385846;
	bh=FIozSi8SgpqkY9ZdwR7YpI65MxDaseGvlnzWbKVg2nk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cCM/WL7AcmSti272C/8pmCDv4/kLRfmjlVaxX6jKtkohw9FU+pWVbFqN4btG9sx1u
	 XLqWNZjvXB3yI3t6NUvjR32zdTUc0z9+CF/hZQ58QjaxQ/+2VfMyW6NYoqvAb1t2L6
	 67Q9FWFCiKGW3ZiwO2xNke6z1SrKKCgiK/Rdd9t0=
Date: Thu, 5 Dec 2024 09:04:02 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Peter Griffin <peter.griffin@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Will McVicker <willmcvicker@google.com>,
	Roy Luo <royluo@google.com>, kernel-team@android.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, stable@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 5/8] phy: exynos5-usbdrd: gs101: ensure power is gated
 to SS phy in phy_exit()
Message-ID: <2024120528-poker-thinness-6cfb@gregkh>
References: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
 <20241205-gs101-phy-lanes-orientation-phy-v3-5-32f721bed219@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241205-gs101-phy-lanes-orientation-phy-v3-5-32f721bed219@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_000408_113222_BBFC6A3A 
X-CRM114-Status: UNSURE (   9.20  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Thu, Dec 05, 2024 at 07:33:16AM +0000, Andr=E9 Draszik wrote:
> We currently don't gate the power to the SS phy in phy_exit().
> =

> Shuffle the code slightly to ensure the power is gated to the SS phy as
> well.
> =

> Fixes: 32267c29bc7d ("phy: exynos5-usbdrd: support Exynos USBDRD 3.1 comb=
o phy (HS & SS)")
> CC: stable@vger.kernel.org # 6.11+

Why is a patch 5/8 a stable thing?  If this is such an important bugfix,
it should be sent separately as a 1/1 patch, right?

thanks,

greg k-h

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
