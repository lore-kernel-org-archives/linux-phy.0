Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85AFBCD3430
	for <linux-phy@archiver.kernel.org>; Tue,  5 May 2026 11:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gVjUKVJ3K3RdIwjaq5pE2nAdxKxxm61Suif+vKBZOg0=; b=i17RD75U6ZAM5/
	1eipPVS2wIykhXxoAiPGvfcxRKpibRa91ZenDrvqGZXbAkWvcxli1TQmI99IPBJ0IRRsImX8KHEAY
	CgSsv80Ws49NeeubHu6YbCZGMtQILnKZ92GHhSCACblFaMxzg9ZVtaOuo0d12fQNlXk7F9UCb0nn5
	/5odP30gR/2uEXtbTZJGV5HgkBe1r7IJ7C2G907kOOEngPK942mmBa5Rm4lK0onp/Mpz+NlFhGhUm
	jHvBRf7TWhcZnsfwrNJslwcQfJOqQy8BbXxqHPzOTpcmOO+A4/5GZfUpAQJsrkYtynXCCHCgwIC/X
	ropoL87MgpT2TUTPI/OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKE5k-0000000G4ZQ-0ekF;
	Tue, 05 May 2026 11:37:32 +0000
Received: from mail-wm1-f53.google.com ([209.85.128.53])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKE5h-0000000G4XX-1BWT
	for linux-phy@lists.infradead.org;
	Tue, 05 May 2026 11:37:30 +0000
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-488a8f97f6bso8787315e9.2
        for <linux-phy@lists.infradead.org>; Tue, 05 May 2026 04:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777981047; x=1778585847; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZdRzt5sMT7kBUftNf4L682EBI7TwKGESedWlm0GTlT0=;
        b=JxV6UFpRDGe5s9YRf1wbH72dsL6a0c9ySj2iFd1FdzFDJ1w9YmOAxW7TFrf7KEcd8a
         x0TtOki/zPV7RwTSXX8yHNdMlHp75M5h4Ghj98nqaH34Eh7Z0OdtIbfzezLkV7rYjREy
         UeVSx9pD6tuEAVFKGF5iYviAGpd+idWDwoCTPtsiCOSRntbiNdDFP4gV/0XYLFFJzTSO
         wq9giihbgjW0QmjZzy2G8o7mZz+dMLFV1KS5wQek3gcxw1psB38iEnLoPJQ2PfRDHvl2
         z4Ejif+gxtulbloK5x4mKuxdjWdWFmwUvP+lKQnV+cHbGlcW9o/rdn63lNk8ANqv2n7x
         dxHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777981047; x=1778585847;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZdRzt5sMT7kBUftNf4L682EBI7TwKGESedWlm0GTlT0=;
        b=D/jOLM+KVC0FaigQp92iQ9F3vC3gp0DJX8XIs/oUy3uucqSkMdcdTDXcwvfEo/4uGz
         H2awN/dIjpg7wJzWnOkEzry7OG+6x0QUoiv6O7Lulxi4kN/vgAAzOrYgl6kHUR3jB2XV
         VESNCmoH4l8TeiaYDe/NflTxAp3Un0b846GHG+uwh0fD0kmnEgZyyL13P3gpGFCcnRCE
         ZBZOy2YUnXk5jbTD1U//o+SCNbMzWVPxTVvDNTYMcZkePdVJyWRoZ1FND4ZFmCUHPasp
         Y0q1gTGM9VYoiR8jzgDaPaR89XMZY5vgJ00g4Jnup+cLTs8ftG/5dlySq8Mkp8wrlPTH
         AEbA==
X-Forwarded-Encrypted: i=1; AFNElJ+0eJwiKDTnmN9zahAGJu0uOR1XSmZzeSDh/dB1qguVAfLXTTkLzV9873l9um0Bx7+1xiIjeMw1ccQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzO4z7O7wHnPCar1V+d8XObT2IWvbYzA5ny4gWl9K61jB4KSawe
	qczZfjWurcHa8+lK4SV40s0+wspy8hewOXpMYIWEj4v8blvzSp0syvYC
X-Gm-Gg: AeBDietKwdvB4odm460OLf5CdiPLx0n/o/37Vzd6GJpn95/MF2tugMY3+FFFwesjFn4
	iX1WrIxK25PLlonxOEpRAOLfSJrsbL2Atl1QhvmM2UDiHQ5RMBGsFojL5RS5HW8ITrUNRECASuo
	sG5SoQOE4fqhUOXionI6l1rZ97GzTpeKiIsGO7D8NQKjINDqGLHT6luUQyRnSXw4iobA0oqJ43a
	9cYZoy5QrxcfxsgDOxuwIOfBvDfESzMHR+jKAbZ64JmUHtgdSeYExHuaMLAAcrpkGeqAYz0RKBg
	U5dggL+ugbomEUihA/V7CmqL8HU33iQxUTVYp+//dRBjcZt2PEgFVbD7UvFn+6U57W5td40dd64
	NMu4BMBdu5bRxDyoLRQ5UHvUhH8WSe4uAg7NLKntXUgzHnmBNysoBu5lEgjuFzm/mf8YdzCUxfE
	IMCbS5+xgNyGLH5PZ8VLWkHTG/Tw==
X-Received: by 2002:a05:600c:444c:b0:489:e696:127d with SMTP id 5b1f17b1804b1-48a9866a67dmr112715415e9.5.1777981044664;
        Tue, 05 May 2026 04:37:24 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d403:cf00:9b58:9830:baf1:5f76])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48d181efbdfsm15094235e9.25.2026.05.05.04.37.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2026 04:37:24 -0700 (PDT)
Date: Tue, 5 May 2026 14:37:21 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Rustam Adilov <adilov@disroot.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/6] phy: realtek: usb2: support for RTL9607C USB2 PHY
Message-ID: <20260505113721.ur4qd4udu7jas473@skbuf>
References: <20260420191941.81834-1-adilov@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260420191941.81834-1-adilov@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_043729_324998_C249126F 
X-CRM114-Status: GOOD (  17.47  )
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

On Tue, Apr 21, 2026 at 12:19:35AM +0500, Rustam Adilov wrote:
> This patch series for Realtek USB2 PHY driver adds support for RTL9607C
> USB2 PHY.
> 
> RTL9607C is a big endian MIPS CPU which is quite far from RTD series SoCs
> supported by realtek usb2 phy driver, but the phy initilization is found
> to be very indentical in most areas.
> 
> Most of the code was based on the Realtek's usb driver from the GPL tarball
> in [1] and adjusted to fit into the realtek usb2 phy driver code format.
> 
> The patch series was split into smaller patches that add/change something
> in the driver that are not exactly related to RTL9607C and that also
> helps for easier review. That also means, patch 5 depends on all the prior
> patches that come before it.
> 
> USB2 PHY on RTL9607C is primarly used for its internal OHCI/EHCI controllers.
> 
> [1] - https://github.com/jameywine/GPL-for-GP3000/blob/main/linux-5.10.x/arch/mips/rtl9607c/usb.c
> 
> ---

Could you go through Patchwork and reply inline to the issues found,
stating whether you are or are not going to resolve them?
https://patchwork.kernel.org/project/linux-phy/list/?series=1083475

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
