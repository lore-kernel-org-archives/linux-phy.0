Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66842CDB47E
	for <linux-phy@archiver.kernel.org>; Fri, 13 Oct 2023 10:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NsmsskaweTI/h5e5gADqNQO4kqqVNeOCmlIUhmxRttk=; b=XPeyaBsOOHHaZC
	lfgAoZt5mXHv6tQgMgRimqrwxP/BbWDe7vlO2fiSsXSFVdiiEe05A3ukBiuJcIuuNkhhMPoA9NXxE
	OUwDhw5L8Efc87hQjupL2LJVjwr7r8hPnHauWaxCoSToC3glNrsGIA03HFkNxvAjfaYRY0Wj48Icp
	QHps8H4HsTQso7FYqGp1B8i/uSoVsz53gy/BjgXOASPUdvSeO65vR+hqRjH8JOtuL8yf6xnZBdDJ5
	xvAfuyE4pVjNTWUqknjI2FOw4eRwlJ8ZngMapEbRgUscM+MGB/DC4d541Mllv2ARKYiWrqWi8u9Ev
	3xMxYuenSgZ39J1gQ4Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFe2-003EAH-0I;
	Fri, 13 Oct 2023 10:43:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFe0-003E92-1H
	for linux-phy@lists.infradead.org;
	Fri, 13 Oct 2023 10:43:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B328F62098
	for <linux-phy@lists.infradead.org>; Fri, 13 Oct 2023 10:43:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DEDEC433C9;
	Fri, 13 Oct 2023 10:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697193827;
	bh=tz4bTfvoAxAxO7+aRO4LZJYQw4kQiRKdfh3IvW/T5Uo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=UbsUQ0mFbbMMy98hJOpN5MbmVjqH6ARC503+8U4SsneOHzZDjygYj2DOriPQ9hDvv
	 re7BmjWZpWFZPpoqhKLujN+e4RiE1pPsOlqDF+y114UWxW1BwxwU6rOiHTu8TMqC+O
	 pMqd6xlk5346r2a8Jqg99/vsyQltLnJIL/de7nbK8xcg0Q4kikGPQf//lUZkrQ5PpF
	 zpPf12M4yfa9wjLzx5XN57X6ZCBsttgW4D3erpyXoWaI4g5jL3aeM8NWzILXT04b/3
	 0RDUmb9Ofq0ItYZprZ1H2hImYA0KwM1vCM6aLSgKizg+eOxV+MkCWCX7TZaXHBUmWx
	 9WnTq0SsBDw1g==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20231010205701.1585026-1-robh@kernel.org>
References: <20231010205701.1585026-1-robh@kernel.org>
Subject: Re: [PATCH] phy: realtek: Replace of_device.h with explicit
 includes
Message-Id: <169719382572.165658.7595857660529623801.b4-ty@kernel.org>
Date: Fri, 13 Oct 2023 16:13:45 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_034348_494910_21342E9B 
X-CRM114-Status: UNSURE (   7.25  )
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


On Tue, 10 Oct 2023 15:57:00 -0500, Rob Herring wrote:
> The DT of_device.h and of_platform.h date back to the separate
> of_platform_bus_type before it as merged into the regular platform bus.
> As part of that merge prepping Arm DT support 13 years ago, they
> "temporarily" include each other and pull in various other headers. In
> preparation to fix this, adjust the includes for what is actually needed.
> 
> of_device.h isn't needed, but platform_device.h was implicitly included by
> it.
> 
> [...]

Applied, thanks!

[1/1] phy: realtek: Replace of_device.h with explicit includes
      commit: 7e909370a5cd44b4c16df500fb40762f48aae966

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
