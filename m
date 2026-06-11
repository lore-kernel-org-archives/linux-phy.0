Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5957FCD8C9D
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 20:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gh3dCBP6uhU7UUI1JgfsC+PKLJYYUtJd+/h5Qy+vxTA=; b=HD9C1bvcM2VbZi
	2UzCaw0FObPXsL4+uTyc7Y2vx4tbB0eqJVN8GdQxKHYPchs4B+Q/aTb0QM/rZXs/SAUFBm83EaUaX
	ZIks3MbHtes+6BM6zLEhbjCtWbas2CroLrViuKk1HGVKCd4jOEeKj6PX+TFY3hYqhTkctG2D4WFX8
	1WCZmSUa/PctMcJIFqjWZwTZOJGTIGcGZcSZlIIUEwblr1Hxtq+RQoWVD2pclHIsBOnxBOQlHNzrN
	bgA/sddy1HSYgJNN0srCeJm2fZFS+X+G2XSxvj2J86wCVANhM7QrHqpCQFDUYgbyIU22QAacFqR53
	58flnxonJjiQN2oa13LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXlqI-0000000A29e-0W54;
	Thu, 11 Jun 2026 20:17:34 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXlqG-0000000A29I-3OWV
	for linux-phy@bombadil.infradead.org;
	Thu, 11 Jun 2026 20:17:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=W9wdom+aRQF7jsN+TuBvQ4aMHYM7LB4K4EuWK4s72GQ=; b=AbaVQwqaknm5KRGtnWtT++alMh
	/pK+DtQzDhTe5eAHfc8QXSjCzEZDFdRzQNSX9g4C5hRw7Cz9wneCQA2HG8HbPWyYaFX/0PdSA/4CX
	L8RBDtt1NBkz++VmjRJc2nkIKoBrJJ6GzfySVyC2m1fbvDGnHrbHwaoPWZ6/mA9YjsevSAcfKAzZN
	jtwrnTB1Xwomp1pUfSXDsu0F4U+bvTC5f8E6/xcFE1l3OcC67flq/AzJeAWpArj/SbgyybtOCFe4q
	G07PXGfInguT/vGujINrJPwp9Aae4+tjmCLJRvgSZAYnOmVpA/VCeOX/2QzwRZePY5wNId2IMrfs8
	WGNYlN+w==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by casper.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXlqD-00000002WyC-12xy
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 20:17:31 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65BJ3ckG1427229
	for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 20:17:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=W9wdom+aRQF7jsN+TuBvQ4aM
	HYM7LB4K4EuWK4s72GQ=; b=dNoJbT6c4YJCUHvSUJcSwLyni0Ks1N4MiOmotQ54
	5XoF514zeCD+ViI9mrpvqaAioJdXmzMu4i1AbbA6S3qxIeVvlImB0TUG32s/jDcV
	COtmZ4Vo48TWNlE3OtzShOP4IFdkunRl4Uyrct7HTuuVke0agG0eA9XSf/mrPMb0
	gPFMgPTNjwFJBUtN6E8mHV6+hRZEp01cttRIA2gy6nZNzdjxMG+O0LEEA0vLwYam
	rp11DYNZe++mcIo6HJz33SGSju/lgZOsJPxfgZdJSiJPxCLiPEtIbZ2Z0+Rm9DAy
	RuESzTgEPeYjHPIH0qulI+0nmk1a9fpta/cmYVIWbQtwHg==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er1xcghqf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 20:17:25 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-6751db2792dso98808137.3
        for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 13:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781209045; x=1781813845; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=W9wdom+aRQF7jsN+TuBvQ4aMHYM7LB4K4EuWK4s72GQ=;
        b=DAsKAa9iKpB8iDbewb59sP5Q92qyG+nKJSPk3fFosH26AGKQ4xFI1NjS0qvcbTscZ4
         480r5IPur3qLROFn+htZ2zZekhvuUPnoX2KxzJoMEDdfHVmu1Gf5VIEhr20pk01bU/IK
         zm3TLT4SOTlB1CJ8jlQGzSvcNVNk5K348i+RR12L6E4Lp8hb7ogu66xFhE7X5aybDMoO
         OVUVqbLExx8QW6O568VqkGSN9hpqX8Sf3p4hAx1A12X3rwM49vLlEm9LqRbFfwZd4acg
         Q3GMnndwCUPTVeeec0+BBcYEWEjrwGcVOod8k/LAm1IVdiSXAOunwUCCMcxyJ6K7A/NG
         3tCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781209045; x=1781813845;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W9wdom+aRQF7jsN+TuBvQ4aMHYM7LB4K4EuWK4s72GQ=;
        b=k9WGOp6EBpavU6w8vH4Q0zvyzZroQVAVovdVcCkVQl7oucmA4ft4R6N644BWPsMrmd
         /6JytAjx7/nSi12X2nNulb2FjlQ5inGvk67a/s8pOjVWZoEwgzgQUM+ZD2najRbnPaUt
         TOXDInUu1SBq73EySACxaqpJRw2OrkyZPOtQLHdkRjXGX1bS9xKQq9WeDJT9d3U1z0Py
         tk/nT7eWtMjoqJRvySbbD+1o99CxM78tT6KYcqhgaL3dMLpRjz+olTySXfa/GFbcu4cg
         Vv2aEhbA9QS1nn5YjB+7m5xHGrUBLDBebh2BRG9W0dopjbRYHr1D8xmn8Hs3q4HWpZjr
         9n7A==
