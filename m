Return-Path: <SRS0=+yjZ=L6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B82FDC07E99
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 02:09:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5E35761952
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 02:09:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5E35761952
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=samsung.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:Cc:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tGy2uBmTHEMbvRoAR0XyT7FMJ9ZjWYIRimEHaMZmktM=; b=WpY6I4xlDngg78
	ri4R9f2vT/20lobXin9C0c8/qvn3XBPeD12bCjXxjoaKTX+C/ko2goWSNkXnYIor+h2Arbuasuv2m
	8mruE7Rz4hboepN3ZYwDXN/OjhhzQPY4AYR7rsHferTr4nb2w6jyEAdYbMXPeZ/cRczh/1QLId5tH
	c7uOMfA1uYbZa8efcdWW3eIlTOSZ4ZsDv2qk2k7L7Domc8+FMWPhSfX9Gd1/hBTzhKKpe+SHdI8SS
	oXPwTstbF+2zsIxqOslG+zkHCNJxAITVBZFu+iCunPIFqky7fSASSKaygQYjji753l2D5+E5Gimdz
	1PxgfFHTKoGdHBIjGaLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0aWU-00A91P-R9; Tue, 06 Jul 2021 02:09:18 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0aWJ-00A8zu-Cy
 for linux-phy@lists.infradead.org; Tue, 06 Jul 2021 02:09:10 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20210706020902epoutp04fbdc672117655a012f2b7731339fb466~PEZnUDODW2961729617epoutp04h
 for <linux-phy@lists.infradead.org>; Tue,  6 Jul 2021 02:09:02 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20210706020902epoutp04fbdc672117655a012f2b7731339fb466~PEZnUDODW2961729617epoutp04h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1625537342;
 bh=Q8hSUloTgOVDEU7ytzBZwHyBeqSM6uTe/c0XaXPFsAA=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=CoHofBBSYMFHHnHGaAULkL3rzzqGYbN3UTECoLgfOk8ekZ81r0A+QBp6AnG4WMdxK
 9MX6qiqW+PEBIMUVuzqLlkxo3bmqlrcqq/FLSrT6pMa7PjLuhnIitQcvQ7wVaWThMa
 D9lJwgOJE2ONhIBcxDtrx/B8QpINW74EOYwYluOc=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20210706020902epcas1p3734f15d0f759aa967ab31aaaaa58a5db~PEZnBjWP62313123131epcas1p34;
 Tue,  6 Jul 2021 02:09:02 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.158]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 4GJmFR56R4z4x9Ps; Tue,  6 Jul
 2021 02:08:59 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 5F.3E.09586.93BB3E06; Tue,  6 Jul 2021 11:08:57 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20210706020856epcas1p1ab6bb46b5a2ccbf4a91f134d705e89b4~PEZhf2FeG2452924529epcas1p1l;
 Tue,  6 Jul 2021 02:08:56 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20210706020856epsmtrp10badd0dab10981de1ce148897c5bc5ff~PEZhfCn0j0073900739epsmtrp1k;
 Tue,  6 Jul 2021 02:08:56 +0000 (GMT)
