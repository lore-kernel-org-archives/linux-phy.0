Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9C81C3DA4A
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jul 2024 03:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7j7hk3oDeduhB8fCyXyOw84I4KXRVhoH7RwKLrUEtsg=; b=PNC6c+P2Y8ffIi
	aoQoqH9Osx+5RmbQqOa76ZOze6hcHCEDT9B6pwhZ8ZLvzpYTYKL++4kz1wNLL/c6bOkgxpvGhF58M
	dY0OzvoX5O6i6O39qkKJnnJUQw6MMVKfW6f6FHBiJAgfftKN+4DrcJK6UJZyqNR713fCRS0m4Yt0V
	9hKKinVgOT7Y5gJeLhIYhyKbNSkGC/4TR6iRbsKN2pydd2qSoCobjAe256pb/CsZGH65yfwZ5w880
	kyowSezELA33IvtMcZvobz9cJle0egTDSx+U4zFET0tu7TJIusrSRhVtdAK4iDGFVuz4FR2+r4Cad
	WQpzLut59QCUTyk9qPlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYHXP-00000009tvU-1Z8N;
	Mon, 29 Jul 2024 03:59:07 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYHXM-00000009tuX-3MDt
	for linux-phy@lists.infradead.org;
	Mon, 29 Jul 2024 03:59:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9081961416;
	Mon, 29 Jul 2024 03:59:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8061FC32786;
	Mon, 29 Jul 2024 03:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722225543;
	bh=d7mQ9oAbEN3Huq+8SSbGBTmEpr4TMrj4uYmbvA2I2No=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UUXx0giR2NKmXZcAGMaGV+JfmT1OBUWf0uXDGKj5a/FR4wWPvEq9Bie/J0x8SDxge
	 mhLKpuF+DkeOh0wALXAIl88NOgZgk4X1c+2MU686EznsJkInF+h1yMbL8efKVuVOZO
	 Y5eNgNOIafn1kK0SLtQDcYn7CEKua1C1j4uWE3Pm3OzB15PyeaocPFTxDiKv1Z636b
	 527iudfGo3aSEHK4Y2/PdkwtF5UM1/uUiF172GFR837OfqIWpqV5P0J3FPSuyUtOoW
	 /op36JS8Q4FZ8+ljEkbzYxIAjyEArqLqBbmWQL1bKJ+F0ww2IkVG1+kjZTtmx5wqH8
	 Or+jM8BV/jpGQ==
From: Bjorn Andersson <andersson@kernel.org>
To: devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	Rayyan Ansari <rayyan.ansari@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Vinod Koul <vkoul@kernel.org>
Subject: Re: (subset) [PATCH 0/2] Convert Qualcomm SATA PHY bindings to dtschema
Date: Sun, 28 Jul 2024 22:58:28 -0500
Message-ID: <172222551307.175430.11891440918185574607.b4-ty@kernel.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240715130854.53501-1-rayyan.ansari@linaro.org>
References: <20240715130854.53501-1-rayyan.ansari@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240728_205904_924086_D4E65590 
X-CRM114-Status: UNSURE (   7.72  )
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


On Mon, 15 Jul 2024 14:01:05 +0100, Rayyan Ansari wrote:
> The following patches:
> - Convert the old apq8064 and ipq806x text bindings, to a new unified
>   qcom,sata-phy binding in yaml.
> - Remove reg-names from the SATA PHY node in apq8064.dtsi to conform to
>   the bindings
> 
> Thanks,
> Rayyan
> 
> [...]

Applied, thanks!

[2/2] ARM: dts: qcom: apq8064: drop reg-names on sata-phy node
      commit: 89721c0e5bf14e06dea2b42ab5efdff4bf035f83

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
