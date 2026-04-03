Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F40FD730AC
	for <linux-phy@archiver.kernel.org>; Fri,  3 Apr 2026 07:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5m+Aw2qGc2N2xOZ+zDhpmJm1kWBin7vdZI5JZ+d+JVs=; b=uVh7RUUR4Dm03G
	vQj71p5ymWcdDExbb38rSPMPTYQcPRXIy5aof4pGoHCLtViiaEsm1eRKhX6juXqdXW7lWmZwL59hm
	2q04XXaDjZsJdPj6cYsdPe7VKuGqOQV3NCBwjMiv94DLq1zlzBQYWZa5EJdvrcjsojsFhzL0zYNum
	b/DD+EMSMt90pq3CVHi95fn4eObOxtoQicDLB15srT8jDCnoIoppkqfxgXeqGfmxzdyD0iEY7ZF0T
	hw9H5bDuID7kPgA4DrqzQ3SBQ+lNQPhkV2XKXQiceqKM+aeDj0QxKtLlrCFe2uZqm5dZMTHKJNzD7
	bUyoGYLZVH+/D9HBg19A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Yxg-00000001cXU-0mjP;
	Fri, 03 Apr 2026 07:29:00 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Yxc-00000001cUy-0o5A
	for linux-phy@lists.infradead.org;
	Fri, 03 Apr 2026 07:28:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0D68B43439;
	Fri,  3 Apr 2026 07:28:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B5C4C19424;
	Fri,  3 Apr 2026 07:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775201334;
	bh=SPbL2mrGyczm3g6hukeAuJmU2/lyZJSEF0dZ4mt/5ZE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UTQ6fS9EWsdi0QVCIAZs2J7Vlda8cVCmFfMlrbnit5AdxL5FrvXBUomk4JR6bY2xy
	 hpED+Ic2b1ygWFrl4rE1l8xYgDeFhiyylXwdX16JDnnJJqnBVr2T05eJBJtpi2nIOE
	 OEEIO2KErKTE9TPSo6VwbpGDb2s3nuEws75Gcg84WPyZlp1dDpX6vevyMw50Kb4gSS
	 vEIm/7k1S7EyngzwVEC2+YZNFEqxK3dRb+9bzOiskHQ+D528dTAy1TLW8Nznab1Ebx
	 vVYmOqoT2+4mNnoWI7lmjPKi7A/IZ3ckOkA4nJ4vydGKsTANDsCOGwK3Pe5scyqOuO
	 RYKFwjlqjO5CA==
Date: Fri, 3 Apr 2026 09:28:52 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rustam Adilov <adilov@disroot.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stanley Chang <stanley_chang@realtek.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/6] dt-bindings: phy: realtek,usb2phy.yaml: extend
 for resets and RTL9607C support
Message-ID: <20260403-striped-magpie-of-purring-ade9bb@quoll>
References: <20260402154414.196012-1-adilov@disroot.org>
 <20260402154414.196012-4-adilov@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260402154414.196012-4-adilov@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260403_002856_316103_3DC9C4C1 
X-CRM114-Status: GOOD (  12.95  )
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

On Thu, Apr 02, 2026 at 08:44:11PM +0500, Rustam Adilov wrote:
> Add the "realtek,rtl9607-usb2phy" compatible for USB2 PHY on the RTL9607C
> SoC series.
> 
> Add a resets property to properties to describe the usb2phy reset line.
> 
> In RTL9607C, USB2 PHY reset line is from "IP Enable controller" which is
> multipurpose and handle activating various SoC peripherals.
> 
> It is unclear whether RTD SoCs have something similar to that so set
> the resets to false for these devices.
> 
> RTL9607C requires the "resets" to be specified so add the corresponding
> if check for the "realtek,rtl9607-usb2phy" compatible.
> 
> Signed-off-by: Rustam Adilov <adilov@disroot.org>
> ---
>  .../bindings/phy/realtek,usb2phy.yaml         | 25 ++++++++++++++++++-
>  1 file changed, 24 insertions(+), 1 deletion(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
