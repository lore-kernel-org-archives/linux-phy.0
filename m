Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2C0AC282EC
	for <linux-phy@archiver.kernel.org>; Fri, 14 Mar 2025 16:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6n3D9MJYn8lJlc7OIC2G1lJdKmyZx/OAlAh1r20gSEo=; b=A3CL/eWtrSzxwH
	nQlXP3aHv+W4vMrsMwYqplASL2jeuqVc/GJgNlfKuSPkQVn+H48j7RJ1dijgxd6bY3Lik5cDBVkkM
	hd93hZK2J30AYpuusg9+nnn5nnMoZTCnSVp+1/dAaNp7a9sSNWLzV5DiC6aoX1bOMtG9MKt/tWTzg
	8WeNEEeyGR1nK2J37VAJksHX/o7pW6AEw0b++8l+M3lgD0UEfmW3Jc4mvcu4dGkt4du+wD1XoNdZU
	zJZKcw5Wu1JSmlfSGpxEZZN8lhjXe7mTjAWcrJj5w5W7Eg/IJdoOE4TojqmcWyu9x4Qs6nOS0ICbo
	TCPB7mCPXuPmMgYiTOZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt7wa-0000000EkuP-0aTm;
	Fri, 14 Mar 2025 16:31:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt7wY-0000000Eku4-0zMB
	for linux-phy@lists.infradead.org;
	Fri, 14 Mar 2025 16:31:31 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52EB0V20008912
	for <linux-phy@lists.infradead.org>; Fri, 14 Mar 2025 16:31:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nAXFePP0RbZzwbI0EAHZFL/N
	CowD6Nmqb6dIEWImErg=; b=RxhYj3ng91kdTOl5XwMSLsGAcdRqP8p3BePpYI0V
	bnYvgxR5Y8UwcELrNVfBo3lSfK2rNBPTanTFBJaw/by43r/1tJZBH5kIMm12duic
	7liDuiLtl5oQDTLVPBOqRLpZdkSjuX4mHhcsLlUSQYla9F+IRQuxXRBydGijtS6w
	wZQabBLQ/MCOJj6TfDOhSbk+1io0HvjaVH7YDhCr6rZXPUrthwkgEFTPn3CKlmzH
	byQY4xBAzZ1nmOdxn20/UWiEraA2D3heoKpLlmN54YnW/K9y+waKP5Qhi/a+jPWK
	rNHj7v7RP2cdXzRkLktBhlC4qUfTy/xdyGi21zi/fdM9Wg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45au2rhset-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 14 Mar 2025 16:31:28 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e19e09cc20so45429956d6.2
        for <linux-phy@lists.infradead.org>; Fri, 14 Mar 2025 09:31:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741969888; x=1742574688;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nAXFePP0RbZzwbI0EAHZFL/NCowD6Nmqb6dIEWImErg=;
        b=Y9fEy0Kzc+8t7N32c0dKfqH60EqsqnQDaoU5vWnE2mlxaiM8Ah8CrG5n8Y5stlSkgq
         J1HMqhdGY3+yIVuZjZYu+Wo2SSpjx0skxxZfDN2kTc761xmsN2lwO7FONtMQN1TwYO80
         YipfSxn+YGXQ+X/x++rw29mmSttT95WIVXBp6KfpBnK/9kWJLrIaCfH6YYHVjHdOQxcm
         SNsWobdL00f2joXFgNoswX0rxez76ayZXLDK9OjvoMOAyD3Y17yBPjF8UG1iwtxDv2NI
         AVUTYfhD2NeZyaRerw7UTkK7RUz1vFJ1H9xtQNp6tTxGeRTQIOMm7pXVtkhB88T50WB6
         7v5A==
X-Forwarded-Encrypted: i=1; AJvYcCUWai5OIJcjr9Fr0RgE0IQL88IeMblmVVoPSOKu7dADe6/ozf5JQPh+7sGstZAenujv7Bv5GVMF3yM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzXMs3qfzpB3KDQ+RevIKWE0F1te0zXlej9BLqzpVWri+pEMuY6
	0GKxDmCJStXlVOp7s6/6sftbI9pzX07ldxboEIogKQKo9vU+aVKrLbZMJJiJcmersC+aRCsjRia
	qrYM5yYCTYg3tvtPlKq8UMFUhE4DJpPlxTXbpESorh2leXcfdVxiDSs8ENQdomyyc
