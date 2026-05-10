Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE923CD37AF
	for <linux-phy@archiver.kernel.org>; Sun, 10 May 2026 12:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e7c3/J28zDqDTG+XfGwQfrLJYYJ/jPlwMeB/f9Aw4p0=; b=NS1HZstWg/TElR
	ulJKsqMf+h0DAX67xB5pc5/CDBZJP3SQySlkKZd2qWpgdGz1Qftk8Mi4Q0MDkJV9xcXwciOJ2yW9F
	fXCN8mtfxR8bmA2ymbNNh6ZQZT/rb440mzrIkziM9mnKY/rtW6Dk8KwW0TYZ/C/BESd4UuYC3+iJR
	Ib6ux8E3YUMMjPrvllyqHzA/Iqtp8DaEcP2HfNXjoD4lD0HbL7Bqlo7fTqtsL/hv4r9fAr0lzDkUY
	ZC64WLfsWbgkf/S61icjyb2HPBsbqzmOFwb/qR5X/WtBBm+Lrmfd9ETa20qJ5iX3RnVYbv+RcZxnA
	fbFD8wfbl754gNt2rAYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3KP-0000000AibH-30XN;
	Sun, 10 May 2026 12:32:13 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3KO-0000000Aiar-3d0d
	for linux-phy@lists.infradead.org;
	Sun, 10 May 2026 12:32:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5527661119;
	Sun, 10 May 2026 12:32:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 441A9C2BCB8;
	Sun, 10 May 2026 12:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778416332;
	bh=ZOZPfRpmqg2BpdWh35bkdnOWkhQ00IiCGj8t0cYKe7A=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=SgU8zTnLL/JXvHJ5bv8R5pixRuqmE4WiGOcbTIh/I4Kff4y5lqaDcb2jEOz2mzI5R
	 7e5E0VVCWSbVFeM+9lfhgKkXz/OzgtKGsvr/8BZStj8kGAU4oIzaZxcHuPdPTkyrg1
	 G41/3WPaSR1BKQyvHVwqBkBMspt5+2HizMgvl8l47svQF7bpiow9nXvL4vAGrK0QZn
	 lvne5yuO7i1zf6wF0w/gxCSuStzX49t1AVdsf5ek0a4kX6osd0Dvch9Jaj8DJgev/5
	 z3x0Inm69lFK18fL8qWHPg/bekE8YdfeOuvtDOa58s64q5VHsqfxRheZdYTxdP5QkC
	 P6BR/0LDvkKLw==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260318-eliza-bindings-qmp-phy-v1-1-96a0d529ad2d@oss.qualcomm.com>
References: <20260318-eliza-bindings-qmp-phy-v1-1-96a0d529ad2d@oss.qualcomm.com>
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add
 Eliza QMP PHY
Message-Id: <177841632882.434434.6283185972129859697.b4-ty@kernel.org>
Date: Sun, 10 May 2026 18:02:08 +0530
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


On Wed, 18 Mar 2026 11:54:36 +0200, Abel Vesa wrote:
> Document the compatible for the USB QMP PHY found on the Qualcomm Eliza
> SoC.
> 
> It is fully compatible with the one found on Qualcomm SM8650, so add it
> with the SM8650 as fallback.
> 
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Eliza QMP PHY
      commit: d67a337d28a2d852ff539e983ad6790caf9c95f5

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
