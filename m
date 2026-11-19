Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA86560A2607
	for <linux-phy@archiver.kernel.org>; Thu, 19 Nov 2026 16:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qJKuBWe2;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=WMO2BvPX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=CqlmH20iVV34gWsUJCYylp0d2SJ9eAoklvC7m/cowk8=; b=qJKuBWe29LTqDQ7DVajm6+sbFY
	XezFjJrXWv5DpqVpTbKSHhRixVh99bR2aSU9hcEMBSNgqoLxezY8AJXEpwJJubilEe29EaBSsTOlp
	0YZ8OApcnx7KDooa4v3H3jklrGPZlF7DcDf23VW7PGBNn0cgqoF5fExEqC0UH0swoXY/1Z9l/YIea
	V8zJbCngq5T80iQb4stKJDQ4zjYujq9ZKAvVndukb0pievku3z4NFueaBhIcqVfXxHjNS2yPHwoRn
	/rbp8fZ1wC2ICmHt4nu9i842oOyfN84HKuinZtY2SfqgzXbsPgZp+KU/1HHmCk68XGgIYMk4Ryj1d
	kiu/a9cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU4vl-0000000Ccds-1imG;
	Thu, 19 Nov 2026 16:24:13 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU4vi-0000000Ccah-0Msf
	for linux-phy@lists.infradead.org;
	Thu, 19 Nov 2026 16:24:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D2262472C0;
	Thu, 19 Nov 2026 16:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B68CC1F000CD;
	Thu, 19 Nov 2026 16:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795105449;
	bh=AkMiUephLKiNzveQJzwmn2T0m49/fLiQwWfrZq9JTIo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=WMO2BvPX7k/e/g7h1btHiqwMzI1UhlU5fjLKU1hpdQZHttOIMzTRqQ79XVYhX8wop
	 iBNeBK6hlkB+TomsNBJyxa5xEWUbmGIhfyReSPrpMhB13SHEPzNbPLakKKGgK0i6U7
	 weZR0m2SQuxdHxLGZcQR4VWfjy4VMIBhnZzTxoOc4oKxc2au4Bj6Mpkvu11LEKIobd
	 T68bDZnwGxyjg63vi607brAd2HmFbRqCCAasq9VfVU4WR8cwwd2CRP2letuGBI69Fr
	 Sc40pdHAkQVJHwDuCNNpW6MS7SWh1Em9PqeTV3vw47jtTQ3jaxroGUZHg0dLqD6JuY
	 2OlHstHLeRUZA==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261102-topic-usb3_sequence-v1-0-5b144f5e6865@oss.qualcomm.com>
References: <20261102-topic-usb3_sequence-v1-0-5b144f5e6865@oss.qualcomm.com>
Subject: Re: [PATCH 0/2] Patch up sc8280xp/Glymur USB3 PHY sequences
Message-Id: <179510544737.1370333.1438032186611624937.b4-ty@kernel.org>
Date: Thu, 19 Nov 2026 21:54:07 +0530
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


On Mon, 02 Nov 2026 14:58:35 +0100, Konrad Dybcio wrote:
> Bring them in line with docs.
> 
> 

Applied, thanks!

[1/2] phy: qcom: qmp-combo: Update Glymur USB3 settings
      commit: 968edd3d8d6565f88b2d95cb68a655bdcc6435fe
[2/2] phy: qcom: qmp-combo: Update SC8280XP USB3 PCS settings
      commit: 27a01a3ba61465a3638ee640255e4706ce4480c2

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
