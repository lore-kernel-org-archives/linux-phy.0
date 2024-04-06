Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD88AC67861
	for <linux-phy@archiver.kernel.org>; Sat,  6 Apr 2024 09:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XWbAzEbqJpSt/tzqOIEuTLaQmpDkXI/SD6RgjZqIViU=; b=gcaonhIc8jZVXj
	UbhImjhiS/NkmVAEzlf0j1gB5Pqq+l19YzYzG/ANXtMmGlv9+PJmbvsiCtckjfJk1jvoofHScC7nf
	o19neRKCu3eNM1Nec6dciGcNBlNpyTWWeGs8nPxM3Q2NsgAsnxv2ej0PQnSc+8OJlYXsM9TOev7DR
	Ffz00emXv9mljgGhcpvxDS50HGVGtGoO50FZz0R2VWOSwWxn5LdGx2ahMZY/f/2UGq29pWc7I/n5z
	5AMsRMDi10030h5JlnqC38Eun2XYbKm+o0dalCpI/tmUj0EQpTefJdjLsEJTiyvDIDApqRPhNLgH3
	EJGKbB+Pi2ze3cj29GdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt2D9-0000000A1tU-1QqU;
	Sat, 06 Apr 2024 09:19:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt2D5-0000000A1r1-0cL3
	for linux-phy@lists.infradead.org;
	Sat, 06 Apr 2024 09:19:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8F6EA609FE;
	Sat,  6 Apr 2024 09:19:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAF7BC433C7;
	Sat,  6 Apr 2024 09:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712395178;
	bh=R2YpeVd3fp6cSDv7naiL1ODEdKUfOG1zEJc13M0NeYI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=UjSDeR6bvGAw4Vd/Tp5OWTGDiDQB1RNTQxxSXSljaNYwjyo9dY/SRTA+6WhXrfx2l
	 HQzbNAgMj1sRNTgqj4wGsctaELnLAuPLA/O7eVncW7+KbvILgFWQVYN/mbG/mTNN7p
	 b1s7KgUEaNWSf0x3by4mH01KvKAFtruy84JYWPg1QoCSvfNe9rEe1wG0VQC2UFLTzD
	 7/mwyDJTH7REZK8qJiyP49L8uBIFhwAiP35m9JyDLZk5fm2Jg5zBc59fOe8KxBfTM1
	 e1kaE79w1qaXD1XO4I8W/UOpm4No+tAqjhs8BCO75TXFG64k8IOiYxcyCscKA1KeA/
	 8ES2RaHtZfxVw==
From: Vinod Koul <vkoul@kernel.org>
To: andersson@kernel.org, konrad.dybcio@linaro.org, kishon@kernel.org, 
 robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 cros-qcom-dts-watchers@chromium.org, manivannan.sadhasivam@linaro.org, 
 davidwronek@gmail.com, Danila Tikhonov <danila@jiaxyga.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240401182240.55282-1-danila@jiaxyga.com>
References: <20240401182240.55282-1-danila@jiaxyga.com>
Subject: Re: (subset) [PATCH 0/2] phy: qcom-qmp-ufs: Fix PHY QMP clocks for
 SC7180
Message-Id: <171239517351.352396.6743656953443079463.b4-ty@kernel.org>
Date: Sat, 06 Apr 2024 14:49:33 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240406_021939_541473_34B97930 
X-CRM114-Status: UNSURE (   8.61  )
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


On Mon, 01 Apr 2024 21:22:38 +0300, Danila Tikhonov wrote:
> This series of patches is based on the series from Manivannan:
> https://lore.kernel.org/all/20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org/
> 
> Patch from David adding a UFS nodes for SC7180(SM7125):
> https://lore.kernel.org/all/20240121-sm7125-upstream-v4-6-f7d1212c8ebb@gmail.com/
> 
> The patch submitted by David and a series of patches submitted by Manivannan
> were both applied at approximately the same time. As a result, David's patch
> did not include this change.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: qmp-ufs: Fix PHY clocks for SC7180
      commit: 7c1f42967b75bdcd0640c52d37d58d8dd122989b

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
