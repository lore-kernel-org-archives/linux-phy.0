Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE0A8CA5FE6
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 09:36:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m8KTBKICNpAzTFNibGH7i8eOhIMBe/TU0arD+T8nGpY=; b=YH78HRe/prCW9z
	/FM24W2Kel/meeo+I8KUCE+gTj2fVo8SlyLErLQNDyUtUK7PCF5BCVwBiiZuKRXkXArIC449s1mdo
	SS2aM28hGrtC1HMwgiJ3N2CSvMJy7D+aIIGepkT6xR0goLx+t/PXnJUb3TCJaVHngVYvFHmLvqBev
	xseAKV6wqw/ZJDdi54mEsnc4If0ZmpidVHIy9+uyY1nJ8hNhT2bPHtQAYK2Kb659jTWF4aaYvgJyK
	k8MmfXP5vfdSAGOryHVozlecgD6sGwpS5vtKhqleDCfH1m1OntSMkbVnbX6SxYTuYDU4oM29nvj7P
	kqOxAZU8h7jmpi2rGWgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCwAP-0000000DHk7-1Zyd;
	Sat, 03 Oct 2026 09:36:29 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCwAN-0000000DHj3-3EJU
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 09:36:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 012DF602C2;
	Sat,  3 Oct 2026 09:36:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B01D91F0089D;
	Sat,  3 Oct 2026 09:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791020186;
	bh=+tKmRV5wnFqgiDs3xsjWqu9GWbaK2cyQqcO7LJSDDFM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=FYFzMa3POnsbR8R6+yJtNkyNmrPNoHAA2Wkul+1CYVZCPdQpgiMpCbevkRsFvZ0rO
	 we7/osWm2fpCXaptdUTIamP9m606supqhK+22A9CAHrWtUZVwiwNj1Ck4DnyrQViEk
	 321LP4V06QTQ7IFCA6HadnJCodF8CepN+J41lVOsV9SnnkHgAYGyCEV1BiXbaV3vRX
	 cjocBDcW46vsh5J09hnuR4qyvBEDiy/LW5Fs+XvkkZDr0ypTQjz/bSMo36mR3Cek84
	 eCpuFhFnrHcn2o3StT/vMea54lvEGYXMjGlIqS8clXyt61lo6Hn2EdaJ8IQWdgdNrA
	 lVuNYWeNc+oAA==
From: Vinod Koul <vkoul@kernel.org>
To: Matthias Goergens <matthias.goergens@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org
In-Reply-To: <20260927051252.2751812-1-matthias.goergens@gmail.com>
References: <20260927051252.2751812-1-matthias.goergens@gmail.com>
Subject: Re: [PATCH] MAINTAINERS: name the phy/linux-phy next branch
Message-Id: <179102018533.199361.8559946308319724439.b4-ty@kernel.org>
Date: Sat, 03 Oct 2026 11:36:25 +0200
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Sun, 27 Sep 2026 13:12:52 +0800, Matthias Goergens wrote:
> The T: entry for GENERIC PHY FRAMEWORK names phy/linux-phy without a
> branch.  The repository's HEAD points to branch master, which mainline
> already contains.  linux-next merges the next branch of this repository
> (Next/Trees).  Name that branch in the entry.
> 
> 

Applied, thanks!

[1/1] MAINTAINERS: name the phy/linux-phy next branch
      commit: 16ad4c3e62a5946143eb6642f46d25e46f605cd6

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
