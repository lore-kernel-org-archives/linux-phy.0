Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CC84D148AF
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jan 2026 06:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Odd/6S+H/PjQuW7Ok/NDGwR/QVyJu9+EFplDxOOeYkI=; b=eYiNmu5mWLAZwE
	2mHu35xkGg4jwt7LhFOrBT68V0FMvMUcq95rHcbJQPoqsXrMZ5MsH+k4n48GSJDoxPuxIPSAJuEib
	IxB56m/hRpsO2uoDRgL7RIs9BpEm2ZUivZbl71fg6jG1BHRd2XdCmpe6pXAhcj90u8gNgvZh6/BPl
	EdSCjLdY+bC5BEtQIDUx8ChCxJY+hIdnYKDL/Pnus+ZLdF/mn8EQibbfd0X1EMcX2+0FSui9a2w9E
	sl1GB7eH0zBl5SFZpOOr1qBuxc5yXiHQrjVWoFdGxauxZzJlN4dUvOUaXT45GEuZAM4UERl71R/tR
	LBbVtd3THThhpkWxbRgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdjlz-0000000G16y-0Jgg;
	Thu, 08 Jan 2026 06:45:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdjlt-0000000G16W-12YR
	for linux-phy@bombadil.infradead.org;
	Thu, 08 Jan 2026 06:45:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=qI4X4Fz0IWfzeVDHsXkYugKzEMIhmXgQFmOXIrCoYh8=; b=CdtjgjtXS0SaOB++x/sNsRGJGi
	Ngj6n7gHCE5tCKf09ERHqpP0T7lse8bBevNOYx89bN/LQdtkXRoaum9vDnQRvtBdOfUsFlIZBhQTg
	nK6sS7JTWNDpnKWpFniMy2ASk+bnHEitTUvNQU7QK0wnxmbNv/LwGxZyl4GAGiEIfFcW9pCuvFA40
	sOg71emL0Z3mh31pRj58yeQXH7XyJmfTNX0hyGtehetjHt52V9+d7nOTP8M/6GYoYILyO/sQn0jEM
	qpj7gWud9JiKRbOX/CVVp3QrOVyyJyXnTK0qWnnfNRfGyhJnqosUHfLCX19QbyHiIYT8q2dJWRNIy
	eJe+Iz/Q==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdjlp-0000000CbiT-1gl3
	for linux-phy@lists.infradead.org;
	Thu, 08 Jan 2026 06:45:24 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60817n1C4049328
	for <linux-phy@lists.infradead.org>; Thu, 8 Jan 2026 06:45:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qI4X4Fz0IWfzeVDHsXkYugKzEMIhmXgQFmOXIrCoYh8=; b=ihmqdx+FMqmpzMy3
	yjx2yFueDJN4mKfvjOHZjiLlOI8DYbJNy8CQbf3Rq1mB75LRz+9WqgARgKj4GuTR
	5UoyGKdAeCT7EfKCAtg2/g4+8LLGzMXg5EL9KyD0JW9Dx4vMAo4cghFdNlhIISe6
	pSVsLm8KxYvyKia43NXZeoRsD8PIxNPZAHczpXv1NfNkiB4FfqMzU8HRRxqI4QhD
	mRQP1405a1MsxnFW+Zq9mQhPC6ikOK2wqhkIl848zScoSZ4LsG0ojyNlr5fNgzxL
	r5HSI1EEsqYiu5UHNyVho/PUgDrbQwB8wl4WizCRcyEqmVRCS3F2Mk1pMq6X94O8
	/qTZ7Q==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj2n8gx61-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 06:45:16 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2ae51ce0642so2053466eec.0
        for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 22:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767854716; x=1768459516; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qI4X4Fz0IWfzeVDHsXkYugKzEMIhmXgQFmOXIrCoYh8=;
        b=VlzMt8IONZdTvANEworK2UWo+ih/WX2NuHOqt5eXGm1ZryR8pwqc1cIUax/gwZAIwB
         U9h+drr1o/Bg56kpZvAx3UkYP7dd+r1E4nuSReLTZXIh1kdf/BVweM0aq2VuVX+f73bR
         wuRY1AQ/+ulUdri/T556Btq/LFVSV2HSTfmj0she7O6J9O80sMCqSB6pISpjabLrqHoo
         A0t2vqLjz9Pf1h1mbxufNZHzjypgaGhWYaiDRmSVjIs8eZKVRZbG0EB5xbs7z/xVsEHq
         u/+1hbkHyg7MNiau4nJFLuccXV+by33IkDJDTLjAUCxxoIw/m8OzKFMvndtdXAILdIPi
         eNPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767854716; x=1768459516;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qI4X4Fz0IWfzeVDHsXkYugKzEMIhmXgQFmOXIrCoYh8=;
        b=buB89oeUaMgOSlrBPFwHrQ0yb/etOITwVV/IaGLscmi9rkooTbW8asYnS7eYbEIT7e
         XPXCpCQ2rsfm1nAakuc9md//GVoLadV3nDs4G63nZ6I8ASeoitXkUbw10rX9J2kxSU/o
         Mkztz/c+4lSmJskNsnPNMSqBbkL0ycx9cH3bRbDNEwfQNT/leC5XKsw6L8M/NnHxKosN
         JC3rKtWVa3GuAoZErxRpXXKPjV7bkqoyOXg5IlAv2OBIhusVV2l0fCgmqug+tn2kZshd
         fmw2PIR5goRsYDo1x6tvFQ3PQVGC6QnZ9d17Nljc2RMndQ7SlOP3dkFCcDo64w9Aw4uR
         mLNQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7eCdmFl9cIZ6o8vKPzu8MwiORM6YFRm5aIxw/wVSGCLarhSi4YsjlfINVK7737+gvW04+TlbOxwU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwAE8ZopfVJLpNcBcpbEHWXCKIJGaIM48o8yjfyp+7j7CS5MniS
	98HfrSU9ZvJMX7MxUJBkASoTOwHuSZhcCRAD4rW3jZkc/kus5d11/snUN6VpYfnEapoeRIQb0Bc
	qJj6uDNeuYBgebjH42HHOa+8wqvzwvlkVuJ+bGoeWjEUi5popTciGxoq/AaP+OFZXilTs
