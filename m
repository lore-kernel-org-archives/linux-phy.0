Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF9C7E77173
	for <linux-phy@archiver.kernel.org>; Sun,  8 Dec 2024 15:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XEZzKrShHMOxoDO0Uf86I5VbYkZU/xJB47r4R/iBeFs=; b=v7Pa3qN4ElsM7p
	adsQxTMNoOqMH373X0I0CAlDdh0UAV5HsU9B4QGWhgmUhkwj5Ss5y7rXDRgoR5nFkXzJUbxX2/pms
	UQ6Nxw7fJWmyZ96Fg2PwsuRQqZWmqfhxNGMOZdn7B5BXJXT+n9clZd5/Ae75jpgewPFRIhmoC5EW5
	b9IzAeOlbqFCYWK9VHOztSmxKwcXHq3nDclB/4diHkuXkzJAgC4vc5D24wW4omnZWVLtz0LSC8pPK
	270Z2GglxeVDo3BUweF9ajtu/BVWfm8jHLAWsr2fXiHK4m2KsT44q+F8/sMsTeHOhRGMsrVNfbmIn
	83q33QeD5hPmYQILd68g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKJP3-00000005UIo-0Hc1;
	Sun, 08 Dec 2024 15:41:01 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKJO0-00000005UDD-1mqL;
	Sun, 08 Dec 2024 15:39:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9111E5C47B2;
	Sun,  8 Dec 2024 15:39:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DEB7C4CED2;
	Sun,  8 Dec 2024 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733672394;
	bh=Gx5f3shkmroS7Y09AqZgaEyC/C5onrqzjrHhIwJpBz0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YkYeFAWGk6JHOupu1GMUBk0SlM6p+IOAw9vlYwa0MdY/jyia66J1rVBvr/o3RIC8S
	 gtskvfoaAZFs5C8SAqaXYDnPNwsYvZhraWxfqO4v2TvvTS4Lp6uMKfVR7OJr2ZtIf8
	 2aiiJ2ySwZvRm0/tdxuCG/5P4StdL8Cm7cgSCx38HaZOq6qAjLMc7WpH8s3hcfobDb
	 FAEe/XSVC3MUk/4xLqw78bqG9ZgBl3jxtEHuneG/fmn9zAvmj2CvYGl1+ShGv/Nlhk
	 IWvPp/lKaqvnyobiwzi4QO1W+pQOcZ+NFIA2R8mMGN2D9J3ROC0TdW0Ol7jEhwgDcS
	 T5mOXoYq+tECg==
Date: Sun, 8 Dec 2024 21:09:50 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: =?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>,
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
Message-ID: <Z1W9xuCrn40uPWbr@vaman>
References: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
 <20241205-gs101-phy-lanes-orientation-phy-v3-5-32f721bed219@linaro.org>
 <2024120528-poker-thinness-6cfb@gregkh>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2024120528-poker-thinness-6cfb@gregkh>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_073956_507633_FD1C1AD7 
X-CRM114-Status: GOOD (  11.23  )
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

On 05-12-24, 09:04, Greg KH wrote:
> On Thu, Dec 05, 2024 at 07:33:16AM +0000, Andr=E9 Draszik wrote:
> > We currently don't gate the power to the SS phy in phy_exit().
> > =

> > Shuffle the code slightly to ensure the power is gated to the SS phy as
> > well.
> > =

> > Fixes: 32267c29bc7d ("phy: exynos5-usbdrd: support Exynos USBDRD 3.1 co=
mbo phy (HS & SS)")
> > CC: stable@vger.kernel.org # 6.11+
> =

> Why is a patch 5/8 a stable thing?  If this is such an important bugfix,
> it should be sent separately as a 1/1 patch, right?

Correct, one should move fixes to top of the series..

-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
