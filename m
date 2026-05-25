Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAA9ACD5BC9
	for <linux-phy@archiver.kernel.org>; Mon, 25 May 2026 13:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pfKf2KFgvto/nJyJv5YgW0kld6pKr5XO613NhlA4Pno=; b=1UHReyIyHjotbN
	WL/5SQwP85aCQPFpvP+rZB1z8OrUAqzVjAHq05rkagt6B9v4NSViyqQl+2uAghRCj+8Z0uUH6+WRr
	VV+B8ET5m0sEclb767HeSnD8DN9Ue7j3gwgMXq15KM0OsT9B//UR54LDlo0qcLd+1tOf6q8OWooxr
	fJChxIt8ju2XV/74egqFbxdsMCFjb9ccoKlLLxYjKPoBljv4q3QoBUsRWor0p6fwApvr+DwxTXjTs
	23H2W2GtHZtt8p2GLstO3RPZPrcHjyJNB/jN1290qDsUur1zSC3F94yoOJ7x6cPqu98fS740UahQA
	w2mUF62DZzt1TjvgSzhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRV8Q-0000000HHfz-1Hwa;
	Mon, 25 May 2026 13:14:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRV8N-0000000HHfJ-3swm
	for linux-phy@lists.infradead.org;
	Mon, 25 May 2026 13:14:21 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64P9ErRG080260
	for <linux-phy@lists.infradead.org>; Mon, 25 May 2026 13:14:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6b3DrpErweAr8LUzJdL3m0TUMj29KLE3BG5Cv+ijrck=; b=Kg8ItYblBODUolE/
	exqk3c9YhXQaEglM3cSAlIMksEKTE+zu/vPxxn3Ma9YcqRSLnQsTHFAFvj5ijt0r
	zHvzzpDuxlXNBKQfy0PmH3O0oRZ5dr2qGZaVX22AmfZ0SVGTd4mpvVOAgheF66+Y
	86V6KX49y6GkJ+TBp2EOo/4OdXAJzMURGKhgPAdjkBlOfhT2QTUrmDE+Ef1oQT5I
	67QvZRFWRVnyzo6FDEBB66v4fiverOsksZFYvgkLAKfJPyQ5FDzEKyG1QWNyq9jd
	ylieoyp68CzThnul4lub+/hRBYbPM+C6WCXyUNs6t3joKGN8NM1HjqyRjGvfyQNg
	OaOUeA==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eckma8rqm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 25 May 2026 13:14:19 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-57606a825easo845250e0c.0
        for <linux-phy@lists.infradead.org>; Mon, 25 May 2026 06:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779714858; x=1780319658; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6b3DrpErweAr8LUzJdL3m0TUMj29KLE3BG5Cv+ijrck=;
        b=Z7gYk8jHaka8SSS1nUtso4mai9FWZwQGfZkESfyvVcjLplaCfpCTRwK2Wrs22rffum
         H4IRBLpTfK34Yu20MruB196YQpCwaS3wN8ii6LBLt0Wnlb1uPANEO/rKQQRQJHYUBrju
         gscpEP0jxNMao7xmrA4fSnGOV0xDLETf0Qq60CHLhHX084xj+KLVYcHqFBFse4/Jjlz4
         x0Nvp1Ck16SzRvX4qa3BUkRXENgiwGwy6N+GAGIEJSMfQtRukgx8cp0NvXXYkPSvuwWW
         p+x7qyqd2aU/GCIypbr/1PIgL/xSY9nQwm4yLrILMvQem7crTePfJOIBlYk9CZb4/Eoi
         IZnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779714858; x=1780319658;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6b3DrpErweAr8LUzJdL3m0TUMj29KLE3BG5Cv+ijrck=;
        b=qSJcIztXwG8FNpto9sBDk9aZI10zRoy+gO+LFW1om3Q/YoG+n+bW1iYYzRKisWPIzt
         UZ0mqOqaTA1IQETM+7oCwCubanlxVTAQgbjwMUQ32GkN2AXze3MOQfEV474mVdAiqkoj
         XX14PVfJFCdobUwZSSt5KdXaZ+WtIVP5H9LSVXi7KU/7P9iZcdKm8tKMlRPCjhnujOPu
         10VgSCwjVrFWh0pF1fjc/Hk+cMAyKvqEpiLkk+hCcciB+hlPzSLbNLdo+E1VJ89YccJ9
         l/Md6CCFGJnIcSabuYpWG0fjyb5p6fpq9STdpmwop82F8F6OPsxCLQTqmGgJYOfP1Ot8
         NZ9A==
X-Forwarded-Encrypted: i=1; AFNElJ8tUNKbr3OyqsqvA7YZW+bXr06esLSbgdkB7pn27Vv1lv1AHyTyb3gSlwSu6RRrXIqzp0iURgOflXM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxV1pPS1tDLJHaKXMV19BXXuGozJVQCOlR4qS6g+EBDPYBbm86T
	5fw983pDFZxiV16yzjeZVQ2xJnbHm77zPribAHqBiyxrunb3Z2l3ee8R/c7U1eLbnq54+z15C5C
	wiT/yB+vAeCgOtuB5xuDfFUDl/QGHZi9sybb2dd0ACPRmVvDrTtiCznjWWayFnLs1FRKU
