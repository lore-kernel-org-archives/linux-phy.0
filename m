Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29EAAC83F1D
	for <linux-phy@archiver.kernel.org>; Fri, 11 Jul 2025 01:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iKuc7xJhcAWncaa5nztFCIWHKBVJFxW0ylyw0xaovEw=; b=qRZqDKZa/q8/DZ
	A1l+pKrihWaxVIkxe1VBIn4Y4yWFscOhrE7lBE3HNnSn7Vtb5aWwtnYtc4RWvwZ5jp1NRoPOF1W5z
	pfUnkq1WipLozZmcuh4Fiugxrq6RwCC5Lod6xrUZb9SvD6xMhki6nELRRYPxJk1cg1PVi9ROU/v6j
	BMXIS7mUFSniloitMZBgFNcoPiVIWRlRnCGCV8C5JkroofmOTgfmVZUg6cB1R1VGhnOcIf2vjGcaz
	xlY2pMtX71DSaeH8bBx3itFU425t9L5twzWsLWa5Obajwuw4HJP6cTPpALkItFa0TpHs0uK55lbjD
	AN39/mQBjLoV8/bvaT/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua2QL-0000000DQPd-2dyz;
	Fri, 11 Jul 2025 01:19:37 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZzdW-0000000D9DL-24js
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 22:21:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A69F4A548EF;
	Thu, 10 Jul 2025 22:21:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 265EEC4CEE3;
	Thu, 10 Jul 2025 22:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752186061;
	bh=7vOsASejqUANov9z3gdTadG0WWN2JSm8R2ZdKlBY8fc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=io1hn25Pq7wRvQZv0SS7B3dW0ZKk3PdBbljT/aCgMnf0IPwwqtKIW63Ap8mDJjKGP
	 RQkqa69yhifUXBfwfT9HkGC+jKe+g982qqKvbc4sS/0xbUFkDoJzAGOyO/IbZ9eD+F
	 fzpbZNkj0+NNH8ykOShWxaR6IuYqoN00me4wTEjM2g6JMpj/wKmCMe53XrSQiT6qyz
	 CoGjNwWME7IYQn2lOwdR1C6gAuKCe3By13RRUp59riT80jt2lFnebRxNY0vyYYoOCV
	 DAWBcKOAs3JLY3HIOhPKsdrQJUTnqDZsC6xaYlgkBNZ1nI92/ZIYFsZcH4BLDKmfdx
	 cGn4ijCFf78Fg==
Date: Thu, 10 Jul 2025 17:21:00 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Conor Dooley <conor+dt@kernel.org>, phone-devel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v2 1/4] dt-bindings: phy: qcom,snps-eusb2-repeater:
 Document qcom,tune-res-fsdif
Message-ID: <175218605943.4171086.4708337107584931560.robh@kernel.org>
References: <20250709-sm7635-eusb-repeater-v2-0-b6eff075c097@fairphone.com>
 <20250709-sm7635-eusb-repeater-v2-1-b6eff075c097@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250709-sm7635-eusb-repeater-v2-1-b6eff075c097@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_152102_596292_B56F1887 
X-CRM114-Status: GOOD (  10.41  )
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


On Wed, 09 Jul 2025 16:55:14 +0200, Luca Weiss wrote:
> Document the FS Differential TX Output Resistance Tuning value found on
> the eUSB2 repeater on Qualcomm PMICs. The tuning values have special
> meanings, being different offsets of the resistance to the default value
> in Ohms but the exact meaning is not relevant here, as the correct
> tuning is determined by hardware engineers to make sure the electrical
> properties are as expected.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
