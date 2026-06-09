Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EE40CD8CA4
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jun 2026 13:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5elMhdhTDpUiodGE/OMswV0EWsL9PuVHnI03BU4K9j8=; b=ruLP27z/drZQxA
	+xyrlKellFXPrY851xvY7zJJblrBUSI1bfVFl18+nvRoxd2AR+Wgaz2jLIt7LqhcRzr3SxiqiUElH
	z3xH5w8PRY8XDB4CP5W5IMtsY+5rnME2+GkxN3E7dP93vuxfYWd2BoH6WbpDMDxqTgF7czUE/gmhx
	EQd/GXXsXSHa1GRupDRbttoLgWekpKjs4Yw1hm2TMjYShHjbWr6Dl6fYwPyek1goGb7Ths6o0nOt0
	tsy1W5/FRTxp1upWnINUZTQTTtvW4iSNK5YoSbOuIwqaasPwYqh02eoz36+NwfBRirj/gEJy0zRKf
	tE6k6loGH1OUcleS3I5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWwwp-00000005ika-2ukp;
	Tue, 09 Jun 2026 13:56:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWwwn-00000005ikG-3eKm
	for linux-phy@lists.infradead.org;
	Tue, 09 Jun 2026 13:56:55 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 659Cmx6d2702035
	for <linux-phy@lists.infradead.org>; Tue, 9 Jun 2026 13:56:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mQFDbwlJhHCcC9ke64p/rWctFC1cP9UborZW73WRcTY=; b=WuS5faaK+4G0mZQn
	U6/kr0u8p5GX7ocW6M3Ube4BuASGWKKawEZqTYCc2RXxdK0dR3g+5a68E0q2F7ST
	P0m9Ru0908pbzu68tTlZTVV7o51t15bZQagrt6P5n1MRm8vInyXhhazXXYrTN/pK
	mgCQWnNwUcDHJA5uBGoYWrIB9SSEm4FO5UWNoA2WIOswdzvCDwhxn4of+QLWLw4z
	aEJ2M1mVHB1RB2mo9bxvGcNBCm8gwSy/3RCgT3c9sKwErrxR487DRW4+ilGrXz4z
	3bBvPKk2tKm/EvkYxCw4+3+S+O0lO0nRAIg6APSh3qHrEp01PqMV3sRzxfBrV5pf
	as63fA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4epeeaspsg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Jun 2026 13:56:51 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-91571f0d3e3so89443885a.0
        for <linux-phy@lists.infradead.org>; Tue, 09 Jun 2026 06:56:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781013411; x=1781618211; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mQFDbwlJhHCcC9ke64p/rWctFC1cP9UborZW73WRcTY=;
        b=iIx7LTLBCN/kFCn0H5pqRO5mLR4YGroKH0pMigmrcOfbQhqaFB5vV5RaYKc40xdcOL
         nPzBFC11Gres/IzD0T1O2Y8nunWqd25/9yUS7PwNxvuVC3njXe4IL6JuYtVJhbxG0owb
         IvmUO+53IMC3ljrcYBdD8bofRNTdn4iNKnhWEQt8p4G+pVnQq5+KA/W7pkRwYXsj02b7
         HtsJLQH7fHowdkWeqg3aN06bEryU/MXE1Wrgz06FxYufV33xX0yD+0fNRniQJeKyZxcR
         RFNI23n/dR/pE4cSDCp27ZLiL7g/IuiQXXyJsxu1bYYpjVQLWLobSlxR3YqOYHb+kBbf
         nOLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781013411; x=1781618211;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mQFDbwlJhHCcC9ke64p/rWctFC1cP9UborZW73WRcTY=;
        b=AqTSR757PLSAOTVoAHjJ+e2yOtrBKGwcLuxhKcQ66wemZLWm3by5pUzjEjiW02IYV4
         8jZlhn1A46uZGIKIiAIo9tpIexg+DfmSvbAnDo+OZ7gf1CCJwOSeg6wHTK/4i5ehZLpD
         h4u+f3hyJRyMirEJPWQZn+GBotHBQtQ/3D1fIZkdWXFBtH4Mh5jEmussNxTxHO7WuJgE
         kFgkTPyomTBNqJcnPq9XvFEl+Lf1YUxYjSBLpIeU2jUKmswBlCL6a4L8kx6f7xre6YXI
         Fkrw2jDKMktYNAMgNqIi/KW99FFHwG4BWgqT9JEfF2afWa7Q7BNirAXgfMFuLd6guLI9
         grNg==
X-Forwarded-Encrypted: i=1; AFNElJ+22smIZMLZ2P8IOTnXcLhHNvKLl1KaUFxqMoJfLr61acF8AsoxiPUZNdeBuIAbnt6QwS1eGEIBQDY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzVXyAeRslLyS8cVxJ9yTSX58HmzqJOC4Tq936iao2QLuWyllR9
	eLAnwfoutTxSEIm0czwFHv0utZZv8AmIOqiDhArdKupEc/leP6ZMmF2B9R6Ick1cCchzcJlA9rq
	NOBpbdN25a5yHui4gjfT1IPa/RPXjj8mySXYIetMRZL9qVa2UJcNtEGuBriiLa7LX7IcP
