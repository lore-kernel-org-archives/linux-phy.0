Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F13EC87FD2
	for <linux-phy@archiver.kernel.org>; Thu, 29 Aug 2024 19:07:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ereSHxvb3CyMzWGT3IBfJSNv49X6dnJSLZ6XO6DcjoI=; b=IR7Ztks0wsyB+Q
	xbL9IBxrNkAtBy8fKkIzHLIWD1+QJqeW1UU3BVTojZX4/w2aktva2Y+alNvjI8HS5STIDEt3JrdWh
	LNygbLqT/W578ibXxWSrqXLjDyocM1g8EbqR7wwZghDRW/mc36SR0vbd74h0CU5/ob7Fi55BbSgRj
	FdU0llehzeuvQr6f/3UPxiOGOY4VqgSEN697wj5GAAp8nILXC/5J8zDoZtw3tx9km1LP4egzn7ej8
	z6D3zetUXeiXpAoenguAVn5PZ6gVjmqrDl3gyGn4cs772oB4JnD5qRccSIBkV34Bv64P5za9WoCZu
	LwGf+HAX6O3J5/e2K8cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjkUP-00000003IU9-3kAi;
	Thu, 29 Aug 2024 19:07:25 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjkSo-00000003I9c-3glq;
	Thu, 29 Aug 2024 19:05:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 06A5FCE1C5D;
	Thu, 29 Aug 2024 19:05:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 836C0C4CEC2;
	Thu, 29 Aug 2024 19:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724958344;
	bh=tIgSDmJ5Kv7MmwVCtNoXS0Pr34Y6nx7sWAJEiFR4kc0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=GmNnnbaEzgUzO0yIyGiPdOgiXX3hHZr5zXotFJ7pEHhPk95F8kowtegf0ul5Xitx6
	 idlVCqGfkMPgBMgd29YJW7KeDrgzrRYrY7JvxglYXZdBqdQDaigSagK9uymWnmBU9P
	 CJUrMAqlhdKecvMbxq0v+upOPspgcYexr/+v/sc6mnroh8ABgQf2fm/MnAcxD8Wahs
	 p0ORzdt2nrdyotl0PHjFMiDplRVa/9LvVSQvTQQKU9xkRBlBOP5UDWFNaR0i7V5KfV
	 I12F5G15p69+jS6M2KEfJo30CVhvTPSjgdklxeYIhh3N0Po2v3/aD1QhpW5syLP8QG
	 H8ijpgv5/3rSA==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, Lorenzo Bianconi <lorenzo@kernel.org>
Cc: kishon@kernel.org, linux-arm-kernel@lists.infradead.org, 
 lorenzo.bianconi83@gmail.com, nbd@nbd.name, john@phrozen.org, dd@embedd.com, 
 upstream@airoha.com, angelogioacchino.delregno@collabora.com
In-Reply-To: <8af6f27857619f1e0dd227f08b8584ae8fb22fb2.1722959625.git.lorenzo@kernel.org>
References: <8af6f27857619f1e0dd227f08b8584ae8fb22fb2.1722959625.git.lorenzo@kernel.org>
Subject: Re: [PATCH v3] phy: airoha: adjust initialization delay in
 airoha_pcie_phy_init()
Message-Id: <172495834118.405683.17095010628277184659.b4-ty@kernel.org>
Date: Fri, 30 Aug 2024 00:35:41 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_120547_127146_0D27201F 
X-CRM114-Status: UNSURE (   4.66  )
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


On Tue, 06 Aug 2024 17:55:48 +0200, Lorenzo Bianconi wrote:
> Align phy-pcie initialization delay to the vendor sdk in
> airoha_pcie_phy_init routine and allow the hw to complete required
> configuration before proceeding
> 
> 

Applied, thanks!

[1/1] phy: airoha: adjust initialization delay in airoha_pcie_phy_init()
      commit: 7f7315db3d262298ab33d198d3f0b09cabfa7b6b

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
