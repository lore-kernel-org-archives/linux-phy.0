Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 628DCC38A02
	for <linux-phy@archiver.kernel.org>; Sun, 30 Oct 2022 12:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=JNtEBRqW437ykd5IUrjmojt6ruz2ZcJ5VSIbB31mwM8=; b=sXftJ66o5qzxRQ
	z30tb0zItPcKRMEniGHCaqgTcwjni9tVxhwCbNZFOY/t29/srby7XeuzyvvKiSFNEk+FtIMqbFQEa
	riEphzgQsCWfCS4gUCSiX5lUY0gleNCJOdPK2KC3nYYrrZMZ7gE65vcRoIiKf0UK6OIZzzp3E5d+A
	sEJv1fe7iuaQy3SQZF8b32nv7zl/aoCo0vQVBxXoXHdkUnd/jMifapc78nd7mk+r+1HCX0WV20HF3
	/TJtT2UnNNjFqaKweXTmmTVz+O4ZSp1Xp01JUtm4W6EYrDmuwR6f10pEQzgCv/iHUiiPwdZ4eMmFc
	HOw1+oL1DtVRlB6wcXkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1op7LI-00Fwnj-O3; Sun, 30 Oct 2022 12:23:08 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1op7LG-00FwlX-ES
	for linux-phy@lists.infradead.org; Sun, 30 Oct 2022 12:23:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 623F3B80DA7;
	Sun, 30 Oct 2022 12:23:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C34E3C433D6;
	Sun, 30 Oct 2022 12:23:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667132583;
	bh=PkPNPWozikAPhvR0KibrZ8002oXWFo6wATuSNybm2nY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=HZeJiVcZH0CSaQdE6La5tDj0iZDToDwbsg5/FykgFJALf2MUAp8m8C74zP4NwhIug
	 BgTjpNkCmw7WR+IqZ6FP53b68ab468y5OM9F7trEzWtuNm3QmgYtxe5owXp5HTjctp
	 wx5mRFMw8tnHaWpbclxRnOjAbNc9B75JHVHjkZvnAbohRg815haoO94O7qvCLy/P4t
	 xhHoPq5Dx9WrqBqF0fciLY6OI78sN/gShOzZGecD9cFpLnXBpSmY0jDsm1cj3mRvsA
	 Tzg59Nn0i1iAOH4PpRhUMO+22fAO708ZeyDxPYzYQE0WJkW6pLfaKx2fnicYd+fuQU
	 lpLGOqUEPRf0g==
Date: Sun, 30 Oct 2022 07:23:01 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v1 0/7] PCI/phy: Add support for PCI on sm8350 platform
Message-ID: <20221030122301.GA1022001@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221029211312.929862-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221030_052306_676984_07A9CA36 
X-CRM114-Status: GOOD (  13.24  )
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

On Sun, Oct 30, 2022 at 12:13:05AM +0300, Dmitry Baryshkov wrote:
> SM8350 is one of the recent Qualcomm platforms which lacks PCIe support.

I guess the "platform" (the hardware) has PCIe, but the current driver
doesn't support it?

> Use sm8450 PHY tables to add support for the PCIe hosts on Qualcomm SM8350 platform.
> 
> Note: the PCIe0 table is based on the v2.1 tables, so it might work
> incorrectly on earlier platforms.

I'm not sure what this means in terms of applying this series.  It
sounds like "this series might break earlier platforms".  That
wouldn't be good, so I assume it's more subtle than that.

I guess "v2.1 tables" refers to "PHY config tables"?  "PCIe0" appears
mostly in [6/7] as a 1-lane Gen3 host.  "v2.1" and "v2_1" don't appear
at all.  I can't quite figure out what symbols in the patches these
refer to.

Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
