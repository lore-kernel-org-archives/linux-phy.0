Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EB21CDB474
	for <linux-phy@archiver.kernel.org>; Mon, 23 Oct 2023 06:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BpH3SkrSGXc0W+kmD1+Hf1lpuPHZ2cgqSMQqw138KI0=; b=mMdWwHMMpc1TVC
	UYGCeFISFKLFzqJbVUy1mB68WxreX29/SEdMdMKWRuKjnvwEcVy6UTF2nkg0m1pd8Fc1pwJk2aWEe
	btUwhhYncTsh4tmolVuJ6nwjnmJ3BqwrUiwocDNUvOHBw+0el9lqOUGfds9WI1wK8UqjABWU+INES
	EalqdvgSwfhGGoqaNcT42epOsljeV8q1NszlzCLjkPgCg419n4HSU482+xrX57Jo01CNrVv4dgRAB
	AFtLZYSueK7dSZMw7Fnm1ezYnAmekxvgJxFZCbWNyWJdct9w+9GMrzu/zUqbBapeQAAXRTXu+/0oG
	u6FuRKD2r3Crzb6ge/iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1quoRK-006XFS-2X;
	Mon, 23 Oct 2023 06:29:26 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1quoRI-006XDT-1o
	for linux-phy@lists.infradead.org;
	Mon, 23 Oct 2023 06:29:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id A12EFB80AD9;
	Mon, 23 Oct 2023 06:29:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 383BAC433C8;
	Mon, 23 Oct 2023 06:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698042556;
	bh=l0up1LuqtFZ9SiR7cVLTObMPbxT4qYaR/klMHz9+F7M=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=BNUBrgQHQCjkqBnNxsrPe3n4/Adbshw09kUJVBlCvEMfoZHDbbgMAJlGC5vPkoRTe
	 Ps9D53sQ0pjAh99PntOvE1rPDcdGaLpMeoc71pR8gmvFtiMAkzGxtg+h5b7dOLmuVn
	 yXluBuS5GG8w2cKpUGzgCGs9joIcEoXE46qM7s1VyamazLu5qqLrbmYPru7Kngu2kU
	 PyN6iAQrsRgYqe9jWblOiPDodhHDFEYBZ1aCr4cdsYjusabT8P3O5qtsUx8JkHIBEC
	 22Fl6n2qt6QgyEeW3azm5biTa7tgsJhMzJxI9F9zgSz4xTXp7ups9OvA/Tj5hz51u4
	 q4LyWKDIPwQkw==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, Yang Li <yang.lee@linux.alibaba.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Abaci Robot <abaci@linux.alibaba.com>
In-Reply-To: <20231017031635.105993-1-yang.lee@linux.alibaba.com>
References: <20231017031635.105993-1-yang.lee@linux.alibaba.com>
Subject: Re: [PATCH -next] phy: Remove duplicated include in
 phy-ralink-usb.c
Message-Id: <169804255380.383714.12352932455695541370.b4-ty@kernel.org>
Date: Mon, 23 Oct 2023 11:59:13 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231022_232924_756589_1B86CE29 
X-CRM114-Status: UNSURE (   3.89  )
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


On Tue, 17 Oct 2023 11:16:35 +0800, Yang Li wrote:
> ./drivers/phy/ralink/phy-ralink-usb.c: linux/platform_device.h is included more than once.
> 
> 

Applied, thanks!

[1/1] phy: Remove duplicated include in phy-ralink-usb.c
      commit: d688c8264b8ed25edbdafac46ea2b41b2e77416a

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
