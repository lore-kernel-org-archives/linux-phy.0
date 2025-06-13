Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B61FC7114A
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jun 2025 18:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=lpTDjUCnR9R8FWSTHG2r67r4JVy4qk71RVlQEaSKo2I=; b=NO/QuPKPZJqONF
	hV1iM5Nj5fjNrhQ/qu33Z1jmRBXrUm3r4iprrpeO9BLB8r0R1bIDCbgmMkiRdfUaNTlqf18YxYEMo
	NVZidujqjRYE4OdyfpWaxhYBjulE9giyuPJSlLYn13maQScpyAPxlZmtbp5QVsDEc6xAX+efX+J7A
	F5xao57uu3VyRCYTUOfyOBTUdwWGFix+6YuEL1DtF8BwgIi0D+/8yIk8ri4ZiXRnH0qpeFTzoTG4K
	JnTDLWbPuPyUTEu/hP7qdNXi2Tr94gbb0h6XvBrP6+lBb2z9a/LXvVMk9J8vHK3RLznq7XP5BPych
	LsJmMf3XhnmGS/D7hFoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ8xu-0000000HGo8-0con;
	Fri, 13 Jun 2025 18:17:22 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ6oi-0000000Gz76-2yOt;
	Fri, 13 Jun 2025 15:59:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 14326629E5;
	Fri, 13 Jun 2025 15:59:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8987AC4CEE3;
	Fri, 13 Jun 2025 15:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749830383;
	bh=SQ7GUXRJXqTDf9P/Qm4haDbuby4wi4QGvJKfFQG9Ik8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=n0zzX3fPoRLTKtU+Wvdnf5IHXCu+A8x1xZNu5w/6wgOQjGKbQFeV/0lZl7mE6OVIl
	 LL5aVqs62RYkY/233ZAY7Wker72IKkGxfsiesN+3BPeO4JGA4e1fzISkzQqpi4cp6V
	 m400saPoJCII944lgT4+iD0UphSshRlzWNtAaIkt7walOyIdybnhSOKR94PEl6pJeJ
	 TT87n7a6/GvYSEqItedZbj00JjeSYf/eYjB6Fd+43MQyY/xIR3zdgK1MxjBTdr5JPc
	 cPeXPYeWLBpoYGUAeXaYGSh1ZwK4TOVV2g7jHOzZhqLb3fbymJctUrPkqdw8pigTxU
	 HHOSLHP8++VnQ==
Date: Fri, 13 Jun 2025 10:59:42 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jacky Chou <jacky_chou@aspeedtech.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
	mani@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, joel@jms.id.au, andrew@codeconstruct.com.au,
	vkoul@kernel.org, kishon@kernel.org, linus.walleij@linaro.org,
	p.zabel@pengutronix.de, linux-aspeed@lists.ozlabs.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, openbmc@lists.ozlabs.org,
	linux-gpio@vger.kernel.org, elbadrym@google.com, romlem@google.com,
	anhphan@google.com, wak@google.com, yuxiaozhang@google.com,
	BMC-SW@aspeedtech.com
Subject: Re: [PATCH 4/7] ARM: dts: aspeed-g6: Add AST2600 PCIe RC PERST ctrl
 pin
Message-ID: <20250613155942.GA962477@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250613033001.3153637-5-jacky_chou@aspeedtech.com>
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

On Fri, Jun 13, 2025 at 11:29:58AM +0800, Jacky Chou wrote:
> Add pinctrl support for PCIe RC PERST pin.

s/PERST/PERST#/ (subject and commit log) to match spec usage.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
