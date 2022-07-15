Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BB67C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 15 Jul 2022 11:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mHHETwEEfVn6baaWQWWGf9/JRgVubJMpjk0vs1yHw7g=; b=yxicdQEOChtbh/
	dYnBBm5//PrPf3zcT4viS7TeALmmPj66X1ovVyLvpWg6fG6OjrIn/Vsc288qDGxQZtSjfRxxke4LB
	7OQnbnDyw78mnjJd714rahD0Idf14rJJsE0Py5wSHgRM8txoLT08jJ6Kgb1d9D0gaPQ3wXMnsrIBK
	hzQQfQrbD2RCXQk4S2uwIOtBZdApU1CWgZVZzpVRFfywdb81QSMRf1+5anSE9KV/3Qkjf7w7sLE1c
	w5k4p7R3AUPGfW3f76zoFW8lit3g1bhgyMrRhRjftfGDI0R30JJ4V6LshMi6qp1wpuAlGAsLde+ai
	5LiKxJ+rrMm885FGQV5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCJna-006iWC-2a; Fri, 15 Jul 2022 11:47:58 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCJnI-006iN2-RA; Fri, 15 Jul 2022 11:47:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 51DB8622F0;
	Fri, 15 Jul 2022 11:47:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A567C341C6;
	Fri, 15 Jul 2022 11:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657885659;
	bh=8pAt/EJziwJeBex/Oeo6RgjbtM2GLBwfpHRN/ZjIqwI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=McJkORLjvYNFldM9l8kt9HPlNnM3lYAsDQEj1hukwO5p8EQIN/TG2ejIb3/iQ9Gzr
	 OrBvJ2B7rYOhSt9PtwnPelubVad092XWojCfWfz2pEqE5cGi5Dsrc6/qc10br6SY7L
	 OrCwq9YTbx8ERQCHNSjIyLLEFxc7Js1NpZz05cylUREbk7VhCA7TlPD422axqun5YR
	 DSQex7es1tchmP9cNXQXyyzIjXdswnPfZ8De6JJTHa8pH+tr3kjq6ULchkpGmjLRWP
	 wi1lnYM4CoSGCUB2/LILferLs5VYRnKGy1oG7KWfVa/YUsN6wMAqeI/4iuz3wgWgpM
	 vQcjW4w06D6Pw==
Date: Fri, 15 Jul 2022 17:17:35 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: mediatek: tphy: add compatible for
 mt8188
Message-ID: <YtFT171BBEXKMTpo@matsya>
References: <20220708065834.25424-1-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220708065834.25424-1-chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_044740_938277_07C65DDF 
X-CRM114-Status: UNSURE (   7.15  )
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

On 08-07-22, 14:58, Chunfeng Yun wrote:
> Add compatible for mt8188

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
