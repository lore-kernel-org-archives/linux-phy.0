Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E452C3065C
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jul 2024 13:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tCnyLorCx4kZse4buy0/ZBtTCbUPhn42tdMakkr2cwU=; b=vTcfy6jZwSmNNb
	oUdl2sF/O+jW8RX9Dp62xvfnYZO/hw/nWkIw39Zf5yw9kA3Z2rRGuqO17xJZTiKJ6IaumMXton8kG
	we0GnDK+gMMSGt0Yd0k/b+RxvyrpOUK07TqD3LonvUWa+OWMHk3MntEvXgxwI9udHvSfQNeyrpceG
	n6ExUzHUjpqj0xJnkCLH785O6yl5mbi7i7ZnExg8HknH+2eYEcqAOVOkQzHnY8ywg7DA7wbID76qp
	vJ6byK1BTwbtaxm/dk3bJcLpxU2ByzeRDkZdcZDhmH7zxdLwEIntXz2bTqGaUs5jjUno4iwGoVRfr
	SbJCwH4fXb8FnjYKy8zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdgT-00000006sUI-3pri;
	Tue, 02 Jul 2024 13:36:37 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdg9-00000006sIh-0wy9
	for linux-phy@lists.infradead.org;
	Tue, 02 Jul 2024 13:36:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 7EE6ACE1D90;
	Tue,  2 Jul 2024 13:36:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD8FAC4AF07;
	Tue,  2 Jul 2024 13:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719927374;
	bh=iuCyZDHCjUYh1ESjfx75LKbK8pm+Pveq1GXDorcZ1BE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=asKQJdbHZMp9fW5ZZLxkwsKC796lTozLhyTnmV0uIqh+G/pr/uJfZGotHs8lAVdkz
	 rtl8rCUdY6oaJKb/uqSQRdwQWSMTbjwv2QGQyzSykBhw/Rej+VGlyv6HuktFb1A9Au
	 FRk3WukAHFFCW23mnbAtwNiw7d4yWVMXzl6hTgnXLrOg6vLRg6cA0ZhX58C7jP11fT
	 YefzHYViAIejRbq+PVFxgqf0nXSMWdR1CO3kj7l16kVBFlnlqhAN7fAYzUnSgNktCJ
	 KKSLFH53Svl+IrfZUiDP6UF824tX1pKpBXU4pgqR+ezYzGi1ORpWSxi4JNuwESaNDd
	 4pAiYOZrzwBVg==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, YijieYang <quic_yijiyang@quicinc.com>
Cc: quic_tengfan@quicinc.com, quic_aiquny@quicinc.com, 
 quic_jiegan@quicinc.com, kernel@quicinc.com, stable@vger.kernel.org
In-Reply-To: <20240624021916.2033062-1-quic_yijiyang@quicinc.com>
References: <20240624021916.2033062-1-quic_yijiyang@quicinc.com>
Subject: Re: [PATCH v2] dt-bindings: phy: qcom,qmp-usb: fix spelling error
Message-Id: <171992737051.699169.5180410107372263971.b4-ty@kernel.org>
Date: Tue, 02 Jul 2024 19:06:10 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_063617_478448_F8F785E3 
X-CRM114-Status: UNSURE (   3.80  )
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


On Mon, 24 Jun 2024 10:19:16 +0800, YijieYang wrote:
> Correct the spelling error, changing 'com' to 'qcom'.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: qcom,qmp-usb: fix spelling error
      commit: 3d83abcae6e8fa6698f6b0a026ca650302bdbfd8

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
