Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD074D12694
	for <linux-phy@archiver.kernel.org>; Wed,  3 Dec 2025 11:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lHxA/D2lnbOQBrJsMJ6Hm7nGnyvl7j/dfXKL0sRMdfk=; b=rZ5mgWVh9QQMXf
	Ws8F2FH9rCF0y1+XwIaiCSonzxJRbiCIGvVXITrBKumUo+bO/BR8vbvH4eI97emS8NreJ21NubY4S
	4W+IyjUmAF9ScMX46yBi80oFtuQd46zf4VkkOK9s/B0b3sg96Oa1ziVUsmsre5uyCrgaTNGExTslq
	bQkT6acv8MUYwkpPop6huyX9XNL5DGNxPx5mOApqkCECjOVDKIe2CV1f1Qph2omntf7HfoeyhfI0E
	use23eyA7PQhs5SCOOG4h0EIg+TMlxuLjJn7sjL8Kq6uCLT73WL2Cmh1FofYkkVp4yjD2ggOBQ5G1
	0t0Eq5vnvRS0m7MBN41w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQkpB-00000006UT0-0fxK;
	Wed, 03 Dec 2025 11:15:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQkp7-00000006USW-43j3
	for linux-phy@lists.infradead.org;
	Wed, 03 Dec 2025 11:15:07 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B34ixQm385711
	for <linux-phy@lists.infradead.org>; Wed, 3 Dec 2025 11:15:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Sx0Sxi7RaZ5r/OLiymcootGTCfaloJHP1I/EOtGg0NM=; b=QQCgPWQvik8a3OvJ
	zv2UkH1ULms9JrlI0S6j30qdHpunRKda3yT5RSVV4gowcy0NTV81vpgpP6U+7J5D
	dN4wtUgJcTL71l1Y7ZEH+ZEP3ffBfBfgT8kdGSIXBSDF3R3QDoWblZGKSQ/FdJ4G
	MqSGs5ow2zzlIXkBCl7cj/eG/EVlzwjRpu40ljuwlHEisFF899HKWa72naXQHXD9
	Qr6swy0T67BHBTOnpTmqJFdAp2nRTH31cnVoa+gb7GJ5nHbkC4p8qnpgGlq5hfF8
	f7RzjZv+d9pFvQytAu02QNhuvGUcLbHhPrUgTwKeoo03e67DQxff+/vjYZtUfMHH
	4MliyQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4at5db2s21-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 03 Dec 2025 11:15:04 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b25c5dc2c3so118132085a.3
        for <linux-phy@lists.infradead.org>; Wed, 03 Dec 2025 03:15:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764760504; x=1765365304; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Sx0Sxi7RaZ5r/OLiymcootGTCfaloJHP1I/EOtGg0NM=;
        b=bds6w9dsR9+c/j+R+5aTcdb2KSM3xW6d0ZiRz5W1iCQ8mgKAKaVofY9enXXowQgtU6
         7n69RWW0msnlAjY22dPyP/rjKWRLnbT4SWyAnpQx/fkM3tM+2PrxaWfQhr57CbzW7td9
         es/c/ENL0By8M8RHg0G7B9AJ3h49oQ0R3eVBonHTbdZlItbMQxDn+3p4XJaWOsOd1lk0
         QL6JA9oHqexDqtDd5DdrXzf4/zZGHh7zQXK2ZejT8obc8Bq4t2CCxtbukRhzODcFktHe
         3Y1WLXgyOz4TG2qPMdyIVV5r5HJrtOS73v0TsnmjHRNyHOe425RTX6CG/AIUXaekognt
         1A5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764760504; x=1765365304;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sx0Sxi7RaZ5r/OLiymcootGTCfaloJHP1I/EOtGg0NM=;
        b=xPimH8MVR21Sj2hSFNdMiNzuQRKAMOAYgZYwO93Y3ytd0ar3CLTBtEqZ1aMi+O2Pys
         RGy7H2PYf6Nxqol4WIPkJqIGwHROdw7jYhIuKJRnohR7Zi74LTYSb/GQJLe7eG8U2T94
         h3j2XvQPTqiaoqmz26UDNchvfoq1MjrMt3ZU/31iTEbKrjXQUzmwCjV9WxCHk7thN0SN
         g5++qxCqETodoNci/MvAhN9d0guY+he0XvQSeXJ/ioPuiYNw1vw3J5qeTqzsgjBu0erW
         XOrPZkCv4KD6bmiwo2wvDRB3lv5RY9te11CbrZs1Gc6Z5Jfs4OtprWuT5A7umKkfjpKP
         MvcQ==
X-Forwarded-Encrypted: i=1; AJvYcCUzUOE58S+3HCAHseibXQXd1V8rL0vOjjgwSJIO0w3vcSkeNBZK+Vmv+H0DwYLq4+GRE7y6qg7UJx8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwrYAWHGNParyBG/AzJlouGgIrrcA5VnaZN8avC/8DoF+TG/lev
	6KXotz9qkfo8jL+BLDvw0PN0OcnyeZEkWoNtUPTDaxxpFaZ3yg9qxKPocIOWeWOhKj7/psrN8LB
	U9g8r/90p+JxlA2NwDGkOV/sN46D28wnhohJ1ucscYtTYN113yAXnagvN+mvBj8zShQE/
