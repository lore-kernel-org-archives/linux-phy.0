Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45091C54E71
	for <linux-phy@archiver.kernel.org>; Tue, 20 May 2025 19:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QgGU3BkRv3/uyG23Tpjlt5Dn5dhZ74/ZIDHBm/9+CtA=; b=sD6mZI3L9Qn1AU
	Oywq/9LEmhuxKdJ26YOOINMegEz4uBKfOnJJMrhku2RNXDSIh4QenI7J2H09j5AamKNF76KWAhtfs
	fxJLvngCZtfmrz0GWjoBD1K+cGFPtj5hpuJ8wwzRjuLLkMqa9hQAirOckcv4m+HGQbHNYwCFe7eEa
	27BPQfInZ4wQAvcskHdDc9o5xHNRgL9Wj+Me2eW80ehPDFW0hPoSIslJRdp692DIcp+fayJCgXR8o
	b8QrrZrmOdAJqp1+Gj903YJoiHaBGmg5Vqq1KUen1LYstk1e11pwJPDTHVi0GDHO8EugXFo+NIwVs
	iM4LDshoeHhJt6eDJF0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHSun-0000000DyVw-3xcn;
	Tue, 20 May 2025 19:46:17 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHShw-0000000DwKG-08Rv;
	Tue, 20 May 2025 19:33:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6197562A32;
	Tue, 20 May 2025 19:32:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D78C4C4CEE9;
	Tue, 20 May 2025 19:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747769579;
	bh=EZGRw9Q4tb3Mv4QMdVejmdHmY8SCNeUUNUC5LNs6Yac=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RYVGk4KRSLsCfbKkFb8O2MFI1ZA3lSnBE31g1iZ1lOqy/+g4geKEl1sM4Mzr/vlW+
	 eJPnG9FHK96DIzYhlbfUeMLTJOsIpgLBv3e5YpYTGIiGfHbKZ6XeHqd4+wafrjZNVp
	 Vw0mOrEp99UNXJDwHuFa1beVM8nlp3rqePIt6n24jD2S5Qd7xYceGQvTlHfJSWNkBa
	 Qs198R6ze3Bu33WdwC+qQFqhiY3eS3agIwsCSaHzy5jEVHAMhC7ZhlBYs+KjmlUAl9
	 oDnBReeD42fKi25zC9LhsvE0XCbCSkx7p4uHCitOJPAxk4Y4v2FN8DfISO+2qBghV4
	 CiJWKNEP7uTRw==
Date: Tue, 20 May 2025 14:32:57 -0500
From: Rob Herring <robh@kernel.org>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Frank Wang <frank.wang@rock-chips.com>,
	Zhang Yubing <yubing.zhang@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Diederik de Haas <didi.debian@cknow.org>,
	Johan Jonker <jbx6244@gmail.com>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: Re: [PATCH 2/2] dt-bindings: phy: Convert phy-rockchip-typec.txt to
 yaml
Message-ID: <20250520193257.GA1221161-robh@kernel.org>
References: <20250519024820.194-1-kernel@airkyi.com>
 <20250519024820.194-3-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250519024820.194-3-kernel@airkyi.com>
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

On Mon, May 19, 2025 at 10:48:20AM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> Convert phy-rockchip-typec.txt to yaml.

Thanks, but I already converted this one and it is queued up in 
linux-next. There's still a few more rockchip ones to do:

['mps,mp8859']
['realtek,rt5651']
['rockchip,rk3368-mailbox']
['rockchip,rk3399-cdn-dp']
['rockchip,rk3399-gru-sound']
['sitronix,st1624', 'sitronix,st1633']
['ti,tsc2007']

I see you already posted cdn-dp. Thanks!

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
