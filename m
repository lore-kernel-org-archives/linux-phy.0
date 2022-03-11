Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E11AC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 11 Mar 2022 01:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xob8tD00aewEGsoajgH+Wv2NGxZf8o1CLtqAxD5+fNs=; b=no/T4jVDkQeWrB
	1wL/XNqr7zPkAxvIfLFS9EL1CpVsQhtsek2aScGZ8laqGRopNQpSEGz7VPq9/euxxal26Ebl/TIAu
	EFmffz5BcghtzewMiYvO5rGFFEjvahuq6TZbZASXqJgzM2y4nBUYrSVydWXw83Bjcjeygl2So3fBy
	t6OsI1eQJTHy2KPpGuacd2Fw8N1QZ/BVX0I6hHikrbt9/ukM05w9lXwKIiHv6eXLuE2zbBH6TyvC3
	l7SL1lTzLcV/O5bOi4GeN27DVih+M7nUGJgzasQEW65fbx22vsTXyP3YjLpkApWWL73qHGyeFPaxt
	2CcAUAXWiBcXoJjmwr5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSUUn-00EXjv-LS; Fri, 11 Mar 2022 01:55:09 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSUUk-00EXiL-DH
 for linux-phy@lists.infradead.org; Fri, 11 Mar 2022 01:55:08 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20220311015502epoutp02d35b445a5fd101787f5c7a666cb05a39~bMML-j7pl3161931619epoutp02_
 for <linux-phy@lists.infradead.org>; Fri, 11 Mar 2022 01:55:02 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20220311015502epoutp02d35b445a5fd101787f5c7a666cb05a39~bMML-j7pl3161931619epoutp02_
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1646963702;
 bh=6GflsjQ7Mm9rWX70uL0WTVJxcMEIPkbVymAImoVej2k=;
 h=From:To:In-Reply-To:Subject:Date:References:From;
 b=R30spkq7a66hl3bmCoOSF8VZ05H0Q7nLJt8iz1VFN1EnniLs9ohDg6n49LwxgxTx2
 g2fqedLF93vZV9IyGJftwsqcRwLga0eOmxIUt+21jViDKxCj3jl+Jl++98m4dGQaM7
 4VjwY+mGWkYx/zeZJFjJpOEYSVqWqzJzD25WiNKk=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20220311015502epcas5p231e246c27d8107bff45663d5f7832314~bMMLcQaKv2663926639epcas5p2O;
 Fri, 11 Mar 2022 01:55:02 +0000 (GMT)
