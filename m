Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79B69CD4F54
	for <linux-phy@archiver.kernel.org>; Wed, 27 May 2026 07:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ZbrE4/E1k1dhSVpOIY9T6kdlvSSuyJTKLfiRLY7rxI=; b=plucvpKyvjvD5T
	co/2nwJj8GLqDz4jg+2sJP0bSpjNQyKXeBJPE5aBCA3b+uN/DXktl0bMJY83NFHCMybKgVjHQoLLO
	PuLc2Kf8ynp9mw5bnRw2FX72e7dh9N1AwrGkzvuPeljnu/GGoQ/lU2wtE0ySBExvw0ZSNpKqTiiFu
	jDV72uWCxNDB3F3dIeGyMoixJ0SeHbzwrUTTcVElN5j0bLKzVuEnOSQ8uwd3Y6pvx811um0rYJcS5
	WsBLwYGSRjcQPnZ3sThH6DVkOFLfvuYrt532J0qzGe8G2CtRyueRaEQsxQYgBWsJSZq5hTIfGC2Hr
	KYL/ga5t8ZoEZZNNtz4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wS8RK-00000003Rd2-3jaO;
	Wed, 27 May 2026 07:12:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wS8RI-00000003Rcc-3BkY
	for linux-phy@lists.infradead.org;
	Wed, 27 May 2026 07:12:30 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64R2WVMC3396767
	for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 07:12:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sFqDIrJjKC2IJFbPzvKdfW/q7cLOEJE24hhamOrvPj0=; b=kdjzTCAj4p7g6NBv
	6dhNZ8mo6TNx4IxOtjBmPyr6UHpoXl3t9pwDzBtzVU8abDJDEQZvPQlNRaixvcqW
	NNMW9hZDVWlIpipChxJkLQyakIJbm4BJsEJK4cZoQpCsFHHqhO8BHiHGBP+bkUgo
	jsFF39Q9Rg8msD3ACKNWkeNfEFwgqgBiA7Oq6TD9MQ59pl1cR3K1trjNTaoKbRvY
	tw4y5S+R7pdibCy+25RinBAJcR+/BLgmsAQN7ywDPFS9Bkq5MpJ87qxc57KCJ1uI
	GJWeRs3jl4aLOL23fJwvgoqqLnYS+jsIoI8h/N6dPZx6kH+/2YDekOKh8NR3tvYN
	XMK7CQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4edg5pabqa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 07:12:27 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3663d5e9b9bso10804078a91.1
        for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 00:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779865947; x=1780470747; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sFqDIrJjKC2IJFbPzvKdfW/q7cLOEJE24hhamOrvPj0=;
        b=YJ3n1VIFvisby72C8g7xwGpUwY3bdXA4dwqKnFGoDoYTstI5aLvPPwuIhJECxYZ/YG
         RwGn3FshVqGwsM8B6z8BeTz0caIzW7pAwJ9kA0LvhShVdsPq/F+Ft2Z7nbwGaMOdbchO
         n5J9ovrgkbecp7TgJWyug8VZRwO6Mf4GwYK/qLRAcDy6dVRtXOTCJsjH9FyfbHbt2iic
         eVvrGTCMLeWXjvn9IuLw2mr73hPvuLSOJB3NIdxbPQVGMdjvIMsqUgSYOnlNfs+kMMUD
         a/gW4OaUMznnVnEEMfo8tvjShCjh2owEHDmqmXiZncfvfSd9feeE8g7CZWKU3yssSrKo
         Rf0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779865947; x=1780470747;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sFqDIrJjKC2IJFbPzvKdfW/q7cLOEJE24hhamOrvPj0=;
        b=CmItJHt/4VrW15bHmLF7/JzsHYrapOl97V0b7GZoBCzlbmu1ihZ/qymBSv0d37K5Im
         7J5clBGwewHKsItcCyLB1vmP5Vw8v7m+u7+2gHePW+YdaLky7mrePlJCps40qxk6BQPW
         PUyobRd9Wv+IBfZszs16hIA57xFYAS74c2gWy6nL4uamSNra5ypdTbTmv3dED8SIdYkM
         /u42j8/eUny46/HAflNRmOuwFfwIplc8yqa591Z4nyn3nUOxOs+2E8KL/x3NXO/90LZ9
         Mf35a/QqF6oEHL9RhQkgAU3kpAST+5l4VzSfsdDapokQ3hsRhLJHg9EX1JfwD6OBuhsr
         DY1g==
X-Forwarded-Encrypted: i=1; AFNElJ9EYzDz/1QmnTRqJY5+8fBXYo2IhpRgZ7Rlu77BJpGd4oiVewVa9zPKpXA8PFP3AG+2ricp8K0DcFg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyJKnP1godKsfv42VReqMZFdvE8DjUDuFBcdMdQMIGUlFq+b5Qk
	3MNZTABP+EGctqCUJO/UCL3hltT263N4DODGcOtcIooR/dt2yW/S8OXvNGOFsfTlc/PSu6sUBTY
	D6YOMbCN772JLOf3zoIhorEpYMzEMpvSh1it/ZJes64lwOL+0tTx7UdxuQqUXAFh6XYGo
