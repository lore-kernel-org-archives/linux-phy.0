Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3A73ECAAD8
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 06:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tN8KYKpqkiEZlGOJAm7elXzbCvxTG4z2m/CNdGQ4eBk=; b=VP1RFBJMcTiLIw
	ozCr6RX/PDvAAMxV5AFTbSjNZVW1wfJFPyE0J+QYN/f5fyb9I2D5Q90Uo9dDp/w5u3pN1S4376t38
	bMNjXMdMlbu4hfQaesdLGckotgdkyxXvUNodVl+bW1r5vBKStf9Ch8Dt4VYls33g05F1DeeDKU4+u
	1mfayi94894CtqsscyW15LXWkJ4luT1ctH6XUzbHho3CsaAB88OvAuESK4UwmBZWAmm9TdRkjiBYT
	upN/9VTulOx/9H61ocQ8jTMpHQQ+CEA6a8s4iZsfRChO3aZl3Wd9FBZFmfOEzbXDvWqkJdPVtOLxN
	qvF/7WskWpwVNU1nGvzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWdt-000wvX-84; Tue, 20 Sep 2022 06:22:01 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWdq-000wts-Vd
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 06:22:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 47F71B824F2;
	Tue, 20 Sep 2022 06:21:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69C5CC433D7;
	Tue, 20 Sep 2022 06:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663654914;
	bh=3sJWRl+J/q3DcjQpY50g5O+wsnvw0WrYojCy/QlMC/s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q5Oa3UtXvwQ3ccq0WHQhH+aEBQeb89xFVX3L1vIFCRJPH5Pt0bhh68cCPQCE8Hyiw
	 6SJmn/w4UYyS40I6oT9Ww+0pfZF9nhYlRRx5O6K2sfMMKy4pu7ImlUVG2wB6bm9M0Y
	 iPCrxg0F072UaZf6S81Rl1BFCvG67Jg3Z6n69QDD6I/s+yK1fbxyI/ne1beNJPSYtL
	 2bHUPxCkubzZAZlp0p3SsnEDHvxOYjio5Hf39VNNso1L32e3Zz1d0WG5ODVnPwjPKg
	 XcuEwACe9ILriH8Th0K1SXJ09LUF6uOwr02m2ZYa2av/VTY2cDJich1w32F6ynpv0p
	 EbO/A5k6EUD3g==
Date: Tue, 20 Sep 2022 11:51:50 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: phy: renesas,rcar-gen2-usb-phy: Convert
 to json-schema
Message-ID: <Yylb/phqpn6TguUB@matsya>
References: <dbdcffd009302734fe2fb895ce04b72fa1ea4355.1663165000.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dbdcffd009302734fe2fb895ce04b72fa1ea4355.1663165000.git.geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_232159_184457_E30E4F23 
X-CRM114-Status: UNSURE (   7.90  )
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

On 14-09-22, 16:17, Geert Uytterhoeven wrote:
> Convert the Renesas R-Car Gen2 USB PHY Device Tree binding documentation
> to json-schema.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
