Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74C63CD98C7
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 20:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SxlXvot/d2C6Wj4xWioAdBLY9gEqLseYakQMG1K95Vk=; b=a5YyoGQa4f3xJ6
	RfpMERfkaL8H4Xz/qr6owkoRVVK+b/5yRAmc5k31dOSZdb+b4b3X7/bkG+2a8ooG3cQIgij58dkt6
	48Bq7bujZFk2TlMB2WmKUP611uE9bGaQchIN3sQax1WAnRW6nNQG0+xtMOnfeO2SkF4q0w9+Md/Rv
	fb2eiS8WI17AQN+kc6IzekE6g0KoeNWVkUg+iQ8IrZW29yDqH++a/nE6Y+uYgziB9LPsCnWMni93n
	hvBC2gdJLcT+fHQp+TAkuHAsbpob4BbYG7Vkr6fJfQKkOVpA8Qr3RfwK/Khop5YYyCyjmMrey7jVl
	wVeoknmckWcOJTRimhBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXlqg-0000000A2CG-11ii;
	Thu, 11 Jun 2026 20:17:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXlqe-0000000A2CA-0E9U
	for linux-phy@bombadil.infradead.org;
	Thu, 11 Jun 2026 20:17:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=9dSIL3f/lhstR7XBW0gRBnx+J0TbGOFQQgQzZUkFx2U=; b=ZFVjoXkGuh1m6UYbC1+o8XyYB+
	NuAZZDSba04DEPw9T07oEIaQTMHMfzZr6PzGlLfwSRhR4LK6C+esLBj4ELuKInD2JZuy77lgoVtFg
	oMO7XoZ5RtpOQqioSwRE1LjMGWEf/wLqq/mD9umM+JhNUap7LoKUk6v3XeP55DNnf0i3vFqstBIQb
	yKH5Igy62tOq1JkpN01VKLibsalDiLru0CKwsR9UDx35iVltNoJiFsqulAxyMVPzRK3+Ve5Jf/FEQ
	KeyTlh+pwH8npZGOfZYXuo7F/KhkjCa/7ky/HO2YwtnDK6CtL8+ceiS/OksjLy2E3y23FCg3NwEPQ
	wxm7XsQQ==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wXlqX-00000005e4f-30Pr
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 20:17:52 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65BJ3OtK1389256
	for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 20:17:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9dSIL3f/lhstR7XBW0gRBnx+
	J0TbGOFQQgQzZUkFx2U=; b=YYlqyOcuNltzgMs7FrR3n5oiX34sYCUwZ/Xf9/rd
	MErXAos1iLNMlikcBn46+57ZPygnE+krVxT8qnR9BsKSz0ckkovQomkKHWy2s/bS
	x95D2pDC6KyVWhM7xdBEoB5ul9urTtY2/uoTlj19eRaXfQ1WA5jTF7hl1AU9riAY
	OxE/d1lhp815TCDR7O0p0YmFZjo+Ww6YJZGCBZ80W3VgKO8YgLpjxfnmDk1kfVDc
	xGmhy3Q7kS4xCg/5/PPkpytHAQvWZWSXkoLTU9trGTFlO1JYxeSuMuvEiPsKNLWu
	wegh/cG0LcTh4NoLXxFo/lU/sd0FISzy/F/4fGQz+evuUQ==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er1658t74-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 20:17:44 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-9639d763d99so92984241.1
        for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 13:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781209063; x=1781813863; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9dSIL3f/lhstR7XBW0gRBnx+J0TbGOFQQgQzZUkFx2U=;
        b=THe1fD4+Bzr8OGl8bZA25CKclT0ClJAEJL/IumphU/BuMlI7k2hTOHT/34ZI/wJ7/G
         l1rE2cSsFXv6D1pA0LaTmnrbMTzgXHdr/qN3fiijyTLSdbaCVYfpbsPgNx40OcTWITmC
         sXVFb7tH8qIuV7Vezzw7/nToJB4jCtOrDHl2GvoguCRTnn1+mS2Gv9yikqf547DFvyuY
         1oF1kRohGhQBfFPcxBJK75ZgRjxOYCRYdF7hqIMWySwhUAHkmSZvbbekfNB+gOHCKdhz
         w4M2YnP/YM7M+jIhYEX4n7xoieR27xdYfKUTNXQSfo+RO97B92nRYpiGYAU8cW9TTon+
         r3dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781209063; x=1781813863;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9dSIL3f/lhstR7XBW0gRBnx+J0TbGOFQQgQzZUkFx2U=;
        b=EuNwQom3uTrqDU+fe30566dg1XHKH5ec4PdiuBBzPd3avgr9cwEq22+igTgWuskQfz
         SrerZUIcamdTwH+7uvGosO9ps7XWChq0how7XmDHFXnSc2bKUutNaOsLmxNBPII3SmPk
         TykKH5roJ3pFoXgPaXV8+awOHXiZ7EGoA3Gw+Zd4E78G6gzpqDE4M8qzZdN2D295+IFC
         pdzsi1ZhlINZO3z03dek4k4AxZaqC5BIp7vL9Ukg1hrT2N6VFcfcYDX+l0omjj6x1UWT
         tPb//7R/qBc3UeY//HdekTSkwqhMNiGA4XFh2vpj4LUg9sUotbYRWW2GMZ9m9siFsNxw
         5tdQ==
X-Forwarded-Encrypted: i=1; AFNElJ/HMvXHNlLtq+x8pnCLDCOXLOoNaiK56EMmSnz96VI2WaoTRbpG7/WaaO7sKKP5P7m65X+VRJH4QOs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0HDXqENEas/hUvRgZ2uU0tmwegGPjRKjL9yr+6BjOEEDiLU4g
	bMRA48r91tk4XYTBUbnyiPy/92VFt4pnEa9dNzGm0KspNSudOPOloTPJVfcbDnbVt7cd2SgnT+c
	+CFkYw0TXUxMgIJay9i4leYCuhjGbbh8HEIBDzrgfOOramVL+NUDLgf13JHYmOUxIdyvv
