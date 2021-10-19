Return-Path: <SRS0=JtrO=PH=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 460A8C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 19 Oct 2021 18:05:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 107C26135F
	for <linux-phy@archiver.kernel.org>; Tue, 19 Oct 2021 18:05:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 107C26135F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2dB5/xEAbSphwyKWhYOCesDw5ukpznUncJXgOFuxIrE=; b=iRUFIifuyG631m
	iij3Hd5lwJH+WaBY/6uMZqK3uNNoAXdgaa40KUXF8kPFcH3LngI3jmPXqpJK63ddR5lCQYPIM+FZ3
	AkWVqVOhEQf8I5aRLjZ6JjjSGdW0uiyvNyOwy5xhuF2k23gIgN3hzU6QWNvu8bei13MDKsXASsaBh
	2V/Gzy2d079lFATHJBMJE/b1kdUM4QV1+7IDAw/9K87SIsqsJr75JRkhSqb3awPIZizUPasT1imAh
	RWfmwNsCT8OjtUMx1PBKDO978/jvAI4WEYj1/BwupBpB9zXCaryKnO11i5ZMa4O+V1lNM99ZlmHEl
	SreX5ovuAU6exJ2WKseA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mctU8-002LuG-98; Tue, 19 Oct 2021 18:05:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mctR8-002KS9-V4; Tue, 19 Oct 2021 18:02:08 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id AB5F96108E;
 Tue, 19 Oct 2021 18:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634666526;
 bh=Mt5jIqaeETd1bbNuX1hs19s9ku7FcDJOjgZHjseuqtA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PRoTljZWPSMMyEYLFUwcSPBe/c2hoYfWVKolXhheHSBmslBn1LKfagG1veJgi6Ori
 YlGgk1/+KrSWko6KsnXIygged5K2GgdVPb9/n++6qogq2JX/MQLJH2TUjESB9oqNzf
 z/c+R1ey4aP9xsO9v37w+icAQlnc7M63lVT5ku8QX/d8BNgN0ryBpWRo42HpHZi+r8
 sSN2CKC6514tWzdSFUunIpoOXiSa34vFmf3lzQ81WbHHvJGKPNIWtDvI9fosCC0npC
 ZWzVNPS5pwl9mUSZhGS8bG7kVq30dlOvzf0rCPFbVumKlPRaK2ZWW6gUk7frf3TtpZ
 w215v0HLcMyNQ==
Date: Tue, 19 Oct 2021 23:32:02 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, kishon@ti.com,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: rockchip: remove usb-phy fallback
 string for rk3066a/rk3188
Message-ID: <YW8IGnRAjjIA4wFW@matsya>
References: <20210828111218.10026-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210828111218.10026-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211019_110207_066013_F3A2A8BA 
X-CRM114-Status: UNSURE (   7.38  )
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

On 28-08-21, 13:12, Johan Jonker wrote:
> With the conversion of rockchip-usb-phy.yaml a long time used fallback
> string for rk3066a/rk3188 was added. The linux driver doesn't do much with
> the GRF phy address range, however the u-boot driver rockchip_usb2_phy.c
> does. The bits in GRF_UOC0_CON2 for rk3066a/rk3188 and rk3288 for example
> don't match. Remove the usb-phy fallback string for rk3066a/rk3188
> to prevent possible strange side effects.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
