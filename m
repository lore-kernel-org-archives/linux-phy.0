Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4B3CC43327
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 12:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CTVqYqe1cNnI63kmF+JLHLII+Qstrd+2W/7DiMN33ys=; b=NTJAP6XJxE+CCh
	UHLny+9z5IMoQyM5Q3sCb+BT2fYry5p5LUnFFbur1x5KiSpOfNh2KYuEUodPv7QJZXMxOrYAj8Iw+
	CF5tFFwTszLgB19wbKSsBU8zXVXNXANHRH+A2UQ3kQpSx7miU++VOeka1zH2/j1Z//VAPm38jQJnD
	b8ZFz23Htm1NDyPSfy4w/aeErLPaZEFpKYsd44VLxF02KpaesEF8nBaLs9aZVD0DusiCi1MHHy/jR
	y/EQ2+2uPbeuGlF+jCH2NyBaCBlZbn31zzdLuAkhMPUkH+fj68QexPqR8BfdZOP8kX84mljTNO/Vg
	VrBm00/sYMP+UMYWjSYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfGDb-00000004Pt2-2LJ7;
	Thu, 02 Jul 2026 12:08:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfGDY-00000004Psj-2VkI
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 12:08:33 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 662B6Kaf3485590
	for <linux-phy@lists.infradead.org>; Thu, 2 Jul 2026 12:08:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iIuHmaYRX4lbic50IFffPPjJu1t85Ernr4S5yAwhhcI=; b=jXgYrgV8PCunms7N
	2UvgMBDe8JBr6M8RmEi6tfecR+BX8U3AywLpvZTMeb9iwHIaEVzQezxGQXBDECGt
	CQAjmvXa4gdF3Dj5xVbspW2mFLqppFbnNi/1j4RRm/9mMa+/LHJKoGZqNxfPzI5A
	IuAOgtp5iKoYnXg/6W2PtlF/APNoUEA705AnpWf5TZP3gaxYgxQBxlYUrq3ih1no
	eCloZGpByV0Hjd8OwL0pdJrNPTUkVACejMKDdzMhyMTgr2mRxOY+2ZMJTNzWWJoF
	eNYtuddpPAlxdTbOjuX3rfcwJ5WrMyleCJyV1ee6NoVwX5ZPHvgHqlqOsk1PZINB
	0T2dEw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f5h98hkd6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 12:08:31 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51bfd1772d8so2932471cf.1
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 05:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782994110; x=1783598910; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=iIuHmaYRX4lbic50IFffPPjJu1t85Ernr4S5yAwhhcI=;
        b=MmcyIrFnMFA5mTzSiy7hQyCL7zbfmDcAWQtGd+W1NK7bGNzChIIF69HtiCOZ0Cxyig
         kKgomLk0y5MQtSidd33EAYCDyga1hVr4gQWlnY7fohKoZOFjRojgKYubADBeRzmN9ypQ
         nEK/ALip2zwBfFXrOKlQMMdasVP2W1YueIDr+EC4X18Ao83+Yp2OmCQoQMgtpF9vy1VI
         CKiYopLUcjo2FB3cR3fqPlPhKHNTotiOssP8UKg7OCv2JbIUqzlBtHG9vzBrzeOQEGHl
         P5qKmUXXaiCARb8rxhkp6z1Kkxm64WFl0z4z2QGxS7T1u/eYa1RkXB7IvPr2BNIWg4Ve
         is5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782994110; x=1783598910;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=iIuHmaYRX4lbic50IFffPPjJu1t85Ernr4S5yAwhhcI=;
        b=SSX6gHITYknG5sxPiPwLJmhLdmyrE80sXDJywWEi/QryM4z1ihcggIXYsPUtI1ucOO
         KSVP8eyi0TcyaU9aBvYPmk+t0fY3AvJbb3wnkHsLkpiaX9aGNjNRTgHIyZa5nrJ2Mraj
         9KPWgtI9YYaXMmm/a2U43ZEY/AgS19Fopkga0PVJjoUJeQg3jl+yUarHaPszAlizOoWL
         HMv2RiN9x2+JNKvmsla9gfcB6SB4v/09bKqebyibzV37gAaBoofmfF/PGnpjHBjrN3uR
         vaiKmShUwtn/FtK5FMwDHUNKi4xhShozXpsb1ZXb6SxQH2jBLSJb9ADtm+LMgvfmprFt
         PYLg==
