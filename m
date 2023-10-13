Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C201CDB47E
	for <linux-phy@archiver.kernel.org>; Fri, 13 Oct 2023 10:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MwLQNHqm73jFBk/stnjxu/doq55A7Hn8qk70Wg8FZB4=; b=j7BOk+LSxVCKk4
	9SLJ+hWgJE6HcufsAQZzRlARTQDVquefEPE0Ay+HWik8kdX8HVP8TJGrYdYPk6m7Phqbk9N7+Jya2
	9DQ52Ol0iGZR6mPXXyyufaEm5I1VzYwBAfLieVZFiMyh4qtL/MpZ1oP5SmL0LnUaQzbq8cf2CuU3R
	qFm2Kmyy49DmftR64sciP2QmzVScVWcCRNqVfv7xhrZxjM42AeU8IocOdeUnSROj6Xa4WKv8lmbEU
	TU5dVFatP28aqiOt0z6lPvpEbFzd+QIttku/eqoln0mMsCzYkZmTb/d1oMFYzKUb6Wf1bmjKKDOi8
	i4pU7mOqBNWNdZ9R1WVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFeB-003EE6-0R;
	Fri, 13 Oct 2023 10:43:59 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFe7-003ECG-2K
	for linux-phy@lists.infradead.org;
	Fri, 13 Oct 2023 10:43:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0648062099
	for <linux-phy@lists.infradead.org>; Fri, 13 Oct 2023 10:43:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A6C0C433CB;
	Fri, 13 Oct 2023 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697193834;
	bh=bpRiSXkMmQkHgeqQ+ymmdIlUJfXwAP6+/lOV9tV+YtU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KnTYlTITt6oJMVwtaPmTWqd5jnQcenZY/hc9k6LgKNufOz+aNua3WkkdaAoqScsux
	 gjbSp4Avb4PJe5UNYcS0QF10a80sCpSNBYACS57v9Fm+k5sIJ6h+KJoGk2ZQ0mTzbO
	 oE5/U4s9Ydw1Kj3gQlEUliAgIMiM+oiTMUYAlqVNJXsGHlj6oZoyO9/t5LT0w5RWW4
	 OuTwuhlnQAY0NI4ItxtSxXYkvM5P/ZS/ECTIhOKkGRXSRUlRdhuD0ZI717fNZgLKS+
	 NqOkC7QeiinEbbVTjrAYxFJ1t+bS7xjV4HRd9qR82G3+3Oak5JmadObeE+zG6WU6mO
	 8Z0XN74bc6kOA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20231009172923.2457844-16-robh@kernel.org>
References: <20231009172923.2457844-16-robh@kernel.org>
Subject: Re: [PATCH] phy: Drop unnecessary of_match_device() calls
Message-Id: <169719383317.165658.7807942867322803604.b4-ty@kernel.org>
Date: Fri, 13 Oct 2023 16:13:53 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_034355_802152_C5D45079 
X-CRM114-Status: UNSURE (   5.39  )
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


On Mon, 09 Oct 2023 12:29:11 -0500, Rob Herring wrote:
> If probe is reached, we've already matched the device and in the case of
> DT matching, the struct device_node pointer will be set. Therefore, there
> is no need to call of_match_device() in probe.
> 
> 

Applied, thanks!

[1/1] phy: Drop unnecessary of_match_device() calls
      commit: dd69a6379a07f21ab1c41360925ef29ebe992a62

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
