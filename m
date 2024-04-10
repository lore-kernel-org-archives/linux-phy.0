Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2F4FCD128A
	for <linux-phy@archiver.kernel.org>; Wed, 10 Apr 2024 00:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bikKl6s6DunlyDLL87fNC8htQYeyNyXaYRHcVgx3Bu8=; b=gn+US1qQ3O3f8/
	JyHFoYspJ5K2DM34lItR2sjcTekfSc36A+o2hsU+W4wH3AYxHgnByfWKgqp+/wRyAt1o1IlDtY/0c
	1eZrxoQgeQUudmzpGn2zsmqKDny9+cA/wf6OGxREWKLzIOc4tLtFNDzHnOGjozJOFGPJVtqnWO545
	z8S2zZpIv/dPK2JjKzzbdngSgmD9KJR2CKYstBui4OposJER04z2dUXxJYr2m2EOjeepEEB69jN6+
	x8UER2AvEe4XrKWaj61qQkev/p+dR3yP13nc9sdZbegfkeRsctGXCBb5YQiGt2Nq/cQnfFJheTqiK
	qLP2viUXDcI1+Iobm0sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruMJh-00000004VsH-1gm2;
	Wed, 10 Apr 2024 00:59:57 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruMJE-00000004Vhc-0Pdd
	for linux-phy@lists.infradead.org;
	Wed, 10 Apr 2024 00:59:52 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20240410005921epoutp020ada051374013563f7099d1e0f392463~ExV0ZRpkI0823908239epoutp02D
	for <linux-phy@lists.infradead.org>; Wed, 10 Apr 2024 00:59:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20240410005921epoutp020ada051374013563f7099d1e0f392463~ExV0ZRpkI0823908239epoutp02D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1712710761;
	bh=oKR9O5fGEyCFcm4G62ExjkYKNcmQzxsntbMqmBNuTzw=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=MlPYq/bHIt4z46ba6QcTv8l3qujG/dVZiFWqHrWi1cN2TiDNxRwAtBl/m9in+jPpM
	 upKvZEMYyFE1sFGZ5KjqGCZPt38F4nnJytrcrCLnk7XabJWks+rIRR7fbz3KDd8AXj
	 Gdj+ySZlGzy+hXRA9Wzej0WVliIJWclCvorcmASw=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTP id
	20240410005920epcas5p2a904a7fd347f4ffb4eb65b9d1dba79d9~ExVzflEQ52928829288epcas5p2z;
	Wed, 10 Apr 2024 00:59:20 +0000 (GMT)
Received: from epsmges5p3new.samsung.com (unknown [182.195.38.180]) by
	epsnrtp3.localdomain (Postfix) with ESMTP id 4VDkxM5xykz4x9Pp; Wed, 10 Apr
	2024 00:59:19 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
	epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
	F0.AF.09665.764E5166; Wed, 10 Apr 2024 09:59:19 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20240410005919epcas5p451ba8a440d5b7935bb36a53a7f0ffc66~ExVxwpfiP0641306413epcas5p47;
	Wed, 10 Apr 2024 00:59:19 +0000 (GMT)
