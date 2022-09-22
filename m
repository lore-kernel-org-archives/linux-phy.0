Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61867C6FA82
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 12:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=12fPgRyE+jUxcC+adglUa8+EHqiwml6PEnnn/FU48Mk=; b=PcUs7ub7D4dRLt
	cisakGQlGMNdOm9fd90ew0owuF/zqTvtH2Opnu87S7fAmpAEdbxw6+v42gC/ifidA049iJdXTyqNi
	DxUqXgVb0pf+F3jDWYSkvAZxShlIMBYEEjKdf4rlPsQaL6Z/AzPi6KKCBVAipHng0a+L4FaW+jgin
	NjGfZLLPIDRamcWT7Atty/5uPLpfCeXdXk5yGa4GFgi0WPDZvMCbClR7M9dFAvu68Ci1cfz3zqr2b
	gaaVd5TDa5dY0Hp4VjlLCBmKimFTEmYnN+4eYqrEEekq+QyMNUha4ty18VNa6T86xwcCYFNO+nu7J
	hNc3qFC+bP02+xTbszcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obL5X-00FLHe-Py; Thu, 22 Sep 2022 12:13:55 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obL5V-00FLFY-EM
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 12:13:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=aTzVrJjI9ejwxcCxS5DZxSJ5B/KvAH9Rb1NyhHF4XHw=; b=Qo1OQZ+qaf5FIk7J9JlqKwMbdD
	kIhHM6T+9AZS4bt691O5YIZmH73WgmvPKnK9UWC5qmpqXsfyaG3ORCx0ylETx/YG1D5qltrd1cbvM
	UKeZ3I9Kd5qFBZleBrxV7iEusMoWrnFxBnx7u1ChBCzG4R1221GG9qwW25XjfXflTlOs=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1obL5E-00HWsr-7a; Thu, 22 Sep 2022 14:13:36 +0200
Date: Thu, 22 Sep 2022 14:13:36 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, kishon@ti.com,
	vkoul@kernel.org, davem@davemloft.net, edumazet@google.com,
	kuba@kernel.org, pabeni@redhat.com, richardcochran@gmail.com,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	geert+renesas@glider.be, linux-phy@lists.infradead.org,
	netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v2 4/8] dt-bindings: net: renesas: Document Renesas
 Ethernet Switch
Message-ID: <YyxRcMdJ/AG0QtGB@lunn.ch>
References: <20220921084745.3355107-1-yoshihiro.shimoda.uh@renesas.com>
 <20220921084745.3355107-5-yoshihiro.shimoda.uh@renesas.com>
 <1aebd827-3ff4-8d13-ca85-acf4d3a82592@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1aebd827-3ff4-8d13-ca85-acf4d3a82592@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_051353_495850_F6A4C586 
X-CRM114-Status: GOOD (  11.43  )
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

On Thu, Sep 22, 2022 at 09:37:28AM +0200, Krzysztof Kozlowski wrote:
> On 21/09/2022 10:47, Yoshihiro Shimoda wrote:
> > Document Renesas Etherent Switch for R-Car S4-8 (r8a779f0).
> > 
> > Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> > ---
> >  .../bindings/net/renesas,etherswitch.yaml     | 286 ++++++++++++++++++
> >  1 file changed, 286 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/net/renesas,etherswitch.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/net/renesas,etherswitch.yaml b/Documentation/devicetree/bindings/net/renesas,etherswitch.yaml
> > new file mode 100644
> > index 000000000000..988d14f5c54e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/net/renesas,etherswitch.yaml
> 
> Isn't dsa directory for this?

This is not a DSA driver, but a pure switchdev driver. It is similar
to prestera, lan966x, sparx5, which put there binding in net.

   Andrew

   

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
