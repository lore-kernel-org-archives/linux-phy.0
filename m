Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCA9ED2ECF7
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jan 2026 10:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LfCYOiDHrqZn9djvcVDw7X/VYIPGNSX5CiNzSKmIDMs=; b=ZbO7hXjCJNl+AV
	Cj+qljmaQUMWQWphL4QCd94z86KwbQutV5+DkscHleoQNe79r3ES9A/Z1MA+HNm/czTMdI2VcYnpU
	byVCbFpEAGxSZ0efvO1xoot28uaWdX5X7YjU6aApEL5wDxZDTr6b2Nz01D+7SiH2kC1k06BUkmC1z
	/rfSmNJM8cvVk9ezoDAdJGsW5btaZqBSkp8Vk2ugX7CncSn/s6C1U5T8UHFRflXbRbqBMO2g8jD+G
	7Zm+dfA2UJrSsVAAyIkM+7u0nVN2rDbmfSa7qknH8jzB2QEBXMqW20TpeQXRVaIKbhyyylHSalNe6
	1SBUvmReF7kIkysuiGNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi8jK-00000003aYT-1Vju;
	Tue, 20 Jan 2026 10:12:58 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi8jI-00000003aXC-0fUz;
	Tue, 20 Jan 2026 10:12:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=MfnfHEO5iuaJRI+62YTPm5+K8bMNJD7kcoNtFyzxGKs=; b=rBMPbugFWYyVL5qpyUg71WmJgk
	NsW+d5r8l/3OJR/bH+uny7K63JHwn6EexwsD9LgRY6e5O2AoGA0soxQOIcSdqKe3mQ+gXM9DhhvNo
	3KG7Z5FvIKpjDOcFokazR26jpXg0ukCqkxia45m632A7Xe22PwgqMfLqJI9IRIo84tkzvOmWADB0M
	pv42xrrZ6Rzee5VmvTyIbxH8lOov3zAKwed6WTCS3yxxp6LYPcbJ4QgQ/AJPkBTRGUHVtYWQa06FJ
	UO4Ic0BM3GjKTXZWTbufGLAIVl3iNTAXQw9/5JLdrWJoHlNavESs15lsvZcwxIGTgY+VGhp3SaXto
	6nDc20Fg==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:43312)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1vi8jC-00000000645-2Cga;
	Tue, 20 Jan 2026 10:12:50 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1vi8j8-000000007RE-1CJk;
	Tue, 20 Jan 2026 10:12:46 +0000
Date: Tue, 20 Jan 2026 10:12:46 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Jakub Kicinski <kuba@kernel.org>, linux-phy@lists.infradead.org,
	davem@davemloft.net, maxime.chevallier@bootlin.com,
	alexandre.torgue@foss.st.com, mohd.anwar@oss.qualcomm.com,
	neil.armstrong@linaro.org, hkallweit1@gmail.com,
	mcoquelin.stm32@gmail.com, netdev@vger.kernel.org,
	edumazet@google.com, linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, vkoul@kernel.org,
	andrew@lunn.ch, pabeni@redhat.com, andrew+netdev@lunn.ch,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [net-next,05/14] net: stmmac: add stmmac core serdes support
Message-ID: <aW9VHt6meEJFxV0I@shell.armlinux.org.uk>
References: <E1vhoSH-00000005H1f-2cq9@rmk-PC.armlinux.org.uk>
 <20260119192125.1245102-1-kuba@kernel.org>
 <aW8M9ZiiftGBQIRM@shell.armlinux.org.uk>
 <20260120081844.7e6aq2urhxrylywi@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260120081844.7e6aq2urhxrylywi@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_021256_196998_53380CDE 
X-CRM114-Status: UNSURE (   7.68  )
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

First, I'll say I'm on a very short fuse today; no dinner last night,
at the hospital up until 5:30am, and a fucking cold caller rang the door
bell at 10am this morning. Just fucking our luck.

On Tue, Jan 20, 2026 at 10:18:44AM +0200, Vladimir Oltean wrote:
> Isn't it sufficient to set pl->pcs to NULL when pcs_enable() fails and
> after calling pcs_disable(), though?

No. We've already called mac_prepare(), pcs_pre_config(),
pcs_post_config() by this time, we're past the point of being able to
unwind.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
