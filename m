Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A52B1CD98C7
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 20:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k5UVUW/WY/LN6kHjUxX3HS1XeMVq48D9dSJ3mwDScFs=; b=2iAq/RFL9E4OXA
	wEwsrS84zopGT+xWeXZHVZAtr8H/WHcvmOyAaZnAxoe4v8VonRxfn5u4+Lgf2vAbn5SqSh7LioRL9
	WSbWBKPQsnmxN0vUXy7Q8Z77vrNNiYzzaZuQJSH1X1E+nF50WM6eXbHkH/yiFATekeImzdhp++4Ii
	AkMTXtLqZESxzcp8zrNimHdiZiY4+xv1qmEP+nuBwBoUlffHeiI5kgkLq+JErG/SEiXwcIAmxXlVU
	ouVWhNDWh5zMyeedaC0TZKmut1DcWDC1RRfaEMZGZ0wKX4orFy6qgDKqSgNSEacteLFgQdV/+ft9h
	zbDNdyw2XRc+BhR2wP0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXlrN-0000000A2HM-1gxQ;
	Thu, 11 Jun 2026 20:18:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXlrK-0000000A2Gx-1UZq
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 20:18:39 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65BJ3KYn1426820
	for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 20:18:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kpV9CXhTZP38LIhNRCDWw+KJ
	MwHc9eylFcIk37TdED0=; b=I2O7Ibk/kfARV7iSNU8AauOIOCcRi4uWwE5wDc+n
	OFmOBKUA+l1tzpdCFuiwcOrabPjVhzcYW6oQVkE7oBCmg6t/+vV43SJWi2vnT3z9
	uNLWiirhQR5UWJw5K8aGlUW6+eUmiyv0OD+MhU6KBhSvH54oJmzpkT6hZya3mTbr
	rgnX9YeBvMk4Mip6hYnMbEKfCLH//gRbTPBZdDqUBiqci5H9FHVY/wh60i4sQltz
	cJsYfVEfuQXBrG60RoJtyM+kcybVXP9ZdcY2pg+O6uZeYRY/4Gp4dMCTxSGYUWu1
	GDv2za2bdmafr0BvM2sYVRYJQQkGLpqkqpD5hKt938xZiQ==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er1xcghuv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 20:18:37 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-6cfd2a26ab0so71171137.2
        for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 13:18:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781209117; x=1781813917; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kpV9CXhTZP38LIhNRCDWw+KJMwHc9eylFcIk37TdED0=;
        b=eTnuDqtmRysUT7gU/n6GIIBTxHwLplKFkYTSqUe24t7PUVq1Nyx9YH5rFTLt5PxGdB
         88UCnex3w0rBgZOYE62IuP0VBHQxW7Y9ofTOe4AHX3R9X8oiusqMb3DBt5kDnXp6NZ9q
         50f0j8QOiNvz922SmSL0UNwyDjaTJhyxFsTrPZ8owS+NETKV+9On3X6Vxq6OVwauOqAD
         oSU+Ikax/qUZlwCZkOYBdytShyjEgLCgO0t838WuKQmyFqABsyJILPMcHJvCo/7AaDw4
         0FUnfGw53V9YOyWseLdxi2QF413hFGSYdmzIeo4n3aJUSRMeXth1jvOUMH4FvhkYBjuu
         5SCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781209117; x=1781813917;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kpV9CXhTZP38LIhNRCDWw+KJMwHc9eylFcIk37TdED0=;
        b=dAW5W60VFGA8FkdSsxabLTiEoHpx2lu5NaRgMlHNMbYBIFqVeUA/UkxfJKycPr06vj
         acjfl4go7f2ENnCeMQfjm5OC4yDytRS+L6t4f7C/BNIIcR7evT8Hc2a4E+5wWELRHvA0
         cxsC7/OasF65rGSJU/9MhdB4jkep/kJqfANhiWZnY5AMkJkoI0TV682O/U5AoGzzgyiQ
         RmFQE5VnoCy4jpDV5BK+6Wti70EndnODi/XeIspjk8/Rcdch2yGGvIExUmRM82PFP2Mh
         cipEBBbdopJzHGEAiMIJzI9HPAnfqM1Ui4rE+3tPkV3rb3JGO5aWAZYAtzS1rz842bwV
         4Htw==
X-Forwarded-Encrypted: i=1; AFNElJ/QPcPJ9+8pae4TYKERHmErkHFuCSn/a7L585cn1xIXY4g2+B6iD/vYSNKMSg9HBbiBuU3Ol3tATMg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yze5PlmyQNFeBHNmeCIazESs81h9PHH5y3wWgJFHVo470xVeN/N
	l0C/gJ0yna0FjfxPrVh0N9xnFV/fBzAxWgkKzhR/rSles0LVcMO6LabSFbBXCMTurEVmABl2acS
	ZuSKicS+jG4sdHa/6xM4b7qnI7IqMupbsFfAF012azwDe3VQZeFLV+WOJIOJjFgH0juMP
X-Gm-Gg: Acq92OGpx+q6Sb5qWMHVLByLu9m69X1DyLP60nwNI+SIlqiU7PrNw/jzOAIsfM8WTZR
	SuO/tFaxd6Yv5xXFqi1/hYPwi2QX72aJthqDiqJWhVgKDZjM8uuiQdiEoZKpMEuIMX1a+yG480b
	w7zT3dN5fUaTS35vmncGB3JxCpG/XXXgHQdHRxnO1Ojsa2BDle57PCFCNO321u70tdzZv4NiE9b
	G7wiBZh0pgZANhwGGMafYSg7Lsku0vJ2NJ37KHbUpNq/+Q5oPVa80AfQlkAXyBgyNjicNmbaHmO
	0n0+69WjLJDna4PthSFu/Xw2RXuAEcDY0gW1Hob7RKIZ8UIweyqymvy2peGNj09l94DIfrNIiA8
	XaWiU/X7xKTXYifnuCOUGJIZoSZmQRD+uprfCmXlkzC+vtIGKlFjaWbTM1FQUGcG5TpeD6rtEA3
	YyjMwhKXJh14haWgf0CpndXUMO/y60+L3FXHY=
