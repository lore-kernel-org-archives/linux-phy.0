Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8689CC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 25 Feb 2022 08:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KpnWD0SBi2hV5SkxhADhc0+j/uCC/oujJFG9cTEydGI=; b=ShqJUBTxM5FcJc
	YcLsEetvzVw4+1NQZtXOOHEZ621khuKw4gP4ys4P7Ey5+Qac0bdfTgpCWi5/J528+B+SdlYgl/87p
	kb3KPmxREA+9Z8m7jyEMQzLE3Ubh6MMi5nK4StxB4vwU3VmGRy/wKuRc1Jvo/JVhRMZDHQEm5PO6h
	Ly7rJn+B6pRmifpVP7muAxmdh9iXG7SkAzgexiFjnC88SeSuZINmWcbuuRgBEkzcBfT3MHY7uUzvj
	LEIa0o0iRAAj8QL8CaNWwQQzW3pRKXkcNG0ouaBgj0rLPXEF03CaODU5fHFnqEWFyKpeRBlhrDaz8
	cePS5bXNV8ljE1wNg+Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNVu2-003wGz-U6; Fri, 25 Feb 2022 08:24:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNVtc-003w81-Us; Fri, 25 Feb 2022 08:24:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 837C361BF0;
 Fri, 25 Feb 2022 08:24:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DBFAC340E7;
 Fri, 25 Feb 2022 08:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645777452;
 bh=wUTRPoZn8BBAycadtcQaV6M3VNL/c4t5P7L45uO3280=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=n1O9sO5wWbnSx3EvC2Z4tnYFNbOV5Q7hLiP08crAOSllI0TO/SUTUSRSWk+MSIWxB
 KqVrA5RiWqGTQhe7zKDuRk3KKUlPACENjLk2UQEqjgF/Q4ZfJ/WXwqdmS3nWVazfGo
 V8gpaasvP0cZ/VnwSPd8Q3dr7DrkLp/cIHDzzpsQWnZy2SO2HHN0Sp3pOq0I1M+P61
 NeyDcKuAfqftetN8bMsSgzVUXeHHjbvcSB+jRTFyXRAPsWaJ8Qi5uprYIi63GY/5Hc
 8WmphOFf8jn/QnBzzcp8PuLMocxWhibDRCt/fdPoOnBnnbKd5qRtxxeEsqyyc++6Tm
 /Kx0oXkuJNmgA==
Date: Fri, 25 Feb 2022 13:54:07 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Samuel Holland <samuel@sholland.org>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 1/4] dt-bindings: phy: Add compatible for D1 USB PHY
Message-ID: <YhiSJw1fhuyQF2Lg@matsya>
References: <20220203013558.11490-1-samuel@sholland.org>
 <YhiRyq7k5jtSKlni@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YhiRyq7k5jtSKlni@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_002413_054908_723A7162 
X-CRM114-Status: UNSURE (   9.24  )
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

On 25-02-22, 13:52, Vinod Koul wrote:
> On 02-02-22, 19:35, Samuel Holland wrote:
> > D1 features one OTG port and one host port, like the A64 SoC, so its
> > USB PHY supports the same set of properties. Add the new compatible to
> > the existing binding.
> 
> Rob?

Never mind, b4 found it... Somehow my inbox doesnt show it... 

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
