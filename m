Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC380C4345F
	for <linux-phy@archiver.kernel.org>; Fri, 12 Apr 2024 09:34:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k2C7jpt6rJ5iiW/Vi/+A9VHgUoOf/lJ2SMGNz9C3gVQ=; b=3Ym6b59lICMAgu
	Ar9H5pQjIZCs2siykVGUeyXOrkCsz4A5ctBhI/oY1PSIPJdy5QJkJkOP/l17wrnJFdRZ3K2KjVdZ2
	ag4eimBvU4Zau/FxhGoHe0jGvsPBf1KoKSavpEI89wYxxoKdsIqsKevRT2j0tfRaFB3YGm/v8hqyp
	oV2IBhw8zUMkCnkByTThAfpqMNCojWiJ/LkBFXZLUNok16IOBsb4NBfbuiZm7qlT+ZTya/QfR9MXv
	Gbb76ycuGF7DuL88FpdNoIFA0iCTWhJQ03Z85irumJTRnnZnVp1fxkMWb+D+zqEnm0sBZ6yJYGvWg
	6KWPOZDk6u9Ai0GVoHmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvDIX-0000000GSvi-2bUL;
	Fri, 12 Apr 2024 09:34:17 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvDIU-0000000GSul-1NNK;
	Fri, 12 Apr 2024 09:34:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4B7F7CE383C;
	Fri, 12 Apr 2024 09:34:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD6D5C113CC;
	Fri, 12 Apr 2024 09:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712914449;
	bh=xLQra8oyKWr2gJU0/Rk9xTiOnKsb7illFI7gIOIzVhk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fJiKmBLZyThS4o9klLsG7k+vRZefWZMLLZABuOXb5bUE1cPPFvBXXNdV2C4WRrOvT
	 e9RrDQdRrfqh5BDLf5swFSPw+jn23s0PAJcyzpdIrVjUM1N99OyXOZLn87p4SDAXsT
	 sAwWzd3ADkFRcqxaTy9ed5p4t6QDiXcWdRp9M04NS7fp1NNGE4P9mIkkVfnBAeqthh
	 ii4NDHpReUI7f39KyrrhqDF3ZCwTmpCgKtq3+DNYD37Pm2g6RN2I1Im2hlaL1QQOwF
	 jINB6EGVNQCSWjel5G+8v9NNihP9mmWjSPZU6xatq8YpHx5WzjqmmT6hSgq6Zm/2Rt
	 07zW+ALIjeVfw==
Date: Fri, 12 Apr 2024 15:03:59 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Michal Tomek <mtdev79b@gmail.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/2] rockchip pcie3-phy separate refclk support
Message-ID: <ZhkAB6goB4TmcmWu@matsya>
References: <20240411130150.128107-1-cassel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240411130150.128107-1-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_023414_575397_B93E3CBD 
X-CRM114-Status: UNSURE (   7.89  )
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

Hi Niklas,

On 11-04-24, 15:01, Niklas Cassel wrote:
> This series is based on: linux-phy phy/fixes
> (Since there are other rockchip,pcie3-phy changes there that have not
> yet reached mainline and which would otherwise have caused conflicts.)

I merged the fixes into next and tried to apply this patch but second
one fails for me. I guess it needs to be rebased.

Always based these changes on phy/next or phy/fixes+next (which is what
I will end up with to resolve)

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
