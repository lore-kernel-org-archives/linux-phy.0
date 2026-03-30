Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88B54FB3D15
	for <linux-phy@archiver.kernel.org>; Mon, 30 Mar 2026 10:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZrHZWdn5918EAHggRxpuOucHVS+3ndHZrtNd4UYy54=; b=l2cA6C2fYx4JgT
	KgfHktRbv8Ftrwr3UvlndZpRsbu3hfDrhU+OmDuoxs053JQxJypSM9Ta3wjd5L8bKK4/Uq3/2CFzD
	KO2LWh7HuYXSZZYNl6QPjk+A/bk/tia3vAFbDLIdl8uNCMoLtoFwbPeck/ZkT1zaXU65pvGbshVpo
	grjYfIoBCKUSNjiFYB2aYU18gKxdbzDqjoxlWBg8TYV8CdcPqZUxtUiICzElvHF/WgZyruY3sFDoV
	RTrSwhgxA5WRIIGOfSbkXEp/y18p5mkToXdR4119krn/qOu9vwVDwBSI/4+OJJ/XSVEhGF085Px/v
	sWkH0RWr6sd2BJj1g2Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7A33-0000000B5Lt-1BZu;
	Mon, 30 Mar 2026 10:40:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7A31-0000000B5L7-2Xl6
	for linux-phy@lists.infradead.org;
	Mon, 30 Mar 2026 10:40:44 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62U9nBsl3721921
	for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 10:40:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sk/DIoeVKY0CC0dEsRtNd+7IweHQWp8ZoQvYoaVrBWE=; b=WobDhBgkfhqsbYrn
	RMJnZihJ91N75cHTPhfCxJcTXEAXzh309UfMLFRi6MCrmVKaQPC2q6sbVvs6N7/y
	16OAGEEr5Qs2MfDGSGM6iBdsR8NLTof7PiPQea+vTqOXrXVcgm1qEb7e/b+dLo0Z
	kaKoatMhg7slir8X5CrBpwZOcJiyFlqWb6BhqSscH9KdDTdOD+omDLAbrUngEz7Z
	s4jParQykN0k41yIKts+GRtD7KxnXD2+nFJ7beJN2V+KNyq1aD3VDvgDAE2OVtog
	+aRnlGz04bIdjHDm0P54jRrFG+FrmFR7AKQMnusB8tBNAQS6mo+nBVvP4CHaswe0
	vuF3Ew==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d7pvmr6am-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 10:40:42 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-89f3e41fc17so8987296d6.2
        for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 03:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774867242; x=1775472042; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sk/DIoeVKY0CC0dEsRtNd+7IweHQWp8ZoQvYoaVrBWE=;
        b=aqGcdKVr0vDDMGu14F1Ist6GqMdxZa3WIMS2QlaMHF0C08+F6ha/KklFj5fXntjjzn
         TXcJSskwKU5TBUwZsEysvAcflp15HZKGLOBamdw++SQ+ltmkAiOyXknG6pLXihjKJdw4
         xe2p23jYRfn6FwGSTV/STukSUC5QIOTVDV2kxHdPVnHC+Lp0CFn95aMfO2L5V0kKar8o
         +t0F3xdXGLf7+3FBaqsdCOKTlwAy+PBR7Ajyl1rUfyo5ANLtRkFzSUBaWmNg7eA3XQmH
         zTkXHkpgPd+cMMjvW29e5s/AFepHMFFzDsT+hEeY3gxPlZEcKZUEXkaCujSbLlVWc8BM
         DRSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774867242; x=1775472042;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sk/DIoeVKY0CC0dEsRtNd+7IweHQWp8ZoQvYoaVrBWE=;
        b=VsJX0FJhdKvksuUZqT1A+DfgzaREVfIZl5OqUJ9prHkVG6KqycCNLweLkJs4AFC5UC
         JEIeNGFipmYfS9dA3jq+VpXfNeUbFvQVhkUdZoLF6xU8NOgBHSrCgPORnqYwIumL4h1k
         MLadH7GEzTV79/xEPgFAmojWLv62hTo3Rgmf0XAmT6Eb5gaC2NFp4FfgWgE7yQ0dmVce
         ujgODHyNeVYDAgVQWCaIv7Isnblg33mvoE8AZiJ3vbyOcyYKXlXlfMwrxT8LG58Ex7B2
         MJfB+jBEXlxFIOBtx/oLqmiS7oRpuJzV4sgENfhHusKZ2cCF+VGfhsm6CjKwCQx4jGY7
         8BYA==
