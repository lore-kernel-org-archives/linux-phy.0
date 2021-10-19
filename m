Return-Path: <SRS0=JtrO=PH=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71161C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 19 Oct 2021 18:07:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2C1B8604AC
	for <linux-phy@archiver.kernel.org>; Tue, 19 Oct 2021 18:07:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2C1B8604AC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PtKb1k/giXMvdHOZl8702Cxjc5cZE1NftGivK5/nQCc=; b=DbTZIk3cMxQtKZ
	XoqFevc652TufjENROM7Ey4VrHoSEtKKjSMK7uhdDKZ9HTE2LjOTYVM0BiPBshH22w0DimsYyJoLJ
	dhomq96QO9SoPLIDbtHi1EChLMfhfHuCNLsCvNIXpL51G8M4O45Y3jDsSfj0nbbEQhGa6AW0qSzmS
	nDBKv7848GpPocj6A1oXrz4sNu3Gaz8vSYDzLDqmBvj82EROgz1RiFsw/PrB8X8Ua/ZaDlQbWGHOs
	VxG6w2RMekEP8EW10aXER6MGQllCvVFZg1r63BmXAAgohdApSPQ8O2kLgtzPIS260iO0s1fBPde6/
	6LDI6BTzznCn1R9hjVJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mctWB-002MrU-Go; Tue, 19 Oct 2021 18:07:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mctVh-002Mfc-LI; Tue, 19 Oct 2021 18:06:50 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 674B8604AC;
 Tue, 19 Oct 2021 18:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634666809;
 bh=QRHoFOiTZy8VK0r2DCaWi9nxm3sfvfTDB4HypYQ8wpI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FIX0YVuaUlmTBhAiYoxYlY5KoMGZnwmQNfKdQl5h0rsGmj4Yh1fdGptzM4zbnhAal
 ulL2npUToEepyrzbf0aNGdrHacL1v/fkl8WlseiQ3gibXbFs70WAtSkN15lepHNPX2
 UV2civm+cGfDyGDAyVW1Gm8wqbbEoOfwEgFsvOhidqOWiytrsdvjpM1151QJdZZ6Cp
 Ut2DS6WjmQSmtYBcKOnHPLknscz0QaMkTppXz3rS9RrNCmHRFwF5B9rLJQrNgoKoy7
 b2m95hkXjwW++ibTmKrOTtLoBTZ41FOFqwkfuJ/p/x8wItNlIYpoy9dkGeZsU17fCN
 yBy2Dg8Kt9kvA==
Date: Tue, 19 Oct 2021 23:36:45 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Amelie Delaunay <amelie.delaunay@foss.st.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH v3 0/3] phy: stm32: add phy tuning support
Message-ID: <YW8JNd82rZyjLoH9@matsya>
References: <20211015161427.220784-1-amelie.delaunay@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211015161427.220784-1-amelie.delaunay@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211019_110649_756050_9EF567EB 
X-CRM114-Status: UNSURE (   6.63  )
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

On 15-10-21, 18:14, Amelie Delaunay wrote:
> This series brings phy tuning to stm32-usbphyc with new optional
> device tree properties.
> A prior patch add resume routine, which is used to restore UTMI
> switch and phy tuning configuration, as they can be reset if
> deep low power state is achieved.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
