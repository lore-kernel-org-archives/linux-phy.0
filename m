Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2CC6C43334
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jun 2022 00:21:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eO3vVyaA++YM3XNUiflqWZOpb1YRZ/R0Jk6+whjTmz0=; b=wyxbx8L7KCR0bv
	+zZdSw7T76xlPZ/W3GGhjRm5mrevzuKK/on1JwlqHCX8tioYsk8CElLRQ/+NX7ka4qjnA1QOTW+yg
	iOn/JhTIElx1cVXvipUSrcVuwT55/4e40xL1l9PacKBsQIKzKbhtReDGpWLrsp3Sbg/xpIj5y/uYW
	wl6QuLi+TNrz218UYv91VGm5yZwpC7yOmSdnUCjegqLqsERmng37F9gqevkkKOpy1NZkSC04/zxBo
	+oi1aEJcn6lnNmejva/0t0sShT8khw2KUfSj8PS58VCBV3Y9GNHeTUdrZai2Fowrd8wnsLtnpjnhV
	JhhBGrdqRSByW/DrgEww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1zjo-004sck-1B; Fri, 17 Jun 2022 00:21:24 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1zjl-004scH-65
	for linux-phy@lists.infradead.org; Fri, 17 Jun 2022 00:21:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8776D618FA;
	Fri, 17 Jun 2022 00:21:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C98CDC34114;
	Fri, 17 Jun 2022 00:21:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655425279;
	bh=0YG9KQ5Z4Bh5yDSmb2sDcJxLFIow2viN8+dEV7RWx24=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=flUbtn/1uzyKtxubb4PflNkrpEykg69rrNaRe86hJ2fhDcL2EfPfu9M1wQMUaWtKu
	 sFOyn9i9VZpxfk7j9PJ2wb/Smn6Ko7LmBMMiibJdK+DP9KXQuC5uwwiRu+noEWOtwX
	 ZhZrGntAJZk7r53NsFzM9p9S5MffvcCbYYRuNpmftfuIflCRiwk9qPTRDSF1Eu5pH0
	 payX84cDEYXxOsRkuqJ7xUVnJoTX5SQWPKNY5jUeGnhx/hIFyNfgvBtvGUmQRll94W
	 C1k4xMj1GhgLlCpZ+/mdzpGreTheDaNduSK1Kj22A5plmsi+EHyOCgcLkLKYYHG/Ec
	 wwx7PjfsWiISw==
Date: Thu, 16 Jun 2022 17:21:19 -0700
From: Vinod Koul <vkoul@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: renesas: usb3-phy: Spelling
 s/funcional/functional/
Message-ID: <YqvI/49t7nNqpKuS@matsya>
References: <3da9bd360e1c83007af0e0e90fa4e6c2b50fdab3.1652100633.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3da9bd360e1c83007af0e0e90fa4e6c2b50fdab3.1652100633.git.geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_172121_301067_76AA80B4 
X-CRM114-Status: UNSURE (   6.25  )
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

On 09-05-22, 14:53, Geert Uytterhoeven wrote:
> Fix a misspelling of the word "functional".

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
