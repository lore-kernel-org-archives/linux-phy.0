Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43110606A68F
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 21:26:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=T8eR8kjJ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=hY8lg8xN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5BY9xk9VxznazMNN1O3bcPKEsp5pkqDo06vXUr+9t0k=; b=T8eR8kjJep7mhmtsiCAD3lmk8t
	Hfe3uOyq74I7OaIcqX3dwn+k4IXguBlpZUGkA67HYw8xvMLDNhi2mqn3KhymJNcxNRTJCr+SL5BGz
	84gailJlzMb1vH2vAfrOBYCrF5WrNrrPrySZE0rApUG0puu+k7FUfJDrgg0uFMz3DQDNvB6UqxhSr
	/So8ELblCe5C5407F5qb7IGQVaCWU0A/jX9exSKnlOSPgfhGmc481/iBldBSzsxh+t7ayPgYm4Qaj
	N4G6SF+aGyQVShRY8VasOUwQe5ucGZk4Fremrw3DwJFOwS+Gg12XofkwOLslY1S8msMLHsOV7wFPi
	R1NsRaZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVbYV-00000004yGc-3wdu;
	Mon, 23 Nov 2026 21:26:32 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVbYU-00000004yGJ-456g
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 21:26:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7EAFA43B60;
	Mon, 23 Nov 2026 21:26:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E43A61F000D2;
	Mon, 23 Nov 2026 21:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795469190;
	bh=+iWTLE/0hLAupgxxnA4BzEKPp5orZKZGckOQh2A0pLg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=hY8lg8xNR8MktreoktReE9AmEzJfCNfMJezuMp4ZLABd2RdSrVSb/rypc1M+ZL+fI
	 zUvk/WgZE3QcpSw/Lx2+eknbH/XSXEXV4BiJyMdfU1l5xObRtM7Lv8RJ8UKSEBxLQI
	 4i0ieflGKeAdOYfqA8c+gNW4WC/i/XsuqFI1bjX7D5cbNisp3TW4xaaKrFsV4Btmsf
	 qRdKYlc9qN6oaL/Ta4hcetgF1zoIon0GVfBKmNKHl67yEUcyiARN+V1Oo4odpqn2Rz
	 OzWriP8F5jgsS3Vwr5+TAWzElt/WMHWov+VASVeAXDfzOh7wTdldslwTf5UguIGyz+
	 HpbVQi9MJh1ew==
From: Sasha Levin <sashal@kernel.org>
To: Mark Brown <broonie@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux Next Mailing List <linux-next@vger.kernel.org>
Subject: Re: linux-next: build failure in the final build
Date: Mon, 23 Nov 2026 16:26:27 -0500
Message-ID: <20261123212627.1203724-1-sashal@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <awR7nSOWkxRm-iP6@sirena.org.uk>
References: <awR7nSOWkxRm-iP6@sirena.org.uk>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
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

On Mon, Nov 23, 2026 at 05:45:01PM +0000, Mark Brown wrote:
> I did not specifically identify the commit that triggered this, it will
> be some include file reorganisation which causes PHY_TYPE_PCIE from the
> DT headers to become visible to the driver, clearly there is a
> namespacing issue going on here.  I have ignored this for today.

I sent a fix for the driver yesterday. It renames the driver's enum
values so they don't clash with the dt-bindings ones:

  https://lore.kernel.org/all/20261122152857.1113943-1-sashal@kernel.org/

-- 
Thanks,
Sasha

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
