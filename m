Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5FF2C88E5C
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 15:20:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZ5zKz03fQOFxPBjS7ii17uGmWKpatVITVEpiJjMPLc=; b=msTrcCYVG0OFok
	SPy27yjYLlR+UFaL0JPooozp5cU1B2xgTvIn3E0VmJNpPrEf49uNKzfykwvhj9laQENY/V/6JBVum
	VxYYTfpB2qh9F6BSnATyUkWXHxSHwOBEKgFtSYD90RIAj3Z34ZdwrS1HaSb7YFMIWe0nG1phIB7mw
	gkOrOZntLguMpfuJLS1+7VCVsgjJM3LYsgqh0ZGQFGlfj0B/r2iHVQJAGp5zLKlNG/j7EX79oNQyG
	6PSTuzFQVhh7eHdeq3+MfuDzMhKV/3YMgSwt70fW4JZv2YZ5cGerIsaTgs9x75uB2ye9LeUNJwJE0
	tX47B9/lrgCjWNUbquaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5m0n-00000001lsb-1G1V;
	Sun, 13 Sep 2026 15:20:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5m0k-00000001lsH-3CY4
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 15:20:56 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68DE082A1251784
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 15:20:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	t6s/awq4RoqBFyOqvzNKS/rkyBda1l+Yp9s4hTmPxgk=; b=ESO4Uu9h2cfPvt6d
	Eu5FFCSNztSvxXt70SCxpeGJI9tEVzTKu3mHfycBSkZ/Ll9bNNhwqHRXIOep8SlR
	gXkvYTyyWSoCQzrBQZPltKc8mDKGz6rqTo1Ukyd2HKRs/JwCLJg04X114sT3TxAr
	A6ZAYdtHXcLQ5hkwBBhC2/WuOoT9baNM0JFmITwUnA8QU4wIvVciegvIW8hmiX5i
	rlWV/8xv8OWe90rXbaKzvOSRtUnqhbXOw6TyqdN5squYvTFBt5cqKXB6NDFsEFyR
	Z/AAnTZJKsXatujA+h1kIrzWgI4hiqfBPdgeSMxpGZMHH+PMt3DGMTeReBoh/ok9
	s+c1vg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmy9cbgh0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 15:20:53 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2cc73f47bdcso30409985ad.3
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 08:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789312853; x=1789917653; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=t6s/awq4RoqBFyOqvzNKS/rkyBda1l+Yp9s4hTmPxgk=;
        b=iPuoULlRnWP+MzJZ8QT0PEdULcgbFXI7cHu59ItE8NinBTcR+yX15RamdNylbZn6jU
         8TFEn/sM0s0Ufsuo3rej18rfNUBtADhtcgIdgDmBLjTdQb6kX2tDqMBwXevgFQRqaIHF
         m6YU+qRrrWzY87YdvFnkkSTkHk/+MpCO5gNPkljqhuj0hSK+0IyhBIsHOBTnqBOW255K
         twbnEeqNllOS81QCdt1vNEnbUSBm3ObEWUcp30ZjwCGFRSji6N9otowoqSmGm6I2TKso
         OlAuLSn98HbgRoD2HOnOrE9xWU2N+s7Mj09oJzsF0x2uZNETloksSaZ/4To0WuifkAar
         vXbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789312853; x=1789917653;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=t6s/awq4RoqBFyOqvzNKS/rkyBda1l+Yp9s4hTmPxgk=;
        b=SiYcXr1IZscrMVGHi+5h5oL20y4kDUoDD9+ZDnNrO+Fp/LIAWlDfJ343NGEDAnfe8t
         wDW14IkcW/2doMku9IIiI1jIStNCaklJn2+toiimt61Il0aUZVtYjmk8Yj5pnS8AymVH
         Hfa0RdqjIabmND2nv3vWisEr9nvT+vvS0IA0/WJHkOHpcpERJMoKC/Ir3/EYxcc87jfr
         9Ua/nxO7ro5ucoZ+OCWV6jx3JROoGNJcMJODa2rzUFqDFrtAh4JxcgezHaqnCueIlukD
         SLuX37enKTCFYKj/cwOKrIkjn7zNjLFP7alCR1HkfPacIXoBui1yQtIaDluqapOorhb8
         YKPg==
X-Forwarded-Encrypted: i=1; AKwUvBz3Wr4zHGcfI+SVpSoPRld7I10F6UooNcbM30fjaLz7kXYKgnv1ev4XZykpvOk4rocMsC146xM7fR4=@lists.infradead.org
X-Gm-Message-State: AFuF++lJqbrSGTLPiz4XTFlKu3oc/hvJyLimo5MU91h754naSEXxqPqv
	kh4mhXGgiQC+ZBjcnQ7eeunsv0QwrD5mZmPPX3bNxhoaDRjxYd6gDvsXFB0wsbWCNrfNVNB1t/f
	TURBN4EWGi3y8gnJVRQWOJUIxxrpNEX0y8lQ/xWC91/5ij2MaMT4Zm4Fk1JHRKn9dd2na