X-Forwarded-Encrypted: i=1; AFNElJ/xm8eoFAeR10rz9ubRgqHxBdqzL3gWfalhFHYeu9OKlZ1tR8wJgdhRHvna/LHlDtgHW7vwE4RsAGs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz7Vdp+/XmdSC8/FlvMd6R/o5+lbsHpoCvVxA3ta6yo74vcbqVk
	Ir5pzmK897EKAKOfxLm3GMkiMmV3zIsiRgkPNDKb6S11D8fe5zo3IBh7XCHfolvbTk2NpE9M6X6
	6lc/fOD1vUvmnE5QlxbvZjhutUS9czb0VtQ07+v7QCPWRWlc8JnysLVthXinnK02vSZ8K
X-Gm-Gg: AfdE7cmEGhZYem0MorggNjE81p4Atvincptqqkn8BTyyXz9EBAgSp7Sq8zLJ2ylAsXt
	s/Kw9GcllacF1hHHwYNFUVGu0QTm5dU5DQcc2/2fNCGnF9iz5z3HTFyUd5cQy2EaV4GbdoVKE2d
	9JFVsqCYcoM+BX8tk1b8e/4vItwecLlnNfmqHANMBxYal2ouqgxQlJ7O0Ot1WGjDwuonOToNNTw
	t5CQm76CdcpBZyb5RGC0c7xK2VEoAXxmzZJVbYefgh9ton6Mgdm25QvT4d9xUZd75xfbYPqoqBM
	0a9YuFV+Jf7+E9SW85yT2eHBO5/VVxyMra9HYe+V5H5W5jSO84TTXDLL4ET8l7AI+FqSkjz7N+s
	tKQjP7KbjUSBbj2Rz4uLQbWDK/tim10ujbzk=
X-Received: by 2002:ac8:7d83:0:b0:50b:2875:5782 with SMTP id d75a77b69052e-51c26b03d36mr54171301cf.6.1782994110484;
        Thu, 02 Jul 2026 05:08:30 -0700 (PDT)
X-Received: by 2002:ac8:7d83:0:b0:50b:2875:5782 with SMTP id d75a77b69052e-51c26b03d36mr54170781cf.6.1782994109918;
        Thu, 02 Jul 2026 05:08:29 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c12b62f5c52sm120457966b.58.2026.07.02.05.08.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2026 05:08:29 -0700 (PDT)
Message-ID: <b655782c-7250-4311-9822-f3565fea752f@oss.qualcomm.com>
Date: Thu, 2 Jul 2026 14:08:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 1/2] arm64: dts: qcom: Add SD Card support for Shikra
 SoC
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
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>
References: <20260702073354.3641966-1-monish.chunara@oss.qualcomm.com>
 <20260702073354.3641966-2-monish.chunara@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260702073354.3641966-2-monish.chunara@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: en678D_2NT_ElM6hK3RYNVGHFwuqN2Li
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAyMDEyNyBTYWx0ZWRfX9RPZDsadu11h
 kgOm2DwTOxHEmvYkkSPA+FbfH1BvYcX0YuLLTcY8oTVOvWZjIDFHQLcmJqs9f8Prly55wJ5Tzaa
 7ninDYfMxLinR5mWnuwmO5VPAUVubdmzL7ukAvvEu7OTS3CZquxx6ae8pr1he4KiWOZh/pgKkQ0
 8qSDlumFXKZtxOgiKNJ1HLK+ue6LIwHntOIcskjyQzAb6e0pQ32+HQwSCgq3jY5LvVGDNa3EKbJ
 Tu6k3PcBG2iIBeT04ufiG9c6WRrrgUOVkc2kVgNMkNGpqSPZ091a5sS7G8LqRzUWYOuHHmJj85M
 XoOSk7zFIqqi3jsy/J3JZFYo9HYZJhoMPeTG36IUyTIoZKP54JDCTgq30iznSei3b89w97jpXF5
 ajk6YXOwYXjOR0VRcvwLPm/bb3ScSwzgt2L1lHDWel1PA/oCBCDwd2UJiDlL1ixDqi59okFpkLR
 KOjVKN7ge7nruKUZ0zA==
X-Proofpoint-GUID: en678D_2NT_ElM6hK3RYNVGHFwuqN2Li
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAyMDEyNyBTYWx0ZWRfX+WGf/Dpuv795
 59Ct29R1M7q3zOLBn9WeSKM/M3q2Ilj8anQwOiICS1O1sYBwE/Ot9CFq5s0T3HUtTPLhycJDtz2
 ajfDlLau8pm7FbML9q/0DMZyvcgHLEg=
X-Authority-Analysis: v=2.4 cv=bdFbluPB c=1 sm=1 tr=0 ts=6a4654bf cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=jlLNuUvImV_oxURiXAgA:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-02_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607020127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_050832_754565_DA5A75E2 
X-CRM114-Status: UNSURE (   8.79  )
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

On 7/2/26 9:33 AM, Monish Chunara wrote:
> Add support for SD card on Shikra SoC and enable the required pinctrl
> configurations.
> 
> Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
