Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A511CCD184
	for <linux-phy@archiver.kernel.org>; Sat, 18 Oct 2025 00:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l7omzAPWhUpJV1OzCMLp3UWcUoTojK3eS6rld7rpGf8=; b=S4/ZOJ10LfEm4I
	JOTfMhWEOkjiAIgQELhkXY0sZigfVZtZvoSpFLpyK8MMA3GtOfXRGObFS7ZEF+roYSYCIGHR+gWTX
	JiXnj+9+fqhKdiTI7WCLWvUUhUKgsWP50iQgyamXS3QWAtYIVuITYJX/qyvHvjQxRc34ZbpF7pDdF
	6mcUK90Ad1++Qm/0OLcRWUZ1kONB4Cxr0WhpMj1TstyKdsySw/tvDmLFuErrObeVWcGVAjdNVam7g
	hBfj0ImwdXLcBWieAU/GGv+FqhOI4HwJrL6zgibLP5++h2sYP26o3ag/n4E9LvPsyu7wQ5ljuvOVB
	13jYJe7v26lWQSLheWxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9ugU-00000009H18-3DUj;
	Sat, 18 Oct 2025 00:20:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9ugS-00000009H0m-2NRu
	for linux-phy@lists.infradead.org;
	Sat, 18 Oct 2025 00:20:33 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59HJGOq9031980
	for <linux-phy@lists.infradead.org>; Sat, 18 Oct 2025 00:20:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DjsyPZCjZ7kk7o9g7SmG+YtODp+fuqqn2GA/QpUkm0c=; b=MXPI+bT2vhUKjU85
	seAudb4lWbh4zhIYJ4n7mtMLncvAGQy8hEB7AhZh4ouq/KGyZ9aHN1JbfAGLrdVw
	oS7PK7FhCPB0WeiR469ssPCk0xAUOqdNLnLmWBb7CSpTJhDH7fMYcaBtqFHtI1Yo
	sU8wdD9Wr/IY41E3KsiOvIeQr3trmAyhp5EOu7zVQe1SVV46xgHAkTshcpI/K0+M
	YYn0Daz8DLAnXxDpFwt/ayik4CnQ79u9nzUYbaRnK4GZPlQLhuJJAmQoVsBrYe6V
	5NqccF0tXQgtcSlCTiJiVegzQHZoa/hBV3rCdVBj7SZ93XQkVe1zV/EE4LEm3VAr
	teVRDw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49s6mx0dbg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 18 Oct 2025 00:20:30 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b55735710f0so3502707a12.2
        for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 17:20:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760746830; x=1761351630;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DjsyPZCjZ7kk7o9g7SmG+YtODp+fuqqn2GA/QpUkm0c=;
        b=BSW2xLL0tcodBA90RCn6BmO+SQt/stxVb3vTVPFr88Gx+RxchwvaS4LKYncww0MpmC
         tTBwgVcPaH6rmzDaAMUWyu1nBCUoniUHdFmwZTPWLqOhFxDosbSyxKb/eMAQCDrxmc+G
         /4tawlYSL73lB7iupN2sUVb52UR4QvFs0QzN0xfkE2vKAIDBR5s+IkK8O86kSruyNSr9
         ykzBaT9MWcVaH3CS0ovS06D8aEvdoBsGrWnAqw+am8BKQcM1V/9VjrjER+fPJ1Gu/LH1
         Kr6DEUH4UtkeUEhDOl9b7grMYb00W8hwwlQYgOsdMHSr8SWSNqbSfBOwdxWh1kZ5w89M
         6lZA==
X-Forwarded-Encrypted: i=1; AJvYcCWSUdrTe4CpxmUYN9AFVFWfuLmjUbPlursBTTWWxtI0wLB5kpDUZK2pPOs/hOsrU7U2iSGmnfTO6Ic=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyzqw9jFEACwxWVKw/R0Ph7h4Ru4U731D6reeRZ2LqqebuYlD6s
	JSx0bMCyHFwD/BsmT4uSmK8fiArMAnSDdHQxIiZwx6MJ5lLAII8TpL7CWG36WRkGVYvPv7koJip
	9zAOmggrbsM96jiAlhZXYwyCaLb9JVFfrJj8DvHWDIFJ0KoW3HBW433Yw8vGTPJ5QCo+w
X-Gm-Gg: ASbGncseeSXblxeIvQgS4OfBshCk6iLpfgqOdqcbbOPU1TfPdYzzC9Fpr8Kf7xATe2y
	yLwp+IjVHR47vY8FvE+iNLuL5vkiSy8Md8Lhmm/+spEAIKc+3XFS8RHqStxX6esT4apAtVfw9BN
	0oQ+sxl+cWizBMHxEkHRbbuFatRdeO2iNYMFzlUFxXn2/Qm3VTFApPjc++lSR6PO3r/xyItBA2N
	oA3Co+dQB169v0lIEP3i81Mr6PNApHer3jW/lWl+EwMgGxasx5SnvpVCldpXDUpOik1A8pQyyVP
	3lMMX9FW3LsOGPdf75MomvwFTUR5UIZ2AjAk+rA0BsjYZETWr5gYz/xOqciHo08oDJj3Pygww03
	vNNNn7s+3oChayVMJW7cq+bPH7lVR9ByFIF+pP8kv
