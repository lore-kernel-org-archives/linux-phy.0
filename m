Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99067CD6E6D
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 16:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZSyW9Dv5LIBVwcw4DPyRy8T1Jj4cg/Xz7lVNTqk7K04=; b=HCp8qWTRa0M2iq
	KVLeR+8yYuSrvECsAV8UIm6H3qdM4WIa8X9Bcx5IIJNROZGNN4PLf41DVgUDPb9u5dduBitKAHRGR
	W3G3GaWN+o1aJia05EYI0eYdiwgsDp9QYOhhPYO3tvvOPg+OExz4gTkSesY23H82xAroHOSggkxmw
	HswVkwRSFrb42Ih6tKIky1YHOOwbHzn/jECLA1qSwMjd0EFk3NDxoRBOBGptkwz7AVD99soIx0kDd
	89K3OSpGRg0kB1fDQXBHMJuRDeHMPnLDv+pJAS5OflKQXdrTf1G98+tISGR667knrZ/6TinU5lYTe
	cmbnu4LuvN3LPBJPmt7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVAp2-0000000H3gJ-0HCd;
	Thu, 04 Jun 2026 16:21:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVAoz-0000000H3fb-1nRI
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 16:21:31 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 654Eq5QK141438
	for <linux-phy@lists.infradead.org>; Thu, 4 Jun 2026 16:21:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i5z8HxmxqWrZU+ab7mxdqWnWs2pi1AFMItihc/yIPX4=; b=FsfbA5euuy6Fn8Oq
	LqN9kBz993FqfFn3JLUeP8qIZA0gOg65FBm8meZBdXOgElmKWi04pAhnMlxFBHcz
	q9wQVXEYBye7iQSGuUkjVKLrGEOu+guFT6j5yaFV6/0ooodeaaj2SEINF87f4AdU
	p6eSQFxKaJ1F9K2hNwxhsu/5Q/yMOTnpBG55rdwX0ZhdmQNp8DtufQcT99RQS7Nm
	n7XzpreRptrAHZTkFjlXTMKRTOL3dgclJtdQVDyEKNQ7NlQExzK4ioqsVUP32JIL
	RXyMjb7W0a6mqX15xW0OvOmyqnqUlkR4w64pcv4fiGPhxWSktXH8LH0MnhOOndmA
	/XJcQw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejyenbds9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 16:21:28 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2bf11699875so9282055ad.1
        for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 09:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780590087; x=1781194887; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i5z8HxmxqWrZU+ab7mxdqWnWs2pi1AFMItihc/yIPX4=;
        b=OSAJBgznUfoTPpvAEXg10zqLb2NPv3+EDLUxaOv6inhdYV99HaLBC8Qas6Olh5mvNl
         yWtVsCYNA1hdknkqV99X8YjS9W4uDKmB7YZQQZOjID8TdzWJ2llijapjOQ0orkGL/5xh
         ta5l2PjBR26AkiWD4wvO1jnXrQNrcYQ38vhFx2TW0/2z/JKd6wX2+SguzYHWikA+rNWZ
         C1SNSqMu7DMLgeeMqDM9uvKYmawnCuH7tXvXnfDkz5MKvx79dQ927UxkJy9ybaLKl98a
         9Eohwq5I+bDSI06hNctBq0aq6FastAdxheoBE8LWx5uRNpnS8k/37qBOkwqhf4j68Jdw
         eKeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780590087; x=1781194887;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i5z8HxmxqWrZU+ab7mxdqWnWs2pi1AFMItihc/yIPX4=;
        b=Re/ajXJrqHCfwjD/Dp57SxWsmYori9qsLuF7YR8McC0BzAdj+yIVyxyHuIBOnEQAK4
         KlQ1ptgShKseB2hvQhe7cdltjjj+xN0kHBB1mbmGl0htBx0yEAWpdYG543pAEcZScgmS
         0BkNpso0S9bq19DHOfcFAurXRJmgHTTgAFZwoSobV36XFju0CAaG06sJ/bpyKYoJ0skr
         Cg10J+zmDjNwWuH4KJ+d4HSG6MZLq40oCMwXgiywEUIzYtC51e5bB95kw6IK2ZxsOdqM
         uYA9Y0Sl1obSlWcixNwI/7yCQ1gStEN+oGLMMatm6oq4sc5d0iwUaJzFq6tsWfHl1aeZ
         IEFA==
X-Forwarded-Encrypted: i=1; AFNElJ/CSI9ZHmfp15U1x66xluLp994wmKiSfAa9smO4DdFLtmN2zBQqwlXZyQHaXLktCX320JPZye+stDc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyW8UkLRyOIyLqs6KIekoMNOAS5Ut3sG2fB0xXFSQaWAQXnlyQ1
	IFZlBa/Jtiefh+DVdOPZcqaeuOyg5gcaEwW9jbDl/bLA4O/USrtdxQsa9BLbCg3WRgQL6YAQaIx
	5ZIGW3Rw0bt9HBx+w4n/Ls+G0aR6UDyXEu0OrKMLTBLgd6LuXKGtKmIcbKdKE0J0YNyRh
