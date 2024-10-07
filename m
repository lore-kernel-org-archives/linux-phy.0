Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20791CFB448
	for <linux-phy@archiver.kernel.org>; Mon,  7 Oct 2024 15:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mC+fDz6X/Mma0FcYP6Mpk/qHNIDuuT3kfoUoKznNwRI=; b=eM4PICpPZcFWlL
	E3rMqkYcvHW+d6CZzFaW3ciTxYS3zfwFXYEDBRaPim3r8sx3kvGQv5Je709kAdNFi6yKF/uLThYto
	PqhQE4R+jEyDbgHTluKETWu0N/kvwgmPlmZ74x52M9riJMcOuCUFqHR5+fwaWyPYXqF8t+sR2znPH
	9fxGx+bOxYtPjmB9k8x37NzkosMsbAVPV1Kv/rXjqH2pmsmHMwQHf/G1mK66rrL70tfK1AIUsDpDw
	p1VespGFewEJd6JEGFy1vUNAhrWUDVmkN1C1TIzVx2zcXRWse0RaHZLhpSTYazoLXyjaEFbzWqupE
	xabL9JMz+1MhfgeMYvMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxq05-0000000321i-35BW;
	Mon, 07 Oct 2024 15:50:21 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxpyl-000000031et-22nW;
	Mon, 07 Oct 2024 15:49:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8D8915C5C1B;
	Mon,  7 Oct 2024 15:48:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 806ABC4CECF;
	Mon,  7 Oct 2024 15:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728316138;
	bh=AmnZGoC6d9JOz7Nbe+RZvuUjltSac8yKHkvPAr+paMM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Dx525gKB/36rAxVVOUKDXn7PHyEgnKQMOOUP6Yqc965PrhHfL+nzYX8n8c7V/7/14
	 qPphRKBLhYt0feXqHz1SinDI0oGjZy/A+ua6oGpNIfOhKwlTDb/zn3/JsbD4M6GYC0
	 wk/vnweQW8aiq0IRs1qYlnRK17h3mYlJbocXiqp78xpuPxDxHWSY1S8pU10kVOrIlY
	 GFW5+RXGiOORnfsnRsfM+KSulrqzgl5DZKpkwNGmMp+TN9+TJMM7iJHczYyizPurSQ
	 2Adsy2R5+HSQf5YHmWp26fASq9gOf7yCw7jvXUfwsQdzhHb2q9/Am0yosLSCcDWc+o
	 B0ZVzSph/zW1g==
From: Vinod Koul <vkoul@kernel.org>
To: linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org, 
 Dragan Simic <dsimic@manjaro.org>
Cc: kishon@kernel.org, heiko@sntech.de, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <cover.1725524802.git.dsimic@manjaro.org>
References: <cover.1725524802.git.dsimic@manjaro.org>
Subject: Re: [PATCH v3 0/3] Improve error handling in Rockchip Inno USB 2.0
 PHY driver
Message-Id: <172831613615.134526.763385674253589863.b4-ty@kernel.org>
Date: Mon, 07 Oct 2024 21:18:56 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_084859_609389_BA107D67 
X-CRM114-Status: GOOD (  11.03  )
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


On Thu, 05 Sep 2024 10:28:21 +0200, Dragan Simic wrote:
> This is a small series that improves error handling in the probe path
> of the Rockchip Innosilicon USB 2.0 PHY driver, by returning the actual
> error code in one place and by using dev_err_probe() properly in multiple
> places.  It also performs a bunch of small, rather trivial code cleanups,
> to make the code neater and a bit easier to read.
> 
> Changes in v3:
>   - Collected Reviewed-by tags from Heiko for patches 1/3 and 2/3
>   - Brought back one empty line as a separator of dissimilar operations
>     in patch 1/3, as suggested by Heiko [2]
>   - Dropped one backward conversion of dev_err_probe() to dev_err() in
>     patch 3/3, as suggested by Heiko, [3] and adjusted the summary and
>     description of patch 3/3 accordingly
> 
> [...]

Applied, thanks!

[1/3] phy: phy-rockchip-inno-usb2: Perform trivial code cleanups
      commit: 449d2a523a0c3ca8f4c993b8e37795c2aa174da6
[2/3] phy: phy-rockchip-inno-usb2: Handle failed extcon allocation better
      commit: 595ad7a336bf21f9d111a033820cd95d70343bd1
[3/3] phy: phy-rockchip-inno-usb2: Use dev_err_probe() in the probe path
      commit: 40452520850683f6771094ca218ff206d1fcb022

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
