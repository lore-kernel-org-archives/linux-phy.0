Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9CBED1A61E
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 13:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R1bHlIP430pOcDiIJuzuCfQI+E5WcxiVyOK+wniFTfo=; b=RupTNYghBaMPOu
	gK7fNsXxmaBcQGdd4XzVdZl8p4RcbFAVxzya/I1Vpq8k/Ks4KCXjeJp5nnDSqM+DW2hpCbYogq8Ax
	X5W8V48GOdFPIf1CjHrSG0YppCBJI3dKEb5c3UvFizrhGkyGgk8Y6o7jtS9Gm4xqR6Jeqq+sZYoPe
	MNJLBuzk+gK4cQVYwzrmLR9uqnMlyXIFwJYCifryowvseNvgUH15FUiaProzg8Nr9pDJc0AaNVgL9
	HSz+sKOcjfi0UuLRelG+2MPc6Iwb6iY4qRiUWxME4JKE2O8NigjAS6dLXfYyHvWFDYwo+Tx/Y0NcM
	i18n9KYYuLZXuqF6Jy1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veCIe-00000002KxZ-19Ra;
	Fri, 09 Jan 2026 13:13:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veCIc-00000002KxB-29Cb
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 13:13:07 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6098J9AB2328431
	for <linux-phy@lists.infradead.org>; Fri, 9 Jan 2026 13:13:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HAQ2jETUJIKRwTk2kBD82NUb
	fvuyEHAaaeAEsNEprpw=; b=pvZqVfkStM/zVnvtVZTSGYW8Lp4Z2Czo4LTEsu1j
	HYbNDoy+fnjhpkbcprnglJXzh05dZnBYuvkpAiR5bm4dL0XlqcAY9sWRW+a5hnwW
	hQ01WWV/hY9rSoTI7//f30+OO+REgit4T0O/Rr2mKnfYnCUzVqp8F5adtiDgCsXZ
	Q/1bIhoZ+kzu2KUUX6VARWhCP23+VUSSv8EDOUo8Nab0BkkA4iXf0IaTSloarI+8
	+M4MmutgVJlctIbPmzX/+MXmWud0c4ch+8i46YniXUKR5uaRz1M7U5wkfq850dhk
	RkpMYtuy6Frh0Uv38H7mRhGnr//jr1W4W3ZN9QQ+itXLNg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjfdabd9n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 13:13:05 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b2217a9c60so952059485a.3
        for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 05:13:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767964385; x=1768569185; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HAQ2jETUJIKRwTk2kBD82NUbfvuyEHAaaeAEsNEprpw=;
        b=Scopy4jQqNj/sGv+rg8a6Q7gII9Ooouo03BP/MgZjV35xeCwM7DlJS2kbATrwVAcvq
         F9itaV5KELqeuIrU5so0olxD5z3L/2XnsYDeIeOMLi2+C2lh5009XR8hf53bnq6yqQml
         CjbpBknzkZkpJDf88fIR77wPkK5YhDLdaYJ8if6tN9PrFJXmNRH09YjHB5IcAucsafWT
         1WcNPbviE7mnDTdL8uNs8IiD78pZSRu5is0g+zPZdeZeGg/rGNCktu36U8oILENFYXKY
         OGm+LNJtzCJeCUG+pJNOKCARo7SBSp4f4dxA8k6ATGBmXNeSryX5x+REOkvYewTzheK4
         9TCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767964385; x=1768569185;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HAQ2jETUJIKRwTk2kBD82NUbfvuyEHAaaeAEsNEprpw=;
        b=Tck/pTWo0SmbpydFPRcNqV8w6g24hj7AKrkoLgwuDWsVzuG+kGcvS2jBObMycugH2b
         MWOfgfLLFozS+H2gpgqu728E6h0W9kAd4HrhqoipQYTzznQ5NzNM6S2B2feKpipznM8S
         ajWYjmTxjQF+YYidU6notK2E+OPN2RB4QlFYZdPFTbRsb30aofM27egVo54vA8dioG5c
         L8D1vCQSqFuy2BYwvIPi5/wK+VROvX2oV9MwxBrxcMdx0Ys7OrlGT3VMkzpyav04WRKE
         fZ6c6YBnOUpOVqDPEbCNXrVH/pXZo+gE/FYqNFWzJD9J/rFdhAidmHbA0hJLJStj+wT3
         RxHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXL/Q/xe2d+AJHP43xksFpz0SfLMqeVSwQXM4d3DM+Z9n43JPyZ33vqcjfBSzZSVBWd+DLV1nvFwgY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz65VT6CtO1dn6KMKYbV4XlTuNnEAXwVbEf6mEY0SFy87rdJrmv
	gbm8o3Xtcjw33LA5cJNLVDPv3JKwP90GXMRLPqpj5Yga9muRfmLXsvZpre9GrgYLAaR/9LiAky5
	l4IXkRIxlpVBtVwo3i5kWLDSypoST6DSA0PcCQSUlalqWujozP1V8cpFpnZvSXZdXWJ5T
