Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3559D606A331
	for <linux-phy@archiver.kernel.org>; Sun,  8 Nov 2026 18:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=KpwkxJC+;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chaosmail.tech header.i=@chaosmail.tech header.a=rsa-sha256 header.s=mail header.b=vnZPO7K9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=SRPpVb6NZBQt2aldga2O5n4rr773GD7FwJkk02ckxUY=; b=KpwkxJC+4DgZmqxwaqGiYfWTY4
	fmvJ18fAxobpJUTTecIQ4sI9AomgTez3bSgj/UAVqrG2yttZ7P92XRexRx/Q4ftb1fJGl6Ge8aSRL
	JSV/N6jiQvxZu5SRtoj61TgLac0+0tFo8d4f0EWdte6YBZkS9/8BoPC6BIBKvWUJAMzj7skXXrIIv
	z0TuWNmhZ0Mk8CbSVM0Y+fYNKc+6NVdx4sgsO1dqVnPUYVBjB+kqqdWzL+DiBdZM6FNU1vdpT98U2
	b5VQfE8rqKTesISgk9h9TaHMvut7PtPiLHXtamb6xTGIZFnL9XQuzthQSplzlgrKOkiOKZ1ZOfAJh
	uC+U/86w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ7Wj-0000000GT2r-3wRS;
	Sun, 08 Nov 2026 18:22:01 +0000
Received: from chaosmail.tech ([77.81.229.115])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ7Wh-0000000GT2F-1AZx;
	Sun, 08 Nov 2026 18:22:00 +0000
Received: by chaosmail.tech (Postfix) id E1BB61C9627;
	Sun, 08 Nov 2026 18:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chaosmail.tech;
	s=mail; t=1794162114;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IEc9ZGuUWt0IoGuerT4chM8IoSWASGRdad0LdA8y7vY=;
	b=vnZPO7K9kRlz8SghCkQLzjjKHdtO6/FrK0I3NE0t7dobQRFY0AGulEeGu+0+k+wsOIpnY6
	qSaYI9iUJw+tZXBFSZURadW3JlutQhW+cSOU4h61BeF5wu9CwxGXKi72lJ/hSjkZjdcp8P
	oKPKITy4nEc80X+NqPAXOBiAfaWvBhA=
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 3/4] phy: apple: atc: Add initial M3 series support
From: Sasha Finkelstein <k@chaosmail.tech>
In-Reply-To: <4a6ae329-0d73-4ab7-bd87-7acafcb8778b@kernel.org>
Date: Sun, 8 Nov 2026 19:21:43 +0100
Cc: Janne Grunau <j@jannau.net>,
 Neal Gompa <neal@gompa.dev>,
 Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 asahi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-Id: <F39FDF3A-E5DB-44F8-A31C-7856F7FA41F9@chaosmail.tech>
References: <20261108-t8122-phy-v1-0-c2783b2a53a8@chaosmail.tech>
 <20261108-t8122-phy-v1-3-c2783b2a53a8@chaosmail.tech>
 <4a6ae329-0d73-4ab7-bd87-7acafcb8778b@kernel.org>
To: Sven Peter <sven@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_102159_785704_F98ADC12 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Nov 8, 2026, at 19:17, Sven Peter <sven@kernel.org> wrote:
> 
>>  /**
>>   * struct apple_atcphy - Apple Type-C PHY device struct
>>   * @np: Device node pointer
>> @@ -599,9 +647,10 @@ struct apple_atcphy {
>>   struct apple_tunable *lane_usb4[2];
>>   } tunables;
>>  + const struct atcphy_hw *hw;
>>   enum atcphy_mode mode;
>> - bool swap_lanes;
>>   int dp_link_rate;
>> + bool swap_lanes;
> 
> ugh.. somehow dropped this comment from the email i just sent..
> is there any reason you move swap_lanes around here?

It saves 3 bytes of alignment padding. Yes, it makes no sense on
machines of that performance class, but I could not resist. Can drop it
in v2.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
