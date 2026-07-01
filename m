Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0BB7C43458
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 11:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dm/pSuPuGlnqnheYFCuFjnqxHEl2TNnE7Pr1xBLI2K0=; b=XMsRZSW2albuJG
	GMH5+PxAtuk/bKpP4XnbmgGeertbdVIPvPlJr2KxMuKVCT5yfS5Gdufw2DpoSvx9yZjJuWEIL6bXy
	hDBflFGyvNHOa4h5JsolZ5tiRz+a5XM/HIzMbbNo0mDjoloKlCDeielko8+MPNesO0JqW42ZWL4gQ
	i1E6QZtDwgnQKzepdPcfDyRfCKXCn8aKgvilqaSob0jCw3zF0j0NJT6pKWOEDc/BTsd9rohVPW2G1
	WMGbQi4S49K/E1K0a62GxbzzskcedP/j2XjqypmSlD0Lx7lcyUrj+vNvt6Dav9aWkJ79nV8oPks3v
	f7gOEozeljnu+Xaq7MRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wetGN-00000001SzN-0vzO;
	Wed, 01 Jul 2026 11:37:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wetGL-00000001Sz2-0iil
	for linux-phy@bombadil.infradead.org;
	Wed, 01 Jul 2026 11:37:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=KnMDfMcHILR8MaujBWN2IXVrf1V2crbHAtbaDB4GjEw=; b=UyVMBQctudNqZf5EcAdyyZL4uX
	WUA26DW8PO8iGvesye5YBmtyYqC5NSD1EYq+yucaSLotEqBTYeT9xNOO4lFNlljBaLCQMJ35xeDNx
	tyghXC1OpdhRxLfy2SOYwFoOFIDj7zs4rYqvhekAe9R7HVj5GpU8wTWLINNUgn1NKRnhDA8D6QQFd
	+AZ2YNchQG1GkuDoWY9ajJEgfStyPl1LL7xoE9Tu0efasOA0V4T2ma9kPJ+KyiEPYFb+s/b3pJQqX
	K2fiLH0D27ROqVDSddaEyR33z6q3YhWr+L4sPYexzXuMsenglfqCEfQVsglbFu4USl5CpJksEkFYZ
	ULj1Nulw==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wetGI-00000002gyA-0gnt
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 11:37:52 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 661A985W674097
	for <linux-phy@lists.infradead.org>; Wed, 1 Jul 2026 11:37:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KnMDfMcHILR8MaujBWN2IXVrf1V2crbHAtbaDB4GjEw=; b=Va9qc+vTL5+0sB0p
	t1ZapklWzsGiK8oNzMWQqcWv7hWCP+WN8CGF/el3DHEFeEJqQ7hsFAaoIq22SsGs
	LZzX/OCvxOOryAWCd4yU+tjfYOYdbADF07xUYZOvddZnFhPpWp7fChAaq/YiOZ4Y
	91A3WVxWRsVSZsyRtdvvyQAHkwoQQE7ixSZfasDkBpuR9uNzuU3HXn7dIwX5vFzj
	KtjxayJ8Hocx2r6nPIqeBMw6EJ8uAa6Vje9VUyerF/u0E8V5rXHmr2jSRCSw4+Hi
	FdZNgTJIYjHUFJyZLmVGeRYfHTG8ERg3Nq3LLEwrqwX0udxeKTPy7Hj/paNbeJ+O
	vwedWA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f502urkkb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 11:37:47 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51bfe75b7dbso1236981cf.3
        for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 04:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782905867; x=1783510667; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KnMDfMcHILR8MaujBWN2IXVrf1V2crbHAtbaDB4GjEw=;
        b=ZKiUzsmcTnXN4ykE+tD58fv+4VkLGA/Fa1Oibcu7GoeBclp/O3PS/4nMQJzyhoF2tS
         eI9TyHZSi6fUhDXriO9BagWLfVxyCTJSwiPWFGCPi8ei+hJo6mjgOwXT8V6RZsRuwn1R
         lr9p8/a3QBaUg2BLGGDR2iVZ7YwK4ajT3freRjfkUA9SODlpu7IqZ6pWjQvITkNbVS0P
         V/zJSgY1HfkGjm5zo6Q3opK6hYEjtX4AKmgW1deRfocgxBIiuQu7vewMIxbyGZ/qWG+o
         umc6NUzq4CMZwQvh6k7QJ2eADPLJJGtddamOEJUHwFQNKuMTSs4s2Ozl42PuFv0DkFGi
         47+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782905867; x=1783510667;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KnMDfMcHILR8MaujBWN2IXVrf1V2crbHAtbaDB4GjEw=;
        b=hMFXAFzKrv6m73i34ZBcjocYM9jYx2+xOArAb5ovvOqgWuH2I/BPzF96dEvXRUDziH
         ljRnDGKfz3oOztZ3y4aZPGDl17+0FJFBvef3kUk58fiZIkfViSNMKfZnrmgEaiMyRzUR
         gXv4C/1Dw91Soweeh76fVtlWEnmo7CAPojq711eece2JSSyOw0t+6nzx/pNMMMG3t+nq
         JnZMTAmlippY0wTmhJeNieYm6QzKzNXd2D6DV7MJFtlEe3XFggVx4OCiEXEyWVKWRwjM
         moFULss1nuc9BijNgl/JehuEQEXpTrOwO8OUfpfg4oflZaN7cS5RQl2r0j5Ft0PqgZKl
         AWVg==
