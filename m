Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D471C87FDB
	for <linux-phy@archiver.kernel.org>; Mon, 11 Aug 2025 11:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/WT+KQqj+yQWBbsiLstIiIKgINPK5mBSRK31hOwaK6w=; b=ziwXx5KWNQGUPT
	MLh6U+kkGmLlxtSR0MMhSnUNOzQLZCQIQ4/Id0TbAy6HtzBNWisADs/XA7+uID7R7NPr8VDjbwAaz
	u6yuG0WjrZ9gLK2XkmfNGeS33/BBLpl4FDY4pTQC69QKo4E35e1qZ5322I9QgV8/KQKFvOWJhOcXX
	u+QZbkaFGzZKbDZ5ld9ALIqrkXiKSrMz9auvgU83OFM8Q69CAgG7ArtZzGMmInL7WbroIPDvAiseY
	b1534rcQOdgnnW32rhVf91juSEjTvHk3rHJDEaQNOcdDzc1cZvtPyLD3qN19OpVQOCEAk4poarcmP
	pU52TdQtrFBKK5R+UV8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulQpU-00000007Xvt-3ieV;
	Mon, 11 Aug 2025 11:36:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulQUA-00000007TUX-2aSJ
	for linux-phy@lists.infradead.org;
	Mon, 11 Aug 2025 11:14:39 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57B9dKWu018323
	for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 11:14:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FMVgCALr0eA8+Us8AyPrgn7ofcaNBLZnHFXRdCHjjtM=; b=ktTDidAItFqOW24t
	S2HZKgTLd608Um1Wjh9VBp6qsSawH55zNd6TIZw11mULKqEatccWJTDo7Mjm5C6n
	DwQlz/d12F0HPP2jPg0x+seP3HZr+XLAINcB7wcGiqNdwY5VQJm9glOX5mxo8/da
	rzrKG9D4mjdzpf6exaer6qjLaWEum3Uq5SgPpNl5ZmEHsJbhvOnURV1ondGMOEnG
	UeBeEHbIybYWKH641vvZNVqfu8TmAhRjb8wgr3S4obhADzh+mpZA9OeQmOOYlKVp
	4WGchkteboag+vIkXj4KcPEYY64Oswak4OkZfCz59BGRPTPLZIOdV9VOXV3whK74
	9LibGA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dy3g444b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 11:14:38 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b071271e3eso10880771cf.1
        for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 04:14:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754910877; x=1755515677;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FMVgCALr0eA8+Us8AyPrgn7ofcaNBLZnHFXRdCHjjtM=;
        b=lGtCuX7U2c5zs4xUPvUb0C3iwiGsLLUJqt4evNh3nyRD7Wps70PdNBl9mvwFAYVyeL
         yVqEiG9zJvn5q24+AmDxDqADHJk7sQBVgxH0dHHyn9xsRK6GOXuHiVL46pidLYyhhrse
         7nhUk5Vd5H/6rnsuMBrAaR0ylhBvZK62UyVzn3l7M35BVziaxHpLJNYRhNp0mSTFN8gm
         xrd6CI1q5Pjb4yxNKzG1In/j16MJn3vE2XFwz3F5W3A6T2qF/jLYMrOPlbQC59cPpo7t
         87Icl2G7ITwgiabRcPQxXOjD9gp/DOphI+OZNJvChz3znhJd483OOccEv6sYnC5BPFOh
         mUDw==
X-Forwarded-Encrypted: i=1; AJvYcCV9WfsyxAjS0ZFU9ZbyiXJYmSpAM8BxwAwpeIMKhii/Jd64kPUCDFSwUJ3pIK4bbT2519aNYER0EIo=@lists.infradead.org
X-Gm-Message-State: AOJu0YyDDBE+FOsxN8NlTvZT5yFSyYhHK24cU7/k+d2XndwISeUOZBBV
	xLivQ014jXK6WpvMg0tzKMwpe681pHHeJUfnALEu36RLU4BdO/TjaT6GSv9ih0krFPt55qGtTZ2
	PgOAmt6bZ9B9+7WL4/LpJ8dBWwf8E+7R4pcou/pxuFx0pCqCYDsUFI6oC5z2lk4vOBUmu
