Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 517C9C87FC5
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 14:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wIL4OLIr+qq95U4KizGTpcFtPA3gyfTzX80N7bW5I8Q=; b=igHMJZI7RyI3IU
	9VOt82oDMmYTXt14lFoM0Wwkn5yFCc0ld6bThiHTQb7KViQjpNjVVpoYUS3lVu2986GV9xAHFFFCf
	y8Vh0Gei+eA+ciVDIbLcU/xLXcFlnR3q57+QbTlKrTG4mXyjIhkduafJvaxOqvjKP8Sf496zcNcVU
	IkRxsvE3XEye/r58qyvbEWqaFSCfoKpu38UhZmKGWV/TiiTj6MR8R62shbKJqo0IQgqGsLordqQ06
	JeYucV5cSxd3nyuXPA9QGCuFRciGx6txgmpsbtvn9p1EsKGkWxYQnlngJAB7CgNsSwtzPJ7tBPrAx
	KVloETPWxNPA+cbQdF1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueDoU-00000002fvM-084d;
	Tue, 22 Jul 2025 14:17:50 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueDBi-00000002ZMW-1P8i
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 13:37:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D6E8B5C655E;
	Tue, 22 Jul 2025 13:37:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52793C4CEEB;
	Tue, 22 Jul 2025 13:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753191465;
	bh=U4iIf4JiBSL+EyyHBGSTsFeBXRFblL0LN2v1ZJtTQxM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=trkgJdX0IzJQ4qBLx7i9XjFbkmDJQ+/tQ7H6KjVQdWzRh1ZflO9Y3ksbQy4wNrxNu
	 o+vuk77faTRSt9Ax6dJp92fZHRP4+dDEuMXmpMn8lxxL1Qb+hh2jaZgch+Az/CaMV7
	 3iBtfpEXEzgO6yhfZLqxTHADH7h0BrxW0afhGdAtWYSWoEqNPuetUHmdZcmxCLXaVg
	 mLjVNquanpKCB0PfFWnoCNEgVSi+9LuPQXOZtiw/g05JljH90BfTESWGuyZA/+SfFO
	 K1lXOHNHVNQ9eei048t4OGBAWPagqv8w+1w4GLdUoe1d1Uo6wCu54m7Mpw8rlpWAzA
	 76CMBHJsyuyEQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Lechner <david@lechnology.com>, 
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250627220107.214162-1-robh@kernel.org>
References: <20250627220107.214162-1-robh@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: phy: Convert ti,da830-usb-phy to DT
 schema
Message-Id: <175319146295.114152.13727198651641124424.b4-ty@kernel.org>
Date: Tue, 22 Jul 2025 19:07:42 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_063746_414190_AE31988E 
X-CRM114-Status: UNSURE (   5.45  )
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


On Fri, 27 Jun 2025 17:01:06 -0500, Rob Herring (Arm) wrote:
> Convert the TI DA830 USB PHY binding to DT schema format. Add "clocks"
> and "clock-names" which are already in use. As they are always present,
> make them required as well.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: Convert ti,da830-usb-phy to DT schema
      commit: 99dd7faeb7a4d973f049e1bad234888777e03646

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
