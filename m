Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E24D4CF6BFB
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jan 2026 08:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VqgV5a5EsG4Gek5PGorAkQMDfBVBvcx9eOUmgPnDjp4=; b=4j9rDDfFNwERCq
	IRbO0UUlMOv8L8bb9gL24aHd10nOb+mFI8HFJZIEUrHlkU1MEkwi87NdwD/kPJq4smBmdpFoU3jja
	fYsPla0LVpR/cr/zE2p2DR0OgGpCt5AbhoLHBNKmpQcTFVc2eGj5tvLaUQ5VJfMvSWnkr8IJkQ/NP
	9ERCHt9rginGKRLIax1KuFM5WFLXYwCxH8VjxH7BG6d7Q0nRTGm8S8Dfm2+iZBD3KygGKpviNK+6D
	FRzZzwxRsrmtGJcR5eaKJh9/k3mWnUP7J3Z4ydr/6Q8KKIdzG+NPvcMei3fVo3aikyAVe4KZs5Dg0
	J3HR1xIKqGRmvGl7FazA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOiA-0000000ENcP-17oD;
	Wed, 07 Jan 2026 08:16:12 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOi6-0000000ENb0-1MoE
	for linux-phy@lists.infradead.org;
	Wed, 07 Jan 2026 08:16:08 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60743Tsi4091247
	for <linux-phy@lists.infradead.org>; Wed, 7 Jan 2026 08:16:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Qm5MJrdnuggNNNAB6F8dt9I5
	TzWW/Oz189rKFUnNs0U=; b=WYkU0qocoyMYrpP8b1PRLyQ6jyqcNuOptcrZYj33
	1fxfO3T5IGMi3Se5aveHkB0UzjdiHwynNRfKseiSx3U+z9gixYIHRfFcgb4PZ1Sg
	1DBiIyRWqVJ9hZEXQqm3UXbKwY6VkkmadP2uMJ+MH1VCdMedLPhCuKOxsHlmgpEK
	PrEO1p/pTvbXQAIPbuctuvl0gcx5DY+ohleduZJ7gF2OHBPV9VGNcZI7Qt4gyaqI
	Ff74KFah0wiFEKA2ke9zU3FSBjeOSJjG2Jkymp4KzmLlvwTL0t3VBXLb0I9FD7Fg
	d1MBvazTiCqxhLrycb9JeyiNp38uU/Pl2vB77NBaXnrg9A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgyunbnea-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 08:16:05 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b234bae2a7so479672285a.3
        for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 00:16:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767773765; x=1768378565; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Qm5MJrdnuggNNNAB6F8dt9I5TzWW/Oz189rKFUnNs0U=;
        b=RjNLnNusn6ojduBM0yG7RrRhJhiyJd5Kg73DaAcxkXWwKaUNXzgwZEak5uxJWKZTSm
         K+KjO48RX74kHYD/CGq89FcrQK5oy6Iq3KdKfb54saWKV3MNk61VCbiwMsf0hBFf6M3q
         K+6vA7VHeWAfVGkHHC6I0D2K+jQbU4jg4b/OUbwbyQS5+4e1sAMTOcQeaMGksFJlZZ9G
         fG/AQ8lsIdJNZtMV5ToicEJzZf9Tf+qlMC1ZsnTT66jwFQHEhn64XURFlN1pckWUDjN7
         vEuK7I2QkfMELLqY+N2sFMKn1EBzR6TZXOKIzAToigXGKV0NqAloyhlPoWj82I5qi8yV
         tN3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767773765; x=1768378565;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qm5MJrdnuggNNNAB6F8dt9I5TzWW/Oz189rKFUnNs0U=;
        b=N7IaJWU6UKxJnuLMkR2GL1X6bJEyvSwrQM+ks8GBcgSOjz4q9HG7a3nEM5bNq0H0UM
         9NdXdo3aeOLeMpDCdkFHe/rRRI1PMR6Dpg1Z4sUSOl3lJ97gOrfKjWthWCXxpuRWAnwY
         lvZg9z5ryl5JziAApvWvgzUPS1IW7WJimUWRZ51nmeERNkN8sqzgCC+F3T2aNuizJpy9
         F6sdomVOEQUxxJViKC5j7aSXIOQFXPt9ooa+lu3rZ3ewcxWK1tTa0dWikXxrB7t9/1gF
         RlMO1U+bvGBR7mRvoQC9vzOLotiYn3unmTGwK2EiequomCp8IMFLwkTC5WQd9+TnE9Cf
         yIig==