X-Gm-Gg: ASbGncuM1syuRABOixhlbac1p34QtR+mp1zYeeJmb+jeDqu61jVv2P9JEdiUShP8XBS
	Fv7w2h676jId6OGj15epzhop01ZFO7i1AIiVJujWae4EpEo8h3GwCQUhzy/r1XgN31v17lrQZN9
	OM0PBNsKkdQ3J8N8x/DGycO/WcOcZxtMyB0KEbrPE/mhjKN86NHWfKBMo4aL7qY5GbmNz3uFXnF
	8QU41bmAcZsOpU5l/KD4BnCIlne0p203S9m1lpvP749sPALtQXbhQ5bxI2LT45B2/EsBIhyGxdQ
	TobkJ2kXFTvXgO7kyb6pooJraw2YgSK/FnE6g4Gdnw2rPzQniTk5Ffh/OLr8RAhxPfsQeYSsgL8
	DHYM2h0Vt+x2XOJsEfw==
X-Received: by 2002:ac8:7d14:0:b0:4ae:d762:c070 with SMTP id d75a77b69052e-4b0ea60d209mr1240941cf.2.1754910876591;
        Mon, 11 Aug 2025 04:14:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGcUfndsz+/5jp0G9OaiDDbR36Irm8Uk+PPCGZvdlMWx0v8ppULBdZLYX9OArLLxW8LKzxvuQ==
X-Received: by 2002:ac8:7d14:0:b0:4ae:d762:c070 with SMTP id d75a77b69052e-4b0ea60d209mr1240671cf.2.1754910876078;
        Mon, 11 Aug 2025 04:14:36 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a21ac0asm2000540266b.99.2025.08.11.04.14.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 04:14:35 -0700 (PDT)
Message-ID: <a6dbfe06-00bc-4fb0-9496-fb7ca849f832@oss.qualcomm.com>
Date: Mon, 11 Aug 2025 13:14:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sm8750: Add PCIe PHY and controller
 node
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi
 <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com
References: <20250809-pakala-v1-0-abf1c416dbaa@oss.qualcomm.com>
 <20250809-pakala-v1-4-abf1c416dbaa@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250809-pakala-v1-4-abf1c416dbaa@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=X4lSKHTe c=1 sm=1 tr=0 ts=6899d09e cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=gkRObvzxmN_HJK3DEhcA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzMSBTYWx0ZWRfX506LwPgPN3gv
 uyh8WJsysWFbC6P7/iEyQYh7Igcr8F0gNeHUVOa00BHeV8Gt4sDtd0i84toHjVbkCSJ6vxaECfm
 kmULWfX7efaTziPaYEGrSLcYJKt5cxz5CIA99MI6LW8J014jalb5GOzu/bWAhFLqEUY2WDQIRXZ
 CDrHhRWrXKA4yIGYD23494uiJz4OQj5gposKuT3tQjUTex9hQOLHrPBym8TzfbiKSMmZn+LynsE
 KM67g0dCgSpQ/8xUs+Mabs/sqqK1e9NJMUmj7VALph/OogTTGFDMGKzZyJAd+kA4wtLDKlCqIic
 sT/WKNXMku7J62uK15aD7PjlDOVBYD+DlptZU+1eJkvrV8A3ntR1xlJmEwmIdV8vaavy2cMiqIM
 zulWZW3r
X-Proofpoint-GUID: NT30-wwsK3VkvLgz0g6SQrnkKQIdhtrJ
X-Proofpoint-ORIG-GUID: NT30-wwsK3VkvLgz0g6SQrnkKQIdhtrJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 adultscore=0
 spamscore=0 bulkscore=0 suspectscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_041438_661795_D5E46E40 
X-CRM114-Status: UNSURE (   9.96  )
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

On 8/9/25 11:59 AM, Krishna Chaitanya Chundru wrote:
> Add PCIe controller and PHY nodes which supports data rates of 8GT/s
> and x2 lane.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---

[...]

> +			phys = <&pcie0_phy>;
> +			phy-names = "pciephy";
> +
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			ranges = <0x01000000 0 0x00000000 0 0x40200000 0 0x100000>,
> +				 <0x02000000 0 0x60300000 0 0x40300000 0 0x3d00000>;

The BAR space is larger (0x2400_0000)

please align the overall node style with x1e80100.dtsi

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
