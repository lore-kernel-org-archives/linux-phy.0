Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ECF9D68B06
	for <linux-phy@archiver.kernel.org>; Thu, 14 Nov 2024 13:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ac88Lm7/FSb1ZCex05LoSdeMXPHbSnuF4uhO4AMsDI0=; b=UOnD7qMz3fL1/T
	9N8IvxHS4BocME1WOWhpJVLWgZUz/w1zgWv9VDvPPmytxdVKHOW5DF/SeNKZhdE8Id0lNcmb/ZH/D
	q+uc74NkIDO3mUS0VOsmYF0lkHIuYNJoDYIqDfpqOXb/LE0NpW1SZVsfRPR0R8I10JgZR+1zdIgGO
	5LqWSXT8yOj+hOWA/eDtoRhFI0ctzTChLvBjvZxtEO0TftFh0v2ElDjScH4GVCcFjOKDZpGZRAZJj
	6kcLcPDcPnWEpgwcrimlIZhX9b0N52XzraRpAxA/Ec3Sw/+oHJeYkRkGIGZT4fy749pZaZRr7Xuly
	1etR1K5+o3AIaj70co/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBZWK-00000009zyj-34B6;
	Thu, 14 Nov 2024 13:04:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBZVo-00000009zre-26wb
	for linux-phy@lists.infradead.org;
	Thu, 14 Nov 2024 13:03:53 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AE6Rbb5021966
	for <linux-phy@lists.infradead.org>; Thu, 14 Nov 2024 13:03:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3ZZcWhAmp0MwkK8bK9XV2sb1z1aD0pNV4AZR5fU3yro=; b=pUK75waX+UOkWlhU
	JvLfW/zTEDxs2oUt4liFkL9LPh78Jm9smXkn2uSzeErZ8dpTZvwhbSO3ff2BLI0m
	eP7/smIQNqJfnr1uO5jNvoWjNwWdtFQXylUoMP0194F1IgAyThwoP2DWhCgmQLpJ
	s2Oq/bCkLAzCtgKmrLN9GN4beL6K5QdHOP1tOTwu6ufx463Ud6lkOac3KpdfdhqE
	U2QrLMh47x7B7FOW/SsjJGKAFgrJz/LnHK0VI0LfL0HN8OdW8ExmaywYibJpkl86
	caIVBZt0LIHsI3aDLmmZPH7VqcIuft9TU4vLD2+g/HPyEliupKfNFL8jlL/EJFNx
	F4Nnfg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42vsg550es-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 14 Nov 2024 13:03:51 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-460aca6d5e9so819011cf.2
        for <linux-phy@lists.infradead.org>; Thu, 14 Nov 2024 05:03:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731589431; x=1732194231;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3ZZcWhAmp0MwkK8bK9XV2sb1z1aD0pNV4AZR5fU3yro=;
        b=bBPrNrdkackvCTFMepMZ4WIJ775t9c/g7OgNQPHV1CMR7B1Vprc0WsqWKET49QCGU1
         4ooIJuASq5WkzcB6Ys+830R2IRbVSJOJRuBj9k7NCT1wqabX+gyDvJ6XO8hdvLTZdIqk
         g0wVaHgQSfsdXFoPY9aYYXO48P92gfHg9PDgXnn8p4d1OqbLczz3jVvbkJX57HveBnRa
         DP5RCl6huriaHtiXxyaVNQ+ubCC5+jyV/ecmf82Q+bKFJaT1//3xn8CPkFcYv11Of035
         MIsn6NGV5jEVwc7dOVLE2PDhV3Hk+XZWiONQOHV/oa1bKqQRWOmo0bHklwiPedD7Am/B
         1pmA==
X-Forwarded-Encrypted: i=1; AJvYcCX2tvbYO+KaDYsls0VEFkLlMdMdDuYQoi+5LaQR4Kuo08OeEO1hHmnxgsW7/1GQ2aBn7heaX+03H7A=@lists.infradead.org
X-Gm-Message-State: AOJu0YyDJQfVehVNupaxCMMvAhUXjIy7EYbJWHEYwMmkXsow/w7vMvyg
	8QkQ6vtgLhxSinenU/dLWD61xan7Gs4mJxbA3aYlHJveVfSUebyaAxLMztNcbsfVU0baFVXwmFM
	w/n2gOl0DXVw6tGmlRqLsq59lsw1g4UN4PN+MB91ufsSA128/ClbRAjXIRmV/zqbN
X-Received: by 2002:a05:622a:2d5:b0:460:e4a7:a5cc with SMTP id d75a77b69052e-4630932138fmr142890001cf.3.1731589430695;
        Thu, 14 Nov 2024 05:03:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEP3QaPpWVWBZ3W8LyJufqB+7ivCzeohYgjPf36PLkK5kVzR9ipztbc4QUkkkBD2kaZQk5ryQ==
X-Received: by 2002:a05:622a:2d5:b0:460:e4a7:a5cc with SMTP id d75a77b69052e-4630932138fmr142889771cf.3.1731589430119;
        Thu, 14 Nov 2024 05:03:50 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20dfffcbasm61006866b.111.2024.11.14.05.03.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Nov 2024 05:03:49 -0800 (PST)
Message-ID: <0509452b-586b-4e06-b344-6f68af4593f0@oss.qualcomm.com>
Date: Thu, 14 Nov 2024 14:03:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] arm64: dts: qcom: qcs8300: enable pcie1 for QCS8300
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, robh+dt@kernel.org,
        manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com,
        lpieralisi@kernel.org, quic_qianyu@quicinc.com, conor+dt@kernel.org,
        neil.armstrong@linaro.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: quic_shashim@quicinc.com, quic_kaushalk@quicinc.com, quic_tdas@quicinc.com,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        Krishna chaitanya chundru <quic_krichai@quicinc.com>
References: <20241114095409.2682558-1-quic_ziyuzhan@quicinc.com>
 <20241114095409.2682558-6-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241114095409.2682558-6-quic_ziyuzhan@quicinc.com>
X-Proofpoint-GUID: gwx0eHXHtfsadQ8B98dTCAZ1nXxZEmgY
X-Proofpoint-ORIG-GUID: gwx0eHXHtfsadQ8B98dTCAZ1nXxZEmgY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 phishscore=0 malwarescore=0 lowpriorityscore=0
 mlxscore=0 mlxlogscore=586 impostorscore=0 bulkscore=0 adultscore=0
 suspectscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411140102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_050352_604250_541D412B 
X-CRM114-Status: UNSURE (   8.20  )
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

On 14.11.2024 10:54 AM, Ziyue Zhang wrote:
> Add configurations in devicetree for PCIe1, including registers, clocks,
> interrupts and phy setting sequence.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---

Pretty much identical comments as for patch 4

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
