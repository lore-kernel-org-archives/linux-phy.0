Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4BABEE642F
	for <linux-phy@archiver.kernel.org>; Wed, 31 Dec 2025 11:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0gUgALkpsbr1znr5xHTTVdGJQwCVkNlpVkQRqJKjDdg=; b=Yj5kZa7ddbAfLx
	8ckbn3mf9dY5DGTwWLQE5sTwdcyUKMR+EP6PSxdVJo1E6Cc535hRpvWHvNwVCjfOfYpC/VLQeO1hX
	xcZyc42EG1bpfASgIjfNqrgNSLUxF0SzNsaOH1wHQ2twyYbkJ7NCc+bvOzyn37qV51DoGQe1K0ZDp
	rKJ2xYI61eydjgvZC+cK2bWSqOTu10YVSx4h66KSpXAM15J/fYNuqfUvwrXSCGCMVGeXwBVb/wJ0N
	3NmmlYbJe8w2MUKwhQ2BH9BZas/i+8w2VBeyd47Kp+W3PI2k5rqmTe3t/nZXrVt4CuYLpOTd7nQ7d
	L3qQmlL3OTXqWmNbrwCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaund-00000005w1p-1Y7p;
	Wed, 31 Dec 2025 11:55:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaunb-00000005w1U-1LuT
	for linux-phy@lists.infradead.org;
	Wed, 31 Dec 2025 11:55:32 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV4oqM61430153
	for <linux-phy@lists.infradead.org>; Wed, 31 Dec 2025 11:55:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aRgAS+XV4NGIbS5AlOxK3JgWg3/RW+6Jpy0ZJY+OBdY=; b=eDCg2RiQIPCiD4/r
	OZgu/lfRh9HRoEAx1zkNlebLqf8IxPXFNEktnbGD5a5L1knj1WrfBY+6V2Pq1Zsc
	bFtWQOz7ttYHRKT8iz7j8QiKTNZlz2lLg82tvlzoi8sodrVtW697pS0jJCX0k45P
	oPZmqjTpAbB2rZeAc//aX9q8Ch6tXSkq8DyHWl2NzkWtxsPpe8oZzRgyBozHYh4e
	kY40fRnxD6xZNzhX7YiIn5T7AsGLzGrnuOcr4cPYhh9tPPZbExchWzbzLLCirjY5
	1Fe+crApel5VBpL0Msr7YuhHW80l1iShUvj64kCUCHERyS+5UamdJa9eONpsObhl
	ovdP6w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcw5e0phg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 31 Dec 2025 11:55:30 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c231297839so130306085a.1
        for <linux-phy@lists.infradead.org>; Wed, 31 Dec 2025 03:55:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767182129; x=1767786929; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aRgAS+XV4NGIbS5AlOxK3JgWg3/RW+6Jpy0ZJY+OBdY=;
        b=Klxmya9T2EZoW94S2v1ZzuxZV3DXSfAxFxyBTgIZ5UBaTFr9VwL+MuyMi9yphI4ofT
         myshQuDiiAm6yxCYnII7h3JB/s3D6u4bOeRfpa8a2vw6++V20VapomUP6rTIXCPPxWTt
         3nki6THIKkX5f11o3HZ7n18DPCfU404rvhgsJ7Svl5Z7V2Oi8QBYnzdHHcBYD7NLejSO
         PkaMpql1JmxPepuy43syeOi8fe01Ap9L9iyI/B+b2ZieLvpuUOwWFfuovba0+M0ItBnG
         OT4NAIT//yShzY3XT7A1MzwI24PUVRDZKbywTIqjed3EZ+8CE6MQnJfF1KafMPVgfKE6
         nOZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767182130; x=1767786930;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aRgAS+XV4NGIbS5AlOxK3JgWg3/RW+6Jpy0ZJY+OBdY=;
        b=OsqCwTG/LwMm2IJ8RkVXXa6V3NI/3EfxLU1f6YJhtt/adiyOFN0wqBIlHJwF5uzo5s
         yOeKtvgApVrJQQw6whI0Aj5HjH6qQA9/iEM30ifsCk4Cs8zSgLr3iCEvv5dllAkAV0qf
         bXZtb1kMGZe4ff6psaH8FfaiupQDuUM0pLBrcgnRVEqLmNr+ZyntMhFthSr3XfURntKs
         8yiuLAysO3XxRNG/NrCDGYAT4DvgwjTw05PmxPt7RpONi8uiSaGaNf3M2y4Js9VGpB5O
         /Yb5vwKpAvphK4fI2nslA7lEuVndtiCAwPbOvNRGCosxPBYsqLmNg+M+e4hrg+2EnTJu
         NUlQ==