X-Forwarded-Encrypted: i=1; AFNElJ+741kIr56bNvfurHBReHNC6SQuSCcYiXZsbCd+otkx5vtT8BsMqFw6lPhYnTAzNEzrUmLM8x/lOUA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwbV1vJnvbes4ZTdcUina/7AqvMePHmT6YsWjsS4m9z4nEPlBpx
	oMqiPlVoQxbY08SENVvUl0RaL++9hIPwYb9kGoBwbaKsGdSo/zzE5moLXfjCkTqGmRiMbcsf7AI
	f83tvHCztvT4EKVtDMQHwLvjI8YKsblFosycqWVJOMEjK8y6gdkhVp/4F7izAgu/VhgnB1h9/V6
	wB
X-Gm-Gg: Acq92OHbXRoWYFEkDxB5aVlUjeiL6RW/bYpyILd45jnJQKcnwx2N7VnwZzo6XdHFntn
	uLFQO2GZyaq7jBfGe3UNtAk+W4nHoMzpqmd2pOyW+Z5UA2tcDZgfERJzWMtWAjt7HpmNUxsKUVS
	uy8SalrbjclqwfCWvPDllJeOHDmCyNcfHRTVA1Y8eKsCsEaRjKl5lYEtHbylES5LAWOZdvAr2JW
	53NlH3bvjy55Ff2AtQSkyuKmI4kq+42mTR0hJXoLQrb5eLB8mWklz1lbByYQ8RchDEFbkVkfAL6
	pnQwWLf0qqQ40w3Cis4lUFljDthD0Jf+PdNJiZcrJddr/uY6PY7ag8G2OslT49UwWxUS5GezrqH
	7fhwWJRzPTFoJClxmu5AYMoWhuUaZbtc+QSVtzKTukwsSu+61pZWevF8dhd1UfnctPny/D8TeCc
	InpmkvsUP67O8pQBEeEOn+E1+vwOcMfvw5IGY=
X-Received: by 2002:a05:6102:3e8d:b0:659:3ae:e6d1 with SMTP id ada2fe7eead31-71d5d99fa42mr3015706137.9.1781209044816;
        Thu, 11 Jun 2026 13:17:24 -0700 (PDT)
