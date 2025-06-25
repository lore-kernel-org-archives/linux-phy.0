Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00AA7C7EE3A
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 16:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZTTX+lXegOtv4M5QKvkGq0TV6s31TVDowqqua9uxbNw=; b=LJbC1677zq0VbM
	EfgkK26D76GgP/OojCf+80UZCWfVtDwfZHVungUN0pV+pzS0kVRHo29IOfLvYTd6cEov4V4UNU9Oz
	YwQATq2DKMmqiLi42NlIMm1Ux7O5BeMe18sZsS1VsXry4GL2qfLS1Ud+0fljcmhIsUEF0B4J7s5yV
	cTzx3P20C4nrcCIIGKbzRZuo6pM5M79+yQaYV18GShEz9JPRHAe4qhtojUAS5H/JHDVRwTA8SxluC
	PDEHMuljKvlK8d2X0V081Yc0GjNHtArp51Rz8zrMx+cPw22tFEHFNHZi7BRVudBL2mLNSv7+12gCy
	WnF/bL1BPf6n69vi/bKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUT0p-00000009I5A-2vbr;
	Wed, 25 Jun 2025 16:30:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUOex-00000008Xkn-2lYA
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 11:51:25 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55P4mSjh014580
	for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 11:51:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uRfQCMJPJ6I6xt/lsb5RiX86zBh0KuNZA9Flm5VJRyQ=; b=Ej0LtvTJLh+M6FeV
	IpxDKqLh59EosLSa0ArOiC/IdoB5oFywQQSaMN9UOAu+528/6cOO+3HkHRWcx+eZ
	0jT0JNFfqT3nwlmkII6vBB25GITh5GOGzuM/WCmOwHtibkfQ2fVELQC/mlsWdLN9
	wkBi8SHN6I7tMUPFT/FScHUJp0NCJqQ7qTiekP6jqlq63IzQjIV9kP6letvWDmdR
	03MPl4ft6GCNb+F+ofB1DWHx9fJ2fyE9zKg5OHpljk7vS5DqcgRGwaT+DEQJIW8x
	iFwpIiDYVIlIugDWxa5VqsufcYATT7Df8Wp/sDHjUzJEk8M0JQcmvwvVk5ls0vhZ
	qOVP4g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47evc5rtqn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 11:51:20 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d094e04aa4so193039385a.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 04:51:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750852279; x=1751457079;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uRfQCMJPJ6I6xt/lsb5RiX86zBh0KuNZA9Flm5VJRyQ=;
        b=IfYlGAGpUyA55SBUFYSIuRV9QCV74EEsn1ecTEbbU64ezMipcutCeC2qt3KhfMJcRg
         ZWIAoNvuItbdOxhkKg3crCn6u8lnEunz+gdkGlUqNxR8iyRiIVBFbIuSBM+95xGF2HZ5
         a3jM2e0Bx1vQQwg8aYwm8HmBiynyDlD9NULRLOqwovKVl6QCylqIRfweCxyXRvbT1mpv
         LjFZA27iFMshos7P+E59Q90SQ1rze2jtzjwC0PgoaSrzNzLD3sz2L+luxkm87M62WNU/
         x9WI4Ux2mHCTJ0O3WcyTwx0PQHZpDkvOLjyaezYDR44TRfybXImcvNhjSpLWqz+NEbft
         eTTA==
X-Forwarded-Encrypted: i=1; AJvYcCVH/PhceTnDMWMPUW1GzNHqe/ExIklTpEYZyuOixoS54Wpa67PXa4j/+XBe26G8PUH0U/6Fdxwn0zY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxq+aLOSvv3Dz61ffv4zm0Ir0A4XloD8YOrHQS78vTAtvN06Amz
	JTKLkaxDWIyJ36l6HCpgTO9KaQDez/nqDhaFg0Kes0v2+kfG42Mh+2LVolFV0CuGw87iwl4Bcjn
	mL4pA9hLmIy94LI0HQixXD+/Kd9Is73UevZCxR/BX41f1ACRpE6sUhR9B/KLqBHiF0qCt