X-Forwarded-Encrypted: i=1; AFNElJ8DhbREpNHLMP4rvxyOcaTm3+mS+QJxv2CMGdrO881xve3oWdvngUg25ZHNW7daSTHqttYKfYy6QrI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwHpi9kYG/BSrjppXqAD1Dtl9Raa5HrV0RmHsk6p6PHuThlRNGz
	h3L83ZPPMxrYA/0M5+nYsbCJxH82VjgWJbwJSB64aaoi2hhuP66O/pH1Wsz3fs44NTGJy+Uwzh8
	y819+9cjdaK2fTo+Y8nikV6iXEs+WRgboJ/iEep+erDSGSGj7pAMBdO3TDk4pYyZpt1Fj
X-Gm-Gg: AfdE7clebC8X4PnTtm2o3QVU9T6sWmVH2IIpY/fiM4rtLjB/XYcxiDOESorl720kAEs
	3XEglGZ9k2eSKPrxkrEDOgEhWqEdS72DSqa7flrgQ2lYfyJS5/GCv66RFaPjqNa3QYE6zau48yu
	cjCZmbDEV7jaNpDpnFIkeFO25z3RsxqCgUXzUKCR3HlJ9leMJAet2FQIf7vaIGDdzrV68VmQmfq
	qOPnnOoViAcbFQSNTuU2TirdVFN/5r/spWq30WXxPoxeMYWWWbe8VSwUeX2uYoQciKXjiPffDZR
	mgIN298Yk5WHUzldP1pczxf0zNaLGbwAFgS30W0XEjZi2QR3AriMq4R3ZT+eqqj3h0P1HWjLoW3
	INtu2jXqWOxe+asytLX3glRtbOdqEsu5vddU=
X-Received: by 2002:a05:622a:1348:b0:51b:ff78:f229 with SMTP id d75a77b69052e-51c26a8ec25mr11241941cf.5.1782905867294;
        Wed, 01 Jul 2026 04:37:47 -0700 (PDT)
X-Received: by 2002:a05:622a:1348:b0:51b:ff78:f229 with SMTP id d75a77b69052e-51c26a8ec25mr11241521cf.5.1782905866877;
        Wed, 01 Jul 2026 04:37:46 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1288f0cc4csm268596466b.34.2026.07.01.04.37.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2026 04:37:46 -0700 (PDT)
Message-ID: <b43691aa-6d1e-4df0-9d1a-cd5c4b3e3dff@oss.qualcomm.com>
Date: Wed, 1 Jul 2026 13:37:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 1/2] arm64: dts: qcom: Add SD Card support for Shikra
 SoC
To: Monish Chunara <monish.chunara@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        Kernel Team <kernel@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>
References: <20260630165700.1886608-1-monish.chunara@oss.qualcomm.com>
 <20260630165700.1886608-2-monish.chunara@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260630165700.1886608-2-monish.chunara@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAxMDEyMyBTYWx0ZWRfX4KHsHhwyYC8B
 rbiw1yiZF7AfLVjJ98SlvLecHOSCj+5pUU8J5sSNu6EJI7c7q46ZQajqYDH++fuSrRpUZ3WAuS3
 H1iFmA9mFCUjJTfJz/+VICUfKfBR4OU=
X-Proofpoint-GUID: G-3HYBiBLiikcGczcxVfJbczPOO9IlU9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAxMDEyMyBTYWx0ZWRfX0rsM0IdmENf/
 u9vY3hAbREV3QlyIgbi69zbgmBMjI3NiiV5Y6o9eSIn5LG8YNeori/pvVhY3TwL6jnunhoNquYP
 o76qtgTDHpRpxMKTCk8qQa2QzdUTenOeY8Xky2yKdQ4GdU0FDRANerzFFJ9pKrBRA0ZLvw7fGRP
 bfrbSJhB6XCbiIgWkLZJb5xN1QRDKDKEJwqLYBkxhHHbin88WmguIcUaOXPirVdm+t/t/AJrG1o
 06ipHVevpM7DPNzPcBNH9tuRfzVhQfe7Sww+LoHJF2/aWQ+IQ3pbeH0J3OaFWq8VvRjMY5dv4Te
 iZm8X8pS/97BXWvNpnGzOAIaiCXpFCxIJ4x0k+fVw5YSg0102TZiMf+YmcUtmui3E26lqEueB3z
 C6aR4PC0u6iPq3D1SBqpNB9OVF54JloRukvfZXAxKXEPD0MdSukimDUmw6Xh5Y5iV5csF6ptS2i
 pNZvcDmD/2NNVLcTqag==
X-Proofpoint-ORIG-GUID: G-3HYBiBLiikcGczcxVfJbczPOO9IlU9
X-Authority-Analysis: v=2.4 cv=PbLPQChd c=1 sm=1 tr=0 ts=6a44fc0b cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=BpmcFw1FbD8WNArM64UA:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-01_03,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 spamscore=0 lowpriorityscore=0
 suspectscore=0 phishscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607010123
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_123750_499840_0F998432 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
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

On 6/30/26 6:56 PM, Monish Chunara wrote:
> Add support for SD card on Shikra SoC and enable the required pinctrl
> configurations.
> 
> Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>
> ---

[...]

> +		sdhc_2: mmc@4784000 {
> +			compatible = "qcom,shikra-sdhci", "qcom,sdhci-msm-v5";
> +			reg = <0x0 0x4784000 0x0 0x1000>;

Please pad the address part of reg to 8 hex digits with leading
zeroes, like all the other nodes

otherwise

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
