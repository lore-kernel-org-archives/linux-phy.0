Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C689FC43458
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 10:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fNG0PY1xvQw2yUBTLCVMF22/JKhF5KG7DiIvXi+2sMo=; b=qM02ARF56x8w1a
	Ush4CrTxMrPd+NUn+Z042rGystaNATZWXoYeqCUY9pev2A7M5Ef183Eq5SbeYfxV1dmHI7T26Tc4v
	+uLrLbsauzFxF0KA2sXphWQsobzv5nzwrqRFITBXAZNv5Wa9Fa/Q6TV0CTGPYAcauSAT0Ab3O0suV
	S6EhmhtVGvp45T7u4YlKhtl2hNlJR8xjeSbMVY9e/iA0Pqe2YCKv5sWMPUJQewPGgPnipW10PPZPM
	xgx+/vfoIE9mVohfNaUYRH2pjhEH6m+fJs68C3TDDcDC/AzgVS7MDWnyFyMWtnmcIt2oR442+u7Tk
	LixegsGvIvj1y8EfmFJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wesIQ-00000001Jz4-2SSv;
	Wed, 01 Jul 2026 10:35:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wesIM-00000001JyO-1hq7
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 10:35:57 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 661A8ulp763079
	for <linux-phy@lists.infradead.org>; Wed, 1 Jul 2026 10:35:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Sp1BW3QUmZcO7rug2uWKHnR0pXWl/4bf/P7UglPwEP4=; b=P3KY1ZzWVReNOhM/
	D6Ye3yqrlxmRkrCYf9SpQ7JO2ZvZR6oI023xwSHtmDaoMdPXlmlrFc/CxspbyGvj
	4gXnqgr0ul3Nru+fOHlI4Lj2jpZIRihUTMKD8jydjfhLLFgnQE4+9fCGk8nmvqDa
	7twj80oGQT72H+bAE3r2nV6HURaY5PzV3ggji37VrRWzEjGtuUILVKYUcanXlb3o
	DvRL8gbW/kMuNseiaKXelCW6j5yUvVpIG5q2HbQzQHWv2iJOmG89l9ClKA5AqZZ8
	LbkxutJaq92h/6dGQx17Uks/kR+hQqS9trB/kcn52rovEUw1whSpJ2+68otN+t9s
	/+lGgw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f4jktbnvp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 10:35:53 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8efc8d8e897so1785916d6.2
        for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 03:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782902152; x=1783506952; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Sp1BW3QUmZcO7rug2uWKHnR0pXWl/4bf/P7UglPwEP4=;
        b=HFrGmtQ8IvXLDCuFubZ5nj0UjjdISczc9WQnxM7GKlay3dJ9g9zRkbO03Noxo2sBOo
         BME0QObMxpUgoaSFv+l6HKF98gfmutMuq7Tamc1gYGsiW95MQi4IFGyoU7Y48/SuRDit
         1FcAF5hApVxZStVSmvhWOVXcqLNWgFS4zNkaSVTjnX0kFvECQlpGIaoi7jvwoc00yn97
         3UcrOBOwIN4D+vt722XtdIKvRcM+HQx834dSYgiEmZJD8SEw3iWU/2BlhH+eetCrmFpQ
         Bw/MDNOCfBYA1LPAB/rLo8O9TLnIFuRpwegH5Xq6oCkXM7eF/AJASzTge5WepEmkFaam
         H0ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782902152; x=1783506952;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Sp1BW3QUmZcO7rug2uWKHnR0pXWl/4bf/P7UglPwEP4=;
        b=KfUnq6QSwCf61Nq+D2KZkZECvES9Ct5tKzAFSayg+IosjyxgjUvB6s0kR4HYwTP3YW
         b+AWyBEICCMH8JlkLunRrQg8uE9MeG/kzl78DcbMHKf9FwDlXtG2RcTgfdA+zB0idpEA
         N+B3thGxSmTgKyymD6tno5lkDn0QoEz3XjJs5zGWfub1mUxJcYBJtyUMqk8NsPk/utOp
         He6/AjKt2LTXymEGkFFrP094PvGOTzijx4+W4xTNhqtmEHxNEqvbvklEUkk1Ihc3Mm+t
         EGfkDhovua2Mo1/R/EhnWUpU4BN2h+PcsZRf/Ps2aCQIKuxB5v3Es7E1+GHQ5hJ8DH+r
         LhMg==
X-Forwarded-Encrypted: i=1; AFNElJ9BhtIpBE4VVLCD3OBJdmR43D150zEUoKHIISPKfYQXNuc6GpXb3f71bmK9Nak66tMMlvspNkRLYoI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzjdNqPEXgZVbcbRlMnCtNkUlMpSEXTSA4LtBxQKGuFTmc4z7pY
	xL+r/gTCHQnLkgkR6pYZkUZJNgz1AxC2ipiRBJEFY6F5Y6okIQj7dol3UGbTpMCcy6MV+cca/BX
	DhbddTdJ6e0SI/bD9R3c0vmfz3mY64aillD4rK8NqLhPhK0an9ZajfneZ2hYiA1lHUdQv
