Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10CF5C43334
	for <linux-phy@archiver.kernel.org>; Fri,  8 Jul 2022 21:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0K3WLJN9NM8QZeOVn3qaez5ZvVDJUcNHQ65fMyTN1o8=; b=KyKlDNxvlJrhNK
	y8D7vlayRq2L5/YueP1+FNQnJMJ+nBPjlhCNDaMpr3OmHOCJSMjdei4u+fHUWromOEu4nSVCcG58R
	asCSHkxaEHAEdwqOKRrfl6IIjoJc+IgdpJIbeB+Y63EPjQxlYYm1cwZr77Cnh06RcWgh7o0Xp7P/8
	KeaemgSXJyE7SKFgbh1VcNhqs0unyfQDT5Naaddrdw/KsAXYM31yP/aGGR1RID4EidZnGAhe6j8RT
	EFAknkJJl8cq2/G10KuN9iEAVjb7WAn7ja20s7eQ/SCncqSuiw06daectsqHq5eR30m0v8hpoHyvN
	pQf+YekTPZZVoWZJeamA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9vEz-005xVc-B4; Fri, 08 Jul 2022 21:10:21 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9vEh-005xCh-NB; Fri, 08 Jul 2022 21:10:04 +0000
Received: by mail-pj1-x1035.google.com with SMTP id o5-20020a17090a3d4500b001ef76490983so2807110pjf.2;
        Fri, 08 Jul 2022 14:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RMmp67crMhq7PWWgYC+oDhvsTdKYOIxkTFPZEODBIXc=;
        b=V6+rubc2RgfxmFafvlgEYRMyNK7pQjM9CyUyqwmXU4mu2VolWpJ+8H0H6f984MwZq0
         xp+GBCAwIXA2/Wt4+K1y0VlfnggWGPM80T4eCbsq1powQ7s/SELrMKKokoyZ214ZqfH9
         IvcEM4R6qW47/P1u53kn9zz1VLfbnNPZICG4uErOD7bI+wbo5dR2pCCC5bHcQl9qfEeQ
         eSXD4ClctFcsaEvuxzPg3MTUHh5fTj1hQBcjmKMtXvkcD+0vhTtmEVlrjKT+oWzTf1bm
         4vyjNe4Xpk9ErxOY1jBxqOBHuRAdp8LQpd0ZYLjwmxApr+XlTYef8Hcen8VlsiIlEfhp
         F14w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RMmp67crMhq7PWWgYC+oDhvsTdKYOIxkTFPZEODBIXc=;
        b=voMGHinibuIPWwmjXuKw3tG5GiUpAqJIz1cDA1I4oqmASsea7rAdj864T9l0KBh1UC
         GAcdRAsWojzMWVk7BrBH5Vczcm/1Z3I61g761rTsLR8UjzfkhNJ1bKahiehcBZ1DQZF/
         DfsHoGShrSVy+XSq+3LWZlmtZCrprKninhm97uKj0HMyphHhkLcppkMaUyc114ORolJu
         +wO1ZtJ9gB1AaTJwbiepcCt5uxjEpYTo+6/mlUf7/lFCvuGJAgF3nFK1zei6AgVoiaNV
         4TAn6zm6fzaRMOTakN8IwCuOYrJgeZCzZm58ivdOCRoPIOMECHs00e8aNS0/Z1aUVVi+
         MbWg==
X-Gm-Message-State: AJIora/nXDjGhFx1VwRmeksxzTc32R5ptcY5Y39CJtiJPUXSl/JB5wDQ
	Y0SPXOu8ZmCRl0V8jOE7tKw=
X-Google-Smtp-Source: AGRyM1uxeKx7gaOfdIL+u6yF6SPE91AaQ2/VL4LqgQj+efcRTMx0j7H5cxNrg67yxye8CdwlHBZu0w==
X-Received: by 2002:a17:90b:38c5:b0:1ef:a7ad:ebb9 with SMTP id nn5-20020a17090b38c500b001efa7adebb9mr2086742pjb.110.1657314603373;
        Fri, 08 Jul 2022 14:10:03 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id l9-20020a170902f68900b0016a111c83cdsm1848957plg.119.2022.07.08.14.10.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jul 2022 14:10:02 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com,
	William Zhang <william.zhang@broadcom.com>,
	Linux ARM List <linux-arm-kernel@lists.infradead.org>
Cc: anand.gore@broadcom.com,
	dan.beygelman@broadcom.com,
	kursad.oney@broadcom.com,
	joel.peshkin@broadcom.com,
	Vinod Koul <vkoul@kernel.org>,
	Al Cooper <alcooperx@gmail.com>,
	Cai Huoqing <cai.huoqing@linux.dev>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	=?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [RESEND PATCH 6/8] phy: brcm-sata: bcmbca: Replace ARCH_BCM_63XX with ARCH_BCMBCA
Date: Fri,  8 Jul 2022 14:10:00 -0700
Message-Id: <20220708211000.2661166-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220707065800.261269-6-william.zhang@broadcom.com>
References: <20220707065800.261269-1-william.zhang@broadcom.com> <20220707065800.261269-6-william.zhang@broadcom.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_141003_794539_52F198A1 
X-CRM114-Status: UNSURE (   6.96  )
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

On Wed,  6 Jul 2022 23:57:57 -0700, William Zhang <william.zhang@broadcom.com> wrote:
> Prepare for the BCM63138 ARCH_BCM_63XX migration to ARCH_BCMBCA. Make
> PHY_BRCM_SATA depending on ARCH_BCMBCA.
> 
> Signed-off-by: William Zhang <william.zhang@broadcom.com>
> Acked-by: Vinod Koul <vkoul@kernel.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/drivers/next, thanks!
--
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
