Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2557C49EA1
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 06:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GcBbw/8K5AYxQzFxNtZmTyI2oASc6tpHcWsPQbIAVrQ=; b=MoBVqrBzEKub9z
	48gGHWKWav7erlpjnG9cSXfdXGDw8HrRL/rcV5rXf5rLVwIofco3O/SyTWgEJdCBbmaaVBRYA6/rp
	CiPs+lK/zQKNvD3MRnFbV0QL8JXsXcxMx3DbpZhUywkAwYqutSryO0fsCitfGcAKk2qWT2Qup5i5Z
	MTQncHu2EsAiBuBCEwrZisGljLACSAQHqaCqNZEByhPRQAUAshHoBtKRD+1vfvi01uhcDIMxXShIm
	R7pxHtCkIlhK832ykptyGkdC6t99H/o5ra0ybealyXuqapPboR1yNwpF5a526yQfj0JjQkGwOyBEm
	W4AuA/j6eKkYtaj0qc+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZPiw-000000045HQ-2SjZ;
	Thu, 01 Aug 2024 06:55:42 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZPiW-0000000459W-1YZQ
	for linux-phy@lists.infradead.org;
	Thu, 01 Aug 2024 06:55:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 957F8627A7;
	Thu,  1 Aug 2024 06:55:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91CE2C4AF12;
	Thu,  1 Aug 2024 06:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722495315;
	bh=Xpd5cHohiKAVitbHGS98ZWti2OlD/kYcr8OPOsuncGw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=nzkXvzZE+D1aHhy8dE4eUotLGQEwSvpek0mkDAvvZIXB2aYqQL3qLfQkJMQOkMkcW
	 m/AzkGJmERRRGk60pT5tbuiwHWRm5ufbB8D3CaizDR/jTajRtcwlpI5wMR3mUgD4XT
	 bQ/HY5Qipz3j2osuTSrlfQ5NfclsYTwFcG33OiqBdF2DzXffmMxt6EMx22LTHTA19J
	 efWUvZLH1fBAJxFeu8mi8/WPYYn2Pq+wvNEYzLJtOiSzLoUAdHjcIj5hNnCwfquh01
	 jZV/2h8xrIBpIRShWKPxHo0hKza8sMG7pBxYuGEqktpum6hnsQlEWOlrk4uGDbXw/i
	 kKyQbIUHCyPCg==
From: Vinod Koul <vkoul@kernel.org>
To: devicetree@vger.kernel.org, Rayyan Ansari <rayyan.ansari@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240711122016.41806-1-rayyan.ansari@linaro.org>
References: <20240711122016.41806-1-rayyan.ansari@linaro.org>
Subject: Re: [PATCH] dt-bindings: phy: drop obsolete qcom,usb-8x16-phy
 bindings
Message-Id: <172249531217.256913.16966169857085379098.b4-ty@kernel.org>
Date: Thu, 01 Aug 2024 12:25:12 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_235516_525199_A4A9BECD 
X-CRM114-Status: UNSURE (   5.03  )
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


On Thu, 11 Jul 2024 13:20:14 +0100, Rayyan Ansari wrote:
> Remove the bindings for the Qualcomm 8x16 PHY driver that was dropped
> in commit 4756f35fdf14 ("usb: phy: remove phy-qcom-8x16-usb.c") in 2017.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: drop obsolete qcom,usb-8x16-phy bindings
      commit: b52a38ab1e157e43a2f5f1d846c4f52ef2105763

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
