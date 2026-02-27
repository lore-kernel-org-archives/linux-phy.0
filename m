Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 269FAFEFB4F
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 13:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TgQqqEFtE/W9CIdDHN3OB5hM/AE7xMjkisPfc9wBrAA=; b=VzlmGvodCFJNd1
	BKew0gaCbNFTQM7242Hu/Xw7IDwOO5WBMRgyA9g09yun1YTb+juYKhvSPxdPdyxHzJ9hHigOWbu6n
	FlRh1q734ts5riw+d6swFe5xlaAApsCQpxGNs0FdnriQwtHqaxqTm7sTqBSxKHO/6gHiL7J3R9rxn
	CxoP8MPnupYpTVy5JfoNLXtor1O42ct3agQ/KS81RHJIMvSTNeI0LPKg2qquhym83NS1/I0DWFJ1N
	/MT4AFaAGwizYE5cJYqRFDzn8Znq017Ox3EU00/8WUhXCi77NB2L4wIo4Nv0jHkPW3JflqmuxrMIB
	Vdw7TaGUwOJAq9gYyjtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvy9v-00000008Oa4-3gSm;
	Fri, 27 Feb 2026 13:45:35 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvy9t-00000008OZP-1mjI;
	Fri, 27 Feb 2026 13:45:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 117FF417C2;
	Fri, 27 Feb 2026 13:45:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DCC6C19423;
	Fri, 27 Feb 2026 13:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772199932;
	bh=SKsV8ym5l/huOSjTYD/pCQkRyet275DwzWDj6sr4VYo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Fjt4tYvDR3Yx46omuqjFG/bP3S/ZkDcwA2EJwv61oGtfT0Bfc7PBUxj8yF++zs6aw
	 GiCbJvrwSh4SEWXhkxmJenmX0SkCBEjBznUN/4+Rq/Yu7NhDPM9kjNbwldG5P4dvNO
	 WP3mzZ58bIN5Qjq9cV69tV7BvWokRIMD9p0QAKdqpidIjPyt+KsE+lFTYsTgxZDAoK
	 WkXOidUZrr6/uaaSU201eEUspAtbGCcT27rlVfOcK7vNSjMJrOOFK4xd8gyeLLCP3B
	 M0/g9WSR6Wf03IKI9ohI0JZc0W26dFpA5qtldoljrQZVH2cJI5xKLaHFEWFsMTQQtb
	 4viCazY7YBPnQ==
Date: Fri, 27 Feb 2026 19:15:29 +0530
From: Vinod Koul <vkoul@kernel.org>
To: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>
Subject: Re: [PATCH net-next 6/8] phy: qcom-sgmii-eth: remove
 qcom_dwmac_sgmii_phy_interface()
Message-ID: <aaGf-RN9Hho8qEdx@vaman>
References: <aZ66OT9scKipRRu2@shell.armlinux.org.uk>
 <E1vvCc9-0000000ArLG-0if1@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1vvCc9-0000000ArLG-0if1@rmk-PC.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_054533_482848_11067071 
X-CRM114-Status: UNSURE (   5.99  )
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

On 25-02-26, 10:59, Russell King (Oracle) wrote:
> Now that qcom_dwmac_sgmii_phy_interface() only serves to validate the
> passed interface mode, combine it with qcom_dwmac_sgmii_phy_validate(),
> and use qcom_dwmac_sgmii_phy_validate() to validate the mode in
> qcom_dwmac_sgmii_phy_set_mode().
> 
> Tested-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
