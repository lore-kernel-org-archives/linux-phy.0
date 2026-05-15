Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AE52CD4F25
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 10:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VqdOxwaMC09KEFCNqQ2AqVjckJe6epYBCBbRq0SurRY=; b=CmctCUUKCJv8lc
	8V1RadiFBvgF1rmK9+69x1KSKL40hYtkiKH8WV19OuXdbZ8gprETBRyAlc0/o4zkGIcojplDuULi/
	7wTfqdWbeo2NR6paS7azcKL0WqVH2IWM9vgRMXforPKOZvpeWagYxN1OQ7+6lv/MLFDm1jNQlzGDx
	9wrRFFzXnupMWW6r+3r+6NCyFAhQU+oeh9vD6z7UN2OEK1XVzcOHees2v8MeScxACXSlKvZLte+YI
	ZJqhfw7O5n1zErEa77k/NDAIHPh1l5KpgIFkX6fDCPuqGsCDuuayo9yVTFm5KSa2k4HACHOBRadQm
	zWaFgBZlZQJMMYc8Sp7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNq39-000000085IK-3gbP;
	Fri, 15 May 2026 10:45:47 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNq38-000000085IC-3HW1
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 10:45:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6678560008;
	Fri, 15 May 2026 10:45:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 905CDC2BCB0;
	Fri, 15 May 2026 10:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778841944;
	bh=aFquNM6aEohbhTDbb4fuTNng9STE3xERl1DrIga1r1Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a3lFiZQLScfSinIM92f7c/vg/GnJQOjtrGB4/SDgFIYZrvBwOONX6ukCUdV+9hScj
	 6NyCX5JmIZe0o0QiCPYIl5uMuRoKGy01+w54DhympqAnpD5zcDDP1TiVLYKSsBSJH6
	 3ZL4nWcXANvhvIYG+SBQuxPQW3JToKHdRzi9uBqDw1/YSG8zap+Yb0gN3neArjGMlt
	 rBcdava9VXEv/eFrsjwUmGoDVhE2cz1CHazsoF4LtQtxBItum1ZUcEWabjx1f3mzrT
	 pi+X6lRYyqf70nao3+2rI01xu5rccELFDO/uoxGIa55lZDafa5DSnAnIbw2tlIO9UF
	 ItTPuVQE550xw==
Date: Fri, 15 May 2026 12:45:41 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,ipq8074-qmp-pcie: Document
 the ipq5210 QMP PCIe PHY
Message-ID: <20260515-enlightened-flat-hippo-bc84de@quoll>
References: <20260514-pci-phy-v1-0-482429192746@oss.qualcomm.com>
 <20260514-pci-phy-v1-1-482429192746@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260514-pci-phy-v1-1-482429192746@oss.qualcomm.com>
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

On Thu, May 14, 2026 at 09:28:28AM +0530, Varadarajan Narayanan wrote:
> Document the PCIe phy on the ipq5210 platform using the ipq9574 bindings
> as a fallback, since the PCIe phy on the ipq5210 is similar to ipq9574.

I don't understand that. You claim to use fallback only because
they are "similar", which is clearly incomplete reason. Many things are
similar. And your driver explicitly does not use fallback, which MUST be
explained WHY.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
