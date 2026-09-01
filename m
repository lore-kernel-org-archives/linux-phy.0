Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 251F9C624C6
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 09:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e2GfH6N2lMY4kumN3+nWES7RLo3Hz25TPbsGzQZ0AME=; b=jMEzASZXZ7sx6U
	+EpNmO5SbPT2CwHG4FvnSXaEiLGlRO1+FqdyCXtPcNZgGC0Yu0/R5qjfuxQ7AtceyYINBKdaxF1rd
	EneaZLszqSoFpGvUbXolIHWhpH8Q4sCDV2zRjLCL1JF7xMEdCJD4AN0TRN/rd733auRD527Sw/9lx
	7xDJmbpxaZ0lpW4Pr4TkH/DDwBThHroYXCb9mYLgFET/S07jR7Ii4pX03G+5xcVOnCjw7EQX0lxF4
	O4dtBkKzARz5uBDlhG1t9Gu9ymO9xV/Hozr0PXUrnKgdltSvFcdr+kxqnjEEsz7f4UURnro+udohU
	vY/l7MMG/RiBKYSAADKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1L3X-0000000BT3m-2vkl;
	Tue, 01 Sep 2026 09:45:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1L3V-0000000BT3F-2o32
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 09:45:26 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68179R0k2322005
	for <linux-phy@lists.infradead.org>; Tue, 1 Sep 2026 09:45:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i0ClDBsCuyp7r5dFcBjSy61A/vo3PDsjrynZs0Zn6uI=; b=bCJaobWxg8aGVFvu
	IsHHsXDLKIsaEG8oxHChmUrDujzzzCEHGEJ2TteU9kosbNvH5pvaxYvf5ZYVGerM
	uXUs6oKD6fk8+A7AbHIAE49po80n6zPX+2l65n/rcJh3pPnAq9Mms/aMfezdYYjk
	j9s+bY0HBzo6fxvywXqp8VagroUUsgCav5uAym5ync1xo0dBTLHAQmsu0F3Sts4U
	FtcNFCTDp4bFrXEa6KrOlfOceWMwyywnn8Huny789xdRM/F0yvfK12aDj1/x63XW
	EaJh9oIM4eJ3ZQKDBLT4jzT1sfloR8JkhQxiEyYqd+P3LkjV7mr9JXPbju7dad1P
	rPX2aw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gdfchb9g3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 09:45:24 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-9375d92d0caso97094785a.0
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 02:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788255924; x=1788860724; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=i0ClDBsCuyp7r5dFcBjSy61A/vo3PDsjrynZs0Zn6uI=;
        b=FKrsZIwZdp8xU1cVikSGz2SEjhTSv0OYRUY8Ck8K0adRacF+X6dIafXeS4DBUPYfmY
         ICCjGMIoqDkd8AmB/wNerflAvSsf71PPBTPF1XvftuZXsAIW8yOo/1ZQ7Dm16Xm4H8t0
         uEz25L1jOXMSTbynvO59KQrqf64a9H5I3myGiKZDycRrWvVqKOEGSAcWdQjTvKwg1RZV
         AEnnpLrU6SF3giWrOBVpOg0QdiC3KgnewjsUHjmR7tIkey7CvnzZFT1LxZ6Gdi8VuUmL
         zDdQnwakcEIFggdvFzfh0YDK/HO31CiuWGdmfCcJcREpOLTB7RkmFlHwNgVxyhjMba8j
         Gzpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788255924; x=1788860724;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=i0ClDBsCuyp7r5dFcBjSy61A/vo3PDsjrynZs0Zn6uI=;
        b=ngA9FfYMQskEOAm4pMKN9EaXKffdrLrkbsnrToSWutbdPQSPfFNVtfeKKG4rhoexb2
         WEPp+T7rfgtjUUd64kpbMY019KN4BroNBVIf55Yrb6VplKLpMARRsXtnOh7N1D/A0GH/
         SjirqNqdVpRJ6wirbH2tPWKByzMcs09v4UVz56pnMVDlKW5RVkPer3JyQ5HPajyAtGZm
         TLZiM6gqMp+OqdGV1mxJK5gqqpxW1U/TXHRilInxyH7qMX1km8ofJjVU2RSptfQKA+VX
         WHYOR63tmziTt6jL10f7gxfv4xZPjmC3/wxZGiuN+JR2guaGKI94kUaMb3TzRpt+O2Tn
         Vwng==
X-Forwarded-Encrypted: i=1; AHgh+RpMqSz6O1oUSNjj1rSU6ieDXug2svA9E9jG82SGVNdqFpNvMeASZ1d+uYRAjkJsyQjnYqtk/m+kjcI=@lists.infradead.org
X-Gm-Message-State: AFuF++k6ziV/+OY5GnlVCxJ0quFe1ZY6jpUEoR1zNfl0jpbR4Aj+MAAq
	BkbW711yDh1j9ia7+tp3VMSJMHOPaKE1YMYT/Tht3GAKKhyWDef/0wUr0I79YibozNq0h7/TN+m
	cu39jIxL6lsLteqmr6M1b1rNCMM3TPkAfkS2RVIb6T4TnGhc0508ejLnA2Mi3968vpCXq
