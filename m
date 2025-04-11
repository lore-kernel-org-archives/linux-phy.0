Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F085C36010
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 12:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hut8tFmVv6IUK2vRfLYvhrQAfnhZatILy3nC19ibDqg=; b=UDssrsxiLcGh0D
	Sq6MPlubDu0j7UUXZOC2lav3FTB/jvfYGQwzkvlMPHQEnYHDZFaK1VE8xErdnk8cRYFhtqsV7EvBv
	AEGLc+cmGckoNu7HScBGzv2YbvAKmRJ0s+b8diGQz/OZ7/Bf1Q93ZUOQD5d4cR0PMV8odikdrBXNn
	k28ueHDuEvvb9W2ntLOmoOwT/0PsF4jTy3ymsK7xROFnrQINywiu3IHchlS36u+tnTBa+W01VcQ2Y
	mlGCXm0hY+H2yPNSjUHrXXvH4rWwg4s2rzebRHETUb4lNo0cjh6iQP9q2nhgj8e4g4HiWc/bypwva
	Z7S5Ul6XTRlZ8GHJ/77Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3DKW-0000000Di39-0ZJm;
	Fri, 11 Apr 2025 12:17:56 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3DDg-0000000DgbI-1dgE;
	Fri, 11 Apr 2025 12:10:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 326C0A4AAD2;
	Fri, 11 Apr 2025 12:05:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8599C4CEE2;
	Fri, 11 Apr 2025 12:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744373451;
	bh=P74WDZdHhoRO/BU2lkuYSlhGCVYVBQk3dgxRzIvow2M=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=tR+iBjkV1EPSm3IjtqDHfgV4sZMYhVAV3yu4vxPZyl5E/Q+NT90lf2XF7a/oc5qkf
	 GODyXbRMyJccjl5wctCGWo34TZD0ko3apMsFR9jPLTScURR9kDyMB+bt+rCqEYl7kP
	 xEE60p0RpUL/I+BVbQ2P0aIx0ayyDL3lKtr4KX++nvyXKzkcALL0snL41oL+C4fMBw
	 vTDS4RmlsDW/4nKN5T8Q8E6U11hQ22kE8QOplQl5W32kX1jiKantqRctm4P4OAJXGw
	 +5oaB9imcBDTsi3SuetLivCz9c4kjfMDIsiI51Ow1LMH65LSIhMq8KVoHWk9AV0Cgs
	 HW34N1WRKWXEQ==
From: Vinod Koul <vkoul@kernel.org>
To: linux-amlogic@lists.infradead.org, linux-phy@lists.infradead.org, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 kishon@kernel.org
In-Reply-To: <20250329190712.858349-1-martin.blumenstingl@googlemail.com>
References: <20250329190712.858349-1-martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH v2 0/2] phy: amlogic: meson8b-usb2: two small cleanup
 patches
Message-Id: <174437344945.673939.17223237328558537287.b4-ty@kernel.org>
Date: Fri, 11 Apr 2025 17:40:49 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_051052_498654_C9538AB9 
X-CRM114-Status: UNSURE (   5.99  )
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


On Sat, 29 Mar 2025 20:07:10 +0100, Martin Blumenstingl wrote:
> this series includes two small cleanups for the phy-meson8b-usb2
> driver. There are no functional changes.
> 
> Changes since v1 at [0]:
> - added Neil's Reviewed-by (thank you!)
> 
> 
> [...]

Applied, thanks!

[1/2] phy: amlogic: meson8b-usb2: Use FIELD_PREP instead of _SHIFT macros
      commit: ff02c5a3df4852819d9ec218e5c8ae48eb02b101
[2/2] phy: amlogic: meson8b-usb2: Use the regmap_{clear,set}_bits helpers
      commit: e60363bcfbcef903ef30540776f254f8b53bb4c5

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