X-Gm-Gg: AY/fxX57NkyPB6nETqST1jxopq3oNq4DaGhDFHFnSHS1k/2ktkecZNzbRNnhvDNNSXj
	QWI1ZnEguuWq/XJKZabWoJKGfBJPa3xk1Km9sFOY3baCjrQ7gRJj//MIldChoJCi0zctC1hzSZ3
	KUZvbZDCMphT6krysnMjPvI1rFVUijGC3TGDW3rxnQihw6+6V9m9tm85GyOKVN7l2YRq48yvbUX
	wGaJjCPqTo5BllksupKfOR8Oi83M/Gcz/WJrrVuQoq86y9h+Pg7fUU5XgQX+kkgumJhC5zRxf6d
	PWVn6v0HQ1T0qzNMGzKhHa+QVdjLJU7fYdAjjiP80lmTN0Nav1WFNaF4MP141YnTtyS76k5djTS
	9YWBzDNPwMsUYrgAFPG4b7y6MPclvOtMMZSQj67dOoZf3FJBmr2roM0hVPk4TxgaRrCLv4j1yqr
	YIz9o1M2X39fTlL3kV6UsCqiY=
X-Received: by 2002:a05:620a:4089:b0:8b2:e15c:be60 with SMTP id af79cd13be357-8c389429edfmr1392056785a.88.1767964384711;
        Fri, 09 Jan 2026 05:13:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGwjJitLy9yE1EF3Cff9LL6AgsYBdvt5wBqevXDELT0x/mrye2ZYfBbYvnaBJsQ/NCBbtfEeg==
X-Received: by 2002:a05:620a:4089:b0:8b2:e15c:be60 with SMTP id af79cd13be357-8c389429edfmr1392051785a.88.1767964384189;
        Fri, 09 Jan 2026 05:13:04 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65cea522sm2781417e87.3.2026.01.09.05.13.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 05:13:03 -0800 (PST)
Date: Fri, 9 Jan 2026 15:13:00 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
        qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com,
        quic_vbadigan@quicinc.com
Subject: Re: [PATCH v4 1/3] arm64: dts: qcom: hamoa: Move PHY, PERST, and
 Wake GPIOs to PCIe port nodes and add port Nodes for all PCIe ports
Message-ID: <xk2har5jvunwc5lhue5j7nunrcnecnljwxz2l7cnxu4sdeyixe@bcflvpgmugyi>
References: <20260109104504.3147745-1-ziyue.zhang@oss.qualcomm.com>
 <20260109104504.3147745-2-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260109104504.3147745-2-ziyue.zhang@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Ue1ciaSN c=1 sm=1 tr=0 ts=6960fee1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=hO0vvW4Z7aDYz2clpJ4A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: 78YON8pUtMW9GJOhyVGhU2LejeGcFbvq
X-Proofpoint-GUID: 78YON8pUtMW9GJOhyVGhU2LejeGcFbvq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA5OCBTYWx0ZWRfX2kTit2G97v6H
 ZIvgVhzfN969Tr4aC6N5wRAsmjRDdWcuj5tHSaj1kbt+vq1Hig1DBKY/GH98YP3JVe6GwgoREvJ
 ftxSBdAUs598ORzK+o9uAmGg+g+26AckB2ahZarS1YPzC760g+NenN+E9h7krlfNngm9UdW49pN
 5xym+yTZ99J6/fxyaMjjLjdwz0qB9ChRI9DeJDlG3kRj+siYtZlwh1whX5gE0+GozmeY2n2rkV0
 EMOCvkoptnHMh8k79XWi/TdRWXLDcoyXqqLqw8c1A69ysMA37Ube40QzhxrJixo6WWeNJ61oEvz
 +Js2m5/BUsXGE830xdRDrxTcOxxS6NQ8Xo62ZOs+v7EKGoyCPl0uKOJiImXYbtRjt5Jj/m1Y8/5
 JdoItH81Z5f31H/wpyhdlu+0wRr5DxslU/yGKEfKKd9mgrWpzRSSZHf+MYByW5+aT5fHZEHrDYj
 M+bckpUzH+FD8qN5U+Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_04,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 bulkscore=0 suspectscore=0 phishscore=0 spamscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_051306_683101_23ACEF6D 
X-CRM114-Status: GOOD (  14.38  )
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

On Fri, Jan 09, 2026 at 06:45:02PM +0800, Ziyue Zhang wrote:
> Since describing the PCIe PHY directly under the RC node is now
> deprecated, move the references to the respective PCIe port nodes,
> creating them where necessary.Also add port nodes for PCIe5 and PCIe6a
> with proper PHY references.
> 
> And also move the PCIe PERST and wake GPIOs from the controller nodes to
> the corresponding PCIe port nodes on Hamoa-based platforms:
> 
>  - x1e001de-devkit
>  - x1e78100-lenovo-thinkpad-t14s
>  - x1e80100-asus-vivobook-s15
>  - x1e80100-asus-zenbook-a14
>  - x1e80100-dell-xps13-9345
>  - x1e80100-lenovo-yoga-slim7x
>  - x1e80100-microsoft-romulus
>  - x1e80100-qcp
> 
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa.dtsi           | 42 +++++++++++++------
>  arch/arm64/boot/dts/qcom/x1e001de-devkit.dts  | 24 +++++++----
>  .../qcom/x1e78100-lenovo-thinkpad-t14s.dtsi   | 24 +++++++----
>  .../dts/qcom/x1e80100-asus-vivobook-s15.dts   | 14 ++++---
>  .../dts/qcom/x1e80100-asus-zenbook-a14.dts    |  3 ++
>  .../dts/qcom/x1e80100-dell-xps13-9345.dts     | 14 ++++---
>  .../dts/qcom/x1e80100-lenovo-yoga-slim7x.dts  |  8 ++--
>  .../dts/qcom/x1e80100-microsoft-romulus.dtsi  | 19 ++++++---
>  arch/arm64/boot/dts/qcom/x1e80100-qcp.dts     | 21 ++++++----
>  9 files changed, 108 insertions(+), 61 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
