Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1807EC43458
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 22:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:From
	:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L8eQUVTSWTqcqE3s054zC70wwOXjyS4aLcti23XRDXo=; b=3GHol34ZErY3uv
	WH/CZVfVu39sJldEHkLGdCIzSs7nBzr4eJTGBVY6LkKqf03EmKV4P/JZe4WVJmfrEkbdeXYLZM85N
	SDrBwo7KXQ/tyV8u6awVQatm8BJE2ipsmZxEb74BWulnuBeVxTGChn9oQ/N+L6DdEzv1UHDmVEehh
	BaZn+oHvlPwLJwUXGEj04IbTlVx5rkHwjvE9gDHZ3I66FTbgi9AIrhxo9Lttwh6tCQsK+mwQ7K7ti
	cg1RodCfs3fSKJ5d5kM84yvozS12uZtlN4qGPONYOxnPYbYG1cYvf55LDHam6CLlfLXxHuXPqXtAJ
	aNPlAO/fs03EeoXOPh+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whaPS-00000000WLu-3RWT;
	Wed, 08 Jul 2026 22:06:26 +0000
Received: from mail-106116.protonmail.ch ([79.135.106.116])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whaPP-00000000WLL-02Wp
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 22:06:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxsw.ie;
	s=protonmail; t=1783548375; x=1783807575;
	bh=KfLmTk+gEbbGwSugv/bddjWjN6nhCu/sMPeLjFkeRa0=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=HuUK/w8v53PRmfhGxVeIkMVlK149cYGsQJNfK6KKNINCYjs6CSCA7AW07qs81C5d3
	 vhBa0jPLG1lfUbxtthpi2Jnh2KwQutogSb4pM+Am4Wz/kkFoTDAUiYy432LTZWyU1i
	 jyvdXo1TrJFAA5Ws70B5ZmKGekjPMlgC7wFhoGJzraSR86shrUBtjjZTPJboaaKMMj
	 0tOagP4i3t2yDq6YNvOAtD0pgjND8om3LI6B1fPzTupvxDK8LOzgTv1hsJaPz8WpEJ
	 97WcUwejWGM9mQFcdE4NmVn7iR83pudp4A95e0s5/gGvK3BFXCtXrhN8zzYh5KmJrn
	 bl6YcAQ91FoAQ==
Date: Wed, 08 Jul 2026 22:06:11 +0000
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org
From: Bryan O'Donoghue <bod@nxsw.ie>
Cc: Vinod Koul <vinod.koul@linaro.org>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>
Subject: Hey Rob could I get your review input on this patch ?
Message-ID: <d07f9d62-aec3-4f5f-89ed-186d3be52e58@nxsw.ie>
Feedback-ID: 54899767:user:proton
X-Pm-Message-ID: c55a6c2cafe274bb642771e6158ff90a2642cbff
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_150623_733461_44C9E275 
X-CRM114-Status: UNSURE (   5.12  )
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

Hi Rob.

You gave me some review feedback here:

https://lore.kernel.org/linux-media/20250710230846.GA44483-robh@kernel.org/

Through subsequent iterations of this patch we have added a 
port/remote-endpoint.

Current thread is here:

https://lore.kernel.org/linux-media/3ab676ac-919b-4a80-8dd6-71dd7f6fe06c@kernel.org

Vlad's point is that linux-media bus-type should be used to define the 
mode of the PHY. I've been sticking to your original suggestion that the 
consumer defines the mode.

https://lore.kernel.org/linux-media/6b6492a4-7610-4dce-a81c-8dc0387a4061@linaro.org

I've been citing you but, I should have _checked_in_with_you_ given 
evolution of this binding.

Perhaps its something Krzysztof or Conor can resolve from a DT schema 
perspective ? I trust either of you guys to "do the right thing" - I'd 
really just like to get an official schema maintainer steer on this one, 
so I can close it and move on.

So: Stick with #phy-cells = 1 and the consumer selecting DPHY/CPHY mode 
or #phy-cells = 0 and inferring the mode from endpoint bus-type ?

---
bod


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