X-Forwarded-Encrypted: i=1; AJvYcCVxxFr2uOUN5Gn6PQDRlrGtKeb+mkUdLQdgnGuz7Hnh7YhSEkLteVrBYmoyWOhs6ngfk1PrezZlvr4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxhPhk/c6YMD6NNw6/V6ycUJ3l3+DuHa/VRTfmvc/eAeVUPUojL
	2ClpN9rivPVA/lpgenHgrqtWfCU7H1gQvK6HSP/pD8KRbiGV2xvGDW6NDDzBFSxnBoqFpC42LwY
	lVM1tXIhYcctOBXaH4JdLy/0xEA0YfmeQ3rihg2qoKny8Aohfu83i4SUu1k1uUJJK/v1Z
X-Gm-Gg: AY/fxX4b9w4MSTXSGJnr/MS5J7GNKXu7tTxkGnRGnfGy3FKZf0An2kriuGIDvGf+7Q+
	bnmm6yA7zrqxuMNoV0BKajbm/rEC50X3MN850eFJ+1rvSVgfMCBBUaAj66FEdNAXys0Zuf0hKSD
	FesHhYnXXlIc9omXi1GRcVJs2QjiO0itFqplxTPkp0B7vmf1L9R2UvAVP4//Hfd45umq67NvL1q
	AE/dr40y8nuBEklubJKtAWrZ/tWbeVFGH/a/iRVvidr7KBeXxyWlz+ayxKtnOhA5Zs/A4fVWM0/
	uh9Bwj4hkkrMJC/4bJl/PB0LcxRRKtuP3yigO8AzqyO99JZcycEpjyYz+jUkznMW0FRxNVb40bt
	hHH2+r99bOQ7QIqOF0JZJpzdKYg4YR/YRS1E3+McBF33vH57kigEas1Hv/PBCyqLhgvNuQwQTls
	7EFFRd+ZOcse5rECiQRs3jBB8=
X-Received: by 2002:ac8:584c:0:b0:4ff:b18a:104b with SMTP id d75a77b69052e-4ffb4958e3cmr22071041cf.23.1767773764775;
        Wed, 07 Jan 2026 00:16:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHLeBGot7Id1we2Y9b6hS91s2FZEXZi38CtpMmDPlfGWQHJ6LjX4679mu2YzAgFfrJeuO7bxA==
X-Received: by 2002:ac8:584c:0:b0:4ff:b18a:104b with SMTP id d75a77b69052e-4ffb4958e3cmr22070791cf.23.1767773764383;
        Wed, 07 Jan 2026 00:16:04 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65d0d108sm1137893e87.27.2026.01.07.00.16.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 00:16:03 -0800 (PST)
Date: Wed, 7 Jan 2026 10:16:01 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 5/6] arm64: dts: qcom: milos: Add UFS nodes
Message-ID: <jbunqx5xj4kff7qxajgu7lszsmkpw5cq2bceuz7d2me3fkydph@k5b7aqggxb47>
References: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
 <20260107-milos-ufs-v1-5-6982ab20d0ac@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260107-milos-ufs-v1-5-6982ab20d0ac@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA2NiBTYWx0ZWRfX8DdV60dJoCL8
 kiN6Pa0mNpot5FVrJHykhUQXV82pKU9bkg3wsNoVwjfUKfSXPWpBrOB2scsfP9JCHGsZ2wDj3nH
 iuxRg+XpoekXM5o9fkHa4DyKkiUkcEIvQCsaZFP4B4qklmLVtJesNUmBMayZ2CHrHynGWbNZsjo
 hDhqkCcwHE64Ia0UzX3dPqT+mzhpaKRzNkLUnB+OgvmtfZBt85SdMcQlx7ID3QShJfQwEHRvg84
 Y0kQ3EmM2JqtoE1hE0Hc6MBDoyYbxJFXN9A2lCHChO66SVk74Tp4V1TgTHieY3cnoSGgPW8StNL
 D2wipbOvqECEOg/dxT4N4pcANfQaXjQJPx/WCOZVDqOTqUAnkRnQ9njnf0wyE5Rxc1ZPhk0ndqP
 IdKksghIaXIgpzwWhrD4YrXSd3xq896h5bw0dWwDbt8i8HxNf9UjGQk9EOueB/wa9duVWrRpKCL
 nujWNVKiUPtlP2WVjow==
X-Authority-Analysis: v=2.4 cv=YqIChoYX c=1 sm=1 tr=0 ts=695e1645 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=PvTnMlK2driW4fpN2xAA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: m5mehDwLRM2hCgaryzGtuM0BdG8M_4Cm
X-Proofpoint-ORIG-GUID: m5mehDwLRM2hCgaryzGtuM0BdG8M_4Cm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 phishscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_001607_431533_146AAC03 
X-CRM114-Status: GOOD (  14.40  )
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

On Wed, Jan 07, 2026 at 09:05:55AM +0100, Luca Weiss wrote:
> Add the nodes for the UFS PHY and UFS host controller, along with the
> ICE used for UFS.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/milos.dtsi | 127 +++++++++++++++++++++++++++++++++++-
>  1 file changed, 124 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
