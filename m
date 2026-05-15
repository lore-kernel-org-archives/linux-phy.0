Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18622CD343F
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 11:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k3143gsIq1g6DD12wn/xR4lwURB1QU+5RjmyCSPyDDM=; b=XYoyuj2HAplDWW
	NS5N52g0ThcqnHNJnypMl3FGHLm9LU9bcNHCOBYe4qIz/yJHGVubHr77MSbneD+9RfEDOiEDkDJoJ
	84Xevo9dEhnrSTzx5IFD0eSjfEb8d00DX6rgfIVzJjWt5QfkpwS/uShELdHUpdOsCeBesK0alBkyN
	58N5AmmX8uCmOMIhQUxiyIgp0frj0nCnhcCqqMAnhx3MTk0henB7L3cIMkV9L/3Ayf7qI5UuGDxnQ
	EuP2i2HHCoIYzIEpVaOe16bkM5DLkLbaQDpUgTKoDQoNVty1IOmYQgrKbyerZfAwY5GJGSE0IxJYf
	igppG4Rlzaua22yyigDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNqjh-00000008C7t-3W6D;
	Fri, 15 May 2026 11:29:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNqjd-00000008C6P-2GiR
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 11:29:44 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64FAffiu3672547
	for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 11:29:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8PBfPdN6MnnDE3OmtYSDk0xuV/x70N/ULtY8YnSOZRI=; b=oJJieRKP8dTpMse4
	Pq8uv+TXTlen43ebv+V8S7rRCnabDSqn5REqUpO4Y+Cb46uV8OZx4LfsnEC0nT9F
	zoYtfUGDUyQT4db8Cvp0i5vfidgVXVNWSBhxPJ3POQ+W/DXynVGxKIp9yZIB0txy
	keWABJJNvKNDqBwMClrKkL6UJNzOni8pyoXCNZCPOJzHc/Wf3f5DUh2BDnDQp5IG
	mOUBrAKoC7ojAVRFh6+ROMYA5phW2gHdrD3VjE/sfii609OffJL/vYv0niUXvaJJ
	CcUsWcDidDwm33giURzNXgUud/+er8FNNqm/HtMqPBeVJBrQYh4i74wf/hXSB/X4
	6t5ftA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e5m1s33n3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 11:29:40 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50d9f1bccd7so19229221cf.1
        for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 04:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778844580; x=1779449380; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8PBfPdN6MnnDE3OmtYSDk0xuV/x70N/ULtY8YnSOZRI=;
        b=SDFV0dlWFyCdJh+IuF0nlWt17qJ5W8H07333xVlf2k0T+2agtukvi9AntwZfD1bCoP
         87MnRXsSIMTxMeIP71CwTl8miM6ux138/QhxzjZTu1yRsqKqFkFXO+Eu79LNJliWs4nZ
         GLCW9da9jMZuxl3zLnZFQ2KZ9M7RASO59QR1YAOXgPWlmKlvtVDxcnGpGjKzO+dwNyxz
         x6fHwS+MVYpV3XgFZRppS+a7O+CZoSQyidoxEg3pzw3XQbZ6r5jXo7Dyt8Cv+6akRUUm
         /rB1UV8H0btOEKVIn6jpy3qViwoGKvVT4hRXTojZcmT4BBvpR6tJBfUJ3e1SFGp8L5wm
         an3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778844580; x=1779449380;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8PBfPdN6MnnDE3OmtYSDk0xuV/x70N/ULtY8YnSOZRI=;
        b=cIWXvOBy2qROV1GlKd7hcAmrYsflYzBYboGBYd5GH76nALTbQjZ/Lh8Z3kXruoWesH
         9nphP7LJm+XzdWi8L+FJm3wkfSstoq76odjmVl0P2Irl6z88FnnTM0GBpbVkWxj/WRQI
         peaUzozqo24pr++v1XXHewYUR1TL2FtKBm0UBRPKq1wPNCd4jVGcJ/kMY9knTq31VU0p
         u7Yucba5FIUhut8MCL4VVn5j+vIpeLxYs8vH8igfMI1QXj8D/8SelmtqEUe7D94XTulS
         b3AwLLPHEiaOZZzFJkb8yJAxJ+lNZEAelOT/pZAF8jJZXQyR0mpcmez0jADWpgfMlsL7
         HKIg==