Received: from epsmges5p1new.samsung.com (unknown [182.195.38.183]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 4KF8Bn1s61z4x9Q9; Fri, 11 Mar
 2022 01:54:57 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 86.AA.06423.1FBAA226; Fri, 11 Mar 2022 10:54:57 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
 20220311015456epcas5p4d04741216c82091cbe6fca83cbfa832f~bMMGD7J011309313093epcas5p4u;
 Fri, 11 Mar 2022 01:54:56 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20220311015456epsmtrp2c3ca1a96a2d94019102fd9fbcfdf74bc~bMMGDM7wS0776207762epsmtrp2A;
 Fri, 11 Mar 2022 01:54:56 +0000 (GMT)
X-AuditID: b6c32a49-b13ff70000001917-94-622aabf10b0d
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 63.E8.29871.0FBAA226; Fri, 11 Mar 2022 10:54:56 +0900 (KST)
Received: from alimakhtar03 (unknown [107.122.12.5]) by epsmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20220311015455epsmtip2ed8a4286ea5368676ab69081f5dda2c7~bMMEyZdMU0664006640epsmtip2h;
 Fri, 11 Mar 2022 01:54:54 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Krzysztof Kozlowski'" <krzysztof.kozlowski@canonical.com>, "'Kishon
 Vijay Abraham I'" <kishon@ti.com>, "'Vinod Koul'" <vkoul@kernel.org>,
 "'Miaoqian Lin'" <linmq006@gmail.com>, <linux-phy@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-samsung-soc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
In-Reply-To: <20220309170028.51913-1-krzysztof.kozlowski@canonical.com>
Subject: RE: [PATCH] phy: samsung: exynos5250-sata: fix missing device put
 in probe error paths
Date: Fri, 11 Mar 2022 07:24:53 +0530
Message-ID: <018501d834eb$01e62ad0$05b28070$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFk9GdFcluxqBuuM3cfs7kS0OZnrAJRu4lfrY1fA0A=
Content-Language: en-us
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrMJsWRmVeSWpSXmKPExsWy7bCmlu7H1VpJBg9fs1tceNrDZrHx7Q8m
 i+cfG5ktNj2+xmpxedccNosJq76xWMw4v4/JYuedE8wOHB6zGnrZPHbOusvusWlVJ5vH5iX1
 HsdvbGfy+LxJLoAtKtsmIzUxJbVIITUvOT8lMy/dVsk7ON453tTMwFDX0NLCXEkhLzE31VbJ
 xSdA1y0zB+geJYWyxJxSoFBAYnGxkr6dTVF+aUmqQkZ+cYmtUmpBSk6BSYFecWJucWleul5e
 aomVoYGBkSlQYUJ2xuf7jgWzxCt+/elgaWB8I9zFyMkhIWAicfbLbbYuRi4OIYHdjBLzpy9h
 hnA+MUr8fzmDFcL5xigxd+ptdpiW8wuuQlXtZZT48fc/E4TzklGir/UnK0gVm4CuxI7FbWCD
 RQROM0ksn3+TCSTBKeAucercCrAiYYFEia57x8HGsgioSvy7foaxi5GDg1fAUqLruSFImFdA
 UOLkzCcsIDazgLzE9rdzmCGuUJD4+XQZ2BgRASuJ2befs0HUiEu8PHqEHWSvhMBCDolH/16w
 QjS4SBzveAVlC0u8Or4F6h0pic/v9rKB7JUQyJbo2WUMEa6RWDrvGAuEbS9x4MocFpASZgFN
 ifW79CFW8Un0/n7CBNHJK9HRJgRRrSrR/O4qVKe0xMTubqilHhIX+2+wQ4JqFqPE2YNTGScw
 KsxC8uUsJF/OQvLNLITNCxhZVjFKphYU56anFpsWGOallsPjOzk/dxMjOLVqee5gvPvgg94h
 RiYOxkOMEhzMSiK8TaEaSUK8KYmVValF+fFFpTmpxYcYTYEhP5FZSjQ5H5jc80riDU0sDUzM
 zMxMLI3NDJXEeU+nb0gUEkhPLEnNTk0tSC2C6WPi4JRqYNKQl7GZazS1dOGt0vNZJ5bxpQm8
 OHyn3fnXnmlGM+5VGy2dFfx+tet2j/fu7OtaIs5tkLXqW28v9mX72c+cZ0/NPDjj9J+Hr53W
 HXTQCE896csqulO9/eXS4LXWalUfzO/94vllL5Yu3Fm9aNaHne1BM/e+r24pzf36KamSoayv
 XSHj+1YWDTfnno2f51/1r0tWjroWH1e2cuOlMLnbv2e4asg3Zvb5pixJ7Jn4nUlyMbfpgtl3
 +NZxHF33fpfyn2qGdxqTfdv4GN8fWJEly2NvlbZr3tUzn7x0VRPXOxsW2WWeaT4poK5+80gd
 +3T+qR763Wv00kpTWefvWMi4IlPb19GjvGC5Z8s7Rbm9E5VYijMSDbWYi4oTAdrtTLA2BAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrLLMWRmVeSWpSXmKPExsWy7bCSvO6H1VpJBpvPCFhceNrDZrHx7Q8m
 i+cfG5ktNj2+xmpxedccNosJq76xWMw4v4/JYuedE8wOHB6zGnrZPHbOusvusWlVJ5vH5iX1
 HsdvbGfy+LxJLoAtissmJTUnsyy1SN8ugSvj833HglniFb/+dLA0ML4R7mLk5JAQMJE4v+Aq
 cxcjF4eQwG5GifULb7BAJKQlrm+cwA5hC0us/PcczBYSeM4ocfB8FIjNJqArsWNxGxtIs4jA
 RSaJ+49nskJMmsEosW7rBSaQKk4Bd4lT51awgtjCAvES2w40MILYLAKqEv+unwGyOTh4BSwl
 up4bgoR5BQQlTs58wgISZhbQk2jbCFbNLCAvsf3tHGaIexQkfj5dBjZRRMBKYvbt52wQNeIS
 L48eYZ/AKDQLyaRZCJNmIZk0C0nHAkaWVYySqQXFuem5xYYFhnmp5XrFibnFpXnpesn5uZsY
 wTGkpbmDcfuqD3qHGJk4GA8xSnAwK4nwNoVqJAnxpiRWVqUW5ccXleakFh9ilOZgURLnvdB1
 Ml5IID2xJDU7NbUgtQgmy8TBKdXAZDo9byf/bfnVvidnuvQe+7Pg27s/+iV9s7qeh9wu/Dx7
 QsOP40uuyh7489FDyibcfMEcf44dfaWmJvKGYdrGZ3canJnuXdsXcFZE7GfQNvuX7pcW/HS6
 /qY7XPPiikMzzi57PnOX+Nslux027Pz85diGnYv+Tpxo377sCgOb8N4HRjVKX12717wXibv5
 U3zPe0u+uZWGaVVu4YpPxXIDJ+42+5XRbVP/pFNsxRy1yMPM2hv1NVt6v+gyid5cXOZUppDX
 +bpoyZ7oa3PTRKuXTwyw9NRhSo/6dXSJ2Uw7//Z500Wd/9m9O1QyVf/5q2smugdWislXhy0q
 2jXbY5fApNCdua2dn0vmfNtkpfYwL1OJpTgj0VCLuag4EQB7HhT0EAMAAA==
X-CMS-MailID: 20220311015456epcas5p4d04741216c82091cbe6fca83cbfa832f
X-Msg-Generator: CA
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220309170036epcas5p2e6ee56f4c38761868ad9408616c03203
References: <CGME20220309170036epcas5p2e6ee56f4c38761868ad9408616c03203@epcas5p2.samsung.com>
 <20220309170028.51913-1-krzysztof.kozlowski@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220310_175506_997957_B31A1C1B 
X-CRM114-Status: GOOD (  14.22  )
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

Hi Krzysztof

>-----Original Message-----
>From: Krzysztof Kozlowski [mailto:krzysztof.kozlowski@canonical.com]
>Sent: Wednesday, March 9, 2022 10:30 PM
>To: Kishon Vijay Abraham I <kishon@ti.com>; Vinod Koul
><vkoul@kernel.org>; Krzysztof Kozlowski
><krzysztof.kozlowski@canonical.com>; Alim Akhtar
><alim.akhtar@samsung.com>; Miaoqian Lin <linmq006@gmail.com>; linux-
>phy@lists.infradead.org; linux-arm-kernel@lists.infradead.org; linux-
>samsung-soc@vger.kernel.org; linux-kernel@vger.kernel.org
>Subject: [PATCH] phy: samsung: exynos5250-sata: fix missing device put in
>probe error paths
>
>The actions of of_find_i2c_device_by_node() in probe function should be
>reversed in error paths by putting the reference to obtained device.
>
>Fixes: bcff4cba41bc ("PHY: Exynos: Add Exynos5250 SATA PHY driver")
>Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>
Thanks for fixing this.

Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>

>---
>
>Rebased on top of (although it is independent, no conflicts):
>https://lore.kernel.org/linux-samsung-soc/20220309124856.32632-1-
>linmq006@gmail.com/T/#u
>---
> drivers/phy/samsung/phy-exynos5250-sata.c | 20 ++++++++++++++------
> 1 file changed, 14 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/phy/samsung/phy-exynos5250-sata.c
>b/drivers/phy/samsung/phy-exynos5250-sata.c
>index 6c305a3fe187..595adba5fb8f 100644
>--- a/drivers/phy/samsung/phy-exynos5250-sata.c
>+++ b/drivers/phy/samsung/phy-exynos5250-sata.c
>@@ -196,20 +196,21 @@ static int exynos_sata_phy_probe(struct
>platform_device *pdev)
> 	sata_phy->phyclk = devm_clk_get(dev, "sata_phyctrl");
> 	if (IS_ERR(sata_phy->phyclk)) {
> 		dev_err(dev, "failed to get clk for PHY\n");
>-		return PTR_ERR(sata_phy->phyclk);
>+		ret = PTR_ERR(sata_phy->phyclk);
>+		goto put_dev;
> 	}
>
> 	ret = clk_prepare_enable(sata_phy->phyclk);
> 	if (ret < 0) {
> 		dev_err(dev, "failed to enable source clk\n");
>-		return ret;
>+		goto put_dev;
> 	}
>
> 	sata_phy->phy = devm_phy_create(dev, NULL,
>&exynos_sata_phy_ops);
> 	if (IS_ERR(sata_phy->phy)) {
>-		clk_disable_unprepare(sata_phy->phyclk);
> 		dev_err(dev, "failed to create PHY\n");
>-		return PTR_ERR(sata_phy->phy);
>+		ret = PTR_ERR(sata_phy->phy);
>+		goto clk_disable;
> 	}
>
> 	phy_set_drvdata(sata_phy->phy, sata_phy); @@ -217,11 +218,18
>@@ static int exynos_sata_phy_probe(struct platform_device *pdev)
> 	phy_provider = devm_of_phy_provider_register(dev,
> 					of_phy_simple_xlate);
> 	if (IS_ERR(phy_provider)) {
>-		clk_disable_unprepare(sata_phy->phyclk);
>-		return PTR_ERR(phy_provider);
>+		ret = PTR_ERR(phy_provider);
>+		goto clk_disable;
> 	}
>
> 	return 0;
>+
>+clk_disable:
>+	clk_disable_unprepare(sata_phy->phyclk);
>+put_dev:
>+	put_device(&sata_phy->client->dev);
>+
>+	return ret;
> }
>
> static const struct of_device_id exynos_sata_phy_of_match[] = {
>--
>2.32.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
