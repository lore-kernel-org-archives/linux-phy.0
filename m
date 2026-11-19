Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6107360A2606
	for <linux-phy@archiver.kernel.org>; Thu, 19 Nov 2026 16:24:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bytgQftY;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=hxKT5OeH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=SYqmTK3yYZ47gMV+sA5xBZ+6oZeCvJhA6hWiQdCVKQs=; b=bytgQftYjGgbAwVEnxfgTPdzwZ
	nUJlNJpyItxVAqEe29bVoaIWBO8xR7Wx2CMboVT6icEigGe2rltvs9lf97vsiZhIHDYGQHaatnMvI
	li89IeyfnmLxX/27N8XWKAuoNLUXxlLUf0+vBJagk4sksRyo4hGK+Jfw41oygpITSQKL9LffksNoF
	songIbkXfOgDV1YgZoeijm5hgUqZjvH+4EVOHWas/qy+cel9YZD/YbhdxNw8HgOSoUPnhz5YazHab
	obAD9Ipi4B2caAVIRypLoyt6y5pbczv69aSqxR7uCYNofh4DFz6V9OBIdwY8A1xZ6YkDNRr4ewwOS
	vXV/fPtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU4vZ-0000000CcTs-0IG4;
	Thu, 19 Nov 2026 16:24:01 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU4vX-0000000CcTD-2XVZ
	for linux-phy@lists.infradead.org;
	Thu, 19 Nov 2026 16:23:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5F0C94129A;
	Thu, 19 Nov 2026 16:23:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B09311F000C4;
	Thu, 19 Nov 2026 16:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795105439;
	bh=dBXavqtMtY9Ez2EruGyacWXl/ozOz7EdwD1qaC6t62M=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=hxKT5OeHFCzRi8nnnXANQv6Kp5gTvPp0yNZGs3Vh4tn2dKS9jSU9+f/e/9C0lInGN
	 GsE3WmzXSbvJS0W20zzjFljt3LPHWhWSQzKzfLUSCfi7/22Pdq1HGgo1laHWIZUWoz
	 8kDAx8IbRJFvMWLeW69mA8ZXMWmd468pLnykkNt1Y1TcJ12jMZ2IWtGaBT7yMXPd44
	 LlbjFqb/IWNbH8tcDqC+/jtrQ3JSI0y1krRYz3MHRGZ+VZxrhQ1jceZL66+Wkh25Zn
	 iR/uKg0P9CBDzMrq+tBXFPfNTbDpJ8KVuL4DxCPh6Hex6wtHeNKVHPL6DyGatIznPS
	 oo6LhfCEDYP3A==
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 Bryan O'Donoghue <bod@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Vladimir Zapolskiy <vz@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
In-Reply-To: <20261026224957.1115370-1-vz@kernel.org>
References: <20261026224957.1115370-1-vz@kernel.org>
Subject: Re: (subset) [PATCH v2 0/7] media: qcom: camss: Add SM8450 CAMSS
 support
Message-Id: <179510543434.1370333.10289839587183821711.b4-ty@kernel.org>
Date: Thu, 19 Nov 2026 21:53:54 +0530
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


On Tue, 27 Oct 2026 00:49:50 +0200, Vladimir Zapolskiy wrote:
> This series adds support of Qualcomm SM8450 Camera Subsystem.
> 
> The CSIPHYs are described as separate CSIPHY devices compatible with
> X1E80100 ones, there is no legacy CSIPHY resource description in
> the CAMSS driver, and this option is not intended to be supported.
> 
> The change can be immediately tested on any SM8450 powered board by
> running an image stream from TPG to CSIDs, CSIPHY IPs are equal to
> the ones found on Hamoa platform, and were tested on a private board.
> 
> [...]

Applied, thanks!

[1/7] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add SM8450 compatible
      commit: 069e05f3dfd76b1ee4d0500056c983a469f58b87

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
