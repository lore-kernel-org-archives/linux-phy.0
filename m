Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B88DAC54ED1
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 10:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BCONXKhe8V8sVWq9I3xtxnvB+Ao6yCJwgxfm5wyYy5k=; b=pxOMS14Q48sUuO
	Y3OXG8+Amc+vErZHVlJzZeLoanE4rR9T/ZBcQ7Rd0L+vUkku8eVckGg9UwNm7jFVojTyoamzL+npX
	Ou3g3hniYqjO2y+BG7upROZwcxlABnOqfOg2tHBpvhkQY4VJAZrUqGg82VqwHfBT23f8f/oIlnxoJ
	bNYHMTn7MZRQoNaQ6AuPNPcsEPJ90XrUwporYr/me4YgDcB7LQEHFDZa2/GKbjdPVoZ2twfefmnbg
	GczXrTkjP4RLLkTG4Ea+2gt1IHMfB6qvrGQ9ekJfp1Dd7HYYX4U+7SduvtWwzcekJTNwv1z/Wfvz/
	HKWvAMlxGiBFDDqwOotQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJrgh-0000000ATxu-1Yed;
	Tue, 27 May 2025 10:37:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJrfb-0000000ATri-0JHX
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 10:36:32 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54R3Jawu006928
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 10:36:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ft8QwZ0sa4EuuX7mh+a4pQA1Ub71zPC0fRpxDZpjuQY=; b=k1Z8B3PTu7cwO/An
	zSMjX58N9s/zHNyHpypRgK9zxFnjor704xYy2WhTwdHAabuqNjUb/rED6lNz0YZp
	IfDNYckh/YTEHZbwbDKMarSiC81QIS5IGXvcDukiTM8vKhyYfk1o85oI4nuYisxz
	nmaerRcyCqhnf+oXaTuczw1jY9NnnM6pwiHGuZ0oZfW2PY+iJqjUG+PsBa7S7Yxj
	ckcZbPqty9etM75AxcSmZxCJrCpcaj0DaJfa/EwtTt8IG/swxAHgGiCdiNNcERFM
	Bl9N71NMv90J+KMfTIaMFp+2QGzbC+DgXHP5wfQ3QheMoq53p3MYduTx9xOhch+A
	YBuLEQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u79p6h8a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 10:36:29 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6faa2693638so4112316d6.0
        for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 03:36:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748342188; x=1748946988;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ft8QwZ0sa4EuuX7mh+a4pQA1Ub71zPC0fRpxDZpjuQY=;
        b=TJHvDvy/wXR/jjyWR/WC964b26lO24EVYQiEJSvbH57wLH+EWeXq6eON5ddnh0Keps
         t30Nsq4j8VfgTSN1PKznpAtxGqXcREjjLqIxF0zkRwmSUyY+d/uINlCYh992elobP09L
         AsPR3ZyBqDr4AUHlx/R7XaIa86Y63xnbBpcL38Rq/QOQS1Qzkn1rqqh+gxEKIQh0FXJ1
         SIoouNybwOOO2bZnmUIlB8V/hA6fRxfE88on2S9eYX3eFROGbPD6gDmplTqYaD66TaVw
         yNxz73y4YFQpIeLptQUWv7nYqbyEf21X5ipFK6XKECiEVVxVO8CmLCxkRkMSk6WcFYSn
         Rrfg==
X-Forwarded-Encrypted: i=1; AJvYcCWGXoQW4nOsj8X0wxazGiqZghc0ipnNSujdORNeKX+QwXgGc9oOnyiFPSDXz5dgzScS+smRemyZLAE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzG9H+3YB8cN6+AemrViSPvAYTm+s9RO6vWR0+NQg7TSOFSEDDd
	IzzRVU0IS4qK2DgSChasWgsAlgdZ5iFpL6W5RIHWhju4RGUuH1qTgAAuW+PYGB8dHuPW4RxStMb
	3vte2+giOmQTVeN5jbUjhC1V2O4eLz1dEPOGGipdozDM0jm+0V5URYrEFBCTK7k/bsmfD