X-Received: by 2002:a17:902:f691:b0:278:bfae:3244 with SMTP id d9443c01a7336-290cba4382amr68119025ad.54.1760746829959;
        Fri, 17 Oct 2025 17:20:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFh0Fb6P08hVeeiHZb3EJs27ayrDuP/pdtr+A0nVEst6kPRjwP0b3hwHB5SCbsS0Kix1+iX4w==
X-Received: by 2002:a17:902:f691:b0:278:bfae:3244 with SMTP id d9443c01a7336-290cba4382amr68118775ad.54.1760746829523;
        Fri, 17 Oct 2025 17:20:29 -0700 (PDT)
Received: from [10.73.53.19] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29246fcbe80sm7840285ad.29.2025.10.17.17.20.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Oct 2025 17:20:28 -0700 (PDT)
Message-ID: <da34ecf0-c2eb-2afa-bd4d-9dc30fbe5cf5@oss.qualcomm.com>
Date: Fri, 17 Oct 2025 17:20:26 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v5 02/10] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB
 UNI PHY compatible
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>, krzk+dt@kernel.org,
        conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
 <20251006222002.2182777-3-wesley.cheng@oss.qualcomm.com>
 <f5e4ae02-b8fa-4406-b2e0-3602b07b7e23@kernel.org>
 <00408896-2e25-2dd1-6e6e-2195317ee7fb@oss.qualcomm.com>
 <14bc2a85-0f1d-3834-9b9c-32654348603a@oss.qualcomm.com>
 <387c707e-613d-433b-a76d-16ef10dabc59@kernel.org>
 <2a70f878-269c-1b40-2e8c-77b5851de9a1@oss.qualcomm.com>
 <99ab26d3-eb44-401d-8a7c-1d9efd2a1a10@kernel.org>
 <b2b68430-5127-5eca-6bd8-4af31eb9fbed@oss.qualcomm.com>
 <bb299df0-58b9-4a6e-9625-305785d38eb4@kernel.org>
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <bb299df0-58b9-4a6e-9625-305785d38eb4@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDA4MyBTYWx0ZWRfX5+eF/JbSCspj
 gHnegivGW7VOWOKei857kOi5+jxtfJXVNI5FL6J/hLBSMFtCId0C+4Pj/jIkIShLnuFT8zBIJF+
 pIVUHVeg9ywAVW5p3HqB6GCwRx1eLDqwFgea/OdHLqB43FLPRK8h71C972p211OW4BwEl9Je1t6
 A+j/wvYP6sVj6g84rnNIlH/1YBGQvnP55VwRyQWm4Czgyr3P1eXil+VtghOud7dQGCrVSKwzlpi
 vH6DANmDb4zRv4mWz8Iwwn/63dZL3TEp5JbJzc8Mmdi3E5RUs912m1t8pRIOrC4fgJU3KtDHENz
 zw9NB2JICR8HH45olu1BuHRmGF/W0tlJ3kfhP04/+ttVLPqaSP5u/84E3LjD9QrWpRMYuNF9jze
 Yy+6wGOGAj5BdhjdCXVXCpzG1WDnJw==
X-Authority-Analysis: v=2.4 cv=Fr4IPmrq c=1 sm=1 tr=0 ts=68f2dd4e cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=JAPtGALJ81qCqeSEnE8A:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: i1dyDfsPwOk1aO-Iv9NcmdD60Q2DhEuj
X-Proofpoint-ORIG-GUID: i1dyDfsPwOk1aO-Iv9NcmdD60Q2DhEuj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-17_08,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 spamscore=0 phishscore=0 malwarescore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_172032_614832_C5A245DD 
X-CRM114-Status: GOOD (  16.25  )
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



On 10/16/2025 9:41 PM, Krzysztof Kozlowski wrote:
> On 17/10/2025 02:15, Wesley Cheng wrote:
>>>> Technically its all handling the same clock branch (CXO), we have the
>>>> TCSR clkref register that allows us to gate the CXO to the USB PHY, as
>>>
>>>
>>> Ah, exactly. Then clkref is not a clock. You need rather proper clock
>>> hierarchy.
>>>
>>>> CXO is shared across several HW blocks, so it allows us to properly
>>>> powerdown the PHY even though other clients are voting for CXO on.  Then
>>>> we obviously have to remove our vote to the overall CXO, so that it can
>>>> potentially be shutdown.
>>>>
>>>> Maybe we can rename it to "clkref" for the CXO handle and
>>>> "clkref_switch" for the TCSRCC handle?
>>>
>>> Naming is better, but it is still not correct. This is not independent
>>> clock signal. It is the same clock.
>>>
>>
>> Hmmm... I guess that's why I kept the same clkref tag, to denote that
>> its the same clock, but one is a switch/gate for it.  Would you happen
>> to have any suggestions you might have that makes it clearer for
>> everyone to understand?
> To me it looks like:
> 
> |-----|            |-----------|           |------------------|
> |clock|------------|TCSRCC gate|-----------|clkref to this dev|
> |-----|            |-----------|           |------------------|
> 
> So you need proper clock controller for TCSR (TCSR Clock Controller, in
> short TCSRCC, what a surprise!) which will take input, add gate and
> produce clock for this device.
> 
> Nothing non-standard, all Qualcomm SoCs have it, every other platform
> has it in some way.
> 

Hi Krzystof,

Yes, the design is exactly how you outlined it above.  How about clkref 
for the clock and tcsrcc_switch for the clkref switch?  That removes any 
notation that the gate/switch is an actual clock...

Thanks
Wesley Cheng

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
