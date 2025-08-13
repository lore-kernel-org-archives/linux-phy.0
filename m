Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28414CA0EC4
	for <linux-phy@archiver.kernel.org>; Wed, 13 Aug 2025 01:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nH97KFmhlCzIie3HLLcehtOtWLpoEFal9c7NOwOH6FA=; b=HpxRhIE4kR/TqL
	Qg2He+cQUrgFjGCbMNGF2qWxMGbraPLZd4hVC58YtisYDfIb1USjN3GbXcm9bms/+Rx4POgB511GQ
	7jxYKlkMY/1Usy59ZYXWEI3eA0imt66X2qbpiEyzFCGxPxEU8ikIBAG2RY0CoGMd5SF8ZJldprmp2
	VaHDKAL8NqOnX5cDRV3AoEc7CNi/U+dMLP/NAPrJpRE0fnCeCcvVfiqQGLo0KjhB3sLpT3m0OTm+O
	SIDjWkAIE8C7QHGFsDf/t57NqcrXd0rknLQwijNXBLEyfzz+9Tg0gTAVQd0j7VXWcgqsifOm8VH0R
	39woWEDqaWjesB5Id+kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um0LF-0000000CL5U-366v;
	Wed, 13 Aug 2025 01:31:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um0LD-0000000CL4w-0ZCi
	for linux-phy@lists.infradead.org;
	Wed, 13 Aug 2025 01:31:48 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57D0LTh2029039
	for <linux-phy@lists.infradead.org>; Wed, 13 Aug 2025 01:31:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MvPb3zCS9Grc/PvA90a/i9WK+vFW2rPw8r2AYE0gtqI=; b=IiB6wOPvYXwAKf4H
	3/5ujJyGZpMq2KmwJJ8MUDUMPmhOg6LTMPvJY+5VQRhRUBcG2HSGxdyrIg9wFCyn
	JWlCSeL39kioCp1HNWSG2J8g6n1yRorLsefD+ozoJY1q2CE3Du1/5az7l3Br4bLb
	Kxa2n+GhYeTjn7h8jKjky4mhvKFzr4ATAp0MgU0xlwy3LnOqpm5AOUR5BxPZYAMf
	cB+flLbu68MCm8sxnUiRmzmegr6up+BHxPQXJ6DGkaOcIeUfm9kc7N/RQQ7cIaa+
	Nm5fPdevV650KCEApjTTlFYQruZu6AJ9Zdl9Xt22agft7PMGOFHZNl29HAFN8N2s
	Lx5XWQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48g5hm9wvs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 13 Aug 2025 01:31:46 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b44fdfe7b8dso2304387a12.2
        for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 18:31:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755048705; x=1755653505;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MvPb3zCS9Grc/PvA90a/i9WK+vFW2rPw8r2AYE0gtqI=;
        b=dJxCOgnsGXEDRFrsBlF/LyTQu8PNPkc/iZMLW8O1Xw3vU6iqCSfKUSNLkX8Fw1/EEy
         K3eFQnANAn4Am8b0utN2e+GofXxmECVexbruC+Ujh8N9XsUREr87n3jvbrgrhEoTmZ4j
         Bm2m9mUOmSHrRwdGDxbVF6lwyamVhFe4qL1n6nqQFdSeMuYEqj7DZlL5YHcx/JyW+wEi
         SIdxFpFD4qlU2wkNJm39xovUKSzWRzzqbtnSNCoHqoeKnybGYVns63MdMqcat2Z9SxJw
         N5s0vV8fX+3tXGCGdyroRg1xBFfeW6x0G4oqHIjrEOOkIh6ZnD2/YNhFxD/wG+yFSKw0
         nBIg==
X-Forwarded-Encrypted: i=1; AJvYcCUncx+idnnejwXYZ+yy7SVTfgsxk56GMUm8w773wK6u9hNeSsQ68BaBJuyXo+O0Y4+0ISFkQO1LUa0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyNXe96NIRP+aFmOjjjV1WZ0MPauPDhy5SUJHOsbYAbKUhvFZXW
	Hx47Y0ZLl1n984Zxx7AqoEr4YLTaO5qGMfmu/UbvkY86wI9efza4xIPRldVnTQ6fmdRwrz19tq4
	c6iHDK4X9fGk0BLheMNUYyI79YDdsy4oLPjsLOEPYWtNd+QY1GSb83isxqVpLT/HRs4Ma
