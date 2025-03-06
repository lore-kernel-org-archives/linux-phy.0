Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4007C282D1
	for <linux-phy@archiver.kernel.org>; Thu,  6 Mar 2025 15:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rd+1hvC5z8sIMMBSixP8Ez6ljK5J+LkNHnaDsVTpJds=; b=QePEHtPt6WgNfY
	8dS3CM6Wi1855SU7sGbDCnIc+lOUpB7j15Vys19wFFu6YzLDGzohch20OzisuhFa0Qq4S5WO674kK
	msrsUgjdSsfnKl7vaSuPeaZLW9sFPiTAqzdL/Rj0iTdKMxxYT7FzE/AwkyhCOjrqU9PcM/kXIRliY
	F7DrGeK3dJMIyv4Bc0fKDXOK9wa/+BDW0lfB1B65iy3jMhXHIGX1OwMFDR+bLx83dgNHGluy/NpTD
	Lm3R8ano+k7iwPBHZ3GFxsBoFLFgVFr7hbMSX9c8iFwjI9/hKIdupDjr6wD33lr0qaVwHRmXuNRMn
	OKjlEs52vYiCBj7JLa8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqDEW-0000000BL4c-1h5P;
	Thu, 06 Mar 2025 15:34:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqBC7-0000000B2fU-14FR
	for linux-phy@bombadil.infradead.org;
	Thu, 06 Mar 2025 13:23:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=0DZEXLtvckg77OKbPWSinx9ePyO3OTpVuNl/L9SQffo=; b=cX0HhLHWUMwobZd+/lswrUKvgU
	Dfh/HWzuMn1NLLG/5SETUnHefAdZHYfSka+1K7c//zlhZdMEvxq4QuKTn/CJUZsN1Zn24pMMbSr0F
	DcI0XfjnOv5fOjisX1JypebOn82w8/CTOMVILtJz+ZfciGJV4ByAoZrtENHQytBgCGice274V7fpv
	fdP/9SuQaljHciJABGJdo1pI079sYug/kzLI2ZMU4/FyNzODhCRhiiOVxxRYYbd5KXrUEt09FcO0i
	Gd5uQ00gvupYfMEo1hf33IfzDpPQuBda9yil3Dh2F2gCA9l/TtEoyuYEUVT6MKBKBMlvc03sd7sMx
	rVsv2tcQ==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqBC3-000000015t9-37zn
	for linux-phy@lists.infradead.org;
	Thu, 06 Mar 2025 13:23:22 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 526BTbGq005915
	for <linux-phy@lists.infradead.org>; Thu, 6 Mar 2025 13:23:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0DZEXLtvckg77OKbPWSinx9ePyO3OTpVuNl/L9SQffo=; b=FS1e4M4eG7fceDlI
	M2ep1aDG6hXEqT93mvFWc/hMR4EkpJRCo8haa8A3OG63B5rUgFPikHGKWLuLWGjT
	3EE+kElQAgVQwLI3NesIqga+K3oPwhhdHvCLDt5ei7TFsksSkNksMTzFr41IVI0m
	T5/6oeGGRL+i5qPYVPjBd4sOVf3xUVvjibYcdMCNTkkMwCvdwKH6Rojk2tNNP0lF
	aw0FafPaWBBNy+A8LW2cn6v3j9neWEcBjikxywcr+7Ydi4K8RCjsae9KHBJvd1Cf
	uLAhSK3CgPVvgz2RmU3Jjj7eetvWV/Yh1xSu4lyz6rTOEpJE+X0oLFNJ1cbMBasF
	4gDYVw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4571sd9xfa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 06 Mar 2025 13:23:13 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-22368a8979cso12308335ad.2
        for <linux-phy@lists.infradead.org>; Thu, 06 Mar 2025 05:23:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741267393; x=1741872193;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0DZEXLtvckg77OKbPWSinx9ePyO3OTpVuNl/L9SQffo=;
        b=cetTEeZSn6Rr3PNY0eBmqUlk9MkiCW+CDJJUqWnsmBTPD++uwLRgvDbPPU+c+HyaVs
         MmCfuCaqJZH1+U6QSx3g+8lheawDPYPyC21mzxdk0qiDg6nwzbR9J9fJPhCK4UvtHD3N
         5Dk7N5N7nu/cJUEiEbLlK7dl8bVgvUMArq+OhicYhmssNn+gFWdyoC/H/OpxergNWsPN
         STBwAjPWAFMEsutiEilZ3BGGMsIlL5lwn9U5RBlR+D+ez9sJBH2ABTqUaM5qAxppYbrY
         Hc2RUkafLebpVg/kk8rEdzOcArw3rrWXPhxz5csvGmP7Oj54wHQVL6qdI0MhoatwxUNV
         4sZw==
