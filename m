Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0ED7FFEFB56
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 15:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BwXxtlAbGAUzprp3b2xrjTMomUE4+tpApCo72qgHhm8=; b=dmgwW8r5llrlKI
	6snZjq0tcCoI8C0BPtPnoLAEGcIP5mFjPXG2BAoPCdE7eJrLsWRfP/cJMlWkC48aby+kbhUyWQ4eZ
	GRj2glz/dygJPEqUSOMVGSoWZ36MpIsRiq2qWRuxORb3U/YnNAJi9cV/ippCbuLFYIRl/PRbF+6Np
	l4uJUH4nBKwHoe+YzvHJuf9M2kDXYcRwWjb5BFYZIKvMWLf98NoMCIhEab+mqGN/OumM8ZK11MCDa
	1V7AH9fpkvravTa1zlS1SFJBFKHkHbBIA4vrdFJVmPR2bAIHUAzrSu8ULkGFMYkk0brAwqIDAl0Pq
	w+wZ8m8aiPTkTA5QNFWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvziP-00000008boF-3Kvp;
	Fri, 27 Feb 2026 15:25:17 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvziO-00000008bnP-0l6t;
	Fri, 27 Feb 2026 15:25:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 252CB60008;
	Fri, 27 Feb 2026 15:25:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 644C6C116C6;
	Fri, 27 Feb 2026 15:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772205914;
	bh=TD6wUUXGrC/h9lopsUDiqeD+IbL4J/yZpjSRmDaPsc8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=XS7D46qKvbKowwm7Z4MQBZ1CFwH8lRjqyxUzbkG+PQt5p6a1LSj2qWyID6HFjmAu/
	 /Q1pfZQM5+lX+gOEPGDfX0u8nSAOH/DACGelVfgzT2YUzgbPlm13CN9NghCKJibsmn
	 Fet1LNLj+YKRsy2Z+OMGF9AXlRWH1AYQmFL9njP4sNyPLdgoiXRS9Bp87UXy26Uqwh
	 hgCrVRauU4kg6+FMyxyQ9nUzZxab8ou0VAF38A8eKMcertDfMXxZi4mFLhNHsE4Dwi
	 sSH0kN1jW0NUfb+U5IgFqfkwIBG3ZzGLcDGzNwKk8S9AYGHuNEg2sY/sBTSjsPWcXr
	 7Q18eN0E8IbnQ==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Ze Huang <huang.ze@linux.dev>, Yixun Lan <dlan@kernel.org>
Cc: Vladimir Oltean <olteanv@gmail.com>, 
 Junzhong Pan <panjunzhong@linux.spacemit.com>, spacemit@lists.linux.dev, 
 linux-phy@lists.infradead.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260216152653.25244-1-dlan@kernel.org>
References: <20260216152653.25244-1-dlan@kernel.org>
Subject: Re: [PATCH v3] phy: k1-usb: add disconnect function support
Message-Id: <177220591203.320398.3042297469534840289.b4-ty@kernel.org>
Date: Fri, 27 Feb 2026 20:55:12 +0530
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


On Mon, 16 Feb 2026 23:26:53 +0800, Yixun Lan wrote:
> A disconnect status BIT of USB2 PHY need to be cleared, otherwise
> it will fail to work properly during next connection when devices
> connect to roothub directly.
> 
> 

Applied, thanks!

[1/1] phy: k1-usb: add disconnect function support
      commit: f0cf0a882a02dcf28547f32264f6fd37e9a7b147

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
