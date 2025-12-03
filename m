Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1B1CD12D41
	for <linux-phy@archiver.kernel.org>; Wed,  3 Dec 2025 11:16:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eMEfAL+/6kyVAtETLElDB5JNGmchO5R9xzfqgtpIVZ4=; b=jeARtzNqTPXbPl
	Tz+NBDDinOrcj/wT15oRMz7jmjzb3BY6O+Nxz5Gui+9Y23G2dJoAAfFMmKcWQBcVMxv/vDwXlK97S
	aj0kFYXU8pXPjUo24ny3AV33p0pGsZnO2Ko2UgtJ0K6TYn3Lhzr85kvOEgjEpQQndpBBXrVRrqnIM
	eI/EQavewMLAEmxZfqdP64V0RnRMYyLmx5GUZ6R1uTY4qf1VZJDAnFWfOaheu+0TXPAackKa9mEwr
	85eU8LX5K/6iOpefipCS5NI4QnN59c574onszmSgQHKNEGGgoY0zSb9BQRbO7pZZLKXizYL9pqnvR
	R952WWY564559hsSudlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQkqj-00000006UZL-33NS;
	Wed, 03 Dec 2025 11:16:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQkqh-00000006UZ0-4BWZ
	for linux-phy@lists.infradead.org;
	Wed, 03 Dec 2025 11:16:45 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B3B3DDd1374603
	for <linux-phy@lists.infradead.org>; Wed, 3 Dec 2025 11:16:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1vcxkhN0VIYWP6osWbYrzYEnR0RIZYi5lmnXSpJzjOk=; b=OC14gGlBmCV0vq3m
	u/Ely86TIcvg766ng+oEXFc80dQVxwePTzA56UbFXxQNe4jOOcLuX3ri1GzBOlnx
	x6aPzCgeK5Ux724uz4czt3vxvLKWPbgXGDFca6Lk9iHWsXoVKoHJoVb9T98z9Phq
	bV6g+Zza+FzYqVv4z/Mgmnq1hd/DQAy3sfXVvMlFnf4PdULOGaVwvmKyE5Po+U53
	E0VsE5J5/0RsPm+Gnc4+8uJgyoASSChRgNxQaYV44/1tVOKIbOE3HA+Ugo1MVGMZ
	sdycC0O5ft2ORMKeTY5e5Gs8Q7m4Zrt8wdwxykBu5EKrog9la1mxuVLoiPPExq2w
	dD7Nsw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atm0b81bt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 03 Dec 2025 11:16:43 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b222111167so142417885a.1
        for <linux-phy@lists.infradead.org>; Wed, 03 Dec 2025 03:16:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764760602; x=1765365402; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1vcxkhN0VIYWP6osWbYrzYEnR0RIZYi5lmnXSpJzjOk=;
        b=iXW97bu+AAQ2e3b4RqvtXiyygAEpSy1Dq+Q93Aq4OrXmlUhX95b1UD6103OvNKZltY
         mslpB+lwNaU/6ePyJpfXqrjDc8zP9kk/FsGOKISnB5sWEO81eS+7FBdb9TdhneLhj8w1
         k0gMU6t1/MAbGuNONhyy3StsHJRrEhGJK90PBakZVGbKpXxZOLBWXjXvk8h/jND4eNjH
         /nKb2GAGtS4ro0II1SER5oeFUJSto9jdAnX665PYSrvHnXeYcnqynDVm2nadzncJZhg9
         wuJn2BcLUV/yIEL6pN5XAv/CBhPlfpDCo2yr/RZAN+omSpe3k7w7sHsjk2Awf8b31y6d
         2sHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764760602; x=1765365402;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1vcxkhN0VIYWP6osWbYrzYEnR0RIZYi5lmnXSpJzjOk=;
        b=j0e3phNA58r1VcOme4bwy/kGPZ93qEirHWKm1r5xvGsiDCVqa18e38aSfFQjRC1g9P
         7WpApXMwnE4dASg5a+lOw2ppbdUlJ5UYDXgkdprFc3d7WnFxmHQmExjjVe7/MDQFOTR2
         rub4geM8poxIdS6TNQqrzRe5BBUG0vXTKKCJ/nzwFcm5Nqy9njLabUoRUZhNg4oSj3FK
         VtocrlcMYGqM8GZ2TePwNwcaC5KMB6kUZxwUYn2drNi6uh+3KdK/Ez3tqjX6kHl5WHNo
         rF6fdI1hFKOJFwIqhBpzTM+Iw/eadgs3z+O5Xijooku+dEFG5NMdt8bPNm6Y7clv7Imo
         FM9w==