X-Gm-Gg: AR+sD13XA8KGQfIJwqMvAeGigrIVraR+gagh8zoh4PtO6FUyDju662ZkMKxO5sO9ofW
	BooPhZZFsRgOzfd2adwbwsEiorBN/s2BKq4CpoeCP/9SEMiInsl6hKTDeiCYh+w9VXt3cJClQla
	6OgqM/kNIsgbI5UbzfwPXH8ip42/igV15pOFZCZ2770gN0B3apSwXVAA1USrWjBOzP9R6cEEswn
	wXPoxlCJhe4zYh4/Bi6b5yXyK4CkJND1C26YCLaHPEmYN/MG5MMFJNuUIGpRzu/ZuHZUFS8FQOP
	x4+TnqF5E7B9KNFdBSa0vpjboBWiZqn2Jve+htapii/K4zc9X9yfJLOGDhLKyWBT6f1vhMTbhE4
	ZmRZdgVg3DD2dHYU44AzgFQ==
X-Received: by 2002:a05:620a:8907:b0:934:95d9:85fe with SMTP id af79cd13be357-9392877eda5mr1438612385a.3.1788255923583;
        Tue, 01 Sep 2026 02:45:23 -0700 (PDT)
X-Received: by 2002:a05:620a:8907:b0:934:95d9:85fe with SMTP id af79cd13be357-9392877eda5mr1438610385a.3.1788255923169;
        Tue, 01 Sep 2026 02:45:23 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c255f273e8bsm548705066b.62.2026.09.01.02.45.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2026 02:45:22 -0700 (PDT)
Message-ID: <5f074823-8448-449b-94cb-ee98026f2612@oss.qualcomm.com>
Date: Tue, 1 Sep 2026 11:45:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom: m31: propagate reset errors
To: Pengpeng Hou <pengpeng@iscas.ac.cn>, Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260830131442.3025-1-pengpeng@iscas.ac.cn>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260830131442.3025-1-pengpeng@iscas.ac.cn>
X-Proofpoint-ORIG-GUID: rfG5stFP5U-JazBYzW-WuXTGUHrEnRjF
X-Authority-Analysis: v=2.4 cv=G9Ms1dk5 c=1 sm=1 tr=0 ts=6a969eb4 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=oSP5u9ADs2d8oolkbGQA:9 a=QEXdDO2ut3YA:10 a=ZXulRonScM0A:10
 a=zZCYzV9kfG8A:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: rfG5stFP5U-JazBYzW-WuXTGUHrEnRjF
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAxMDA4NiBTYWx0ZWRfX8Njei2DF6NZ4
 jdHyHuv49EpV+FqC6tsglJkqTlkx4WmDiRhfE4kN+wYJXZQoefzCBC/bKv4i1cfp+1Xlb4G8988
 APcoKQH/24D3LRXgHhxst77/xm2yTPM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAxMDA4NiBTYWx0ZWRfX+k5eTaF10A9Z
 K9NASTTHTwimJsgrblXdByvLDK3eZl+E2TCePdAPpweeTtapzBHxv5ccVW8Gq0D8z7s7TepPwbY
 Okf0eO+BAIFlTHW1goBw6ZOsYLuaGDOT1xKjo0ZxmCvcdFz3KjkWXCXHrGFC40627RLdgG7gp+5
 XjMHb8clRPHbxCZDfvlkHam/NqJZmlMPyOoNElKmD/za/kdkEsU70EhB0hA9K9ZK+JRE+LyAUB9
 1vy9JZp2F349SmqfWxeGHDfbobCr5G2daAcUEr26d1eXGZNoS1HJ4Q+7rhR17OmHYYYlSZPYbte
 P1K9qsjVm43dEhKT/PyJazZX4BsWXrCCTjPGaSCsSJGckITnQu/NJwwY+LOa0aWFBL1Gw6Btupx
 UYKlc09GrZ+ig6df8Klv1jvI9HipeT3kPF+XWH/O42aAD4hWKA8vh296/7cjaRA/jphxoUAlEtg
 wDjR5YpIRdCMYDc2yCw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-01_02,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 impostorscore=0 spamscore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609010086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_024525_837643_98D82DD9 
X-CRM114-Status: UNSURE (   9.75  )
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

On 8/30/26 3:14 PM, Pengpeng Hou wrote:
> m31usb_phy_init() enables the regulator and clock, then performs an
> unchecked
> reset pulse before reporting that the PHY powered on.
> 
> Return reset-controller errors and release the clock and regulator that
> were
> enabled for the failed power-on attempt.
> 
> Fixes: 08e49af50701 ("phy: qcom: Introduce M31 USB PHY driver")
> Signed-off-by: Pengpeng Hou <pengpeng@iscas.ac.cn>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
