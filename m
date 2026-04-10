Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81215E99071
	for <linux-phy@archiver.kernel.org>; Fri, 10 Apr 2026 10:14:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1IaFPY5rkDUd5d1uO1ookkay5aiRvyWcyTIyt1O9X20=; b=UA6V2F8o+aLFZk
	ynG50fPFrWu1YLz47GdAYD/M0yY55ECoe0r/U9yDvW2yoN4jj89ypqLikq/pUiAvczHusdZh9g/ZJ
	9OYk/em7eSp05hVucj0ULnGZdCPgD4HgTHOhy95vxAR/nJi0tkv6wa0yRF6HqO5QxcNqKkh0VfKf/
	UQq6hM1AbSvtvdAFZuhz1gnTdx5gpUeEfKM12XC6xmjGfGsJm0fnY9w2kuoCwbnfBdrm054qQ+ZV4
	hUvwVuKyX+Ct8JCznhMTDzRgnULBHW3LqMFQmGzqA7WvkiGHtaLpPDBX70hO6ck1mBxJCQeOoM5nN
	TBogaxqjp7aGhxwMcZrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB8sR-0000000BzG2-0W21;
	Fri, 10 Apr 2026 10:14:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB8sQ-0000000BzFa-1CFx
	for linux-phy@bombadil.infradead.org;
	Fri, 10 Apr 2026 10:14:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=W5RYN0UyVvOkFLtoat6yn8Ebmg4ue3HOfyA78AHhVRU=; b=GiiVCPKC3OH+pwx/iZgLB8vzEq
	EOZiLmJzBpGBSIuLylJpLmPwgEZHX51t1ZEG6YGq4sTUHkq/3IccFcXt//G0gOnUlH+pKiAhq3+JM
	IdaJ9SNIAZOJi2P6xmgbnLEx5JvMW8ndTtX+xdpGVmBE2VQYjHVU7OwM05JyJQ4yV3XJ8C0w/P451
	wWn87hZhZDl2LviC++YA1Zd/l0VDqRZ85PvURDsDrwiF2IFuPFCTvLR/98Z3slw3iP6N2YA1+Z50E
	hhffMaarstrR17DK4LkTlAMcntlq+8PFPQXl6Tf7wUhkcMl/VrMa+L0YKp72356eC0qsprR4MpvmI
	NkyaPk+Q==;
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB8sN-0000000DGqk-2pXw
	for linux-phy@lists.infradead.org;
	Fri, 10 Apr 2026 10:14:13 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-43d04fc3bf2so1091005f8f.3
        for <linux-phy@lists.infradead.org>; Fri, 10 Apr 2026 03:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775816050; x=1776420850; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W5RYN0UyVvOkFLtoat6yn8Ebmg4ue3HOfyA78AHhVRU=;
        b=NMNcxwnrQwoqtsLBiJYUrh5dZpr/kUgG0HroteuTiSpGn9SEfFexvbAyEwCj+tqBAt
         OTaxvIjJ5e/OgA0vn274zNmlNY1fcLLnkQX+qTxRWiu46s4TWnKdaDiohRaZ7KYcGTSc
         Iqkx/Ra/DWyBlZWBIPulVq7fF7NAUHVtSUlogMQKgV1wbsH3h2Bel2+TWDkh48epONqC
         oFbAR9VozF+NlyyyVooCe+4o3Pz58av8UBhaA+Jhb6qD9oVqqYv6HbAWbe+aT05HOVXH
         8HCaFhaZY46Jy/KrYikFfkJsrsmXWwk1aYm6XlfjDDAD7dLqUWgkWhcvcVGydNMY2CFc
         rCTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775816050; x=1776420850;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W5RYN0UyVvOkFLtoat6yn8Ebmg4ue3HOfyA78AHhVRU=;
        b=fZV9LHAu5IlwGisTzsfA4Sm1iV1QCAX1imSJas05Qi3I5afrFFDtCS/IEU0kmVyXLx
         YebqA/7C9buv10tB2aeLQQhz5GfhASuoL++zAEtswlo6bzACwnOoMb25jlrlGASbqoWF
         XsG616bCGkydlZP9BA3lxqkhw2Lyupd4oJenmhr3gOH2nzDbM/RHBdKR769X2VvmEXVD
         /PrEpN7sz3fPDiIB4YjI8VkQF+myS3rxLzaeOlZ3D6SOpoAvKI4jIQou7Mhk+4iQz8Zn
         yR9Qf7zr4f7Ry/j0DKrtp8jirFgjCgk3Ct6I9qmmichpTRO9cZ2qfBnzHPCj7IhoXvV9
         +zyA==