X-Forwarded-Encrypted: i=1; AJvYcCX+sGe5g9s1OfZKZai9MQjuBM7eM9QVXb363G+Kwnhfcl0mv+R51FAUO1LsM0LFSSBcvuGXY9Wfayg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwuQvG474g6Wfl1i7sGcSvDFMYVosfOw5+I5ZshdF+Fe07i1LNb
	UQHtgyrRB9jE2BubD7S/WWFhQbv3hp+Z4knoK1DHZN+eAEtdRvAsIFwVCWa48PGfoMCC54mH+0Q
	81dmdypBCgwp4lXvdieRx7tM6923BuIY1I0pcz76fEmEr9V7e5eOfxOGPa/fRl+ZPSPiU
X-Gm-Gg: ASbGncuvoS+0Qf67tZXbHpCIC4dADDSEP71vPda+Abimwu/eBU5rCGGM4RwSPjOKB1u
	rEsynKXfShC/Sk3Yu/nFT+QbsLzW2MniwAoVf/dbSP4fQxR9mf7RHpKs6Evd1al3tJwric0nB6u
	QDE7ZP9WF/PN6dN985xfzSl9DfXXe+k37tZ4ziNVYxm7wrVISUCGKa7mujWa+lp3XOwQPNh0Q9j
	kkBPf2yudXJiqwV15OXNjkNcY8S2bLyAd+zSeb0rLkJ9l36pJIef1P25Idjbjtzm5zxollH9sCB
	3leh2+iVWAcnNWtQQ3vUbYg5R3yJrNi/HBlLoOb/sXVCmSE+1l72mjiHUyTPDxonGIKv4LKxvHA
	6dN5FeXHptZmVdoMsqlhUTQVQ4LxnuCiLqK+AS8inK6KP2RyNN1TPiKXbOfyF3yBSKw==
X-Received: by 2002:a05:620a:2846:b0:86b:12e2:28d1 with SMTP id af79cd13be357-8b5e6a8f8ccmr162915885a.7.1764760602434;
        Wed, 03 Dec 2025 03:16:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGexy9sN1KXrDnKo2qqHpzGTyUcWmRk8uzjam3d5kIfzK18SMX0HS/cP8FWH3AVE4B17InURg==
X-Received: by 2002:a05:620a:2846:b0:86b:12e2:28d1 with SMTP id af79cd13be357-8b5e6a8f8ccmr162904585a.7.1764760600115;
        Wed, 03 Dec 2025 03:16:40 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647641453d7sm13387427a12.13.2025.12.03.03.16.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 03:16:39 -0800 (PST)
Message-ID: <dc3e381e-739e-43f6-b41a-3f77ce7e780b@oss.qualcomm.com>
Date: Wed, 3 Dec 2025 12:16:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 squelch param update
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
 <20251203083629.2395451-2-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251203083629.2395451-2-krishna.kurapati@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=GMMF0+NK c=1 sm=1 tr=0 ts=69301c1b cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=yeJi84D-AGgTn3bWYRoA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: vzUZEDOmsEHbzV0rzUxNtD_-eJLjqZuJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA4OSBTYWx0ZWRfX0H/w/ihiXnfK
 Bm8CtRWx4/JDQ4y/HMk4Q9Kf5kjKCbEbaLv6JPiDDBdgkLrUzXwj2/htOS7PSG8vXDjibNUi3uZ
 JRuqLlVQc/4CP/EmWOh4Zl8ymCZDUHwsKX+SEskYjFuGgbMONO3OPxfQMxgJv3cNGS7fsOtq56e
 7d2/LW/sHY2veD0Lk3sT6TEVXoT5LjHFYJ+suZQ7XgRkR8RsFcH77LWoPRSFcWVTtUxXqAo3dGs
 ergP5Yx7e9xSbD2STWOZSD6EpJqqUUamX5ubglCI11lluQPqHxcNiqT5di8EFKDBLC922vJBtFT
 FCReNrX3mCREtETnG01sjUaEf/NJ/npj4YQO2L4DWlNMg+QKYgTYEyZEJhFckUd4hkX+nHsWwBa
 L3b3nKziYI8vVf5WAbjvX3pQj6q41w==
X-Proofpoint-GUID: vzUZEDOmsEHbzV0rzUxNtD_-eJLjqZuJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-02_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 malwarescore=0 spamscore=0 bulkscore=0
 clxscore=1015 impostorscore=0 priorityscore=1501 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512030089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_031644_067997_2A6559A5 
X-CRM114-Status: GOOD (  13.51  )
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
> Add squelch detect parameter update for synopsys eusb2 repeater.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml  | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> index 5bf0d6c9c025..8a9251ba3b54 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> @@ -59,6 +59,13 @@ properties:
>      minimum: 0
>      maximum: 7
>  
> +  qcom,squelch-detector-bp:
> +    description:
> +      This adjusts the voltage level for the threshold used to detect valid
> +      high-speed data.
> +    minimum: -6000
> +    maximum: 1000

multipleOf: 1000

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