X-Gm-Gg: AY/fxX6WxHwVWYXkEsSaT5qt3ZOzQtx9ejqxBVQHX/f9dK5mec2bqGq/d2BEKbGxue3
	Ez2ESAgsdx9jMVZOBYVSRUI2YROtGvfrDHkr+rvl1BqR86LJcjybs/neqPyP1mhvLhK7hPyqCl8
	dFx3VBo8kRt0/wpCYkxBd85tlY6ZWYSPwEKZ4xg2GS5OJah7DKoWV9mqDbdahfg4v55sdUEk76K
	/HwO3nRoLHBTLQNgAsN5sn2nLGUsy1iidewUkV+TIOiKZn+5VPA5DrL7arkFZZflw3gZIutEyNS
	HLCgZPkrZ6mbe/C3//IH9R1g7ShpERVo0snVuGYS7oEYn5YvTl4qztyaK8Bs18TLrKdvptsW+VG
	+WeLSrEM545UqIRw1fhzAQMDiwkWQzvzu854SweFqpT8MJQ==
X-Received: by 2002:a05:7300:7484:b0:2a4:3593:ddd9 with SMTP id 5a478bee46e88-2b17d2399a9mr4736124eec.6.1767854715478;
        Wed, 07 Jan 2026 22:45:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFb+uJqipRaJjezuNpgsY1sxftQfnkFmrWhq/6n3UtyU75dFyipzFeiJd9694PVeVeOrzH2wA==
X-Received: by 2002:a05:7300:7484:b0:2a4:3593:ddd9 with SMTP id 5a478bee46e88-2b17d2399a9mr4736073eec.6.1767854714858;
        Wed, 07 Jan 2026 22:45:14 -0800 (PST)
