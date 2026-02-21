Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1F8AC61DE1
	for <linux-phy@archiver.kernel.org>; Sat, 21 Feb 2026 10:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S6lyYeZ2kjhXNfGUvuqrH93puYInKHQYqsqdMVZfrE4=; b=n5DArV9Z0LEUJx
	U73/c2eCl58+Mv/TLGz0fwBiIrExrMGJMJfnNOGp8H6XiVCnOuM7X85CSqgTsWbYOUN3iitXt5EZ7
	zYDghgWNh9TMuJF+xUYpvdAuClZEEJzAjN8iqT3xiNvRnntczR9dB5/0X5xDVyqbaUNVS6d6UnNUQ
	3Y9GtSJR4zgU7pL/42dyAwv43+v04PnxxI5g1EWlENr0jXIv+zZ9fzAwUp+TyQEqKt6zaTR85pwFX
	e4daet5FIWN5iewa0YrXCl4etaQDcTz+M1AbECtYzlXD8IEE/I383Q0RZmoYlqvMa/8Zk5h8bvJMD
	rqsn6lWsMfEoBroXoPOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtkAF-0000000FyIu-3ca2;
	Sat, 21 Feb 2026 10:24:43 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtkAF-0000000FyIn-06hG
	for linux-phy@lists.infradead.org;
	Sat, 21 Feb 2026 10:24:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0DA336001D;
	Sat, 21 Feb 2026 10:24:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A2E7C4CEF7;
	Sat, 21 Feb 2026 10:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771669481;
	bh=fWU7XCC0TcYC+exWhpNowAjWcwL2oXj5CyfqaBnBW4o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FpuwBMq1h9YNXi8+eQgEAsXjmUTBtHjYNgCThIynL7uizJW62KIJpz4A5T/Td/buc
	 YEODvgB8zwD1kNua8ae2+smNOfJ/+LvvyFlmH6hBGgR35SOPfVadVG8XFnt2OMJSiF
	 hSJIgKBzt3lPwJe7sSkUpiLm4FiKmMhSrTtI5AttVVwogUputY+UAkZJNE4wo8Yb1a
	 oRqJ0p0yp4GDKGiYROwk99X7V0NErytkktLfvjybhCZqvqX9F76DeZodx8uuHOd8ux
	 ZulVGNEasS2EfcvWYxf6d5R2TJSicLmmN173Grf/OPluMmW+ce7uyYShXMjocKH20V
	 kXsuROVXpQvpg==
Date: Sat, 21 Feb 2026 11:24:39 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Nitin Rawat <nitin.rawat@oss.qualcomm.com>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: document
 the Eliza QMP UFS PHY
Message-ID: <20260221-fascinating-alluring-dinosaur-7402fb@quoll>
References: <20260220-eliza-bindings-phy-ufs-v2-1-4910bdcc585a@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260220-eliza-bindings-phy-ufs-v2-1-4910bdcc585a@oss.qualcomm.com>
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

On Fri, Feb 20, 2026 at 10:25:50AM +0200, Abel Vesa wrote:
> Document the QMP UFS PHY compatible for the Eliza Platform. It is fully
> compatible with the PHY implemented in SM8650, so use the SM8650
> compatible as fallback.
> 
> While at it, move the QCS8300 one so that the it is sorted correctly by
> fallback compatible.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
