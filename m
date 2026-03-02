Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83B3CD58E7C
	for <linux-phy@archiver.kernel.org>; Mon,  2 Mar 2026 08:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZTJCyNX8BiDpfKoAFlzrZf8AZjQQbnCtM69YIIUyezQ=; b=IAyV/iFSI1eloy
	S/wC7P8e74ZRptRRsaXcQenFlnywwvHtGdViAzP4f9J2YTp5/LN8S5PcHgfgYHLTUAPT+gI7fLIEz
	qblR1Gp+JEhIhKscAWRBI9EvQVZ7kFoA5mR1gXJYSn4ByrZzGXoWmpSCA+Z2if9AOVQRqsNxw+A7p
	MktX08y2GjlYYxTYJ0mj/n9D1x/X7h2H1ZHw+YaYeMRU+ODc4RM3QTFkhVvbpQyqsZgV2WFlg8tGg
	JFSt0me6lMNkf9rqh0/XKzwICcsYTy77zdM/JrjBhigHD/DVVj/PY1PU1WMhRWMQQqkIwnqwYpWYg
	ZSilNaHJ65rcXdaBc7qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwyff-0000000CWJI-0htg;
	Mon, 02 Mar 2026 08:30:31 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwyfa-0000000CWIt-1zlw
	for linux-phy@lists.infradead.org;
	Mon, 02 Mar 2026 08:30:29 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6226hApO2504612
	for <linux-phy@lists.infradead.org>; Mon, 2 Mar 2026 08:30:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	w5DyDPWzjeqxKw1lBuIpfRL2Rkz+BBRZDEujzzmhu+U=; b=F397xZlXt+3Y0PbW
	4GvCqNLRVlqR1r5302V/ejr4ymSCMbxsnFMmGet8gtg0+T7cuiw9zFDLYfVWqXtx
	NHlwNTObZFpQT/F303E5cQcgZk8NfJr0aI1KnaApBRNfvsJZlCUaQEbxBW/yROr8
	MGrgB/9Xs6gNGuk3AS4y8/ElenZQo6FbkYv1Y4btzHMmxOhiZitsAP9rrbPD0e67
	W/13xJJiNcD4XeiSLenJUotZhxpSbPSchyspuYCGRlsWKUdTIXe6Z/nCTaw2Mztn
	9GSMeYACtWDb0ctj4xcnLZSkc7zywEaRk6xIIIN+QNJGWS6wEqmFI4FhOQ8wc4Ue
	kYPSBQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn5herbe5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Mar 2026 08:30:25 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-896fb2fb9d5so466118206d6.1
        for <linux-phy@lists.infradead.org>; Mon, 02 Mar 2026 00:30:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772440225; x=1773045025; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w5DyDPWzjeqxKw1lBuIpfRL2Rkz+BBRZDEujzzmhu+U=;
        b=H13r9+z3duaTuX9ih9yIiwOQHksn6d8ZFp3k6a6m9FvTb1XCSPQd0uZxSfs+LJhn23
         prNPh4tKa4w8VVFW6d2tudYdHYQ/+IbMC1m3/68hPDbX27Uom2kIGeoinZsof3Uwim8k
         1JH7V3gB+iyKAnZ0UbvtKYzWkhMgFXMIgyX1NZ4cWHOnqE9wSM9ZN376eSaowlvdcacg
         a+UXMjZUc9ZuATfrzYbWgwNzpiFNnwuilLI04TnlsSGlMNOlyqh0LrMDcOjycLyKel7O
         v5bpK+AgZ7dSyHrK5baAFPMIjpwZQZO8esU/B7n4n2NK+OOABbYH5r6tXls6JNnArdWd
         Qmkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772440225; x=1773045025;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w5DyDPWzjeqxKw1lBuIpfRL2Rkz+BBRZDEujzzmhu+U=;
        b=CjrolroReH3kZNZuFhpPOhLHcHodlIEKVoqle+UKp1dGdGy+iCKoXdnaaC81xLiYRp
         QZ0DTAABtgNBXxeURWPPB8wUOr0m+su7qP0JLOtcMQwfgHALGeRgBuGInTzs9LfW1tow
         DlLbJmUzpxAnET+AXWMlraFph+k6Ad/L1wx2FLN9s3gUGog5t0SYCIZXQT5hnngCX1df
         tKs0EfYSaxc2ddfkL/2XR1ayH/pFKSLBGPXunvocusm/Z7Kt1kOfMT3QKMovHP9F0X0i
         ZVmenz+kFN+mw+x/JZkeUFhvGHHfv3BbdsTk1daTwXicHT34gwXY3WpW7FOrHrIMPPHx
         YB7g==
X-Forwarded-Encrypted: i=1; AJvYcCVxD5NAI2E7JpbEl5tMvhDpd9/DME4mrdunsaw+etfoidrV+lC5dH7AgvUGr9bVLK6/mFPvKJZIAmM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyTg0ecTW87Im7diz5b+6t41Xs/CgxJjz4uf5NfdOrIDdLYZ7v0
	CWzVp5rZFcMpSzgazFs7zWKnXgGrLfzVrSeg1YcT7wc1ernaGwCGKLRQOcU9ZIksyAFiKYKNVJn
	EYyWzuEuiZdDiEkrxbP8udz7DvSRcMOooYqw9EicYUxROmTrA5FlqTHHTEGbVoxxRVd4M
