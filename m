Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26578E7718B
	for <linux-phy@archiver.kernel.org>; Wed, 25 Dec 2024 09:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/Cw5qjcViQHQv0dQifZ/I/UCqJICgUsvUsW/vUveD4=; b=wRryYu5rstnAvr
	pqgGQR2FX8sNVLtEOJTkyTyqQa8WPr2KQAIQl9Sx8nt/RHqeMoJ+HmSIpHa9EmZxi2d6cQap2CFVa
	0ij3I0ao+JZzCx6A+ix2zZaodg3K0watN/wMb4F9Irnv4h0r3zi7o4aWFtJevJpISTtsDiKuTOUDC
	GXz6/SlA+F7nB9vIIzqaoFh86BJHBPeaIVhxhxa+MbpUUZJ8aBeVRnhORPYZ5/ynzpo82PPhfv2wW
	wviiUAP1RvgaofdppfqknC8enNGZuM4byj/LgSoaaAklyleFlTr3or661fyBxeN6nLnn9NCe37gkj
	TMUJWvZewyDsp+Wd6h5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQNoV-0000000DZ5e-3i6J;
	Wed, 25 Dec 2024 09:36:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQMoD-0000000DTnJ-2LvE
	for linux-phy@bombadil.infradead.org;
	Wed, 25 Dec 2024 08:32:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=6Gqvd2emlMkTHneG8Hl7t95bMNl6maEOsj1Ec4P8BRw=; b=WRzDvThjfAG/Sb5uP5h4ubo8Cg
	8kk93X+PwDXlzvh5Cq1is4cAxvhEDIkXDUeNcu9vE/PBEnKhEJ2C5fl1D62dx9Z4k97Eaz84sZxWn
	DkSWuU9q8wNjUr2qu0aq2TtyT8HdHIvKO3Pnfc00miYXGhGK7EugaGJvph2i1S7imaqPZ6rs01FZh
	k98CKYWrQStYSsX8mu3DAbGghKztxIa+QGnLs5oKFCQhUPhDCR7isdumAxsAVnJrTcwiAmsOXI6RF
	HULtIH0anxKRjhy24qMDoR4hq+jAffQDNPczq2xyhWw/TCX3WaRkM+F9fDAczIPmstnhUMWqYggcH
	/RNG/cXA==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQMo5-00000006jnz-3lPW
	for linux-phy@lists.infradead.org;
	Wed, 25 Dec 2024 08:32:00 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BOMBcWf001488
	for <linux-phy@lists.infradead.org>; Wed, 25 Dec 2024 08:31:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6Gqvd2emlMkTHneG8Hl7t95bMNl6maEOsj1Ec4P8BRw=; b=TGnoOGiN+M+VfTP6
	nehLTRWyrjTWwq9oWwPYfRCqi86LWPPmV9ynmw38nXLNgroS+EUipPtTNOmqo2GW
	sxod1gK+jLlMdDp2TGBmQCJv0gcyJCyR6CL0n+b6+Qf8VXMP9jQVT5bZNRJ/xu0D
	KZ+ot65P8x2V9yPylkJf/ohVaAIzhNL4u/oeyyK5PNnnTJAoO0UagMK69HArYQPl
	mqzN9Hm9ELitfDcg3asc5p52PWzv63/Pj8Ryk/fCElwv7P9Q91/eV8TaWbMZwaA8
	5WO081gQzDeQ+bc3DnCTnpe+V5IFSNZl5z+1xrPpZbpoIOuIGSSWcDmx4vsn8FZR
	UHfFHA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43qwm1cam0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 25 Dec 2024 08:31:46 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2163dc0f5dbso61892885ad.2
        for <linux-phy@lists.infradead.org>; Wed, 25 Dec 2024 00:31:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735115506; x=1735720306;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6Gqvd2emlMkTHneG8Hl7t95bMNl6maEOsj1Ec4P8BRw=;
        b=fiiJcihbXsrys5RHGyHwGJEMZi3MW190zHNJW/HMXOdi4N2LxpQ94JU0sd7SfXPryb
         Sc4q5bqcuAU152xatxwH05dAIZozBVYffKqkqqT6bUOiWJriGPlW/hB2AHPUzGj+HF9U
         aa1J966VLQXgz1ickSjd1rRlguxj1Szk8gA03/SA9n7WkSfcuE3OcDLXTM9nEB9gsf9g
         ZQY7dqLKyG61OqevilF4SyBmkTqh4nIVTm0gM+/M9ccq9pd/BhszsVszLBNRuefe4NLr
         PiDlKemiEhg265jiA1/HTk6srxra6o1uabQPbQV5vjgilBdyH8XW8Ejn2kAp0sQYBhlR
         4FIA==
X-Forwarded-Encrypted: i=1; AJvYcCWxXnnsUoQg1xsQ9vzvQ9kS+pFYYe2UdsJI8p9WCH5T7Y3q5OzYo9PSD8cWBG236zSLNxH8RMVuWLw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxmPhyYgV/jTTms2nwatoYHHzwS3QvUnCj0nzdZ80SHyA3R2GFg
	v6utnUw0/6gZJ/6M34e6L52KsNa9trOT/o4t7fmnjlmVsWCAGA0cB29yPcbD3FccPYe68DsTnGM
	8MpOZU2wktyqjgFLyyl0zc39Zl6z/KJwBUU229MWaBAp1ie1T+nzTlfuS0I+SN+Uq
