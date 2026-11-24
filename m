Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A255B606A331
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 07:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=476vztc1;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=k+lCVSWv
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=vNFnQL727OTklpgO25VCQeFpAYmR+ybC8YPGh0g9J7U=; b=476vztc1g5r+xXHT066Y8gFCXq
	xvTx0oS8KvOhpts/Tg28i6/+5xNvffe18aFW4EXu92o9Qq2qBUSl30ptIBlPq2G7lRMk0mm2wxR55
	1Mbqdy1lOxYUAOahYe/2OMW1YuqvfapA5pNNovnS19h4G6NGF+bbu6MOIdA77IySsrnsHrBrwGB6k
	4LHnnSj6LEWs5BE2+0JWE57+6RpLpK2uIr9Js0Ztqj6APpcJXv8SY2lP7KVOOzi9PuyagNiYDysPJ
	zqnXXqpsL7EKGCR5/57OU8kOLMUOfQ3lEoJtWdKyrwXnMlSefKlAMI0XLzKjVzmLmuP2ymfjUMqX/
	WxXuKYjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkxf-00000005kwn-1Z7n;
	Tue, 24 Nov 2026 07:29:07 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkxd-00000005kuN-4A5z
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 07:29:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1C00B61FE0;
	Tue, 24 Nov 2026 07:29:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A3A21F008B2;
	Tue, 24 Nov 2026 07:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795505344;
	bh=jchSLJsqV4qE+3DYHPFPVhJBS7qk1PO5V8blsH44owM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=k+lCVSWv3bjRodISlhG7FCo3FHN8ywi0Fjzt6a2a/CV5dcdf3tI7fbUwI4ReA2SjJ
	 DkdOr0tyDHnId9V92+vPHLyXjRXLBn8GRtwAwKo1fkYm6fejFst3pWHigGYH1ZRtMA
	 ljZsW4Y33EQgmIrcHLWEmlDH/Rl0aTgYUCY/viaU9mAJWYUKQ6DyWGsqenbam+5ALl
	 /TsSD8eSmawHGOio8NJaLjC0Ce0kNAHKyuZPl6YMzvvgY13rNqpxOJu6TQ1Dh0SGrV
	 IF8dONHlysNau47ceXfYuRKlAg9NX3bSbxUjm63n28mK/r+MB7ufhHLCWUOmznUTLP
	 TfAswFLJtKk+w==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>
In-Reply-To: <20261123190541.262138-2-krzysztof.kozlowski@oss.qualcomm.com>
References: <20261123190541.262138-2-krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH] phy: qualcomm: Allow compile testing a few SATA and
 UNIPHY 28LP drivers
Message-Id: <179550534221.327723.5344267836374338084.b4-ty@kernel.org>
Date: Tue, 24 Nov 2026 12:59:02 +0530
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


On Mon, 23 Nov 2026 20:05:42 +0100, Krzysztof Kozlowski wrote:
> There is nothing architecture specific relevant to building of
> PHY_QCOM_APQ8064_SATA, PHY_QCOM_IPQ806X_SATA and
> PHY_QCOM_UNIPHY_PCIE_28LP, so allow compile testing for increased build
> coverage.
> 
> 

Applied, thanks!

[1/1] phy: qualcomm: Allow compile testing a few SATA and UNIPHY 28LP drivers
      commit: 910b8ba234c00f91aaaaf102e17b8c5b539b3e17

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
