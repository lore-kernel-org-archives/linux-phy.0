Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2E54C87FD2
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 07:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qtw2rHpZfR/bgrhOt+7wPbhJ0EVnnYcXvzpvcMCBkf8=; b=qS0fYA61ZnqhYT
	/ZI+IWI8m3kz3vK/WhlOLiIYPeTBDzCBdQNNYRuMQ8a/jF/RlgKqG0VmwL1W2IjLH4j/LeiZ2ho0U
	Z/CpQNO+sj1mvDJfcFEaFQcNAMgtczp50IuWwnjEmE27xTbLsNHfkkJJ0BEAtaPEKXhelTWcmQkxJ
	pZmYv89gdL9QaBceNqtL5EIAfETe2I+qoheVfQ29hqjoLkqgLvPFS+2MFqyp2PHHagsx0sa5a0PDn
	Kv4BwbgH4Ow4i2AB9zVDP2U3f/vtprDwdIvpZPvoBpza6HZQcEIhhrhTxSe34bygcOr+xk006pmrq
	qMfkVsi79ITtku6sbbBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvLS-0000000HVMP-2LZS;
	Thu, 07 Aug 2025 07:47:26 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvGa-0000000HUc1-28iD;
	Thu, 07 Aug 2025 07:42:26 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 159E220692;
	Thu,  7 Aug 2025 09:42:20 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HHqSeRq_gcEW; Thu,  7 Aug 2025 09:42:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1754552539; bh=H7gI/QkU5mGOp6GhLKlxsKsfd/y/Y4/o0Q88QZH7wIo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JCLPVV6VnmiVpULyLwqu7CfnSt+w+68YFkSquR/haFOVOQvt3Tp1NyANmDsLS+n5v
	 0r3bomtLEYHgOX9MMUIgbYJBCSHb0tpkZ+4s0zz5powu+MNVt2GctxggttBF+pLnxS
	 qvhi3/aGsVapnSEaC4Dh2FuhIVT1tBbu2U+xLGdBrq+h9PeD5tYOkEIUhhf9UBeBMK
	 YNHKIWEcAt5u1T8d+0BZbULxj90ZJk/Mr+HfYv1y+9YsoTq8VvFXKaOMAhSUfTF7W7
	 ixfn0kCsmTO1KaQaciEOAP+zHNQOFQ0GhKb43uoKtJw4GZAZ2u76mK1ENpK86odBIt
	 Us8mvwZV0xVRA==
Date: Thu, 7 Aug 2025 07:42:06 +0000
From: Yao Zi <ziyao@disroot.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, cristian.ciocaltea@collabora.com,
	detlev.casanova@collabora.com, devicetree@vger.kernel.org,
	heiko@sntech.de, jonas@kwiboo.se, kishon@kernel.org,
	krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org, neil.armstrong@linaro.org,
	shresthprasad7@gmail.com, vkoul@kernel.org
Subject: Re: [PATCH v5 5/6] phy: rockchip: naneng-combphy: Add RK3528 support
Message-ID: <aJRYlA6jo9l-XrHt@pie>
References: <20250728102947.38984-7-ziyao@disroot.org>
 <20250807063036.480766-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250807063036.480766-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_004224_972251_F766DD2D 
X-CRM114-Status: GOOD (  12.17  )
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

On Thu, Aug 07, 2025 at 02:30:36PM +0800, Chukun Pan wrote:
> Hi,
> 
> > Rockchip RK3528 integrates one naneng-combphy that is able to operate in
> > PCIe and USB3 mode. The control logic is similar to previous variants of
> > naneng-combphy but the register layout is apperantly different from the
> > RK3568 one.
> 
> Is this a typo? apperantly -> apparently

Ahh, yes, thanks for catching it.

I think this series (at least the binding and driver parts) is mostly
ready for merging, so I'll be thankful if the maintainer could fix it
while picking up, or I will carry the fix in a new version if it's found
that larger changes are necessary.

> Thanks,
> Chukun

Best regards,
Yao Zi

> --
> 2.25.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
