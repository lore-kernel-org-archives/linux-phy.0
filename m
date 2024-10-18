Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 923E8D30013
	for <linux-phy@archiver.kernel.org>; Fri, 18 Oct 2024 14:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VqMjck6R9AEShBWYrwICnGHZKrfJmxYE7FIa5yJ6EJE=; b=rIajvklqGkjCCF
	1E/P9xKIUtzb06bkJ2jHUPwTdffU9qjrc1Syccv2ruU59SAhEhCDy0bJm71CKshavvCJEz1ckA7lz
	baiJ8AyybCNLttvisPCr46ik0P2deY2xmyQdCc+QCDy1L3nJWoIoNDyplSF23JyjYtQcIdHGfZB1p
	YvpDuQPFtb0IfLXd2970/7ZBg3P83BwGZs9wdJMj582UdDiUeT3lE41kv6QsPGHEFYn3WeD5kV4cr
	+HzCp5srQYSHu3Tw7nfD6rOCueof16i9PQSjS+XzZo8JtzhDwkIgXQj86IlgxLslLM/pO5cmZ7y2w
	LME7f6EBXvDUEmBjhnjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1nw4-000000012N1-0sBt;
	Fri, 18 Oct 2024 14:26:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1nun-000000012Cv-1udn
	for linux-phy@lists.infradead.org;
	Fri, 18 Oct 2024 14:25:19 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49I9UDgB005924
	for <linux-phy@lists.infradead.org>; Fri, 18 Oct 2024 14:25:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=950Gln3oRkg1xxQo2JyWMANI
	C2EJJqj9QDHlhqTRV1c=; b=KZRfPz9YOGZfb09zR8K9MKwDk8XUiCKlABimkDHO
	5t6MwiYb0S+ZX5wMzyunKdR8vZ3uJuyQeOGZa59HyTDmqkoh3Y+D9TMPVu97JqUT
	OnTIXzLW//qAJMjo5PJO97Ae4aO7P4tpN0jhUvMfOQIdoxNjcGOMR/FFPoOgXiq6
	+6CXBeIV6s+vV+rMhA9LHi2axH1NCzgwCOeByt9lJ1iMJHxBjT5eqEuqvcxtWrdC
	QpQoZqMyguYuP5w0XvFi61uHQn9YMfDNP6JbDZ6EFzZj4ChMqKgCSCjzK/xngW9U
	t+TDKaIt8Ey4C8Hnd9uDF94zVljBYeqQ9lW8iEbaG8Bmyw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42ajm5efdh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 18 Oct 2024 14:25:15 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-2e3d74e5962so2526888a91.0
        for <linux-phy@lists.infradead.org>; Fri, 18 Oct 2024 07:25:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729261514; x=1729866314;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=950Gln3oRkg1xxQo2JyWMANIC2EJJqj9QDHlhqTRV1c=;
        b=Atv724+Z3Ax18ZQJPomeEfPJljp1kX+T+0W7qstCqjPdXPO9BoDKgqjfOm9NqBCeVw
         makDKiq2w8C7gDUfPBasCAHQXgnNipRZjZtAE4NyeLTwQsOeh/r6imiMaGjePK6k1mt7
         GjYlIh82mlccYrGf5p/kTwRaEsnrm25MukZ7p0fhVWmuT1XwgprP/qdwPBZXml4FyrfV
         qu1wJNKTdhkgF9szs7VNeC3Mr0MoK58iTXv/2+OsVpSR9pEKS34I6nfLUBphUGhC6WPh
         O7N2tf0td/aEty6a0uUAbqkxBn7RrjotEGE91HsV+aTb7ILu0g7aZnSA++/PRWqz39jZ
         HASg==
