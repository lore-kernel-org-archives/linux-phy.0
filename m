Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5CD7C83F17
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 19:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1AmEJbZj3+fhKYeB0Aikbcn171I1CnUo3T1R6xy+ZiI=; b=xUKm8CoSliXnnu
	t10AvyMty114mh+5L2N5UMNkX6TahNxQfaACmqKW/kLios8b/bDL9rDYnVSknzOJPgnwBRjlEnNXU
	shKpD9Gz2kjtI05HsduRVC85gJq7duaymTRe55TamBZbszvORZeVeVm9VX2NwMtiPQxXL2BfpM5eW
	aciYJ8ckojfdChngiCvlyGszNrJ0+MHsWJ2NiFr0wai1vECVtYdPjmNhocftB5QZ8pRzBK5MOKg9i
	agEcxUv1gQx9fEVkTyatbupxJXBLJ95/W0YJ/zJY8cslo0VfQEIzIFQtow8iD7VxxZ6Tk4ky+Q/mi
	gNXmZET52ukSuWAWOc7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubl6z-00000005xzc-3YVa;
	Tue, 15 Jul 2025 19:14:45 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubhQW-00000005ZR1-3aEB
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 15:18:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 007666115E;
	Tue, 15 Jul 2025 15:18:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C258C4CEE3;
	Tue, 15 Jul 2025 15:18:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752592719;
	bh=q9VBgZoVnvlYmzkNOY4MseIlWIGaQ1fU9AXJh1oGUOA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=HOS/GGQlPyAUoJj8L470mRd2H5zQAJXW0edmGkkNbJMdPOLp5gh0pP1350jq0Jj5i
	 7HoEF3kQtAJUnDMRpIW8GLNJh5nXNZoUKznaV9BAvQLtkykzLrB0M+Wydxzi3w9NdA
	 ZoNvi/ywXtEFGnvQBuwUEOYc+k+BoPTeMJL6s5n/YwuHZN8sCHR9wtz+plaKC2FaN2
	 9592FrqDGXpwjqS0vlJW28RD5cyL3vKj89Zj9lfYm31xCyoDL+zU5n76mT8eXZkzPL
	 v8fvS1pZDHat338e2mhdHUWLdyejwpVEXFK+n1YVWGtcJRf7+7vpgNXXo9haH7amsr
	 i9fb6JfJuw6MA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Harshit Mogalapalli <harshit.m.mogalapalli@oracle.com>
Cc: dan.carpenter@linaro.org, kernel-janitors@vger.kernel.org, 
 error27@gmail.com
In-Reply-To: <20250710172403.2593193-1-harshit.m.mogalapalli@oracle.com>
References: <20250710172403.2593193-1-harshit.m.mogalapalli@oracle.com>
Subject: Re: [PATCH] phy: qcom: fix error code in snps_eusb2_hsphy_probe()
Message-Id: <175259271714.535271.17010232009134065105.b4-ty@kernel.org>
Date: Tue, 15 Jul 2025 20:48:37 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Thu, 10 Jul 2025 10:24:02 -0700, Harshit Mogalapalli wrote:
> When phy->ref_clk is NULL PTR_ERR(NULL) will be a success. Fix this by
> using -ENOENT when phy->ref_clk is NULL instead.
> 
> 

Applied, thanks!

[1/1] phy: qcom: fix error code in snps_eusb2_hsphy_probe()
      commit: b7acfeab8af9ee661c933522132f3d1d92ed12d6

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
