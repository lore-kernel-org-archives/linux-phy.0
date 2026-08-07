Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5F52C5AC7C
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 12:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kiQ8//c67U7LjFA+34ZxAIUmP+7qGwDCJolPhrpWlBc=; b=G3pbjMB7hWIBY7
	CDVhLVqGHRmpIQTgFx+C8i+6dGcBtqxBVnRwOO5+n7Q0o1WOOBxVE0OcH2puE4LzzanPpvEkyI4AF
	gkGFwU9HfptEcb646+bCuIn09tR/00ot53OlqICyh0vLcPK3BDS7rrdGhCOli9bWk3gDmnJyj6/pR
	HR8RDTJ6Jsz8HD4YeGXfFVFNdKwKtN80G48Buyvp8HKVrr3gefc1Va+e3/sR2awFeVhqM/mf5s5zW
	4UQUeKT97HgAGG1pzgs5D6857oIqqHwU8SR3moMzWFnNGn7VQ3Y5aWDx63Kh3H9ZJlaDzQKT3y+Dm
	Rs02Yb6fSka1nEjpK73w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsJlt-000000081LF-22WR;
	Fri, 07 Aug 2026 12:33:57 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsJls-000000081Kr-0kJm
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 12:33:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9F1336013A;
	Fri,  7 Aug 2026 12:33:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB46B1F00A3E;
	Fri,  7 Aug 2026 12:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786106035;
	bh=2G5QrksURiMeIT/q/6FHj47gLmRyNC1EX+w+zin3eP0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=gGt6h145un9n000dCvMK/LNWXZQkqckAB+D8aozy6tsznAGtAW28SjTWmKmAUwuJS
	 krRAsvGcFrGFa4IgPTh5ADDjsSS2qG7GTkUE57tHOICJWtb4/uQaRJHHVB4VMCX4pJ
	 TdiSEE20QM3Fbe5Of8G8i34BJxEAuYmYHk88upQByfXD9BrLcxS/6yCsXn0jseo6di
	 A2skzs9qq5lX5jL5+4XbLneLULZ6G5ZBfHViPqvQUqOnKprwDHRQuiMBUfJoj8+BOW
	 z0XqniZoVWpJ8HVm9rpGUFl/LIneT5Te3XGtVNpDvJx2/7g4YVrjGqEzyCPrdSvvUj
	 Q81f/Qy6gfGZA==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Abel Vesa <abelvesa@kernel.org>, 
 Wesley Cheng <wesley.cheng@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org
In-Reply-To: <20260722-qmp-drop-duplicate-v8-v1-1-795eb7de0322@oss.qualcomm.com>
References: <20260722-qmp-drop-duplicate-v8-v1-1-795eb7de0322@oss.qualcomm.com>
Subject: Re: [PATCH] phy: qcom-qmp: qserdes-com: drop duplicate v8 DP
 headers
Message-Id: <178610603149.740291.7533615155584245879.b4-ty@kernel.org>
Date: Fri, 07 Aug 2026 18:03:51 +0530
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


On Wed, 22 Jul 2026 13:34:42 +0300, Dmitry Baryshkov wrote:
> Commit 212cdedcac11 ("phy: qcom-qmp: qserdes-com: Add v8
> DP-specific qserdes register offsets") and commit d10736db98d2 ("phy:
> qualcomm: qmp-combo: Add DP offsets and settings for Glymur platforms")
> added identical header files for DisplayPort-specific registers on V8
> PHYs, having different names. Get rid of one of the copies, reverting
> commit d10736db98d2 ("phy: qualcomm: qmp-combo: Add DP offsets and
> settings for Glymur platforms")
> 
> [...]

Applied, thanks!

[1/1] phy: qcom-qmp: qserdes-com: drop duplicate v8 DP headers
      commit: 4b04c8779a50ab27afb0b471ff1ced3061e440cb

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