X-Gm-Gg: ASbGncvVC9quC1BJ8AsZvgIkBlz1x6jXFyH0t8VFn4VC5t8pQLQH/rcQBbMBP2HBZL4
	JETLIWjfoKmm4XZrimgnAPJWIJnUpBMMvxLngVGVrnTZA+7vED2L5hdXgsLPMgR4PL7eveJMIdo
	VE1ptgWEzITQSvkgWZrGGS1L80NCvW8cBfvIF1bDuSlA6PnGMcr4lPHEb0w8VheTTj/RiQ5VxPQ
	hgCpgKvk787cgFz1LPh1vepTppNWzgGYYn38nEXQWBjADSRG1zvjEw5ImxmvBAaBNs0IPFn2eOb
	xtkVUMa/naF9pk1rDENC8tNfIdGwDPMltlPnK37cSlsbILhL7satRSw6xpVlX7OryjwsyEhq3/W
	tZNYJ+Aqlf5cM4cAsSqm3YWtb1oeu6xdWEPt4wEvGl2sfnH41uuVaibPwVzRmYLswXA==
X-Received: by 2002:ac8:7f54:0:b0:4ee:1588:6186 with SMTP id d75a77b69052e-4f0176844ddmr17308021cf.11.1764760504000;
        Wed, 03 Dec 2025 03:15:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGuDgbijKKd62ii+mc6Bi9vpnrCyOLqg//ZpBlxTts37lCeH5/k75isDDIk/xGo92WQ15EXpw==
X-Received: by 2002:ac8:7f54:0:b0:4ee:1588:6186 with SMTP id d75a77b69052e-4f0176844ddmr17307571cf.11.1764760503486;
        Wed, 03 Dec 2025 03:15:03 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f59aed2esm1781866066b.42.2025.12.03.03.15.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 03:15:02 -0800 (PST)
Message-ID: <fe15827d-c15c-4b4e-973e-3cc379714467@oss.qualcomm.com>
Date: Wed, 3 Dec 2025 12:15:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] phy: qualcomm: phy-qcom-eusb2-repeater: Add squelch
 detect param update
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss
 <luca.weiss@fairphone.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251203083629.2395451-1-krishna.kurapati@oss.qualcomm.com>
 <20251203083629.2395451-3-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251203083629.2395451-3-krishna.kurapati@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: vBoeElXleNe2C07qb8PQ_ST-0LtYEpAn
X-Proofpoint-GUID: vBoeElXleNe2C07qb8PQ_ST-0LtYEpAn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA4OSBTYWx0ZWRfXxx9Ou7Ilqdsc
 rPLMAN1HRYRQIp8JZ420Ntu1/XXiwKbnm8xiePJEhU0fsIGwXwo7vDK5zxH6bW7yEYKZ3pduH1t
 AWGiNW4aBoAXf7nSr2RrTwRQ0H/6TzUi2EuE5LQ2fYHwhrsLgGetq9Nxy1GMo0ubm5uXGr69ETJ
 z7Mm+JOcp/B8oKxiHLQWF5MCrZcaGUPdr+PuEwDO/VEFuBWW7LMYdEnNuox7SXuxQVyfPaOs/Pg
 5Awr9vMRU5ZABtgDOUa6cFnlXuyeskGrHAY2ywSIiUatt9nIc9DBX2lNQeRRcyS4l86TDZQDDps
 R46HtUeEjIt1aga0IBUNmcBR7agIiy/o2szxfSTY9FHWS+hwGLjplAjVFItp0309zKMZrkI6cf3
 /d4D6TX7ryaeZiVGL5PC15W2oi/fQg==
X-Authority-Analysis: v=2.4 cv=VoMuwu2n c=1 sm=1 tr=0 ts=69301bb8 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ZrT6FAlEKn3Pr7If_u8A:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-02_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512030089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_031506_144450_77475384 
X-CRM114-Status: GOOD (  13.81  )
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

On 12/3/25 9:36 AM, Krishna Kurapati wrote:
> Add support for overriding Squelch Detect parameter.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---

[...]

>  struct eusb2_repeater_init_tbl_reg {
>  	unsigned int reg;
>  	unsigned int value;
> @@ -120,7 +131,9 @@ static int eusb2_repeater_init(struct phy *phy)
>  	struct regmap *regmap = rptr->regmap;
>  	u32 base = rptr->base;
>  	u32 poll_val;
> +	s32 dt_val;
>  	int ret;
> +	int i;
>  	u8 val;
>  
>  	ret = regulator_bulk_enable(rptr->cfg->num_vregs, rptr->vregs);
> @@ -147,6 +160,14 @@ static int eusb2_repeater_init(struct phy *phy)
>  	if (!of_property_read_u8(np, "qcom,tune-res-fsdif", &val))
>  		regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, val);
>  
> +	if (!of_property_read_s32(np, "qcom,squelch-detector-bp", &dt_val)) {
> +		for (i = 0; i < 8; i++) {
> +			if (squelch_detector[i] == dt_val)
> +				val = i;
> +		}
> +		regmap_write(regmap, base + EUSB2_TUNE_SQUELCH_U, val);


How about:

if (!of_property..) {
	for (i = 0; i < ARRAY_SIZE(squelch_detector); i++) {
		if (squelch_detector[i] == dt_val) {
			regmap_write()
			break;
		}
	}
}

We could also validate the value (if none found but property present, error
out), but the dt checker already lists all the available values so that may
not be necessary

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