Received: from epsmgmc1p1new.samsung.com (unknown [182.195.42.40]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20240410005919epsmtrp2912db7cb00a152e5c05205cfc43d115a~ExVxuuNda0910809108epsmtrp2k;
	Wed, 10 Apr 2024 00:59:19 +0000 (GMT)
X-AuditID: b6c32a4b-829fa700000025c1-0b-6615e4670533
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgmc1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	3C.09.07541.664E5166; Wed, 10 Apr 2024 09:59:18 +0900 (KST)
Received: from INBRO000447 (unknown [107.122.12.5]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20240410005915epsmtip296566b8d160466579c35fcad102a2664~ExVuJnHuN0394003940epsmtip2Z;
	Wed, 10 Apr 2024 00:59:15 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Peter Griffin'" <peter.griffin@linaro.org>, <mturquette@baylibre.com>,
	<sboyd@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
	<avri.altman@wdc.com>, <bvanassche@acm.org>, <s.nawrocki@samsung.com>,
	<cw00.choi@samsung.com>, <jejb@linux.ibm.com>, <martin.petersen@oracle.com>,
	<chanho61.park@samsung.com>, <ebiggers@kernel.org>
Cc: <linux-scsi@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-clk@vger.kernel.org>,
	<linux-samsung-soc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <tudor.ambarus@linaro.org>,
	<andre.draszik@linaro.org>, <saravanak@google.com>,
	<willmcvicker@google.com>
In-Reply-To: <20240404122559.898930-10-peter.griffin@linaro.org>
Subject: RE: [PATCH 09/17] phy: samsung-ufs: use
 exynos_get_pmu_regmap_by_phandle() to obtain PMU regmap
Date: Wed, 10 Apr 2024 06:29:13 +0530
Message-ID: <065301da8ae2$50fed190$f2fc74b0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJaURTOFBtz0klhjQ4XchDKhOUW7wKPBJe9Al10qBiwOb1wsA==
Content-Language: en-us
X-Brightmail-Tracker: H4sIAAAAAAAAA02Te0xTVxjAub23twVXcy0Qz2CZXTNjxIFUoJ4qDB2Kd4MRnO4fE4Z39EIR
	aEtbdHNxg0HB8RLMQqDgJLABdi5gJVqhIBaQIVmV8ZwS5LmJyvsRGays5eLGf7/znd+X73Fy
	uCi/gOPGjZVraJWcihfiTtit5t27PGPGXKO9XxZ7wdrnNzE4sdyDw4KZZRR23d0DrzdYWLBv
	4S82vNpiYcNfTKsoLOu/xYKt2jUUTugGcWgY7WXD2exBNuyqK8Fhnn4Jg4UPG1kwq8+Iw8o2
	Kwt2PjgKawqtGFwzGTmw+WUGG2aa/8GhtfcGBucefwbvDPyKQv3cGnLInezqDiGn+7UcstSQ
	RBr03+HkQK8JJ/PKmhDy5o/fkLPjjzEyt1aPkPOGt8mMpixW+JZTcf4ympLSKgEtj1JIY+Ux
	AcKQE5FBkX5ib5GnSAL3CwVyKoEOEB4JDfcMjo23rUAoOEvFJ9lC4ZRaLdz7vr9KkaShBTKF
	WhMgpJXSeKWv0ktNJaiT5DFeclpzQOTtvc/PJp6Ok/2mu8dSjvC/SHuShiUjF4lMxJELCF+Q
	kWNCMxEnLp+oR8DPQ5MYc5hDQPfiLGq3+MQSAhoGnV5nLKaYEUZqQMBYY91GxjMEGPKMuN3C
	CU9gLE/H7RcuhA4FjTU960VQYpAFnmhT1y1H4hCYuzyF2NmZOAM6DEaOnTFiJ0jOvs+2M4+Q
	gKH6Ug7D20B70RhmZ5TYAW5PlqBMTwKwPF6x7rsQH4Di7P4NZzuYaG3hMI7FEXRZKYaPgI6n
	D3GGncHzttoNxw3MTzXY4lwbk6Bs1Y0Jy8BkZTXCcCBo6i7B7ApK7AbVdXuZSltBzsoYi8nk
	gYvpfMbeCVKnejCG3UF+VhabYRL8kGpi5SHv6DbNpds0l25T/7r/i5UimB55k1aqE2JotZ/S
	R06f+++9oxQJBmT9g3iEGJGRoRkvM8LiImYEcFGhC8/dwzWaz5NSX56nVYpIVVI8rTYjfrZl
	56NurlEK2w+TayJFvhJvX7FY7CvxEYuE23kvtFekfCKG0tBxNK2kVa/zWFxHt2TWnjSHR16l
	suJrbUS37GRl6dnw84nXq/7wdX5a6BCwvy605t0LW2daWsFRy2pgmPREGXXKVG7tHmmvl12+
	8J5W/3tGU/++sBA3TbL40b0P87KLzvFyD0fcXSkcLTN0VqfGVpH4dF9u6IEUn8PNEotEj/8Z
	scxfPN7odOTMwZxhgcDoPiVdi2oe/Koq7eQ1S8XApV0V7GeFhi2dx2ITFyYdi08XfK9yXOri
	5vo76y8RQVdnPx24siM/Ynzo+PCD+XTu5wuB0cOJkjTR359kuejXvlZ9W1QeFPZxsln70cGU
	F6PtM2PT1hsrr7T3q7YtvhHsFJyifnVn1Pmt212t5Qmmn/gdUgchppZRIg9Upab+BdQhG7+p
	BAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sf0yMcRzH932e5557yq4ed7W+1aacbBYdZ9g3Wn4Nz7Q2RjRZXHrqoie3
	+4HMjwzXr9NiQ67MdQyd/OjyozjKqfyYIunHkhuqU6gIkbjjOqb/3tvr/X7t88eHwoVOIoBK
	SVOzyjRZqpj0JK7fEweFJXX5Js3Y14nQ1XflBOodbibRsY/DOGqqmopKbzdgqPXLWx46VdPA
	QxctP3FkbLuOodqDThz16m0kMne28NAnnY2Hmm4WkSjfNESggid3MJTbWkGic/cdGGp8tARd
	KXAQyGmp4KN7HzJ5KMf6i0SOljICDbbHo8qOBzgyDTrBgkCm6XkUM9B2kM8YzBrGbMommY4W
	C8nkG6sBU35mL/Opu51g8q6aAPPZPIHJrM7FVoxb5xmRyKambGOV0yM3esrr9XcxxRvhjgMv
	DhAZIIvOAR4UpGfBr/usIAd4UkL6FoDN7818NwiErWX5f7MIljje8t0lO4DFh57wXICkw2DF
	aS3pAj70JRx+s9kxF8DpHgzWP4t3L2oAzMtuJ1zAg14AB4/0A1cW0XKoK83CXZmgJ8MMXd2o
	VUCHw1e3DHx3Hg8fnuj6s6X+SCVQWwbc/iB4o68Id18XDIe7z45OfehFsFDXRrg7frC3toaf
	D0T6MSb9f5N+jEk/ZmEAhAn4swoVl8xtkiqkaex2iUrGqTRpyZJNWzkzGP2R0CkVwHbKIbEC
	jAJWAClc7CMIDPVNEgoSZek7WeXWDUpNKquygkCKEPsJpAWFiUI6WaZmt7CsglX+oxjlEZCB
	RTZwwuErTGx9ufdZ7+7aOcv6Tk7sy5qjqUvYtfiypZEXIf8+EKYeWFbc7My97B23/nw0ej1i
	JNNXHPJqXBV3zV/aOSJaPyGmd6HttlZt2exjbY4LXhr967OX/Eelbp651B7gtSppfnDP4YTO
	qHM/ds8M53FGSWy7IcSmdnzhorIelhQlcMff2M8LkpVrSu/Ef9dMEnVpImFU32LwThsTcu0k
	nu3P9ayepbWOPIq1Y3vy1qpeTouZPbcogpFMnzLz6f6FhsELqf4Tfcf1G1c+TlheJ7wUlDmv
	KjrP76ijujiusUSaslux9H666rlJMDSyuqq78v3FGLyfFOcocrdphsSESi6ThuJKlew3LlI0
	CJIDAAA=
X-CMS-MailID: 20240410005919epcas5p451ba8a440d5b7935bb36a53a7f0ffc66
X-Msg-Generator: CA
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20240404122708epcas5p15f130c36300778bb61f8ea5cc0cce70d
References: <20240404122559.898930-1-peter.griffin@linaro.org>
	<CGME20240404122708epcas5p15f130c36300778bb61f8ea5cc0cce70d@epcas5p1.samsung.com>
	<20240404122559.898930-10-peter.griffin@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_175943_400829_E29FBAED 
X-CRM114-Status: GOOD (  18.96  )
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

Hi Peter,

> -----Original Message-----
> From: Peter Griffin <peter.griffin@linaro.org>
> Sent: Thursday, April 4, 2024 5:56 PM
> To: mturquette@baylibre.com; sboyd@kernel.org; robh@kernel.org;
> krzk+dt@kernel.org; conor+dt@kernel.org; vkoul@kernel.org;
> kishon@kernel.org; alim.akhtar@samsung.com; avri.altman@wdc.com;
> bvanassche@acm.org; s.nawrocki@samsung.com; cw00.choi@samsung.com;
> jejb@linux.ibm.com; martin.petersen@oracle.com;
> chanho61.park@samsung.com; ebiggers@kernel.org
> Cc: linux-scsi@vger.kernel.org; linux-phy@lists.infradead.org;
> devicetree@vger.kernel.org; linux-clk@vger.kernel.org; linux-samsung-
> soc@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; tudor.ambarus@linaro.org;
> andre.draszik@linaro.org; saravanak@google.com;
> willmcvicker@google.com; Peter Griffin <peter.griffin@linaro.org>
> Subject: [PATCH 09/17] phy: samsung-ufs: use
> exynos_get_pmu_regmap_by_phandle() to obtain PMU regmap
> 
> This allows us to obtain a PMU regmap that is created by the exynos-pmu
> driver. Platforms such as gs101 require exynos-pmu created regmap to issue
> SMC calls for PMU register accesses. Existing platforms still get a MMIO
> regmap as before.
> 
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---

Acked-by: Alim Akhtar <alim.akhtar@samsung.com>

>  drivers/phy/samsung/phy-samsung-ufs.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/samsung/phy-samsung-ufs.c
> b/drivers/phy/samsung/phy-samsung-ufs.c
> index 183c88e3d1ec..c567efafc30f 100644
> --- a/drivers/phy/samsung/phy-samsung-ufs.c
> +++ b/drivers/phy/samsung/phy-samsung-ufs.c
> @@ -18,6 +18,7 @@
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
>  #include <linux/regmap.h>
> +#include <linux/soc/samsung/exynos-pmu.h>
> 
>  #include "phy-samsung-ufs.h"
> 
> @@ -255,8 +256,8 @@ static int samsung_ufs_phy_probe(struct
> platform_device *pdev)
>  		goto out;
>  	}
> 
> -	phy->reg_pmu = syscon_regmap_lookup_by_phandle(
> -				dev->of_node, "samsung,pmu-syscon");
> +	phy->reg_pmu = exynos_get_pmu_regmap_by_phandle(dev-
> >of_node,
> +							"samsung,pmu-
> syscon");
>  	if (IS_ERR(phy->reg_pmu)) {
>  		err = PTR_ERR(phy->reg_pmu);
>  		dev_err(dev, "failed syscon remap for pmu\n");
> --
> 2.44.0.478.gd926399ef9-goog



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
