Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63723606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 15:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=yzNIQM+K;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=ejQAYoBL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=LjVPovs103UyJS39Gpi3/r63k/VU2T7zlpvxsPtn0oM=; b=yzNIQM+KE+R72XE4FTyQvV5u90
	1yxtFFQUjam+y69xYn6lcvM4Xyl4u8g2BE1Tw17Vn/TYtXrrgL1syqsDH/GG7AN7qWT7ZiZmzu4O3
	uQS+wP/x16XqElhiTZx7c2dK2xhQ2m7noc3pHr7K0rXYvovIt8SU2EjSi1W0jts3Qt+WPn8h4rl+k
	9XYuTdj0UpRMdcJz2MmDGm3mIZOO1jQdtaIPOY9vw6rpigcXcNdGS7L3vod0XjrG+A9SEDUfilnqW
	yAa4hdCT+ubl5/37NAZlhOr7raugGioTk6IWqEocBdhPoDfMMWT2s8BZvAe7p1lpmqjWCn0SgUCdg
	3uOQdVpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWy8l-0000000Gtnd-0Wyp;
	Fri, 27 Nov 2026 15:45:35 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWy8j-0000000Gtn8-3tgc
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 15:45:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 628E760E8E;
	Fri, 27 Nov 2026 15:45:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 012C91F0089B;
	Fri, 27 Nov 2026 15:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795794332;
	bh=AeC+f9+xtHroS5gZQKv6Mod1UF7caHj2d3eBTaqZD7o=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=ejQAYoBL+8h+u/6VCHtSI+eihT0YN8WGP4heq0DVMytYdTlOkmupyUvOL3V8vXyTZ
	 LHCLcl4FnqW8OrZenqDsQa8B6QEtuS6oHGS6VZuj2TCcQ0aMxaygzhO8se0iCfe0aK
	 3Qaub50AnSQcnOE4lYuUUSdrn7xIzlGMhbPGmxN4lZfPjCDIlKLqo2iEBaxx3gvfS7
	 XHAdSIdpLXUNbofePRbDAkv8i0oIx9SuVXnQJc45hPucEcyk24tw0vHyfjsjkE48hN
	 FJdJRpl5tUecsNSJ+VJF5Uv+ut/80Sv0CB0/hxFIE/Fd3NlWEnjUU1lQwzE/bgOAzg
	 wjRWg4rJYPMfg==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] dt-bindings: phy: Delete old 'phy-bindings.txt'
 bindings file
From: Manivannan Sadhasivam <mani@kernel.org>
To: Ioana Ciornei <ioana.ciornei@nxp.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@kernel.org>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Heiko Stuebner <heiko@sntech.de>, 
 Alex Shi <alexs@kernel.org>, Shuah Khan <skhan@linuxfoundation.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
In-Reply-To: <20261119092429.2414671-1-ioana.ciornei@nxp.com>
References: <20261119092429.2414671-1-ioana.ciornei@nxp.com>
Date: Fri, 27 Nov 2026 21:15:23 +0530
Message-Id: <179579432303.13164.13606957919284075924.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=716; i=mani@kernel.org;
 h=from:subject:message-id; bh=gWBvMZqEOIcJl/fTLY0ucaK+2ByPjJBWHHwmBGNtJJE=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCaWVgW/yoBztIlCon152Y4gUn3EHb4hWufHia
 Dckf2UYGh6JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawmllQAKCRBVnxHm/pHO
 9dp1B/96S68FCMR1va5ajFHrsMksIjMtB9rVBmlfT/Mqe/eSV1mcqnb6YAwV6lNbfVeypC6WXg/
 Ri/DZkj+3PUFWtrVuETzoG0Fs0RnH23ZrcnW688OQ8S+zW7VLsLeL62Xtr+5JujKbq9W1RR3M18
 9xG9KdWzCEzgumpKxbZP9Bgsh+DJAzRn/P5PNwWN7QlRZDhkqkMmLssU/MO+Mlgq00KfmdGCxJ8
 gSMiU4WZkJBOoRHUwp2wKxKchXHGQM3UByNoEoSaBDLGPr4egcGJ8e5N7lmRumDbzugQ/hxu+I+
 weYWXsbvs11qiDtOxFL7yvNQyWThV7gUXVKGm3qTsKN4VYB/
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-11-19 11:24 +0200, Ioana Ciornei wrote:
> The generic PHY provider and consumer properties ('#phy-cells',
> 'phy-supply', 'phys' and 'phy-names') are already described by the
> phy-provider.yaml and phy-consumer.yaml schemas in the dt-schema
> repository, which are applied to all nodes. The old free-form
> Documentation/devicetree/bindings/phy/phy-bindings.txt file therefore
> only duplicates them.
> 
> Delete the file and remove or update the dangling references to it in
> the remaining binding documents and in the PHY driver-api documentation.
> 
> Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