X-Gm-Gg: Acq92OGS/T+Z/p2sEJZvefgQTy0no8yiec+85XDE6yT2GdtZVPp8rXqaxKNHx7pbIfc
	pIBOvWLqC4yngB/mFC+vZWDRK8RqMlpBcP6F64cM1cRyzzP0Wx9g3VERBmUdZXCBvOpmMyXZ3B9
	mLRk8m+T/zFFdfBUA/nDkYEkxDjxT5Y1GkKuTdySM4U4IeLJsTRqlONBb36aqjIfn0+7IYwEkqN
	O3rZEPKy+6eEIrlBdeVoXectvr3LsTFqhZdrWdoc1AegqxRGhqYT61RGJGxxqby0Yva8zBs2fDx
	Aox02Isnc4WshiFhnZuem3KfHSqkGZy/oz29DA/KQ/X5ChKvHBLIvwdghKlGvLKIOM0Uwt1x7J3
	h6Be0fmsMKdgbOUOD9iF6KkDSHhfZsvg5Dm2SX2M0ytDIzcKPJHYXfdKu/7s2e5SW2RCzQRxsLN
	4/MA3dbV3b7B9s+SdxfXVw8ifZrDKw/JREVmU=
X-Received: by 2002:a05:6102:370f:b0:631:d3e4:efc4 with SMTP id ada2fe7eead31-71d59fe3bbfmr2378707137.11.1781209063135;
        Thu, 11 Jun 2026 13:17:43 -0700 (PDT)
X-Received: by 2002:a05:6102:370f:b0:631:d3e4:efc4 with SMTP id ada2fe7eead31-71d59fe3bbfmr2378684137.11.1781209062669;
        Thu, 11 Jun 2026 13:17:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5ad2cb3f4desm121518e87.29.2026.06.11.13.17.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 13:17:41 -0700 (PDT)
Date: Thu, 11 Jun 2026 23:17:38 +0300
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
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com
Subject: Re: [PATCH v5 4/5] arm64: dts: qcom: Add Shikra IQ2390S SoM platform
Message-ID: <37vgpqv5rir2rdunvl27dv5kydybdwehinytow733cmkscue47@e6pnlxwklnq6>
References: <20260611-shikra-dt-v5-0-103ed26a8529@oss.qualcomm.com>
 <20260611-shikra-dt-v5-4-103ed26a8529@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260611-shikra-dt-v5-4-103ed26a8529@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjExMDIwMyBTYWx0ZWRfX0yDieB9Im5Y5
 E4ShfH+BoQXuqeubyGXL8wJNK7ca4MzeXKYDUxE7cDXZcpCs9tBKgjo6JgFdzzG0IwZYujruHBm
 Fpv0DrJVwqolYJ2/Ts9zUbVpp7NcORTCB/5PyPjKlQ1wO3gj3w2hLYhXenwvi8QR4WmodJnTgsg
 QsG6mW8lgfvwXDRljNkclUIXFWbVLPacHgQ34Pz8o8qdUrmIQI8J/GbGE57hyCK+e9x0Q4rdz1p
 J9WMZhaszKDoM/HATNg6GP2pOXv9yI1f1CE+SjFKXrQumazwCRUK7MuW+bS5QdJjutoDD94dMuy
 6Be3AEDKyiYltqT0OvZnpnRZGLZ3U47Od1DDZIYuB4uOH6h9vDJ9peHEBd9Q1l7u6VNaqVrnRYf
 E1ZX36+9PYhsoipVBlwZWWfPpp4J/ia2kB7ZKCg0w+so2kL7IaY8sGl/STQ8+QtK8Q0a2aXDerP
 W1hSTeFR1JV26fn2ZGA==
X-Authority-Analysis: v=2.4 cv=LNpWhpW9 c=1 sm=1 tr=0 ts=6a2b17e8 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=MSeU50jLikp4iQrAx_QA:9 a=CjuIK1q_8ugA:10 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-ORIG-GUID: SsALSJPcUxL-d-Xosn5Wq3BqEgt67LpD
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjExMDIwMyBTYWx0ZWRfX3+Y8NS+Klkyq
 nBVDqMrua/ff6mJ93APDQWvpmJ4e5OyFU8/tneTc9GW7VAOD6MNWFr+s3bWyW28jtixmarJ4CbL
 EkiAaDLHGI7UMMGT+ciIcxfTt4smhng=
X-Proofpoint-GUID: SsALSJPcUxL-d-Xosn5Wq3BqEgt67LpD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-11_04,2026-06-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 adultscore=0 priorityscore=1501 phishscore=0
 clxscore=1015 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606110203
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_211750_733505_B22AAB60 
X-CRM114-Status: GOOD (  13.27  )
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

On Thu, Jun 11, 2026 at 03:40:11PM +0530, Komal Bajaj wrote:
> Add device tree include for the IQ2390S variant of the Shikra
> System-on-Module, an industrial compute module integrating the Shikra
> SoC and PMIC for industrial IoT applications, designed to mount on
> carrier boards.
> 
>   - shikra-iqs-som.dtsi: Industrial SoM without modem (PM8150 PMIC)
> 
> The DTSI includes the common shikra.dtsi and adds PM8150 PMIC regulator
> definitions specific to this variant.
> 
> Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/shikra-iqs-som.dtsi | 170 +++++++++++++++++++++++++++
>  1 file changed, 170 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
