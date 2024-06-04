Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C178C25B7E
	for <linux-phy@archiver.kernel.org>; Tue,  4 Jun 2024 11:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BKMlnqcw2PwK96q+LeMMkoPn+db3gQ9Q4CzwGKCI1vE=; b=2n6gaDygdePXi7
	vqNHgoneM7ePIliE/QxQeCMOq8cq4RbbzsAVbe9C74918SrKnpLv4DA85OYL1JgY80g4ifkXeq6kr
	dPblRpGjG1UoLQJO/l8o8pTBjZF4ht8HYrw0b0G4dmRpJm6CnlOKnq6vXKXR38BD9skgS+lFfw0Zr
	T19KAtyjzHJmqRPPTSRwUGPQYdR86pKcKTJeIXK5W0oKNATdnYLoeLuiUgQK9EewvMfB5rG9zdV+K
	2pIMBBZKtT9AR100av/izIJeVrXtBdSB0ITFqbifIHj0QDoUOycXqlb41yaRlQnv2kS8M0admESRC
	M1/X4fq+zFENPp4/jgkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sESAW-000000027Dq-0Yx5;
	Tue, 04 Jun 2024 11:17:32 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sESAT-000000027CO-1JIH
	for linux-phy@lists.infradead.org;
	Tue, 04 Jun 2024 11:17:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id AC12BCE0282;
	Tue,  4 Jun 2024 11:17:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFC69C32782;
	Tue,  4 Jun 2024 11:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717499846;
	bh=ry3W4ejMvdfZDiI2lwHOaYBPQIP4mzzcKeBIDGzh7fA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bW3GE3IBaN63Sd741SnX4WqI3Iaqp+mpW7gs8SFSsYkqB2Ko4GSWwZhsvE7+AE/bQ
	 7yRIp1E4/Vr93IoprQ5Hjn+1ADEBLqlHvxtx+9El+tcOi9fUg00VILyBpD6YRLdL5N
	 XCv3e3NVV84QvXqBfZh3Xw1jx/RAQ7XM/0fWoOYVvHm+F4R6vK1agHJ0eBeI2ENoGd
	 zFJTkwiiECReaDb6l7j1MH3USEqln700STIHnpmN3ufjQwChxyNo2CXh1AY3dTeIjk
	 2UoVak7g26TJ0Wzn191eKZJUFimUxbBWHtJBanbgOyacdxJoW+eZVfUhFav+16LVvs
	 WhVnMjExq57PA==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1sESAP-000000003Jb-0Nm6;
	Tue, 04 Jun 2024 13:17:25 +0200
Date: Tue, 4 Jun 2024 13:17:25 +0200
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the X1E80100 QMP PCIe PHY Gen4 x4
Message-ID: <Zl73xRo7JpAZ5ViO@hovoldconsulting.com>
References: <20240531-x1e80100-phy-add-gen4x4-v1-0-5c841dae7850@linaro.org>
 <20240531-x1e80100-phy-add-gen4x4-v1-1-5c841dae7850@linaro.org>
 <Zl26Y0VklPmiirem@hovoldconsulting.com>
 <8e5610de-8091-4a08-a3b8-a0eecdc89438@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8e5610de-8091-4a08-a3b8-a0eecdc89438@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_041729_556786_F3CE6885 
X-CRM114-Status: GOOD (  11.46  )
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

On Tue, Jun 04, 2024 at 01:00:35PM +0200, Krzysztof Kozlowski wrote:
> On 03/06/2024 14:43, Johan Hovold wrote:
> > On Fri, May 31, 2024 at 07:06:44PM +0300, Abel Vesa wrote:
> >> The PCIe 6th instance from X1E80100 can be used in both 4-lane mode or
> > 
> > nit: s/PCIe 6th/sixth PCIe/
> > nit: s/from/on/
> > nit: s/both/either/
> 
> That's really nit-picking and not helpful in getting things merged.

Writing proper commit messages with correct grammar is in no way to be
asking too much (especially from experienced kernel devs).

Also, the code does not work so it should not be merged yet anyway.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
