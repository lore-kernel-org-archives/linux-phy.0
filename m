Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1734C61DD6
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 15:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lwsZc3koAiOQMBS9WKwWYQBjICBNO1titWh3dHMH+PI=; b=PtzyFKD4G/xg64
	LAZDobFWbuvVhqZqGPTxynmozHAXPC3u+2t8dKA5x7N6dDfxXH7B69G3vrXVqwCD4Uz+dtrtSGycZ
	CJMMf/M2sOzFW2otEtoy/FlCGP66K0u/KcQXsyOKHljH6s+qhnQkDPEhZkE5viL9rGh9B2qX+yk/5
	PCi2JDWzzTYTYlFviYB2MU/VVOrTglj67H+sXWLptsj+7RAZ/Pv/iDw0ambxFMPHPLLwrJ3IVtabF
	/LqMfNg9b7e87xKx0OaSt8jwgxPANkIOVWKmMGi3z9ilwSuJmh5SjQ90ZrtfP8k655ub4UHgtiwRe
	1EKtMnVsmlmo20TIMeRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Qdm-0000000CZop-2dIF;
	Tue, 01 Sep 2026 15:43:14 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Qdk-0000000CZnx-0SyC
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 15:43:13 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 681E9Bv42217669
	for <linux-phy@lists.infradead.org>; Tue, 1 Sep 2026 15:43:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	C8MWFwuMD6Wv12BlHgQUXjMEfZxvgeeMfK0qs3BpuiY=; b=dtwVB1uooUDb/wcV
	ZkVpPK/FH9Oclxwt4Sekdyo9dFZz5MVcWUemQYopamA1LzWEjJWnf19riKUG/c4a
	DHXYbDTq+3NtSs9CfR4TuYQ/JweZwHihfwncmFqfFWfJWsZIb+ocshQrcvIpqSXt
	G3xv5bUCm9JDe7AFsQPxjDaVr7TcHyGSZphbgTHoI/ESuVMojlGaLgGJCgofnnhH
	e8jD6zKKg4zHSQluTaZRxTH+2R5hbGlKKYhKMUXHMHJcoKHcaCaL6eGqzpZHTNeA
	pOBhUbxoBGS0J4oR/4q5fxN3bbnzw6CjMYzrnK8/d7s+T3FA5FY1a7T6SnNhinwQ
	G4xw0A==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gdndxbdwm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 15:43:11 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-84e375d9736so4722902b3a.2
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 08:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788277390; x=1788882190; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=C8MWFwuMD6Wv12BlHgQUXjMEfZxvgeeMfK0qs3BpuiY=;
        b=aXSD8wK25DQdR7/djifopQlYVVXEK2kuDQ7z+8JdEjYscnenH+klOAk91j+LlczYk2
         kPz5cbPn0CIxzZSxImpOzTEK+P2BFIIlM/xErgh0m6A6vGL5MZq08EJDC/2NNaUDHRU+
         JsNVGrz2x2MBmFJAersFXrjX6tlC6wtxSLwgx61Tto19E671XjchYMMxwLFAODneEKIz
         pofrtD47bnGX467idcJ2dxeboGhQkTge7pahtwYaa/K5K8IZzL+lwgplEbKRYBWwH+mG
         15xl2mS/6Je7G83ZkPvEZVLlXIbHWugrdw0blXgaFTmGcf5kLj+vbC0BONhgM20OM7Ud
         UqGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788277390; x=1788882190;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=C8MWFwuMD6Wv12BlHgQUXjMEfZxvgeeMfK0qs3BpuiY=;
        b=c5x+QsQUCZeE5PH39rmsogvgnhBKg6gnltwzYXXRM0IMTcVAXogsTC0yBNJlLDx39S
         1wVFKImVIZh5AuWZAT1enC8WSBCOQ6CASU4vuBmdzC+RWKP0kWmV4PZhXS2GnQk9QHrd
         qCs5qw/MsjPQO/slsX2tGQja0KeXL9CQ+5PLeUUbYP3N3eHv+dudYKy0iPWSrGXUiRtR
         K0UGnwxQb+ZqBbCMBEnhMjdxmVki1O9kNOvUktngue/E0+nJ4DWRE9VyrNEtYXT5+GBy
         95JpuSTWTgDZ2ayOWoHV+/RDR8pkA99o5GZQdqkRHqHLd9b5lu4B0GB+6txDVm0JxARY
         byIQ==
X-Forwarded-Encrypted: i=1; AHgh+Rop+7fsP4S4ffsgxirB5Taweyx7NZgiHuCOVRYTnasD893ggYapzx3rRuHgycUelbW8hHiLLxrj/2M=@lists.infradead.org
X-Gm-Message-State: AFuF++nbRFGSd2sPvN6HqclFnJ1IA0rCNsaJmCvWN48cbziIuSi7V4kT
	00CZvXvgiq8mjvSlBYX4VQaocNaAcpsPNK9M1Zh+sQW4+KkcCeakOBpVs53Tp14LtSZDs29TL/Z
	GDm41FoY8B1ApIhSln4ZKECWBtAMna8dJvpmYs7XYJ5vL2eQWQkG/r5ojgnGYlv8jI6Ak