X-Gm-Gg: ATEYQzxNC+qUZIa0oDFGkHiPfLG9l+gn2ASp6lLJ7bfJvlXDOsc8v9x5AcVkM/BUNLX
	qyev695ws0P+dKtXry7yBS62zO5nLsM2QaUjgG8qt5VfoACYrWOHkQzYkvqt2uOouDxns1NYPn/
	SX2MREP6bhjw62DLfLkixzyJO5u8XSoUb8SIEFreEFrWdiR1BK7goDpthpObafowhbOFMkzaltJ
	KsD2YAX2FHYkMrtcYXtG9wqCVWokIlfcGzbFrKhEe/BV9BZRzp9BZZTFhfC5pYSKdNwgh3zCm//
	FG3U1Qbl7XFOfns3rA/7eHgElcqRJ4JvAjgX1pUZj/AOs8rJU94EdvjOiCmwzeVgub6OgzDF0Km
	iCVBnz8X3rp8TP3ij85/0SXyqkFyYdSOCWiOGwvR4YwoAtEml0Adrjho114Vlo3xEQsVWSZYkVT
	0env6pN3/t+g==
X-Received: by 2002:a05:622a:1448:b0:506:1e15:d757 with SMTP id d75a77b69052e-5075295824amr163872031cf.56.1772440224757;
        Mon, 02 Mar 2026 00:30:24 -0800 (PST)
X-Received: by 2002:a05:622a:1448:b0:506:1e15:d757 with SMTP id d75a77b69052e-5075295824amr163871761cf.56.1772440224350;
        Mon, 02 Mar 2026 00:30:24 -0800 (PST)
Received: from [10.38.245.172] (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-5074496300fsm105508681cf.2.2026.03.02.00.30.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 00:30:24 -0800 (PST)
Message-ID: <a835930a-8f53-4117-9f08-8a50ade3d0cf@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 16:30:18 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] phy: qcom: edp: Add DP/eDP switch for phys
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20260213-edp_phy-v2-0-43c40976435e@oss.qualcomm.com>
 <lvau2mmymqiczih5dkhgd4vrx6x5tn4tdp5wfaddkkrakdjajq@soihplbnfgzy>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <lvau2mmymqiczih5dkhgd4vrx6x5tn4tdp5wfaddkkrakdjajq@soihplbnfgzy>
X-Authority-Analysis: v=2.4 cv=BI++bVQG c=1 sm=1 tr=0 ts=69a54aa1 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=gP65O5kftThAzFAvIssA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: B9zltSl1NJxEz8-AJ8tyRMC3j13oIwTB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA3NCBTYWx0ZWRfX96F5RWeyOfXC
 ElVVrKvqJsmeVtm26nfrXNgsb/Dn1KoZAly6BQUcEXupn64AaoBFt5k+3JHKA+WqTLWoaYZe269
 8Gj6y2nCpjiEQ8k9cSseMswyZaos44mG99VS1eqWxMXWL2F94CldpWxeWILF1mAv2FSX9tfxrMJ
 1K56ppZNORzqMF8FDh5HkmH5QMiyhT1zEgNButbV5hJe1F9CWDvAV8GkcIzwkSkB6qr9t2Fhz/P
 uyDYVCOf90hfGc+Gq0b7/Qt8I63lUSKtsWIH+hx2gtMjdUofUAGIGuAuPJC5YQHkVzDG+JAbiaj
 wMB94D7LlbPv4cDCdrhnG1GKETNZaqJQQMdCYHMlXoDRtrHaB+v1rFrbaZrSXUzJ4aiFWoz6pBj
 /AnIED645GcqaEfWevsewQMYZ6aCK0KOV1ECKsb8SeuN3i5+Rk/zaBVcmqn9m/56JksLTEBVIG4
 +XlWq+f75/l2v9shv5w==
X-Proofpoint-ORIG-GUID: B9zltSl1NJxEz8-AJ8tyRMC3j13oIwTB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_02,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0 phishscore=0
 spamscore=0 adultscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_003026_526129_5F12104E 
X-CRM114-Status: GOOD (  16.91  )
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



On 2/14/2026 12:12 AM, Dmitry Baryshkov wrote:
> On Fri, Feb 13, 2026 at 03:31:41PM +0800, Yongxing Mou wrote:
>> Currently the PHY selects the DP/eDP configuration tables in a fixed way,
>> choosing the table when enable. This driver has known issues:
>> 1. The selected table does not match the actual platform mode.
>> 2. It cannot support both modes at the same time.
>>
>> As discussed here[1], this series:
>> 1. Cleans up duplicated and incorrect tables based on the HPG.
>> 2. Fixes the LDO programming error in eDP mode.
>> 3. Adds DP/eDP mode switching support.
>>
>> Note: x1e80100/sa8775p/sc7280 have been tested, while glymur/sc8280xp
>> have not been tested.
>>
>> [1] https://lore.kernel.org/all/20260119-klm_dpphy-v2-1-52252190940b@oss.qualcomm.com/
>>
>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>> ---
>> Changes in v2:
>> - Combine the third patch with the first one.[Dmitry]
>> - Fix code formatting issues.[Konrad][Dmitry]
>> - Update the commit message description.[Dmitry][Konrad]
>> - Fix kodiak swing/pre_emp table values.[Konrad]
>> - Link to v1: https://lore.kernel.org/r/20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com
>>
>> ---
>> Yongxing Mou (2):
>>        phy: qcom: edp: Add eDP/DP mode switch support
>>        phy: qcom: edp: Add per-version LDO configuration callback
>>
>>   drivers/phy/qualcomm/phy-qcom-edp.c | 176 ++++++++++++++++++++++++++----------
>>   1 file changed, 129 insertions(+), 47 deletions(-)
>> ---
>> base-commit: fc4e91c639c0af93d63c3d5bc0ee45515dd7504a
> 
> 20260108 is very old. Your second patch doesn't apply anymore.
> 
Thanks. Got it, will update to latest tag in next patch.
>> change-id: 20260205-edp_phy-1eca3ed074c0
>>
>> Best regards,
>> -- 
>> Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