X-Forwarded-Encrypted: i=1; AJvYcCXEfW7erkWaJ0vZYr0jTewxrNzkG/iC8bdqzmHkCmmOyWzg/ASne/vi/agvJkoGs6+aFxPaPQ8yHcU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzamRs8N1dWPqgAnRfFJJdoMxSrdSUbtDo4vviXPELqESfjGbRN
	ubWplpE7ww/LaXdf4KCFklE2Dy7SaFGz5OwhW+lSfcL42FyKiwdeJD0WYIvq5etwDPUznwL/BZr
	emzwdwXs4/fFnSzSDUgEtD/RhlfOThvVdrI/xCn0yEvlI77Sa9No9mcyEQDzuuL3r2MLN
X-Gm-Gg: ATEYQzxckrE1e4jn/jVmoe3Xcyt8Ioj5C003IzU6GNaYe1ui0Uqig0BL6w1JJkC8leu
	h3wfWf9R6GXtAHBRb1JpVtkRCerSTX5EK3H2uY5WWTrB6IXQGBzIMcrZbgMHGKscB2eWA9XayOi
	ibGOmlAQcG6KvgJh3O6sD0Jzf/GxSIRvTjthNlxxkMPDRbLS3sLb8JQ8Z9EgGhP2GeM0oFNf0ly
	UlOzka9Nqaevhm4AxI/L4dYJhYj8Q5Wqo1WzGACnAE+lAakR0Nn3TvtAINqE2fOEw0efmkhInoE
	Alpj0rgsaH1VHh2bol+uQC3RFX3doTvTuH/0Mftmv14tGqFEe5AWIxn4ZbxejngElftGa9NOvfA
	EM6zplZNIuwJ6g1n3vT6N0yrMr1ctLaPEaNN1L5+OCUbZOZ4qb/hwr77EW6fjUv4GvkMakBt2Zm
	/l19A=
X-Received: by 2002:a05:6214:250b:b0:8a2:18b4:79cc with SMTP id 6a1803df08f44-8a218b48708mr8466376d6.8.1774867241857;
        Mon, 30 Mar 2026 03:40:41 -0700 (PDT)
X-Received: by 2002:a05:6214:250b:b0:8a2:18b4:79cc with SMTP id 6a1803df08f44-8a218b48708mr8466176d6.8.1774867241441;
        Mon, 30 Mar 2026 03:40:41 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9b7b1a5dddsm277945566b.35.2026.03.30.03.40.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2026 03:40:40 -0700 (PDT)
Message-ID: <f9581412-6ad1-41b5-a484-930b06c54626@oss.qualcomm.com>
Date: Mon, 30 Mar 2026 12:40:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: phy: qcom,snps-eusb2: Document the Eliza
 Synopsys eUSB2 PHY
To: Abel Vesa <abel.vesa@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260327-eliza-bindings-phy-eusb2-v1-1-1f8a9ad6a033@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260327-eliza-bindings-phy-eusb2-v1-1-1f8a9ad6a033@oss.qualcomm.com>
X-Proofpoint-GUID: on9fY3CTkk6vFt77b0bXZ19k4wNDuh2D
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzMwMDA4NCBTYWx0ZWRfX61u8yYbyY1LF
 yDGiaZG0J4ht2gQg2htdIVtawzVYjbnm5pOcxPZXKc1ckwuiWeCiiW8n7juzeXBWi9Y+eV5nWoe
 1R7+hR0nfotwcrzgzi3j4xUfYiE5zhuEzU72jiWiYjQkAkv2AoWwj1fjTz8HoWVKFx38Z8bTon+
 BHbBEJTsKSJlEUVKQzq2Y6w+sVu2OZMbF0S2b8gUyOzzI59k0yyGB8ALPhTRX3tN3tX2wLpXlCw
 MIfHMYhAM/mJb3aUQFWupCWJSn35bRGh25EYcw0CsfNt+zFtKS3UX4lox6POv1BPbBHdOacO0YD
 MJRWXuQl3mD+ZqZqaoJP28bDYr1nPSgc8Hm2Fz+B8hf1Vsq3efa5cGwqjZ/ksMTsnlHf4CJPhl/
 LSw5unXAinUhHoZadaOYVAAHiXN8Z7ifnHIKfYAimwfo/oJPa1419qa5Bn2Y8IUhO15JWvnXFuc
 ge4thiCbqTAf5hl0toQ==
X-Proofpoint-ORIG-GUID: on9fY3CTkk6vFt77b0bXZ19k4wNDuh2D
X-Authority-Analysis: v=2.4 cv=S9rUAYsP c=1 sm=1 tr=0 ts=69ca532a cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=nuVsYHLnq4DG88yNg7kA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-29_05,2026-03-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 clxscore=1015 adultscore=0 spamscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603300084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_034043_770865_847D2BA5 
X-CRM114-Status: GOOD (  10.82  )
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

On 3/27/26 3:14 PM, Abel Vesa wrote:
> The Synopsys eUSB2 PHY found on the Eliza SoC is fully compatible with the
> one found the SM8550.
> 
> So document it by adding the compatible to the list that has the SM8550
> one as fallback.
> 
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