X-Gm-Gg: Acq92OEhe6zGF7OznF2NIMSLGwauktJHMULmYhRXMIQseNowMHOdu3yZ3DUN3GmY6hw
	Xlbq+DXi2dnJ67ExL8lN34s+6OTgTyS9+8ugW+S/fvx6sSA4JDPYEpmnmO6i74UGFkYhNyc+Gaq
	cIDHeP3kykjgT35hVjMHUKhf3SjBX7/Dcv6ZHc10YfyPDAGGr8dPWQK7gnmwZ4KnkrGnBj3IKN7
	Qj3MbArMtNPiljVtmzA766lCq2Kfiajtq7kUHb1tWGiUX3RW+Ml7AKR+B+ivh9HNwkyMtOkU3qR
	lOjJlEClVxG+5foxHDoQhfiwzBnUz9ITFCq/3jXH0yVuAhiHZrw9GgpQeuoyzAOo4hmOkh5GwhR
	gBp0SGZu+56hwTJd5z9bmuEWUtY2C5Vta845g3PX1sw3iLNFWkuxC2icz
X-Received: by 2002:a05:620a:1727:b0:915:54b2:582d with SMTP id af79cd13be357-915e6dfa301mr268373885a.8.1781013411134;
        Tue, 09 Jun 2026 06:56:51 -0700 (PDT)
X-Received: by 2002:a05:620a:1727:b0:915:54b2:582d with SMTP id af79cd13be357-915e6dfa301mr268368285a.8.1781013410622;
        Tue, 09 Jun 2026 06:56:50 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-68e64e29c0esm8900211a12.7.2026.06.09.06.56.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jun 2026 06:56:49 -0700 (PDT)
Message-ID: <335238ae-c476-40e6-8639-44258fefe988@oss.qualcomm.com>
Date: Tue, 9 Jun 2026 15:56:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-1-a85668459521@linaro.org>
 <rpnNMsR9GY8gbynzeBO8Zm61JAOq3ubt6sp0x3WDPPwkMAJzlcofECD1kabN-IUoK6sSwP5P6l28UIZLFCOpjQ==@protonmail.internalid>
 <dda32577-04e0-4507-acaf-a5694f4f31b3@linaro.org>
 <478df3ed-d4ef-43aa-bb84-e2075798542b@kernel.org>
 <ec98ef2f-02b4-4086-8b4b-07b6953dbd20@oss.qualcomm.com>
 <514cf213-5778-45e1-8d70-d3fe27991fcc@oss.qualcomm.com>
 <7JNJ4dUNz4ennJ5dkzhfLSuVo72JpfZAbprICPRqlRYnSzVDJw6x3h-1nESd_PK-3us9f1V3qOiLiywsTqP8vQ==@protonmail.internalid>
 <f01c0e22-4e5c-44e7-9ea4-4bc8d53aea2e@linaro.org>
 <29e8491f-20e8-4082-8943-66bee7e3af1d@kernel.org>
 <5ca611b1-0663-4975-bd56-b1343851e5fd@linaro.org>
 <83c12dc5-fcb4-4089-9917-9f0fcc4f940d@linaro.org>
 <1b107aca-a857-4e58-a763-39c82af67747@linaro.org>
 <67b6f6ae-bfca-4afd-adfb-6ec1741105d8@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <67b6f6ae-bfca-4afd-adfb-6ec1741105d8@linaro.org>
X-Proofpoint-ORIG-GUID: whZQnFqgoyBwyLdPUaZ9VNKbIHu76xfc
X-Authority-Analysis: v=2.4 cv=Iey3n2qa c=1 sm=1 tr=0 ts=6a281ba3 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=UD-L-AWZVG7rN1av56QA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA5MDEzMiBTYWx0ZWRfX4XIb4md9tjUb
 dmvlMFLX85UGhONGgv6iHsLoA/svFGBE2RorPY08PVAJmfUe2nUnaswNLo9cXH0QZrmrx1PtsLo
 zxIxmTyfWB3ve7MeIs4tXrOENhaOuCjNSNumaXw4e7CDYLARlgnFr88nF6EeIBPvaXDCG+YZEky
 Px5v/7wHBGZM/4G9tWlPgTBS1eTSUaYps1MXoO+vIG5yKiFQmZCxaIw+Hkp9X++Ue7KFnJT1v6p
 KlPD/kV6/l/pSHxl7AXxTrUa95wvbXyifJ6fnVSCoS8vvuasX/n7Gy6r3kKEmoJTcHdlqA3x+hS
 ieDqN6hy4OhxWvn+IKVpXnIkrwzgm68ERiY8P2e+GL42ZNPlHNRQ6upeKJJSMRm3ORmIVNSsaQB
 lr7a59AWnFqWxGpctWFze81bzcZxJp16oM7tLXKUVjy+YOgtK9BQMy1JXmqMQ0CbXhWjEXQToWl
 iV/AZ4S1hAz/0sLiIag==
X-Proofpoint-GUID: whZQnFqgoyBwyLdPUaZ9VNKbIHu76xfc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-09_03,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 bulkscore=0 phishscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 suspectscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606090132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260609_065654_104064_1A4335A0 
X-CRM114-Status: UNSURE (   8.73  )
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

On 6/4/26 11:06 AM, Bryan O'Donoghue wrote:
> On 04/06/2026 09:46, Vladimir Zapolskiy wrote:
>> On 6/4/26 03:30, Bryan O'Donoghue wrote:
>>> On 04/06/2026 01:07, Vladimir Zapolskiy wrote:
>>>> On 6/4/26 00:18, Bryan O'Donoghue wrote:
>>>>> On 03/06/2026 21:51, Vladimir Zapolskiy wrote:
>>>>>>> Actually, one more thing, Why isn't TITAN TOP GDSC here?>>>> +
>>>>>> If CSIPHYs are true subdevices under the umbrella CAMSS device and well
>>>>>> described as subnodes, then likely none of power domains are needed

[...]

>>
>> CCI is not described as a child of CAMSS, here the situation is different.
> 
> CCI probably _should_ be a child of CAMSS given the design we are going for here.

Yes

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