X-Gm-Gg: AYBFou2b4q3eWHuWi9diN7Dax0UmNZfmlrK7y3rnVqHo5GqJucG7dE/WrzaJX5Sci0x
	ZQu5SltVBLUDXhJ/ODbhrxGOIdLALCNZXou1G20nqzRpbtHJS4c08FW645k5iEPWuJTZdXOHWSm
	3H/QFGPuB2l+8LZfZst25gX2JHPCWllUPt44bv+HHeJqO58s/e6TkH7v7LT7Z6OnrEFHhq4/TZ2
	cm+Xb1VfA1vs2jNMCuiSm9Lov1PKKs4u+laVEaQ33iHtpiIlvZRpSVuGIKpBYvjyfu6yalMTiDV
	Hc/++IA8v2rm4Ws4E9gs4+5h14iOY5SmAmSU9/QN9p0dzO6jHODwsos047QY5Erzyw1M8Kuz477
	Q4j/IlmldIYDu+7SRycj08ZP5qoovoA==
X-Received: by 2002:a17:903:1a67:b0:2d8:d4d3:da4d with SMTP id d9443c01a7336-2dd2a35dd20mr223181885ad.17.1789312852784;
        Sun, 13 Sep 2026 08:20:52 -0700 (PDT)
X-Received: by 2002:a17:903:1a67:b0:2d8:d4d3:da4d with SMTP id d9443c01a7336-2dd2a35dd20mr223181195ad.17.1789312852339;
        Sun, 13 Sep 2026 08:20:52 -0700 (PDT)
Received: from [192.168.29.166] ([49.43.233.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33bc03778c7sm9983061eec.9.2026.09.13.08.20.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Sep 2026 08:20:51 -0700 (PDT)
Message-ID: <71c309f7-3017-4c2f-b2df-82cd1a8019d1@oss.qualcomm.com>
Date: Sun, 13 Sep 2026 20:50:44 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: Enable SD card for Shikra EVK
To: Monish Chunara <monish.chunara@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        Kernel Team <kernel@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260911093932.2376058-1-monish.chunara@oss.qualcomm.com>
 <20260911093932.2376058-3-monish.chunara@oss.qualcomm.com>
Content-Language: en-US
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
In-Reply-To: <20260911093932.2376058-3-monish.chunara@oss.qualcomm.com>
X-Proofpoint-GUID: wNJr15bRjTKJ51sJ-Ei2OV_Zoz572WiX
X-Authority-Analysis: v=2.4 cv=Pv4G/AM3 c=1 sm=1 tr=0 ts=6aa6bf55 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ygYGJKfEQ+goyyaro2Znww==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=UvUgRuKAC70QvhXwD9sA:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEzMDIxOSBTYWx0ZWRfXz88qzsyDtfZh
 +zLUZLWIsNNPOPpXQ/jt7QoaUulCbS0hau/Ok5353D9f8rOvkfSy7ceQjPMJzhzH3PgTLANuJRl
 1EvnqRjCLAGa0JHyybK+1qwXSFy+6Tw=
X-Proofpoint-ORIG-GUID: wNJr15bRjTKJ51sJ-Ei2OV_Zoz572WiX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEzMDIxOSBTYWx0ZWRfX/s93V7KlMz9H
 MEbRLLJG9MY9zaZFBxDAc0A3Q+c/TUDzOZy/xMZ38GwbVx7AnN1zUbKZlT3PiWRBR5g6wgJft3M
 C41eZP4sM2mBZJsyT60ZaA2AYSAc/G2YeVHz4PPulv+Q3nyFQTmJdx+0vHFO2/EZc6vqR4XJ6NX
 Osf4XtjJpueefREl1zgF94gSWUIJhP8l1dmCwtei/AOIBtSktdw3ho3ddEOAf3Gnr+mx0BoQqjQ
 4XNIfdnOwGqTomFUzYRZx7uPX8IF42v3/Wkwu8MSTRigq1TYF8m/CLuDUpAgdVJ9fKbxXwXsqhi
 JdAG8Dk1BRxlmaoDhnW3W8KoDi3UhIJRHitz5ga/VEtBScQ0DdKB6ZAzZCve3QURtzTZzLxj3m8
 NUNXP+rA3Liy+730Sv9iq1xLg+ENuBTiqfJtkjC47sIwZC302JKvftq5NOoIZ1UZGD21gFCd4K7
 5x/8cYsODy9X+6FUpFg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-13_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 suspectscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 clxscore=1015 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609130219
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_082054_948666_ACBBFD15 
X-CRM114-Status: UNSURE (   8.09  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 9/11/2026 3:09 PM, Monish Chunara wrote:
> Enable SD card for Shikra CQS, CQM and IQS EVK variants. Configure the
> vmmc/vqmmc regulators and gpio-based card detection for each board
> variant.
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>

Reviewed-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
