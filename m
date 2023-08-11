Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF7A8C41513
	for <linux-phy@archiver.kernel.org>; Fri, 11 Aug 2023 08:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4off6FTQaUh7EC08WYuPEcOVqxCspZQi8BZAS1t5s9w=; b=adWULsWMsWv45S
	FrhhPQL3M4nmcQNdPpf3KF8576dR9lxw4j5dubucKGqGbuM7lvZXZpD7DRpNArdfP9hih8+0I1jFH
	v78ve2xnCDHY+fGclxMtRm0t7DOEPPImuE8ZSooAvbgLrOn5TJ9lNrLuJELrzJioA49Moecteugj+
	zO0vl842DtiaYVoRMGANbVniuJ78KYcofLh5jykB8CTLqnhUvXQCwgtqFyPF8RO5nzNa78Gy2yBLv
	ytDel8w1dBA2mddXbDusC1Mt21PSnGxtQ2UfSMZ2Csy2nWAJHG1+PkgzR4cR2OinIFaWFcaxTN5nc
	Ul/AmPg3GEAeKCE+pPBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUNXc-009r2f-18;
	Fri, 11 Aug 2023 08:30:40 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUNXZ-009r1k-2B
	for linux-phy@lists.infradead.org;
	Fri, 11 Aug 2023 08:30:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 394BD653D9;
	Fri, 11 Aug 2023 08:30:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF4D8C433CB;
	Fri, 11 Aug 2023 08:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691742637;
	bh=9IG8uNLc0T7yeYC5H+HbxR8/JxuZHHX9NigCQAULIPk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KFx/EwtSreaqN1gTlo099WB/vQAbPLwNgq2GnUFG3YK74qfEXTpCjekwyTL7hESVA
	 XyfVMoJHPeaWqOHKMUwTyscTTxLfTFMaKof7cpHIcrRaNdv1ZU8W6O99Cn+1fKhl59
	 jAtFJ+N2U96xNgvuXxDj4pmzm7A17/luS1w6PwXHG7iaxvNQ+HNCrUrjDDJ+fDthjQ
	 piFUyC8B7Kp6wiZEdmjn5aIK5Y4S7nthOHMRZp8sGXlzeFRFBbhXL+xbc6xT8j83Qc
	 y6uT59a2X3mdxcM4DY6gR/ANY26I/jHZMLfVY7DbYUzHLLk0+jn1fkp1ZKzC5M9XMl
	 pwi2NEogDqcgA==
From: Vinod Koul <vkoul@kernel.org>
To: Jack Zhu <jack.zhu@starfivetech.com>, 
 Changhuang Liang <changhuang.liang@starfivetech.com>, 
 Minda Chen <minda.chen@starfivetech.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org, 
 Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20230731114856.14401-1-lukas.bulwahn@gmail.com>
References: <20230731114856.14401-1-lukas.bulwahn@gmail.com>
Subject: Re: [PATCH] MAINTAINERS: correct file entry in STARFIVE JH7110
 DPHY RX DRIVER
Message-Id: <169174263563.106197.3926692362175021526.b4-ty@kernel.org>
Date: Fri, 11 Aug 2023 09:30:35 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_013037_773557_72D1E3E7 
X-CRM114-Status: UNSURE (   6.74  )
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


On Mon, 31 Jul 2023 13:48:56 +0200, Lukas Bulwahn wrote:
> Commit f8aa660841bc ("phy: starfive: Add mipi dphy rx support") adds the
> MAINTAINERS section STARFIVE JH7110 DPHY RX DRIVER referring to
> 'phy-starfive-dphy-rx.c', but the file actually added in this commit is
> named 'phy-jh7110-dphy-rx.c'.
> 
> Correct the file entry in STARFIVE JH7110 DPHY RX DRIVER.
> 
> [...]

Applied, thanks!

[1/1] MAINTAINERS: correct file entry in STARFIVE JH7110 DPHY RX DRIVER
      commit: 6ac1bb86953cc8a2419a4845de56c280b6f62890

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
