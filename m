Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD424606A320
	for <linux-phy@archiver.kernel.org>; Sun,  8 Nov 2026 18:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=TJsFi7WM;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=PUN0WCrK
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Jy6WzxNI8M8VNAkIEcSI+FcJAw+3E5ilKWpJg6DOfLA=; b=TJsFi7WMynY8ysTj4zZMNURxAQ
	wBHJQk7ARWkeMeg2ef1M+8tzephnJFa2OIKJ6IV8c21wfEi/8pZjc2ej/uTnSIONrK7+wk6X9cIYD
	j1P6VBF7zrfNB4oxn6yb30SBkcdjZlYsnhvWaYrm5AuHMwGxWnwXlqDBD2lEehan0Qlm1raA44QUq
	5jp4qYKpqjqT01vxVjO5dz8mxxGbNgr8FLrLpvW8lIPQ64fXmamK3Y/P9WCt50RQN3nEND1YxQAK5
	xfz2s146/PfUreL1K5/WEGDQ23DV3AtaaQZ9fTP0DmnBXUYDMYPMfAvt0dPJuqXxuLwQy67P1Tm0l
	uL3M7W5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ7aX-0000000GU1g-1TAr;
	Sun, 08 Nov 2026 18:25:57 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ7aV-0000000GU11-2dhv;
	Sun, 08 Nov 2026 18:25:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0822F40606;
	Sun,  8 Nov 2026 18:25:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E476A1F0089F;
	Sun,  8 Nov 2026 18:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794162354;
	bh=idbZZdn1SuOKgz4rauQtb73BBm+iL+Kf0sgPmQoAV8A=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=PUN0WCrKv0kOZLULktHuNYch9QCXMUz3JcXKhYltea5si9QLYpK6FSQYpTTWkkQDJ
	 o3Vs5WmveOPcHwW8u+LZWIvRyYsAm0I4sgYnsa2HgFDSVOc5YHrJpSrC17bEQvBPtS
	 xPXFwb+NeFQyhd9c2nFYoWghDXgr32gE/uLe0cEy+iTIlxzVElqn2AF+AeNYKO6d61
	 2HQlOc1vTl2gGLboP1xKfJYCOQ6LW6nSJ9tpmdUMR1Ge28C3FEBs+yWFilVuvbtCMU
	 ejfFP7khTkGmx8xFXEA8OKL2Pp0COHNbgmu3aodcTDkjEJMJa9KNuuRgIv5ja8Bgke
	 PLuv9ZuV0iBng==
Message-ID: <2a1fb3a2-6adf-47d3-9aae-2ac46ca95cea@kernel.org>
Date: Sun, 8 Nov 2026 19:25:48 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] phy: apple: atc: Add initial M3 series support
To: Sasha Finkelstein <k@chaosmail.tech>
Cc: Janne Grunau <j@jannau.net>, Neal Gompa <neal@gompa.dev>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, asahi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20261108-t8122-phy-v1-0-c2783b2a53a8@chaosmail.tech>
 <20261108-t8122-phy-v1-3-c2783b2a53a8@chaosmail.tech>
 <4a6ae329-0d73-4ab7-bd87-7acafcb8778b@kernel.org>
 <F39FDF3A-E5DB-44F8-A31C-7856F7FA41F9@chaosmail.tech>
Content-Language: en-US
From: Sven Peter <sven@kernel.org>
In-Reply-To: <F39FDF3A-E5DB-44F8-A31C-7856F7FA41F9@chaosmail.tech>
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
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/8/26 19:21, Sasha Finkelstein wrote:
> On Nov 8, 2026, at 19:17, Sven Peter <sven@kernel.org> wrote:
>>>   /**
>>>    * struct apple_atcphy - Apple Type-C PHY device struct
>>>    * @np: Device node pointer
>>> @@ -599,9 +647,10 @@ struct apple_atcphy {
>>>    struct apple_tunable *lane_usb4[2];
>>>    } tunables;
>>>   + const struct atcphy_hw *hw;
>>>    enum atcphy_mode mode;
>>> - bool swap_lanes;
>>>    int dp_link_rate;
>>> + bool swap_lanes;
>> ugh.. somehow dropped this comment from the email i just sent..
>> is there any reason you move swap_lanes around here?
> It saves 3 bytes of alignment padding. Yes, it makes no sense on
> machines of that performance class, but I could not resist. Can drop it
> in v2.

Fine with me either way ;)

Sven


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