X-Gm-Gg: ASbGnctmDH8lTf4vGf8LbGAaWFqAVqkjExqJRVDPjXf0bImA8aJ68ES4El0hSDyjYaF
	AWPm/8MVCwV30BFa8YSNb6/5hBgBc7VVCqUI1Nyn5NiInJjh/pq6z4u1H2vKeAyDVv0qgvrMCcV
	uK6hLmz6XTrWLoNGF9MQ+9vc+Ucx/8MCCVRiNR0d5661KzzEn0KN332C/CrLQmDhY716Ez8dasW
	lme5RbbL6NBgXIM1R9ye8apH/wWecu/SAVrkJoksYtSxwbJYFPt247COwh1jEncwJvmNXtM+mw6
	P+sUV0XXRESqEWhGVCLJf73zfTbpDGeOjEE8Yf3maJCpUBDlCXzablbkjugFl5y1w4AI11ev1NI
	9mGw=
X-Received: by 2002:a05:620a:4802:b0:7c5:8f36:fbeb with SMTP id af79cd13be357-7d42973e679mr128603285a.12.1750852279216;
        Wed, 25 Jun 2025 04:51:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHccfvELeUXoP8b1jBpiU9AZeQNg48frmRiDDZy9qYIkV5bzxU9h6vBSLu6n9Ur83kyw9tsMQ==
X-Received: by 2002:a05:620a:4802:b0:7c5:8f36:fbeb with SMTP id af79cd13be357-7d42973e679mr128601585a.12.1750852278731;
        Wed, 25 Jun 2025 04:51:18 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c2f485d0asm2360299a12.64.2025.06.25.04.51.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jun 2025 04:51:18 -0700 (PDT)
Message-ID: <4d215791-35da-4139-9cc8-33da5d46469e@oss.qualcomm.com>
Date: Wed, 25 Jun 2025 13:51:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] phy: qcom: phy-qcom-snps-eusb2: Add missing write
 from init sequence
To: Luca Weiss <luca.weiss@fairphone.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com>
 <20250625-sm7635-eusb-phy-v1-3-94d76e0667c1@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250625-sm7635-eusb-phy-v1-3-94d76e0667c1@fairphone.com>
X-Proofpoint-GUID: 3KHvjN5VYeUPjOFSDmTB89uu4BMEvTIj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDA4OCBTYWx0ZWRfX35UVNEJYEm7j
 ZBlsniBd4FnqDTz5LJYv6qmn5juT+YiZlSzFYWY1wmUTW9PINNm645lcw//xL+EFFhw9u8ZB5p/
 z9B4maV7iZBU58zkiKjnlJQHyxKX6ggyb3rl+X1nQqzU17EdWGmPmeCkY4ycR/cW0mWskusqRaj
 7u8BLiJszBso5SJkZrDUgct1AEiZiOqhEustgzeGG1Ca9XFzwOR7GNZ2EofszLQ2xcU8RbWIF6a
 hrKz6nZKxIdXaNCVBgwHQIx6Xe5AR5UfhlMPanLInRRhMaquXdNW8do0zjLqwHVhFsEyfS3JTDm
 1D96K4quG69eiGlI/AK84dNuZJqVOHtVOrFF4LDz+soNci3O7xQ2DqQm1htXAjx6CGdnlcy/oaO
 NdxCKDP13GHnhm1HFqba9I3Ts4FKZ83dqxKfy3sLZrFUS5gZwQwQc3eEmVD4ymIYFWL5mKU9
X-Authority-Analysis: v=2.4 cv=caHSrmDM c=1 sm=1 tr=0 ts=685be2b8 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=qC_FGOx9AAAA:8 a=6H0WHjuAAAAA:8
 a=EUspDBNiAAAA:8 a=SHKt8ETI8ElOVTnc0VsA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=fsdK_YakeE02zTmptMdW:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: 3KHvjN5VYeUPjOFSDmTB89uu4BMEvTIj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_03,2025-06-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=999 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 mlxscore=0 spamscore=0
 malwarescore=0 phishscore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506250088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_045123_706335_4CF2B91D 
X-CRM114-Status: GOOD (  10.59  )
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

On 6/25/25 11:14 AM, Luca Weiss wrote:
> As per a commit from Qualcomm's downstream 6.1 kernel[0], the init
> sequence is missing writing 0x00 to USB_PHY_CFG0 at the end, as per the
> 'latest' HPG revision (as of November 2023).
> 
> [0] https://git.codelinaro.org/clo/la/kernel/qcom/-/commit/b77774a89e3fda3246e09dd39e16e2ab43cd1329
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Both the original and your commit messages are slightly misleading, the
HPG (and the code which is indeed in sync with it after the change is
made) only sets the value of 0 to BIT(1), a.k.a. CMN_CTRL_OVERRIDE_EN.
You most definitely don't want to set the entire register to 0.

With that fixed:

Fixes: 80090810f5d3 ("phy: qcom: Add QCOM SNPS eUSB2 driver")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
