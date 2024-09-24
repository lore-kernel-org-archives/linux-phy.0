Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74634CF9C69
	for <linux-phy@archiver.kernel.org>; Tue, 24 Sep 2024 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:References:In-Reply-To:
	Message-ID:To:From:MIME-Version:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+yNsDxKdVQx5mzaEEn/QaIDiVPLMBkOXBv60RUjKgk=; b=mR+JVA/nwMLH7A
	Vy88XJXl+cMDKoY3QfxS8KYFYtR+mypye/isL+z9G5TOIMUO7t3hEO4RQGH+VrBJ93UqrBQWW+gs5
	RFUMcezAaUcLjmyS6eiox99YVncO5ly6xQY3L4EtPDtd7iV7ZyinArO5H4AaY/Ty5nNYk6N7IQ+BF
	7BCHgW2SHQLDbeCBBoPWBg8DGE/dpWO/byqTtkzzkaoaEKW0uMOTTIHN+aY7boCtTCTW+DygsXkQL
	RTJM7evw7tlRtTf+0S0cHItLRqSvlg7KujTocIpdvz7EvBhAqhlAvGgJwnXwbNqBZK8ZSy3Z52kcU
	If8+2S1VHwIgrmE1b7Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stCBz-00000003FTR-0jMF;
	Tue, 24 Sep 2024 20:31:27 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stCAu-00000003FAm-2qXL
	for linux-phy@lists.infradead.org;
	Tue, 24 Sep 2024 20:30:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B81805C5C4A;
	Tue, 24 Sep 2024 20:30:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 589AAC4CEC4;
	Tue, 24 Sep 2024 20:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727209819;
	bh=G3dxnaurXczGAH86bHa7s+Zp2bYluWcGBL2DtiSJF48=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=DOiHNoEbOtDd1K2jg/aHeiP/lNmRFCJQganpiuZdcorKhycIq/d373u2kiYBmgwHS
	 AYXQAN8cTXHUgt3s4N0gDOEeaE2M+dPtFzMJLGQ5M7bepW27vqaLYqTWDsZi3vkvJ7
	 iubdZk+KFuOzTbqLuQ9Pp8ctdl8YZreS0jMycv6OmYDwReqxvQR55wtEe34rCsoIjC
	 dkN8MnExGoIRi9j1jgBt+AtdBU/5up5pRUVoTNvnVog0NkBRAjHlCj/jqpkPF7CrGG
	 CG15roLCfa6nhFYBSu6xUfi81JVZz0Kh1pi9xFiWXUBI6Y+uVqqD53jZrqbOT5+yg1
	 lwDitLDjT8tsg==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EBBBA3806656;
	Tue, 24 Sep 2024 20:30:22 +0000 (UTC)
MIME-Version: 1.0
From: Bugspray Bot <bugbot@kernel.org>
To: linux-phy@lists.infradead.org, helpdesk@kernel.org, 
 konstantin@linuxfoundation.org, keith.zhao@starfivetech.com
Message-ID: <20240924-b219314-c5fabf12d6c0@bugzilla.kernel.org>
In-Reply-To: <20240924-radical-chirpy-hawk-3aa339@lemur>
References: <20240924-radical-chirpy-hawk-3aa339@lemur>
Subject: Re: Bouncing maintainer: Shengyang Chen
X-Bugzilla-Product: kernel.org
X-Bugzilla-Component: Helpdesk
X-Mailer: bugspray 0.1-dev
Date: Tue, 24 Sep 2024 20:30:22 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_133020_784890_D20E89DD 
X-CRM114-Status: UNSURE (   4.08  )
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

Hello:

This conversation is now tracked by Kernel.org Bugzilla:
https://bugzilla.kernel.org/show_bug.cgi?id=219314

There is no need to do anything else, just keep talking.
-- 
Deet-doot-dot, I am a bot.
Kernel.org Bugzilla (bugspray 0.1-dev)


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