X-Forwarded-Encrypted: i=1; AJvYcCXfAojus2PHV/VX7S9hGchxc8ocrbIkw/HjvjBVrJrOTt5uYErZ1zWPJA6fSh5d08kA7Gndwd7sfy0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzsn0I6H3JiFmxpdYNbgAcdhPXYquAkdp5xc1AM5LoL001lcKWP
	JzNUQcl4Ym9LvL28L0jfox30tSZt3vREYCQxuUQGJWwaN4FKe56esDIQj4obxLtuXJKyDhO/+gv
	eRYX74z2Ow03abt9gu2QpWadKkev9YzZXI79QWMW+R1SpF7Ui0iWxTmOoytQJHr5B
X-Received: by 2002:a17:90b:814:b0:2e2:a96c:f00d with SMTP id 98e67ed59e1d1-2e56185d15bmr2906158a91.21.1729261514645;
        Fri, 18 Oct 2024 07:25:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGkUHVLnMvv22CyRp7iu7KBlZgU4Zl3vVLKMotZZtrb/b1+LPaa7xhxw91j8nR5f5tNmQ8acg==
X-Received: by 2002:a17:90b:814:b0:2e2:a96c:f00d with SMTP id 98e67ed59e1d1-2e56185d15bmr2906118a91.21.1729261514252;
        Fri, 18 Oct 2024 07:25:14 -0700 (PDT)
Received: from hu-bjorande-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e55ffd3014sm1934643a91.0.2024.10.18.07.25.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 07:25:13 -0700 (PDT)
Date: Fri, 18 Oct 2024 07:25:10 -0700
From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org,
        robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
        sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
        quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org, kw@linux.com,
        lpieralisi@kernel.org, neil.armstrong@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        johan+linaro@kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH v7 6/7] PCI: qcom: Disable ASPM L0s and remove BDF2SID
 mapping config for X1E80100 SoC
Message-ID: <ZxJvxvxlHuQ9Zze5@hu-bjorande-lv.qualcomm.com>
References: <20241017030412.265000-1-quic_qianyu@quicinc.com>
 <20241017030412.265000-7-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241017030412.265000-7-quic_qianyu@quicinc.com>
X-Proofpoint-GUID: Z-kjRzMAhXnYh_Ausi-38H8Pxs0C38R0
X-Proofpoint-ORIG-GUID: Z-kjRzMAhXnYh_Ausi-38H8Pxs0C38R0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=999
 mlxscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 suspectscore=0 clxscore=1011 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410180091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_072517_533849_91F27B9B 
X-CRM114-Status: GOOD (  23.83  )
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

On Wed, Oct 16, 2024 at 08:04:11PM -0700, Qiang Yu wrote:
> Currently, the cfg_1_9_0 which is being used for X1E80100 has config_sid
> callback in its ops and doesn't disable ASPM L0s. However, as same as
> SC8280X, PCIe controllers on X1E80100 are connected to SMMUv3, hence don't

Would be nice to document the connection between SMMUv3 and "don't need
config_sid()" is because we don't have support for the SMMUv3.

> need config_sid() callback and hardware team has recommended to disable
> L0s as it is broken in the controller. Hence reuse cfg_sc8280xp for

I expect that config_sid() and "disable L0s" are two separate issues.
I'm fine with you solving both in a single commit, but I'd prefer the
two subjects to be covered in at least two separate sentences.

Regards,
Bjorn

> X1E80100.
> 
> Fixes: 6d0c39324c5f ("PCI: qcom: Add X1E80100 PCIe support")
> Cc: stable@vger.kernel.org
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 468bd4242e61..c533e6024ba2 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -1847,7 +1847,7 @@ static const struct of_device_id qcom_pcie_match[] = {
>  	{ .compatible = "qcom,pcie-sm8450-pcie0", .data = &cfg_1_9_0 },
>  	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &cfg_1_9_0 },
>  	{ .compatible = "qcom,pcie-sm8550", .data = &cfg_1_9_0 },
> -	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_1_9_0 },
> +	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_sc8280xp },
>  	{ }
>  };
>  
> -- 
> 2.34.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