X-Gm-Gg: ASbGncssDsN8DGjmz/6E6lnEXGLstanywH6NW9Sl/W53nrMEB0EJpny5eVCPfnRB4lh
	y9aHCJv3N7U3haCGaAVzPlTvMI3AgdYXEivWk1MrkqyY7BM0nTIfv4WrC6JBZ52xKyNIXDdZ0XQ
	aA6V3FLMQ/Tuiisff/PEJytGoV4XVA+MyPpZI6D2FJjfdaW7k7aP3XFLss4iC4QA3zhV7tZlHPN
	ra6lGRn0zyfk/uYekNSPi9wIljGNJYjCpDF6HI73R27GPyEWsbOAl+QhJdIJcegr1ublzerGsIk
	9TpmmU9S8uweNM5QeSQ=
X-Received: by 2002:a05:6a20:c705:b0:1e0:f495:1bd9 with SMTP id adf61e73a8af0-1e5e04503e8mr33789952637.8.1735115505789;
        Wed, 25 Dec 2024 00:31:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH/QzaLzF/fcbrHVZfxi3rRanW8WezvFhBWt0qWNZBvJfsBYIxgdw2reovgSkrqXear14rCtQ==
X-Received: by 2002:a05:6a20:c705:b0:1e0:f495:1bd9 with SMTP id adf61e73a8af0-1e5e04503e8mr33789917637.8.1735115505392;
        Wed, 25 Dec 2024 00:31:45 -0800 (PST)
Received: from [192.168.31.128] ([152.59.237.95])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad90b949sm10835600b3a.176.2024.12.25.00.31.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Dec 2024 00:31:45 -0800 (PST)
Message-ID: <318620fc-e174-4ef3-808a-69fe1d4e1df5@oss.qualcomm.com>
Date: Wed, 25 Dec 2024 14:01:13 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v3 0/3] Add support for USB controllers on QCS615
To: Vinod Koul <vkoul@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        quic_ppratap@quicinc.com, quic_jackp@quicinc.com
References: <20241224084621.4139021-1-krishna.kurapati@oss.qualcomm.com>
 <173505391861.950293.11120368190852109172.b4-ty@kernel.org>
 <anfqf3jvh7timbvbfqfidylb4iro47cdinbb2y64fdalbiszum@2s3n7axnxixb>
 <Z2sJK9g7hiHnPwYA@vaman>
 <i7gptvn2fitpqypycjhsyjnp63s2w5omx4jtpubylfc3hx3m5l@jbuin5uvxuoc>
 <Z2sOl9ltv0ug4d82@vaman>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <Z2sOl9ltv0ug4d82@vaman>
X-Proofpoint-GUID: seyliRIAY4pOiXvHdwkNrsSO1ed6-Luj
X-Proofpoint-ORIG-GUID: seyliRIAY4pOiXvHdwkNrsSO1ed6-Luj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 priorityscore=1501 mlxscore=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 suspectscore=0 malwarescore=0 bulkscore=0 adultscore=0
 clxscore=1015 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412250074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241225_083155_200330_B9CB4E8D 
X-CRM114-Status: GOOD (  16.62  )
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



On 12/25/2024 1:12 AM, Vinod Koul wrote:
> On 24-12-24, 21:33, Dmitry Baryshkov wrote:
>> On Wed, Dec 25, 2024 at 12:49:07AM +0530, Vinod Koul wrote:
>>> On 24-12-24, 17:38, Dmitry Baryshkov wrote:
>>>> On Tue, Dec 24, 2024 at 08:55:18PM +0530, Vinod Koul wrote:
>>>>>
>>>>> On Tue, 24 Dec 2024 14:16:18 +0530, Krishna Kurapati wrote:
>>>>>> This series aims at enabling USB on QCS615 which has 2 USB controllers.
>>>>>> The primary controller is SuperSpeed capable and secondary one is
>>>>>> High Speed only capable. The High Speed Phy is a QUSB2 phy and the
>>>>>> SuperSpeed Phy is a QMP Uni Phy which supports non-concurrent DP.
>>>>>>
>>>>>> Link to v1:
>>>>>> https://lore.kernel.org/all/20241014084432.3310114-1-quic_kriskura@quicinc.com/
>>>>>>
>>>>>> [...]
>>>>>
>>>>> Applied, thanks!
>>>>>
>>>>> [2/3] phy: qcom-qusb2: Add support for QCS615
>>>>>        commit: 8adbf20e05025f588d68fb5b0fbbdab4e9a6f97ecommit e1b2772ea957c91694aa91b90e4c0a1d7b0fb144
Author: Krishna Kurapati <quic_kriskura@quicinc.com>
Date:   Mon Oct 14 14:14:30 2024 +0530

     dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: Add support for QCS615


>>>>
>>>> Is there any issue with the two remaining patches?
>>>
>>> Something wrong with b4... I have applied 2 & 3
>>> Patch 1 should go thru USB tree
>>
>> Hmm, strange. But then, please excuse my ignorance, do we have bindings
>> for these two patches?
> 
> I see to have missed one!
> 
> This one is documented see:
> d146d384222e dt-bindings: phy: qcom,qusb2: Add bindings for QCS615
> 
> but, the third patch is sadly not... I am dropping the third patch
> 

Hi Dmitry, Vinod,

  I see the bindings for QMP PHY in linux next as follows:

commit e1b2772ea957c91694aa91b90e4c0a1d7b0fb144
Author: Krishna Kurapati <quic_kriskura@quicinc.com>
Date:   Mon Oct 14 14:14:30 2024 +0530

     dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: Add support for QCS615

As mentioned in the cover letter, the bindings of phy have been merged 
from v1.

Regards,
Krishna,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
