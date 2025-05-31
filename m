Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40188C5AE59
	for <linux-phy@archiver.kernel.org>; Sat, 31 May 2025 19:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iLcnD/9LbjgAAlDfpo/kW3+vSSWNLymnbD62dhHz3wQ=; b=jct0/foBkarc+3
	24v4y7EYHS5AvSDt9EART2LfegzA+luFA5PxoBvPVn66nUgS113UJXlvopN+sTppik6bKiEo7VQCG
	79MfGvosnWr25IxD4pS30txRPPsNDAOZdkVH+ZlunuKxS5nB9P/hARrdTsmcznEpQZCl1iT9gAgnr
	Mb+jSyjiZx+WaM/6N+tNHzKtbn1ck0MTARqd0h9TIb70xLlEm7McXwQTthDLd0Hr8jtHa50UZlVcN
	l81lJtaCEEog5utYB+TmJusA0ALmfldrUYsZs7UpfcH9J3grbNduXO/EoRzkx3GxTdHlKAJVmK2Lt
	YAJNoQ3P/scuQ9zNOzvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLRsw-00000004Am0-2aX9;
	Sat, 31 May 2025 19:28:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLRqn-00000004Ahc-0vtK
	for linux-phy@lists.infradead.org;
	Sat, 31 May 2025 19:26:39 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54VJ2Ng3001513
	for <linux-phy@lists.infradead.org>; Sat, 31 May 2025 19:26:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CrU6uwD3Ib8Ilhn29fx2EmcIB6JSJ2gX+zA3T2fzlk4=; b=KkEgYvgSW1tfljJG
	OgLzcdEiLuGCiMiRdn5Hy5LiNRJpBwT4QYXmH8roanWxxcWpV2k391goKEDBn5zC
	AVHl2yAWt6ka1py0J3gDwBbBu5vz3rBtnml/YCigCxpV69EObug2Xn3WY11AdgBP
	B3Vq8iNJc0v+K6id1TU8t2sk2y5iY7yB4c6FmdueNn/F9Y/APY/EI59DhC0faVvc
	GHqGkH3l2CJ8gQaMFK6vcu/0xYgp72WnLaTxbmiVSP8pQZrMpukHOIlYRcbjapF0
	2mN/yJYCSswuzuKKa5v6Uj95Wfg5aEgC0yE/5XG2YWCVnGkX5zk7vLmdzzbs36de
	grrIow==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46ytm4h876-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 31 May 2025 19:26:34 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d0976a24ceso74348585a.2
        for <linux-phy@lists.infradead.org>; Sat, 31 May 2025 12:26:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748719594; x=1749324394;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CrU6uwD3Ib8Ilhn29fx2EmcIB6JSJ2gX+zA3T2fzlk4=;
        b=UjKzCkNpqsZOpywKoW/ZIn1Qkf8j9Qoj27hTlYJ0DEOBWXGK4NLGMWQKgqavvB9KRX
         mPevLnnrWy6cG/85E63+qjXh1zKq5K0hXPEfx2Ealal9n6Fa0sJeSOumaDdu7gMDTCDp
         zTT3+bpqh+t4v9kE0ieyeApxlCacGZ1ihiNJQDCNLgggjSlfXXWf4StUDsv9RYygGESO
         3cUVJjO672drSyGHIvZrR0tzePL1yWePbOW/O8vuc0q5Rd51qwrkZAm41Od4gjFF2oga
         oGUKcBy+zXDa+2vcX8LusvE0CawjN5uo+RMgj89ROuZo9fi/Og1iYRhGOJXG6GCCBuay
         qWSA==
X-Forwarded-Encrypted: i=1; AJvYcCWFQ8aZgGYGRQfmwOEvlW7h6rwNc99ug4Lx3Hk8MhuMsTIbwAzTzGsuetdm/x9DGNWiWpn8uZbX1jc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzZ2Z0AiHFsroeGYMBbKevOzg2f3x+rR05whczU+FG4clkU2aDw
	HD8VIj9Hq9bOOvdq0AcMJy4nzc4DQy4Y6TTHFkBwphwy2r8LL0WxSoEFijLlvCVUbg5646eIoJM
	xddwYCbZEgbS2jZkszyWYmz3MceXsPWxwr8NfCbPuMnwewTIo8t4YBOZ4Omt74hFBPrOT
X-Gm-Gg: ASbGncu54j7sFDiC2hKySpGJ9yOZ9DWH4R6h9CFZu8leMuU1tbmAg/Bn6/YREf0ZGEo
	59CSOo6IY678JnZfwLTAEAguFvOvYRhK+/01AxL/i6inuS3ei2WvfKWUjPpRGhxKEmBiScd9gFb
	e/W/v0nb/LBsfuxWON2hxHb/uHk2JXdjnpNuT1dib9iOC7cVYNgvgZKGKrBJr4eKiDf8OqbhlHb
	nZA0FsviQ2NTs2/uSo4wvjVGUbOt5rTKWXSANmxVgAmRU2waTXXFOypXlz3zVaqG+QncXEZPkvF
	5k8TloZNX6F3VBeOlvjCs0RYX7vzrVGpTnocpO6ODsEj88hP0r2DMgJ8AHKqiYVEbQ==
