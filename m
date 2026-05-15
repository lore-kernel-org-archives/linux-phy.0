Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3767FCD343F
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 07:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7xTStMmx0M3DcCBdJYjG8jSpXyB28YEsLj5xVSoYIG0=; b=09qjaBROs/Q5Ku
	dz1khe0Gu7NbOaTp0VgTNqLtgTdtUTGnWmG6DCMT9Fu7kvFk2hR6v0L/VU+agv9nzpJvkOu3G8J3E
	eghNfJEtLW8djbez3StnWvYdHVNCMYzTEWlnd5W88hpybZsfnYPnlpzaYNZzEVpCNMWbzEgvLwL1H
	YSWnFvnkqjS04bylkgkkILwu2PXvoBrhucD2sTco/+2bNthesTyOMYR6iitQmKq1caA0uH1Vn9P+n
	2l62L1DDgxAqjbhyklhwBjNP1r8vBhLFmwYj6ca/zAglijfxxkEH7X5Tl3cNPgrV/Cel2c0pehqu2
	8lVvDbRSJk2UhTsnzycQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNmjh-00000007b6P-1xpY;
	Fri, 15 May 2026 07:13:29 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNmjg-00000007b5d-0VAD
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 07:13:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6A33A406D6;
	Fri, 15 May 2026 07:13:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9D21C2BCB0;
	Fri, 15 May 2026 07:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778829207;
	bh=ylk6TA5WvepWdgul2vd6F5cmAObEZ2AqgOsnZUxrZbY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jurP/U4rt8M3fR9EIf2MBCAwzhbgtjo/aV+CJKcra/18KYfN6mkg2Jnp4n+JLJ4CC
	 4MKLLGYiAGWGdEORbj1VjULUAzahERhfyXdsy+d0ZmIHFoceoE9hm3iNYPpm129j2m
	 aiIkSAQ7vbiFLNbB4KAsb1r8hjmZSMIP2vRNEONn2Gu2t9+1I84VU0f+NKUIWj4Nhg
	 ZBubTEJ/j1H40x3ExCP6+Ec1Vp4QbBBiUWhKkHZvcttT3OW8pEbNryHQn0GoEAkXNJ
	 Vv14q+R1IYod/5EwFqoe2+nFZVItW0VomWbIn7Ru6+hmpiJAkuDdGM+31tpJszVzrH
	 +ay4bxvxFhTHw==
Date: Fri, 15 May 2026 09:13:24 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Matthew Leung <matthew.leung@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 01/10] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 Hawi compatibles
Message-ID: <20260515-expert-azure-dove-5a73a8@quoll>
References: <20260508-hawi-phy-pcie-v1-0-237b894353fc@oss.qualcomm.com>
 <20260508-hawi-phy-pcie-v1-1-237b894353fc@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260508-hawi-phy-pcie-v1-1-237b894353fc@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_001328_180949_2511A955 
X-CRM114-Status: UNSURE (   7.55  )
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

On Fri, May 08, 2026 at 11:31:16PM +0000, Matthew Leung wrote:
> Document the compatibles for the Gen3 x2 and Gen4 x1 QMP PCIe PHYs found
> on the Hawi platform.
> 
> Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 6 ++++++
>  1 file changed, 6 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