X-Gm-Gg: ASbGnctCshKTFSA+IWGpdjrxK/MhEjQ7R8gsAS4r6fpCvGFgSbh98OEfE8/FPXsZXpV
	dyJNOEfi1yj9e0Kue3YHVMRSkQhGObM76IbmfjLhdRlwmlwV4Z07wjsgCqMinRgJyr4zD8UwAOE
	Yz4SPheDBtIqqoe3wwUk2OXASVyu8UQYAfjBJnUB6MFk9boWbbgU4vX+NK7XLWAqYbAzK6fJKLV
	CkzHHgv0W2YBu98Y4RtxTRiNr47Mi/FueZGg9cuAWUHDunicjIsQYinWnTiOei2TTZEHShZIE4z
	UCnI1Uzflnm8fFxuxfs9rrXkXzMG6WV4VSUrTTWbDzIm+qX56MLGGVAroOJDOJIJS+B8zMYNOKG
	wz5EJ7FFE8LqWmUfRXLUnUiB/mXX+
X-Received: by 2002:a17:903:3c2c:b0:240:bf59:26bb with SMTP id d9443c01a7336-2430d105d69mr17783185ad.19.1755048704761;
        Tue, 12 Aug 2025 18:31:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGdQ1DXAaDzxKmVvrKlv5h38m6LWfzDz/yLj0/n0px8bSRgCo+HiXsqzUIOas6zP/ZN2Hi6dg==
X-Received: by 2002:a17:903:3c2c:b0:240:bf59:26bb with SMTP id d9443c01a7336-2430d105d69mr17782695ad.19.1755048704225;
        Tue, 12 Aug 2025 18:31:44 -0700 (PDT)
Received: from [10.133.33.58] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241d1ef83f3sm310234365ad.28.2025.08.12.18.31.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Aug 2025 18:31:43 -0700 (PDT)
Message-ID: <cef1da96-f584-4100-a97d-640fa24e5f54@oss.qualcomm.com>
Date: Wed, 13 Aug 2025 09:31:36 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings for qcs8300
To: Vinod Koul <vkoul@kernel.org>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, kishon@kernel.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20250811071131.982983-1-ziyue.zhang@oss.qualcomm.com>
 <20250811071131.982983-2-ziyue.zhang@oss.qualcomm.com>
 <aJsYd7tAi4CdOfZ9@vaman>
Content-Language: en-US
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <aJsYd7tAi4CdOfZ9@vaman>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEyMDExOSBTYWx0ZWRfXz49Vp5yqHOOf
 9wWk2ENeaXIEnYe6zR60FpjU+vP/LPPp8f/oOX0EhDDTU1r6/YNq6louhW8UehvmH3pCk34+jw1
 W4S9yVWRSZisKdg077E+rjsbV/YyvgwW2Smtw18PZI/RAaoJnKN97ctj+zrjryA74byNmwPCFG9
 C96NpMpje5dpUvCx8J8ip2D91E0PiMg3aSKMUZUWzdkgliur2WtMN202X9UEvbk8sWFD8LDahYa
 sehBfltiiyLCYPIhdhF4Z+eAOTefzkehGThYWk0ATvVIdkIZownVUALCjEH2G+41y3VivhToGQz
 fs/CvTTkNP1+naqXtwQSL8/sgSl771xbtLhvDEltG+svfBhFmCD5qzZMc5kUkH+MwrFhkRXkG4E
 bUDjP6Wx
X-Proofpoint-GUID: qw5fsUsckFHvrHQc36eN1NHutA0ZfNxh
X-Proofpoint-ORIG-GUID: qw5fsUsckFHvrHQc36eN1NHutA0ZfNxh
X-Authority-Analysis: v=2.4 cv=d4b1yQjE c=1 sm=1 tr=0 ts=689beb02 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=buFmA9CyAF0SDTxNqVIA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_08,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 spamscore=0 phishscore=0 adultscore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508120119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_183147_299962_47CDAD3A 
X-CRM114-Status: GOOD (  12.71  )
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


On 8/12/2025 6:33 PM, Vinod Koul wrote:
> On 11-08-25, 15:11, Ziyue Zhang wrote:
>> The gcc_aux_clk is not required by the PCIe PHY on qcs8300 and is not
>> specified in the device tree node. Hence, move the qcs8300 phy
>> compatibility entry into the list of PHYs that require six clocks.
>>
>> Removed the phy_aux clock from the PCIe PHY binding as it is no longer
>> used by any instance.
> This does not apply on phy tree, please rebase

Hi Vinod

This patch based on the patch you applied in 8.12.

dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings
commit: aac1256a41cfbbaca12d6c0a5753d1e3b8d2d8bf

Can you try to apply it again ? Thanks

BRs
Ziyue


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
