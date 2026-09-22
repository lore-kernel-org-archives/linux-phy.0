Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1B7AC982FA
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 09:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X1GmFwqYGWZTYIV5p7c2utrDrG6/CCT52BjYFpA2/Fc=; b=zwDlFfptZZvEqK
	aGj31ImHXAF6SwF/fjtLOK7XMHIip72DGPevQWAJz8LjxQXUhTwo61oAADe9YBA5ot7rgFanc4HnP
	/rhr6euIauIgzM5E5FRNbx3aUT0+a2yFV80YE0AvqMdqOSLV7IndW26UtKPwdMUw0Z5QPib7RxQMc
	iCyLEfMxV2H03gAMB1dB9NKelth3ANX2L25s3cXK5A28RBVWgIoEyHfuN44famQNsuTdmIPhwLyo/
	D1XHm6JlnDAVIUtLiuJUobm5N0gOie1mZstLAHdbuMCs5lNdJ2d5FTZ4u8xhpSrcfOTq+nRL+sFOO
	TMxC/ZpyylwRc01SVUvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8war-00000004rx1-1iV3;
	Tue, 22 Sep 2026 09:15:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8wap-00000004rwD-3I0x
	for linux-phy@bombadil.infradead.org;
	Tue, 22 Sep 2026 09:15:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=boZ2wUx2qS+wC7WZW0j2K1vODt8kLDmSC2O7SQmUuIg=; b=pBCPlHXhERM8a6enk6sHWTlt8R
	VK+7ybLjqTEQB6HGqVk1d0tvfGAcKj7shMsFrhs0bozRb15kYOQRTgRlhP1IBn5UtUaInyIzknhOc
	aAQtqlz6Cr9D0zzc4t8qNsFwLOw0o61lT/47pBeGUdpMjs+R10NyaIU2NbxuvrsXksVdVb/D2JMvS
	p8AIbTbyzUca+QvFQWKbtuFU6lzY5qm4X2V6ZIz7CAcjwy3O6vEfbYuBSVEmaKXllcCfkwnkp6Av9
	CJlPodvIThlrXnaE7O11wH6PtGz5FYGBUCGt1ouNob4nEjhYVNu8Fynk9zqM18YM5/2Lpt8kzvN6G
	1+Ks+zwQ==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8wak-0000000DLSW-3aYu
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 09:15:14 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68M70ch83676886
	for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 09:15:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	boZ2wUx2qS+wC7WZW0j2K1vODt8kLDmSC2O7SQmUuIg=; b=jkWEtPfd+a9OyVHJ
	4UDX5+PU5SxeXgJ/2Ny027y/HSSbKye5ovB2dHpO12sr/FT2XekHd0JvrZQ0hDE4
	68qmRoGYZSOyosM9/C0r1Cp52AQHYI8VR6toLE4i/1Zb2ewTlvg+WVU8ltsyPV1U
	+C6K7IIYC2o36DFf0vyiyrqUDtM0X+0iZrKKwF2CuSN2JGm40CmZPt8WBBDl03Dv
	AJOvJADQWwdWMKq2mmaXXw2n7OWTJbU2HZYUslqgjjurXpR1BClHfPZ+H1dhFRXt
	VaioNrbfrZC1GlEXXLCR+x2g+WGD6qvfcPBFQn2FeGBYA2vS3jI+y49OTRsx/KTa
	Wfn9eQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gu85vkeab-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 09:15:06 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-92e661ce1dcso75984685a.0
        for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 02:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790068506; x=1790673306; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=boZ2wUx2qS+wC7WZW0j2K1vODt8kLDmSC2O7SQmUuIg=;
        b=d9pjD7vXZEPEeRPI+y/QlOQN8GPu+c4jh+m2N+peRdJjx4Y3GnxeIyG+mrbC8tEbXo
         rJxR7kNoaWHS/rN/fDc3g8vv7fMfACrsQCcjZxrigwMB7zk1PriC0aymLfBznAgjVXyq
         1Jw648XQykgplMQ8eRAgc+s3HqeCJCaV9vu3cdsObvYLadzvbrQIHNLv6JzhpLww5AXD
         6GEPJQ8qEa86U5kfLE43FGBI96NN3w8V28r+i4HM9naqdxufOKiOhU4oJnuSsryYRh6j
         JYj5M9Fu1GohKu/n9qv6b38ow9KdEi4VB0mK+UTAx2D/7T7eJobpi62CW5tSuYNvHd6x
         N7Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790068506; x=1790673306;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=boZ2wUx2qS+wC7WZW0j2K1vODt8kLDmSC2O7SQmUuIg=;
        b=0Xf0OhisqVaYHvz3vdLVtfzP1xjdXAcz4F4JDsJgZPM0K390aUTv/QeRlsakPqoTgE
         EVw18YTF/bZ96hzpGXIxhfICc2lvS9xxvARrnIgUcUjS4q4UCL959Nwvo9XX5L23bdvj
         7WxJ7248RAViegG7eePjro6xvxX4X76zz1GlUnbDOya2OUo4U+34r7e11RsasRnPeRD8
         PPz6f8BIw9O/O6YOWAB+ZjjR4IbcFXBJXHaPPjvgwVKEQ1FaXalgMigH7sTQUavJB5QH
         qy7aYw593r6zlYMDRAhtLHZLmkJLPUpvVIeLNXz2AHFEqVcDvXHjekHjXNeU5vEHIRn+
         bwKQ==