Received: from [10.217.219.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b1707b0b2bsm8172700eec.23.2026.01.07.22.45.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 22:45:14 -0800 (PST)
Message-ID: <93c61eea-9d9b-4e29-9710-89ed3f945071@oss.qualcomm.com>
Date: Thu, 8 Jan 2026 12:15:09 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31
 eUSB2 PHY for Kaanapali
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>
References: <20260108052459.1819970-1-krishna.kurapati@oss.qualcomm.com>
 <20260108052459.1819970-3-krishna.kurapati@oss.qualcomm.com>
 <d3757e4f-ac9f-40e8-94f1-a8ed68a6d2c1@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <d3757e4f-ac9f-40e8-94f1-a8ed68a6d2c1@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=d+j4CBjE c=1 sm=1 tr=0 ts=695f527c cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ocyYg2yDLqSr0WdFaBIA:9
 a=QEXdDO2ut3YA:10 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-ORIG-GUID: BhxjeNa386FiuHkqeYYNGoIuoCFWzXaC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA0MyBTYWx0ZWRfXwFyZdpVS5D0k
 B6LsLKE4refQxqoqxoCcFvDgzCEdtU7nzmFplDaJjDwGVs99GWCSBCCu0wGllGp0v//NLbOoJUA
 iEvazrBuV0S+KybhkNrlpEeuN+Gtg02hdFoQunGqDD4IsfVxMLxsXi/EG0+IcTGM4mOMLwGEUlQ
 pGJFGJbAImVAVHyD1O0KsrxHNtfPIpvkhErVILoK0OUKQAYVl+0659X5ykUxFnSfZ9uUtB2YzfC
 XahBPrsjj1LnuEJOqZZDh4yquZcZRxHEpGpfyKfwJ3gMD1S5PkfGf738cS5+BpDeHCUyf08AL/p
 OsIgCEIuwyrGGCHBkViNoxWcD6NZcyBNkROES9S37Up6oVVjp49piAli/vJhJxlfdkgGpp4d93Z
 idekLLqoCUVeiFmcA0lwwedlRI+ZHMIODFaCCobJMwAejtg/tiw06g9yLm8zw6EfJPGANdvp/FY
 o3iu6SYW+ZJe6VM8lQQ==
X-Proofpoint-GUID: BhxjeNa386FiuHkqeYYNGoIuoCFWzXaC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_01,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 malwarescore=0 phishscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 impostorscore=0 lowpriorityscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601080043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_064521_901633_79B12520 
X-CRM114-Status: GOOD (  15.95  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 1/8/2026 11:17 AM, Jingyi Wang wrote:
> 
> 
> On 1/8/2026 1:24 PM, Krishna Kurapati wrote:
>> From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
>>
>> Document M31 eUSB2 PHY for Kaanapali which handles the USB2 path. Use
>> fallback to indicate the compatibility of the M31 eUSB2 PHY on the
>> Kaanapali with that on the SM8750.
>>
>> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
>> Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> ---
>>   Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
>> index 409803874c97..cd6b84213a7c 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
>> @@ -19,6 +19,7 @@ properties:
>>         - items:
>>             - enum:
>>                 - qcom,glymur-m31-eusb2-phy
>> +              - qcom,kaanapali-m31-eusb2-phy
>>             - const: qcom,sm8750-m31-eusb2-phy
>>         - const: qcom,sm8750-m31-eusb2-phy
>>   
> 
> I think the reviewed-by tag should be reserved as this is patch rebase.
> 

Hi Jingyi,

  I mentioned in cover letter why I didn't add received tag:

"Removed RB tag of Krzysztof on M31 Phy bindings since the changes now 
expand compatibles list that use sm8750 as fallback instead of 
implementing the fallback."

  I can send v4 if the RB tag can be retained. Apologies if I made a 
mistake removing the RB tag.

Regards,
Krishna,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