X-Received: by 2002:a05:6102:512b:b0:634:d42d:15e2 with SMTP id ada2fe7eead31-71d5d19c0d6mr3018860137.26.1781209116660;
        Thu, 11 Jun 2026 13:18:36 -0700 (PDT)
X-Received: by 2002:a05:6102:512b:b0:634:d42d:15e2 with SMTP id ada2fe7eead31-71d5d19c0d6mr3018829137.26.1781209116202;
        Thu, 11 Jun 2026 13:18:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39929f5683dsm197481fa.31.2026.06.11.13.18.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 13:18:33 -0700 (PDT)
Date: Thu, 11 Jun 2026 23:18:30 +0300
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
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
        Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>,
        Xueyao An <xueyao.an@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v5 5/5] arm64: dts: qcom: Add Shikra EVK boards
Message-ID: <mxtofzlu3nc5ybmrzyb5n5nijujxk5c6dx3tjajdzaj56asyfx@25hmlxhmwx7h>
References: <20260611-shikra-dt-v5-0-103ed26a8529@oss.qualcomm.com>
 <20260611-shikra-dt-v5-5-103ed26a8529@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260611-shikra-dt-v5-5-103ed26a8529@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjExMDIwNCBTYWx0ZWRfX5rCVgabYQxgg
 zvPvx6WOyQ1KC8Wsr7EywZTusfDMEM6sZs55C5OERWD+n6iH+5OjE6GdnF+DZzx4Hqx7fGjIBfk
 3PE5rN+I55SXAlDqbs22bTB5CgVVYko1/N0QO8Bxb/JnYdgeni6Vh+7QSGAr7OJrPIEYBjMVcZS
 Has9u+yOhG1za//oPOt7Ru2FbIGkQQcHsMN6cRMrRSarB/yDEeVrmms2TFvNOBT5BE1GekvLDHt
 TKY7TorEPTqFdwNDRuH84lrxzzN6AVidZiBjjfQaMscRImtTvO+ThWMrRLSGbTCiXjY++CznSjA
 YMvQ7Bqxr9BiXh6LpCAQ28W/Smgpar2v5ANrAn0+YMNvrkPNpLS5S/zm3q4FvrsoSYk7nNM/TVc
 I4DmVcB0m6E4q7o67mLh7gvUBGGQ95fqSRz2LG02piSSEED2jcdzV6AZAuXjSg3bKlOey5bW59F
 aTVcoE38IClb3o4RICA==
X-Proofpoint-GUID: 39-VJJjd7Te9byew5msY-Hn3xas4BuK2
X-Proofpoint-ORIG-GUID: 39-VJJjd7Te9byew5msY-Hn3xas4BuK2
X-Authority-Analysis: v=2.4 cv=NZPWEWD4 c=1 sm=1 tr=0 ts=6a2b181d cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=sekFKQr-SxL-p-8QmjsA:9 a=CjuIK1q_8ugA:10
 a=-aSRE8QhW-JAV6biHavz:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjExMDIwNCBTYWx0ZWRfXzs9Uq6GSebX0
 wjy1Wnoy6t53jIkw0ZNz3gBCQaJyQY66PMajNZmfQHY/4qZzTC0Aw8zPRPJA2+Bay9sNsdhNaym
 DvVanCqjh9YPLU1h266lCL0mqnfydnU=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-11_04,2026-06-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 bulkscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606110204
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_131838_510078_9A9B8000 
X-CRM114-Status: GOOD (  12.91  )
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

On Thu, Jun 11, 2026 at 03:40:12PM +0530, Komal Bajaj wrote:
> Add device trees for the Shikra EVK platform, which combines each
> of Shikra SoM variant with a common carrier board.
> 
> Three EVK boards are introduced:
>   - shikra-cqm-evk.dts: pairs with CQ2390M SoM (retail, with modem)
>   - shikra-cqs-evk.dts: pairs with CQ2390S SoM (retail, without modem)
>   - shikra-iqs-evk.dts: pairs with IQ2390S SoM (industrial, without modem)
> 
> Also add shikra-evk.dtsi, it represents the common carrier-board and
> daughter-card configuration shared across all Shikra EVK variants.
> 
> Co-developed-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
> Signed-off-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
> Co-developed-by: Monish Chunara <quic_mchunara@quicinc.com>
> Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
> Co-developed-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> Co-developed-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> Co-developed-by: Sneh Mankad <sneh.mankad@oss.qualcomm.com>
> Signed-off-by: Sneh Mankad <sneh.mankad@oss.qualcomm.com>
> Co-developed-by: Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>
> Signed-off-by: Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>
> Co-developed-by: Xueyao An <xueyao.an@oss.qualcomm.com>
> Signed-off-by: Xueyao An <xueyao.an@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile           |  3 +++
>  arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts | 40 +++++++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts | 40 +++++++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/shikra-evk.dtsi    | 15 +++++++++++
>  arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts | 40 +++++++++++++++++++++++++++++
>  5 files changed, 138 insertions(+)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
