Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8FC3FEFB5F
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 15:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zzgfIGwTLZ6Ch2lYaGKaW63geoSGop0Pyju1xVJ9CFU=; b=jxuwukI4KTHydj
	2zNJb+7JAy04C8DfmucUAHfH1hVH/OvwiF2TW814/P+7VWFhFy0VwyB0/Bah+n4OOcUAGtz15hdbr
	F1p4yrE3LLSFJB7KmvYbU8KPGP86xFRzi3ZkTZPzTCYtxY6D3eT6B5+8YaLKvfCS6VCKaOgMoKZzc
	xCkWou9i3hgEVCq6j0nywCZruHSauBNgD/noUddM/u02HKGsMV2bkdNWBU5rdnVx44pWa0rYeFIHj
	TJQfaDOqDRuEHse++Vgppw86kjPmC5pwO3NUiCBv96afwugSQpYdE2JyXuvCVnPO6t4IV0lgOnjmE
	npFLhHM3BdC4PrBHXmJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvziP-00000008bnz-2EAn;
	Fri, 27 Feb 2026 15:25:17 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvziK-00000008bmr-0jVq
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 15:25:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DFA9A443DC;
	Fri, 27 Feb 2026 15:25:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CF6CC116C6;
	Fri, 27 Feb 2026 15:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772205911;
	bh=ZL8EJPW0zLlMdvTaNP5yKmV/KVX4aXFG/etNpJF8r6M=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Um3zw8y6X7t3uRdtrfB6FoGYZFqMGJ2AFf8amanFdGs9bcV16BdfpOoCEzQ4e0zt8
	 yFeLsoLNk+t24zVJScB9AGGr2tJVA6Oh28cprl7/56uMS/1gGE5j/LQjIRXJeCIil/
	 C5km3Jnsx58g8MVEiml6CK6axUnhsfLKS9SU74bNR30q3VabGRqAa9E3Mi4E/wD0xo
	 1/5Avs+I69pdOoNajz8LOGVa3XCJxQEv+rrIfbYahKtdDo4jN7GvJvkG1wI8YM57jJ
	 TXnMURihF2vnXwbBws4YqVCdYVSK10mjbjmYG44ppcq7K8aAjcWEY3OHw84hz9C9Vs
	 x1jjNnofh3A1w==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, 
 Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Ioana Ciornei <ioana.ciornei@nxp.com>, linux-kernel@vger.kernel.org
In-Reply-To: <20260226182853.1103616-1-vladimir.oltean@nxp.com>
References: <20260226182853.1103616-1-vladimir.oltean@nxp.com>
Subject: Re: [PATCH phy-fixes] phy: lynx-28g: skip CDR lock workaround for
 lanes disabled in the device tree
Message-Id: <177220591001.320398.14824622688771745554.b4-ty@kernel.org>
Date: Fri, 27 Feb 2026 20:55:10 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_072512_234042_74524F0D 
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


On Thu, 26 Feb 2026 20:28:53 +0200, Vladimir Oltean wrote:
> The blamed commit introduced support for specifying individual lanes as
> OF nodes in the device, and these can have status = "disabled".
> 
> When that happens, for_each_available_child_of_node() skips them and
> lynx_28g_probe_lane() -> devm_phy_create() is not called, so lane->phy
> will be NULL. Yet it will be dereferenced in lynx_28g_cdr_lock_check(),
> resulting in a crash.
> 
> [...]

Applied, thanks!

[1/1] phy: lynx-28g: skip CDR lock workaround for lanes disabled in the device tree
      commit: a258d843a3e4cb687da19437f8f81fee55ad7d35

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
