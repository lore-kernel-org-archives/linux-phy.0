Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A722CC77B75
	for <linux-phy@archiver.kernel.org>; Fri,  5 May 2023 09:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ikARZHfvqC6N1toC4o7l/r3uEiHviA/vVzfmk38z4gI=; b=lh0aWPeNthBSfC
	qf+zr0gXVjikrF+oi0W6X/5UTVlhq1Kzct2wopVrDMlliCsgJ1az1wX8RpEYZYYobFFmGJSlWfimJ
	Dii6oYpDJoUHEwCfnHXS//ibErP0LgKoULqkpYMyj0EQFQI+X3mt/PU0dO/2t7SoB6BNTkrYeC+xQ
	Rrbm4e9LbFFAh9h+tkxvgRkArxtP8uSgbfvTUhgEry/Ll/OhWgFHXdsa3q+M64f5NrgBY3Y3y33NO
	T020YQmWDoWdWq6oT4ZmXXpc+fVOd/tfz107l8aeg6dRjwJexxBM5SUnl5qVre6e9gtKJYnzO/FeU
	7HGVFgNwJfjx0bJOvAhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1purk0-00A97r-0k;
	Fri, 05 May 2023 09:28:40 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1purjv-00A950-0w;
	Fri, 05 May 2023 09:28:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A967B63CAC;
	Fri,  5 May 2023 09:28:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37E38C433D2;
	Fri,  5 May 2023 09:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683278914;
	bh=1RAXc0NiBF7f+OxPfJ6Q3iIY0ISS03O5QOmWMYZ+Rxk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lp9dhKV7U+yAXz8XoM5uYwnqkHMpOJNX4AafF2rX6XK9yCWv+doTi4UXb7tvPuA10
	 KNpEYJcc5CUUlgK03TE5D+xnA6DFAISKGJiyGMQ1fIpHDx0WtWbMiILEi9dCKltMfE
	 56Za1I3RJr7hcZUswM+W3tU6MFowUECKSjxGFMjKiu79cHbLzMhQu5pfyeCN2+3JP9
	 e1kWLDtSmwvSBYQ1amkgCeE+wBlNORJn4wpB/ZX/9DneqFgbaNLwEn5mmAucnMZ1cr
	 lDtHvKC5USXt8j2jaM4vXqNiPYskuLsmL2dzeUEZQbIx4sswbzPYNHvVjz8f6Y2FF7
	 Z2swNdODgi6JA==
Date: Fri, 5 May 2023 14:58:29 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Tom Rix <trix@redhat.com>
Cc: chunkuang.hu@kernel.org, p.zabel@pengutronix.de,
	chunfeng.yun@mediatek.com, kishon@kernel.org,
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com,
	nathan@kernel.org, ndesaulniers@google.com, granquet@baylibre.com,
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, llvm@lists.linux.dev
Subject: Re: [PATCH] phy: mediatek: fix returning garbage
Message-ID: <ZFTMPWp8LhwA9uHz@matsya>
References: <20230414122253.3171524-1-trix@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230414122253.3171524-1-trix@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_022835_371580_EDA10196 
X-CRM114-Status: UNSURE (   7.78  )
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

On 14-04-23, 08:22, Tom Rix wrote:
> clang reports
> drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c:298:6: error: variable
>   'ret' is uninitialized when used here [-Werror,-Wuninitialized]
>         if (ret)
>             ^~~
> ret should have been set by the preceding call to mtk_hdmi_pll_set_hw.

I have applied "phy: mediatek: hdmi: mt8195: fix uninitialized variable
usage in pll_calc"
-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