X-Received: by 2002:a05:6102:3e8d:b0:659:3ae:e6d1 with SMTP id ada2fe7eead31-71d5d99fa42mr3015674137.9.1781209044310;
        Thu, 11 Jun 2026 13:17:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5ad2cd966f0sm114597e87.71.2026.06.11.13.17.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 13:17:22 -0700 (PDT)
Date: Thu, 11 Jun 2026 23:17:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Subject: Re: [PATCH v5 3/5] arm64: dts: qcom: Add Shikra CQ2390M SoM platform
Message-ID: <u5uvhewvzkbqto7wk3g3iaxnjijcgelifhlan4shbkopjul4qf@7fzwcygqq47f>
References: <20260611-shikra-dt-v5-0-103ed26a8529@oss.qualcomm.com>
 <20260611-shikra-dt-v5-3-103ed26a8529@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260611-shikra-dt-v5-3-103ed26a8529@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjExMDIwMyBTYWx0ZWRfX6rzJW0EZ0YHy
 7QtwcxD8WMl+52sRTWeQBy5BeoemvFvWU3qOaqCjhrQL/wmW+yccY8UXNTTNptL0lgidBJeDmM5
 3XRJ/lpt+2N3v3WGpklc2WJqym6DaLYsdSiIjq8GRv+kooOCrHYj21Dd70PilopnC+BTtH2z0AW
 bGT9p2O+4FP9rCAb14kcY0CqZ8PR3QhOhmuCtDH2bpY0h05fO/mm1iA6984u12xyv48lb5gJBOZ
 anVAmnLbMN6+zj9ai4TKYj2IIydOZNWLYBBiEU77hRhqKwx4OLvmxCEKTnF4tO8TOjPGsEHK73M
 Zla1zYpdUPMSZJUhitDc2edGWey3xNE5+jBlJC0fkBBo3pvUM7Ww80ed63QX/salHZJeEpy1eTD
 9L/8LM/+NflAcFjI/Wo+8FBO2Py/q0zVtDIVa3qTgJxFno+tGc2JjI80wj8lwlzJxk/eIbgHVr5
 fxuMNrKrhK0hr9ovEQQ==
X-Proofpoint-GUID: aemmfoQ7zhumKWut1VWrOUGhdG4j9CEL
X-Proofpoint-ORIG-GUID: aemmfoQ7zhumKWut1VWrOUGhdG4j9CEL
X-Authority-Analysis: v=2.4 cv=NZPWEWD4 c=1 sm=1 tr=0 ts=6a2b17d5 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=djcwQD5uGQ3GNs8by1sA:9 a=CjuIK1q_8ugA:10 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjExMDIwMyBTYWx0ZWRfX2NZSVhtgcwEI
 iEtA3I/EmGOB0qAeIW/u5uRvJBgfRvdfnlNMTBbSzPC5jNpF5MAtWm/iyfs4FFoTi9peh6aa84R
 VFWgjbKXR6CeUoMEerWCQ2z+NoxLC+A=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-11_04,2026-06-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 bulkscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606110203
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_211729_940983_C85269B5 
X-CRM114-Status: GOOD (  12.53  )
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

On Thu, Jun 11, 2026 at 03:40:10PM +0530, Komal Bajaj wrote:
> Add device tree include for the CQ2390M variant of the Shikra
> System-on-Module, a compact compute module integrating the Shikra SoC
> and PMIC for IoT applications, designed to mount on carrier boards.
> 
>   - shikra-cqm-som.dtsi: Retail SoM with modem (PM4125 and PM8005 PMIC)
> 
> The DTSI includes the common shikra.dtsi, adds PM4125 and PM8005 PMIC
> peripheral definitions specific to this variant. Since PM8005 regulators
> are controlled by rpmpd, so disabling the pm8005 regulators.
> 
> Co-developed-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi | 156 +++++++++++++++++++++++++++
>  1 file changed, 156 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
