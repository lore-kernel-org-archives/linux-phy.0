Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EACF3606A320
	for <linux-phy@archiver.kernel.org>; Sun,  8 Nov 2026 15:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=X0Ft5RXU;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=egToMPt2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=tsOabzrP75Nu0KZaUZi7IEZtT8jYAVtMONFyQAhwaK4=; b=X0Ft5RXUE8UFznBbclTYYOeB3H
	6BlKIQIhRFNtRj3JyYP9HgvRPg0R/LwF+IgTJg2mCcT26LNIhoa27L5ktVHncwosqnHuF59i5s8w7
	Tg6cB41VDsDe8HCiHGLBYQruMCZGH2KhIcUhObOavo29pjtVeUlhV0oiy7GKAeco8Z7eBdfcoScOd
	sB8ZhYWQHtIpT37o0ptPbyJt22MhZ9I578XNTeQhGzzAaNzI2qRWNEy3TYKz4mC1MdLh54eTlvRQS
	fFlY/LNw1TqfWsLy4+yMTcL7SEFUaM0baSMU3P9ZR472W5MGaft78sut0LKwsUz7SbCVANkDvbnd0
	CI3hGTPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ58g-0000000GKzq-2t1c;
	Sun, 08 Nov 2026 15:49:02 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ58f-0000000GKzV-0O2Z;
	Sun, 08 Nov 2026 15:49:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 18C2B60008;
	Sun,  8 Nov 2026 15:49:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFE2F1F0089F;
	Sun,  8 Nov 2026 15:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794152939;
	bh=JUZpTPwtsTYUFSEsrpQwXWgZoO/NXGbcSwH3xZK0OKA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=egToMPt24Uz5/naUoZfRKcpUuLOurSV+z1+3iG3h7F0m8X1hscyvJ8Wck1bzEsSnY
	 Lfwbsc5MyUfvkc00ETTFQu1ha9oMbHNoVUuP1kyfQSAAumAXuq80iZdshwoXlFz4LO
	 6ulCDFy0TF+S1AU6ROpf5ao+hHVO3AHeTVkZ4cCDQ3tAZOfWhd9ychk61vB8wWPLPj
	 r9dFbHDuHDbV/cheftc3t1fEH2NXewYJcHmvy5K0OyIrvTn8etDVSwLy8/keTlGgHh
	 egZU9/3kYqkfSVyX19qPFmK48adpW7JYWceccnSU9MeA2WtpFfPEvrWHscamBDqJMz
	 Albq9q7qlkeyw==
Message-ID: <2648d9de-9bb6-4c36-995d-b671ce5477cc@kernel.org>
Date: Sun, 8 Nov 2026 16:48:55 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] soc: apple: tunable: Allow passing NULL to
 tunable_apply
To: Sasha Finkelstein <k@chaosmail.tech>, Janne Grunau <j@jannau.net>,
 Neal Gompa <neal@gompa.dev>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20261108-t8122-phy-v1-0-c2783b2a53a8@chaosmail.tech>
 <20261108-t8122-phy-v1-2-c2783b2a53a8@chaosmail.tech>
Content-Language: en-US
From: Sven Peter <sven@kernel.org>
In-Reply-To: <20261108-t8122-phy-v1-2-c2783b2a53a8@chaosmail.tech>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On 11/8/26 16:43, Sasha Finkelstein wrote:
> Make it easier to have optional tunables by tolerating NULL entries and
> doing nothing when one is passed
>
> Signed-off-by: Sasha Finkelstein <k@chaosmail.tech>
> ---

Acked-by: Sven Peter <sven@kernel.org>

Feel free to take this with the rest of the series through the PHY tree 
once everything's ready.



Sven

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
