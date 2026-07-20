Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65C7EC44520
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 11:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T0IH/Cnj5ZGAVzXVfPFTzgrY0nH3HaJfIBcozfJuovM=; b=F9bZ2kixwtWiUf
	yQ1SfrkCAaUl+j1xWVjrLQ2duD7Oj9n8wBgDqRVi0ROQyOOeQ+rW8NM+bzCWJAPsSkKZvX1NsgyYl
	fHMkxyfiHFtrUjQu5ikrB7LXFduz8YsHrMKqc7gzEYoXwZXXw5bWS54+8XCHAgLRAddZ5AJQ179dO
	r3bapG2cIYJML6+O908ofg00bJokxjViPFRz5aexRCvGC2gIMRm1UoEp7Gr54GVRyfXnvm6tgxmyO
	zWQU6klxXy8ntLBF+PnML+Y4AFEwcCuITPEEiKZrqWu8E7qGJbNEoI1r+uMjuJF7hkBUta+1fgrGD
	RjuzBoT4faDWGJJM9k6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlmPD-00000006cxt-2wbi;
	Mon, 20 Jul 2026 11:43:32 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlmPB-00000006cxc-32sd;
	Mon, 20 Jul 2026 11:43:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2A66D60A79;
	Mon, 20 Jul 2026 11:43:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CADF1F00ACA;
	Mon, 20 Jul 2026 11:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784547808;
	bh=jksvQuGJlzz+/4Aqk8TfN68mdO4WqGHnmBV95K91OZI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=bpOsEiDaIbN7OGiv7cjPKKtUgu3rNub1z904ya8JeruJorGiRPMGeDDKD6d7Tk+P7
	 vJDN7t3OBmirceI+A4PIpZ3QglMM4mdNi+PGbIVBRhEksV0bh5YrqswA/P9XyEzpux
	 ef3An1rVopb/HTeRyUd468oziyI8Thc6MyeS+pDV83j5TDVaa1YKgXIvf051b+uXyb
	 cHMshVPtFsRjmY8UBpaefAy+vdC1ztg0oSCMdAM4xUtv3UiV8UFY7srerA1VYuGJcB
	 DEVJmCjutGKYT6LZ4Qjz+5/FLhj3IrirnXpI5C2lOgNVyoTFrI7F3OHbX1zEjzt4fY
	 ficoVttbv6OJQ==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, 
 Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
 Alex Elder <elder@riscstar.com>, Ze Huang <huang.ze@linux.dev>, 
 Inochi Amaoto <inochiama@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, 
 Longbin Li <looong.bin@gmail.com>, Yixun Lan <dlan@kernel.org>
In-Reply-To: <20260703021024.495433-1-inochiama@gmail.com>
References: <20260703021024.495433-1-inochiama@gmail.com>
Subject: Re: [PATCH v2 0/2] riscv: spacemit: Add K3 PCIe/USB comb phy
 support
Message-Id: <178454780165.1388616.1849106686224680549.b4-ty@kernel.org>
Date: Mon, 20 Jul 2026 17:13:21 +0530
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


On Fri, 03 Jul 2026 10:10:21 +0800, Inochi Amaoto wrote:
> The PCIe/USB comb phy on K3 is a big phy that contains multiple
> standalone phys for each PCIe and USB controllers. This phy is
> required to configure a syscon device for mux configuration and
> calibration.
> 
> Changed from v1:
> patch 1:
> 1. Add extra description for "#phy-cells" and "spacemit,apmu"
> patch 2:
> 1. Fix multiple spelling errors and copy-paste errors.
> 2. Make some magic number as meaningful macros.
> 3. Remove USB3 set_speed() callback as it is not needed.
> 4. Fix the wrong land data config and mask.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: Add Spacemit K3 USB3/PCIe comb phy support
      commit: 013004374b4da621e292408112413b103dd28b03
[2/2] phy: spacemit: Add USB3/PCIe comb PHY driver for Spacemit K3
      commit: 7a099760ea63ced7b194852b7dbbdcd951585f15

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
