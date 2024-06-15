Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B064C27C4F
	for <linux-phy@archiver.kernel.org>; Sat, 15 Jun 2024 18:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vEjrZIeQP84r3SjLwpdrA39ZUoOmUWoqk50OTWAaY7I=; b=SVQ6uTIoBEuQ/z
	wu5MpueRHywcuMh3ZpMDlsV6+59CmHyZYQsiuKm4vuWrc6iDa5tGOd+vlR8m0xkmHvb75Tr2Z3ViR
	FvyL3w5R3gWqmKYabSMt78CWIapTv2vpJEQnp4FNp7RKBxMBtvTZL0CaoFwHCrBRL2MmsObEHYVQ5
	jILikKQvAmTI1/KrkUaZFfaYJeLBAbgPjr/WWfTAQ1nTdBYWXW3Ru6DaPXIY4J5GF4TJpJrIMLQNx
	zsZ0Wedw4W1hL+BLHiFR2zLtqaLXfAaYfrGZraSdh+K0iCjP9VbKcZd/c6z4W96CthcBVO5G+BHv9
	9KBUoliOMpnLu3tUZWqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIYW0-00000005xBr-3HGa;
	Sat, 15 Jun 2024 18:52:40 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIYVx-00000005x9b-1isS;
	Sat, 15 Jun 2024 18:52:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 908F0CE0AD6;
	Sat, 15 Jun 2024 18:52:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72993C116B1;
	Sat, 15 Jun 2024 18:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718477554;
	bh=nyGltL8ICDC6yNzr7LgN5jIYezIhu7MymJF2gKvIdTs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=di9FlrJkf6enPrwrRLzCVdp15Vg/c15nzBD5yNkikm4q+vtua7GROqMrDs98lCB1v
	 S3G1LZDtTNPw1fp6RdoLCzPO4wdz/D+TUWVQfcCxCmNfmR8wAJsvW2YbKY34vlFqAd
	 WrYLGIDJo3IgoYKMPj0f2CHcY951iIOWPwvK6grdff2BT54uOVyinA9fSjE9I59QPr
	 IBzE12jWaiQIg2PHpHaa/UHcz9IdCwiVwDHydjnAhRrYUchx6WnYtkZgQZkwD/hG+9
	 j/G2OJMSWYaOae4mNPLfHzskx7BzHL6IvyG8I/YXRpDzON4GCG66/mU+yYTm73PTlc
	 oqtWJ4SkTdk9g==
From: Vinod Koul <vkoul@kernel.org>
To: conor@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, frank.li@nxp.com, conor+dt@kernel.org, 
 Richard Zhu <hongxing.zhu@nxp.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, imx@lists.linux.dev
In-Reply-To: <1716962565-2084-1-git-send-email-hongxing.zhu@nxp.com>
References: <1716962565-2084-1-git-send-email-hongxing.zhu@nxp.com>
Subject: Re: [PATCH v7 0/2] Add i.MX8Q HSIO PHY support
Message-Id: <171847755003.716119.4761960505484541660.b4-ty@kernel.org>
Date: Sun, 16 Jun 2024 00:22:30 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_115237_668226_3F6F9760 
X-CRM114-Status: UNSURE (   6.48  )
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


On Wed, 29 May 2024 14:02:43 +0800, Richard Zhu wrote:
> v7 changes:
> Rebase to 6.10-rc1
> 
> dt-binding
> - To keep the table format, add "|" to description of "fsl,hsio-cfg" property.
> - Refine the contents of "fsl,hsio-cfg" property.
> - Add Reviewed-by: Conor Dooley <conor.dooley@microchip.com> tag.
> PHY driver
> - Use "imx8qm_hsio_drvdata" as imx_hsio_drvdata struct name of i.MX8QM
> - Remove redundant memset().
> - Add Reviewed-by: Frank Li <Frank.Li@nxp.com> tag.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: Add i.MX8Q HSIO SerDes PHY binding
      commit: 7c46101aa631843ded626b823b5a412d57371812
[2/2] phy: freescale: imx8qm-hsio: Add i.MX8QM HSIO PHY driver support
      commit: 82c56b6dd24fcdf811f2b47b72e5585c8a79b685

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