X-Forwarded-Encrypted: i=1; AKwUvBxjWo5Z/h8Y2R+63JqmgOJ+CM5B8I25NqiZNqQcJgT6/rUtWFLNfxS/vgQy8gwk+XT4R45bSEznyWc=@lists.infradead.org
X-Gm-Message-State: AFuF++moCUXLYA+nD4Nh48RiHdyVGI9lquIUGsePnx2Ta4oVn1bvnbDI
	x9z+lFv8sZVLw+DgGrcCLhrdLEwOKIIvnfQtRkkmmv56BeIqsZqz1QdIEu8b1/msi6POcyIDMvz
	LDIrVWd34OtPDjiSQWQOvyYThy0afcEtBIlFAldfXC+k/7FhWOV8vGe36rxpOs2KSM93A8QsiCf
	Iu
X-Gm-Gg: AYBFou39VwYz9iHVKk8ZrdVqtiTdZkPaP1O9SdIC+ms6eInT2yRdbnJWXKBZROnJYkY
	Q3WxDMWAtd6UYhTVO2UZFEdSwZLRK6a7XvS5Gr/xggJK9leMEa0ANg27YQ3c/T4c4VytyKvjVn2
	Xu49FQr7zh2hYGTmdNv4T2pi29M6Gs0ErJu8K87WvcsABdOQz3LZ3Sh+1YitVtxVXNE9uIt369w
	j5hO3uyVFKDzJaTTPVUyPN/viJTUwtBChPPlQLdvNjyQfbimZf/utmlkc412e9q8gLkbNt5vLP5
	GzC4X/VrrcE8rKa1R59rcir0IHhpweZfkxYREO72pMqxau25YYXQkOVp2FR9vCT/I7aLePwimD5
	lT8WnL6OELXATVK5WUYwpQg==
X-Received: by 2002:a05:620a:45a2:b0:939:b8da:1242 with SMTP id af79cd13be357-93c15ba3243mr481848085a.0.1790068505728;
        Tue, 22 Sep 2026 02:15:05 -0700 (PDT)
X-Received: by 2002:a05:620a:45a2:b0:939:b8da:1242 with SMTP id af79cd13be357-93c15ba3243mr481845085a.0.1790068505388;
        Tue, 22 Sep 2026 02:15:05 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2a9c5b0c6csm51663066b.31.2026.09.22.02.15.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Sep 2026 02:15:04 -0700 (PDT)
Message-ID: <eefde985-c807-4905-a33f-616a1898ad72@oss.qualcomm.com>
Date: Tue, 22 Sep 2026 11:15:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v20 5/6] media: qcom: camss: Add support for PHY API
 devices
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Felipe Balbi <balbi@ti.com>, Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Oleg Keri <okerixx@gmail.com>
References: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-0-dc244e124e71@linaro.org>
 <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-5-dc244e124e71@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-5-dc244e124e71@linaro.org>
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIyMDEzMyBTYWx0ZWRfX8BbUQF4jWqPA
 wf3nZKvNcV8afONnIUg6kw7J0px5zG91STiP5SQuoVZel2bJ7mOWLGXfOTpjDcUPKp3mQZrdubV
 rPoTgbTDRFF74IBQS8RZp0P2FpX1qxs=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIyMDEzMyBTYWx0ZWRfX8EEmzU4dsKDt
 FRJL4H10/LgYCI53AI8nNBGp09IsMMm/1jfPf00XQg04/vGjojEqK8NP5zThVTvIqYJkdOMkNiX
 Aq3mfYXk6uyPxuL4gESa1AJqkRo2/0SAoUA9IpM8AOQ1w/42Siv0vCU1dAeNPnTfXTBpLNycGUI
 7dd1HFimTsyZ+0KyDhPeWF1fBSa6DPyCc6MIRb3+2fCm9yDA79JJeO0artt90bfgRQF06NwKOfn
 gxZAas4ZJr4gzCFM0mCVe9YmVc3OczlL2xsyWFicTOVs0a3x5G6Fo8n8dcuBYcq7/keEjS7qOG0
 tv9dZHG/Res2Mrg9JpRADAZwDfIaFZf0dVyZlITyne6awvWiMu6TMVZ8/zfTM3doMYpK0nRB/In
 R1WNN7+JJ8pGKru8vaEz8oyp++FwWaA+giELDGQEOEaE9axXTv+TwYYQ5z577oFaEHbRSelslgl
 ZUJTH+PhUDFIw1aci3g==
X-Authority-Analysis: v=2.4 cv=E8FYNqdl c=1 sm=1 tr=0 ts=6ab2471a cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=KKAkSRfTAAAA:8 a=SmOWCKbkXSXCNfC1NdcA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: KftpifIMb7PyHllJs_Te6lvD_lf5BJq3
X-Proofpoint-GUID: KftpifIMb7PyHllJs_Te6lvD_lf5BJq3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_07,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0 impostorscore=0
 phishscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609220133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_101511_646752_3F6F757D 
X-CRM114-Status: GOOD (  13.26  )
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

On 9/18/26 3:56 PM, Bryan O'Donoghue wrote:
> Add the ability to use a PHY pointer which interacts with the standard PHY
> API.
> 
> In the first instance the code will try to use the new PHY interface. If no
> PHYs are present in the DT then the legacy method will be attempted.
> 
> Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> Tested-by: Oleg Keri <okerixx@gmail.com> # Lenovo Yoga Slim 7x Gen 11 (Glymur)
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---

This and the following patch conflict upon applying after:

aedd77ea8168 ("media: qcom: camss: use fwnode_graph_for_each_endpoint_scoped() to simplify code")

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
