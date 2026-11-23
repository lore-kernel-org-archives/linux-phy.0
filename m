Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C97E606A333
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 16:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=U0qZiVQw;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=WSIYT+gE
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=YXLonyO2HIaeU2KZON09uOy09a8mNtU41mhwfuk9T1s=; b=U0qZiVQwiOm6SsODwLfXPea7kx
	/OCCKj2ldw8ghgdV/MFJa1Ew5KwsMW1z0MruskTjp2+VLXHz5BRfSdo6UdvRHZYNQCJYRhYoDkPuz
	O8Kg3aOrhhF076V2j7+Rthr4jMU+in/xECxE/hML2P+yOEEMuPi2vkzHs1RmLTuvqDZuH1PBqZ0NQ
	43KB7mGms3zfeU5/+/sSocMpErBnZ9aF3N+q4PWgc0qpCLTc9rwPWHztmXCcGTrufAcUHt451GNMm
	p0Z0iJUFCChFxFcMN+2zSje1mS1EK0C5US3Ge0dP7+B9x57pwvoxnXtUoh50s8ZkKMrB1N/NM3A0+
	JlKuCQTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVWYn-0000000487s-0mNu;
	Mon, 23 Nov 2026 16:06:29 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVWYg-0000000483t-1Xiq;
	Mon, 23 Nov 2026 16:06:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 599EF4421D;
	Mon, 23 Nov 2026 16:06:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 321BB1F000CF;
	Mon, 23 Nov 2026 16:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795449981;
	bh=aKQbuNwFr/Nx8wYobxXg0xTCe3AGkTE27xzzOZwvQns=;
	h=From:To:In-Reply-To:References:Subject:Date;
	b=WSIYT+gEKpICbw3GpJkX6XyH75SqxoAe5i0bgAzQXRBOCGuLUF7s45+CexEyKh/sk
	 j0drR9z9Y+kXVhQPZSK8BawDKGyuPmJJTkt35kqKmx0++A2xfcMQAwR4PdS32rTslX
	 cmiIwmmJ0wgScyLFsF4n5v1UnFc7XvW8KTbGgc3oqCgJnAuhZpmR/ykNM+vG1pKx1H
	 4vGZ46QYKXcNb64q+29MBHzm971Jd6yImTij6G/ppndpM9hLkdAjnTzo63ilZtSiQE
	 ybAI3+OzJSZSv3kqnO7h8qBHH7qA235LlZgoZ0030udPsHVZvzpe6dUmh3Zs+V50uz
	 AzqKuLhtuLE/w==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lorenzo Bianconi <lorenzo@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Christian Marangi <ansuelsmth@gmail.com>
In-Reply-To: <20261103194410.6632-1-ansuelsmth@gmail.com>
References: <20261103194410.6632-1-ansuelsmth@gmail.com>
Subject: Re: [PATCH v15 0/3] airoha: an7581: USB support
Message-Id: <179544997784.275844.2168533333903460863.b4-ty@kernel.org>
Date: Mon, 23 Nov 2026 21:36:17 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Tue, 03 Nov 2026 20:44:05 +0100, Christian Marangi wrote:
> This is a major rework of the old v2 series.
> 
> The SoC always support USB 2.0 but for USB 3.0 it needs additional
> configuration for the Serdes port. Such port can be either configured
> for USB usage or for PCIe lines or HSGMII and these are configured
> in the SCU space.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: phy: Add documentation for Airoha AN7581 USB PHY
      commit: b5e699a21adf36206a826089b8e8011c6051a716
[2/3] phy: move and rename Airoha PCIe PHY driver to dedicated directory
      commit: 27f22b201fe3c313e88b2256646b2513ab22e0b2
[3/3] phy: airoha: Add support for Airoha AN7581 USB PHY
      commit: 7c6c29cea0ef6b810424381277bbdf1a98c31b8b

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