X-Forwarded-Encrypted: i=1; AJvYcCUc3UqJRkE9CN4NjbnEDe4dR5mkLTTFOZX8cenWZRl1pZDcNBr3kXDfjhuUrdaodBDLhxpkV6FDEqA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxe0VUqFRhWZV90Rj+0MUuDbSyPdG8pTW8MOQ60fiQBvbi+PkMV
	4xjYL8XKFmxwHyH7aWxlL/28eeKdiq6fsiBaMFKhvZ+QJh7bVn0YEOJDPoOU/H3QFux9By96lzP
	YX0+guQkGtWOGBJ0+cwBIW9G0exwn9ANu359BCp0j/BWHggloR3FtePKQm97ckfQN
X-Gm-Gg: ASbGncur0q57jPCj54SDfeRtHZyeXmG0FOnbBBxqgpiMe9QqB/sZW0iBkdYbXrEX3Dn
	Vs2WGc5OTEtjMXvtxWQfU1eH/SpOGMxSC6ulQBHfDlY1iosyBasoLxsUZBMcNSw2yk5dwXIF1MZ
	3DS70V659I5z4M1gKaWn9FS4NmsYilU6AMS3iQbW4gfVlsjv2E54K8Nb+Vm6Hv4RP2Srinn/IyH
	1WhUmpBD3kWtnFpRQUrWAklmbvpLuSr7UR2EEn02uwKmSjnyQ9y+/TtWRZedA/snaHRLEYYtpMZ
	Pxkag0v5pBNkiAvi4aPYR7PNYK4sFJxexAaCoINwNXORzt++qQ==
X-Received: by 2002:a17:902:fc4b:b0:224:3c6:7865 with SMTP id d9443c01a7336-22403c67a23mr67829975ad.3.1741267392855;
        Thu, 06 Mar 2025 05:23:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHbYidSvuynVuK36jDbOsSSNftXONqK2eAyUE5lvUJs2SLMWYNYB1pVzMJ9GgmFNxu1gv7dAg==
X-Received: by 2002:a17:902:fc4b:b0:224:3c6:7865 with SMTP id d9443c01a7336-22403c67a23mr67829575ad.3.1741267392487;
        Thu, 06 Mar 2025 05:23:12 -0800 (PST)
Received: from [192.168.100.7] ([175.101.107.52])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-224109dd5f8sm11798665ad.52.2025.03.06.05.23.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Mar 2025 05:23:12 -0800 (PST)
Message-ID: <163cab94-3271-44ed-a211-300087f4bd83@oss.qualcomm.com>
Date: Thu, 6 Mar 2025 18:53:06 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v3 0/3] Add support for USB controllers on QCS615
To: Vinod Koul <vkoul@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20241224084621.4139021-1-krishna.kurapati@oss.qualcomm.com>
 <173505391861.950293.11120368190852109172.b4-ty@kernel.org>
 <anfqf3jvh7timbvbfqfidylb4iro47cdinbb2y64fdalbiszum@2s3n7axnxixb>
 <Z2sJK9g7hiHnPwYA@vaman>
 <i7gptvn2fitpqypycjhsyjnp63s2w5omx4jtpubylfc3hx3m5l@jbuin5uvxuoc>
 <Z2sOl9ltv0ug4d82@vaman>
 <318620fc-e174-4ef3-808a-69fe1d4e1df5@oss.qualcomm.com>
 <f607aa9b-018c-4df6-9921-725693353f65@oss.qualcomm.com>
 <CAA8EJpr48k_tHKk-uVpAH7TMcp0-V97x6ztdFrbv0Go0a6kD2g@mail.gmail.com>
 <Z683g5yuSu1Pi0pM@vaman>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <Z683g5yuSu1Pi0pM@vaman>
X-Proofpoint-ORIG-GUID: 4kASem35SdnMoO8vRVwtlyoxyVBCWETV
X-Authority-Analysis: v=2.4 cv=W6PCVQWk c=1 sm=1 tr=0 ts=67c9a1c1 cx=c_pps a=IZJwPbhc+fLeJZngyXXI0A==:117 a=x49Km1ku1+q3EoAjmEejnQ==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=W_DWO0qsI84jIeYb1FMA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: 4kASem35SdnMoO8vRVwtlyoxyVBCWETV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-06_05,2025-03-06_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 phishscore=0 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 mlxlogscore=831 adultscore=0 bulkscore=0 suspectscore=0 mlxscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503060102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_132320_376260_ED089CD9 
X-CRM114-Status: GOOD (  12.43  )
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



On 2/14/2025 6:00 PM, Vinod Koul wrote:
> On 23-01-25, 09:23, Dmitry Baryshkov wrote:
>> On Thu, 23 Jan 2025 at 09:00, Krishna Kurapati
>> <krishna.kurapati@oss.qualcomm.com> wrote:
> 
>>>> As mentioned in the cover letter, the bindings of phy have been merged
>>>> from v1.
>>>
>>> Hi Vinod,
>>>
>>>    Can you help in taking in the patch-3. As mentioned in previous mail,
>>> the bindings are merged and present in linux-next.
> 
> Can you pls post it after rebasing
> 

Hi Vinod,

  I see the patch-3 is applying cleanly on top of latest linux next. Do 
you suggest sending a rebase or v3 is fine ?

Regards,
Krishna,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
