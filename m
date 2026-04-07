Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B54A2FF5134
	for <linux-phy@archiver.kernel.org>; Tue,  7 Apr 2026 18:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NZz70umPZHRRnEw5Gohl5e2sG9eEogUR5V1TgyDNI0o=; b=xH8T840GnbY2po
	DzdtdFI0lLTKpw28XMxy9xrGIVqcs9QSbHkMGbxEYszeImg/x7i1ZSB+gcnWJbbtKmv9D/arW9+ow
	WvY3paz4S+FKgs0MDDXge2mPXbzLFH2/bytegx5WZVLK7Zj0wHsMFEkFCVDkU6gPOEKaJxsZcSWdH
	J+vR5eZXWAm+W7KmZsl0Kq8ESTrVVmjpjEcsyQCvA0xExdAsPBHJaJNdSgVjpEmu9TX9N/drxi2FD
	1okWbnDyDOtbIUIin6l39xjNUXrMBucEx9VYD86ldX8mSEZRRDive5PPHpfHSIM4KkkpOKqAn+vtr
	EBKxqhYVC5sMl6fIw7tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wABW5-000000079Gn-3ZiI;
	Tue, 07 Apr 2026 18:51:13 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wABW3-000000079GQ-08ZQ
	for linux-phy@lists.infradead.org;
	Tue, 07 Apr 2026 18:51:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E21A344158;
	Tue,  7 Apr 2026 18:51:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C193C116C6;
	Tue,  7 Apr 2026 18:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775587868;
	bh=Sik0SoaK1EWuxMxd1gqVuvsRwwfkEq91FdOyxh4afXk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GxN5Ad0KC8AhF3LBbTi/c/9i90P89XA1gl1n2g/ztJgaGfHSupvKrmVBkU9BFO7qS
	 j/Xr89ClhNcRzgPQovfmazx5du0Nlkfq7Y6wwut5mqiUGOuC0d84USk0DXyCUSLP+1
	 7/7PNyOvOeNzRlKKcYEIy5IVWAZcgBH8GoED/5O78sn0DWk1wJ6i9mmtx5BUcKS6QN
	 3swdiQgVQc4O0AkvPQ1oJulcrrIQe/VwjkXoJDi8gAcNnY26jAhTpmJFPZ5EbVde1b
	 c1I+442FdwvawV3BWmksvMOOrUFEPdYd7a79HJJWl/I31UZ+VRJ2mmXtH9GzCAXRYw
	 p24KCe78e1+Yw==
Date: Tue, 7 Apr 2026 13:51:06 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Abel Vesa <abelvesa@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: qcom,snps-eusb2: Document the Eliza
 Synopsys eUSB2 PHY
Message-ID: <177558786599.3383360.12409209336337472193.robh@kernel.org>
References: <20260327-eliza-bindings-phy-eusb2-v1-1-1f8a9ad6a033@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260327-eliza-bindings-phy-eusb2-v1-1-1f8a9ad6a033@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260407_115111_093620_3BF780C2 
X-CRM114-Status: GOOD (  10.03  )
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


On Fri, 27 Mar 2026 16:14:27 +0200, Abel Vesa wrote:
> The Synopsys eUSB2 PHY found on the Eliza SoC is fully compatible with the
> one found the SM8550.
> 
> So document it by adding the compatible to the list that has the SM8550
> one as fallback.
> 
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
