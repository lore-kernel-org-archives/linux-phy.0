Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 792A5D44C5B
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jan 2026 14:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1sBHkOxl6Aj06zFUlQzp+IQ9PGD9Jl5H8fLAA6pINlw=; b=vl72W/uWRkyiOU
	sCAHIpjsyRY1dhllqjzbqDeH+nBzKw2JlfYwws/V+v+z2r6l/xgiNio5Di3J/WpE6XJXpe6T9HsHO
	ieGGXDBSCuxsuLoUDCeqR9M6ovb2bFImGEbNiYH4kfw0GzdW2Sfh830M6UgnWkMR1sAXKtFNvti3U
	XBX0m4uIll0HWfkfv6MPdqTsSmDmOCP3nlHuCD9fXyP3SHuEmAW58vg3PtRvQKa3fvvEax914/2w6
	wAQKOh2L5R7qvG2cwu1+RhUWDIoup4+IP4gmzrf8N5C7niBh/1hYP0fvKNq4xi97GG6sPI8Q5KROK
	TX6+dlN+7aSGoxkn2FYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgOe1-0000000CWjA-0Wk9;
	Thu, 15 Jan 2026 14:48:17 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgOdx-0000000CWi2-3pdZ;
	Thu, 15 Jan 2026 14:48:15 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 9E39E1A2880;
	Thu, 15 Jan 2026 14:48:08 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 6D548606B6;
	Thu, 15 Jan 2026 14:48:08 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 9C2FD10B6863F;
	Thu, 15 Jan 2026 15:47:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1768488487; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=Tnh3H0qYNwGp6qVVwkc9HsChCokbifV7Nfx7Yhfo5TQ=;
	b=Np8K8KxeLsilDkOmYJmbd3SN54jVQF9kNgt6Bk96yKC4Gf1NvNy5w/X6XQMGeck9u1WnvU
	W2suCBiU3uiLMeTbsC3XAtdTCDLx+jGMMsSWjunuD2aWwuBY7HYdDRPmUfNqAnge+wZ0Zh
	SD5z1V0je8wYUujIqZKId3/WgJOGsC1ABAOOBlAWJnhl5FpsdpAtH4cgnHDXbFH8Z3UtzV
	DSkjgu6cpQfnIYsB5W/sNv5Ya50EM/01uR6YuxtV1YtU3KtowjOZRZe/xSy8eJWFfRdk1v
	SlfT+FoYuDRD9+S4A6CwaKc6fO7GvRqFtjCa8FMHrKpexYCw9KB4//5MolcYvQ==
Message-ID: <6a4dd81e-fe37-4e41-82af-18a9ac812137@bootlin.com>
Date: Thu, 15 Jan 2026 15:47:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 04/14] net: stmmac: wrap phylink's rx_clk_stop
 functions
To: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>
References: <aWfWDsCoBc3YRKKo@shell.armlinux.org.uk>
 <E1vg4vx-00000003SFz-1ldy@rmk-PC.armlinux.org.uk>
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Language: en-US
In-Reply-To: <E1vg4vx-00000003SFz-1ldy@rmk-PC.armlinux.org.uk>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_064814_087835_A8C532EC 
X-CRM114-Status: UNSURE (   6.88  )
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

Hi Russell,

On 14/01/2026 18:45, Russell King (Oracle) wrote:
> With generic SerDes support, stmmac will need to do more work to ensure
> that clk_rx_i is running in all configurations. Rather than turn each
> site that calls phylink_rx_clk_stop_xxx() into a list of functions,
> move these to their own pair of functions so that they can be
> augmented at a single location.
> 
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>

Reviewed-by: Maxime Chevallier <maxime.chevallier@bootlin.com>

Maxime


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
