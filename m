Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A147E7107F
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 14:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mb89JglsaolTl5rnOrQxLdVfYYWXS9fnSycgo0s+VM=; b=JssI2M/oON9rgc
	ffPLr5zQeU/rSoo+sZr7uUcWIneaeuxhGdnw8/a4rR2QZjjYffIVCkvDlR9y8zs7tED1qnHMdlF+T
	U0grHYju3oCYvkMCodix9nBFWEcvCj2OctC48d9DUZEEN6BGzt/yqPgRDyHmXZQYYAr7AEp/FOquI
	wIaqCLMEHvStJvS6OCAO19FEyqf0BuheFs10STafwYtGLjsIfGtGbDfqCw9ypUki0ZQHc3zTLysWN
	hhWCZvH31XmJT1TLoOPBdLxzPvjguMscKq9TXw7v4Fz0AU8VBcvib550OJfWTUZAi90wrojgwExJc
	G1J+FhbOOsvF6sa6nW8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKdO-006GND-0q;
	Thu, 21 Sep 2023 14:26:26 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKdM-006GME-1H
	for linux-phy@lists.infradead.org;
	Thu, 21 Sep 2023 14:26:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DAF27601FF;
	Thu, 21 Sep 2023 14:26:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A633C4E75D;
	Thu, 21 Sep 2023 14:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306382;
	bh=eSl17G8eK2kQbH10tdoLpn2Y/BOUkqeqUns+HxQ6GpM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=DKW5xKYtji0EPafr/mZ3hXEll86eV1FA+bCuhb2A7wt27LFiKmy5+7p8j0AX3tanl
	 40kkrPzZVcWEGVymYNoP25R943bXRwMHV5noT/c4yJbmZiSXqVVl2CMjSLlwxpbWaB
	 4kwgP/70sqLCXX8x632uZ1cw/Dt8Q+1OUcMq5BZ1/uHUXzvQawjooCnFN42W2EMtE9
	 dlBMxw/5NLAMF93wxXCm/rBfdSssuGmmZuSJXU2cWxGJXTmn2xMZTKYfNkxEjeyXoH
	 A+WVAVj2uNp9EwWGqaNdF6aTi8lodLVij2dBfmeZZPKbc7q/KzB6U5FAQevwHy72lS
	 KThkk2RF/6J0A==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan+linaro@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Adrien Thierry <athierry@redhat.com>
In-Reply-To: <20230829-topic-8550_usbphy-v3-0-34ec434194c5@linaro.org>
References: <20230829-topic-8550_usbphy-v3-0-34ec434194c5@linaro.org>
Subject: Re: [PATCH v3 0/2] 8550 USB QMPPHY fixups
Message-Id: <169530637891.106093.4643424421266973935.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 16:26:18 +0200
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_072624_480571_5AB94E1E 
X-CRM114-Status: UNSURE (   5.88  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On Mon, 11 Sep 2023 22:07:13 +0200, Konrad Dybcio wrote:
> Inspired by [1] I went over the 8550 QMPPHY init sequences and found
> some inconsistencies. This series attempts to fix them.
> 
> [1] https://lore.kernel.org/linux-arm-msm/20230828152353.16529-1-athierry@redhat.com/
> 
> 

Applied, thanks!

[1/2] phy: qcom-qmp-combo: Square out 8550 POWER_STATE_CONFIG1
      commit: 112c23705c6dc59a05290c8e3e597e1b4e9c23fc
[2/2] phy: qcom-qmp-combo: initialize PCS_USB registers
      commit: 76d20290d0c66a84a7a40c6231e73d1ab25994e5

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
