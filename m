Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76C9CC282EC
	for <linux-phy@archiver.kernel.org>; Tue, 11 Mar 2025 11:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1JuSGZEfZQtsUTV64kah+o+Wbun1jOhzOV85I+eaQV8=; b=zGOMkN/RxGWtbP
	r22871TJQndpKvzmncCS9rqyoamcvP7aZXJSo6qqcL47iM79vKe5e7z+FBBFcSIPx4dJ6nXTsGJeP
	lT9DQEoBjGwxjz3v+vldHGvI1L0bxHGK6pFuh9oAHL5JydkF33zvyh5QfF0sAw/ZU+4B3DVoqKwXQ
	uFPWN9vS8WUigWahxzyanFU78Ggs7tAzQ9kN6DXPvr6U+MWkQB9sNJc39EX6ww2YsBBLUFelERzI0
	lab9cxPSpOgk7f5tXUE5OdzNVPOoMk26/IaenSHDVH47Jz+3LaQSM/zw60AhJqcfqxcL9vlqIhf57
	PBoSD0G6I6SyM9I3pdAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1try6o-00000005WyO-0wOt;
	Tue, 11 Mar 2025 11:49:18 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1try4i-00000005Wan-1GPR
	for linux-phy@lists.infradead.org;
	Tue, 11 Mar 2025 11:47:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DE6F35C60A5;
	Tue, 11 Mar 2025 11:44:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79ADFC4CEED;
	Tue, 11 Mar 2025 11:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741693627;
	bh=yRXYXZ9rV06lyaY2T1O8v8n5tymGv/7bHYuzwvkdyUM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=UPU7SL2YxU2IXg0KW0RA96lOpuGU2yP7b9nBu990Wtx7QV1nktI6c9jkCjx8VII/y
	 q0Feq0mpHXEgcnbsr2Aef8DasQSJuZZoKNNZh+HZFk/14QJgRr3BxDg/MAqh1lc8n7
	 Ap46k9a6tsPn1458AnKmZhJEOdiUU499KHrtMRTllw/zIM7V6WD0/VxzwOBgpvoMl2
	 SUSWkhoD6lMZO0DhR44V6ty4MXIg/FcWfrnLHWsO6XQ2Q5WYZPc/WBCctb/7WttMX/
	 Pd5wIBZaxYWr4OW1RyzEAZcSe2pfb6TFJ7FHtMn7Qi8cEu6mxZKSFSDjpi9LoTxbw/
	 IymDnNrxvAuqA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, 
 Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, 
 Trilok Soni <quic_tsoni@quicinc.com>, 
 Melody Olvera <quic_molvera@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, Nitin Rawat <quic_nitirawa@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manish Pandey <quic_mapa@quicinc.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250310-sm8750_ufs_master-v2-0-0dfdd6823161@quicinc.com>
References: <20250310-sm8750_ufs_master-v2-0-0dfdd6823161@quicinc.com>
Subject: Re: (subset) [PATCH v2 0/6] Add UFS support for SM8750
Message-Id: <174169362014.507381.5528834930288014855.b4-ty@kernel.org>
Date: Tue, 11 Mar 2025 12:47:00 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_044708_396167_01BFB905 
X-CRM114-Status: UNSURE (   5.12  )
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


On Mon, 10 Mar 2025 14:12:28 -0700, Melody Olvera wrote:
> Add UFS support for SM8750 SoCs.
> 

Applied, thanks!

[1/6] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: document the SM8750 QMP UFS PHY
      commit: 12185bc38f7667b1d895b2165a8a47335a4cf31b
[2/6] phy: qcom-qmp-ufs: Add PHY Configuration support for sm8750
      commit: b02cc9a176793b207e959701af1ec26222093b05

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