X-Gm-Gg: AR+sD11EajCn8KdGZnfbTihuXC8Bp07hEQkpmLNYqciJzVn6hxmAC7xOnEeZhdei5Cp
	3nLYcEXAsoi06nhTs1knkwy7jDxukP6h923We8GxLWGPFrCEpx00MJnbl7uxCo5mFTuday9AoXO
	crRkcSqOb89mS7dVrMfozJmdcFNCb7ydu/G85D0DcVlNp9YwwA1TQFsCGwT0xS/5xZpO9OvQ7Vr
	G85wLKP01nSmMPkYtPMplqnCCFSL19pvYRAdYRTu1B5DWhS845JdsC/UD8zdYp4M1GazGs5WwYI
	h5lrBMLTjISoPDH6/rqf8deSv/cPzcrVWhOG2YNQz6D0HX9VkibREHLImRn+oj67e/m3H8Sw2+r
	pnz/k+rLxzZaOiMCrSf+us+sVXfuKUX9V/wh3e9l8Nn8TRKwGpu9OPiKEbtYKwixrEA3Y
X-Received: by 2002:a05:6a00:ad06:b0:848:3fe2:c88b with SMTP id d2e1a72fcca58-85b59c69450mr14237939b3a.6.1788277390265;
        Tue, 01 Sep 2026 08:43:10 -0700 (PDT)
X-Received: by 2002:a05:6a00:ad06:b0:848:3fe2:c88b with SMTP id d2e1a72fcca58-85b59c69450mr14237863b3a.6.1788277389810;
        Tue, 01 Sep 2026 08:43:09 -0700 (PDT)
Received: from [192.168.1.5] ([122.177.240.248])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-85db2adc8e1sm125193b3a.24.2026.09.01.08.43.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2026 08:43:09 -0700 (PDT)
Message-ID: <dfc69b98-6bbf-45d9-8f5c-1b813498adb6@oss.qualcomm.com>
Date: Tue, 1 Sep 2026 21:13:01 +0530
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
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <20260830131442.3025-1-pengpeng@iscas.ac.cn>
X-Proofpoint-GUID: 2_Jl2_K41ogi9JYqlXkAU1Q4iUk-vgCI
X-Proofpoint-ORIG-GUID: 2_Jl2_K41ogi9JYqlXkAU1Q4iUk-vgCI
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAxMDEzOSBTYWx0ZWRfX2+ecwn23CFCc
 wKq8PsUdtU7RAAj+uhUUterJjvTBCUr6DjnlVN2tVFRRhfPYFg7sKkYAVVDKkg1NjUtH1bvKCrW
 dU4vPtBLen8gLBbYGWHKHQpjQNUp/vQ=
X-Authority-Analysis: v=2.4 cv=U8eiy+ru c=1 sm=1 tr=0 ts=6a96f28f cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=2sMs7eQfJahgYk7ien9XMw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=Eo94fBGS1rxZ-i0BCloA:9 a=QEXdDO2ut3YA:10 a=ZXulRonScM0A:10
 a=zZCYzV9kfG8A:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAxMDEzOSBTYWx0ZWRfXyfs9fDI0h277
 I8Tr/apZFsG5wLuQSV5LDPGMtEKkFPl/LQut65Iyl2GijN1srn7f6CfVOojmRtACgUPdVXjGuiJ
 vEmB3tObahjACUt1LI3SVOg1ua3ErBlkaNf3jnvsuru8DV0NWX5mtpPUW6QvMz0gFukMixEKCUo
 8+uIPKXJzv4BGRGqVbl2U8CTf3inSNJC+I/hR/RD1i1bXa47cm4MX3TecReMY+MzDMy/FkgzB1o
 8KHGuNOFluRe0XrqOJSp13qVviLUC9Vkj3N3duylh6Y1Oy9LeYUoueZtrdcgVPsMAq3eIuVh3Bx
 LuSogwjwKSpR8xwUqKRtdsIeYLRabF9tg0D6+5KGwJ/eDMWr7vCBt5kAJW42CSAMmD16/cF4zaS
 BQT4cD+F97Z2l4Cgx2K4hYqf92tr5gj9L1M9VCrgHdgeWZ4n0uMoRTlz2SI3ppXEQCzrhT24Gb1
 qMCCQBswPktS6sw5hHA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-01_04,2026-09-01_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 impostorscore=0 adultscore=0
 spamscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609010139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_084312_279148_8052BADB 
X-CRM114-Status: GOOD (  10.33  )
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



On 8/30/2026 6:44 PM, Pengpeng Hou wrote:
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
Incase you put a second version, please fix the commit message formatting.

Reviewed-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