X-Gm-Gg: Acq92OF1b5PbZ8+Jemstq51/Eaizd/ulswiZft/L0bCKYBIEX0rjoJE11AsAcOYBq6D
	H/0OqMFreBzW/wyu4iRjL0+z77I/R2FPVBYdbTagxqixiwyyEz3OVhtlMfseHvPQ6LZp+3GNkIt
	Qwsk3ZOshaTkTJO2LqJQ70T28Q6xgIXsbXXI4l/lQgGkCbJigUswMRn2SpgFL4/Fe7XWNRp0rua
	q6Cu88GiF//QHDKuifxLZFyQ9E3+9Wq/SKrvw9aT4B7CHAWeRHPIqFOcn0X+Xe4SBkX1y5XOc8Q
	6bNitzGRGwo610avmFE8bfkVmHxhMN2LHoniE316yYxXHlmL9JKqXVjMP5dSoImVOp4M2nkrx/S
	6Yeu1Hen7phm4rBoJSPceLTQ7K6DvIWRvIF3PHkgwmlno3g==
X-Received: by 2002:a05:6122:2ac3:b0:575:35f9:66b7 with SMTP id 71dfb90a1353d-58663e43d1dmr2314185e0c.3.1779714858159;
        Mon, 25 May 2026 06:14:18 -0700 (PDT)
X-Received: by 2002:a05:6122:2ac3:b0:575:35f9:66b7 with SMTP id 71dfb90a1353d-58663e43d1dmr2314168e0c.3.1779714857596;
        Mon, 25 May 2026 06:14:17 -0700 (PDT)
Received: from [192.168.119.254] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-688bd00e751sm3915244a12.27.2026.05.25.06.14.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 May 2026 06:14:15 -0700 (PDT)
Message-ID: <ad5e2d91-6166-4fb6-a9da-1464b161da24@oss.qualcomm.com>
Date: Mon, 25 May 2026 15:14:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] arm64: dts: qcom: Add initial device tree support
 for Shikra
To: Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
        Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>,
        Xueyao An <xueyao.an@oss.qualcomm.com>
References: <20260522-shikra-dt-v3-0-80ffde8a3dc4@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260522-shikra-dt-v3-0-80ffde8a3dc4@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=cL3QdFeN c=1 sm=1 tr=0 ts=6a144b2b cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=0ejU1cMun9qC18S2p54A:9 a=QEXdDO2ut3YA:10
 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-ORIG-GUID: JfkGrldzmmP7cuuHunliieDckOOxem4u
X-Proofpoint-GUID: JfkGrldzmmP7cuuHunliieDckOOxem4u
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI1MDEzNiBTYWx0ZWRfX3cQs2A3Fsx3y
 wNhqAPe3T8iWc1AcvWNTfWw+yEtUFkWtwTVO0UHHXKskqMIj7F5L/wnCtI+gvtBCtgQuYRIAeRz
 8I/9T5d7AjEam3Iiwww60JIT9NvBTBMIbQK6Xk7d3tKQ3lAbzujQEuGTwxSnM86kcvFh7/KWRLR
 nuWoCqh16v41jRtaTxOpT144HqLR7W8Qnu1ny+mylFXTRJ27gP+wg7j3/wINfi8ZupTuMi2SHm9
 GFUnqchcFVJaCDcWbMKp5jdMzzHGni2Atx5CGccXf6/tv917cE8gqNGaCuiPM37w0QcoUTD6TGJ
 qB+Zg0rgakDs+z9pS9q7U2z3KhSR4kTKcXvgRyfp0T7hzfcPvW6i22K7NshioS98Rwgq72jK+dG
 eF0KnIrh23/dyjQ6TwFYK6jt7OvWpQryD7GFATV/QliNQJxuFa5KeiuKcaV68cIwyQS2b9X7aul
 W4Qsvs9hMqL7pP1D0rg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-25_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605250136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_061419_976167_E6DF228B 
X-CRM114-Status: GOOD (  14.55  )
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

On 5/22/26 8:02 PM, Komal Bajaj wrote:
> Add initial device tree support for the Qualcomm Shikra SoC.
> Shikra ships in a SoM form factor; this series covers the CQ2390M,
> CQ2390S and IQ2390S SoM variants and their EVK boards.
> The series adds:
> - dt-bindings for the Shikra SoC, CQ2390M/CQ2390S/IQ2390S EVK boards
> - SoC base DTSI
> - CQ2390M SoM DTSI with PM4125 and PM8005 PMIC regulator definitions
> - IQ2390S SoM DTSI with PM8150 PMIC regulator definitions
> - EVK DTS files enabling UART and eMMC on the carrier board
> 
> Note: USB support is intentionally dropped from this series. It will be
> sent separately once the USB driver changes for Shikra are concluded.
> 
> Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> 
> ---
> Changes in v3:
> - Drop USB nodes from this series; will be sent separately pending
>   conclusion of USB driver changes for Shikra
> - Fix CPU3 reg address (0x300 -> 0x10000)

This part seems to not have gone through (have you verified it at runtime,
e.g. via reading the MPIDR_EL1 register?

> and memory base (0xa0000000 -> 0x80000000) (sashiko-bot)> - Fix power-domain macro: QCM2290_VDDCX -> RPMPD_VDDCX for sdhc (sashiko-bot)
> - Fix MPM interrupt number for ss_phy_irq (8 -> 9) (sashiko-bot)

Hm? I don't see a 8 or a 9 in either this or previous revisions

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