X-Gm-Gg: AfdE7clZIQ9fRfyFWYPyy4AazbDdRfovTNegEvpLp8En8cMjiSTT/4LuAJMR+AavAT0
	oPwJ3GPpz4CyO8XhwhFPj4ReMrzazx1lVxdsMOMKrq0woSkwXoMG8wxG4lfuq7BJW+0AfsBfTGr
	bmoTtZPg3UUAPfObQOJE6iYJGYeEgkpsdYmpdqklCPF5OrIuPjAk/zkiCdwye/9XShAJxZE4d0m
	MeENPbd9H2Z75FEWFbkx5bbVINXJwGv89xhGw+Likyi6GWC1Nli93Bf7leF0HjksOQxpIcNEwPC
	EbdbBiTSqVtthoNyFCbrT9egEo5dqwD15MoTv8cAr//3SOZM+WjGQETMTJ6K4OHR/19NuDnI87n
	IjNu4u//xxhz3dx4eCtBJ83pc9uMsMjTk4Ck=
X-Received: by 2002:a05:620a:4587:b0:920:798b:e290 with SMTP id af79cd13be357-92e7851d0ebmr89817285a.7.1782902152581;
        Wed, 01 Jul 2026 03:35:52 -0700 (PDT)
X-Received: by 2002:a05:620a:4587:b0:920:798b:e290 with SMTP id af79cd13be357-92e7851d0ebmr89814285a.7.1782902152181;
        Wed, 01 Jul 2026 03:35:52 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1289176eb0sm255472666b.63.2026.07.01.03.35.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2026 03:35:51 -0700 (PDT)
Message-ID: <2efcd4b6-0a99-4bb2-b428-4cb4805c20d1@oss.qualcomm.com>
Date: Wed, 1 Jul 2026 12:35:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/9] arm64: dts: qcom: shikra-evk: Add TC9563 PCIe switch
 node for PCIe
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
 <20260701-shikra-upstream-v1-8-e1a721eb8943@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260701-shikra-upstream-v1-8-e1a721eb8943@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAxMDExMCBTYWx0ZWRfX+act0pOo6CGS
 dYP03QWU0jmX3nulQq2wwHoGn+BiJ+dY9XFnR+v0TER15Dk0WfmvvnNQFb2BAJiIEqLO+6nfXcK
 1rZKK0VAGzd1Vu/e7y4u2nT0hW7Pxdo=
X-Proofpoint-GUID: kB3OvWDl4huwa5339iYVOHbqIZLcRzgJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAxMDExMCBTYWx0ZWRfX+nQIE02BaCEx
 nxOZTtVr3ect/e6lHzs1Ed2NiXf8Tn5EWIsz/vC9Eo1xoaxEVMgr27tyfTd4kpjl7+DF9pt02eD
 34vWcu1zxMP/Gg68x16G5jIJjwvHXjLzs6ebEveTVYGlb3XRls4hmH4mYc9Ho2BzX+nkT5SfGUo
 0FIHy3qnOkTqdmoWBeYltVIRb1K+Hp4GfQMqn5yTEy5Z3wPsXdOBV1G3YFZ0L0q1pyUxYF/POHc
 +nR0iyx+29y5t83pOuqDJf3mr28nyqrXgg3w2ti8KKUvFksWDsQqJZ9SxsazD42987YS77HAqOa
 B56JEF9qTcAF7DCSi9+pfFNg+IWJ5zVjQyxMyNFx356I8d/mHXTstN2X8YvoXR26EDwtBzfm+Js
 QtCfC/7HOlXeGyGHgKT+BGQ9/vTAi8Njy/ChU6x7cGvSmhKgKHIqKK/7rXxyCAIfkoBX40zqlSv
 lqvFaJ70P5IMeczUeYw==
X-Authority-Analysis: v=2.4 cv=R+wz39RX c=1 sm=1 tr=0 ts=6a44ed89 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=qSWERiRezZrDuvaUYp0A:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: kB3OvWDl4huwa5339iYVOHbqIZLcRzgJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-01_03,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607010110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_033554_566461_B884D4EC 
X-CRM114-Status: GOOD (  13.25  )
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

On 6/30/26 9:02 PM, Sushrut Shree Trivedi wrote:
> Add a node for the TC9563 PCIe switch connected to PCIe. The switch
> has three downstream ports.Two embedded Ethernet devices are present
> on one of the downstream ports. All the ports present in the
> node represent the downstream ports and embedded endpoints.
> 
> Power to the TC9563 is supplied through two LDO regulators, which
> are on by default and are added as fixed regulators. TC9563 can be
> configured through I2C.
> 
> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
> ---

[...]

> +&pcie {
> +	wake-gpios = <&tlmm 119 GPIO_ACTIVE_LOW>;

This property belongs to the port node

Please also mention in the commit message the reason for the
PERST# pin remaining undescribed

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