X-Forwarded-Encrypted: i=1; AFNElJ8vmls91TkJ1uLvL5POTWEy8De8xGgK3wKBYdlpF1Z6Jf91k7bA/Q1nnPe8P+yKBJXQfuS+Iwmg+yo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzjrCveLZNg+XtfdSqxu0OoXPvVsyXGDBe0PLmOsaZ90X06hxRd
	ljK2YQiqhSAVp/zMuZx+M7Oc6lOCi/SMPBHm+qz1TVk2VjbK9fjKjjkDpjtFGNsq3+MseKhsR0G
	GI52lJH5XN/yqSP+tF4R0zuNhtvoV7p0LSJjNRcf0jAem1gMElfViCFTZnh3dtT2aW+A7
X-Gm-Gg: Acq92OHTYAtT+bHSoi/dGPPObdkuntTPj6VcxM+rJmyMBu3Eaa+8SouYhSact2YoPlM
	+0or8QWfcRzA0PMgjKU77rP1KXjkUn6wVmLaxx+MjruM/4DZrJj3YhFTwxGSBIw1gPyfOI4d30Y
	G+bMuFTQ9A4n38SmsnJkHgB3BjNixs7gPmZD+SH4oZwYFs2Aqa17zo/CFWHVib+EfI0L/CZKtvZ
	XMHPgYbp4V8X13mSfNxuYqBkiSB6KmzjpPcpl+2vpP4/dViMJIe7oJ1xS1xULXWyQ1UIGaN6/XP
	tMPl94HQVfL+Mx6aWZOjz96faxKlygw+cG2BrlnZfzV8R74qRA9wsZcUmwvkPV47dVI/VWdWTnl
	mXEugbFOStg4vbr4d9xjPVqrVdFL3alj6PKm+VP09l81PiFDIJpY5KfghQEYqMbO4yJIeoSVc8i
	GEPMM=
X-Received: by 2002:a05:620a:690d:b0:8f3:5b1d:ed86 with SMTP id af79cd13be357-911d1c00cccmr370338885a.8.1778844579873;
        Fri, 15 May 2026 04:29:39 -0700 (PDT)
X-Received: by 2002:a05:620a:690d:b0:8f3:5b1d:ed86 with SMTP id af79cd13be357-911d1c00cccmr370336785a.8.1778844579499;
        Fri, 15 May 2026 04:29:39 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-68311660f6bsm1874474a12.17.2026.05.15.04.29.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 May 2026 04:29:38 -0700 (PDT)
Message-ID: <1d559fe3-c488-4c23-b3b8-4974eec3e38c@oss.qualcomm.com>
Date: Fri, 15 May 2026 13:29:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] phy: qcom: qmp: Enable ipq5210 support
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20260515-usb2phy-v1-0-5f8338d466bf@oss.qualcomm.com>
 <20260515-usb2phy-v1-4-5f8338d466bf@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260515-usb2phy-v1-4-5f8338d466bf@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE1MDExNSBTYWx0ZWRfX09EQLWEPysKt
 WODeuzXZdry0nba6mnNREI2AVWoSVuhxZbkT1wh3kVzTx/Tr06FQHRXxngNPWMToTcu2qigXvvL
 OpbSpFjhj79gHmWom8wfEzVLCfoXKab7G+SjzRKOR6Lk8I3mk67Sw748LZ0F5zN7EMIKEm1vR0F
 QgelZwLrknboX3JwYWFaMj/CfbpU7GzXQgU0nZMqmBUXPuGvyDSj8KXhZOEGVisnk5ZhMuJnP2V
 8PGhWvqNHQ553bCNwrXDfDUg/ZU5cJL/9Wkr7Z1828vs3nI8er2jXMfl1RSuAGVF3MB2snAf5K8
 11POwVI0s+KF5Krtlig1izusC+UhRazObeN7EeGxqn1/YyDsBkIRJDeU+m6446prhBdEfG0j7Zt
 mzOtTldtSzHbyWS6pspBz53JpdyfjBCUWK3bi7pTP2cWojNVkMNTVqYxmY9XS2ycGWKNSlM4Rjb
 Kk4QEF0YBTRKueAxiMw==
X-Authority-Analysis: v=2.4 cv=Md5cfZ/f c=1 sm=1 tr=0 ts=6a0703a4 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=7VrQj88toOM5sR0hJNsA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: m8YMrvMUDNTN264Lc82j__Alt9T6bLvC
X-Proofpoint-ORIG-GUID: m8YMrvMUDNTN264Lc82j__Alt9T6bLvC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-15_02,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 malwarescore=0 adultscore=0 phishscore=0 spamscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605150115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_042941_589590_92B93CC5 
X-CRM114-Status: UNSURE (   7.08  )
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

On 5/15/26 12:47 PM, Varadarajan Narayanan wrote:
> Enable QMP USB3 phy support for ipq5210 SoC.
> 
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---

Since they seem fully compatible (also in patch 5), could we simply
use a fallback compatible?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