X-Gm-Gg: ASbGnctCrygvAVXOlTOh9dlVtcIAWNVDeE7yfU99bmZbhu7dFnM7cetn6LtaP2zps4y
	zBxdi6JZu22Q/ISHm5xWOuNi+X+3cOMWLzj4NB3diy8JC1Tty6sGm3Qu4wpq+hKP2Lwp0ljV++2
	rjt3KCYnDYxzmXGvEeFMRkksbwWa7fCUnwHAbwKbP2i857Vi4F5f/PB0FjZYMYZ2ET83w0iJNkE
	7FhQ+uI2rJtuI4THJ6WUyey4FQGE+8PA+L++pLuUGRXzEwFiAtmnLbVUUD2MWupAlnyntFKkgEa
	vuWTSTb2wIOKRA9pmzkA/WOG2oFoai2PlKAEq3DNYhaH5Z5HVlazav7uamNpqwhL+Lxhyj4lS+Y
	HbFA=
X-Received: by 2002:a05:6214:1c08:b0:6e8:fec9:87ff with SMTP id 6a1803df08f44-6eaeaa68e04mr43230786d6.23.1741969888328;
        Fri, 14 Mar 2025 09:31:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEtuaStWmz1o7nqkvqYgpWeef0Emh0DysLoQE7JRy9U4dzIkitCXsXSIo7FtqLbc+UHyWVpSw==
X-Received: by 2002:a05:6214:1c08:b0:6e8:fec9:87ff with SMTP id 6a1803df08f44-6eaeaa68e04mr43230446d6.23.1741969887995;
        Fri, 14 Mar 2025 09:31:27 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba8a951asm552080e87.252.2025.03.14.09.31.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 09:31:25 -0700 (PDT)
Date: Fri, 14 Mar 2025 18:31:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Nitheesh Sekar <quic_nsekar@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: uniphy-28lp: add COMMON_CLK dependency
Message-ID: <p3opci3q32xtxryfo7id67dxx2bhygpqjptbldr7a7cdjm3tdo@25smzojqguo3>
References: <20250314154915.4074980-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250314154915.4074980-1-arnd@kernel.org>
X-Authority-Analysis: v=2.4 cv=D6NHKuRj c=1 sm=1 tr=0 ts=67d459e1 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=JRMrfg_3uorDYgpOfGEA:9 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: CTUZrS5W6aYmmSvRrNZkQULIxV7P-gEd
X-Proofpoint-ORIG-GUID: CTUZrS5W6aYmmSvRrNZkQULIxV7P-gEd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-14_06,2025-03-14_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 priorityscore=1501 mlxscore=0 spamscore=0 lowpriorityscore=0 phishscore=0
 adultscore=0 malwarescore=0 mlxlogscore=830 clxscore=1011 impostorscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503140129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_093130_396731_55B2E3D8 
X-CRM114-Status: GOOD (  14.87  )
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

On Fri, Mar 14, 2025 at 04:49:10PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> In configurations without CONFIG_COMMON_CLK, the driver fails to build:
> 
> aarch64-linux-ld: drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.o: in function `qcom_uniphy_pcie_probe':
> phy-qcom-uniphy-pcie-28lp.c:(.text+0x200): undefined reference to `__clk_hw_register_fixed_rate'
> aarch64-linux-ld: phy-qcom-uniphy-pcie-28lp.c:(.text+0x238): undefined reference to `of_clk_hw_simple_get'
> phy-qcom-uniphy-pcie-28lp.c:(.text+0x238): dangerous relocation: unsupported relocation
> aarch64-linux-ld: phy-qcom-uniphy-pcie-28lp.c:(.text+0x240): undefined reference to `of_clk_hw_simple_get'
> aarch64-linux-ld: phy-qcom-uniphy-pcie-28lp.c:(.text+0x248): undefined reference to `devm_of_clk_add_hw_provider'
> 
> Add that as a Kconfig dependencies.
> 
> Fixes: 74badb8b0b14 ("phy: qcom: Introduce PCIe UNIPHY 28LP driver")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/phy/qualcomm/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