X-Gm-Message-State: AOJu0Yybo7zc6oVPKCg6iACwHyT1swjemyW/hoPL8hjI+nbKPrYETnkg
	kPd+s4EQGj49ssCAz4qySrPaMnyUPiKq2mwRrlI03UXzKoeEHpJ4qfeYcx0sEm7X
X-Gm-Gg: AeBDieuL4kCBbnqvnybLnBxBqCaDSM221+Z1BgFYcfNq6D8vwO26gek2feTsnz5i1oR
	G9L/4sdx5lSADPb5YQVu0Yw91dnhEMoVjicObMX6R4dVsDNYj8uhMPnknTMdRWkmJXDcFW8IVw4
	N8sQ/orSdWa4g2YI8cmIYP4hMgO8+0VbFfCuSO0JWXncSu12pwNzzH1bN1lFa2pNIixmg+8Gtbw
	PQuwZ6QVsEnpf4YToCTDpptwScsoVEDI2sufRnWc5FhbvmuWbu2BjhG74uctoZPmtDzq+UgZl5R
	4s+PAEcOq8dGBhdkIQYhqUTP36Rsuw59gMaJPQsZ6w3nq2bFtUC1mi0cgMl+MMj9l0Iv7iNzQLc
	+nPfutS/cnmQ8EQ5P/x60BmgmlNAvbrlcS1AuPNHSAfXlVQ3Unlfxg96kbHznYaUCoaaSPh0mSZ
	b/LILlB8YjHnv78bBh7VY=
X-Received: by 2002:a5d:5d83:0:b0:43d:300b:2285 with SMTP id ffacd0b85a97d-43d642702afmr3464266f8f.11.1775816049922;
        Fri, 10 Apr 2026 03:14:09 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43d63e5c98fsm6761482f8f.35.2026.04.10.03.14.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Apr 2026 03:14:09 -0700 (PDT)
Date: Fri, 10 Apr 2026 13:14:06 +0300
From: Dan Carpenter <error27@gmail.com>
To: Yulin Lu <luyulin@eswincomputing.com>
Cc: linux-phy@lists.infradead.org
Subject: [bug report] phy: eswin: Create eswin directory and add EIC7700 SATA
 PHY driver
Message-ID: <adjNbuWoc1B-3Ok1@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260410_111411_732942_47CEEAA5 
X-CRM114-Status: UNSURE (   6.77  )
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

Hello Yulin Lu,

Commit 67ee9ccaa34a ("phy: eswin: Create eswin directory and add
EIC7700 SATA PHY driver") from Feb 5, 2026 (linux-next), leads to the
following Smatch static checker warning:

	drivers/phy/eswin/phy-eic7700-sata.c:219 eic7700_sata_phy_probe()
	warn: 'regs' is not an error pointer

drivers/phy/eswin/phy-eic7700-sata.c
    194 static int eic7700_sata_phy_probe(struct platform_device *pdev)
    195 {
    196         struct eic7700_sata_phy *sata_phy;
    197         struct phy_provider *phy_provider;
    198         struct device *dev = &pdev->dev;
    199         struct device_node *np = dev->of_node;
    200         struct resource *res;
    201         void __iomem *regs;
    202 
    203         sata_phy = devm_kzalloc(dev, sizeof(*sata_phy), GFP_KERNEL);
    204         if (!sata_phy)
    205                 return -ENOMEM;
    206 
    207         /*
    208          * Map the I/O resource with platform_get_resource and devm_ioremap
    209          * instead of the devm_platform_ioremap_resource API, because the
    210          * address region of the SATA-PHY falls into the region of the HSP
    211          * clock & reset that has already been obtained by the HSP
    212          * clock-and-reset driver.
    213          */
    214         res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
    215         if (!res)
    216                 return -ENOENT;
    217 
    218         regs = devm_ioremap(dev, res->start, resource_size(res));
--> 219         if (IS_ERR(regs))
    220                 return PTR_ERR(regs);

if (!regs)
	return -ENOMEM;

    221 
    222         sata_phy->regmap = devm_regmap_init_mmio

This email is a free service from the Smatch-CI project [smatch.sf.net].

regards,
dan carpenter

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