X-AuditID: b6c32a39-857ff70000002572-94-60e3bb39a2a5
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 C4.C5.08394.83BB3E06; Tue,  6 Jul 2021 11:08:56 +0900 (KST)
Received: from [10.113.113.235] (unknown [10.113.113.235]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20210706020856epsmtip1f671ff3da4b8a99f8d9c511238632fc1~PEZhEZV1W1783617836epsmtip1A;
 Tue,  6 Jul 2021 02:08:56 +0000 (GMT)
Subject: Re: [PATCH v2 2/2] phy: samsung-ufs: support exynosauto ufs phy driver
To: Chanho Park <chanho61.park@samsung.com>, Kishon Vijay Abraham I
 <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski
 <krzk@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Alim Akhtar
 <alim.akhtar@samsung.com>, linux-phy@lists.infradead.org
From: Jaehoon Chung <jh80.chung@samsung.com>
Message-ID: <0ac8cc15-663d-4f9c-017d-06cafb98c98b@samsung.com>
Date: Tue, 6 Jul 2021 11:09:52 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210706020625.117400-3-chanho61.park@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprIJsWRmVeSWpSXmKPExsWy7bCmnq7l7scJBmcf8Fo8mLeNzeLyfm2L
 C0972CzOn9/AbjFh1TcWi7VH7rJb7LxzgtmB3WPTqk42j81L6j36tqxi9Dh+YztTAEtUtk1G
 amJKapFCal5yfkpmXrqtkndwvHO8qZmBoa6hpYW5kkJeYm6qrZKLT4CuW2YO0AFKCmWJOaVA
 oYDE4mIlfTubovzSklSFjPziElul1IKUnALLAr3ixNzi0rx0veT8XCtDAwMjU6DChOyM6Sve
 sRY8Nao48Hk2awPjfq0uRk4OCQETiQV/bjN2MXJxCAnsYJQ4N2UfE4TziVGitXMOlPONUeL4
 l262LkYOsJY3C/kh4nsZJWY+XMgO4bxnlJi67hQ7yFxhgUCJxX2zwGwRgbmMEg//aIPYzALl
 EtdPvmYBsdkEdCS2fzvOBGLzCthJ7NnXzwxiswioSLx8sBXMFhWIlDi/ewELRI2gxMmZT8Bs
 TgEHif6jPYwQM8Ulbj2ZzwRhy0tsfzuHGeQgCYFWDonzvy6xQzzqInH52mE2CFtY4tXxLVBx
 KYmX/W1QdrXEruYzUM0djBK3tjUxQSSMJfYvncwE8j6zgKbE+l36EGFFiZ2/50IdwSfx7msP
 KySEeCU62oQgSlQkLr1+yQSz6u6T/1AlHhINv0ImMCrOQvLZLCTfzELyzSyEvQsYWVYxiqUW
 FOempxYbFpgiR/YmRnDa1LLcwTj97Qe9Q4xMHIyHGCU4mJVEeEWmPEoQ4k1JrKxKLcqPLyrN
 SS0+xGgKDOuJzFKiyfnAxJ1XEm9oamRsbGxhYmhmamioJM67k+1QgpBAemJJanZqakFqEUwf
 EwenVAPTimyuQuOW/9/unA7I3ecvf1kgMbSM/bj9Jt1e4+SmLJ1ybwW7zlunnglcnyvAbCqq
 toF7/TWDv2WMWxb0ePXE+u5u0Jp/Yl1Rj/GViBkRl23sRBf2nY010e/Wajt2w2TSo4Sabhle
 0/VHRbwY/+a6n1qSG2F726h+34w497QWvkmP+d7/v79cvOmrXcu2U03hkjd0LVZV/la1Sluz
 9vWMX9dZd5/jYTCcpM4qcDwiVK2y/uS74Pj7s+orb3Fm82v83cf9JZCVUymlc33eyr8v/xSd
 Scz8OMnA4d92hqi6V753L0y6ElaQMjdg7tutgbWBtzxZvumYG9u02NxpKTdaJhDafbzttVxZ
 vP0/HSWW4oxEQy3mouJEABP+dYYkBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrILMWRmVeSWpSXmKPExsWy7bCSnK7F7scJBks/SFk8mLeNzeLyfm2L
 C0972CzOn9/AbjFh1TcWi7VH7rJb7LxzgtmB3WPTqk42j81L6j36tqxi9Dh+YztTAEsUl01K
 ak5mWWqRvl0CV8b0Fe9YC54aVRz4PJu1gXG/VhcjB4eEgInEm4X8XYxcHEICuxklVvz9wNjF
 yAkUl5L4/HQqG0SNsMThw8UQNW8ZJU6s3M0KUiMsECixuG8WO0hCRGAuo8Sm/3vBmpkFyiWa
 97xkgeg4ySixe/oPFpAEm4COxPZvx5lAbF4BO4k9+/qZQWwWARWJlw+2gtmiApESnxe8YoWo
 EZQ4OfMJWC+ngINE/9EeqAXqEn/mXWKGsMUlbj2ZzwRhy0tsfzuHeQKj0Cwk7bOQtMxC0jIL
 ScsCRpZVjJKpBcW56bnFhgWGeanlesWJucWleel6yfm5mxjBsaKluYNx+6oPeocYmTgYDzFK
 cDArifCKTHmUIMSbklhZlVqUH19UmpNafIhRmoNFSZz3QtfJeCGB9MSS1OzU1ILUIpgsEwen
 VAMTh+/h3lM/Vlx9dapjOcur7ros0cwLF4XNvzbfjvpdnOYS9FR27rqvM262Pi0+e9tv6uRb
 cSyvbk4TuHvXudT2Cd/CuF954YnC5yL9XZ5MFpnFnlE3c4byFq3qJDVWzWTeY3vennm0oT5m
 9f6UmuxVJ3RnTVl2UKFSlcX2x8qEc4djd80Ve3B3x+Q9AufXnpB8b1z/qeXaQvM3ql+Z11W6
 rPZmVpgdVBsx+4Tq4ytPn0WK+pbH1+hNDMx8d365K8OTdZv73izmOqcskc8Smv1WwXJauHD7
 mYOyG0O7vCZN5svTaTlQNvOH6M8v6SGfWOQOzb+Rs8bodeR6/umrTOe8Zr4zreTioUVeHM1G
 SRwS+5RYijMSDbWYi4oTAZPNTqwEAwAA
X-CMS-MailID: 20210706020856epcas1p1ab6bb46b5a2ccbf4a91f134d705e89b4
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20210706020611epcas2p47fd1367425d1bac79c7ec983c21086b8
References: <20210706020625.117400-1-chanho61.park@samsung.com>
 <CGME20210706020611epcas2p47fd1367425d1bac79c7ec983c21086b8@epcas2p4.samsung.com>
 <20210706020625.117400-3-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_190907_826191_D2B63DDE 
X-CRM114-Status: GOOD (  27.91  )
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

On 7/6/21 11:06 AM, Chanho Park wrote:
> This patch adds to support phy-exynosautov9-ufs driver for ExynosAuto v9
> series SoCs. The patch adds "samsung,exynosautov9-ufs-phy" compatible.
> Unlike previous exynos ufs phy, the chip uses 0x50 offset as
> PHY_TRSV_REG_CFG_OFFSET.
> 
> Change-Id: I4ea333d4565af537c26a8876d1b27144eea3c3c6

Remove Change-Id.

Best Regards,
Jaehoon Chung

> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  .../bindings/phy/samsung,ufs-phy.yaml         |  1 +
>  drivers/phy/samsung/Makefile                  |  3 +-
>  drivers/phy/samsung/phy-exynosautov9-ufs.c    | 70 +++++++++++++++++++
>  drivers/phy/samsung/phy-samsung-ufs.c         |  3 +
>  drivers/phy/samsung/phy-samsung-ufs.h         |  8 ++-
>  5 files changed, 82 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/phy/samsung/phy-exynosautov9-ufs.c
> 
> diff --git a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> index 636cc501b54f..f6ed1a005e7a 100644
> --- a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> @@ -16,6 +16,7 @@ properties:
>    compatible:
>      enum:
>        - samsung,exynos7-ufs-phy
> +      - samsung,exynosautov9-ufs-phy
>  
>    reg:
>      maxItems: 1
> diff --git a/drivers/phy/samsung/Makefile b/drivers/phy/samsung/Makefile
> index d55d9aa5b932..ab87b71cd90f 100644
> --- a/drivers/phy/samsung/Makefile
> +++ b/drivers/phy/samsung/Makefile
> @@ -3,7 +3,8 @@ obj-$(CONFIG_PHY_EXYNOS_DP_VIDEO)	+= phy-exynos-dp-video.o
>  obj-$(CONFIG_PHY_EXYNOS_MIPI_VIDEO)	+= phy-exynos-mipi-video.o
>  obj-$(CONFIG_PHY_EXYNOS_PCIE)		+= phy-exynos-pcie.o
>  obj-$(CONFIG_PHY_SAMSUNG_UFS)		+= phy-samsung-ufs.o \
> -					phy-exynos7-ufs.o
> +					phy-exynos7-ufs.o \
> +					phy-exynosautov9-ufs.o
>  obj-$(CONFIG_PHY_SAMSUNG_USB2)		+= phy-exynos-usb2.o
>  phy-exynos-usb2-y			+= phy-samsung-usb2.o
>  phy-exynos-usb2-$(CONFIG_PHY_EXYNOS4210_USB2)	+= phy-exynos4210-usb2.o
> diff --git a/drivers/phy/samsung/phy-exynosautov9-ufs.c b/drivers/phy/samsung/phy-exynosautov9-ufs.c
> new file mode 100644
> index 000000000000..9ab79e018724
> --- /dev/null
> +++ b/drivers/phy/samsung/phy-exynosautov9-ufs.c
> @@ -0,0 +1,70 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * UFS PHY driver data for Samsung EXYNOSAUTO v9 SoC
> + *
> + * Copyright (C) 2021 Samsung Electronics Co., Ltd.
> + */
> +
> +#include <linux/io.h>
> +#include <linux/phy/phy.h>
> +
> +#include "phy-samsung-ufs.h"
> +
> +#define EXYNOSAUTOV9_EMBEDDED_COMBO_PHY_CTRL		0x728
> +#define EXYNOSAUTOV9_EMBEDDED_COMBO_PHY_CTRL_MASK	0x1
> +#define EXYNOSAUTOV9_EMBEDDED_COMBO_PHY_CTRL_EN		BIT(0)
> +
> +#define PHY_TRSV_REG_CFG_AUTOV9(o, v, d) \
> +	PHY_TRSV_REG_CFG_OFFSET(o, v, d, 0x50)
> +
> +/* Calibration for phy initialization */
> +static const struct samsung_ufs_phy_cfg exynosautov9_pre_init_cfg[] = {
> +	PHY_COMN_REG_CFG(0x023, 0x80, PWR_MODE_ANY),
> +	PHY_COMN_REG_CFG(0x01d, 0x10, PWR_MODE_ANY),
> +
> +	PHY_TRSV_REG_CFG_AUTOV9(0x044, 0xb5, PWR_MODE_ANY),
> +	PHY_TRSV_REG_CFG_AUTOV9(0x04d, 0x43, PWR_MODE_ANY),
> +	PHY_TRSV_REG_CFG_AUTOV9(0x05b, 0x20, PWR_MODE_ANY),
> +	PHY_TRSV_REG_CFG_AUTOV9(0x05e, 0xc0, PWR_MODE_ANY),
> +	PHY_TRSV_REG_CFG_AUTOV9(0x038, 0x12, PWR_MODE_ANY),
> +	PHY_TRSV_REG_CFG_AUTOV9(0x059, 0x58, PWR_MODE_ANY),
> +	PHY_TRSV_REG_CFG_AUTOV9(0x06c, 0x18, PWR_MODE_ANY),
> +	PHY_TRSV_REG_CFG_AUTOV9(0x06d, 0x02, PWR_MODE_ANY),
> +
> +	PHY_COMN_REG_CFG(0x023, 0xc0, PWR_MODE_ANY),
> +	PHY_COMN_REG_CFG(0x023, 0x00, PWR_MODE_ANY),
> +
> +	PHY_TRSV_REG_CFG(0x042, 0x5d, PWR_MODE_ANY),
> +	PHY_TRSV_REG_CFG(0x043, 0x80, PWR_MODE_ANY),
> +
> +	END_UFS_PHY_CFG,
> +};
> +
> +/* Calibration for HS mode series A/B */
> +static const struct samsung_ufs_phy_cfg exynosautov9_pre_pwr_hs_cfg[] = {
> +	PHY_TRSV_REG_CFG(0x032, 0xbc, PWR_MODE_HS_ANY),
> +	PHY_TRSV_REG_CFG(0x03c, 0x7f, PWR_MODE_HS_ANY),
> +	PHY_TRSV_REG_CFG(0x048, 0xc0, PWR_MODE_HS_ANY),
> +
> +	PHY_TRSV_REG_CFG(0x04a, 0x00, PWR_MODE_HS_G3_SER_B),
> +	PHY_TRSV_REG_CFG(0x04b, 0x10, PWR_MODE_HS_G1_SER_B |
> +				      PWR_MODE_HS_G3_SER_B),
> +	PHY_TRSV_REG_CFG(0x04d, 0x63, PWR_MODE_HS_G3_SER_B),
> +
> +	END_UFS_PHY_CFG,
> +};
> +
> +static const struct samsung_ufs_phy_cfg *exynosautov9_ufs_phy_cfgs[CFG_TAG_MAX] = {
> +	[CFG_PRE_INIT]		= exynosautov9_pre_init_cfg,
> +	[CFG_PRE_PWR_HS]	= exynosautov9_pre_pwr_hs_cfg,
> +};
> +
> +const struct samsung_ufs_phy_drvdata exynosautov9_ufs_phy = {
> +	.cfg = exynosautov9_ufs_phy_cfgs,
> +	.isol = {
> +		.offset = EXYNOSAUTOV9_EMBEDDED_COMBO_PHY_CTRL,
> +		.mask = EXYNOSAUTOV9_EMBEDDED_COMBO_PHY_CTRL_MASK,
> +		.en = EXYNOSAUTOV9_EMBEDDED_COMBO_PHY_CTRL_EN,
> +	},
> +	.has_symbol_clk = 0,
> +};
> diff --git a/drivers/phy/samsung/phy-samsung-ufs.c b/drivers/phy/samsung/phy-samsung-ufs.c
> index dd9ab1519d83..602ddef259eb 100644
> --- a/drivers/phy/samsung/phy-samsung-ufs.c
> +++ b/drivers/phy/samsung/phy-samsung-ufs.c
> @@ -347,6 +347,9 @@ static const struct of_device_id samsung_ufs_phy_match[] = {
>  	{
>  		.compatible = "samsung,exynos7-ufs-phy",
>  		.data = &exynos7_ufs_phy,
> +	}, {
> +		.compatible = "samsung,exynosautov9-ufs-phy",
> +		.data = &exynosautov9_ufs_phy,
>  	},
>  	{},
>  };
> diff --git a/drivers/phy/samsung/phy-samsung-ufs.h b/drivers/phy/samsung/phy-samsung-ufs.h
> index 1532d239ff0e..b9b85d55a2d5 100644
> --- a/drivers/phy/samsung/phy-samsung-ufs.h
> +++ b/drivers/phy/samsung/phy-samsung-ufs.h
> @@ -26,14 +26,17 @@
>  	.id = PHY_COMN_BLK,	\
>  }
>  
> -#define PHY_TRSV_REG_CFG(o, v, d) {	\
> +#define PHY_TRSV_REG_CFG_OFFSET(o, v, d, c) {	\
>  	.off_0 = PHY_APB_ADDR((o)),	\
> -	.off_1 = PHY_APB_ADDR((o) + PHY_TRSV_CH_OFFSET),	\
> +	.off_1 = PHY_APB_ADDR((o) + (c)),	\
>  	.val = (v),		\
>  	.desc = (d),		\
>  	.id = PHY_TRSV_BLK,	\
>  }
>  
> +#define PHY_TRSV_REG_CFG(o, v, d)	\
> +	PHY_TRSV_REG_CFG_OFFSET(o, v, d, PHY_TRSV_CH_OFFSET)
> +
>  /* UFS PHY registers */
>  #define PHY_PLL_LOCK_STATUS	0x1e
>  #define PHY_CDR_LOCK_STATUS	0x5e
> @@ -137,5 +140,6 @@ static inline void samsung_ufs_phy_ctrl_isol(
>  }
>  
>  extern const struct samsung_ufs_phy_drvdata exynos7_ufs_phy;
> +extern const struct samsung_ufs_phy_drvdata exynosautov9_ufs_phy;
>  
>  #endif /* _PHY_SAMSUNG_UFS_ */
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