X-Received: by 2002:a05:620a:394c:b0:7cd:14b:554b with SMTP id af79cd13be357-7d0a3df914bmr403843985a.10.1748719593939;
        Sat, 31 May 2025 12:26:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGgWeFsZuQVBnuevfLlI3W+HHd3FvIh2wDCmEbb3BOsXmzJcbTj7lwjNVLtEsvsVJTLk0yQ6Q==
X-Received: by 2002:a05:620a:394c:b0:7cd:14b:554b with SMTP id af79cd13be357-7d0a3df914bmr403840785a.10.1748719593528;
        Sat, 31 May 2025 12:26:33 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6058563eebbsm2805063a12.67.2025.05.31.12.26.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 May 2025 12:26:32 -0700 (PDT)
Message-ID: <03d76a6a-f027-4529-a917-2c5f92530de6@oss.qualcomm.com>
Date: Sat, 31 May 2025 21:26:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/5] arm64: dts: qcom: x1e80100: add bus topology for
 PCIe domain 3
To: Wenbin Yao <quic_wenbyao@quicinc.com>, catalin.marinas@arm.com,
        will@kernel.org, linux-arm-kernel@lists.infradead.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        vkoul@kernel.org, kishon@kernel.org, sfr@canb.auug.org.au,
        linux-phy@lists.infradead.org
Cc: krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com, quic_cang@quicinc.com, quic_qianyu@quicinc.com
References: <20250508081514.3227956-1-quic_wenbyao@quicinc.com>
 <20250508081514.3227956-3-quic_wenbyao@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250508081514.3227956-3-quic_wenbyao@quicinc.com>
X-Authority-Analysis: v=2.4 cv=RrDFLDmK c=1 sm=1 tr=0 ts=683b57ea cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=ICgkrN6sfqZrQ0pjF_MA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: MPYw2Mw_yEzQ3cUsHn7Eb11HSik3EZxR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMxMDE3OCBTYWx0ZWRfXxtwSSxSbPy+K
 ifOO4657aq9tX9qWgbPHe+gTfoZtq308LiZERd+VavydW8a8AJijReqfOuyTIv2+HgS+WJcJ7YQ
 jaoAjIoWC+6Hf6Qullv6WCqNwyT3C66hjECq5caXF5NprKk7URRR6NbR28/6PFj5Yr71udKOx7u
 pK8xW9t/j6VcczNPzCmIDpAiENeb7gxVu83FebOoY5eQ8xIP08HBiPQlhTzz9fC4/b1cfkdjCsR
 7RqTLvYivSu0ir/T14xPjAvSY1JpAXP2IJnpmOo8pKlu+z2wgWa5SK/awlubClJbRb+s/X8QvrP
 MzRzJc14Yag2a+SKxjGCpI8eY8XJ55Tb9RHyr5dC3nHSvOg1y0aVPAw85HAzD5jQRCq18JTS4O6
 1M6QBm4kARodv030jGZ9lSkNxyExkjY2f9YfqafA3QrUVqPOwCH+4usUBszdCAWbd8oHNpFD
X-Proofpoint-GUID: MPYw2Mw_yEzQ3cUsHn7Eb11HSik3EZxR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-31_09,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 mlxlogscore=999 impostorscore=0 bulkscore=0
 lowpriorityscore=0 mlxscore=0 phishscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 clxscore=1015 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505310178
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250531_122637_390019_44A3F9B3 
X-CRM114-Status: GOOD (  15.77  )
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

On 5/8/25 10:15 AM, Wenbin Yao wrote:
> From: Qiang Yu <quic_qianyu@quicinc.com>
> 
> Add pcie3port node to represent the PCIe bridge of PCIe3 so that PCI slot
> voltage rails can be described under this node in the board's dts.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 46b79fce9..430f9d567 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -3287,6 +3287,17 @@ opp-128000000 {
>  					opp-peak-kBps = <15753000 1>;
>  				};
>  			};
> +
> +			pcie3port: pcie@0 {
> +				device_type = "pci";
> +				compatible = "pciclass,0604";
> +				reg = <0x0 0x0 0x0 0x0 0x0>;
> +				bus-range = <0x01 0xff>;
> +
> +				#address-cells = <3>;
> +				#size-cells = <2>;
> +				ranges;

If you end up setting a v(n+1), please rename the label to 'pcie3_port'

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