X-Forwarded-Encrypted: i=1; AJvYcCVABtpmjqKLCL8fcZCnmt0er0nmWlZtlaU0NsRjNA8j5yZV0ckFnV7g57FqxEoQWbFTseBHmfXpcTg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzWp12/3HQZTKSGUGWzW4YZJixErioHkHgQtXmkqA/JFMIgyrTB
	yzb2hIblReMUR8d65JisdlVXiBc9MtCQNrwD7k9gOM97z/B6fsj7HqDLlaIzd7ov8ooK5ttHh1V
	EVkhGvZHnewpsMYHzc5KkDfnT7h2AUWPn93pjATyaAdPEphKl4d7zypG+ci9d5v/gS8PU
X-Gm-Gg: AY/fxX5JSnw6TF6sWUBEGHdb5TwHGZCmcF0OuxFejN6ZF0U2es68O7xONb/TAhuLxpp
	3JWjnGXLq/p9N1MDDyqeqPl9JvfMJGGP3x3DMVpo1Q+auLCz9a3rh4Y6HVBkKMIvRg4l/j+JHlb
	T6oT/7qtQ0Th5zSeeBtxN6GdcjRIkPzQjKPI94H9crv/CvBAUYSEwh3yD/BEAR/H/kcKfGBFV4t
	LFcp2/E/kRcIQ0G6FFYV/ErzIhs5p3a2DwaS7NkB39JkJvodhTcHvaRQPOnZepAqlw6lZj6Go19
	sTZv6wL8fbyRCFZ5KnNFnq3Kp3PoBAk1hy4isWjIP8/AWTF+Z0rS7noOli8dGne29BTSkhfqs3Q
	uxKg+r3plMcuLDi39mA6b0/joiEeIzlbS21/MFOb/9ZDMajzrgjSS7FDLiml41punxA==
X-Received: by 2002:a05:622a:110e:b0:4f1:ac43:8122 with SMTP id d75a77b69052e-4f4abcd2aa0mr417993641cf.1.1767182129695;
        Wed, 31 Dec 2025 03:55:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEUEj0uHQJWKcVrybQ4kVXd/G8cMAoL8phJ7s4l4QL/dkGOzS3sg17A+M/DrhwRiYE8vhnPzg==
X-Received: by 2002:a05:622a:110e:b0:4f1:ac43:8122 with SMTP id d75a77b69052e-4f4abcd2aa0mr417993341cf.1.1767182129315;
        Wed, 31 Dec 2025 03:55:29 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0b7bcsm4062214666b.49.2025.12.31.03.55.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Dec 2025 03:55:28 -0800 (PST)
Message-ID: <5490878e-8fe4-4493-bb57-e671ebd00318@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 12:55:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 4/4] arm64: dts: qcom: hamoa-iot-evk: Enable UFS
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>, vkoul@kernel.org,
        neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, martin.petersen@oracle.com, andersson@kernel.org,
        konradybcio@kernel.org, taniya.das@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251231101951.1026163-5-pradeep.pragallapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251231101951.1026163-5-pradeep.pragallapati@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDEwNCBTYWx0ZWRfX1TKuM2cDnaVP
 WqyXSA07BTYWvzRY4VxsPu940PIkq8aGfpPJ8yrF8ILshAy5IbOC0mmAO5L+2K+9mJfgXDJDl/5
 3L9DbhDV/4Ri2+2qwJUMgM0EgXd5JngU7ToLQ2xqgIQtmIQeDq1Elg9TEmR88Te7C90DVoWbHwW
 e5d9I4TGmP0B9cbE+jU0T9+JU3x60iPCfs+UbJrn+9ewzCZYDzy6k0Kp06KdGhaYc1NbL0FtdgN
 L+y+D9oXPpFw/NsI+ahaQ2vGLp6+Y/VjK+JCjl4uJl39pOws0Kzd2iOcBn5kdtgnzdFgkneCAT1
 0v/iIiBWu0p++mrz9fiIFhvmc4d+RYjV83oNp0fLBPVz+HSwKFbIKedq4l9SpstXSS4zjSMFrIT
 ATKpHgDPcRMAFW4dw/zl7lL0KkPX7CE+/aVq7zEIW74KIXZ6Q1nWMz1lPjs5Vhp670Yyqm/4xaY
 sr7ltc/tz+DjDhuIfeg==
X-Proofpoint-GUID: mjwUt8f7nDNkINgZQA_GYRpkzex2r3aP
X-Proofpoint-ORIG-GUID: mjwUt8f7nDNkINgZQA_GYRpkzex2r3aP
X-Authority-Analysis: v=2.4 cv=Mdxhep/f c=1 sm=1 tr=0 ts=69550f32 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=V-KO45gPXDKAuljG5boA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0
 phishscore=0 priorityscore=1501 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251231_035531_373198_828572D6 
X-CRM114-Status: UNSURE (   7.11  )
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

On 12/31/25 11:19 AM, Pradeep P V K wrote:
> Enable UFS for HAMOA-IOT-EVK board.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
