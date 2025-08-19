Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55569CA0EF5
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 01:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yPrPv0t4bFVQ0QbNu/uT+pPBKDq5BZq+61cvGi8MiMY=; b=YdAU5Ioac4r9FE
	p1BE7NHmN1aUpWidNfs7uQl2yTn+pxGbkBw3eqRIEigYkiSBsSKuVMQyN1/YCC1qMqci0vHPioKjU
	FoR7x5L9CUH35vQsoEy3Bkb8WuckYDU+ao3gCzt3dHfw5UbKxL33SNra19Pz/negayhCNmPkZv2kJ
	KAooKde06Ztj+5oHJfXDCtS0k4KBhEIDWAjF9/CZ1xzTPRKu2KeKrCuwtakB6ohsrmgJ3xiCSFNP3
	V50j0Elwq4KoYyzu3bJ/cXvl5UlZy8Ezt5NAZU1ye3IMQ50bSblm+22xlOIcFzQJLoAFY+rL8qhtK
	OyGd+4TaLdE6QIE11ERA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoAqZ-000000093fz-43Op;
	Tue, 19 Aug 2025 01:09:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoAqX-000000093fb-3XD7
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 01:09:07 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57IF6aMa006751
	for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 01:09:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=87bz/AgIYMKBHYgawH0dr8QB
	TFnm3fjEc4qUv35xKB8=; b=Xbqwl8/RXQ7eBUMbc25/MoF2A8F8B1PuSgzi+2HB
	Z1uF4BpGhSqqf3WjSx5mjAu7v5B5U13d+jV8TxAjbfSNY+xNxuPy/MdO8m2AAhNc
	qJBVpLzmiio1M60Q+++DVbUkUlqpZtBXhaTOK3ihC5amke7rBjlMr9JkSkQB0n2G
	f1GtCE+CyezyFHfvIw9iDzSy1iwqwZIy/Vzgcsnv0cXK/6MEWqjECi2JIwFhXqhE
	t5hoqLQ+w+6CftzVKwYnkLszl1/V5oOxhRRCzbAe0Ixjin+TgK/uR/W2hT5P5rRA
	8AAx0opnJx/P0pheMvddhM2ygsaTfHuFaG/iwIzXM538sQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jhagxmm4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 01:09:04 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70a88dd04faso172709706d6.0
        for <linux-phy@lists.infradead.org>; Mon, 18 Aug 2025 18:09:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755565744; x=1756170544;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=87bz/AgIYMKBHYgawH0dr8QBTFnm3fjEc4qUv35xKB8=;
        b=hkoT0/QILKfWdjVPihu8DQ+M9cK9IBOC1o+B4h1i5xVfxtsNFRpTm0CmKa6d2xZ8uU
         lSwSabrXm1RJSaV66jcQkQAi0PD2SpU5Wcy1LYpXNnbI0bBaILUe5dVUn5Axji1/EHyB
         0+PrqwiVGvdE7C3P7onCETaDC8klYsGvIZEEJK9k+Yjd4DmJujh5ng9bGG/75urLdJuv
         h51galbUZYbyNTcxzLaANQgTbtBcLxwZdxy8VYedL0sAicCE/IkpMOkC1vkUjXAibl8G
         fISFAwXGuMqam/t5Zhq42+bPNyj3NfjQz76oZp58jEOCzm+Bs3Pm53gQNz+FnxVxIeEk
         b83A==
X-Forwarded-Encrypted: i=1; AJvYcCUarY6eSq+Kr+yHgsLIm4nwz9UCtGAJvvqrIPExVrqzd+dpBiqKyq6OYG1QtzpFUgQGDZJ/w+KPysc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwpOsI/JlcrravE1A3pXPBjfiXWdRXCaASCFJwtWILWPG7bZvbl
	7d9vG23QdyCBdJSaTJsvPl3K95wV/Zdvjz2J/r9aKzP99VWot5/tuHm5yUKzOTppfttxU28LDMD
	2zlx2X697fGZB/vU7IzXOUk+GmwdW35c7RDcGVDISwLwsXchzWzT8PD19lnWv0aVQX46E
X-Gm-Gg: ASbGncv9XYymVfYNmJSgMbYEVMaTbjFLsfw+b/Q/Tc3VbClpvV2ipWnHY87gGtxGTej
	Tv9pG2WV8s/l/B/9rBJEtc2DqRDuedb0xLa7SjBWNv59Xsk03I6VU+sH2jSfked9S/T7o/EUPRg
	sHUo+FLicJdPvV6abYj05npkKVeNk40Eb9ampZ42+ekYdcUv55qtpfiFxJtmgiYgqv7TpdRFUpA
	uHNkbH4azNE/3qrRFQEZ2GxMx1A4DuC7u+Nnr6FvK6odqntbVjRrCT03X5t3Z2q9RhZO7vEqOwT
	V5n0NdbME0jwCQACUffvFHhmedX/To0dsxw+wFLj3U1FNqi+k81o6rD0yMbBpIRRme+/2b/vpAn
	QZKJzKALWdsMai43CUzNa6FbFYz/3b+lXBBIVZh7d86BmNbpPPSQp