X-Gm-Gg: Acq92OEld1k0Z3g/vyYmLkW2GOMbPwoknOqBdpZEj+HnTLG7cXhe7FEpJ1XcTmeQiYj
	9mgwZX5JrS2AeBHwe4eNMypUtv0HiZuJrG7/vQmYsxGAcUh3Z2Yb4VOsp1mFfbpSJI0hf4eAAAO
	goLCRTAnjb5N1MJPOJSB/lbOCazNSR/t/AkbWQRaAWTJ2p1bnkxKoYBHnL5JBvIoHYbXwHx+LM/
	sEct1DzoQ6VLl8P2Uo0KprYD3a/dZ0cPRwwIjQ2/b3U03btmSwaTcrYLvDTKjoT9KHoX+TR9PLd
	fgSr+hzVSxZo8eOOWBDTYaHgqM4gmygX7ZLaJwsjkK8bSe80sr67a/5YyQA/0jyiE7GesPCvDKv
	UUuyL2lhzliYNM217WO5TR5D/6beX1NeSkQo1MNLmjVGuzDnWFVzG/gJLAGLZ/Clw
X-Received: by 2002:a17:903:b0f:b0:2c1:88a1:9839 with SMTP id d9443c01a7336-2c197d3a55cmr40577605ad.11.1780590087185;
        Thu, 04 Jun 2026 09:21:27 -0700 (PDT)
X-Received: by 2002:a17:903:b0f:b0:2c1:88a1:9839 with SMTP id d9443c01a7336-2c197d3a55cmr40577315ad.11.1780590086785;
        Thu, 04 Jun 2026 09:21:26 -0700 (PDT)
Received: from [192.168.29.82] ([49.37.133.141])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c16649bde7sm63691785ad.72.2026.06.04.09.21.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2026 09:21:26 -0700 (PDT)
Message-ID: <15a69353-8e1f-4ecd-95ca-96d8527fac54@oss.qualcomm.com>
Date: Thu, 4 Jun 2026 21:51:18 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add
 Hawi UFS PHY compatible
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, bvanassche@acm.org, andersson@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
        luca.weiss@fairphone.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        nitin.rawat@oss.qualcomm.com
References: <20260526090956.2340262-1-palash.kambar@oss.qualcomm.com>
 <20260526090956.2340262-2-palash.kambar@oss.qualcomm.com>
 <20260531-rigorous-gay-sturgeon-e8cfe2@quoll>
Content-Language: en-US
From: Palash Kambar <palash.kambar@oss.qualcomm.com>
In-Reply-To: <20260531-rigorous-gay-sturgeon-e8cfe2@quoll>
X-Authority-Analysis: v=2.4 cv=JaSMa0KV c=1 sm=1 tr=0 ts=6a21a608 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=p6nWuE1qLcVxvtXth5uE9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=CrkXPM5SzrEx83M7ahcA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: xLxgCktQ3xxEOFDeuN7Ll3reN1HK3lSV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA0MDE2MCBTYWx0ZWRfX8FVlgl9wByIa
 leydxZ2dcDshKbeu7pZbYuaJszPux3e9oSbjr1UqIM3GgVTfhRfMED3IReH1/LVb26bbjoe7iL/
 pLgx0jZQmVRwnczrAMtsmnITzRRYyu+DnM8vJVGq5UKo3V09st5wB3EBgzcVJZVqabbfaoSp2ok
 MLx/H4GSwxndm9iOKa+H8jUYziMzPltQN8oafBWLSqbfxv3gZBr8XHFRyPPCI3XX7hU//4nuEwl
 PSOYc1cyLA03fv/ih94gnRLcnTsR4EElC4U+MS15kLygLQuwaMpvYMv3AFcIpJjQNX4+Owa3h1z
 a5D52tzLm6YsGVv/AJtK7d8g5Rus3+RapooR+YUeP4sG+OyOx+yMwg+XPF5Z+tz+g9HUZ7/Nmj6
 t1zX+JsONnJtgjUtUXEq/csz1Qnddyj4db5j1Ie7IzTF0TO5a02aC6KJgZa4vpa85EH4B1WQbcp
 9dNLyXWHfcTk7L3n0Yw==
X-Proofpoint-GUID: xLxgCktQ3xxEOFDeuN7Ll3reN1HK3lSV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-04_04,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0
 suspectscore=0 clxscore=1015 malwarescore=0 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606040160
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_092129_596144_E5FAC3A5 
X-CRM114-Status: GOOD (  10.49  )
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



On 5/31/2026 6:03 PM, Krzysztof Kozlowski wrote:
> On Tue, May 26, 2026 at 02:39:54PM +0530, palash.kambar@oss.qualcomm.com wrote:
>> From: Palash Kambar <palash.kambar@oss.qualcomm.com>
>>
>> Document QMP UFS PHY compatible for Hawi SoC.
> 
> Lack of compatibility is a mistake or intentional?
> 

 Hawi Phy is not compatible with any old SoC.

> Best regards,
> Krzysztof
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
