Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB07DEEB57D
	for <linux-phy@archiver.kernel.org>; Thu,  1 Jan 2026 11:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YHXL5KvvuLo19MF/eHr+qZkdqIEAiuo5hZBBtA6K31I=; b=oYKLqJPBpHg0rR
	yuxsAn4fPUk0WU+TPVgFtDdEEpe3BCvuNSWgoCRJfyFiaTosm86EnM5bMGniSzlsuL40t1haA3Qn+
	23PTiIgGlref0uYGPwbtugLH6F3Q3AjFG/O3ImYhkzL+TmE7VMX8/5ClClmzZvRmecCtbWiiRfS3w
	vz9A5R7oAwrhr0zNQwZoWwakLMR8uCFuwJgGh+09dORLqeCVzdsqb45pexI1I3sLdkF3CKtvrtkF+
	iI03w9TQ6rRtZE5b4qB1UXQ1E+aXrGgSivF6nhDsBNX1deHRCA/A7TEgJDuICkyh8+FdGZlsBO8QT
	kv6cIanr+3FUEb3wE/6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbGXJ-00000006nuG-1y6k;
	Thu, 01 Jan 2026 11:08:09 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbGXF-00000006nsy-3UFb
	for linux-phy@lists.infradead.org;
	Thu, 01 Jan 2026 11:08:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 82BD74442E;
	Thu,  1 Jan 2026 11:08:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5927C116B1;
	Thu,  1 Jan 2026 11:08:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767265685;
	bh=GlFzX75qSvx1N4AvF+Y7taDoArcf3LPSROcsNlz5isE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Ep4xzSqCIjEayf8R7q38QQq3rX9Qmgkzx9H7vHADJfITHMCycnOMIL5JvgVmRW8HL
	 hFf9oEoq6Y3hhMjkOXlVMyNaNjH+1v5u3Nv+ZnIgT5wD9WU0xRaDo5sNJOwM8v5f9L
	 xSrPA3h/kB6JVftdsR+7FGPWNXXxFsH6uNyPb9loZr94+Fi2ObtLrYNiPIUGdvGK8A
	 krgilWYnp9qWJx7iILrDa/evBCLn9k2jp52Og02jTFLZApONfyOWViZLtnHznFcg3j
	 I+Q3OrqcyZ3fNU4Btk9w2C3ZfpbDkp15yM8ObVAzAn2jOiF8tPGSouvWj/Q5WrOBy2
	 KHQY4Ip5YXWfA==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <3ca9f8166d21685bfbf97535da30172f74822130.1767107014.git.geert+renesas@glider.be>
References: <3ca9f8166d21685bfbf97535da30172f74822130.1767107014.git.geert+renesas@glider.be>
Subject: Re: [PATCH] phy: core: Reinstate pm_runtime_enabled() check in
 phy_pm_runtime_put()
Message-Id: <176726568337.201416.2895663594412389018.b4-ty@kernel.org>
Date: Thu, 01 Jan 2026 16:38:03 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260101_030806_649353_F60A8443 
X-CRM114-Status: UNSURE (   6.76  )
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


On Tue, 30 Dec 2025 16:04:05 +0100, Geert Uytterhoeven wrote:
> On Koelsch (R-Car M2-W), during boot and s2ram:
> 
>     phy phy-e6590100.usb-phy-controller.0: Runtime PM usage count underflow!
> 
> While phy_pm_runtime_get{,_sync}() and phy_pm_runtime_put_sync() still
> contain pm_runtime_enabled() checks, the same check in
> phy_pm_runtime_put() was deemed redundant and removed, causing count
> underflows with PHY drivers like drivers/phy/renesas/phy-rcar-gen2.c
> that do not use Runtime PM yet,
> 
> [...]

Applied, thanks!

[1/1] phy: core: Reinstate pm_runtime_enabled() check in phy_pm_runtime_put()
      commit: 0287c960b15f27498d85cadf584bb59301ea2382

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