X-Received: by 2002:a05:6214:401a:b0:70b:7058:4746 with SMTP id 6a1803df08f44-70c35b97b10mr8798046d6.37.1755565743704;
        Mon, 18 Aug 2025 18:09:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFv/N8J/mVexsq1ZJ/e0y+5mZX1Fu7Ts9DPlzNXVDUWt38KoUJYNHr7JL9c4R2j7BbQWMfSsw==
X-Received: by 2002:a05:6214:401a:b0:70b:7058:4746 with SMTP id 6a1803df08f44-70c35b97b10mr8797786d6.37.1755565743266;
        Mon, 18 Aug 2025 18:09:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a604c44sm19206371fa.37.2025.08.18.18.08.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 18:09:01 -0700 (PDT)
Date: Tue, 19 Aug 2025 04:08:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, mani@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V2 1/2] phy: qcom-qmp-ufs: Add regulator load voting for
 UFS QMP Phy
Message-ID: <jpuesvbjupjp3hmdiwwpx6c3yblf5e6nqm3tdp7vnjehkuyort@7u7c5lw622dz>
References: <20250818124110.8136-1-quic_nitirawa@quicinc.com>
 <20250818124110.8136-2-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250818124110.8136-2-quic_nitirawa@quicinc.com>
X-Authority-Analysis: v=2.4 cv=D9xHKuRj c=1 sm=1 tr=0 ts=68a3ceb0 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=Ape6mJY-HOZ_ZTKTdakA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 3EvEBSQRQ9Ix75xdPqtabFo7UdWDLq-O
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAyNCBTYWx0ZWRfX4whmnmUQcPqe
 JUMPQ0syO4PAKZGoofJJTSaNF+wsfmoewLuANIStb4XGnhPqlJQKbTh/SZBztMulR6r2u9jDMRQ
 aoRQ/AQk/ZpRQ1qPU6JHjJDFEMsrZB+FRs0Htp7fRMUXbrzIcvYBiIwHEoNE+RPZIIwqvFtCdxU
 hjO3tL/nwwsFXxunGOQS+tIESdKRmZgjXT8Vk8hC6HWqVilkMAiNlaNte1mf0UQ/WnPO/5/7r2N
 IbJVfWOBPuKxFxC6DBupFnf/gRVfAQYT+rHw5Jk86prbF50mzhcRUZEtQgC9AdubuBg4z3WWcsl
 1tGBsYIolMc/4brAfN7Q4GhzvhywrQ4wE87JJMei8J1B5N/Gu+FhAio2YjYCbOVjTHjql9FyV2o
 PwfsWYJy
X-Proofpoint-GUID: 3EvEBSQRQ9Ix75xdPqtabFo7UdWDLq-O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 impostorscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_180906_005340_6CC6D5EA 
X-CRM114-Status: GOOD (  28.76  )
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

On Mon, Aug 18, 2025 at 06:11:09PM +0530, Nitin Rawat wrote:
> On some SoCs, regulators are shared between the QMP UFS PHY and other
> IP blocks. Hence convey maximum load requirement for UFS PHY to the

s/maximum//

> regulator framework as supply's capabilities or mode(Low Power Mode
> or High Power Mode) change depending on the maximum potential load
> at any given time, which the regulator driver must be aware of.
> This helps to ensure stable operation and proper power management,
> set the regulator load before enabling the regulators.
> 
> This patch adds:
> 

Documentation/process/submitting-patches.rst, "[This patch] makes xyzzy
do frotz".

> - vreg_load_uA field to qmp_phy_cfg structure for load value arrays.
> - Enhanced qmp_ufs_vreg_init() to set init_load_uA when loads are
>   specified.
> 
> Configurations without specific load requirements will continue
> to work unchanged, as init_load_uA remains zero-initialized when
> vreg_load_uA is not provided.
> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 9c69c77d10c8..f7a4a8334026 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -1110,6 +1110,9 @@ struct qmp_phy_cfg {
>  	const char * const *vreg_list;
>  	int num_vregs;
> 
> +	/* regulator load values in same order as vreg_list */
> +	const int *vreg_load_ua;
> +
>  	/* array of registers with different offsets */
>  	const unsigned int *regs;
> 
> @@ -1901,8 +1904,11 @@ static int qmp_ufs_vreg_init(struct qmp_ufs *qmp)
>  	if (!qmp->vregs)
>  		return -ENOMEM;
> 
> -	for (i = 0; i < num; i++)
> +	for (i = 0; i < num; i++) {
>  		qmp->vregs[i].supply = cfg->vreg_list[i];
> +		if (cfg->vreg_load_ua)
> +			qmp->vregs[i].init_load_uA = cfg->vreg_load_ua[i];

Please rewrite the driver to use devm_regulator_bulk_get_const().

> +	}
> 
>  	return devm_regulator_bulk_get(dev, num, qmp->vregs);
>  }
> --
> 2.48.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
