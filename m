Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56353C6FA82
	for <linux-phy@archiver.kernel.org>; Mon,  5 Sep 2022 03:04:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KC6pTPrkbSKraGyAkIZP1GXnsgaAlpOJ380kwGwIRMs=; b=olfC43V9bjgz2U
	hBEA9R+TfkRZzgMPW99hQj8upU6Bll/7eXvhgALSYXf+2Jq5QDrePERQyYveVyl8Y3hQlFcikNr4m
	mWVklgscYGt0lyYozyyH+pyaYCNa5QsM+EP7z6XC4kB6WDKzOnaF3WvkzXC2CKYjbCiDLkU8yJscl
	mWaocU+WqgDvvOboNTx0qcDPUsYuKdHi1Bm8y2Igmu6v6duaVwe+w3snAhNgUbvGxEyQQy698dhHQ
	ySQwQRyHTaWOQ4QeArbC6PLtzDEFxCaskzGYJ1Hn8zsW3tTCy5ROHK6a11mq+LBMPIIgVjNvtwA2C
	NN0N/lVk1pkaslnZOnAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV2Pl-006UVY-I6; Mon, 05 Sep 2022 03:04:45 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV1v9-005nlV-AF; Mon, 05 Sep 2022 02:33:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5B86161068;
	Mon,  5 Sep 2022 02:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFDB7C433C1;
	Mon,  5 Sep 2022 02:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662345185;
	bh=NQI6Lfj99NY3yIFReDcZuyphvLwpcFTlIYjgj1nE4Lo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sRen3PPuc8msv9ram2bpslbdtmiPqqgKYr2A0wRR/mjbFuzZKPj6foucGgGGMhcNP
	 fH0cHfgwxThhNfytOA4f6RBWn/7vUD6B0mjBEQ5issX14m7CASTSMoeRaNsIBo8gxm
	 2RmW922zVvc+trs/6xl/DKwNTtEKIQABRMDBAmNPrtBZ6sXnPM+miH75hH/zcvrrjs
	 FvtLfnFyRz/RxeYVEdDxmJjSHXgaQmCrIsF5sDhzvQO+aHGaxEMb1YaRfeMTqeJFm0
	 PEtC+shGEH+6MbgIvFLxSBspkMC6P3azjNaVyuddErNu/CqIOfCOg9oS18hAHvoxvO
	 npwQ3wbd6QwXA==
Date: Mon, 5 Sep 2022 10:32:58 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: p.zabel@pengutronix.de, l.stach@pengutronix.de, bhelgaas@google.com,
	lorenzo.pieralisi@arm.com, robh@kernel.org, vkoul@kernel.org,
	alexander.stein@ew.tq-group.com, marex@denx.de,
	richard.leitner@linux.dev, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de, linux-imx@nxp.com
Subject: Re: [PATCH v7 2/7] arm64: dts: imx8mp: Add iMX8MP PCIe support
Message-ID: <20220905023258.GD1728671@dragon>
References: <1662109086-15881-1-git-send-email-hongxing.zhu@nxp.com>
 <1662109086-15881-3-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1662109086-15881-3-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220904_193307_785948_806BC622 
X-CRM114-Status: UNSURE (   7.75  )
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

On Fri, Sep 02, 2022 at 04:58:01PM +0800, Richard Zhu wrote:
> Add i.MX8MP PCIe support.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Tested-by: Marek Vasut <marex@denx.de>
> Tested-by: Richard Leitner <richard.leitner@skidata.com>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Reviewed-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