X-Gm-Gg: Acq92OF0pVcCoyZNVUXk9KN2+vBzDGmw7rqfuISGad2ENvll2BBYtV8E4cazpG/P9wC
	JJ1ut2k41NAVtghuFFS9TJhEnrovM+vxdeIGbnl1ZcMx6JfpLr/blLW+xIxER5c/lfVaqrr/evQ
	Q/mLgvZ8v2V7DB2emwdTCmDIIelHLx4SkubUCH8m7znBG6KuD81yCTLWu0wJkFhOSXEOrK50lJe
	Gw9iRg47gFnSUexxE+M+7MAFV++2KO97y0xYUqT8XEwKpFvnsqVhUtmEIO2Lu0vdaXdN/vtyTsF
	sjfzhhrmrYvh3vqI5O4JHf585hnrJAkoe2VFyxkKKfQzUqIuvPDk5R08snq5Pnip8+BuqI0MyYF
	NnKDMahqzGa1kyLevbBh72Exvi6BFPR4ABw7A4svDQ6/UHoEa
X-Received: by 2002:a17:902:ceca:b0:2b4:604c:ec6f with SMTP id d9443c01a7336-2beb069853bmr239368775ad.32.1779865947241;
        Wed, 27 May 2026 00:12:27 -0700 (PDT)
X-Received: by 2002:a17:902:ceca:b0:2b4:604c:ec6f with SMTP id d9443c01a7336-2beb069853bmr239368465ad.32.1779865946736;
        Wed, 27 May 2026 00:12:26 -0700 (PDT)
Received: from [10.219.57.29] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2beb56ce4easm134672025ad.30.2026.05.27.00.12.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2026 00:12:26 -0700 (PDT)
Message-ID: <951c9b8f-4513-47ca-afb6-481dedd3eff9@oss.qualcomm.com>
Date: Wed, 27 May 2026 12:42:20 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/5] dt-bindings: arm: qcom: Document Shikra and its
 EVK boards
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com
References: <20260522-shikra-dt-v3-0-80ffde8a3dc4@oss.qualcomm.com>
 <20260522-shikra-dt-v3-1-80ffde8a3dc4@oss.qualcomm.com>
 <20260526-quantum-funny-gorilla-cfc983@quoll>
Content-Language: en-US
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
In-Reply-To: <20260526-quantum-funny-gorilla-cfc983@quoll>
X-Proofpoint-ORIG-GUID: KwiegZv-JLfzbY1cfCIRIM5ssGB5tjaU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI3MDA2OCBTYWx0ZWRfX9+hn+VZBpauq
 DliFtR+ktlz+MfRfW3ykn+wCZMm5OfzJA6HDVaPtIojr2/YJmgyljwRlulRede3QsS5iPNTuloO
 UA0YPtVf32YVRKmby49p4F+L2esPdvrJnzeCQ5VOXTeqGOr2Q9/yZhfY4TIk6CA83xjRiM3PyEj
 gWYhMuzpgwl9fqeru/B1Tori5+5DMkP0iVEGO9X1cdCKP8bI00396iY8+ywlZaBMUn50BPjRGG/
 3sfii5dS2peuo/BjNydbiqnPvsECMnwbtqq9wW37TVqpm5My7K/e5ud06IksgSnKD1wl8ApLhLF
 h4bRPy/H99x+JJx9D+oUkuDT85tM41kGvRXe7E42P+j5SOOYGu2vmp6Q7+jIIvihgrOWXkPPP9p
 n6RoOM5oyMeiO1CAh6WzXVtuHGCtQT3/YUZ7FbKA88RzQrengYLZJzyuJ/vlV/3V0raC5mJb8yC
 dHgWn8Ppl8QXLje7e5g==
X-Authority-Analysis: v=2.4 cv=I95Vgtgg c=1 sm=1 tr=0 ts=6a16995b cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=kjqM9UcslzgJvOEO4JEA:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: KwiegZv-JLfzbY1cfCIRIM5ssGB5tjaU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-26_05,2026-05-26_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 priorityscore=1501 bulkscore=0 suspectscore=0
 malwarescore=0 phishscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605270068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_001228_814061_300F3AE8 
X-CRM114-Status: GOOD (  13.01  )
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

On 5/26/2026 9:15 PM, Krzysztof Kozlowski wrote:
> On Fri, May 22, 2026 at 11:32:24PM +0530, Komal Bajaj wrote:
>> Shikra is a Qualcomm IoT SoC available in a System-on-Module (SoM)
>> form factor. The SoM integrates the Shikra SoC, PMICs, and essential
>> passives, and is designed to be mounted on carrier boards.
>>
>> Three eSoM variant are introduced:
>>    - CQM: retail variant with integrated modem
>>    - CQS: retail variant without modem
>>    - IQS: industrial-grade variant without modem
> Industrial/consumer variants differ often only with thermal, so how is
> it here? Thermal difference does not make them incompatible. Honestly,
> usually industrial one does not even receive dedicated compatibles.

The IQS variant uses a PM8150 PMIC, while CQS/CQM use PM4125 + PM8005. 
These have different regulator topologies and RPM regulator bindings, 
making the DTBs genuinely incompatible, IQS SoM cannot boot with CQS 
DTB. Thus, a separate compatible is required and not merely a thermal 
distinction.

Thanks
Komal

> Best regards,
> Krzysztof
>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