X-Gm-Gg: ASbGncsLWj9HOlf7j8/nijRp19PR460AB8PvVEnWtI9ORE+QinBcPgY261KhRUHCLy1
	oJec+xgmT8zehuz0QDJ98gVp5R4StR38XxgX+45wCBtgbKRIy/5rFVZo9/01XNY2/5+peSd2doZ
	FEXFCwHWNf9E2iARdabHxWCHupyoQvN0xWBqyg4T5R237cBLDUx0N+m1V+LicEXX3CG2nf3a4E6
	rKHCbmINd+xdDkSFZdYrYCJqhfxNmX7yTa8fDFraIiR4VFTxwZpvM8xiuWtreUOJjmcPCWuLvdr
	0qXOB+SYcje6N5aBcVLTbAzOZrKIoYwGbQRXzBFBn+hbnxvEqix187nAAa6pAhPoyg==
X-Received: by 2002:a05:6214:2586:b0:6fa:9b06:99d3 with SMTP id 6a1803df08f44-6fa9d34820fmr72068026d6.8.1748342188349;
        Tue, 27 May 2025 03:36:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRa1Y4Koar63eOa+CmHZ0wuxOPR9FIR8wrbdrkAW5Zh1e7ttEcc8xkpvvR7wWXg0ZSiOKx2Q==
X-Received: by 2002:a05:6214:2586:b0:6fa:9b06:99d3 with SMTP id 6a1803df08f44-6fa9d34820fmr72067856d6.8.1748342187980;
        Tue, 27 May 2025 03:36:27 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d4382ccsm1815593466b.118.2025.05.27.03.36.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 03:36:27 -0700 (PDT)
Message-ID: <0aef1687-0158-4d7e-8e3d-b6eafc38d049@oss.qualcomm.com>
Date: Tue, 27 May 2025 12:36:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_nayiluri@quicinc.com,
        quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>
References: <20250525-update_phy-v3-0-5b315cd39993@quicinc.com>
 <20250525-update_phy-v3-2-5b315cd39993@quicinc.com>
 <mcmpmaapzv3vbiynlrp6sijdjvj6a5j3dxzoixz6b4cxqsvbsl@ecljexn3zg2e>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <mcmpmaapzv3vbiynlrp6sijdjvj6a5j3dxzoixz6b4cxqsvbsl@ecljexn3zg2e>
X-Proofpoint-GUID: v4iaVF-0C7-eWEmBguR-OS4YmAbUoW20
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDA4NiBTYWx0ZWRfXxIlMW6Avotox
 qhvHqkerMVGMwDqSIdA5zDDoi0j+nfWcIQpaa55dkZ88olY+gh0HBSEAF0vmdqKjiyxfQuOLUVn
 yLm5C4rNCPi3ouZPnKarjBHtbSuYwemmJUtmqIjMqo32aRzLESXYjqp/sdhBMmXlwY6gniLcJgl
 cP8pMGvCEgWSxc+KXNavqSotQvNNZJlBtvaPylWC9OPVr7bk49uEP/tg29YDiYULvs8wMKOBPWH
 dcwx2fzNQixysBOrIfK8dTFr4eY6gypxoWsW184X7gFm38gqKvZl3eErzw0EoMjox57dn2dGJxP
 gyxAq91uQxNUf2tO7Ign+66uRB0AOO2VhmVmyDB18GErb3mq3/a8c6E82RrrTtLaTjeScMO+G0S
 RiZd9M6UdTqiyK9pAzOo/jACADyrlt61c+WqyH7wSC1/F624As4mp0ec8Xm1NQQlceFR2P3Y
X-Authority-Analysis: v=2.4 cv=HNnDFptv c=1 sm=1 tr=0 ts=683595ad cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=oxSCaEAS-4EJenh-H58A:9
 a=QEXdDO2ut3YA:10 a=ZXulRonScM0A:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: v4iaVF-0C7-eWEmBguR-OS4YmAbUoW20
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_05,2025-05-26_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 mlxlogscore=800 phishscore=0 mlxscore=0 spamscore=0
 bulkscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_033631_129273_76F8C8A8 
X-CRM114-Status: GOOD (  15.72  )
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

On 5/25/25 3:29 PM, Dmitry Baryshkov wrote:
> On Sun, May 25, 2025 at 11:27:18AM +0530, Mrinmay Sarkar wrote:
>> From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
>>
>> The maximum link speed was previously restricted to Gen3 due to the
>> absence of Gen4 equalization support in the driver.
>>
>> Add change to remove max link speed property, Since Gen4 equalization
>> support has already been added into the driver.
> 
> As Gen4 equalization is already supported by the XYZ driver remove the
> max-link-speed property.
> 
> "Add change to remove" is a bit clumsy.

I'm more worried about this node not having these gen4 eq settings
(i.e. the part talking about driver support landing is true, but it's
unused without the presets being explicitly defined in eq-presets-16gts)

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
