Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E77FDC44520
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 12:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hcD+BEwhFRlppg2QWLjFpVjPMmhBxPlB6pL7DhtCF3s=; b=szjUjhFWBk/kMl
	nij8ESAYLmoKl9exay4+wyk968AxM2ZnNKEsIAT3mu46B8yUwRbZxsMIezkfhlWogY24G5ebF9gRY
	9q8Iqp9tognJ2au4uVIO7nyiha7bxkYW2PR0D/kpKp5vsg9b1g7BtMldfd0Mf6dv8wzkhy4eHba00
	I8AQiZJM+/FU4i77Vq8OOS3KkqlOMrgnTICP47vAEgZ+lEMbRY2Q6hhkNzh485zBtGZGTQa1sdXVI
	QMVQ3m5srZ+C/0B95ymoQBpmsRn5unQvNIuL3wv2zi9xmGGJNKWGfwOqrEvLJoWyacWCPXQbI3gjM
	LYMkUt3Xj9GFjScloYEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlmtN-00000006fn9-1GW7;
	Mon, 20 Jul 2026 12:14:41 +0000
Received: from stravinsky.debian.org ([2001:41b8:202:deb::311:108])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlmtL-00000006fme-2I3p
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 12:14:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=8CVhZNdyF22dbNibFclxDn2Vd7F+9/KtRj7HWP07lHQ=; b=vG25X5Q6VKWcG3SFC3rQ2+a2a2
	TNIL0H4wbRhjMUQ1IyWzC3mvf00w6KtX3F0A4WJRN8ylXQNhNXksGeE5qUNTNGrQDZc5gC2oLKE8a
	Qkk+CfaXGwAWKsA2t1dggmDkEJHGkS51fMkH9EmD39aVWrSY7dq03NnuNGmv5FK43aSbMSvqWNU3O
	OfeCXH0TygJU//DbrnF0UzZ/Mgx3Koy6jtQI43Yzyc2pRMvZOWvBXSQphU+4ku9k4nxnZPj38a+5z
	3aNsmtACBPXU8hYg4U/VX7iqmcFx4xVzMi5vOScnkH39mxT9q+l+fiskULYqAIHugffWtOzQSHSae
	Tr2ju3gA==;
Received: from authenticated-user
	by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.96)
	(envelope-from <leitao@debian.org>)
	id 1wlmtC-001Qaa-0d;
	Mon, 20 Jul 2026 12:14:30 +0000
Date: Mon, 20 Jul 2026 05:14:25 -0700
From: Breno Leitao <leitao@debian.org>
To: kr494167@gmail.com
Cc: ioana.ciornei@nxp.com, vladimir.oltean@nxp.com, vkoul@kernel.org, 
	neil.armstrong@linaro.org, netdev@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: fsl-lynx-10g: propagate PCVT enable errors
Message-ID: <al4Q92DRsHIl_Lfr@gmail.com>
References: <20260720101906.80584-1-kr494167@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260720101906.80584-1-kr494167@gmail.com>
X-Debian-User: leitao
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_051439_584484_B5AEF70D 
X-CRM114-Status: UNSURE (   5.86  )
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

On Mon, Jul 20, 2026 at 03:49:06PM +0530, kr494167@gmail.com wrote:
> Propagate the error and leave the previous lane mode intact so the caller
> can handle the failed reconfiguration.

Do you need to undo these operations that were done to the lane earlier?

        lynx_10g_lane_change_proto_conf(lane, lane_mode);
        lynx_10g_lane_remap_pll(lane, lane_mode);

--breno

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
