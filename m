Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2A43FEFB56
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 15:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QEnoF9G6nH+0CG2Dj7Q4wHNNyrv8OP3eIjP+WY9B+5M=; b=GSR3PEv21Vbfgk
	3OBZydnccWzeZi5quzwy+ya4pOWVw9AoJlAPwn7KzqF5zGoTm/EAHSz3gV7bcFvsqDQTusPAgigXA
	D1uMo2Hc9Z7hkJCGMnYRIe4gwDdyNanCOpwBuYkibmF2Opw9R/fT+TLZAkORZ0Un/6kq179TpJtMr
	UP5IWa28yiO76qj85W/Ks7Fsjb+BEwHz4yIh+OMbHr/qwSFZxAq6m6dMxNDON92r/mIzElxb+bjRo
	d86qBoWCYmIaSufDk8kzgHgLNEOx4QpZIy+aZ4LCX/x6nw0/RYWalfykWATRpF2KZCtHo3hFEV/v6
	Nb+O5t5jTt1tF1jogiIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzma-00000008d5i-2nrb;
	Fri, 27 Feb 2026 15:29:36 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzmY-00000008d3t-1siW
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 15:29:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2D9C143781;
	Fri, 27 Feb 2026 15:29:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4D25C2BC86;
	Fri, 27 Feb 2026 15:29:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772206174;
	bh=QqxPEidjtijcKI0x5VDokrr7iw50sdCcnR6RQN9UqMs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=bhNwackp8ttEQdj7NXtXuArb2kHOwIxMDpjs5AR/3NUUmxs0OFOsBnBkFUImxaQmt
	 cEsQjQR7KX8kz5gLUqPzrfdNiLbBPmZB6YK9OUbIPeBrjUSvwMUPeggvzuAVDIN1IW
	 6WafSa3M4ArowphLrl513RHxCK7oALXznG6PFAkjeS6MievPvrzCJN27pT3RGEnJkU
	 XnvrVjB+y+It50KWX/iIdeiGu705pGjlDBxXohxdInRMBQuTkjVCmkeQCMdDKHn8nu
	 WCQuXssgA+x/pPYvO2D/S35yaMxz4iAO+lveKtuaQy8zolo6trmRSg/wTTwz8AePGN
	 zhQSWJUuachng==
From: Vinod Koul <vkoul@kernel.org>
To: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, p.zabel@pengutronix.de, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Yulin Lu <luyulin@eswincomputing.com>
Cc: ningyu@eswincomputing.com, linmin@eswincomputing.com, 
 fenglin@eswincomputing.com
In-Reply-To: <20260205082009.1780-1-luyulin@eswincomputing.com>
References: <20260205082009.1780-1-luyulin@eswincomputing.com>
Subject: Re: [PATCH v9 0/2] Add driver support for Eswin EIC7700 SoC SATA
 PHY
Message-Id: <177220617042.330302.2707782153123727768.b4-ty@kernel.org>
Date: Fri, 27 Feb 2026 20:59:30 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_072934_530123_D0C21B4F 
X-CRM114-Status: UNSURE (   5.87  )
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


On Thu, 05 Feb 2026 16:20:09 +0800, Yulin Lu wrote:
> Updates:
>   v9 -> v8:
>     - eswin,eic7700-sata-phy.yaml
>       - Modify the format of the "default" field in the
>         "eswin,tx-amplitude-tuning" and "eswin,tx-preemph-tuning"
>         properties.
>     - phy-eic7700-sata.c
>       - Correct the incorrectly formatted symbol "-" in the comments.
>     - Link to v8: https://lore.kernel.org/lkml/20260123024823.1612-1-luyulin@eswincomputing.com/
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: eswin: Document the EIC7700 SoC SATA PHY
      commit: 820265f7b666d588bcb7df06f3332265c59e8cea
[2/2] phy: eswin: Create eswin directory and add EIC7700 SATA PHY driver
      commit: 67ee9ccaa34a11c317411bb8e7d305d93d0b4111

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
