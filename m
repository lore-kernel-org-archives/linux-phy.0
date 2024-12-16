Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 600E7E7717F
	for <linux-phy@archiver.kernel.org>; Mon, 16 Dec 2024 12:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8r70bxqJ4r1NfAVApIEpcaTPjV0rEQIpHP1CJFs95Ik=; b=T9f0gz5z2stxpN
	8kqo1lFDVI+6f8+qZjIoCAkR6joJBqlQ1qVMV50nOwm4XVswgNxbrW5cn4GV8Nm+ygN5AtHVpVyq0
	7/m638tWa9vKkM1lhyT+q3LUWdyeI1VMdKhvTblhqR+w7FOj+YXqvrMSfaYUDVvvlXIpgksTe4Txs
	8pYYB/LvrnT0PWFBArZr8EmCv0pTjOtUSfifqNbZTyD2TEwpVbdNcb4GH/sEU7iNfciEB/6QnP19u
	e27JIeqNpmOjg5LQfK6p9HLDTGMzOJCZIPXZxXBHotITTgmsDSUR64h/i+NPSzHkpmp0xRMH3bJ3j
	bXsZOeQMJQID7xiMTkDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9rE-00000009v5b-0Qe0;
	Mon, 16 Dec 2024 12:05:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9rB-00000009v5A-2vG6
	for linux-phy@lists.infradead.org;
	Mon, 16 Dec 2024 12:05:50 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BG86bUb000825
	for <linux-phy@lists.infradead.org>; Mon, 16 Dec 2024 12:05:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nozNBImrI0flQxop21C9levd721Nd++WaY3xG3YzRL8=; b=eJJhjJQA5mcOLeLf
	DEXI/VxmbwVAt3hqafOOpQepPggnSHfVc6eHRPGH57MO4Ih6Xgq9ExGYOksNDpz6
	Q8oZzqtc3CxUrXyTU3uP1+r3AUsV141RuhKsyfq9E5n/kSxkXMV2v6zryxI2MMbD
	wCqNRr/N3DVUsyuDBRuBOBtr4u2s5d2J+9wylIBFekAsZr8USm7arBkffJiCu4sG
	yaazRHG+XBMkPwYZAWAjUd2t9+ZDL3BiKNUP5mNrgVcS2ebR4SIaNcHY1N5unmZF
	QJ/zDJqyibSNwM0hpefLL67/f6cstqRIiMGqNDxII8sFVPh5GXxf4u9CpQciQymx
	ly1tEw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43jgdhgn3n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Dec 2024 12:05:48 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d887d2f283so9726006d6.0
        for <linux-phy@lists.infradead.org>; Mon, 16 Dec 2024 04:05:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734350747; x=1734955547;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nozNBImrI0flQxop21C9levd721Nd++WaY3xG3YzRL8=;
        b=RcphM6RPxNcgUMeT5TgOV4tQsJMaFIg7eUnSD4fvtUpfjaCXehcOGuA/HaCPkkAlpQ
         MnWKADBhIq3+D8TvsbgiQOm/StOrmAPwrmVZ9YuSw2JO7M7om8emSpmvIA+Bvvig8jZw
         3GG+njvucPAJBv2sBo3GAs0S/Q0hzvfhMIl7fc2V1DMYm4rJTvUX0p7dyAFzdI8/aAGc
         Ds7AH59XT1VV+pa34lvNdObOsTz/HcFaJjViNJcKb/xQOhAKAcBKHCjZLG/XZC/Gffzo
         XsZ+uP/f7IosfS8Ks5v747PKT7O0zVmVbi4DZntoGRB/+YiS93lOo6np1we0+w+CoDoN
         IA5w==
X-Forwarded-Encrypted: i=1; AJvYcCVktFt96Ma2xzCvIckiOdppKQsV7LHKLGrvDa9/6+QLjjwwnS0RgnOoOQjwoWZqWIxCoRyhNeNEcU4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwzPSNdoI5gVcvpHh/2e68BnRZT7Ip5g7SRa9YMYxzCF14qOYhW
	kIT5RDoybvBPCLbF3Q75r7zvBtoUPNEJdtAiVNV03ZEhZovJ4CcrXL4jwHGoOstQ641+B3JNoR1
	NOAj2TXeU9jrCdsUCYF+nmBjpNMhRhV6p5sAaQAnmWNJt4wzXLOzlKPyim6dYKQtr
