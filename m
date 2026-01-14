Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCA90D38FED
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 16:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4CcV8JNB6zBWB8LOb7jJ0tXR9+H2e3xX5JvvUE/38OY=; b=XxDGxsdLX13Whi
	szh8HVFV/F4DC0HqmNKRZZRGCrwHxbYewt81/pCBMZYnwS2LWXGOLLjny25NaPJUbmZKvgRIUDa72
	y0Fo1jzBiYSW4tEE+Z6IVwCyBn3a7JRYPUe6LBR0w9FfD+yx9oaG2O3xy9SWbRTeeqYVpMkpopwf7
	hLo2KCKJkTucF1hP2jk+5HhAzcBgTWAOeebiYNRIyb8XeIWFqcgxdBcuryIsjboEU637dbdEE/Zho
	zndTX4lx3NnyNOyoj3Xb7reo2ZRe2/z+aDyS59Cfuve4l7Jvohi2A2DhMTahXz3C7EZYi1UX2YSTE
	5pAJ2OLdFXbbtK74ZWhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg46Y-00000009zpl-0GZx;
	Wed, 14 Jan 2026 16:52:22 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg46E-00000009zfE-2kbx;
	Wed, 14 Jan 2026 16:52:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E371B44418;
	Wed, 14 Jan 2026 16:52:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD28DC2BC9E;
	Wed, 14 Jan 2026 16:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768409521;
	bh=iEoIBUiTErZhAHEK88wMe4VPH+/PQ2T6ozGdaL9nesI=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=RxjoBzvgOnICXpxptA9kB27hjbg0sbut00Xp5odTH4aXtaf/0JBv2edoqvvMdPBsR
	 VtSTb2kVwvqevDTITaj8sUDDJ1lrkpOutV3jOh0SgSrYf5noe6qMBiJOuI+CKS4IfQ
	 +KbxYxfL1bVG9dokRTILT4YxmW4BjPmCQGdaR+QKu23Q4p/lSymscYYc/KWoW/xYNS
	 wxYvvlGo+siAu14ePbvKc+cyAOeKr0VV7lKr2WUlZyET6TtR8ZJWU5V6uyiRTyiohm
	 xoF5Rg9pZQh6nosBieDe4Yzzyk0/edTxBo2akevW9hzEBo1JkkRvHeHTFkn3S8AsQE
	 9TlXM6Spbgaaw==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, 
 Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260102124848.64474-2-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260102124848.64474-2-krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH] phy: socionext: usb2: Simplify with scoped for each OF
 child loop
Message-Id: <176840951952.979558.9345356688634586716.b4-ty@kernel.org>
Date: Wed, 14 Jan 2026 22:21:59 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_085202_729992_F64BCE99 
X-CRM114-Status: UNSURE (   4.21  )
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


On Fri, 02 Jan 2026 13:48:49 +0100, Krzysztof Kozlowski wrote:
> Use scoped for-each loop when iterating over device nodes to make code a
> bit simpler.
> 
> 

Applied, thanks!

[1/1] phy: socionext: usb2: Simplify with scoped for each OF child loop
      commit: f16741314f68091a8edf116ad5c134a72ffab854

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