X-Gm-Gg: ASbGncs/xFLwXtliSrurGjWb31VNdKVbd5BPOx0K05RxRgCL/o06Q7ZSnuqE5HvWuNh
	0TyR6LAVejOwkeDI5YvgvN6VIHzDZT2UnDic12JCIVVWyjY4YE9X44C5EjMFajPa+O+XggL9c5t
	YHWVL7Ckhzj21BGX2Z+obA7Or05nWa1aBMgTYz9VzR/DCL1S3dzm8hti4SqrlSQ3e6SfcrUC4BC
	jcEC31igokfF5gqpIFGhHM/KCecSZmn6C191cobsGfKdzY/9bGVfccV0O1+V3iQYz+ImXgNJC6V
	owvFbpc5GtyTwzwilVX5OHYD5rKDAe4bbqo=
X-Received: by 2002:a05:6214:27e5:b0:6d8:a723:6990 with SMTP id 6a1803df08f44-6dc9684f7camr74570606d6.7.1734350746663;
        Mon, 16 Dec 2024 04:05:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHeXN80xQXmAhwdOx8Qvq8LX1rjnJEvO+IAfXQhj1EJOLdCPH2AIDU5QEJn1/k/Qfvf2stHuA==
X-Received: by 2002:a05:6214:27e5:b0:6d8:a723:6990 with SMTP id 6a1803df08f44-6dc9684f7camr74570366d6.7.1734350746286;
        Mon, 16 Dec 2024 04:05:46 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aab96068928sm322936866b.70.2024.12.16.04.05.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Dec 2024 04:05:45 -0800 (PST)
Message-ID: <b17f1675-9ffc-472c-9dc8-50fbae5d18b3@oss.qualcomm.com>
Date: Mon, 16 Dec 2024 13:05:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] phy: qcom: Introduce PCIe UNIPHY 28LP driver
To: Varadarajan Narayanan <quic_varada@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org,
        robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org,
        conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, p.zabel@pengutronix.de,
        quic_nsekar@quicinc.com, dmitry.baryshkov@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20241204113329.3195627-1-quic_varada@quicinc.com>
 <20241204113329.3195627-3-quic_varada@quicinc.com>
 <710aa948-d27f-49f6-a4a8-73f6208502c3@oss.qualcomm.com>
 <Z1/JG+RkTBW9JuMO@hu-varada-blr.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <Z1/JG+RkTBW9JuMO@hu-varada-blr.qualcomm.com>
X-Proofpoint-GUID: q7z8HIuaoUOcOc7SdROg9UF1OcAmEEG1
X-Proofpoint-ORIG-GUID: q7z8HIuaoUOcOc7SdROg9UF1OcAmEEG1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=886 mlxscore=0
 phishscore=0 clxscore=1015 suspectscore=0 bulkscore=0 spamscore=0
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412160101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_040549_752934_58DFB585 
X-CRM114-Status: GOOD (  12.01  )
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

On 16.12.2024 7:30 AM, Varadarajan Narayanan wrote:
> On Thu, Dec 05, 2024 at 05:40:15PM +0100, Konrad Dybcio wrote:
>> On 4.12.2024 12:33 PM, Varadarajan Narayanan wrote:
>>> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
>>>
>>> Add Qualcomm PCIe UNIPHY 28LP driver support present
>>> in Qualcomm IPQ5332 SoC and the phy init sequence.
>>>
>>> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
>>> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
>>> ---

[...]

>>> +MODULE_LICENSE("Dual BSD/GPL");
>>
>> I think this is too vague, there are many BSD variants
> 
> Will change it to "GPL v2"

Checkpatch will ask you to say "GPL" instead.

If you want to preserve the dual licensing, maybe consult with
legal whether MIT/GPL could be used instead

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
